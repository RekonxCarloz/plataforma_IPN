const { Sequelize, DataTypes } = require('sequelize');
const config = require('../config/database')
const db = {};

db.connection = new Sequelize(config.database, config.username, config.password, config);

// Vinculación de modelos a la base de datos

db.usuario = require('../src/models/Usuarios')(db.connection, DataTypes);

module.exports = db;