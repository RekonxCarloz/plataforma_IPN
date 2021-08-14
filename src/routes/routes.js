const express = require('express');
const router = express.Router();

// Controllers
const usrcontroller = require('../controllers/usuarioController');
const {isLoggedIn, isNotLoggedIn} = require('../controllers/authCheck');




// Inicio
router.get('/inicio', (req, res) =>{
    res.render('index');
});
router.get('/', (req, res) =>{
    res.render('index');
});

// About
router.get('/about', (req, res) =>{
    res.render('about');
});

// Diagnóstico Área Institucional de Conservación Ecológica
router.get('/aice', isLoggedIn, (req, res) =>{
    res.render('aice');
});

// Diagnóstico Agua y Energía  
router.get('/energia', isLoggedIn, (req, res) =>{
    res.render('energia');
});

router.get('/agua', isLoggedIn, (req, res) =>{
    res.render('agua');
})

// Contacto
router.get('/contacto', (req, res) =>{
    res.render('contacto');
});

// Datos Responsable
router.get('/infoGeneral', isLoggedIn, (req, res) =>{
    res.render('infoGeneral');
});

// Informacion operativa
router.get('/infoOperativa', isLoggedIn, (req, res) =>{
    res.render('infoOperativa');
});

// Login
router.get('/login', isNotLoggedIn, (req, res) =>{
    res.render('login');
});

// LogOut
router.get('/logout', isLoggedIn, (req, res) =>{
    req.logOut();
    res.redirect('inicio');
});

// POST Login
router.post('/login', isNotLoggedIn, usrcontroller.signIn);

module.exports = router;