const express = require('express');
const router = express.Router();
const foodController = require('../controllers/FoodController');

router.post('/store',foodController.store);
router.get('/:id/orders', foodController.orders);
router.get('/:slug', foodController.show_detail);
router.get('/',foodController.show_all);

module.exports = router;