-- ===============================================================
-- Clients : Ajout de différents clients
-- ===============================================================

-- Obligé de définir des variables qui stockent l'uuid (identifiant aléatoire) pour le réutiliser dans une autre table
SET @client1=UUID(), @client2=UUID(), @client3=UUID(), @client4=UUID(), @client5=UUID(),
    @client6=UUID(), @client7=UUID(), @client8=UUID(), @client9=UUID(), @client10=UUID(),
    @client11=UUID(), @client12=UUID(), @client13=UUID(), @client14=UUID(), @client15=UUID(),
    @client16=UUID(), @client17=UUID(), @client18=UUID(), @client19=UUID(), @client20=UUID(),
    @client21=UUID(), @client22=UUID(), @client23=UUID(), @client24=UUID(), @client25=UUID(),
    @client26=UUID(), @client27=UUID(), @client28=UUID(), @client29=UUID(), @client30=UUID(),
    @client31=UUID(), @client32=UUID(), @client33=UUID(), @client34=UUID(), @client35=UUID(),
    @client36=UUID(), @client37=UUID(), @client38=UUID(), @client39=UUID(), @client40=UUID(),
    @client41=UUID(), @client42=UUID(), @client43=UUID(), @client44=UUID(), @client45=UUID(),
    @client46=UUID(), @client47=UUID(), @client48=UUID(), @client49=UUID(), @client50=UUID();

INSERT INTO Clients (id, firstName, lastName, email, gender, birth_date, phone) VALUES
(@client1,'Jean','Dupont','jean.dupont@mail.com','MALE','1985-05-12','+33600000001'),
(@client2,'Alice','Lefebvre','alice@mail.com','FEMALE','1992-07-22','+33600000002'),
(@client3,'Marc','Moreau','marc@mail.com','MALE','1978-11-30','+33600000003'),
(@client4,'Sophie','Durand','sophie@mail.com','FEMALE','2000-01-15','+33600000004'),
(@client5,'Charlie','Vidal','charlie@mail.com','OTHER','1995-05-05','+33600000005'),
(@client6,'Thomas','Petit','thomas@mail.com','MALE','1988-09-12','+33600000006'),
(@client7,'Julie','Rousseau','julie@mail.com','FEMALE','1994-03-25','+33600000007'),
(@client8,'Antoine','Blanc','antoine@mail.com','MALE','1982-12-10','+33600000008'),
(@client9,'Emma','Guerin','emma@mail.com','FEMALE','1997-06-18','+33600000009'),
(@client10,'Lucas','Muller','lucas@mail.com','MALE','1991-08-02','+33600000010'),
(@client11,'Amara','Diallo','amara.d@mail.com','MALE','1987-02-14','+33611223311'),
(@client12,'Mei','Chen','mei.c@mail.com','FEMALE','1993-11-05','+33611223312'),
(@client13,'Santiago','Rodriguez','santi@mail.com','MALE','1975-04-30','+33611223313'),
(@client14,'Fatoumata','Traoré','fatou.t@mail.com','FEMALE','2002-08-21','+33611223314'),
(@client15,'Kenji','Tanaka','kenji.t@mail.com','MALE','1999-12-12','+33611223315'),
(@client16,'Elena','Petrova','elena.p@mail.com','OTHER','1996-03-10','+33611223316'),
(@client17,'Youssef','Mansour','youssef.m@mail.com','MALE','1984-07-25','+33611223317'),
(@client18,'Priya','Sharma','priya.s@mail.com','FEMALE','1990-01-08','+33611223318'),
(@client19,'Giovanni','Rossi','gio.rossi@mail.com','MALE','1981-05-19','+33611223319'),
(@client20,'Amina','Bensaid','amina.b@mail.com','FEMALE','1994-10-30','+33611223320'),
(@client21,'Liam','Connor','liam.oc@mail.com','MALE','1970-06-15','+33611223321'),
(@client22,'Sofia','Santos','sofia.s@mail.com','FEMALE','1998-09-02','+33611223322'),
(@client23,'Ahmed','Al-Farsi','ahmed.af@mail.com','MALE','1989-11-11','+33611223323'),
(@client24,'Jia','Li','jia.li@mail.com','FEMALE','2001-02-28','+33611223324'),
(@client25,'Mateo','Hernandez','mateo.h@mail.com','MALE','1983-04-14','+33611223325'),
(@client26,'Aisha','Kone','aisha.k@mail.com','FEMALE','1995-12-05','+33611223326'),
(@client27,'Hans','Müller','hans.m@mail.com','MALE','1992-08-17','+33611223327'),
(@client28,'Zara','Haddad','zara.h@mail.com','FEMALE','1997-03-22','+33611223328'),
(@client29,'Diego','Lopez','diego.l@mail.com','MALE','1986-05-09','+33611223329'),
(@client30,'Sakura','Sato','sakura.s@mail.com','FEMALE','1991-07-13','+33611223330'),
(@client31,'Kwame','Osei','kwame.o@mail.com','MALE','1979-10-01','+33611223331'),
(@client32,'Inaya','Zaid','inaya.z@mail.com','FEMALE','2003-05-18','+33611223332'),
(@client33,'Dmitry','Volkov','dmitry.v@mail.com','MALE','1988-12-30','+33611223333'),
(@client34,'Leila','Abadi','leila.a@mail.com','FEMALE','1994-06-07','+33611223334'),
(@client35,'Raj','Patel','raj.p@mail.com','MALE','2000-11-20','+33611223335'),
(@client36,'Kiara','Silva','kiara.s@mail.com','FEMALE','1985-01-25','+33611223336'),
(@client37,'Kim','Nguyen','kim.n@mail.com','OTHER','1999-04-04','+33611223337'),
(@client38,'Ali','Reda','ali.r@mail.com','MALE','1972-09-14','+33611223338'),
(@client39,'Sonia','Bakri','sonia.b@mail.com','FEMALE','1996-07-29','+33611223339'),
(@client40,'Klaus','Schmidt','klaus.s@mail.com','MALE','1990-03-12','+33611223340'),
(@client41,'Idris','Oumar','idris.o@mail.com','MALE','2004-10-10','+33611223341'),
(@client42,'Noa','Cohen','noa.c@mail.com','FEMALE','1987-02-22','+33611223342'),
(@client43,'Tariq','Aziz','tariq.a@mail.com','MALE','1993-06-30','+33611223343'),
(@client44,'Malika','Idrissi','malika.i@mail.com','FEMALE','1995-08-16','+33611223344'),
(@client45,'Björn','Eriksson','bjorn.e@mail.com','MALE','1982-11-04','+33611223345'),
(@client46,'Luna','Vega','luna.v@mail.com','FEMALE','2001-01-09','+33611223346'),
(@client47,'Ibrahim','Sow','ibrahim.s@mail.com','MALE','1989-04-27','+33611223347'),
(@client48,'Alex','Kaufman','alex.k@mail.com','OTHER','1997-12-19','+33611223348'),
(@client49,'Omar','Gaye','omar.g@mail.com','MALE','1980-02-02','+33611223349'),
(@client50,'Yasmin','Oliveira','yasmin.o@mail.com','FEMALE','1992-05-25','+33611223350');




