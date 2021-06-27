const express  =  require('express');
const router = express.Router();
const db = require('../config/connection.db');

router.post('/savebarcode' , async (req, res) => {
    var area = `${req.body.area}`
    var type = `${req.body.type}`
    var data = `${req.body.data}`
    var userid = `${req.body.id}`

    var sql = "INSERT INTO `scancode` (`id`, `type`, `data`, `area`, `userid`, `status`) VALUES (NULL, ?, ?, ?, ?, 'false')";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [type, data,area, userid], function (error, results, fields) {
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
  
  router.post('/getbarcode' , async (req, res) => {
    var area = `${req.body.area}`
    var sql = "SELECT * FROM `scancode` WHERE area = ? ";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [area,], function (error, results, fields) {
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