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

app.get('/',(req,res)=> {
    con.query('select * from courses', (err,rows,fields)=> {
        if(err) console.log('error found');
        
        const highest_rated = [];
        for(var item in rows) {
            highest_rated.push(rows[item].rating);
            highest_rated.sort();
            highest_rated.reverse();
            // console.log(rows[item].rating);
        }
        const highest=highest_rated.slice(0,2)
        
        const object = [];

        for(var i in rows ) {
            if(rows[i].rating === highest[0]) {
                object.push(rows[i]);
            }
        }
        const render_object1 = object.slice(0,2);
        console.log(render_object1);

        res.render('index',{render_object1});
    })
})
