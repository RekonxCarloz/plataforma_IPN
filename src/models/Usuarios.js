'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Usuarios extends Model {
    static associate(models) {
      Usuarios.hasOne(models.datos_DP, { as: "datosDP", foreignKey: "id_dependencia"});
      models.datos_DP.belongsTo(Usuarios, { as: "datosDP", foreignKey: "id_dependencia"});
      Usuarios.hasOne(models.info_operativa, { as: "datosOp", foreignKey: "id_dependencia"});
      models.datos_DP.belongsTo(Usuarios, { as: "datosOp", foreignKey: "id_dependencia"});
    
    }
  };
  Usuarios.init({
    id_usuario: {
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