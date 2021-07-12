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
      datos_Responsable.hasMany(models.datos_DP, { as: "datosResp", foreignKey: "id_responsable" });
      models.datos_DP.belongsTo(datos_Responsable, {foreignKey: "id_responsable"});
    }
  };
  datos_Responsable.init({
    id_responsable: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nombre_responsable: DataTypes.STRING,
    email: DataTypes.STRING,
    extension: DataTypes.INTEGER,
    area_adscripcion: DataTypes.STRING,
    tipo_plaza: DataTypes.STRING,
    funcion: DataTypes.STRING
  }, {
    sequelize,
    tableName: 'datos_responsable',
  });
  return datos_Responsable;
};