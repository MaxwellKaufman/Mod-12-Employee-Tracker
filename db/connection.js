const mysql = require("mysql2");
require("dotenv").config();

const db = mysql.createConnection({
  host: "localhost",
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: "regularCompany_db",
});

db.connect((err) => {
  if (err) {
    console.error("Error connecting to database:", err);
    throw err;
  }
  console.log("Connected to MySQL database");
});

module.exports = db;
