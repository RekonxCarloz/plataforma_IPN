const { usuarios } = require('../models');

exports.NavUsername =(req, res, next)=>{
    var usr = usuarios.findOne({
        usuario: req.body.usuario,
    });
    console.log(usr);
}
