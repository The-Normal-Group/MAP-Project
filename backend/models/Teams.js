
var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "map"
  });

module.exports = {

    getAllTeams: async () => {

        return (async () => {
            var sql = `SELECT * FROM teams`;
            const result = await getTeams(sql);
            console.log(result);
            return result;
        })();

        function getTeams(sql) {
            return new Promise((resolve, reject) => {
            con.query(
                sql,
                (err, result) => {
                    return err ? reject(err) : resolve(result);
                }
            );
            });
        }


    },

    getTeamsByCreator: async (id) => {

        return (async () => {
            var sql = `SELECT * FROM teams WHERE creator = '${id}'`;
            const result = await getTeams(sql);
            console.log(result);
            return result;
        })();

        function getTeams(sql) {
            return new Promise((resolve, reject) => {
            con.query(
                sql,
                (err, result) => {
                    return err ? reject(err) : resolve(result);
                }
            );
            });
        }


    },

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

    },

    updateTeam: async (team) => {

        return (async () => {
            console.log(team.id)
          var sql = `UPDATE teams set name = '${team.name}', capacity = '${team.capacity}', description = '${team.description}' WHERE id = '${team.id}'`;
          const result = await UpdateTeam(sql);
          console.log(result);
          return team;
      })();

      function UpdateTeam(sql) {
          return new Promise((resolve, reject) => {
          con.query(
              sql,
              (err, result) => {
                  return err ? reject(err) : resolve(result);
              }
          );
          });
      }
  }

}