const homeRouter = require('./home');
const foodRouter = require('./food');
const drinkRouter = require('./drink');
const gameRouter = require('./game');
function route(app){
    
    app.use('/food',foodRouter);
    app.use('/drink',drinkRouter);
    app.use('/game',gameRouter);
    app.use('/',homeRouter);
}

module.exports = route;
