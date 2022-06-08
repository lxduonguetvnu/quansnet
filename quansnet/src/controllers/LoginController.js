class loginController {
    //GET
    index(req, res) {
        res.render('login');
    }
}

module.exports = new loginController;