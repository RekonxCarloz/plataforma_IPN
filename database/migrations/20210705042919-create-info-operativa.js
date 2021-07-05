'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('info_operativas', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      id_dependencia: {
        type: Sequelize.INTEGER
      },
      personal_docentes: {
        type: Sequelize.INTEGER
      },
      personal_PAAE: {
        type: Sequelize.INTEGER
      },
      estudiantes: {
        type: Sequelize.INTEGER
      },
      personal_limp_jard: {
        type: Sequelize.INTEGER
      },
      personal_mando: {
        type: Sequelize.INTEGER
      },
      visitantes_por_dia: {
        type: Sequelize.INTEGER
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
    await queryInterface.dropTable('info_operativas');
  }
};