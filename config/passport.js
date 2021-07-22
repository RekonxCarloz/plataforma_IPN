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
            console.log("Usuario encontrado");
            if(usuario.password === password){
                console.log("Contraseña encontrada");
                done(null, usuario, req.flash('success', 'Bienvenido '+ usuario));
            }else{
                console.log("Contraseña no encontrada");
                done(null, false, req.flash('success', 'Password no coincide'));
            }
        }else{
            console.log("Usuario no encontrado");
            return done(null, false, req.flash('success', 'El usuario no se encontró'));
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