const express = require('express');
const app = express();
const path = require('path');
const sequelize = require('../database/db');

// Settings
app.set('port', 8080);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// middlewares


// routes
app.use(require('./routes/index'));
app.use(express.static(__dirname + '/public/'));

// Listening server
app.listen(app.get('port'), () => {
    console.log('Server listo', app.get('port'));

    // Conexión a base de datos
    sequelize.sync( force = false ).then(() => {
        console.log("Conection Success")
    }).catch(error =>{
        console.log("Error en la base de datos", error);
    })

});