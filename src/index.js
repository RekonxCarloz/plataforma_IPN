const express = require('express');
const app = express();
const path = require('path');
const { sequelize } = require('../src/models/index');
const cookieParser = require('cookie-parser');
const session = require('express-session');
const passport = require('passport');
require('../config/passport');
const passportLocal = require('passport-local').Strategy;
const flash = require('connect-flash');

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
app.use(flash());

// Initialize Passport
app.use(passport.initialize());
app.use(passport.session());

// Variables globales
app.use((req, res, next) =>{
    app.locals.success = req.flash('success');
    app.locals.message = req.flash('message');
    app.locals.user = req.usuario;
    next();
});

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