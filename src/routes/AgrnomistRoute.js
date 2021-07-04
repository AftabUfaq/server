const express  =  require('express');
const router = express.Router();
const md5 = require('md5');
const db = require('../config/connection.db');

router.post('/getalluserforagrnomist' , async (req, res) => {
    var area = `${req.body.area}`
    var sql = "SELECT * FROM `users` WHERE area = ? and role = 'grower' OR  role = 'admin'";
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

  router.post('/pdffileupload' , async (req, res) => {
    var uri = `${req.body.uri}`
    var userid = `${req.body.userid}`
    var sql = "INSERT INTO `pdffiles` (`id`, `fileuri`, `userid`) VALUES (NULL, ?, ?)";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [uri,userid], function (error, results, fields) {
        // If some error occurs, we throw an error.
        if (error){
          console.log('error' , error.sqlMessage)
          res.status(404).send({error:'Some Thing Went Wrong'})
      }
        res.status(200).send(results)
      });
    });
  });


  router.post('/agronomistpackge' , async (req, res) => {
  
    var uri = `${req.body.uri}`
   
    var sampleDate = `${req.body.sampleDate}`
    var sampleCollected = `${req.body.sampleCollected}`
    var ec = `${req.body.ec}`
    var ph = `${req.body.ph}`

    var sql = "INSERT INTO `agrnomistpackage` (`id`, `name`, `duration`, `quantity`, `price`, `pdfpath`) VALUES (NULL, ?,?,?,?,?);";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [sampleDate,ph, sampleCollected,ec,uri], function (error, results, fields) {
        // If some error occurs, we throw an error.
        if (error){
          console.log('error' , error.sqlMessage)
          res.status(404).send({error:'Some Thing Went Wrong'})
      }
        res.status(200).send(results)
      });
    });
  });
  router.post('/getpackages' , async (req, res) => {
   
    var sql = "SELECT * FROM `agrnomistpackage`";
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