-- ===============================================================
-- ADDRESSES : Ajout de différentes adresses clients
-- ===============================================================
INSERT INTO Addresses (client_id, street_number, street_name, postal_code, city, country) VALUES
(@client1, '12', 'Rue de Rivoli', '75001', 'Paris', 'France'),
(@client2, '5', 'Place Bellecour', '69002', 'Lyon', 'France'),
(@client3, '27', 'Avenue Jean Médecin', '06000', 'Nice', 'France'),
(@client4, '102', 'Cours de la Marne', '33000', 'Bordeaux', 'France'),
(@client5, '15', 'Boulevard de la Liberté', '59000', 'Lille', 'France'),
(@client6, '8', 'Quai de la Fosse', '44000', 'Nantes', 'France'),
(@client7, '45', 'Rue de la République', '13001', 'Marseille', 'France'),
(@client8, '19', 'Avenue de la Toison d''Or', '1000', 'Bruxelles', 'Belgique'),
(@client9, '3', 'Quai du Mont-Blanc', '1201', 'Genève', 'Suisse'),
(@client10, '22', 'Avenue Louise', '1050', 'Bruxelles', 'Belgique'),
(@client11, '45', 'Avenue Cheikh Anta Diop', '11000', 'Dakar', 'Sénégal'),
(@client12, '12', 'Nanjing Road', '200001', 'Shanghai', 'Chine'),
(@client13, '500', 'Avenida de Mayo', 'C1084', 'Buenos Aires', 'Argentine'),
(@client14, '21', 'Rue de la Gare', 'BP 150', 'Bamako', 'Mali'),
(@client15, '2', 'Shibuya-ku', '150-0002', 'Tokyo', 'Japon'),
(@client16, '15', 'Nevsky Avenue', '190000', 'Saint-Pétersbourg', 'Russie'),
(@client17, '88', 'Rue Didouche Mourad', '16000', 'Alger', 'Algérie'),
(@client18, '12', 'MG Road', '560001', 'Bangalore', 'Inde'),
(@client19, '4', 'Via del Corso', '00186', 'Rome', 'Italie'),
(@client20, '202', 'Boulevard d''Anfa', '20000', 'Casablanca', 'Maroc'),
(@client21, '10', 'O''Connell Street', 'D01', 'Dublin', 'Irlande'),
(@client22, '34', 'Avenida da Liberdade', '1250-147', 'Lisbonne', 'Portugal'),
(@client23, '15', 'Al-Mina Street', '113', 'Mascate', 'Oman'),
(@client24, '101', 'Wangfujing Street', '100006', 'Pékin', 'Chine'),
(@client25, '22', 'Calle de Alcalá', '28014', 'Madrid', 'Espagne'),
(@client26, '14', 'Boulevard Lagunaire', '01 BP 500', 'Abidjan', 'Côte d''Ivoire'),
(@client27, '5', 'Unter den Linden', '10117', 'Berlin', 'Allemagne'),
(@client28, '7', 'Rue Hamra', '1103', 'Beyrouth', 'Liban'),
(@client29, '50', 'Paseo de la Reforma', '06600', 'Mexico', 'Mexique'),
(@client30, '3', 'Chuo-ku', '541-0041', 'Osaka', 'Japon'),
(@client31, '12', 'High Street', 'GA-012', 'Accra', 'Ghana'),
(@client32, '9', 'King Fahd Road', '11411', 'Riyad', 'Arabie Saoudite'),
(@client33, '1', 'Tverskaya Street', '125009', 'Moscou', 'Russie'),
(@client34, '12', 'Corniche Road', '21411', 'Djeddah', 'Arabie Saoudite'),
(@client35, '45', 'Marine Drive', '400020', 'Mumbai', 'Inde'),
(@client36, '25', 'Avenida Paulista', '01310-100', 'São Paulo', 'Brésil'),
(@client37, '112', 'Dong Khoi Street', '700000', 'Hô Chi Minh-Ville', 'Vietnam'),
(@client38, '3', 'Rue de la Kasbah', '1006', 'Tunis', 'Tunisie'),
(@client39, '55', 'Rue de la Liberté', '40000', 'Marrakech', 'Maroc'),
(@client40, '18', 'Marienplatz', '80331', 'Munich', 'Allemagne'),
(@client41, '1', 'Boulevard du 30 Juin', 'BP 200', 'Kinshasa', 'RD Congo'),
(@client42, '10', 'Rothschild Boulevard', '6688110', 'Tel Aviv', 'Israël'),
(@client43, '22', 'Khalifa Street', '12345', 'Abou Dabi', 'Émirats Arabes Unis'),
(@client44, '9', 'Avenue Hassan II', '10000', 'Rabat', 'Maroc'),
(@client45, '4', 'Drottninggatan', '111 51', 'Stockholm', 'Suède'),
(@client46, '150', 'Broadway', '10007', 'New York', 'USA'),
(@client47, '12', 'Avenue Blaise Diagne', '12500', 'Dakar', 'Sénégal'),
(@client48, '5', 'Wall Street', '10005', 'New York', 'USA'),
(@client49, '33', 'Rue de l''Indépendance', '1000', 'Lomé', 'Togo'),
(@client50, '12', 'Rua Augusta', '1100-048', 'Lisbonne', 'Portugal');





