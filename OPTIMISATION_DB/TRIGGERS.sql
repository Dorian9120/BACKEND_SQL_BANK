-- ==========================================================
-- 2. OPTIMISATION DE LA DATABASE AVEC DES TRIGGERS
-- ==========================================================




-- ================================================================================
-- TRIGGER 1 : Vérification du solde avant débit
-- Objectif : Empêche de créer une transaction si le client n'a pas assez d'argent.
-- ================================================================================

DROP TRIGGER IF EXISTS trigger_before_transaction;

DELIMITER //

CREATE TRIGGER trigger_before_transaction
BEFORE INSERT ON Transactions
FOR EACH ROW
BEGIN
    DECLARE v_current_bal DECIMAL(12,2);
    DECLARE v_is_card_active BOOLEAN;
    DECLARE v_client_id CHAR(36);
    DECLARE v_duplicate_id CHAR(36);
    
    -- 1. RÉCUPÉRATION DES INFOS (Solde, Statut Carte, ID Client)
    SELECT a.balance, bc.is_active, a.client_id
    INTO v_current_bal, v_is_card_active, v_client_id
    FROM Banks_card bc
    JOIN Accounts a ON bc.account_id = a.id
    WHERE bc.id = NEW.origin_card_id;

    -- 2. SÉCURITÉ : ANTI-DOUBLON (Moins de 60s)
    -- On cherche une transaction identique (même carte, même montant, même destinataire)
    SELECT id INTO v_duplicate_id
    FROM Transactions
    WHERE origin_card_id = NEW.origin_card_id
      AND (recipient_account_id = NEW.recipient_account_id OR (recipient_account_id IS NULL AND NEW.recipient_account_id IS NULL))
      AND amount = NEW.amount
      AND created_at > NOW() - INTERVAL 1 MINUTE
    LIMIT 1;

    IF v_duplicate_id IS NOT NULL THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Opération refusée : Transaction identique détectée en moins d''une minute (Doublon).';
    END IF;

    -- 3. CONDITION : CARTE BLOQUÉE
    IF v_is_card_active = FALSE THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Opération refusée : Cette carte est désactivée ou bloquée.';
    END IF;

    -- 4. CONDITION : SOLDE INSUFFISANT
    -- (Types : Débit immédiat, différé, virement, retrait, fractionné)
    IF NEW.type_transaction_id IN (1, 2, 3, 4, 7) AND v_current_bal < NEW.amount THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Opération refusée : Solde insuffisant sur le compte.';
    END IF;

    -- 5. AUDIT & ALERTES (Laisse passer mais enregistre l'anomalie)
    
    -- Alerte Gros Montant (> 5 000€)
    IF NEW.amount > 5000 THEN
        INSERT INTO Audit_logs (client_id, before_value, after_value, type_action_id, device)
        VALUES (v_client_id, 'NORMAL_TX', CONCAT('HIGH_AMOUNT: ', NEW.amount), 3, 'SYSTEM_WATCH');
    END IF;

    -- Alerte Activité Nocturne (Entre 1h et 5h du matin)
    IF HOUR(NOW()) BETWEEN 1 AND 5 THEN
        INSERT INTO Audit_logs (client_id, before_value, after_value, type_action_id, device)
        VALUES (v_client_id, 'DAY_TX', 'NIGHT_TX', 8, 'SYSTEM_WATCH');
    END IF;

END;
//
DELIMITER ;




-- =============================================================================
-- TRIGGER 1.1 : Vérification de type de compte en cas de virement vers un tiers
-- =============================================================================
DROP TRIGGER IF EXISTS trigger_check_recipient_type;
DELIMITER //

CREATE TRIGGER trigger_check_recipient_type
BEFORE INSERT ON Transactions
FOR EACH ROW
BEGIN
    DECLARE owner_origin CHAR(36);
    DECLARE owner_recipient CHAR(36);
    DECLARE type_recipient VARCHAR(10);

    -- 1. On récupère le propriétaire du compte d'origine (via la carte)
    SELECT account_id INTO @acc_orig FROM Banks_card WHERE id = NEW.origin_card_id;
    SELECT client_id INTO owner_origin FROM Accounts WHERE id = @acc_orig;

    -- 2. On récupère le propriétaire et le type du compte de destination
    SELECT client_id, (SELECT code FROM Types_account WHERE id = type_account_id)
    INTO owner_recipient, type_recipient
    FROM Accounts
    WHERE id = NEW.recipient_account_id;

    -- 3. LOGIQUE DE BLOCAGE
    -- Si les propriétaires sont DIFFÉRENTS et que le compte cible n'est PAS un compte courant ('CUR')
    IF owner_origin <> owner_recipient AND type_recipient <> 'CUR' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Opération refusée : Un virement vers un tiers doit obligatoirement cibler un compte courant.';
    END IF;
END;
//
DELIMITER ;




-- =========================================================================
-- TRIGGER 2 : Mise à jour automatique du solde si la transaction est validé
-- =========================================================================
DROP TRIGGER IF EXISTS trigger_after_transaction;
DELIMITER //

CREATE TRIGGER trigger_after_transaction
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
    IF NEW.status = 'SUCCESS' THEN
        -- Débit du compte émetteur (via la carte)
        UPDATE Accounts 
        SET balance = balance - NEW.amount
        WHERE id = (SELECT account_id FROM Banks_card WHERE id = NEW.origin_card_id);

        -- Crédit du compte destinataire (si renseigné)
        IF NEW.recipient_account_id IS NOT NULL THEN
            UPDATE Accounts 
            SET balance = balance + NEW.amount
            WHERE id = NEW.recipient_account_id;
        END IF;
    END IF;
END;
//
DELIMITER ;



-- =======================================================================================
-- TRIGGER 3 : Interdire une transaction si la date d'expiration de la carte est dépassée.
-- =======================================================================================
DROP TRIGGER IF EXISTS trigger_check_card_validity;
DELIMITER //

CREATE TRIGGER trigger_check_card_validity
BEFORE INSERT ON Transactions
FOR EACH ROW
BEGIN
    DECLARE expiry DATE;
    
    SELECT expiration_date INTO expiry 
    FROM Banks_card WHERE id = NEW.origin_card_id;

    IF expiry < CURDATE() THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'La carte bancaire est expirée';
    END IF;
END;
//
DELIMITER ;


-- ==================================================================
-- TRIGGER 4 : Vérification du plafond avant de recevoir de l'argent.
-- ==================================================================
DROP TRIGGER IF EXISTS trigger_check_account_ceiling;
DELIMITER //

CREATE TRIGGER trigger_check_account_ceiling
BEFORE UPDATE ON Accounts
FOR EACH ROW
BEGIN
    DECLARE max_limit DECIMAL(12,2);
    
    SELECT ceiling INTO max_limit 
    FROM Types_account WHERE id = NEW.type_account_id;

    IF max_limit IS NOT NULL AND NEW.balance > max_limit THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Le plafond autorisé pour ce type de compte est dépassé';
    END IF;
END;
//
DELIMITER ;

SHOW TABLES;