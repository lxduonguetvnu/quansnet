const express = require('express');
const router = express.Router();
const drinkController = require('../controllers/DrinkController');

router.get('/:id/neworders',drinkController.neworders);
router.post('/:id/order', drinkController.order);
router.get('/:slug', drinkController.show_detail);
router.get('/',drinkController.show_all);

module.exports = router;