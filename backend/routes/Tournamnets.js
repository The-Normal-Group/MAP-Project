
const express = require("express");
const router = express.Router();

const controller = require("../controllers/TournamentController");
const auth = require("../controllers/authController");

router.post('/', auth.authenticateJWT, controller.addTournament);




module.exports = router;