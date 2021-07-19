'use strict';

const db = require('../models');
const userModel = db.Usuarios;

exports.get = (req, res) =>{
    userModel.findAll({
        raw: true,
    })
    .then( data =>{
        res.status(200).json({
            responseCode: 200,
            responseMessage: "Ok",
            responseData: data,
        });
    })
    .catch(err =>{
        res.status(500).json({
            responseCode: 500,
            responseMessage: "Error",
            responseData: err,
        });
    })
};