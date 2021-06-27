const express  =  require('express');
const router = express.Router();
const md5 = require('md5');
const db = require('../config/connection.db');

router.post('/soilhealthlabdata' , async (req, res) => {
  
    var uri = `${req.body.uri}`
    var userid = `${req.body.userid}`
    var sampleDate = `${req.body.sampleDate}`
    var sampleCollected = `${req.body.sampleCollected}`
    var ec = `${req.body.ec}`
    var ph = `${req.body.ph}`

    var sql = "INSERT INTO `soilhealthlabreport` (`id`, `sampleDate`, `sampleCollected`, `ec`, `ph`, `userid`, `uri`) VALUES (NULL, ?, ?,?,?,?,?);";
    db.getConnection(function (err, db) {
      if (err){
          res.status(404).send({error:'Some Thing Went Wrong'})
          return; 
      }
          // Executing the MySQL query (select all data from the 'users' table).
       db.query(sql, [sampleDate,sampleCollected,ec,ph,userid,uri], function (error, results, fields) {
        // If some error occurs, we throw an error.
        if (error){
          console.log('error' , error.sqlMessage)
          res.status(404).send({error:'Some Thing Went Wrong'})
      }
        res.status(200).send(results)
      });
    });
});


router.post("/getdatasoilhealthlab", async(req, res) => {
    var id = `${req.body.id}`
    var sql = "SELECT * FROM `soilhealthlabreport` WHERE userid = ? ";
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
})
module.exports = router;