const express = require('express');
const router = express.Router();

const gameController = require('../controllers/gameController');

router.use('/',gameController.index);

module.exports = router;