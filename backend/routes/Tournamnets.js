
const express = require("express");
const router = express.Router();

const controller = require("../controllers/TournamentController");

router.post('/', controller.addTournament);




module.exports = router;