# 🏦 SQL_BANK - Système de Gestion Bancaire Backend

Bienvenue dans le projet **SQL_BANK**, une solution API REST robuste couplée à une base de données MariaDB hautement optimisée. Ce système permet la gestion des clients, des comptes, des cartes bancaires et intègre un moteur d'audit de sécurité avancé.

---

## 🚀 Guide d'Installation de la Base de Données

Suivez scrupuleusement ces étapes dans l'ordre pour garantir le bon fonctionnement des **Triggers**, **Procédures** et des **Index**.

### ⚙️ Prérequis

- **Serveur :** MariaDB (ou MySQL) installé et actif.
- **Outil :** Terminal SQL, PHPMyAdmin, DBeaver ou MySQL Workbench.
- **Environnement :** Node.js (v20+) pour la partie API.

---

### 🛠️ Étapes de Déploiement SQL

- (Ouvrez les fichiers dans l'ordre indiquer pour copier tout le code (Ctrl + A) puis coller dans un terminal MySQL).
  | Étape | Dossier | Fichier | Description |
  | :--- | :--- | :--- | :--- |
  | **1. Structure** | `STRUCTURE_TABLES` | `CREATE_DB.sql` | Création de la DB, des tables, clés étrangères et index de base. |
  | **2. Triggers** | `OPTIMISATION_DB` | `TRIGGERS.sql` | Automatisation de l'audit (logs) et sécurité des transactions. |
  | **3. Procédures**| `OPTIMISATION_DB` | `PROCEDURES.sql` | Logique métier complexe (ex: Dashboard client consolidé). |
  | **4. Données** | `INSERTION_DATA` | `INSERT_INTO.sql` | Insertion des jeux de tests et référentiels (Types_account, etc.). |
  | **5. Index** | `OPTIMISATION_DB` | `INDEX.sql` | Optimisation des performances pour les recherches fréquentes. |

---

## 💻 Installation du Serveur API (Node.js)

1. **Installation des dépendances :**
   ```bash
   npm install
   ```

### ⚙️ Configuration de l'environnement

Créez un fichier `.env` dans le dossier `/server` :

```
DB_HOST=localhost
DB_USER=votre_utilisateur ou root
DB_PASSWORD=votre_mot_de_passe
DB_NAME=SQL_BANK
DB_PORT=3306
PORT=3000
```

### 🚀 Lancement du projet

1. Faites les deux commandes suivante dans un terminal :

```bash
- cd server
- npm run dev
```
