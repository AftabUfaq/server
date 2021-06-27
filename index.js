const express = require("express");
const bodyParser = require("body-parser");
const app = express();


const authRoute = require('./src/routes/authRoute');
const uploadRoute = require('./src/routes/imageupload')
const AgronomistRoute = require('./src/routes/AgrnomistRoute')  
const VenderRoute = require('./src/routes/VenderRoute')  
const BarCodeRoute = require('./src/routes/barcodeRoute')
const PaymentsRoute = require('./src/routes/Payments')
const SoilHealthLabRoute = require("./src/routes/SoilHealthLab")
app.use('/images', express.static(__dirname + '/images'));
app.use('/pdffiles', express.static(__dirname + '/pdffiles'));
app.use(bodyParser.json());



// parse requests of content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

app.use(authRoute);
app.use(uploadRoute);
app.use(AgronomistRoute)
app.use(VenderRoute)
app.use(BarCodeRoute)
app.use(PaymentsRoute)
app.use(SoilHealthLabRoute)
// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to Plant Application" });
});

// set port, listen for requests
app.listen(3000, () => {
  console.log("Server is running on port 3000.");
});