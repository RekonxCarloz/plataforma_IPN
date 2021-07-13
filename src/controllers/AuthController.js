const { Usuarios } = require ('../models/index'); 
const jwt = require('jsonwebtoken');
const authConfig = require('../../config/auth');

module.exports = {
    // función login
    signIn(req, res){
        let { usuario, password } = req.body;

        Usuarios.findOne({
            where: {
                usuario: usuario
            }
        }).then(usuario => {
            if(!usuario){
                res.status(404).json({ msg: "Usuario inválido" });
            } else{
                if(password.equals(usuario.password)){
                    let token = jwt.sign({ usuario: usuario}, authConfig.secret, {
                        expiresIn: authConfig.expires
                    });

                    res.json({
                        user: user,
                        token: token
                    })
                }else{
                    res.status(401).json({ msg: "Contraseña Inválida" })
                }
            }
        }).catch(err =>{
            res.status(500).json(err);
        })
    }
}