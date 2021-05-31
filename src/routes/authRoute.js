const express  =  require('express');
const router = express.Router();
const md5 = require('md5');
const db = require('../config/connection.db');

router.post('/signup' , async (req, res) => {
  var fname = `${req.body.firstname}`
  var lname = `${req.body.lastname}`
  var username = `${req.body.username}`
  var password  = `${md5(req.body.password)}`
  var mobilenumber = `${req.body.mobilenumber}`
  var area = `${req.body.area}`
  var role = `${req.body.role}` 
  var cnic = `${req.body.cnic}`
  var address = `${req.body.address}`
  var accountnumber = `${req.body.accountnumber}`
  var image = `${req.body.image}`
  var sql = "INSERT INTO `users` (`firstname`, `lastname`, `username`, `password`, `mobilenumber`, `area`, `role`, `cnic`,  `address`, `accountnumber`, `image`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)"
  db.getConnection(function (err, db) {
   if(err){
     res.status(404).send({error:'Some Thing Went Wrong'})
     return; 
   }
   // Executing the MySQL query (select all data from the 'users' table).
    db.query(sql, [fname,lname ,username, password, mobilenumber, area, role, cnic, address, accountnumber,image], function (error, results, fields) {
     // If some error occurs, we throw an error.
     if (error){
       console.log(error)
       res.status(404).send({error:error.code})
     }
     // Getting the 'response' from the database and sending it to our route. This is were the data is.
     res.status(200).send(results)
   });
});
});


router.post('/login' , async (req, res) => {
  var name = `${req.body.username}`;
  var pass = `${md5(req.body.password)}`
 
  var sql = "SELECT * FROM `users` WHERE `users`.`username` = ? AND `users`.`password` = ?" 
  db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [name ,pass], function (error, results, fields) {
        // If some error occurs, we throw an error.
        if (error){
          console.log('error' , error.sqlMessage)
          res.status(404).send({error:error.sqlMessage})
      }
     // console.log(results, 'results')
        // Getting the 'response' from the database and sending it to our route. This is were the data is.
        res.status(200).send(results)
      });
    });
})

router.post('/farmerlogin' , async (req, res) => {
  var id = `${req.body.id}`;
  var sql = "SELECT * FROM `users` WHERE `users`.`id` = ?" 
  db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [id], function (error, results, fields) {
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
})


router.post('/getallusers', async(req,res) => {
  var role = `${req.body.role}`
  var area = `${req.body.area}`
  var sql = "SELECT * FROM `users` WHERE area = ? and role != ?";
  db.getConnection(function (err, db) {
    if (err){
        res.status(404).send({error:'Some Thing Went Wrong'})
        return; 
    }
        // Executing the MySQL query (select all data from the 'users' table).
     db.query(sql, [area, role], function (error, results, fields) {
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
})

router.post('/getallusersforadmin', async(req,res) => {
  var sql = "SELECT * FROM `users` WHERE  1";
  db.getConnection(function (err, db) {
    if (err){
        res.status(404).send({error:'Some Thing Went Wrong'})
        return; 
    }
        // Executing the MySQL query (select all data from the 'users' table).
     db.query(sql,[], function (error, results, fields) {
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
})

router.post("/deleteuser", async(req, res) => {
  var id = `${req.body.id}`
  var sql = "DELETE FROM `users` WHERE `users`.`id` = ?";
  db.getConnection(function (err, db) {
    if (err){
        res.status(404).send({error:'Some Thing Went Wrong'})
        return; 
    }
        // Executing the MySQL query (select all data from the 'users' table).
     db.query(sql, [id], function (error, results, fields) {
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

router.post("/updateuser", async(req, res) => {
  var id = `${req.body.id}`
  var fname = `${req.body.firstname}`
  var lname = `${req.body.lastname}`
  var username = `${req.body.username}`
  var password  = `${md5(req.body.password)}`
  var mobilenumber = `${req.body.mobilenumber}`
  var area = `${req.body.area}`
  var role = `${req.body.role}` 
  var cnic = `${req.body.cnic}`
  var address = `${req.body.address}`
  var accountnumber = `${req.body.accountnumber}`
  var image = `${req.body.image}`
  var sql = "UPDATE `users` SET `firstname` = ?, `lastname` = ?, `username` = ?,`password` =?, `mobilenumber` = ?, `area` = ?, `role` = ?,`cnic`=? ,`address` = ?, `accountnumber` = ?, `image` = ? WHERE `users`.`id` = ?";
  db.getConnection(function (err, db) {
    if (err){
        res.status(404).send({error:'Some Thing Went Wrong'})
        return; 
    }
        // Executing the MySQL query (select all data from the 'users' table).
     db.query(sql, [fname,lname ,username, password, mobilenumber, area, role, cnic, address, accountnumber,image, id],  function (error, results, fields) {
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