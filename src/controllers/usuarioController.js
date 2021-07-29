const passport = require ('passport');
const session = require('express-session');
const { usuarios } = require('../models');


exports.signIn = (req, res, next) => {
    passport.authenticate('local.signin', {
        successRedirect: '/infoGeneral',
        failureRedirect: '/login',
        failureFlash: true
    })(req, res, next);
};