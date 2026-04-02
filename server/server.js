import express from "express";
import cors from "cors";
import database from "./database.js";
import clientsRoutes from "./routes/clientsRoutes.js";
import anomaliesRoutes from "./routes/anomaliesRoutes.js";

const app = express();
app.use(cors());
app.use(express.json());

app.get("/api/dashboard/:id", async (req, res) => {
  let conn;
  try {
    conn = await database.getConnection();
    const results = await conn.query("CALL pro_dashboard_client(?)", [
      req.params.id,
    ]);
    res.json({
      client: results[0][0],
      accounts: results[1],
    });
  } catch (err) {
    res.status(500).send(err.message);
  } finally {
    if (conn) conn.release();
  }
});

// Utilisation des autres routes
app.use("/api", clientsRoutes, anomaliesRoutes);

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`✅ Banque API lancée sur http://localhost:${PORT}`);
});
