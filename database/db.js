const { Sequelize, DataTypes } = require('sequelize');
const config = require('../config/database')
const db = {};

db.connection = new Sequelize(config.database, config.username, config.password, config);

// Vinculación de modelos a la base de datos

db.usuario = require('../src/models/Usuarios')(db.connection, DataTypes);
db.datos_dp = require('../src/models/datos_DP')(db.connection, DataTypes);
db.datos_resp = require('../src/models/datos_responsable')(db.connection, DataTypes);
db.info_operativa = require('../src/models/info_operativa')(db.connection, DataTypes);

module.exports = db;