
const Joi = require('joi');

const user = require('../models/Teams');

const schema = Joi.object({
    name: Joi.string().min(3).required(),
    capacity: Joi.number().required(),
    description: Joi.string().min(3).required()
});

module.exports = {

    addTeam: async (req, res) => {

        const result = schema.validate(req.body);
        if (result.error) {
            res.status(400).send(result.error.details[0].message);
            return;
        }

        const newTeam = {
            name: req.body.name,
            capacity: req.body.capacity,
            description: req.body.description
        }

        const data = await user.addTeam(newTeam);
        res.send(data);
    }

}