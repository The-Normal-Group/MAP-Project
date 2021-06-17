
const Joi = require('joi');

const user = require('../models/User');

const schema = Joi.object({
    username: Joi.string().min(3).required(),
    email: Joi.string().min(3).required(),
    password: Joi.string().min(3).required(),
    type: Joi.number().min(1).max(1).required()
});

module.exports = {

    addUser : async (req, res) => {
    
    const result = schema.validate(req.body);
    if (result.error){
        res.status(400).send(result.error.details[0].message);
        return;
    }

    const newUser = {
        username: req.body.username,
        email: req.body.email,
        password: req.body.password,
        type: req.body.type
    }

    const data = await user.addUser(newUser);
    res.send(data);
    }

}