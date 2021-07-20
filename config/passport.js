const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;

passport.use('local.signin', new LocalStrategy({
    usernameField: 'usuario',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, usuario, password, done) =>{

    console.log(req.body);

}));


//passport.serializeUser((usr, done) =>{

//});