const express = require('express');
const router = express.Router();
const foodController = require('../controllers/FoodController');

router.get('/title_desc', foodController.title_desc);
router.get('/title_asc', foodController.title_asc);
router.get('/price_desc', foodController.price_desc);
router.get('/price_asc', foodController.price_asc);
router.get('/:slug', foodController.show_detail);
router.get('/',foodController.show_all);

module.exports = router;