'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class info_operativa extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  info_operativa.init({
    id_dependencia: DataTypes.INTEGER,
    personal_docentes: DataTypes.INTEGER,
    personal_PAAE: DataTypes.INTEGER,
    estudiantes: DataTypes.INTEGER,
    personal_limp_jard: DataTypes.INTEGER,
    personal_mando: DataTypes.INTEGER,
    visitantes_por_dia: DataTypes.INTEGER
  }, {
    sequelize,
    tableName: 'info_operativa',
  });
  return info_operativa;
};