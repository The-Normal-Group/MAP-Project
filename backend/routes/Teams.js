
const express = require("express");
const router = express.Router();

const controller = require("../controllers/TeamController");

router.post('/', controller.addTeam);




module.exports = router;