const express = require('express');
const router = express.Router();
const ordersController = require('../controllers/OrdersController');

router.get('/',ordersController.show_all);

module.exports = router;