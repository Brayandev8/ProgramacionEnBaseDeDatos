-- Codigo Base de toda la base de datos --
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: simuladorrover
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `caracteristicas_fisicas`
--

DROP TABLE IF EXISTS `caracteristicas_fisicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristicas_fisicas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristicas_fisicas`
--

LOCK TABLES `caracteristicas_fisicas` WRITE;
/*!40000 ALTER TABLE `caracteristicas_fisicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `caracteristicas_fisicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracteristicas_quimicas`
--

DROP TABLE IF EXISTS `caracteristicas_quimicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristicas_quimicas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristicas_quimicas`
--

LOCK TABLES `caracteristicas_quimicas` WRITE;
/*!40000 ALTER TABLE `caracteristicas_quimicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `caracteristicas_quimicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clima`
--

DROP TABLE IF EXISTS `clima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clima` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `temporada_inicio` date DEFAULT NULL,
  `temporada_final` date DEFAULT NULL,
  `descripcion` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clima`
--

LOCK TABLES `clima` WRITE;
/*!40000 ALTER TABLE `clima` DISABLE KEYS */;
/*!40000 ALTER TABLE `clima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cultivo`
--

DROP TABLE IF EXISTS `cultivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cultivo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultivo`
--

LOCK TABLES `cultivo` WRITE;
/*!40000 ALTER TABLE `cultivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estructura`
--

DROP TABLE IF EXISTS `estructura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estructura` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `descripcion` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estructura`
--

LOCK TABLES `estructura` WRITE;
/*!40000 ALTER TABLE `estructura` DISABLE KEYS */;
/*!40000 ALTER TABLE `estructura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupacion`
--

DROP TABLE IF EXISTS `ocupacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacion`
--

LOCK TABLES `ocupacion` WRITE;
/*!40000 ALTER TABLE `ocupacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ocupacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rover`
--

DROP TABLE IF EXISTS `rover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rover` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_estructura` int DEFAULT NULL,
  `id_ruedas` int DEFAULT NULL,
  `peso` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estructura__rover_idx` (`id_estructura`),
  KEY `ruedas__rover_idx` (`id_ruedas`),
  CONSTRAINT `estructura__rover` FOREIGN KEY (`id_estructura`) REFERENCES `estructura` (`id`),
  CONSTRAINT `ruedas__rover` FOREIGN KEY (`id_ruedas`) REFERENCES `rueda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rover`
--

LOCK TABLES `rover` WRITE;
/*!40000 ALTER TABLE `rover` DISABLE KEYS */;
/*!40000 ALTER TABLE `rover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rueda`
--

DROP TABLE IF EXISTS `rueda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rueda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `tamaño` int DEFAULT NULL,
  `peso` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rueda`
--

LOCK TABLES `rueda` WRITE;
/*!40000 ALTER TABLE `rueda` DISABLE KEYS */;
/*!40000 ALTER TABLE `rueda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simulacion`
--

DROP TABLE IF EXISTS `simulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simulacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_rover` int DEFAULT NULL,
  `id_terreno` int DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `tiemp_seg` float DEFAULT NULL,
  `punto_inicio_x` float DEFAULT NULL,
  `punto_final_x` float DEFAULT NULL,
  `punto_inicio_Y` float DEFAULT NULL,
  `punto_final_Y` float DEFAULT NULL,  
  `distancia` float DEFAULT NULL,  
  PRIMARY KEY (`id`),
  KEY `usuario__simulacion_idx` (`id_usuario`),
  KEY `rover__simulacion_idx` (`id_rover`),
  KEY `terrenos__simulacion_idx` (`id_terreno`),
  CONSTRAINT `rover__simulacion` FOREIGN KEY (`id_rover`) REFERENCES `rover` (`id`),
  CONSTRAINT `terrenos__simulacion` FOREIGN KEY (`id_terreno`) REFERENCES `terreno` (`id`),
  CONSTRAINT `usuario__simulacion` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simulacion`
--

LOCK TABLES `simulacion` WRITE;
/*!40000 ALTER TABLE `simulacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `simulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terreno`
--

DROP TABLE IF EXISTS `terreno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terreno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_terreno` int DEFAULT NULL,
  `id_cultivo` int DEFAULT NULL,
  `id_clima` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clima_terrenos_idx` (`id_clima`),
  KEY `tipo_terreno__terreno_idx` (`id_tipo_terreno`),
  KEY `cultivo__terreno_idx` (`id_cultivo`),
  CONSTRAINT `clima_terreno` FOREIGN KEY (`id_clima`) REFERENCES `clima` (`id`),
  CONSTRAINT `cultivo__terreno` FOREIGN KEY (`id_cultivo`) REFERENCES `cultivo` (`id`),
  CONSTRAINT `tipo_terreno__terreno` FOREIGN KEY (`id_tipo_terreno`) REFERENCES `tipo_terreno` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terreno`
--

LOCK TABLES `terreno` WRITE;
/*!40000 ALTER TABLE `terreno` DISABLE KEYS */;
/*!40000 ALTER TABLE `terreno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_terreno`
--

DROP TABLE IF EXISTS `tipo_terreno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_terreno` (
  `id` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `id_carac_qui` int DEFAULT NULL,
  `id_carac_fisi` int DEFAULT NULL,
  `fertilidad` varchar(45) DEFAULT NULL,
  `descripcion` mediumtext,
  PRIMARY KEY (`id`),
  KEY `carac_qui__tipo_terreno_idx` (`id_carac_qui`),
  KEY `carac_fisi__tipo_terreno_idx` (`id_carac_fisi`),
  CONSTRAINT `carac_fisi__tipo_terreno` FOREIGN KEY (`id_carac_fisi`) REFERENCES `caracteristicas_fisicas` (`id`),
  CONSTRAINT `carac_qui__tipo_terreno` FOREIGN KEY (`id_carac_qui`) REFERENCES `caracteristicas_quimicas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_terreno`
--

LOCK TABLES `tipo_terreno` WRITE;
/*!40000 ALTER TABLE `tipo_terreno` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_terreno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `edad` date DEFAULT NULL,
  `id_ocupacion` int DEFAULT NULL,
  `id_genero` int DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ocupacion__usuario_idx` (`id_ocupacion`),
  KEY `genero__usuario_idx` (`id_genero`),
  CONSTRAINT `genero__usuario` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`),
  CONSTRAINT `ocupacion__usuario` FOREIGN KEY (`id_ocupacion`) REFERENCES `ocupacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'simuladorrover'
--

--
-- Dumping routines for database 'simuladorrover'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-15 10:20:45