const mysql = require('mysql2');
const express = require('express');
var app = express();

const parser = require('body-parser');
app.use(parser.json());
var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: ""
});
connection.connect((err) => {
    if (!err)
        console.log("Database is connected!");
    else
        console.log("CONNECTION ERROR!");
})
app.listen(5200, () => console.log('server has been started!'));
app.get("/info", (req, res) => {
    connection.query("SELECT * from stuinfo", (err, rows, fields) => {
        if (!err)
            res.send(rows)
        else
            console.log("error");
    })
})
app.get('/add', (_req, res) => {
    var post = { stu_id: 111, stu_name: 'Wix', age: 22, gender: "Female", course: "MCA", address: "Bangalore", grade: "A" };
    var sql = 'INSERT INTO stuinfo SET ?';
    var query = connection.query(sql, post, (err, result) => {
        if (err) throw err;
        res.send("Inserted Rows...");
    })
});
app.get('/update/id', (req, res) => {
    var name = 'Archu'
    var sql = `UPDATE stuinfo SET stu_name='${name}' WHERE stu_id= '${req.params.id}'`;
    var query = connection.query(sql, (err, result) => {
        if (err) throw error;
        res.send("Successfully Updated...");
    })
});
app.get('/delete/id', (req, res) => {
    var sql = `Delete from stuinfo WHERE stu_id= '${req.params.id}'`;
    var query = connection.query(sql, (err, result) => {
        if (err) throw error;
        res.send(" Successfully Deleted");
    })
});