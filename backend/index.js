
const Joi = require('joi'); // for validation
const express = require('express');
const app = express();
app.use(express.json());

const userRoute = require("./routes/User");
app.use('/user', userRoute);

const tournamentRoute = require("./routes/Tournamnets");
app.use('/tournaments', tournamentRoute);

const port = process.env.PORT || 3001;
app.listen(port, () => {
    console.log(`listening on port ${port}...`)
}) // listening at port 3001 
