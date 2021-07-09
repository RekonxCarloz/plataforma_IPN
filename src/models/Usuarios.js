'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Usuarios extends Model {
    static associate(models) {
    }
  };
  Usuarios.init({
    id_dependencia: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    nombre: DataTypes.STRING,
    nombreCorto: DataTypes.STRING,
    usuario: DataTypes.STRING,
    password: DataTypes.STRING,
    rol: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'usuarios',
  });
  return Usuarios;
};