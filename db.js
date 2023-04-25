const mysql = require("mysql");
const util = require("util");

const pool = mysql.createPool({
  connectionLimit: 10,
  host: "localhost",
  database: "coder_empresa",
  user: "root",
  password: "Otacon123",
});

pool.query = util.promisify(pool.query);

module.exports = pool;
