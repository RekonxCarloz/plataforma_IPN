'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Usuarios', [
      {
      id_usuario: 1,
      nombre: 'CECYT 1 "Gonzalo Vázquez Vela"',
      nombre_corto: 'CECyT 1',
      usuario: 'CECyT1',
      password: 'PS_DP1',
      rol: 1,
      created_At: new Date(),
      updated_At: new Date()
      },
      {
        id_usuario: 2,
        nombre: 'CECYT 2 "Miguel Bernard"',
        nombre_corto: 'CECyT 2',
        usuario: 'CECyT2',
        password: 'PS_DP2',
        rol: 1,
        created_At: new Date(),
        updated_At: new Date()
        }
  ], {});
  },

  down: async (queryInterface, Sequelize) => {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
  }
};
