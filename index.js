const express = require('express');
const app = express();

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));

const port = 2000;

const path = require('path');

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.static("public/images/"));
app.use(express.static("css"));

var mysql = require('mysql');

var q = require('q');


var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "Courses"
});

con.connect(function (err) {
    if (err) throw err;
    console.log('connected  to database!');
});


app.listen(port, () => { console.log(`listening to port ${port}!`) })

var obj = {};

app.get('/', (req, res) => {
    con.query('select * from courses Order by rating desc limit 2', (err, rating, fields) => {
        if (err) {
            console.log('error found');
        } else {
            obj = {
                rated: rating
            }

            con.query('select * from courses Order by release_date desc limit 2', (err, newest, field) => {

                if (err) {
                    console.log('error found');
                } else {
                    latest: newest

                    con.query('select * from courses Order by price desc limit 2', (err, money, field) => {
                        if (err) {
                            console.log('error found');
                        } else {
                            price: money
                            //After successful completion of all 3 queries send data back to cliend(front-end)
                            //its better to create new obj everytime and send it
                            //store all the data in obj and send back to client
                            var obj = {};
                            obj.rated = rating;
                            obj.latest = newest;
                            obj.price = money;
                            console.log(obj);
                            res.render('index', { obj });
                        }
                    })
                }
            })

        }
    })

    //Either above one could be rendered or below one both cannot be rendered. what to do?


})