-- ===============================================================
-- TYPES_CLAIM : Ajout de différents types de réclamations clients
-- ===============================================================
INSERT INTO Types_claim (label) VALUES
('Fraude carte'),
('Transaction non reconnue'),
('Carte bloquée'),
('Erreur de virement'),
('Problème application mobile'),
('Problème site web'),
('Frais bancaires contestés'),
('Clôture de compte'),
('Demande d''information'),
('Autre');




-- ======================================================================
-- CLAIMS : Ajout de différentes réclamations clients
-- =====================================================================
INSERT INTO Claims (description, type_claim_id, client_id, is_active) VALUES

-- Problèmes de Fraude et Transactions (Types 1, 2)
('Double débit constaté chez un commerçant', 2, @client11, TRUE),
('Achat en ligne non reçu mais débité', 1, @client12, TRUE),
('Plusieurs petits retraits suspects au Brésil', 1, @client36, TRUE),
('Transaction de 0,01€ pour vérification carte inconnue', 2, @client15, TRUE),
('Alerte SMS pour un paiement aux USA non effectué', 1, @client46, TRUE),

-- Problèmes Techniques (Types 3, 5, 6)
('Code PIN oublié après 3 tentatives', 3, @client13, TRUE),
('Application crash lors du scan de chèque', 5, @client14, TRUE),
('FaceID ne fonctionne plus sur l''app', 5, @client17, FALSE),
('Erreur 404 lors de l''accès au relevé PDF', 6, @client18, TRUE),
('Carte perdue lors d''un voyage à Tokyo', 3, @client15, TRUE),
('Site web trop lent pour les virements internationaux', 6, @client23, FALSE),

-- Erreurs de Virements et Frais (Types 4, 7)
('Virement SEPA vers l''Allemagne non reçu', 4, @client27, TRUE),
('Frais de change trop élevés sur retrait Dubaï', 7, @client43, TRUE),
('Doublon de virement permanent ce mois-ci', 4, @client21, TRUE),
('Contestation des agios sur découvert non autorisé', 7, @client22, TRUE),
('Virement SWIFT bloqué par la banque correspondante', 4, @client29, TRUE),

-- Clôture et Infos (Types 8, 9)
('Demande de documentation sur le prêt immobilier', 9, @client19, TRUE),
('Souhaite clôturer son livret A pour un PEA', 8, @client21, TRUE),
('Information sur les plafonds de la carte VIP', 9, @client23, FALSE),
('Clôture du compte suite à un départ à l''étranger', 8, @client30, FALSE),
('Besoin d''une attestation de solde pour visa', 9, @client47, TRUE),

-- Divers et Internationaux (Type 10 + mix)
('Problème de réception du code de validation 3DS', 10, @client32, TRUE),
('Terminal de paiement refuse ma carte à Moscou', 10, @client33, TRUE),
('Demande de changement d''adresse principale', 9, @client35, FALSE),
('Réclamation sur la prime de parrainage non versée', 10, @client40, TRUE),
('Carte abîmée, la puce ne fonctionne plus', 3, @client41, TRUE),
('Oppositions sur toutes les cartes suite à vol de sac', 1, @client44, TRUE),
('Demande de nouveau chéquier', 9, @client45, TRUE),
('Problème de plafond pour achat voiture', 10, @client49, TRUE),
('Contestation de frais de tenue de compte', 7, @client50, TRUE),

