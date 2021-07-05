'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('datos_Responsables', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      id_responsable: {
        type: Sequelize.INTEGER
      },
      nombre_responsable: {
        type: Sequelize.STRING
      },
      email: {
        type: Sequelize.STRING
      },
      extension: {
        type: Sequelize.INTEGER
      },
      area_adscripcion: {
        type: Sequelize.STRING
      },
      tipo_plaza: {
        type: Sequelize.STRING
      },
      funcion: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('datos_Responsables');
  }
};