class gameController {
    //GET
    index(req, res) {
        res.render('game');
    }
}

module.exports = new gameController;