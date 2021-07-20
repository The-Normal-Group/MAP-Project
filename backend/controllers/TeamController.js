
const Joi = require('joi'); 

const user = require('../models/Teams');
const auth = require("./authController");

const schema = Joi.object({
    name: Joi.string().min(3).required(),
    capacity: Joi.number().required(),
    description: Joi.string().min(3).required(),
    id: Joi.optional()
});

module.exports = {

    addTeam: async (req, res) => {

        if(req.user.type!=0){
            res.send(403);
            return
        }

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