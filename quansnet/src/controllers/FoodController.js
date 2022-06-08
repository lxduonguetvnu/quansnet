const connection = require('../connection_database/connector.js');

class foodController {
        // [GET] /food
    show_all(req, res, next) {
        let sql = `SELECT * 
                    FROM fooddrink fd
                    WHERE id_fooddrink > 30001000`;
            show_all(res,sql);
    }

    // [GET] /food/:slug
    show_detail(req, res, next) {
        let sql = `SELECT * 
                    FROM fooddrink  
                    WHERE id_fooddrink =`+req.params.slug;
        show_detail(res, sql);
    }

    orders(req, res, next) {
        let sql = `SELECT * 
                FROM fooddrink  
                WHERE id_fooddrink =`+req.params.id;
    orders(res, sql);
    }

    store(req, res, next) {
        let sql = `SELECT * 
                FROM customers c 
                WHERE 	c.account_player =` + "'"+ req.body.account_player + "'" +
                'AND c.password_player=' + "'"+ req.body.password_player + "'" ;
       
        console.log(req.body.id_fooddrink);
        connection.query(sql, function (error, results) {
                if (error) {
                    return console.error(error.message);
                }
                console.log(results[0]);
                sql = `SELECT * FROM orders WHERE id_order =(SELECT MAX(id_order) FROM orders)`;
                connection.query(sql, function (error, newresults){
                    
                    let newsql = "INSERT INTO orders VALUES ("+(newresults[0].id_order+1) +", " + req.body.id_fooddrink + "," +results[0].id_player + ", "+10+","+ "'"+ req.body.computerNumber + "', "+0+", '" + req.body.note+"')";
                    console.log(newsql);
                    connection.query(newsql, function (error, results) {
                    if (error) {
                    console.error(error.message);
                        }
                        console.log("them dơn mới");
                    });
                
                })
                
            });
            show_detail(res, sql);
    }
}

module.exports = new foodController;

function show_all(res,sql) {
    connection.query(sql, function (error, results) {
          if (error) {
              return console.error(error.message);
          }
    
          res.render('food/show_all', { fooddrink: results });
        });
}


function show_detail(res, sql) {
    connection.query(sql, function (error, results) {
        if (error) {
            return console.error(error.message);
        }
    
        console.log(results[0]);
        res.render('food/show_detail', { fooddrink: results[0] });
    });
}


function orders(res, sql) {
    connection.query(sql, function (error, results) {
        if (error) {
            return console.error(error.message);
        }
    
        console.log(results[0]);
        res.render('food/orders', { fooddrink: results[0] });
    });
}

  