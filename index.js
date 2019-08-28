const express = require('express');
const app = express();

const port = 8000;

const path = require('path');

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.static("public/images/"));
app.use(express.static("css"));


app.get('/', (req, res) => {

    app.locals.firstParam = "welcome to ejs"
    app.locals.secondParam = ['sam', 'har', 'cool']

    res.render('index')
})


app.listen(port, () => { console.log(`listening to port ${port}!`) })
