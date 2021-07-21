
const Joi = require('joi');
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');
const auth = require("./authController");

const accessTokenSecret = 'fhsu48iah58iuas272hofaoifs532ilafjioasjiof74574suj';

const userm = require('../models/User');

const schema = Joi.object({
    username: Joi.string().min(3).required(),
    email: Joi.string().min(3).required(),
    password: Joi.string().min(3).required(),
    type: Joi.number().min(0).max(1).required(),
    id: Joi.optional()
});

module.exports = {
    getUser: async (req, res) => {
        const data = await userm.getUser(parseInt(req.params.id));
        if (!data) {
            res.status(404).send('The course with the given ID was not found.');
            return;
        }
        res.send(data);
    },

    getAllUsers: async (req, res) => {
        const data = await userm.getAllUsers();
        res.send(data);
    },


    addUser: async (req, res) => {

        const result = schema.validate(req.body);
        if (result.error) {
            res.status(400).send(result.error.details[0].message);
            return;
        }

        const newUser = {
            username: req.body.username,
            email: req.body.email,
            password: req.body.password,
            type: req.body.type,
            id: null
        }

        const data = await userm.addUser(newUser);
        res.status(201).send(data);
    },

    login: async (req, res) => {
        // Filter user from the users array by username and password
        const username = req.body.username;
        const password = req.body.password;
        const data = await userm.login(username, password);

        console.log(data);

        if (data) {
        // Generate an access token
        const accessToken = jwt.sign({ username: data[0].username,  type: data[0].type }, accessTokenSecret);
        
        var user = data[0];

        res.status(201).json({
            user,
            accessToken
        });
        } else {
            res.send('Username or password incorrect');
        }
    }

}