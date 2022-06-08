let mysql = require('mysql');
let config = require('./config.js');

let connection = mysql.createConnection(config);

connection.connect(function (err) {
  if (err) {
    return console.error('error: ' + err.message);
  }

  console.log('Connected to the MySQL server.');
});

module.exports = connection;
