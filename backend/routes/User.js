// here we have all the routes related to user 



const express = require("express");
const router = express.Router();

const controller = require("../controllers/UserController");

router.get('/', controller.getAllUsers);
router.get('/:id', controller.getUser);
router.post('/', controller.addUser);
// router.put('/:id', controller.addUser);
// router.delete/:id('/', controller.addUser);




module.exports = router;