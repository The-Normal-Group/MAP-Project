
const Joi = require('joi');

const user = require('../models/Tournaments');

const schema = Joi.object({
    name: Joi.string().min(3).required(),
    skillLevel: Joi.string().min(3).required(),
    prizePool: Joi.number().required(),
    description: Joi.string().min(3).required()
});

module.exports = {

    addTournament: async (req, res) => {

        const result = schema.validate(req.body);
        if (result.error) {
            res.status(400).send(result.error.details[0].message);
            return;
        }

        const newTournament = {
            name: req.body.name,
            skillLevel: req.body.skillLevel,
            prizePool: req.body.prizePool,
            description: req.body.description
        }

        const data = await user.addTournament(newTournament);
        res.send(data);
    }

}