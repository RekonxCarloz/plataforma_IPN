const express = require('express');
const router = express.Router();

// Controllers
const usrcontroller = require('../controllers/usuarioController');





// Inicio
router.get('/inicio', (req, res) =>{
    res.render('index');
});

// About
router.get('/about', (req, res) =>{
    res.render('about');
});

// Diagnóstico Área Institucional de Conservación Ecológica
router.get('/aice', (req, res) =>{
    res.render('aice');
});

// Diagnóstico Agua y Energía  
router.get('/energia', (req, res) =>{
    res.render('energia');
});

router.get('/agua', (req, res) =>{
    res.render('agua');
})

// Contacto
router.get('/contacto', (req, res) =>{
    res.render('contacto');
});

// Datos Responsable
router.get('/infoGeneral', (req, res) =>{
    res.render('infoGeneral');
});

// Informacion operativa
router.get('/infoOperativa', (req, res) =>{
    res.render('infoOperativa');
});

// Login
router.get('/login', (req, res) =>{
    res.render('login');
});

// POST Login
router.post('/login', usrcontroller.signIn);

module.exports = router;