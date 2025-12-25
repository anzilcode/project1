const express = require('express')

const app = express()

app.get('/',(req,res)=>{
    res.send("Node js deploying using jenkins (Project 1)")
})

const PORT = 3000

app.listen(PORT,()=>{
    console.log(`server running on PORT :${PORT}`)
})