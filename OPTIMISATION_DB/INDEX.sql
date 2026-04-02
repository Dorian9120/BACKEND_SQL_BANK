-- ==========================================================
-- 1. OPTIMISATION DES REQUETES AVEC 5 INDEX PERFORMANTS
-- ==========================================================

-- Index sur la clé étrangère client_id dans Accounts
-- Justification : Accélère l'affichage de la liste des comptes d'un client
-- Objectif : Évite que la BD scan toute la table lors des jointures entre Clients et Accounts.
CREATE INDEX idx_accounts_client_id ON Accounts(client_id);


-- Index sur les transactions par compte
-- Objectif : Charger rapidement l'historique des transactions d'un compte spécifique.
CREATE INDEX idx_transactions_account_id ON Transactions(recipient_account_id, date);


-- Index sur le nom et prénom
-- Justification : Optimise les recherches administratives ou de support client.
CREATE INDEX idx_clients_name ON Clients(lastName, firstName);


-- Index sur les logs d'audit
-- Justification : Dans une table de logs qui peut contenir des millions d'entrées, 
-- Objectif : Cet index permet de retracer instantanément les actions d'un client précis (ex: changement de mdp).
CREATE INDEX idx_audit_client_action ON Audit_logs(client_id, type_action_id);




-- ==========================================================
-- 2. EXEMPLE DE TEST : OPTIMISATION D'UNE REQUETE AVEC INDEX
-- ==========================================================

-- Objectif : Afficher tous les comptes clients bloqué ou fermé.

-- ÉTAPE 1 : Test AVANT indexation (Le "Full Table Scan")
-- Problème : Ici, SQL doit lire chaque ligne de la table pour vérifier le statut.

ANALYZE 
-- EXPLAIN ANALYSE ou ANALYSE (selon MariaDB ou PostgreSQL)
SELECT COUNT(*) 
FROM Accounts 
WHERE status = 'BLOCKED' OR status = 'CLOSED';

-- ÉTAPE 2 : Création de l'index
-- Justification : Permet de regrouper les comptes par statut dans une structure triée (B-Tree).
CREATE INDEX idx_accounts_status ON Accounts(status);

-- ÉTAPE 3 : Test APRÈS indexation (Le "Index Lookup")
-- Ici, SQL va directement à la section 'BLOCKED' et 'CLOSED' de l'index -> Résultat : requête plus rapide !

ANALYZE 
-- EXPLAIN ANALYSE ou ANALYSE (selon MariaDB ou PostgreSQL)
SELECT COUNT(*) 
FROM Accounts 
WHERE status = 'BLOCKED' OR status = 'CLOSED';


SHOW TABLES;