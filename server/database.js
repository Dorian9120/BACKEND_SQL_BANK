import { createPool } from "mariadb";
import dotenv from "dotenv";

dotenv.config();

const database = createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  connectionLimit: 5,
  multipleStatements: true,
  bigIntAsNumber: true,
});

export default database;
