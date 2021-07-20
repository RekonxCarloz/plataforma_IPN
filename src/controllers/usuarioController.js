const passport = require ('passport');
const { usuarios } = require('../models');


module.exports = {
    signIn(req, res, next){
        passport.authenticate('local.signin', {
            successRedirect: '/inicio',
            failureRedirect: '/login',
            failureFlash: true
        });
    }
}