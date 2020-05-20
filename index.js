var express = require('express');
var app = express();

app.get('/',function(req,res){
    res.send("Docker travis node !")
});

app.listen(3000,function(){
    console.log("Welcome here you go!")
});