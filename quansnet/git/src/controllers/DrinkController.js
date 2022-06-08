const { DATETIME, INT24 } = require('mysql/lib/protocol/constants/types');
const connection = require('../connection_database/connector.js');

class foodController {
        // [GET] /food
    show_all(req, res, next) {
        let sql = `SELECT * 
                    FROM fooddrink fd
                    WHERE id_fooddrink > 30000000 AND id_fooddrink < 30001000 `;
            show_all(res,sql);
    }

    // [GET] /food/:slug
    show_detail(req, res, next) {
        let sql = `SELECT * 
                    FROM fooddrink  
                    WHERE id_fooddrink =`+req.params.slug;
        show_detail(res, sql);
    }

    neworders(req, res, next) {
        let sql = `SELECT * 
                FROM fooddrink  
                WHERE id_fooddrink =`+req.params.id;
    neworders(res, sql);
    }

    order(req, res, next) {
        let sql_customers = `SELECT * 
                FROM customers c 
                WHERE 	c.account_player =` + "'"+ req.body.account_player + "'" +
                'AND c.password_player=' + "'"+ req.body.password_player + "'" ;
        connection.query(sql_customers, function (error, results_customers) {
                if (error || results_customers[0] == undefined) {
                    res.render('drink/orderError');
                }
                else {
                    //console.log(results_customers[0]);
                    let sql_fooddrink = `SELECT * 
                                    FROM fooddrink fd
                                     WHERE id_fooddrink =`+ req.params.id ;
                    connection.query(sql_fooddrink, function (error, results_fooddrink) {
                        if (error || results_fooddrink[0] == undefined) {
                            res.render('drink/orderError');
                        }
                        else {
                            //console.log(results_fooddrink[0]);
                            if(results_customers[0].currentBalance > results_fooddrink[0].price){
                                

                                //tạo đơn mới
                                let sql = `SELECT * FROM orders WHERE id_order =(SELECT MAX(id_order) FROM orders)`;
                                connection.query(sql, function (error, newresults){
                                    console.log(newresults);
                                    let newsql = "INSERT INTO orders VALUES ("+(newresults[0].id_order+1) +", " + req.body.id_fooddrink + "," +results_customers[0].id_player + ", "+0+","+ "'"+ req.body.computerNumber + "', "+0+", '" + req.body.note+"')";
                                    console.log(newsql);
                                    connection.query(newsql, function (error, results) {
                                    if (error) {
                                        console.error(error.message);
                                        }
                                        console.log("thêm đơn mới");
                                        //cập nhật tiền

                                        let sql_update='UPDATE customers c  SET c.currentBalance = (SELECT c.currentBalance - fd.price FROM fooddrink fd WHERE fd.id_fooddrink = (SELECT o.id_fooddrink FROM orders o WHERE o.id_order = (SELECT MAX(o.id_order) FROM orders o))) WHERE c.id_player = (SELECT o.id_player FROM orders o WHERE o.id_order = (SELECT MAX(o.id_order) FROM orders o))'
                                        
                                        connection.query(sql_update, function (error, results_update) {
                                            if (error) {
                                                return console.error(error.message);
                                            }
                                        });    
                                        sql_customers = `SELECT * 
                                                        FROM customers c 
                                                         WHERE 	c.id_player =` + results_customers[0].id_player;
                                        connection.query(sql_customers, function (error, results_customer) {
                                            if (error) {
                                                console.error(error.message);
                                            }
                                            else {
                                            sql = `SELECT * 
                                                                FROM orders o
                                                                WHERE o.id_order =` + (newresults[0].id_order+1);
                                            order(res,sql,results_fooddrink[0],results_customer[0]);
                                            }
                                        });

                                    }); 
                                    
                                });    
                            }
                            else{
                                res.render('drink/orderError');
                            }
                        }          
                    });                 
                }
        });
    }
}


module.exports = new foodController;

function show_all(res,sql) {
    connection.query(sql, function (error, results) {
          if (error) {
              return console.error(error.message);
          }
    
          res.render('drink/show_all', { fooddrink: results });
        });
}

function show_detail(res, sql) {
    connection.query(sql, function (error, results) {
        if (error) {
            return console.error(error.message);
        }
    
        console.log(results[0]);
        res.render('drink/show_detail', { fooddrink: results[0] });
    });
}


function neworders(res, sql) {
    connection.query(sql, function (error, results) {
        if (error) {
            return console.error(error.message);
        }
    
        console.log(results[0]);
        res.render('drink/neworders', { fooddrink: results[0] });
    });
}

function order(res,sql,results_fooddrink,results_customers) {
    connection.query(sql, function (error, results) {
          if (error) {
              return console.error(error.message);
          }
    
          res.render('drink/order', {order: results[0], fooddrink: results_fooddrink, customers: results_customers});
        });
}