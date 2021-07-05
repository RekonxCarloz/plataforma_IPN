const express = require('express');
const router = express.Router();

// Inicio
router.get('/', (req, res) =>{
    res.render('index');
});

// About
router.get('/about', (req, res) =>{
    res.render('about.pug');
});

// Diagnóstico Área Institucional de Conservación Ecológica
router.get('/aice', (req, res) =>{
    res.render('aice.pug');
});

// Diagnóstico Agua y Energía  
router.get('/energia', (req, res) =>{
    res.render('energia.pug');
});

router.get('/agua', (req, res) =>{
    res.render('agua.pug');
})

// Contacto
router.get('/contacto', (req, res) =>{
    res.render('contacto.pug');
});

// Datos Responsable
router.get('/infoGeneral', (req, res) =>{
    res.render('infoGeneral.pug');
});

// Informacion operativa
router.get('/infoOperativa', (req, res) =>{
    res.render('infoOperativa.pug');
});

// Login
router.get('/login', (req, res) =>{
    res.render('login.pug');
});

module.exports = router;