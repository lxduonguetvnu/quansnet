const path = require('path');
const express = require('express');
const morgan = require('morgan');
const { engine } = require('express-handlebars');
const mysql = require('mysql');

const app = express();
const port = 3000;
const route = require('./routes');

app.use(express.static(path.join(__dirname,'public')));

app.use(morgan('combined'));

app.use(express.urlencoded({
  extended: true
}));
app.use(express.json());

app.engine(
  'hbs',
  engine({
    extname: '.hbs',
  }),
);
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'resources/views'));

route(app);

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
});