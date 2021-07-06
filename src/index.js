const express = require('express');
const app = express();
const path = require('path');
const { sequelize } = require('../src/models/index');

// Settings
app.set('port', 8080);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// middlewares
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// routes
app.use(require('./routes/routes'));
app.use(express.static(__dirname + '/public/'));

// Listening server
app.listen(app.get('port'), () => {
    console.log('Server listo', app.get('port'));

    sequelize.sync({ force: true }).then(()=>{
        console.log("Database connection success");
    })

});