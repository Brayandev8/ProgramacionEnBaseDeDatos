-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: taller
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
-- Table structure for table `punto_2`
--

DROP TABLE IF EXISTS `punto_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punto_2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `nota` varchar(45) NOT NULL,
  `rango` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_2`
--

LOCK TABLES `punto_2` WRITE;
/*!40000 ALTER TABLE `punto_2` DISABLE KEYS */;
INSERT INTO `punto_2` VALUES (1,'Brayan','5','Aprobado'),(2,'Steven','11','Nota no válida'),(3,'Angie','9','Sobresaliente'),(4,'Brayan','5','Aprobado'),(5,'Steven','11','Nota no válida'),(6,'Angie','9','Sobresaliente'),(7,'Brayan','5','Aprobado'),(8,'Steven','11','Nota no válida'),(9,'Angie','9','Sobresaliente');
/*!40000 ALTER TABLE `punto_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punto_3`
--

DROP TABLE IF EXISTS `punto_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punto_3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(45) NOT NULL,
  `id_tipo_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_producto_idx` (`id_tipo_producto`),
  CONSTRAINT `tipo_producto` FOREIGN KEY (`id_tipo_producto`) REFERENCES `punto_3_tipoproductos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_3`
--

LOCK TABLES `punto_3` WRITE;
/*!40000 ALTER TABLE `punto_3` DISABLE KEYS */;
INSERT INTO `punto_3` VALUES (28,'fresas',1,12,2000),(29,'papayas',1,20,1600),(30,'kiwis',1,45,2600),(31,'leches',2,12,2700),(32,'kumis',2,56,3000),(33,'yogurt',2,25,3500),(34,'frijol',3,54,5000),(35,'lentejas',3,36,2600),(36,'garbansos',3,78,4000);
/*!40000 ALTER TABLE `punto_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punto_3_tipoproductos`
--

DROP TABLE IF EXISTS `punto_3_tipoproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punto_3_tipoproductos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_3_tipoproductos`
--

LOCK TABLES `punto_3_tipoproductos` WRITE;
/*!40000 ALTER TABLE `punto_3_tipoproductos` DISABLE KEYS */;
INSERT INTO `punto_3_tipoproductos` VALUES (1,'frutas'),(2,'lacteos'),(3,'granos');
/*!40000 ALTER TABLE `punto_3_tipoproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punto_6_pais`
--

DROP TABLE IF EXISTS `punto_6_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punto_6_pais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_6_pais`
--

LOCK TABLES `punto_6_pais` WRITE;
/*!40000 ALTER TABLE `punto_6_pais` DISABLE KEYS */;
INSERT INTO `punto_6_pais` VALUES (1,'colombia'),(2,'argentina'),(3,'españa');
/*!40000 ALTER TABLE `punto_6_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punto_6_sucursal`
--

DROP TABLE IF EXISTS `punto_6_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punto_6_sucursal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pais` int NOT NULL,
  `sucursal` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal_idx` (`id_pais`),
  CONSTRAINT `sucursal` FOREIGN KEY (`id_pais`) REFERENCES `punto_6_pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_6_sucursal`
--

LOCK TABLES `punto_6_sucursal` WRITE;
/*!40000 ALTER TABLE `punto_6_sucursal` DISABLE KEYS */;
INSERT INTO `punto_6_sucursal` VALUES (1,1,'bogota'),(2,1,'medellin'),(3,2,'buenos aires'),(4,2,'rosario'),(5,3,'madrid'),(6,3,'barcelona');
/*!40000 ALTER TABLE `punto_6_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punto_7_edad`
--

DROP TABLE IF EXISTS `punto_7_edad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punto_7_edad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_7_edad`
--

LOCK TABLES `punto_7_edad` WRITE;
/*!40000 ALTER TABLE `punto_7_edad` DISABLE KEYS */;
INSERT INTO `punto_7_edad` VALUES (1,'brayan','2002-06-08',NULL),(2,'angie','1999-06-03',NULL),(3,'nataly','2013-02-26',NULL),(4,'jonathan','2011-05-10',NULL);
/*!40000 ALTER TABLE `punto_7_edad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  0:17:55
