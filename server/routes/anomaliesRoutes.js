import express from "express";
import database from "../database.js";
const router = express.Router();

// 1. AFFICHAGE DES LOGS DE DIFFERENTS CLIENTS
router.get("/risk", async (req, res) => {
  try {
    const rows = await database.query(`
        SELECT 
            c.id AS client_id, 
            c.firstName, 
            c.lastName,
            COUNT(al.id) AS nb_logs,
            MAX(al.created_at) AS dernier_log,
            GROUP_CONCAT(al.after_value SEPARATOR ' | ') AS details_logs
        FROM Clients c
        JOIN Audit_logs al ON c.id = al.client_id
        GROUP BY c.id
        ORDER BY nb_logs DESC
        LIMIT 20
    `);

    if (rows.length === 0) {
      return res.json({
        message: "Analyse terminée : Aucun logs détecté.",
      });
    }

    res.json(rows);
  } catch (err) {
    console.error("❌ Erreur Risk-Score:", err);
    res.status(500).json({ error: err.message });
  }
});

// 2. AFFICHAGE DES LOGS D'UN CLIENT (LIMIT 20)
// client_id pour tester -> 63f17eda-2e91-11f1-91a1-005056c00001 (@client1)
router.get("/anomalies/:client_id", async (req, res) => {
  const { client_id } = req.params;

  try {
    const rows = await database.query(
      `
        SELECT 
            al.id, 
            al.before_value, 
            al.after_value, 
            al.device, 
            al.created_at,
            ta.label as action_name
        FROM Audit_logs al
        JOIN Types_action ta ON al.type_action_id = ta.id
        WHERE al.client_id = ? 
        ORDER BY al.created_at DESC 
        LIMIT 20`,
      [client_id],
    );

    if (rows.length === 0) {
      return res
        .status(404)
        .json({ message: "Aucune anomalie trouvée pour ce client." });
    }

    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// 3. DÉTECTION DE FRAUDE (Basé sur les messages d'audit)
// Identifie les clients avec plus de 2 incidents (blocages/suppression) les 30 derniers jours
router.get("/risk-score", async (req, res) => {
  try {
    const rows = await database.query(`
        SELECT 
            c.id AS client_id, 
            c.firstName, 
            c.lastName,
            COUNT(al.id) AS nb_incidents,
            MAX(al.created_at) AS dernier_incident,
            GROUP_CONCAT(al.after_value SEPARATOR ' | ') AS details_incidents
        FROM Clients c
        JOIN Audit_logs al ON c.id = al.client_id
        WHERE (al.after_value LIKE '%bloquée%' OR al.after_value LIKE '%supprimée%')
        GROUP BY c.id
        HAVING nb_incidents >= 2
        ORDER BY nb_incidents DESC
    `);

    if (rows.length === 0) {
      return res.json({
        message:
          "Aucun client ne présente de signes de fraude (2+ blocages) actuellement.",
      });
    }

    res.json(rows);
  } catch (err) {
    console.error("❌ Erreur Risk-Score:", err);
    res.status(500).json({ error: err.message });
  }
});

export default router;
