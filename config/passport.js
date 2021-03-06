const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const { usuarios } = require('../src/models');

passport.use('local.signin', new LocalStrategy({
    usernameField: 'usuario',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, usuario, password, done) =>{
    await usuarios.findOne({
        where: {
            usuario: usuario
        }
    }).then(function(usuario){
        if(usuario){
            if(usuario.password === password){
                done(null, usuario, req.flash('success', 'Bienvenido '+ usuario.nombreCorto));
            }else{
                done(null, false, req.flash('message', 'Usuario o Contraseña incorrectos'));
                console.log(req.flash('message'));
            }
        }else{
            console.log(req.flash('message'));
            return done(null, false, req.flash('message', 'Usuario o Contraseña incorrectos'));
        }
    })
}));


//serialize
passport.serializeUser((usuario, done)=>{
    done(null, usuario.id_usuario);
});

// deserialize user 
passport.deserializeUser(async (id, done)=>{
    await usuarios.findOne({
        where: {
            id_usuario: id
        }
    })
    done(null, id);
});