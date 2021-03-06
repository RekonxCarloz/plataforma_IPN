-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: plataforma_ipn
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `datos_dp`
--

DROP TABLE IF EXISTS `datos_dp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_dp` (
  `id_datos_dependencia` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `delegacion__municipio` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `calle_numero` varchar(255) DEFAULT NULL,
  `codigo_postal` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_dependencia` int DEFAULT NULL,
  `id_responsable` int DEFAULT NULL,
  PRIMARY KEY (`id_datos_dependencia`),
  KEY `id_dependencia` (`id_dependencia`),
  KEY `id_responsable` (`id_responsable`),
  CONSTRAINT `datos_dp_ibfk_1` FOREIGN KEY (`id_dependencia`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `datos_dp_ibfk_2` FOREIGN KEY (`id_responsable`) REFERENCES `datos_responsable` (`id_responsable`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_dp`
--

LOCK TABLES `datos_dp` WRITE;
/*!40000 ALTER TABLE `datos_dp` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_dp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_DPs`
--

DROP TABLE IF EXISTS `datos_DPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_DPs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_dependencia` int DEFAULT NULL,
  `id_responsable` int DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `delegacion_Municipio` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `calle_numero` varchar(255) DEFAULT NULL,
  `codigoPostal` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_DPs`
--

LOCK TABLES `datos_DPs` WRITE;
/*!40000 ALTER TABLE `datos_DPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_DPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_responsable`
--

DROP TABLE IF EXISTS `datos_responsable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_responsable` (
  `id_responsable` int NOT NULL,
  `nombre_responsable` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `extension` int DEFAULT NULL,
  `area_adscripcion` varchar(255) DEFAULT NULL,
  `tipo_plaza` varchar(255) DEFAULT NULL,
  `funcion` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_responsable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_responsable`
--

LOCK TABLES `datos_responsable` WRITE;
/*!40000 ALTER TABLE `datos_responsable` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_responsable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_Responsables`
--

DROP TABLE IF EXISTS `datos_Responsables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_Responsables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_responsable` int DEFAULT NULL,
  `nombre_responsable` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `extension` int DEFAULT NULL,
  `area_adscripcion` varchar(255) DEFAULT NULL,
  `tipo_plaza` varchar(255) DEFAULT NULL,
  `funcion` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_Responsables`
--

LOCK TABLES `datos_Responsables` WRITE;
/*!40000 ALTER TABLE `datos_Responsables` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_Responsables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_operativa`
--

DROP TABLE IF EXISTS `info_operativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_operativa` (
  `id_datos_operativos` int NOT NULL,
  `personal_docentes` int DEFAULT NULL,
  `personal_paae` int DEFAULT NULL,
  `estudiantes` int DEFAULT NULL,
  `personal_limp_jard` int DEFAULT NULL,
  `personal_mando` int DEFAULT NULL,
  `visitantes_por_dia` int DEFAULT NULL,
  `total_personal` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_dependencia` int DEFAULT NULL,
  PRIMARY KEY (`id_datos_operativos`),
  KEY `id_dependencia` (`id_dependencia`),
  CONSTRAINT `info_operativa_ibfk_1` FOREIGN KEY (`id_dependencia`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_operativa`
--

LOCK TABLES `info_operativa` WRITE;
/*!40000 ALTER TABLE `info_operativa` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_operativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_operativas`
--

DROP TABLE IF EXISTS `info_operativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_operativas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_dependencia` int DEFAULT NULL,
  `personal_docentes` int DEFAULT NULL,
  `personal_PAAE` int DEFAULT NULL,
  `estudiantes` int DEFAULT NULL,
  `personal_limp_jard` int DEFAULT NULL,
  `personal_mando` int DEFAULT NULL,
  `visitantes_por_dia` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_operativas`
--

LOCK TABLES `info_operativas` WRITE;
/*!40000 ALTER TABLE `info_operativas` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_operativas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20210705010136-create-usuarios.js'),('20210705042538-create-datos-dp.js'),('20210705042733-create-datos-responsable.js'),('20210705042919-create-info-operativa.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombre_corto` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Centro de Estudios Cient??ficos y Tecnol??gicos 1 \"Gonzalo V??zquez Vela\"','CECyT 1','CECyT1','PS_DP1',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(2,'Centro de Estudios Cient??ficos y Tecnol??gicos 2 \"Miguel Bernard\"','CECyT 2','CECyT2','PS_DP2',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(3,'Centro de Estudios Cient??ficos y Tecnol??gicos 3 \"Estanislao Ram??rez Ru??z\"','CECyT 3','CECyT3','PS_DP3',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(4,'Centro de Estudios Cient??ficos y Tecnol??gicos 4 \"L??zaro C??rdenas\"','CECyT 4','CECyT4','PS_DP4',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(5,'Centro de Estudios Cient??ficos y Tecnol??gicos 5 \"Benito Ju??rez\"','CECyT 5','CECyT5','PS_DP5',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(6,'Centro de Estudios Cient??ficos y Tecnol??gicos 6 \"Miguel Oth??n de Mendiz??bal\"','CECyT 6','CECyT6','PS_DP6',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(7,'Centro de Estudios Cient??ficos y Tecnol??gicos 7 \"Cuauht??moc\"','CECyT 7','CECyT7','PS_DP7',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(8,'Centro de Estudios Cient??ficos y Tecnol??gicos 8 \"Narciso Bassols\"','CECyT 8','CECyT8','PS_DP8',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(9,'Centro de Estudios Cient??ficos y Tecnol??gicos 9 \"Juan de Dios B??tiz\"','CECyT 9','CECyT9','PS_DP9',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(10,'Centro de Estudios Cient??ficos y Tecnol??gicos 10 \"Carlos Vallejo M??rquez\"','CECyT 10','CECyT10','PS_DP10',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(11,'Centro de Estudios Cient??ficos y Tecnol??gicos 11 \"Wilfrido Massieu\"','CECyT 11','CECyT11','PS_DP11',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(12,'Centro de Estudios Cient??ficos y Tecnol??gicos 12 \"Jos?? Ma. Morelos y Pav??n\"','CECyT 12','CECyT12','PS_DP12',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(13,'Centro de Estudios Cient??ficos y Tecnol??gicos 13 \"Ricardo Flores Mag??n\"','CECyT 13','CECyT13','PS_DP13',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(14,'Centro de Estudios Cient??ficos y Tecnol??gicos 14 \"Luis Enrique Erro\"','CECyT 14','CECyT14','PS_DP14',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(15,'Centro de Estudios Cient??ficos y Tecnol??gicos 15 \"Di??doro Ant??nez Echegaray\"','CECyT 15','CECyT15','PS_DP15',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(16,'Centro de Estudios Cient??ficos y Tecnol??gicos 16 \"Hidalgo\"','CECyT 16','CECyT16','PS_DP16',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(17,'Centro de Estudios Cient??ficos y Tecnol??gicos 17 \"Le??n Guanajuato\"','CECyT 17','CECyT17','PS_DP17',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(18,'Centro de Estudios Cient??ficos y Tecnol??gicos 18 \"Zacatecas\"','CECyT 18','CECyT18','PS_DP18',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(19,'Centro de Estudios Cient??ficos y Tecnol??gicos 19 \"Leona Vicario\" Tec??mac\"','CECyT 19','CECyT19','PS_DP19',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(20,'CET 1 \"Walter Cross Buchanan\"','CET 1','CET1','PS_DP20',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(21,'Escuela Superior de Ingenier??a Mec??nica y El??ctrica, Unidad Zacatenco','ESIME ZAC','ESIMEZAC','PS_DP21',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(22,'Escuela Superior de Ingenier??a Mec??nica y El??ctrica, Unidad Culhuac??n','ESIME CUL','ESIMECUL','PS_DP22',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(23,'Escuela Superior de Ingenier??a Mec??nica y El??ctrica, Unidad Azcapotzalco','ESIME AZC','ESIMEAZC','PS_DP23',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(24,'Escuela Superior de Ingenier??a Mec??nica y El??ctrica, Unidad Ticom??n','ESIME TIC','ESIMETIC','PS_DP24',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(25,'Escuela Superior de Ingenier??a y Arquitectura, Unidad Zacatenco','ESIA ZAC','ESIAZAC','PS_DP25',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(26,'Escuela Superior de Ingenier??a y Arquitectura, Unidad Tecamachalco','ESIA TEC','ESIATEC','PS_DP26',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(27,'Escuela Superior de Ingenier??a y Arquitectura, Unidad Ticom??n','ESIA TIC','ESIATIC','PS_DP27',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(28,'Escuela Superior de Ingenier??a Textil','ESIT','ESIT','PS_DP28',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(29,'Escuela Superior de Ingenier??a Qu??mica e Industrias Extractivas','ESIQIE','ESIQIE','PS_DP29',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(30,'Escuela Superior de F??sica y Matem??ticas','ESFM','ESFM','PS_DP30',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(31,'Escuela Superior de C??mputo','ESCOM','ESCOM','PS_DP31',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(32,'Unidad Profesional Interdisciplinaria de Ingenier??a y Ciencias Sociales y Administrativas','UPIICSA','UPIICSA','PS_DP32',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(33,'Unidad Profesional Interdisciplinaria en Ingenier??a y Tecnolog??as Avanzadas','UPIITA','UPIITA','PS_DP33',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(34,'Unidad Profesional Interdisciplinaria de Biotecnolog??a','UPIBI','UPIBI','PS_DP34',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(35,'Unidad Profesional Interdisciplinaria de Ingenier??a, Campus Guanajuato','UPIIG','UPIIG','PS_DP35',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(36,'Unidad Profesional Interdisciplinaria de Ingenier??a, Campus Zacatecas','UPIIZ','UPIIZ','PS_DP36',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(37,'Unidad Profesional Interdisciplinaria de Ingenier??a, Campus Hidalgo','UPIIH','UPIIH','PS_DP37',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(38,'Uni???dad Profesional Interdisciplinaria de Ingenier??a, Campus Coahuila','UPIIC','UPIIC','PS_DP38',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(39,'Unidad Profesional Interdisciplinaria en Energ??a y Movilidad','UPIEM','UPIEM','PS_DP39',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(40,'Unidad Profesional Interdisciplinaria de Ingenier??a, Campus Palenque','UPIIP','UPIIP','PS_DP40',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(41,'Escuela Nacional de Ciencias Biol??gicas','ENCB','ENCB','PS_DP41',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(42,'Escuela Superior de Medicina','ESM','ESM','PS_DP42',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(43,'Escuela Nacional de Medicina y Homeopat??a','ENMH','ENMH','PS_DP43',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(44,'Escuela Superior de Enfermer??a y Obstetricia','ESEO','ESEO','PS_DP44',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(45,'Centro Interdisciplinario de Ciencias de la Salud, Unidad Milpa Alta','CICS MA','CICSMA','PS_DP45',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(46,'Centro Interdisciplinario de Ciencias de la Salud, Unidad Santo Tom??s','CICS ST','CICSST','PS_DP46',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(47,'Escuela Superior de Comercio y Administraci??n, Unidad Santo Tom??s','ESCA ST','ESCAST','PS_DP47',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(48,'Escuela Superior de Comercio y Administraci??n, Unidad Tepepan','ESCA TEP','ESCATEP','PS_DP48',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(49,'Escuela Superior de Econom??a','ESE','ESE','PS_DP49',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(50,'Escuela Superior de Turismo','EST','EST','PS_DP50',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(51,'Escuela Nacional de Biblioteconom??a y Archivonom??a','ENBA','ENBA','PS_DP51',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(52,'Centro de Desarrollo de Productos Bi??ticos','CEPROBI','CEPROBI','PS_DP52',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(53,'Centro Interdisciplinario de Ciencias Marinas','CICIMAR','CICIMAR','PS_DP53',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(54,'Centro Interdisciplinario de Investigaci??n para el Desarrollo Integral Regional, Unidad Durango','CIIDIR DUR','CIIDIR-DUR','PS_DP54',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(55,'Centro Interdisciplinario de Investigaci??n para el Desarrollo Integral Regional, Unidad Michoac??n','CIIDIR MICH','CIIDIR-MICH','PS_DP55',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(56,'Centro Interdisciplinario de Investigaci??n para el Desarrollo Integral Regional, Unidad Oaxaca','CIIDIR OAX','CIIDIR-OAX','PS_DP56',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(57,'Centro Interdisciplinario de Investigaci??n para el Desarrollo Integral Regional, Unidad Sinaloa','CIIDIR SIN','CIIDIR-SIN','PS_DP57',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(58,'Centro Interdisciplinario de Investigaciones y Estudios sobre Medio Ambiente y Desarrollo','CIIEMAD','CIIEMAD','PS_DP58',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(59,'Centro de Investigaci??n en Computaci??n','CIC','CIC','PS_DP59',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(60,'Centro de Investigaciones Econ??micas, Administrativas y Sociales','CIECAS','CIECAS','PS_DP60',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(61,'Centro de Biotecnolog??a Gen??mica','CBG','CBG','PS_DP61',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(62,'Centro de Investigaci??n en Ciencia Aplicada y Tecnolog??a Avanzada, Unidad Legaria','CICATA LEG','CICATA-LEG','PS_DP62',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(63,'Centro de Investigaci??n en Ciencia Aplicada y Tecnolog??a Avanzada, Unidad Quer??taro','CICATA QRO','CICATA-QRO','PS_DP63',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(64,'Centro de Investigaci??n en Ciencia Aplicada y Tecnolog??a Avanzada, Unidad Altamira','CICATA ALT','CICATA-ALT','PS_DP64',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(65,'Centro de Investigaci??n en Ciencia Aplicada y Tecnolog??a Avanzada, Unidad Morelos','CICATA MOR','CICATA-MOR','PS_DP65',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(66,'Centro de Investigaci??n en Biotecnolog??a Aplicada','CIBA','CIBA','PS_DP66',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(67,'Centro de Investigaci??n y Desarrollo de Tecnolog??a Digital','CITEDI','CITEDI','PS_DP67',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(68,'Centro de Innovaci??n y Desarrollo Tecnol??gico en C??mputo','CIDETEC','CIDETEC','PS_DP68',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(69,'Centro de Investigaci??n e Innovaci??n Tecnol??gica','CIITEC','CIITEC','PS_DP69',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(70,'Centro Mexicano para la Producci??n m??s Limpia','CMP+L','CMP+L','PS_DP70',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(71,'Centro de Desarrollo Aeroespacial','CDA','CDA','PS_DP71',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(72,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Cajeme Sonora','CVDR Cajeme Son','CVDR-CAJ','PS_DP72',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(73,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Campeche','CVDR Campeche','CVDR-CAM','PS_DP73',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(74,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Canc??n','CVDR Canc??n','CVDR-CAN','PS_DP74',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(75,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Culiac??n','CVDR Culiac??n','CVDR-CUL','PS_DP75',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(76,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Durango','CVDR Durango','CVDR-DUR','PS_DP76',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(77,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Los Mochis','CVDR Los Mochis','CVDR-LM','PS_DP77',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(78,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Mazatl??n','CVDR Mazatl??n','CVDR-MAZ','PS_DP78',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(79,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Morelia','CVDR Morelia','CVDR-MOR','PS_DP79',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(80,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Oaxaca','CVDR Oaxaca','CVDR-OAX','PS_DP80',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(81,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Tampico','CVDR Tampico','CVDR-TAM','PS_DP81',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(82,'Centro de Vinculaci??n y Desarrollo Regional, Unidad Tijuana','CVDR Tijuana','CVDR-TIJ','PS_DP82',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(83,'Centro de Innovaci??n e Integraci??n de Tecnolog??a Avanzada, Unidad Chihuahua','CIITA Chihuahua','CIITA-CH','PS_DP83',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(84,'Centro de Innovaci??n e Integraci??n de Tecnolog??a Avanzada, Unidad Veracruz','CIITA Veracruz','CIITA-VER','PS_DP84',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(85,'Direcci??n de Difusi??n de Ciencia y Tecnolog??a','DDCyT','DDCyT','PS_DP85',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(86,'Centro de Lenguas Extranjeras, Unidad Zacatenco','CENLEX Zacatenco','CENLEX-ZAC','PS_DP86',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(87,'Centro de Lenguas Extranjeras, Unidad Santo Tom??s','CENLEX Santo Tom??s','CENLEX-STO','PS_DP87',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(88,'Direcci??n General','Dir. General','DG','PS_DP88',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(89,'Secretar??a General','SEC-GRAL','SEC-GRAL','PS_DP89',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(90,'Oficina del Abogado General','OAG','OAG','PS_DP90',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(91,'Centro Nacional de Calculo','CENAC','CENAC','PS_DP91',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(92,'Direcci??n de C??mputo y Comunicaciones','DCyC','DCyC','PS_DP92',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(93,'Secetrar??a Acad??mica','Sec. Acad??mica','S-ACAD','PS_DP93',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(94,'Direcci??n de Educaci??n Superior','DES','DES','PS_DP94',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(95,'Direcci??n de Educaci??n Media Superior','DEMS','DEMS','PS_DP95',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(96,'Direcci??n de Formaci??n en Lenguas Extranjeras','DFLE','DFLE','PS_DP96',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(97,'Secretar??a de Investigaci??n y Posgrado','SIP','SIP','PS_DP97',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(98,'Direcci??n de Investigaci??n','DINV','DINV','PS_DP98',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(99,'Direcci??n de Posgrado','DirPos','DIRPOS','PS_DP99',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(100,'Secretar??a de Innovaci??n e Integraci??n Social','SIIS','SIIS','PS_DP100',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(101,'Direcci??n de Vinculaci??n y Desarrollo Regional','DVDR','DVDR','PS_DP101',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(102,'Direcci??n de Egresados y Servicio Social','DESS','DESS','PS_DP102',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(103,'Coordinaci??n General de Planeaci??n e Informaci??n Institucional','CGPII','CGPII','PS_DP103',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(104,'Secretar??a de Servicios Educativos','SSE','SSE','PS_DP104',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(105,'Direcci??n de Planeaci??n','DirPlan','DIR-PLAN','PS_DP105',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(106,'Direcci??n de Evaluaci??n','DirEv','DIR-EV','PS_DP106',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(107,'Oficina del Abogado General (Direcci??n de Normatividad)','OAG','OAG','PS_DP107',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(108,'Organo Interno de Control','OIC','OIC','PS_DP108',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(109,'Secretar??a de Administraci??n','SecAdmin','SEC-ADMIN','PS_DP109',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(110,'Direcci??n de Recursos Materiales','DRM','DRM','PS_DP110',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(111,'Direcci??n de Capital Humano','DCH','DCH','PS_DP111',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(112,'Direcci??n de Recursos Financieros','DRF','DRF','PS_DP112',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(113,'Edificio ARC','Edif-ARC','E-ARC','PS_DP113',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(114,'Direcci??n de Formaci??n e Innovacion Educativa','DFIE','DFIE','PS_DP114',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(115,'Direcci??n de Eduaci??n Virtual','DEV','DEV','PS_DP115',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(116,'Direcci??n de Servicios Empresariales y Transferencia Tecnol??gica','DSETT','DSETT','PS_DP116',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(117,'Tecn??poli','Tecn??poli','TECNOPOLI','PS_DP117',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(118,'Direcci??n de Bibiotecas y Publicaciones (BNCT y CENTRO)','DByP','DByP','PS_DP118',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(119,'Direcci??n de Administraci??n Escolar ','DAE','DAE','PS_DP119',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(120,'Divisi??n de Infraestructura F??sica','DIF','DIF','PS_DP120',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(121,'Direcci??n de Actividades Deportivas','DAD','DAD','PS_DP121',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(122,'Direcci??n de Difusi??n Cultural','DDC','DDC','PS_DP122',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(123,'Direcci??n de Servicios Generales','DSG','DSG','PS_DP123',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(124,'Comisi??n de Operaci??n y Fomento de Actividades Acad??micas','COFAA','COFAA','PS_DP124',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(125,'Decanato','Decanato','DECANATO','PS_DP125',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(126,'Coordinaci??n de Centros de Desarrollo Infantil','CCDI','CCDI','PS_DP126',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(127,'Centro de Desarrollo Infantil ???Amalia Sol??rzano de C??rdenas???','CDI-ASC','CDI-ASC','PS_DP127',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(128,'Centro de Desarrollo Infantil ???Clementina Batalla de Bassols???','CDI-CBB','CDI-CBB','PS_DP128',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(129,'Centro de Desarrollo Infantil ???Eva S??mano de L??pez Mateos???','CDI-ESLP','CDI-ESLP','PS_DP129',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(130,'Centro de Desarrollo Infantil ???Laura P??rez de B??tiz\"','CDI-LPB','CDI-LPB','PS_DP130',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(131,'Centro de Desarrollo Infantil ???Margarita Salazar de Erro???','CDI-MSE','CDI-MSE','PS_DP131',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(132,'Direcci??n de Incubaci??n de Empresas Tecnol??gicas','DIET','DIET','PS_DP132',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(133,'C Memorial EMD','C-MEMORIAL','C-MEMORIAL','PS_DP133',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(134,'Centro de Nanociencias y Micro y Nanotecnolog??as','NANOCENTRO','NANOCENTRO','PS_DP134',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(135,'Canal 11','Canal-11','CANAL11','PS_DP135',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(136,'Patronato de Obras e Instalaciones','POI','POI','PS_DP136',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(137,'Centro de Apoyo Polifuncional, Unidad Santo Tom??s','CAP-ST','CAP-ST','PS_DP137',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(138,'Centro de Apoyo Polifuncional, Unidad Zacatenco','CAP-ZAC','CAP-ZAC','PS_DP138',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(139,'Centros de Apoyo para Estudiantes \"Alejandro Guillot Schiaffino\"','CAE-AGS','CAE-AGS','PS_DP139',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(140,'Centros de Apoyo para Estudiantes \"Carlos Vallejo M??rquez\"','CAE-CVM','CAE-CVM','PS_DP140',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(141,'Centros de Apoyo para Estudiantes \"Francisco Plata Lim??n\"','CAE-FPL','CAE-FPL','PS_DP141',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(142,'Centros de Apoyo para Estudiantes \"Guillermo Massieu Helguera\"','CAE-GMH','CAE-GMH','PS_DP142',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(143,'Centros de Apoyo para Estudiantes \"Jos?? G??mez Tagle Mart??nez\"','CAE-JGTM','CAE-JGTM','PS_DP143',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(144,'Centros de Apoyo para Estudiantes \"Juan O??Gorman\"','CAE-JOG','CAE-JOG','PS_DP144',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(145,'Centros de Apoyo para Estudiantes \"Ma. Luisa Prado de Mayagoitia\"','CAE-MaLP','CAE-MALP','PS_DP145',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(146,'Centros de Apoyo para Estudiantes \"Manuel Cerrillo Valdivia\"','CAE-MCV','CAE-MCV','PS_DP146',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(147,'Centros de Apoyo para Estudiantes \"Manuel L. Stampa Ortigoza\"','CAE-MLSO','CAE-MLSO','PS_DP147',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(148,'Centros de Apoyo para Estudiantes \"Carlos Casas Campillo\"','CAE-CCC','CAE-CCC','PS_DP148',1,'2021-07-19 17:23:06','2021-07-19 17:23:06');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'plataforma_ipn'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-21 13:24:30
