import express = require('express');
import bodyParser = require("body-parser");

var app = express();


app.use(bodyParser.json());

app.get('/exemplo', function () {
    console.log('Example!')
    
})

app.post('/exemplo', function () {
    console.log('Example!')
    
})

app.put('/exemplo', function () {
    console.log('Example!')
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})

export { app }