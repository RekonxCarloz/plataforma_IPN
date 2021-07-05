'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class datos_Responsable extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  datos_Responsable.init({
    id_responsable: DataTypes.INTEGER,
    nombre_responsable: DataTypes.STRING,
    email: DataTypes.STRING,
    extension: DataTypes.INTEGER,
    area_adscripcion: DataTypes.STRING,
    tipo_plaza: DataTypes.STRING,
    funcion: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'datos_Responsable',
  });
  return datos_Responsable;
};