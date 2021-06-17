const url = 'http://192.168.100.43:3000';
const fetch = require('node-fetch')

module.exports = {

    addTeam: async (team) => {
        const res = await fetch(`${url}/teams`, {
            method: 'POST',
            body: JSON.stringify(team),
            headers: { 'Content-Type': 'application/json' }
        })

        const newTeam = await res.json();
        return newTeam;

    }

}