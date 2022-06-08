const express = require('express');
const router = express.Router();
const foodController = require('../controllers/FoodController');

router.get('/:id/neworders',foodController.neworders);
router.post('/:id/order', foodController.order);
router.get('/:slug', foodController.show_detail);
router.get('/',foodController.show_all);

module.exports = router;