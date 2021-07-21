
var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "map"
  });

  con.connect();

module.exports = {


    getAllTournaments: async () => {

        return (async () => {
            var sql = `SELECT * FROM tournaments`;
            const result = await getTournaments(sql);
            console.log(result);
            return result;
        })();

        function getTournaments(sql) {
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

    addTournament: async (tournament) => {
        // const res = await fetch(`${url}/tournaments`, {
        //     method: 'POST',
        //     body: JSON.stringify(tournament),
        //     headers: { 'Content-Type': 'application/json' }
        // })

        // const newTournament = await res.json();
        // return newTournament;


        // con.connect(async function (err) {
        //     if (err) throw err;
        //     console.log("Connected!");
        //     var sql = `INSERT INTO tournaments (name, skillLevel, prizePool, description) VALUES ('${tournament.name}', '${tournament.skillLevel}', '${tournament.prizePool}', '${tournament.description}')`;
        //     con.query(sql, async function (err, result) {
        //       if (err) throw err;
        //       tournament.id = await result.insertId;
        //     });
        //   });

          return (async () => {
            var sql = `INSERT INTO tournaments (name, skillLevel, prizePool, description) VALUES ('${tournament.name}', '${tournament.skillLevel}', '${tournament.prizePool}', '${tournament.description}')`;
            const result = await AddTournament(sql);
            console.log(result);
            tournament.id = result;
            return tournament;
        })();

        function AddTournament(sql) {
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