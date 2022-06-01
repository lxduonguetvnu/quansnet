const connection = require('../connection_database/connector.js');

class foodController {
    // [GET] /food
    show_all(req, res, next) {
      let sql = `SELECT * 
                FROM fooddrink fd
                WHERE id_fooddrink > 30001000`;
        show_all(res,sql);
    }

     //[GET] / food/title_desc
  title_desc(req, res, next) {
    let sql = `SELECT * 
              FROM fooddrink fd
              WHERE id_fooddrink > 30001000
              ORDER BY fd.title DESC`;
    show_all(res, sql);
  }

  //[GET] / food/title_asc
  title_asc(req, res, next) {
    let sql = `SELECT * 
              FROM fooddrink fd
              WHERE id_fooddrink > 30001000
              ORDER BY fd.title ASC`;
    show_all(res, sql);
  }

  //[GET] / food/price_desc
  price_desc(req, res, next) {
    let sql = `SELECT * 
              FROM fooddrink fd
              WHERE id_fooddrink > 30001000
              ORDER BY fd.price DESC`;
    show_all(res, sql);
  }

  //[GET] / food/price_asc
  price_asc(req, res, next) {
    let sql = `SELECT * 
              FROM fooddrink fd
              WHERE id_fooddrink > 30001000
              ORDER BY fd.price ASC`;
    show_all(res, sql);
  }

  // [GET] /food/:slug
  show_detail(req, res, next) {
    let sql = `SELECT * 
                FROM fooddrink  
                WHERE id_fooddrink =`+req.params.slug;
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
    
        res.render('food/show_detail', { fooddrink: results[0] });
    });
}