const { DATETIME, INT24 } = require('mysql/lib/protocol/constants/types');
const connection = require('../connection_database/connector.js');

class ordersController {
    show_all(req, res, next) {
        let sql = `SELECT * 
                    FROM orders o
                    ORDER BY o.id_order DESC`;
            show_all(res,sql);
    }

}


module.exports = new ordersController;

function show_all(res,sql) {
    connection.query(sql, function (error, results) {
            if (error) {
                return console.error(error.message);
            }
            //console.log(results);
            res.render('orders/show_all', { orders: results });
        }); 
}

