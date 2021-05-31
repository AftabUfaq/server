const express = require("express");
const bodyParser = require("body-parser");
const app = express();


const authRoute = require('./src/routes/authRoute');
const uploadRoute = require('./src/routes/imageupload')

app.use('/images', express.static(__dirname + '/images'));
app.use(bodyParser.json());



// parse requests of content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

app.use(authRoute);
app.use(uploadRoute);

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to Plant Application" });
});

// set port, listen for requests
app.listen(3000, () => {
  console.log("Server is running on port 3000.");
});