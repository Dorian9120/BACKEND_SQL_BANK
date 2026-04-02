import express from "express";
import database from "../database.js";
const router = express.Router();

// 1. TOP 10 CLIENTS BY FORTUNE
router.get("/top10-clients", async (req, res) => {
  try {
    const rows = await database.query(`
            SELECT c.firstName, c.lastName, SUM(a.balance) as fortune 
            FROM Clients c JOIN Accounts a ON c.id = a.client_id 
            GROUP BY c.id ORDER BY fortune DESC LIMIT 10`);
    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// 2. DASHBOARD CLIENT
router.get("/client/dashboard/:client_id", async (req, res) => {
  const { client_id } = req.params;
  let conn;

  try {
    conn = await database.getConnection();

    const results = await conn.query("CALL pro_dashboard_client(?)", [
      client_id,
    ]);
    if (
      !results[0] ||
      results[0].length === 0 ||
      results[0][0].firstName === null
    ) {
      return res
        .status(404)
        .json({ message: "Client non trouvé ou aucun compte associé." });
    }

    res.json({
      summary: results[0][0],
      details: results[1],
    });
  } catch (err) {
    console.error("❌ Erreur Dashboard:", err);
    res
      .status(500)
      .json({ error: "Erreur lors de la récupération du dashboard." });
  } finally {
    if (conn) conn.release();
  }
});

export default router;
