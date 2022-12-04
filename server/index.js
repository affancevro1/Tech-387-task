const express = require('express');
const mongoose = require('mongoose');
const app = express(); // instalacija expressa
const DB = "mongodb+srv://affan:affan12345@cluster0.5yffvww.mongodb.net/?retryWrites=true&w=majority"
const PORT = 3000;
const authRouter = require('../server/routes/auth');


app.use(express.json());
app.use(authRouter);

app.get('/', (req,res) => {
    res.send()
})
mongoose.connect(DB).then(() => {
    console.log("Connection succsessful")
}).catch((e) => {
    console.log(e)
}); 

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`)
})