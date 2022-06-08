const homeRouter = require('./home');
const foodRouter = require('./food');
const drinkRouter = require('./drink');
const gameRouter = require('./game');
const loginRouter = require('./login');
const ordersRouter = require('./orders');

function route(app){
    
    app.use('/orders',ordersRouter);
    app.use('/food',foodRouter);
    app.use('/drink',drinkRouter);
    app.use('/game',gameRouter);
    app.use('/login',loginRouter);
    app.use('/',homeRouter);
}

module.exports = route;
