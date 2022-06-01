class drinkController {
    //GET
    index(req, res) {
        res.render('drink');
    }
}

module.exports = new drinkController;