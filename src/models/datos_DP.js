'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class datos_DP extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  datos_DP.init({
    id_dependencia: DataTypes.INTEGER,
    id_responsable: DataTypes.INTEGER,
    nombre: DataTypes.STRING,
    estado: DataTypes.STRING,
    delegacion_Municipio: DataTypes.STRING,
    colonia: DataTypes.STRING,
    calle_numero: DataTypes.STRING,
    codigoPostal: DataTypes.INTEGER
  }, {
    sequelize,
    tableName: 'datos_DP',
  });
  return datos_DP;
};