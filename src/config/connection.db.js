const mysql = require('mysql');
const db = mysql.createPool({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'plant',
    multipleStatements: true
  }); 
  
  module.exports = db;  