-- Ajout de doublons pour certains clients
('Deuxième réclamation : Toujours pas de connexion web', 6, @client18, TRUE),
('Nouvelle tentative de fraude détectée', 1, @client1, TRUE),
('Erreur montant virement loyer', 4, @client12, TRUE),
('Application bug sur Android 14', 5, @client25, TRUE),
('Demande de hausse de plafond temporaire', 9, @client8, FALSE),
('Signalement de phishing reçu par email', 1, @client38, TRUE),
('Demande de rendez-vous avec un conseiller', 9, @client20, TRUE),
('Plainte sur l''accueil en agence', 10, @client2, FALSE),
('Confirmation de clôture de compte', 8, @client8, TRUE),
('Question sur le fonctionnement du PEA PME', 9, @client21, TRUE);



-- ======================================================================
-- Types_debit : Ajout de différents types de débit clients
-- ======================================================================
INSERT INTO Types_debit (label) VALUES
('Débit immédiat'),
('Débit différé'),
('Débit mensuel'),
('Débit hebdomadaire'),
('Débit à autorisation systématique'),
('Débit prépayé'),
('Débit fractionné'),
('Débit récurrent');




-- ======================================================================
-- TYPES_TRANSACTION : Ajout de différents types de transactions bancaire
-- ======================================================================
INSERT INTO Types_transaction (label) VALUES
('Paiement carte'),
('Virement sortant'),
('Prélèvement'),
('Retrait distributeur'),
('Dépôt espèces'),
('Remboursement'),
('Frais bancaires');



-- ===============================================================
-- TYPES_ACTION : Ajout de différents types d'actions clients
-- ===============================================================
INSERT INTO Types_action (label) VALUES
('INFO'),
('WARNING'),
('SENSITIVE'),
('CRITICAL');



-- ===============================================================
-- NETWORKS_CARD : Ajout de différents types de cartes bleu
-- ===============================================================
INSERT INTO Networks_card (label) VALUES
('Visa'),
('Mastercard'),
('American Express'),
('Maestro'),
('UnionPay');



-- ===============================================================
-- LEVELS_CARD : Ajout de différentes gammes de cartes bleu
-- ===============================================================
INSERT INTO Levels_card (label, withdrawal_limit, payment_limit, contactless) VALUES
('Electron', 300, 1000, TRUE),
('Standard', 500, 2000, TRUE),
('Classic', 800, 3000, TRUE),
('Gold', 1500, 8000, TRUE),
('Platinum', 3000, 15000, TRUE),
('Infinite', 5000, 50000, TRUE),
('Business', 4000, 20000, TRUE);




-- ===============================================================
-- TYPES_ACCOUNT : Ajout de différents types de comptes bancaires
-- ===============================================================
INSERT INTO Types_account (code, label, ceiling, is_investable, has_card_option) VALUES
('CUR', 'Compte courant', 10000, FALSE, TRUE),
('SAV', 'Compte épargne', 50000, FALSE, FALSE),
('BUS', 'Compte professionnel', 200000, FALSE, TRUE),
('LIVA', 'Livret A', 22950, TRUE, FALSE),
('LDDS', 'Livret développement durable et solidaire', 12000, FALSE, FALSE),
('LEP', 'Livret épargne populaire', 10000, FALSE, FALSE),
('CEL', 'Compte épargne logement', 15300, FALSE, FALSE),
('PEL', 'Plan épargne logement', 61200, TRUE, FALSE),
('PEA', 'Plan épargne en actions', 150000, TRUE, FALSE),
('PEAPME', 'PEA PME', 225000, TRUE, FALSE),
('CTO', 'Compte titres ordinaire', NULL, TRUE, FALSE),
('PER', 'Plan épargne retraite', NULL, TRUE, TRUE),
('JUN', 'Compte jeune', 5000, FALSE, FALSE),
('STU', 'Compte étudiant', 3000, FALSE, TRUE),
('PRM', 'Compte premium', 50000, FALSE, TRUE),
('VIP', 'Compte privé', NULL, TRUE, TRUE);



-- ===============================================================
-- ACCOUNTS : Ajout de différents comptes clients
-- ===============================================================
SET @account1=UUID(), @account2=UUID(), @account3=UUID(), @account4=UUID(), @account5=UUID(),
    @account6=UUID(), @account7=UUID(), @account8=UUID(), @account9=UUID(), @account10=UUID(),
    @account11=UUID(), @account12=UUID(), @account13=UUID(), @account14=UUID(), @account15=UUID(),
    @account16=UUID(), @account17=UUID(), @account18=UUID(), @account19=UUID(), @account20=UUID(),
    @account21=UUID(), @account22=UUID(), @account23=UUID(), @account24=UUID(), @account25=UUID(),
    @account26=UUID(), @account27=UUID(), @account28=UUID(), @account29=UUID(), @account30=UUID(),
    @account31=UUID(), @account32=UUID(), @account33=UUID(), @account34=UUID(), @account35=UUID(),
    @account36=UUID(), @account37=UUID(), @account38=UUID(), @account39=UUID(), @account40=UUID(),
    @account41=UUID(), @account42=UUID(), @account43=UUID(), @account44=UUID(), @account45=UUID(),
    @account46=UUID(), @account47=UUID(), @account48=UUID(), @account49=UUID(), @account50=UUID();

