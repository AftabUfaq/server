const express  =  require('express');
const router = express.Router();
const db = require('../config/connection.db');

  router.post('/paymentinsert' , async (req, res) => {
    var amount = `${req.body.amount}`
    var sendername = `${req.body.sendername}`
    var recievername = `${req.body.recievername}`
    var recieveraccountno = `${req.body.recieveraccountno}`
    var recieverid = `${req.body.recieverid}`
    var senderaccountno = `${req.body.senderaccountno}`
    var sql = "INSERT INTO `payments` (`id`, `amount`, `sendername`, `recievername`, `senderaccountno`, `recieveraccountno`, `recieverid`) VALUES (NULL, ?, ?, ?, ?, ?, ?)";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [amount, sendername,recievername,senderaccountno,recieveraccountno, recieverid], function (error, results, fields) {
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
  
  router.post('/getpayments' , async (req, res) => {
    var id = `${req.body.id}`
    var sql = "SELECT * FROM `payments` WHERE recieverid = ? ";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [id,], function (error, results, fields) {
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

  router.post('/getallpayments' , async (req, res) => {
  
    var sql = "SELECT * FROM `payments` WHERE 1 ";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [], function (error, results, fields) {
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