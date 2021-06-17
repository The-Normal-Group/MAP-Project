const url = 'http://192.168.100.43:3000';
const fetch = require('node-fetch')

module.exports = {
    getUser: async (id) => {
        const res = await fetch(`${url}/users/?id=${id}`);
        const user = await res.json();
        if (user.length == 0) {
            return null;
        }
        return user;
    },

    getAllUsers: async () => {
        const res = await fetch(`${url}/users`);
        const users = await res.json();
        return users;
    },


    addUser: async (user) => {
        const res = await fetch(`${url}/users`, {
            method: 'POST',
            body: JSON.stringify(user),
            headers: { 'Content-Type': 'application/json' }
        })

        const newuser = await res.json();
        return newuser;

    }

}