INSERT INTO Accounts (id, client_id, type_account_id, balance) VALUES
(@account1,@client1,1,1500),
(@account2,@client2,2,3000),
(@account3,@client3,1,500),
(@account4,@client4,3,8000),
(@account5,@client5,2,12000),
(@account6,@client6,2,12000),
(@account7,@client7,2,12000),
(@account8,@client8,2,12000),
(@account9,@client9,2,12000),
(@account10,@client10,2,12000),
(@account11, @client11, 1, 2500.50),
(@account12, @client11, 4, 15000.00),
(@account13, @client12, 1, 850.00),
(@account14, @client12, 5, 2000.00),
(@account15, @client13, 3, 45000.00),
(@account16, @client14, 1, 120.00),
(@account17, @client14, 13, 450.00),
(@account18, @client15, 15, 12000.00),
(@account19, @client16, 1, 3400.00),
(@account20, @client17, 1, 900.00),
(@account21, @client18, 9, 75000.00),
(@account22, @client19, 1, 150.00),
(@account23, @client20, 16, 500000.00),
(@account24, @client1, 4, 22950.00),
(@account25, @client2, 8, 12000.00),
(@account26, @client3, 14, 2500.00),
(@account27, @client4, 4, 5000.00),
(@account28, @client5, 2, 8000.00),
(@account29, @client6, 6, 7700.00),
(@account30, @client7, 11, 10000.00),
(@account31, @client8, 1, 1300.00),
(@account32, @client9, 1, 2100.00),
(@account33, @client10, 4, 3000.00),
(@account34, @client11, 8, 45000.00),
(@account35, @client12, 1, 600.00),
(@account36, @client13, 2, 15000.00),
(@account37, @client14, 12, 25000.00),
(@account38, @client15, 1, 4000.00),
(@account39, @client16, 4, 1000.00),
(@account40, @client17, 2, 5500.00),
(@account41, @client18, 1, 20.00),
(@account42, @client19, 4, 50.00),
(@account43, @client20, 15, 100000.00),
(@account44, @client1, 12, 2000.00),
(@account45, @client2, 5, 4500.00),
(@account46, @client3, 2, 300.00),
(@account47, @client4, 1, 980.00),
(@account48, @client5, 1, 1450.00),
(@account49, @client6, 1, 2200.00),
(@account50, @client7, 4, 100.00);



-- ===============================================================
-- BANKS_CARD : Ajout de différentes carte bleu
-- ===============================================================
SET @card1=UUID(), @card2=UUID(), @card3=UUID(), @card4=UUID(), @card5=UUID(), @card6=UUID(),
    @card7=UUID(), @card8=UUID(), @card9=UUID(), @card10=UUID(), @card11=UUID(), @card12=UUID(), 
    @card13=UUID(), @card14=UUID(), @card15=UUID(), @card16=UUID(), @card17=UUID(), @card18=UUID(), 
    @card19=UUID(), @card20=UUID(),@card21=UUID(), @card22=UUID(), @card23=UUID(), @card24=UUID(), @card25=UUID(),
    @card26=UUID(), @card27=UUID(), @card28=UUID(), @card29=UUID(), @card30=UUID(),
    @card31=UUID(), @card32=UUID(), @card33=UUID(), @card34=UUID(), @card35=UUID(),
    @card36=UUID(), @card37=UUID(), @card38=UUID(), @card39=UUID(), @card40=UUID(),
    @card41=UUID(), @card42=UUID(), @card43=UUID(), @card44=UUID(), @card45=UUID(),
    @card46=UUID(), @card47=UUID(), @card48=UUID(), @card49=UUID(), @card50=UUID();


INSERT INTO Banks_card (id, expiration_date, security_code, account_id, type_debit_id, network_card_id, level_card_id) VALUES
(@card1, '2028-12-31', '552', @account1, 1, 1, 1),
(@card2, '2027-06-30', '468', @account2, 2, 2, 2),
(@card3, '2030-01-15', '861', @account3, 1, 1, 3),
(@card4, '2026-11-10', '147', @account4, 1, 1, 3),
(@card5, '2028-05-17', '820', @account5, 1, 1, 3),
(@card6, '2029-01-21', '581', @account6, 1, 1, 3),
(@card7, '2027-09-13', '652', @account7, 1, 1, 3),
(@card8, '2029-01-24', '360', @account8, 1, 1, 3),
(@card9, '2030-04-03', '497', @account9, 1, 1, 3),
(@card10, '2029-10-08', '216', @account10, 1, 1, 3),

-- Gamme Standard & Classic (Clients 11 à 15)
(@card11, '2028-03-12', '741', @account11, 1, 1, 2), -- Visa Standard
(@card12, '2027-11-20', '369', @account13, 1, 2, 3), -- Mastercard Classic
(@card13, '2029-06-15', '258', @account15, 1, 3, 7), -- Amex Business (Compte Pro)
(@card14, '2026-09-30', '159', @account16, 5, 4, 1), -- Maestro Autorisation Systématique
(@card15, '2030-01-01', '951', @account18, 2, 1, 4), -- Visa Gold (Différé)

-- Gamme Premium & Haut de gamme (Clients 16 à 20)
(@card16, '2028-07-22', '123', @account19, 1, 1, 3), 
(@card17, '2027-05-14', '456', @account20, 1, 2, 3),
(@card18, '2029-12-31', '789', @account21, 3, 3, 5), -- Amex Platinum (Mensuel)
(@card19, '2026-02-28', '321', @account22, 1, 1, 2),
(@card20, '2030-10-10', '654', @account23, 1, 1, 6), -- Visa Infinite (Compte VIP)

