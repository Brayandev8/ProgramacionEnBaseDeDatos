-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: roverdb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
  `nombre` varchar(45) NOT NULL,
  `temporada_inicio` date NOT NULL,
  `temporada_final` date NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultivo`
--

LOCK TABLES `cultivo` WRITE;
/*!40000 ALTER TABLE `cultivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desplazamiento`
--

DROP TABLE IF EXISTS `desplazamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desplazamiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_eje_x` int NOT NULL,
  `id_eje_y` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eje_x_idx` (`id_eje_x`),
  KEY `eje_y_idx` (`id_eje_y`),
  CONSTRAINT `eje_x` FOREIGN KEY (`id_eje_x`) REFERENCES `eje_x` (`id`),
  CONSTRAINT `eje_y` FOREIGN KEY (`id_eje_y`) REFERENCES `eje_y` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desplazamiento`
--

LOCK TABLES `desplazamiento` WRITE;
/*!40000 ALTER TABLE `desplazamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `desplazamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eje_x`
--

DROP TABLE IF EXISTS `eje_x`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eje_x` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inicio` decimal(2,0) NOT NULL,
  `final` decimal(2,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eje_x`
--

LOCK TABLES `eje_x` WRITE;
/*!40000 ALTER TABLE `eje_x` DISABLE KEYS */;
/*!40000 ALTER TABLE `eje_x` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eje_y`
--

DROP TABLE IF EXISTS `eje_y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eje_y` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inicio` decimal(2,0) NOT NULL,
  `final` decimal(2,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eje_y`
--

LOCK TABLES `eje_y` WRITE;
/*!40000 ALTER TABLE `eje_y` DISABLE KEYS */;
/*!40000 ALTER TABLE `eje_y` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estructura`
--

DROP TABLE IF EXISTS `estructura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estructura` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `peso_kg` decimal(2,0) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesion`
--

DROP TABLE IF EXISTS `profesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesion`
--

LOCK TABLES `profesion` WRITE;
/*!40000 ALTER TABLE `profesion` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rover`
--

DROP TABLE IF EXISTS `rover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rover` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_estructura` int NOT NULL,
  `id_ruedas` int NOT NULL,
  `peso` decimal(2,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rueda_idx` (`id_ruedas`),
  KEY `estructura_idx` (`id_estructura`),
  CONSTRAINT `estructura` FOREIGN KEY (`id_estructura`) REFERENCES `estructura` (`id`),
  CONSTRAINT `rueda` FOREIGN KEY (`id_ruedas`) REFERENCES `ruedas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rover`
--

LOCK TABLES `rover` WRITE;
/*!40000 ALTER TABLE `rover` DISABLE KEYS */;
/*!40000 ALTER TABLE `rover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruedas`
--

DROP TABLE IF EXISTS `ruedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruedas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `tamaño_cm` decimal(2,0) NOT NULL,
  `peso_kg` decimal(2,0) NOT NULL,
  `id_tamaño` int NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tamaño_rueda_idx` (`id_tamaño`),
  CONSTRAINT `tamaño_rueda` FOREIGN KEY (`id_tamaño`) REFERENCES `tamaño_rueda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruedas`
--

LOCK TABLES `ruedas` WRITE;
/*!40000 ALTER TABLE `ruedas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simulacion`
--

DROP TABLE IF EXISTS `simulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simulacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_rover` int NOT NULL,
  `id_terreno` int NOT NULL,
  `fecha_simulacion` date NOT NULL,
  `tiempo_simulacion` time NOT NULL,
  `id_desplazamiento` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_idx` (`id_usuario`),
  KEY `terreno_idx` (`id_terreno`),
  KEY `desplazamiento_idx` (`id_desplazamiento`),
  KEY `rover_idx` (`id_rover`),
  CONSTRAINT `desplazamiento` FOREIGN KEY (`id_desplazamiento`) REFERENCES `desplazamiento` (`id`),
  CONSTRAINT `rover` FOREIGN KEY (`id_rover`) REFERENCES `rover` (`id`),
  CONSTRAINT `terreno` FOREIGN KEY (`id_terreno`) REFERENCES `terreno` (`id`),
  CONSTRAINT `usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simulacion`
--

LOCK TABLES `simulacion` WRITE;
/*!40000 ALTER TABLE `simulacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `simulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamaño_rueda`
--

DROP TABLE IF EXISTS `tamaño_rueda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tamaño_rueda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamaño_rueda`
--

LOCK TABLES `tamaño_rueda` WRITE;
/*!40000 ALTER TABLE `tamaño_rueda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tamaño_rueda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terreno`
--

DROP TABLE IF EXISTS `terreno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terreno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_terrenol` int NOT NULL,
  `id_cultivo` int NOT NULL,
  `id_clima` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_terreno_idx` (`id_tipo_terrenol`),
  KEY `cultivo_idx` (`id_cultivo`),
  KEY `clima_idx` (`id_clima`),
  CONSTRAINT `clima` FOREIGN KEY (`id_clima`) REFERENCES `clima` (`id`),
  CONSTRAINT `cultivo` FOREIGN KEY (`id_cultivo`) REFERENCES `cultivo` (`id`),
  CONSTRAINT `tipo_terreno` FOREIGN KEY (`id_tipo_terrenol`) REFERENCES `tipo_terreno` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `id_caract_fis` int NOT NULL,
  `id_caract_qui` int NOT NULL,
  `fertilidad` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `caracteristicas_fisicas_idx` (`id_caract_fis`),
  KEY `caracteristicas_quimicas_idx` (`id_caract_qui`),
  CONSTRAINT `caracteristicas_fisicas` FOREIGN KEY (`id_caract_fis`) REFERENCES `caracteristicas_fisicas` (`id`),
  CONSTRAINT `caracteristicas_quimicas` FOREIGN KEY (`id_caract_qui`) REFERENCES `caracteristicas_quimicas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
  `identificacion` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_profesion` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`identificacion`),
  KEY `profesion_idx` (`id_profesion`),
  KEY `genero_idx` (`id_genero`),
  CONSTRAINT `genero` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`),
  CONSTRAINT `profesion` FOREIGN KEY (`id_profesion`) REFERENCES `profesion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05  4:23:55
