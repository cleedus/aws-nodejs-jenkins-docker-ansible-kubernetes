const express = require('express')
const app = express();
app.get('/', (req, res) => {
    res.send("Welcome to my capstone app deployed with kubernetes. This is the green deployment version")
});;


app.listen(80, () => {
    console.log('Listening on port 80');
});