-- Distribution variée sur les comptes restants (21 à 50)
(@card21, '2028-09-18', '987', @account31, 1, 2, 2),
(@card22, '2027-04-05', '147', @account32, 1, 1, 3),
(@card23, '2029-01-12', '258', @account35, 1, 1, 2),
(@card24, '2026-12-25', '369', @account38, 2, 2, 4), -- Gold Différé
(@card25, '2028-11-11', '159', @account41, 5, 4, 1), -- Autorisation Systématique
(@card26, '2030-05-05', '753', @account43, 3, 3, 6), -- Infinite Mensuel
(@card27, '2027-08-19', '852', @account47, 1, 1, 2),
(@card28, '2029-03-03', '951', @account48, 1, 2, 3),
(@card29, '2026-06-06', '153', @account49, 1, 1, 3),
(@card30, '2028-02-14', '357', @account14, 6, 1, 1), -- Prépayée sur LDDS

-- Cartes pour comptes spécifiques
(@card31, '2027-10-10', '486', @account17, 5, 4, 1), -- Carte Jeune
(@card32, '2029-12-01', '752', @account26, 5, 1, 2), -- Carte Etudiant
(@card33, '2028-04-30', '156', @account34, 1, 2, 4), -- Gold
(@card34, '2026-07-20', '354', @account36, 1, 1, 3),
(@card35, '2030-02-15', '958', @account37, 1, 2, 5), -- Platinum
(@card36, '2027-01-25', '423', @account39, 1, 1, 2),
(@card37, '2028-05-05', '651', @account40, 1, 2, 3),
(@card38, '2029-08-12', '320', @account44, 1, 5, 2), -- UnionPay
(@card39, '2027-11-11', '854', @account45, 1, 1, 3),
(@card40, '2026-03-12', '120', @account50, 1, 1, 2),

-- Quelques cartes supplémentaires pour les clients multi-comptes
(@card41, '2028-06-30', '963', @account24, 1, 2, 3),
(@card42, '2029-09-09', '741', @account25, 1, 1, 3),
(@card43, '2027-12-12', '852', @account27, 5, 4, 1),
(@card44, '2028-01-01', '123', @account28, 1, 1, 3),
(@card45, '2030-07-07', '456', @account29, 1, 2, 2),
(@card46, '2026-05-15', '789', @account30, 3, 3, 5),
(@card47, '2028-04-18', '321', @account33, 1, 1, 2),
(@card48, '2029-02-22', '654', @account42, 1, 2, 2),
(@card49, '2027-11-28', '987', @account46, 5, 4, 1),
(@card50, '2028-10-05', '147', @account12, 1, 1, 3);




