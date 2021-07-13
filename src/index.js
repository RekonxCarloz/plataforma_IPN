const express = require('express');
const app = express();
const path = require('path');
const { sequelize } = require('../src/models/index');
const passport = require('passport');
const cookieParser = require('cookie-parser');
const session = require('express-session');
const flash = require('express-flash');
const passportLocal = require('passport-local').Strategy;

// Settings
app.set('port', 8080);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// middlewares
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser('cpsSecret'));
app.use(session({
    secret: 'cpsSecret',
    resave: true,
    saveUninitialized: true
}));

app.use(passport.initialize());
app.use(passport.session());

// routes
app.use(require('./routes/routes'));
app.use(express.static(__dirname + '/public/'));

// Listening server
app.listen(app.get('port'), () => {
    console.log('Server listo', app.get('port'));

    sequelize.sync({ force: false }).then(()=>{
        console.log("Database connection success");
    })

});