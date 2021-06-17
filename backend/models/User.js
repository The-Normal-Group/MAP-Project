const url = 'http://192.168.100.43:3000';
const fetch = require('node-fetch')

module.exports = {

    addUser : async (user) => {
        const res = await fetch(`${url}/users`, {
            method: 'POST',
            body: JSON.stringify(user),
            headers: { 'Content-Type': 'application/json' }
            })

        const newuser = await res.json();
        return newuser;
    
    }

}