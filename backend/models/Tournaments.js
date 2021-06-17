const url = 'http://192.168.100.43:3000';
const fetch = require('node-fetch')

module.exports = {

    addTournament: async (tournament) => {
        const res = await fetch(`${url}/tournaments`, {
            method: 'POST',
            body: JSON.stringify(tournament),
            headers: { 'Content-Type': 'application/json' }
        })

        const newTournament = await res.json();
        return newTournament;

    }

}