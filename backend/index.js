
const Joi = require('joi');
const express = require('express');
const app = express();
app.use(express.json());

const userRoute = require("./routes/User");
app.use('/user', userRoute);

const port = process.env.PORT || 3001;
app.listen(port, () => {
    console.log(`listening on port ${port}...` )
})
