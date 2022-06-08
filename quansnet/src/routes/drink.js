const express = require('express');
const router = express.Router();

const drinkController = require('../controllers/DrinkController');

router.use('/',drinkController.index);

module.exports = router;