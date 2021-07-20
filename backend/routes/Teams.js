
const express = require("express");
const router = express.Router();

const controller = require("../controllers/TeamController");
const auth = require("../controllers/authController");


router.post('/', auth.authenticateJWT, controller.addTeam);




module.exports = router;