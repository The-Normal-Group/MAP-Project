
const Joi = require('joi'); 

const model = require('../models/Teams');
const auth = require("./authController");

const schema = Joi.object({
    name: Joi.string().required(),
    capacity: Joi.number().required(),
    description: Joi.string().required(),
    id: Joi.optional()
});

module.exports = {

    addTeam: async (req, res) => {

        if(req.user.type!=0){
            res.sendStatus(403);
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
            description: req.body.description,
            creator: req.user.id
        }

        const data = await model.addTeam(newTeam);
        console.log(data);
        res.send(data);
    },

    getAllTeams: async (req, res) => {
        const data = await model.getAllTeams();
        res.send(data);
    },

    getTeamsByCreator: async (req, res) => {
        var creatorId = req.params.id;
        const data = await model.getTeamsByCreator(creatorId);
        res.send(data);
    },

    updateTeam: async (req, res) => {

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
            id: req.body.id,
            name: req.body.name,
            capacity: req.body.capacity,
            description: req.body.description,
            creator: req.user.id
        }

        const data = await model.updateTeam(newTeam);
        res.send(data);
    },

}