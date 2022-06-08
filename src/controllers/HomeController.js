class homeController {
    //GET
    index(req, res) {
        res.render('home');
    }
}

module.exports = new homeController;