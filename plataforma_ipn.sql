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
INSERT INTO `usuarios` VALUES (1,'Centro de Estudios Científicos y Tecnológicos 1 \"Gonzalo Vázquez Vela\"','CECyT 1','CECyT1','PS_DP1',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(2,'Centro de Estudios Científicos y Tecnológicos 2 \"Miguel Bernard\"','CECyT 2','CECyT2','PS_DP2',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(3,'Centro de Estudios Científicos y Tecnológicos 3 \"Estanislao Ramírez Ruíz\"','CECyT 3','CECyT3','PS_DP3',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(4,'Centro de Estudios Científicos y Tecnológicos 4 \"Lázaro Cárdenas\"','CECyT 4','CECyT4','PS_DP4',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(5,'Centro de Estudios Científicos y Tecnológicos 5 \"Benito Juárez\"','CECyT 5','CECyT5','PS_DP5',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(6,'Centro de Estudios Científicos y Tecnológicos 6 \"Miguel Othón de Mendizábal\"','CECyT 6','CECyT6','PS_DP6',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(7,'Centro de Estudios Científicos y Tecnológicos 7 \"Cuauhtémoc\"','CECyT 7','CECyT7','PS_DP7',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(8,'Centro de Estudios Científicos y Tecnológicos 8 \"Narciso Bassols\"','CECyT 8','CECyT8','PS_DP8',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(9,'Centro de Estudios Científicos y Tecnológicos 9 \"Juan de Dios Bátiz\"','CECyT 9','CECyT9','PS_DP9',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(10,'Centro de Estudios Científicos y Tecnológicos 10 \"Carlos Vallejo Márquez\"','CECyT 10','CECyT10','PS_DP10',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(11,'Centro de Estudios Científicos y Tecnológicos 11 \"Wilfrido Massieu\"','CECyT 11','CECyT11','PS_DP11',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(12,'Centro de Estudios Científicos y Tecnológicos 12 \"José Ma. Morelos y Pavón\"','CECyT 12','CECyT12','PS_DP12',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(13,'Centro de Estudios Científicos y Tecnológicos 13 \"Ricardo Flores Magón\"','CECyT 13','CECyT13','PS_DP13',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(14,'Centro de Estudios Científicos y Tecnológicos 14 \"Luis Enrique Erro\"','CECyT 14','CECyT14','PS_DP14',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(15,'Centro de Estudios Científicos y Tecnológicos 15 \"Diódoro Antúnez Echegaray\"','CECyT 15','CECyT15','PS_DP15',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(16,'Centro de Estudios Científicos y Tecnológicos 16 \"Hidalgo\"','CECyT 16','CECyT16','PS_DP16',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(17,'Centro de Estudios Científicos y Tecnológicos 17 \"León Guanajuato\"','CECyT 17','CECyT17','PS_DP17',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(18,'Centro de Estudios Científicos y Tecnológicos 18 \"Zacatecas\"','CECyT 18','CECyT18','PS_DP18',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(19,'Centro de Estudios Científicos y Tecnológicos 19 \"Leona Vicario\" Tecámac\"','CECyT 19','CECyT19','PS_DP19',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(20,'CET 1 \"Walter Cross Buchanan\"','CET 1','CET1','PS_DP20',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(21,'Escuela Superior de Ingeniería Mecánica y Eléctrica, Unidad Zacatenco','ESIME ZAC','ESIMEZAC','PS_DP21',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(22,'Escuela Superior de Ingeniería Mecánica y Eléctrica, Unidad Culhuacán','ESIME CUL','ESIMECUL','PS_DP22',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(23,'Escuela Superior de Ingeniería Mecánica y Eléctrica, Unidad Azcapotzalco','ESIME AZC','ESIMEAZC','PS_DP23',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(24,'Escuela Superior de Ingeniería Mecánica y Eléctrica, Unidad Ticomán','ESIME TIC','ESIMETIC','PS_DP24',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(25,'Escuela Superior de Ingeniería y Arquitectura, Unidad Zacatenco','ESIA ZAC','ESIAZAC','PS_DP25',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(26,'Escuela Superior de Ingeniería y Arquitectura, Unidad Tecamachalco','ESIA TEC','ESIATEC','PS_DP26',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(27,'Escuela Superior de Ingeniería y Arquitectura, Unidad Ticomán','ESIA TIC','ESIATIC','PS_DP27',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(28,'Escuela Superior de Ingeniería Textil','ESIT','ESIT','PS_DP28',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(29,'Escuela Superior de Ingeniería Química e Industrias Extractivas','ESIQIE','ESIQIE','PS_DP29',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(30,'Escuela Superior de Física y Matemáticas','ESFM','ESFM','PS_DP30',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(31,'Escuela Superior de Cómputo','ESCOM','ESCOM','PS_DP31',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(32,'Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas','UPIICSA','UPIICSA','PS_DP32',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(33,'Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas','UPIITA','UPIITA','PS_DP33',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(34,'Unidad Profesional Interdisciplinaria de Biotecnología','UPIBI','UPIBI','PS_DP34',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(35,'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Guanajuato','UPIIG','UPIIG','PS_DP35',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(36,'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Zacatecas','UPIIZ','UPIIZ','PS_DP36',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(37,'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Hidalgo','UPIIH','UPIIH','PS_DP37',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(38,'Uni​dad Profesional Interdisciplinaria de Ingeniería, Campus Coahuila','UPIIC','UPIIC','PS_DP38',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(39,'Unidad Profesional Interdisciplinaria en Energía y Movilidad','UPIEM','UPIEM','PS_DP39',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(40,'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Palenque','UPIIP','UPIIP','PS_DP40',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(41,'Escuela Nacional de Ciencias Biológicas','ENCB','ENCB','PS_DP41',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(42,'Escuela Superior de Medicina','ESM','ESM','PS_DP42',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(43,'Escuela Nacional de Medicina y Homeopatía','ENMH','ENMH','PS_DP43',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(44,'Escuela Superior de Enfermería y Obstetricia','ESEO','ESEO','PS_DP44',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(45,'Centro Interdisciplinario de Ciencias de la Salud, Unidad Milpa Alta','CICS MA','CICSMA','PS_DP45',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(46,'Centro Interdisciplinario de Ciencias de la Salud, Unidad Santo Tomás','CICS ST','CICSST','PS_DP46',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(47,'Escuela Superior de Comercio y Administración, Unidad Santo Tomás','ESCA ST','ESCAST','PS_DP47',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(48,'Escuela Superior de Comercio y Administración, Unidad Tepepan','ESCA TEP','ESCATEP','PS_DP48',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(49,'Escuela Superior de Economía','ESE','ESE','PS_DP49',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(50,'Escuela Superior de Turismo','EST','EST','PS_DP50',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(51,'Escuela Nacional de Biblioteconomía y Archivonomía','ENBA','ENBA','PS_DP51',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(52,'Centro de Desarrollo de Productos Bióticos','CEPROBI','CEPROBI','PS_DP52',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(53,'Centro Interdisciplinario de Ciencias Marinas','CICIMAR','CICIMAR','PS_DP53',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(54,'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional, Unidad Durango','CIIDIR DUR','CIIDIR-DUR','PS_DP54',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(55,'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional, Unidad Michoacán','CIIDIR MICH','CIIDIR-MICH','PS_DP55',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(56,'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional, Unidad Oaxaca','CIIDIR OAX','CIIDIR-OAX','PS_DP56',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(57,'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional, Unidad Sinaloa','CIIDIR SIN','CIIDIR-SIN','PS_DP57',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(58,'Centro Interdisciplinario de Investigaciones y Estudios sobre Medio Ambiente y Desarrollo','CIIEMAD','CIIEMAD','PS_DP58',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(59,'Centro de Investigación en Computación','CIC','CIC','PS_DP59',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(60,'Centro de Investigaciones Económicas, Administrativas y Sociales','CIECAS','CIECAS','PS_DP60',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(61,'Centro de Biotecnología Genómica','CBG','CBG','PS_DP61',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(62,'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada, Unidad Legaria','CICATA LEG','CICATA-LEG','PS_DP62',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(63,'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada, Unidad Querétaro','CICATA QRO','CICATA-QRO','PS_DP63',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(64,'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada, Unidad Altamira','CICATA ALT','CICATA-ALT','PS_DP64',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(65,'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada, Unidad Morelos','CICATA MOR','CICATA-MOR','PS_DP65',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(66,'Centro de Investigación en Biotecnología Aplicada','CIBA','CIBA','PS_DP66',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(67,'Centro de Investigación y Desarrollo de Tecnología Digital','CITEDI','CITEDI','PS_DP67',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(68,'Centro de Innovación y Desarrollo Tecnológico en Cómputo','CIDETEC','CIDETEC','PS_DP68',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(69,'Centro de Investigación e Innovación Tecnológica','CIITEC','CIITEC','PS_DP69',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(70,'Centro Mexicano para la Producción más Limpia','CMP+L','CMP+L','PS_DP70',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(71,'Centro de Desarrollo Aeroespacial','CDA','CDA','PS_DP71',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(72,'Centro de Vinculación y Desarrollo Regional, Unidad Cajeme Sonora','CVDR Cajeme Son','CVDR-CAJ','PS_DP72',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(73,'Centro de Vinculación y Desarrollo Regional, Unidad Campeche','CVDR Campeche','CVDR-CAM','PS_DP73',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(74,'Centro de Vinculación y Desarrollo Regional, Unidad Cancún','CVDR Cancún','CVDR-CAN','PS_DP74',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(75,'Centro de Vinculación y Desarrollo Regional, Unidad Culiacán','CVDR Culiacán','CVDR-CUL','PS_DP75',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(76,'Centro de Vinculación y Desarrollo Regional, Unidad Durango','CVDR Durango','CVDR-DUR','PS_DP76',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(77,'Centro de Vinculación y Desarrollo Regional, Unidad Los Mochis','CVDR Los Mochis','CVDR-LM','PS_DP77',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(78,'Centro de Vinculación y Desarrollo Regional, Unidad Mazatlán','CVDR Mazatlán','CVDR-MAZ','PS_DP78',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(79,'Centro de Vinculación y Desarrollo Regional, Unidad Morelia','CVDR Morelia','CVDR-MOR','PS_DP79',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(80,'Centro de Vinculación y Desarrollo Regional, Unidad Oaxaca','CVDR Oaxaca','CVDR-OAX','PS_DP80',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(81,'Centro de Vinculación y Desarrollo Regional, Unidad Tampico','CVDR Tampico','CVDR-TAM','PS_DP81',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(82,'Centro de Vinculación y Desarrollo Regional, Unidad Tijuana','CVDR Tijuana','CVDR-TIJ','PS_DP82',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(83,'Centro de Innovación e Integración de Tecnología Avanzada, Unidad Chihuahua','CIITA Chihuahua','CIITA-CH','PS_DP83',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(84,'Centro de Innovación e Integración de Tecnología Avanzada, Unidad Veracruz','CIITA Veracruz','CIITA-VER','PS_DP84',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(85,'Dirección de Difusión de Ciencia y Tecnología','DDCyT','DDCyT','PS_DP85',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(86,'Centro de Lenguas Extranjeras, Unidad Zacatenco','CENLEX Zacatenco','CENLEX-ZAC','PS_DP86',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(87,'Centro de Lenguas Extranjeras, Unidad Santo Tomás','CENLEX Santo Tomás','CENLEX-STO','PS_DP87',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(88,'Dirección General','Dir. General','DG','PS_DP88',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(89,'Secretaría General','SEC-GRAL','SEC-GRAL','PS_DP89',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(90,'Oficina del Abogado General','OAG','OAG','PS_DP90',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(91,'Centro Nacional de Calculo','CENAC','CENAC','PS_DP91',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(92,'Dirección de Cómputo y Comunicaciones','DCyC','DCyC','PS_DP92',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(93,'Secetraría Académica','Sec. Académica','S-ACAD','PS_DP93',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(94,'Dirección de Educación Superior','DES','DES','PS_DP94',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(95,'Dirección de Educación Media Superior','DEMS','DEMS','PS_DP95',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(96,'Dirección de Formación en Lenguas Extranjeras','DFLE','DFLE','PS_DP96',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(97,'Secretaría de Investigación y Posgrado','SIP','SIP','PS_DP97',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(98,'Dirección de Investigación','DINV','DINV','PS_DP98',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(99,'Dirección de Posgrado','DirPos','DIRPOS','PS_DP99',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(100,'Secretaría de Innovación e Integración Social','SIIS','SIIS','PS_DP100',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(101,'Dirección de Vinculación y Desarrollo Regional','DVDR','DVDR','PS_DP101',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(102,'Dirección de Egresados y Servicio Social','DESS','DESS','PS_DP102',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(103,'Coordinación General de Planeación e Información Institucional','CGPII','CGPII','PS_DP103',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(104,'Secretaría de Servicios Educativos','SSE','SSE','PS_DP104',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(105,'Dirección de Planeación','DirPlan','DIR-PLAN','PS_DP105',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(106,'Dirección de Evaluación','DirEv','DIR-EV','PS_DP106',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(107,'Oficina del Abogado General (Dirección de Normatividad)','OAG','OAG','PS_DP107',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(108,'Organo Interno de Control','OIC','OIC','PS_DP108',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(109,'Secretaría de Administración','SecAdmin','SEC-ADMIN','PS_DP109',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(110,'Dirección de Recursos Materiales','DRM','DRM','PS_DP110',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(111,'Dirección de Capital Humano','DCH','DCH','PS_DP111',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(112,'Dirección de Recursos Financieros','DRF','DRF','PS_DP112',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(113,'Edificio ARC','Edif-ARC','E-ARC','PS_DP113',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(114,'Dirección de Formación e Innovacion Educativa','DFIE','DFIE','PS_DP114',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(115,'Dirección de Eduación Virtual','DEV','DEV','PS_DP115',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(116,'Dirección de Servicios Empresariales y Transferencia Tecnológica','DSETT','DSETT','PS_DP116',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(117,'Tecnópoli','Tecnópoli','TECNOPOLI','PS_DP117',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(118,'Dirección de Bibiotecas y Publicaciones (BNCT y CENTRO)','DByP','DByP','PS_DP118',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(119,'Dirección de Administración Escolar ','DAE','DAE','PS_DP119',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(120,'División de Infraestructura Física','DIF','DIF','PS_DP120',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(121,'Dirección de Actividades Deportivas','DAD','DAD','PS_DP121',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(122,'Dirección de Difusión Cultural','DDC','DDC','PS_DP122',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(123,'Dirección de Servicios Generales','DSG','DSG','PS_DP123',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(124,'Comisión de Operación y Fomento de Actividades Académicas','COFAA','COFAA','PS_DP124',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(125,'Decanato','Decanato','DECANATO','PS_DP125',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(126,'Coordinación de Centros de Desarrollo Infantil','CCDI','CCDI','PS_DP126',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(127,'Centro de Desarrollo Infantil “Amalia Solórzano de Cárdenas”','CDI-ASC','CDI-ASC','PS_DP127',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(128,'Centro de Desarrollo Infantil “Clementina Batalla de Bassols”','CDI-CBB','CDI-CBB','PS_DP128',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(129,'Centro de Desarrollo Infantil “Eva Sámano de López Mateos”','CDI-ESLP','CDI-ESLP','PS_DP129',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(130,'Centro de Desarrollo Infantil “Laura Pérez de Bátiz\"','CDI-LPB','CDI-LPB','PS_DP130',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(131,'Centro de Desarrollo Infantil “Margarita Salazar de Erro”','CDI-MSE','CDI-MSE','PS_DP131',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(132,'Dirección de Incubación de Empresas Tecnológicas','DIET','DIET','PS_DP132',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(133,'C Memorial EMD','C-MEMORIAL','C-MEMORIAL','PS_DP133',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(134,'Centro de Nanociencias y Micro y Nanotecnologías','NANOCENTRO','NANOCENTRO','PS_DP134',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(135,'Canal 11','Canal-11','CANAL11','PS_DP135',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(136,'Patronato de Obras e Instalaciones','POI','POI','PS_DP136',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(137,'Centro de Apoyo Polifuncional, Unidad Santo Tomás','CAP-ST','CAP-ST','PS_DP137',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(138,'Centro de Apoyo Polifuncional, Unidad Zacatenco','CAP-ZAC','CAP-ZAC','PS_DP138',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(139,'Centros de Apoyo para Estudiantes \"Alejandro Guillot Schiaffino\"','CAE-AGS','CAE-AGS','PS_DP139',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(140,'Centros de Apoyo para Estudiantes \"Carlos Vallejo Márquez\"','CAE-CVM','CAE-CVM','PS_DP140',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(141,'Centros de Apoyo para Estudiantes \"Francisco Plata Limón\"','CAE-FPL','CAE-FPL','PS_DP141',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(142,'Centros de Apoyo para Estudiantes \"Guillermo Massieu Helguera\"','CAE-GMH','CAE-GMH','PS_DP142',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(143,'Centros de Apoyo para Estudiantes \"José Gómez Tagle Martínez\"','CAE-JGTM','CAE-JGTM','PS_DP143',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(144,'Centros de Apoyo para Estudiantes \"Juan O´Gorman\"','CAE-JOG','CAE-JOG','PS_DP144',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(145,'Centros de Apoyo para Estudiantes \"Ma. Luisa Prado de Mayagoitia\"','CAE-MaLP','CAE-MALP','PS_DP145',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(146,'Centros de Apoyo para Estudiantes \"Manuel Cerrillo Valdivia\"','CAE-MCV','CAE-MCV','PS_DP146',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(147,'Centros de Apoyo para Estudiantes \"Manuel L. Stampa Ortigoza\"','CAE-MLSO','CAE-MLSO','PS_DP147',1,'2021-07-19 17:23:06','2021-07-19 17:23:06'),(148,'Centros de Apoyo para Estudiantes \"Carlos Casas Campillo\"','CAE-CCC','CAE-CCC','PS_DP148',1,'2021-07-19 17:23:06','2021-07-19 17:23:06');
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