-- ===============================================================
-- TRANSACTIONS : Ajout de différentes transactions bancaires
-- ===============================================================
INSERT INTO Transactions (id, amount, status, type_transaction_id, origin_card_id, recipient_account_id) VALUES
-- TYPE 1 : Paiement carte (Sortie d'argent vers un tiers)
(UUID(), 42.50, 'SUCCESS', 1, @card1, @account5),
(UUID(), 12.00, 'SUCCESS', 1, @card2, @account10),
(UUID(), 156.99, 'SUCCESS', 1, @card3, @account15),
(UUID(), 5.50, 'FAILED', 1, @card4, @account2),
(UUID(), 89.00, 'SUCCESS', 1, @card5, @account20),

-- TYPE 2 : Virement sortant (Sortie d'argent vers un autre compte)
(UUID(), 400.00, 'SUCCESS', 2, @card3, @account1),
(UUID(), 25.00, 'SUCCESS', 2, @card7, @account12),
(UUID(), 1000.00, 'PENDING', 2, @card8, @account3),
(UUID(), 15.00, 'SUCCESS', 2, @card9, @account9),
(UUID(), 300.00, 'CANCELLED', 2, @card10, @account10),

-- TYPE 3 : Prélèvement (Sortie d'argent automatique)
(UUID(), 39.90, 'SUCCESS', 3, @card11, @account5),
(UUID(), 15.99, 'SUCCESS', 3, @card12, @account7),
(UUID(), 85.00, 'SUCCESS', 3, @card13, @account14),
(UUID(), 9.99, 'SUCCESS', 3, @card14, @account1),
(UUID(), 120.00, 'SUCCESS', 3, @card15, @account6),

-- TYPE 4 : Retrait distributeur (Sortie d'argent - Destinataire NULL)
(UUID(), 40.00, 'SUCCESS', 4, @card16, NULL),
(UUID(), 20.00, 'SUCCESS', 4, @card17, NULL),
(UUID(), 100.00, 'SUCCESS', 4, @card18, NULL),
(UUID(), 200.00, 'FAILED', 4, @card19, NULL),
(UUID(), 50.00, 'SUCCESS', 4, @card20, NULL),

-- TYPE 5 : Dépôt espèces (Entrée d'argent - Destinataire = Compte du client)
(UUID(), 500.00, 'SUCCESS', 5, @card1, @account1),
(UUID(), 150.00, 'SUCCESS', 5, @card2, @account2),
(UUID(), 2000.00, 'PENDING', 5, @card3, @account3),
(UUID(), 45.00, 'SUCCESS', 5, @card4, @account4),
(UUID(), 100.00, 'SUCCESS', 5, @card5, @account5),

-- TYPE 6 : Remboursement (Entrée d'argent - Destinataire = Compte du client)
(UUID(), 19.99, 'SUCCESS', 6, @card6, @account6),
(UUID(), 120.00, 'SUCCESS', 6, @card7, @account7),
(UUID(), 54.30, 'SUCCESS', 6, @card8, @account8),
(UUID(), 8.00, 'SUCCESS', 6, @card9, @account9),
(UUID(), 42.00, 'REFUNDED', 6, @card10, @account10),

-- TYPE 7 : Frais bancaires (Sortie d'argent - Destinataire souvent NULL)
(UUID(), 5.00, 'SUCCESS', 7, @card11, NULL),
(UUID(), 5.00, 'SUCCESS', 7, @card12, NULL),
(UUID(), 12.00, 'SUCCESS', 7, @card13, NULL),
(UUID(), 2.50, 'SUCCESS', 7, @card14, NULL),
(UUID(), 30.00, 'SUCCESS', 7, @card15, NULL);




-- ===============================================================
-- AUDIT_LOGS : Ajout de différents logs d'actions clients
-- ===============================================================
INSERT INTO Audit_logs (before_value, after_value, device, type_action_id, client_id, created_at) VALUES
-- INFO
('Utilisateur connecté','Utilisateur déconnecté','iPhone 13',1,@client1,'2026-03-28 08:12:45'),
('Session active','Session terminée','MacBook Pro',1,@client2,'2026-03-28 09:45:10'),
('Connexion réussie','Déconnexion','Android',1,@client3,'2026-03-28 11:02:33'),
('Utilisateur connecté','Utilisateur déconnecté','iPad',1,@client4,'2026-03-28 14:20:05'),
('Session active','Session fermée','Windows PC',1,@client5,'2026-03-28 18:55:41'),
('Utilisateur connecté','Utilisateur déconnecté','iPhone 12',1,@client29,'2026-03-25 08:05:12'),
('Session active','Session terminée','MacBook Air',1,@client30,'2026-03-25 09:22:48'),
('Connexion réussie','Déconnexion','Android',1,@client31,'2026-03-25 12:14:03'),
('Session active','Session fermée','Windows PC',1,@client32,'2026-03-25 16:40:55'),
('Utilisateur connecté','Utilisateur déconnecté','iPad',1,@client1,'2026-03-29 19:33:27'),
('Nouvelle réservation','Réservation confirmée','iPad',1,@client1,'2026-03-29 19:40:48'),

-- WARNING
('Connexion échouée','Connexion réussie','Unknown Device',2,@client6,'2026-03-29 02:14:22'),
('Connexion depuis France','Connexion depuis Espagne','Android',2,@client7,'2026-03-29 03:48:09'),
('Session expirée','Nouvelle connexion','Public WiFi',2,@client8,'2026-03-29 06:30:55'),
('Mot de passe incorrect','Mot de passe correct','Linux',2,@client9,'2026-03-29 07:10:11'),
('Nouvel appareil détecté','Appareil validé','Unknown Device',2,@client10,'2026-03-29 23:59:59'),
('Connexion échouée','Connexion réussie','Unknown Device',2,@client34,'2026-03-26 01:14:09'),
('Connexion depuis France','Connexion depuis Pays-Bas','Android',2,@client35,'2026-03-26 02:47:36'),
('Session expirée','Nouvelle connexion','Public WiFi',2,@client36,'2026-03-26 04:12:58'),
('Mot de passe incorrect','Mot de passe correct','Linux',2,@client37,'2026-03-26 05:03:21'),
('Nouvel appareil détecté','Appareil validé','Unknown Device',2,@client38,'2026-03-26 23:41:00'),
('Tentative de réservation multiple','Réservation refusée','iPad',2,@client1,'2026-03-29 19:41:12'),

-- SENSITIVE
('Mot de passe ancien','Mot de passe modifié','iPhone 14',3,@client11,'2026-03-30 10:05:44'),
('Email ancien','Email modifié','MacBook Air',3,@client12,'2026-03-30 11:22:18'),
('Plafond 2000','Plafond 9000','Android',3,@client13,'2026-03-30 13:47:02'),
('Carte active','Carte bloquée','Windows PC',3,@client14,'2026-03-30 15:33:27'),
('Carte bloquée','Carte débloquée','iPad',3,@client15,'2026-03-30 17:18:49'),
('Téléphone ancien','Téléphone modifié','Unknown Device',3,@client16,'2026-03-30 19:40:12'),
('Adresse ancienne','Adresse modifiée','Public Computer',3,@client17,'2026-03-30 21:05:36'),
('2FA activé','2FA désactivé','Linux Server',3,@client18,'2026-03-30 23:50:03'),
('Mot de passe ancien','Mot de passe modifié','MacBook Pro',3,@client39,'2026-03-27 10:11:45'),
('Email ancien','Email modifié','iPhone 14',3,@client40,'2026-03-27 11:29:14'),
('Plafond 1500','Plafond 7500','Android',3,@client41,'2026-03-27 13:55:39'),
('Carte active','Carte bloquée','Windows PC',3,@client42,'2026-03-27 15:20:08'),
('Carte bloquée','Carte débloquée','iPad',3,@client43,'2026-03-27 17:42:51'),
('Téléphone ancien','Téléphone modifié','Unknown Device',3,@client44,'2026-03-27 18:59:26'),
('Adresse ancienne','Adresse modifiée','Public Computer',3,@client45,'2026-03-27 20:17:33'),
('2FA activé','2FA désactivé','Linux Server',3,@client46,'2026-03-27 22:48:07'),
('Mot de passe ancien','Mot de passe modifié','MacBook Pro',3,@client22,'2026-03-30 10:11:45'),
('Email ancien','Email modifié','iPhone 14',3,@client23,'2026-03-30 11:29:14'),
('Plafond 2000','Plafond 9000','Android',3,@client24,'2026-03-30 13:55:39'),
('Carte active','Carte bloquée','Windows PC',3,@client25,'2026-03-30 15:20:08'),
('Carte bloquée','Carte débloquée','iPad',3,@client26,'2026-03-30 17:42:51'),
('Téléphone ancien','Téléphone modifié','Unknown Device',3,@client27,'2026-03-30 18:59:26'),
('Adresse ancienne','Adresse modifiée','Public Computer',3,@client28,'2026-03-30 20:17:33'),
('2FA activé','2FA désactivé','Linux Server',3,@client29,'2026-03-30 22:48:07'),

-- CRITICAL
('Compte actif','Compte fermé','Tor Browser',4,@client19,'2026-03-31 01:12:59'),
('Carte active','Carte bloquée','Android Emulator',4,@client20,'2026-03-31 02:45:17'),
('Carte bloquée','Carte débloquée','Tor Browser',4,@client21,'2026-03-31 03:22:41'),
('Plafond 500','Plafond 15000','Unknown Device',4,@client22,'2026-03-31 04:55:08'),
('Mot de passe modifié','Mot de passe modifié','Tor Browser',4,@client23,'2026-03-31 05:30:30'),
('Email modifié','Email modifié','Public WiFi',4,@client24,'2026-03-31 06:44:12'),
('Connexion réussie','Ajout bénéficiaire','Unknown Device',4,@client25,'2026-03-31 07:15:55'),
('Ajout bénéficiaire','Virement effectué','Unknown Device',4,@client26,'2026-03-31 07:17:03'),
('Session active','Session supprimée','Linux Server',4,@client27,'2026-03-31 08:02:21'),
('Compte actif','Accès suspendu','Unknown Device',4,@client28,'2026-03-31 09:33:47'),
('Connexion réussie','Ajout bénéficiaire','Unknown Device',4,@client47,'2026-03-28 02:05:14'),
('Ajout bénéficiaire','Virement effectué','Unknown Device',4,@client47,'2026-03-28 02:07:02'),
('Compte actif','Compte fermé','Tor Browser',4,@client48,'2026-03-28 03:33:41'),
('Carte active','Carte bloquée','Android Emulator',4,@client49,'2026-03-28 04:12:09'),
('Carte bloquée','Carte débloquée','Tor Browser',4,@client50,'2026-03-28 04:45:55'),
('Plafond 800','Plafond 12000','Unknown Device',4,@client1,'2026-03-28 05:21:18'),
('Mot de passe modifié','Mot de passe modifié','Tor Browser',4,@client2,'2026-03-28 05:45:33'),
('Email modifié','Email modifié','Public WiFi',4,@client3,'2026-03-28 06:02:47'),
('Connexion réussie','Changement IBAN','Tor Browser',4,@client4,'2026-03-28 06:15:12'),
('Changement IBAN','Virement effectué','Tor Browser',4,@client4,'2026-03-28 06:18:29'),
('Session active','Session supprimée','Linux Server',4,@client5,'2026-03-28 07:05:56'),
('Compte actif','Accès suspendu','Unknown Device',4,@client6,'2026-03-28 08:44:21'),
('Tentative de gros virement','Virement refusé','Tor Browser',4,@client30,'2026-03-31 02:05:14'),
('Virement urgent accepté','Montant élevé transféré','Unknown Device',4,@client1,'2026-03-31 02:07:02'),
('Compte actif','Compte suspendu pour fraude','Tor Browser',4,@client2,'2026-03-31 03:33:41'),
('Carte active','Carte bloquée pour suspicion','Android Emulator',4,@client3,'2026-03-31 04:12:09'),
('Carte débloquée','Transaction refusée','Tor Browser',4,@client4,'2026-03-31 04:45:55'),
('Plafond 500','Plafond 15000 demandé','Unknown Device',4,@client5,'2026-03-31 05:21:18'),
('Email modifié','Email non reconnu','Tor Browser',4,@client6,'2026-03-31 05:45:33'),
('Connexion suspecte','Ajout bénéficiaire inconnu','Public WiFi',4,@client7,'2026-03-31 06:02:47'),
('Ajout bénéficiaire','Virement de masse initié','Tor Browser',4,@client8,'2026-03-31 06:15:12'),
('Session active','Session interrompue pour sécurité','Linux Server',4,@client9,'2026-03-31 06:18:29'),
('Spam de prise de rendez-vous','Annulation automatique','Unknown Device',4,@client10,'2026-03-31 07:05:56'),
('Connexion depuis appareil inconnu','Validation 2FA requise','iPhone 12',4,@client11,'2026-03-31 08:44:21'),
('Connexion réussie','Tentative de modification IBAN','Tor Browser',4,@client12,'2026-03-31 09:33:12'),
('Compte actif','Blocage temporaire du compte','Public WiFi',4,@client13,'2026-03-31 09:45:50'),
('Mot de passe modifié','Modification non autorisée détectée','Unknown Device',4,@client14,'2026-03-31 10:12:03');

SHOW TABLES;