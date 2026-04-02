DROP DATABASE IF EXISTS SQL_BANK_H3;
CREATE DATABASE SQL_BANK_H3;
USE SQL_BANK_H3;


CREATE TABLE Clients (
    id CHAR(36) PRIMARY KEY,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('MALE', 'FEMALE', 'OTHER') NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    birth_date DATE NOT NULL,
    phone VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_id CHAR(36) NOT NULL,
    street_number VARCHAR(10),
    street_name VARCHAR(255) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Clients(id) ON DELETE CASCADE
);

CREATE TABLE Types_account (
    id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(10) UNIQUE NOT NULL,
    label VARCHAR(50) NOT NULL,
    ceiling DECIMAL(15,2) CHECK (ceiling > 0),
    is_investable BOOLEAN NOT NULL,
    has_card_option BOOLEAN NOT NULL
);

CREATE TABLE Accounts (
    id CHAR(36) PRIMARY KEY,
    client_id CHAR(36),
    type_account_id INT,
    balance DECIMAL(15,2) NOT NULL CHECK (balance >= -1000.00),
    currency CHAR(3) NOT NULL DEFAULT 'EUR',
    status ENUM('ACTIVE', 'INACTIVE', 'BLOCKED', 'CLOSED') NOT NULL DEFAULT 'ACTIVE',
    FOREIGN KEY (client_id) REFERENCES Clients(id),
    FOREIGN KEY (type_account_id) REFERENCES Types_account(id)
);

CREATE TABLE Types_claim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(50) NOT NULL
);

CREATE TABLE Claims (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    type_claim_id INT,
    client_id CHAR(36),
    claim_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (type_claim_id) REFERENCES Types_claim(id),
    FOREIGN KEY (client_id) REFERENCES Clients(id)
);

CREATE TABLE Types_transaction(
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(100) NOT NULL
);


CREATE TABLE Types_action (
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(100) NOT NULL
);

CREATE TABLE Types_debit (
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(100) NOT NULL
);

CREATE TABLE Networks_card (
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(100) NOT NULL
);

CREATE TABLE Levels_card (
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(100) NOT NULL,
    withdrawal_limit DECIMAL(12,2) NOT NULL,
    payment_limit DECIMAL(12,2) NOT NULL,
    contactless BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Banks_card (
    id CHAR(36) PRIMARY KEY,
    expiration_date DATE NOT NULL,
    security_code CHAR(3) NOT NULL,
    account_id CHAR(36) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    type_debit_id INT NOT NULL,
    network_card_id INT NOT NULL,
    level_card_id INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Accounts(id),
    FOREIGN KEY (type_debit_id) REFERENCES Types_debit(id),
    FOREIGN KEY (network_card_id) REFERENCES Networks_card(id),
    FOREIGN KEY (level_card_id) REFERENCES Levels_card(id)
);

CREATE TABLE Transactions(
    id CHAR(36) PRIMARY KEY,
    amount DECIMAL(12,2) NOT NULL CHECK (amount > 0),
    status ENUM('PENDING', 'SUCCESS', 'FAILED', 'CANCELLED', 'REFUNDED') NOT NULL DEFAULT 'PENDING',
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
    type_transaction_id INT NOT NULL,
    origin_card_id CHAR(36),
    recipient_account_id CHAR(36),
    FOREIGN KEY (type_transaction_id) REFERENCES Types_transaction(id),
    FOREIGN KEY (recipient_account_id) REFERENCES Accounts(id),
    FOREIGN KEY (origin_card_id) REFERENCES Banks_card(id)
);


CREATE TABLE Audit_logs(
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_id CHAR(36) NOT NULL,
    before_value VARCHAR(255),
    after_value VARCHAR(255) NOT NULL,
    device VARCHAR(255),
    type_action_id INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (type_action_id) REFERENCES Types_action(id),
    FOREIGN KEY (client_id) REFERENCES Clients(id)
);

SHOW TABLES;
