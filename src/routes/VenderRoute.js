const express  =  require('express');
const router = express.Router();
const md5 = require('md5');
const db = require('../config/connection.db');

router.post('/getalluserforvendor' , async (req, res) => {
    var area = `${req.body.area}`
    var sql = "SELECT * FROM `users` WHERE area = ? and role = 'grower' OR  role = 'admin' OR role = 'agronomist'";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [area], function (error, results, fields) {
        // If some error occurs, we throw an error.
        if (error){
          console.log('error' , error.sqlMessage)
          res.status(404).send({error:'Some Thing Went Wrong'})
      }
     // console.log(results, 'results')
        // Getting the 'response' from the database and sending it to our route. This is were the data is.
        res.status(200).send(results)
      });
    });
  });
  
  module.exports = router;