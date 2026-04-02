-- ==================================================================
--  CREATION DE PROCEDURES (SAUVEGARDE DE REQUETES REUTILISABLES)
-- ==================================================================




-- =========================================================================================
-- PROCEDURE 1 : AFFICHAGE D'UNE CARTE ET D'UN COMPTE (UTILE AVANT ET APRES UNE TRANSACTION)
-- =========================================================================================
DROP PROCEDURE IF EXISTS pro_get_two_account;
DELIMITER //

CREATE PROCEDURE pro_get_two_account(
    IN p_card_id CHAR(36), 
    IN p_account_id CHAR(36)
)
BEGIN
    SELECT 
        c.firstName AS Prenom,
        c.lastName AS Nom,
        c.email as Email,
        ta.label AS Type_Compte,
        a.balance AS Solde_Actuel,
        ta.ceiling AS Plafond_Autorise,
        CASE 
            WHEN bc.id = p_card_id THEN CONCAT('OUI')
            ELSE 'NON'
        END AS Est_Lie_a_la_Carte
    FROM Accounts a
    JOIN Clients c ON a.client_id = c.id
    JOIN Types_account ta ON a.type_account_id = ta.id
    LEFT JOIN Banks_card bc ON a.id = bc.account_id
    WHERE bc.id = p_card_id OR a.id = p_account_id;
END //

DELIMITER ;

-- Utilisation avec les variables(à changer en fontion du besoin)
CALL pro_get_two_account(@card1, @account5);



-- =============================================
-- PROCEDURE 2 : AFFICHAGE DU DETAIL D'UN CLIENT
-- =============================================
DROP PROCEDURE IF EXISTS pro_dashboard_client;

DELIMITER //

CREATE PROCEDURE pro_dashboard_client(
    IN p_client_id CHAR(36)
)
BEGIN
    -- 1. RÉSUMÉ GLOBAL (Infos Client + Totaux)
    SELECT 
        c.firstName, 
        c.lastName, 
        COUNT(DISTINCT a.id) as total_accounts,
        COUNT(DISTINCT bc.id) as total_cards,
        SUM(DISTINCT a.balance) as total_balance
    FROM Clients c
    LEFT JOIN Accounts a ON c.id = a.client_id
    LEFT JOIN Banks_card bc ON a.id = bc.account_id
    WHERE c.id = p_client_id
    GROUP BY c.id;

    -- 2. DÉTAIL DES COMPTES ET DE LEURS CARTES
    SELECT 
        ta.label AS account_type,
        a.balance,
        bc.id AS card_id,
        nc.label AS network,
        lc.label AS card_level,
        bc.is_active AS is_card_active
    FROM Accounts a
    JOIN Types_account ta ON a.type_account_id = ta.id
    LEFT JOIN Banks_card bc ON a.id = bc.account_id
    LEFT JOIN Networks_card nc ON bc.network_card_id = nc.id
    LEFT JOIN Levels_card lc ON bc.level_card_id = lc.id
    WHERE a.client_id = p_client_id;

END //

DELIMITER ;

CALL pro_dashboard_client(@client1);