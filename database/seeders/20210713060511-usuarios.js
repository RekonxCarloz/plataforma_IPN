'use strict';

module.exports = {
  // Se ejecuta cuando se hace el seed
  up: async (queryInterface, Sequelize) => {

    let users = 
    [
      
      // COMITÉS MEDIA SUPERIOR

      { id_usuario: 1, nombre: 'Centro de Estudios Científicos y Tecnológicos 1 "Gonzalo Vázquez Vela"', nombre_corto: 'CECyT 1', usuario: 'CECyT1', password: 'PS_DP1', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 2, nombre: 'Centro de Estudios Científicos y Tecnológicos 2 "Miguel Bernard"', nombre_corto: 'CECyT 2', usuario: 'CECyT2', password: 'PS_DP2', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 3, nombre: 'Centro de Estudios Científicos y Tecnológicos 3 "Estanislao Ramírez Ruíz"', nombre_corto: 'CECyT 3', usuario: 'CECyT3', password: 'PS_DP3', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 4, nombre: 'Centro de Estudios Científicos y Tecnológicos 4 "Lázaro Cárdenas"', nombre_corto: 'CECyT 4', usuario: 'CECyT4', password: 'PS_DP4', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 5, nombre: 'Centro de Estudios Científicos y Tecnológicos 5 "Benito Juárez"', nombre_corto: 'CECyT 5', usuario: 'CECyT5', password: 'PS_DP5', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 6, nombre: 'Centro de Estudios Científicos y Tecnológicos 6 "Miguel Othón de Mendizábal"', nombre_corto: 'CECyT 6', usuario: 'CECyT6', password: 'PS_DP6', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 7, nombre: 'Centro de Estudios Científicos y Tecnológicos 7 "Cuauhtémoc"', nombre_corto: 'CECyT 7', usuario: 'CECyT7', password: 'PS_DP7', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 8, nombre: 'Centro de Estudios Científicos y Tecnológicos 8 "Narciso Bassols"', nombre_corto: 'CECyT 8', usuario: 'CECyT8', password: 'PS_DP8', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 9, nombre: 'Centro de Estudios Científicos y Tecnológicos 9 "Juan de Dios Bátiz"', nombre_corto: 'CECyT 9', usuario: 'CECyT9', password: 'PS_DP9', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 10, nombre: 'Centro de Estudios Científicos y Tecnológicos 10 "Carlos Vallejo Márquez"', nombre_corto: 'CECyT 10', usuario: 'CECyT10', password: 'PS_DP10', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 11, nombre: 'Centro de Estudios Científicos y Tecnológicos 11 "Wilfrido Massieu"', nombre_corto: 'CECyT 11', usuario: 'CECyT11', password: 'PS_DP11', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 12, nombre: 'Centro de Estudios Científicos y Tecnológicos 12 "José Ma. Morelos y Pavón"', nombre_corto: 'CECyT 12', usuario: 'CECyT12', password: 'PS_DP12', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 13, nombre: 'Centro de Estudios Científicos y Tecnológicos 13 "Ricardo Flores Magón"', nombre_corto: 'CECyT 13', usuario: 'CECyT13', password: 'PS_DP13', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 14, nombre: 'Centro de Estudios Científicos y Tecnológicos 14 "Luis Enrique Erro"', nombre_corto: 'CECyT 14', usuario: 'CECyT14', password: 'PS_DP14', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 15, nombre: 'Centro de Estudios Científicos y Tecnológicos 15 "Diódoro Antúnez Echegaray"', nombre_corto: 'CECyT 15', usuario: 'CECyT15', password: 'PS_DP15', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 16, nombre: 'Centro de Estudios Científicos y Tecnológicos 16 "Hidalgo"', nombre_corto: 'CECyT 16', usuario: 'CECyT16', password: 'PS_DP16', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 17, nombre: 'Centro de Estudios Científicos y Tecnológicos 17 "León Guanajuato"', nombre_corto: 'CECyT 17', usuario: 'CECyT17', password: 'PS_DP17', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 18, nombre: 'Centro de Estudios Científicos y Tecnológicos 18 "Zacatecas"', nombre_corto: 'CECyT 18', usuario: 'CECyT18', password: 'PS_DP18', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 19, nombre: 'Centro de Estudios Científicos y Tecnológicos 19 "Leona Vicario" Tecámac"', nombre_corto: 'CECyT 19', usuario: 'CECyT19', password: 'PS_DP19', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 20, nombre: 'CET 1 "Walter Cross Buchanan"', nombre_corto: 'CET 1', usuario: 'CET1', password: 'PS_DP20', rol: 1, created_At: new Date(), updated_At: new Date() },
      
      // COMITÉS SUPERIOR
      
      { id_usuario: 21, nombre: 'Escuela Superior de Ingeniería Mecánica y Eléctrica, Unidad Zacatenco', nombre_corto: 'ESIME ZAC', usuario: 'ESIMEZAC', password: 'PS_DP21', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 22, nombre: 'Escuela Superior de Ingeniería Mecánica y Eléctrica, Unidad Culhuacán', nombre_corto: 'ESIME CUL', usuario: 'ESIMECUL', password: 'PS_DP22', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 23, nombre: 'Escuela Superior de Ingeniería Mecánica y Eléctrica, Unidad Azcapotzalco', nombre_corto: 'ESIME AZC', usuario: 'ESIMEAZC', password: 'PS_DP23', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 24, nombre: 'Escuela Superior de Ingeniería Mecánica y Eléctrica, Unidad Ticomán', nombre_corto: 'ESIME TIC', usuario: 'ESIMETIC', password: 'PS_DP24', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 25, nombre: 'Escuela Superior de Ingeniería y Arquitectura, Unidad Zacatenco', nombre_corto: 'ESIA ZAC', usuario: 'ESIAZAC', password: 'PS_DP25', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 26, nombre: 'Escuela Superior de Ingeniería y Arquitectura, Unidad Tecamachalco', nombre_corto: 'ESIA TEC', usuario: 'ESIATEC', password: 'PS_DP26', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 27, nombre: 'Escuela Superior de Ingeniería y Arquitectura, Unidad Ticomán', nombre_corto: 'ESIA TIC', usuario: 'ESIATIC', password: 'PS_DP27', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 28, nombre: 'Escuela Superior de Ingeniería Textil', nombre_corto: 'ESIT', usuario: 'ESIT', password: 'PS_DP28', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 29, nombre: 'Escuela Superior de Ingeniería Química e Industrias Extractivas', nombre_corto: 'ESIQIE', usuario: 'ESIQIE', password: 'PS_DP29', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 30, nombre: 'Escuela Superior de Física y Matemáticas', nombre_corto: 'ESFM', usuario: 'ESFM', password: 'PS_DP30', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 31, nombre: 'Escuela Superior de Cómputo', nombre_corto: 'ESCOM', usuario: 'ESCOM', password: 'PS_DP31', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 32, nombre: 'Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas', nombre_corto: 'UPIICSA', usuario: 'UPIICSA', password: 'PS_DP32', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 33, nombre: 'Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas', nombre_corto: 'UPIITA', usuario: 'UPIITA', password: 'PS_DP33', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 34, nombre: 'Unidad Profesional Interdisciplinaria de Biotecnología', nombre_corto: 'UPIBI', usuario: 'UPIBI', password: 'PS_DP34', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 35, nombre: 'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Guanajuato', nombre_corto: 'UPIIG', usuario: 'UPIIG', password: 'PS_DP35', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 36, nombre: 'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Zacatecas', nombre_corto: 'UPIIZ', usuario: 'UPIIZ', password: 'PS_DP36', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 37, nombre: 'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Hidalgo', nombre_corto: 'UPIIH', usuario: 'UPIIH', password: 'PS_DP37', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 38, nombre: 'Uni​dad Profesional Interdisciplinaria de Ingeniería, Campus Coahuila', nombre_corto: 'UPIIC', usuario: 'UPIIC', password: 'PS_DP38', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 39, nombre: 'Unidad Profesional Interdisciplinaria en Energía y Movilidad', nombre_corto: 'UPIEM', usuario: 'UPIEM', password: 'PS_DP39', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 40, nombre: 'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Palenque', nombre_corto: 'UPIIP', usuario: 'UPIIP', password: 'PS_DP40', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 41, nombre: 'Escuela Nacional de Ciencias Biológicas', nombre_corto: 'ENCB', usuario: 'ENCB', password: 'PS_DP41', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 42, nombre: 'Escuela Superior de Medicina', nombre_corto: 'ESM', usuario: 'ESM', password: 'PS_DP42', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 43, nombre: 'Escuela Nacional de Medicina y Homeopatía', nombre_corto: 'ENMH', usuario: 'ENMH', password: 'PS_DP43', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 44, nombre: 'Escuela Superior de Enfermería y Obstetricia', nombre_corto: 'ESEO', usuario: 'ESEO', password: 'PS_DP44', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 45, nombre: 'Centro Interdisciplinario de Ciencias de la Salud, Unidad Milpa Alta', nombre_corto: 'CICS MA', usuario: 'CICSMA', password: 'PS_DP45', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 46, nombre: 'Centro Interdisciplinario de Ciencias de la Salud, Unidad Santo Tomás', nombre_corto: 'CICS ST', usuario: 'CICSST', password: 'PS_DP46', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 47, nombre: 'Escuela Superior de Comercio y Administración, Unidad Santo Tomás', nombre_corto: 'ESCA ST', usuario: 'ESCAST', password: 'PS_DP47', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 48, nombre: 'Escuela Superior de Comercio y Administración, Unidad Tepepan', nombre_corto: 'ESCA TEP', usuario: 'ESCATEP', password: 'PS_DP48', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 49, nombre: 'Escuela Superior de Economía', nombre_corto: 'ESE', usuario: 'ESE', password: 'PS_DP49', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 50, nombre: 'Escuela Superior de Turismo', nombre_corto: 'EST', usuario: 'EST', password: 'PS_DP50', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 51, nombre: 'Escuela Nacional de Biblioteconomía y Archivonomía', nombre_corto: 'ENBA', usuario: 'ENBA', password: 'PS_DP51', rol: 1, created_At: new Date(), updated_At: new Date() },
      
      // COMITÉS CENTROS DE INVESTIGACIÓN
      
      { id_usuario: 52, nombre: 'Centro de Desarrollo de Productos Bióticos', nombre_corto: 'CEPROBI', usuario: 'CEPROBI', password: 'PS_DP52', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 53, nombre: 'Centro Interdisciplinario de Ciencias Marinas', nombre_corto: 'CICIMAR', usuario: 'CICIMAR', password: 'PS_DP53', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 54, nombre: 'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional, Unidad Durango', nombre_corto: 'CIIDIR DUR', usuario: 'CIIDIR-DUR', password: 'PS_DP54', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 55, nombre: 'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional, Unidad Michoacán', nombre_corto: 'CIIDIR MICH', usuario: 'CIIDIR-MICH', password: 'PS_DP55', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 56, nombre: 'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional, Unidad Oaxaca', nombre_corto: 'CIIDIR OAX', usuario: 'CIIDIR-OAX', password: 'PS_DP56', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 57, nombre: 'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional, Unidad Sinaloa', nombre_corto: 'CIIDIR SIN', usuario: 'CIIDIR-SIN', password: 'PS_DP57', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 58, nombre: 'Centro Interdisciplinario de Investigaciones y Estudios sobre Medio Ambiente y Desarrollo', nombre_corto: 'CIIEMAD', usuario: 'CIIEMAD', password: 'PS_DP58', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 59, nombre: 'Centro de Investigación en Computación', nombre_corto: 'CIC', usuario: 'CIC', password: 'PS_DP59', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 60, nombre: 'Centro de Investigaciones Económicas, Administrativas y Sociales', nombre_corto: 'CIECAS', usuario: 'CIECAS', password: 'PS_DP60', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 61, nombre: 'Centro de Biotecnología Genómica', nombre_corto: 'CBG', usuario: 'CBG', password: 'PS_DP61', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 62, nombre: 'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada, Unidad Legaria', nombre_corto: 'CICATA LEG', usuario: 'CICATA-LEG', password: 'PS_DP62', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 63, nombre: 'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada, Unidad Querétaro', nombre_corto: 'CICATA QRO', usuario: 'CICATA-QRO', password: 'PS_DP63', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 64, nombre: 'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada, Unidad Altamira', nombre_corto: 'CICATA ALT', usuario: 'CICATA-ALT', password: 'PS_DP64', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 65, nombre: 'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada, Unidad Morelos', nombre_corto: 'CICATA MOR', usuario: 'CICATA-MOR', password: 'PS_DP65', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 66, nombre: 'Centro de Investigación en Biotecnología Aplicada', nombre_corto: 'CIBA', usuario: 'CIBA', password: 'PS_DP66', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 67, nombre: 'Centro de Investigación y Desarrollo de Tecnología Digital', nombre_corto: 'CITEDI', usuario: 'CITEDI', password: 'PS_DP67', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 68, nombre: 'Centro de Innovación y Desarrollo Tecnológico en Cómputo', nombre_corto: 'CIDETEC', usuario: 'CIDETEC', password: 'PS_DP68', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 69, nombre: 'Centro de Investigación e Innovación Tecnológica', nombre_corto: 'CIITEC', usuario: 'CIITEC', password: 'PS_DP69', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 70, nombre: 'Centro Mexicano para la Producción más Limpia', nombre_corto: 'CMP+L', usuario: 'CMP+L', password: 'PS_DP70', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 71, nombre: 'Centro de Desarrollo Aeroespacial', nombre_corto: 'CDA', usuario: 'CDA', password: 'PS_DP71', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 72, nombre: 'Centro Mexicano para la Producción más Limpia', nombre_corto: 'CRP+L', usuario: 'CRP+L', password: 'PS_DP72', rol: 1, created_At: new Date(), updated_At: new Date() },
      
      // COMITÉS Centros de Vinculación y Desarrollo Regional
      
      { id_usuario: 73, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Cajeme Sonora', nombre_corto: 'CVDR Cajeme Son', usuario: 'CVDR-CAJ', password: 'PS_DP73', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 74, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Campeche', nombre_corto: 'CVDR Campeche', usuario: 'CVDR-CAM', password: 'PS_DP74', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 75, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Cancún', nombre_corto: 'CVDR Cancún', usuario: 'CVDR-CAN', password: 'PS_DP75', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 76, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Culiacán', nombre_corto: 'CVDR Culiacán', usuario: 'CVDR-CUL', password: 'PS_DP76', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 77, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Durango', nombre_corto: 'CVDR Durango', usuario: 'CVDR-DUR', password: 'PS_DP77', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 78, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Los Mochis', nombre_corto: 'CVDR Los Mochis', usuario: 'CVDR-LM', password: 'PS_DP78', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 79, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Mazatlán', nombre_corto: 'CVDR Mazatlán', usuario: 'CVDR-MAZ', password: 'PS_DP79', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 80, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Morelia', nombre_corto: 'CVDR Morelia', usuario: 'CVDR-MOR', password: 'PS_DP80', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 81, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Oaxaca', nombre_corto: 'CVDR Oaxaca', usuario: 'CVDR-OAX', password: 'PS_DP81', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 82, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Tampico', nombre_corto: 'CVDR Tampico', usuario: 'CVDR-TAM', password: 'PS_DP82', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 83, nombre: 'Centro de Vinculación y Desarrollo Regional, Unidad Tijuana', nombre_corto: 'CVDR Tijuana', usuario: 'CVDR-TIJ', password: 'PS_DP83', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 84, nombre: 'Centro de Innovación e Integración de Tecnología Avanzada, Unidad Chihuahua', nombre_corto: 'CIITA Chihuahua', usuario: 'CIITA-CH', password: 'PS_DP84', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 85, nombre: 'Centro de Innovación e Integración de Tecnología Avanzada, Unidad Veracruz', nombre_corto: 'CIITA Veracruz', usuario: 'CIITA-VER', password: 'PS_DP85', rol: 1, created_At: new Date(), updated_At: new Date() },
      
      // COMITÉS Unidades de apoyo Académico
      
      { id_usuario: 86, nombre: 'Dirección de Difusión de Ciencia y Tecnología', nombre_corto: 'DDCyT', usuario: 'DDCyT', password: 'PS_DP86', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 87, nombre: 'Centro de Lenguas Extranjeras, Unidad Zacatenco', nombre_corto: 'CENLEX Zacatenco', usuario: 'CENLEX-ZAC', password: 'PS_DP87', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 88, nombre: 'Centro de Lenguas Extranjeras, Unidad Santo Tomás', nombre_corto: 'CENLEX Santo Tomás', usuario: 'CENLEX-STO', password: 'PS_DP88', rol: 1, created_At: new Date(), updated_At: new Date() },
      
      // COMITÉS OTRAS DEPENDENCIAS POLITÉCNICAS
      
      { id_usuario: 89, nombre: 'Dirección General', nombre_corto: 'Dir. General', usuario: 'DG', password: 'PS_DP89', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 90, nombre: 'Secretaría General', nombre_corto: 'SEC-GRAL', usuario: 'SEC-GRAL', password: 'PS_DP90', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 91, nombre: 'Oficina del Abogado General', nombre_corto: 'OAG', usuario: 'OAG', password: 'PS_DP91', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 92, nombre: 'Centro Nacional de Calculo', nombre_corto: 'CENAC', usuario: 'CENAC', password: 'PS_DP92', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 93, nombre: 'Dirección de Cómputo y Comunicaciones', nombre_corto: 'DCyC', usuario: 'DCyC', password: 'PS_DP93', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 94, nombre: 'Secetraría Académica', nombre_corto: 'Sec. Académica', usuario: 'S-ACAD', password: 'PS_DP94', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 95, nombre: 'Dirección de Educación Superior', nombre_corto: 'DES', usuario: 'DES', password: 'PS_DP95', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 96, nombre: 'Dirección de Educación Media Superior', nombre_corto: 'DEMS', usuario: 'DEMS', password: 'PS_DP96', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 97, nombre: 'Dirección de Formación en Lenguas Extranjeras', nombre_corto: 'DFLE', usuario: 'DFLE', password: 'PS_DP97', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 98, nombre: 'Secretaría de Investigación y Posgrado', nombre_corto: 'SIP', usuario: 'SIP', password: 'PS_DP98', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 99, nombre: 'Dirección de Investigación', nombre_corto: 'DINV', usuario: 'DINV', password: 'PS_DP99', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 100, nombre: 'Dirección de Posgrado', nombre_corto: 'DirPos', usuario: 'DIRPOS', password: 'PS_DP100', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 101, nombre: 'Secretaría de Innovación e Integración Social', nombre_corto: 'SIIS', usuario: 'SIIS', password: 'PS_DP101', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 102, nombre: 'Dirección de Vinculación y Desarrollo Regional', nombre_corto: 'DVDR', usuario: 'DVDR', password: 'PS_DP102', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 103, nombre: 'Dirección de Egresados y Servicio Social', nombre_corto: 'DESS', usuario: 'DESS', password: 'PS_DP103', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 104, nombre: 'Coordinación General de Planeación e Información Institucional', nombre_corto: 'CGPII', usuario: 'CGPII', password: 'PS_DP104', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 105, nombre: 'Secretaría de Servicios Educativos', nombre_corto: 'SSE', usuario: 'SSE', password: 'PS_DP105', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 106, nombre: 'Dirección de Planeación', nombre_corto: 'DirPlan', usuario: 'DIR-PLAN', password: 'PS_DP106', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 107, nombre: 'Dirección de Evaluación', nombre_corto: 'DirEv', usuario: 'DIR-EV', password: 'PS_DP107', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 108, nombre: 'Oficina del Abogado General (Dirección de Normatividad)', nombre_corto: 'OAG', usuario: 'OAG', password: 'PS_DP108', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 109, nombre: 'Organo Interno de Control', nombre_corto: 'OIC', usuario: 'OIC', password: 'PS_DP109', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 110, nombre: 'Secretaría de Administración', nombre_corto: 'SecAdmin', usuario: 'SEC-ADMIN', password: 'PS_DP110', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 111, nombre: 'Dirección de Recursos Materiales', nombre_corto: 'DRM', usuario: 'DRM', password: 'PS_DP111', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 112, nombre: 'Dirección de Capital Humano', nombre_corto: 'DCH', usuario: 'DCH', password: 'PS_DP112', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 113, nombre: 'Dirección de Recursos Financieros', nombre_corto: 'DRF', usuario: 'DRF', password: 'PS_DP113', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 114, nombre: 'Edificio ARC', nombre_corto: 'Edif-ARC', usuario: 'E-ARC', password: 'PS_DP114', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 115, nombre: 'Dirección de Formación e Innovacion Educativa', nombre_corto: 'DFIE', usuario: 'DFIE', password: 'PS_DP115', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 116, nombre: 'Dirección de Eduación Virtual', nombre_corto: 'DEV', usuario: 'DEV', password: 'PS_DP116', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 117, nombre: 'Dirección de Servicios Empresariales y Transferencia Tecnológica', nombre_corto: 'DSETT', usuario: 'DSETT', password: 'PS_DP117', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 118, nombre: 'Tecnópoli', nombre_corto: 'Tecnópoli', usuario: 'TECNOPOLI', password: 'PS_DP118', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 119, nombre: 'Dirección de Bibiotecas y Publicaciones (BNCT y CENTRO)', nombre_corto: 'DByP', usuario: 'DByP', password: 'PS_DP119', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 120, nombre: 'Dirección de Administración Escolar ', nombre_corto: 'DAE', usuario: 'DAE', password: 'PS_DP120', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 121, nombre: 'División de Infraestructura Física', nombre_corto: 'DIF', usuario: 'DIF', password: 'PS_DP121', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 122, nombre: 'Dirección de Actividades Deportivas', nombre_corto: 'DAD', usuario: 'DAD', password: 'PS_DP122', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 123, nombre: 'Dirección de Difusión Cultural', nombre_corto: 'DDC', usuario: 'DDC', password: 'PS_DP123', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 124, nombre: 'Dirección de Servicios Generales', nombre_corto: 'DSG', usuario: 'DSG', password: 'PS_DP124', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 125, nombre: 'Comisión de Operación y Fomento de Actividades Académicas', nombre_corto: 'COFAA', usuario: 'COFAA', password: 'PS_DP125', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 126, nombre: 'Decanato', nombre_corto: 'Decanato', usuario: 'DECANATO', password: 'PS_DP126', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 127, nombre: 'Coordinación de Centros de Desarrollo Infantil', nombre_corto: 'CCDI', usuario: 'CCDI', password: 'PS_DP127', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 128, nombre: 'Centro de Desarrollo Infantil “Amalia Solórzano de Cárdenas”', nombre_corto: 'CDI-ASC', usuario: 'CDI-ASC', password: 'PS_DP128', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 129, nombre: 'Centro de Desarrollo Infantil “Clementina Batalla de Bassols”', nombre_corto: 'CDI-CBB', usuario: 'CDI-CBB', password: 'PS_DP129', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 130, nombre: 'Centro de Desarrollo Infantil “Eva Sámano de López Mateos”', nombre_corto: 'CDI-ESLP', usuario: 'CDI-ESLP', password: 'PS_DP130', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 131, nombre: 'Centro de Desarrollo Infantil “Laura Pérez de Bátiz"', nombre_corto: 'CDI-LPB', usuario: 'CDI-LPB', password: 'PS_DP131', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 132, nombre: 'Centro de Desarrollo Infantil “Margarita Salazar de Erro”', nombre_corto: 'CDI-MSE', usuario: 'CDI-MSE', password: 'PS_DP132', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 133, nombre: 'Dirección de Incubación de Empresas Tecnológicas', nombre_corto: 'DIET', usuario: 'DIET', password: 'PS_DP133', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 134, nombre: 'C Memorial EMD', nombre_corto: 'C-MEMORIAL', usuario: 'C-MEMORIAL', password: 'PS_DP134', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 135, nombre: 'Centro de Nanociencias y Micro y Nanotecnologías', nombre_corto: 'NANOCENTRO', usuario: 'NANOCENTRO', password: 'PS_DP135', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 136, nombre: 'Canal 11', nombre_corto: 'Canal-11', usuario: 'CANAL11', password: 'PS_DP136', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 137, nombre: 'Patronato de Obras e Instalaciones', nombre_corto: 'POI', usuario: 'POI', password: 'PS_DP137', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 138, nombre: 'Centro de Apoyo Polifuncional, Unidad Santo Tomás', nombre_corto: 'CAP-ST', usuario: 'CAP-ST', password: 'PS_DP138', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 139, nombre: 'Centro de Apoyo Polifuncional, Unidad Zacatenco', nombre_corto: 'CAP-ZAC', usuario: 'CAP-ZAC', password: 'PS_DP139', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 140, nombre: 'Centros de Apoyo para Estudiantes "Alejandro Guillot Schiaffino"', nombre_corto: 'CAE-AGS', usuario: 'CAE-AGS', password: 'PS_DP140', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 141, nombre: 'Centros de Apoyo para Estudiantes "Carlos Vallejo Márquez"', nombre_corto: 'CAE-CVM', usuario: 'CAE-CVM', password: 'PS_DP141', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 142, nombre: 'Centros de Apoyo para Estudiantes "Francisco Plata Limón"', nombre_corto: 'CAE-FPL', usuario: 'CAE-FPL', password: 'PS_DP142', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 143, nombre: 'Centros de Apoyo para Estudiantes "Guillermo Massieu Helguera"', nombre_corto: 'CAE-GMH', usuario: 'CAE-GMH', password: 'PS_DP143', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 144, nombre: 'Centros de Apoyo para Estudiantes "José Gómez Tagle Martínez"', nombre_corto: 'CAE-JGTM', usuario: 'CAE-JGTM', password: 'PS_DP144', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 145, nombre: 'Centros de Apoyo para Estudiantes "Juan O´Gorman"', nombre_corto: 'CAE-JOG', usuario: 'CAE-JOG', password: 'PS_DP145', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 146, nombre: 'Centros de Apoyo para Estudiantes "Ma. Luisa Prado de Mayagoitia"', nombre_corto: 'CAE-MaLP', usuario: 'CAE-MALP', password: 'PS_DP146', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 147, nombre: 'Centros de Apoyo para Estudiantes "Manuel Cerrillo Valdivia"', nombre_corto: 'CAE-MCV', usuario: 'CAE-MCV', password: 'PS_DP147', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 148, nombre: 'Centros de Apoyo para Estudiantes "Manuel L. Stampa Ortigoza"', nombre_corto: 'CAE-MLSO', usuario: 'CAE-MLSO', password: 'PS_DP148', rol: 1, created_At: new Date(), updated_At: new Date() },
      { id_usuario: 149, nombre: 'Centros de Apoyo para Estudiantes "Carlos Casas Campillo"', nombre_corto: 'CAE-CCC', usuario: 'CAE-CCC', password: 'PS_DP149', rol: 1, created_At: new Date(), updated_At: new Date() },
    ]

    await queryInterface.bulkInsert('Usuarios', users , {});
  },
  // Se ejecuta cuando se deshace el seed
  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('Usuarios', null, {});
  }
};
