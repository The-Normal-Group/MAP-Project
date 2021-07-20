
const Joi = require('joi');

const user = require('../models/Tournaments');
const auth = require("./authController");

const schema = Joi.object({
    name: Joi.string().required(),
    skillLevel: Joi.string().required(),
    prizePool: Joi.number().required(),
    description: Joi.string().required(),
    id: Joi.optional()
});

module.exports = {

    addTournament: async (req, res) => {

        if(req.user.type!=1){
            res.send(403);
            return
        }

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