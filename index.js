const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const authRoute = require('./src/config/routes/authRoute');
var multer = require('multer');
var upload = multer();
// parse requests of content-type: application/json
app.use(bodyParser.json());
app.use(upload.array());
// parse requests of content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

app.use(authRoute);

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to Plant Application" });
});

// set port, listen for requests
app.listen(3000, () => {
  console.log("Server is running on port 3000.");
});