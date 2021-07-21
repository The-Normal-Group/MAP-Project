
var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "map"
  });

module.exports = {

    addTeam: async (team) => {

        // con.connect(async function (err) {
        //     if (err) throw err;
        //     console.log("Connected!");
        //     var sql = `INSERT INTO teams (name, capacity, description) VALUES ('${team.name}', '${team.capacity}', '${team.description}')`;
        //     con.query(sql, async function (err, result) {
        //       if (err) throw err;
        //       team.id = await result.insertId;
        //     });
        //   });
        
        return (async () => {
            var sql = `INSERT INTO teams (name, capacity, description) VALUES ('${team.name}', '${team.capacity}', '${team.description}')`;
            const result = await AddTeam(sql);
            console.log(result);
            team.id = result;
            return team;
        })();

        function AddTeam(sql) {
            return new Promise((resolve, reject) => {
            con.query(
                sql,
                (err, result) => {
                    return err ? reject(err) : resolve(result.insertId);
                }
            );
            });
        }

    }

}