const connection = require('../connection_database/connector.js');

class drinkController {
    // [GET] /food
  show_all(req, res, next) {
      let sql = `SELECT * 
                FROM fooddrink fd
                WHERE id_fooddrink < 30001000 AND id_fooddrink > 30000000`;
        show_all(res,sql);
  }

  // [GET] /food/:slug
  show_detail(req, res, next) {
    let sql = `SELECT * 
                FROM fooddrink  
                WHERE id_fooddrink =`+req.params.slug;
    show_detail(res, sql);
  }
}

module.exports = new drinkController;

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