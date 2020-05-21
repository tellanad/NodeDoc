//import express code module
const express = require('express')
const app = express()

//import core fs module
const fs = require('fs')
const filename = "target.txt"
//fs.watch(filename,() => console.log('file chnaged'));
const errorHandler = err => console.log(err);
const dataHandler =data => console.log(data.toString());

fs.readFile(filename,(err,data)=>{
    if(err) errorHandler(err);
        dataHandler(data);
    
});

console.log("Node js is async programming");

app.get('/',(req,res)=>{
    res.send("Docker travis node UP go!")
});

app.listen(3000,()=>{
    console.log("Welcome here you go!")
});