CREATE DATABASE  IF NOT EXISTS `coder_empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coder_empresa`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: coder_empresa
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `dni` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `contrasenia` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fNac` date NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=45999769 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (16008592,'Adriana','Frias','El zorzal 4536',1124773484,'frias2712','river3113','friasa@gmail.com','1961-12-27'),(23776487,'Carina','Gonzalez','Platanos 786',1134559234,'cgonzalez9954','pato9854','cgonzalez@gmail.com','1988-09-12'),(24887887,'Silvana','Gonzalez','Orion 5555',1177564436,'sgonzalez8843','foca123','sgonzalez@gmail.com','1985-12-12'),(29887650,'Matias','Romero','Raguzzi 198',1178564923,'mromero8812','gato6734','mromero@gmail.com','1982-01-28'),(30765888,'Ricardo','Frias','Garay 2712',1144989876,'rfrias9999','oso8944','rfrias@gmail.com','1984-08-01'),(31263026,'Martin','Martinez','Donato Alvarez 956',1164946486,'mart1161','mono1234','mlmh3113@hotmail.com','1984-10-31'),(31458776,'Sergio','Centurion','Salta 476',1120986733,'scenturion3466','perro453','scenturion@gmail.com','1985-09-25'),(32998998,'Gonzalo','Correa','Salta 32',1133998998,'gcorrea3337','rana983','gcorrea@gmail.com','1987-11-23'),(33876095,'Diego','Gomez','Sanabria 21',1198674532,'dgomez4567','mono123','dgomez@hotmail.com','1985-06-05'),(39887561,'Lionel','Irrera','Corrientes 45',1144875693,'lirrera1244','loro123','lirrera@gmail.com','1989-07-30'),(40129845,'Veronica','Correa','Sauce 66',1188746539,'vcorrea9811','coco98','vcorrea@gmail.com','1991-03-23'),(42876556,'Delfina','Romero','Calle 198 984',1155667734,'dromero2727','sapo8954','dromero@gmail.com','1996-02-12'),(42909654,'Dante','Romero','Raguzzi 198',1138776464,'dromero6645','pollo7844','dromero@gmail.com','1995-07-18'),(45895612,'Yamila','Salinas','Montero 12',1123997765,'ysalinas4598','gallo98','ysalinas@gmail.com','1990-02-05'),(45999768,'Tomas','Nunez','Rivadavia 34',1187555565,'tnunez4533','raton4333','tnunez@gmail.com','1988-12-05');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `legajo` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `contrasenia` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fNac` date NOT NULL,
  `fIngreso` date NOT NULL,
  `puesto` varchar(25) NOT NULL,
  PRIMARY KEY (`legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,31899743,'Daniel','Rodriguez','moreno 456',11516996,'drodriguez7775','casa123','drodriguez@gmail.com','1985-01-01','2020-10-31','lider'),(2,35476256,'Ruth','Pereira','varela 2398',11397845,'rpereira6565','auto123','rpereira@gmail.com','1980-12-23','2021-12-14','lider'),(3,27604265,'Cristian','Ramirez','Sauco 88',118887873,'cramirez7775','play7844','cramirez@gmail.com','1980-11-21','2020-04-12','lider'),(4,45421237,'Lara','Mataloni','palestina 45',119987764,'lmataloni9393','boton123','lmataloni@gmail.com','1986-09-09','2020-10-07','lider'),(5,27092284,'Ariel','Martinez','asuncion 56',1198567734,'amartinez0987','rata097','amartinez@gmail.com','1985-09-08','2021-11-06','lider'),(6,34154020,'Walter','Leon','calle 820 4555',1166734456,'wleon7666','zorro3455','wleon@hotmail.com','1990-12-01','2022-12-05','oficial de negocios'),(7,38078000,'Sandra','Ramirez','Paraguay 34',1123443344,'sramirez987','hilo34','sramirez@gmail.com','1986-02-23','2020-01-04','oficial de negocios'),(8,32122557,'Isabel','Danone','salto 78',1198897645,'idnone855','sol875','idanone@gmail.com','1992-03-24','2022-01-12','oficial de negocios'),(9,28495634,'Sebastian','Fernandez','calle 898 855',1132458866,'sfernandez877','luna876','sfernandez@gmail.com','1984-02-02','2023-01-20','oficial de negocios'),(10,31500229,'Nicolas','Soto','Pasco 453',1156783344,'nsoto122','maso4488','nsoto@gmail.com','1989-03-09','2023-02-05','oficial de negocios'),(11,26995702,'Mara','Ponce','Lima 7866',1199775533,'mponce211','jarra87','mponce@gmail.com','1980-12-01','2020-06-27','ventas'),(12,28895797,'Juan','Estigarribia','Jardin 21',1159873367,'jestigarribia65','negro98','jestigarribia@gmail.com','1988-05-04','2022-06-02','ventas'),(13,28553661,'Miguel','Gugliota','Varela 66',1187664490,'mgugliota89','azul99','mgugliota@gmail.com','1988-01-22','2021-05-10','ventas'),(14,32240725,'Andrea','Acosta','solis 888',1122897756,'aacosta743','marron45','aacosta@gmail.com','1994-02-01','2021-10-31','ventas'),(15,26579185,'Ramiro','Sanchez','calle 56 99',1189896634,'rsanchez777','amarillo90','rsanchez@gmail.com','1993-10-11','2022-11-01','ventas');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria`
--

DROP TABLE IF EXISTS `log_auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `accion` varchar(15) DEFAULT NULL,
  `nom_tabla` varchar(50) DEFAULT NULL,
  `usuario` varchar(25) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria`
--

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria_suc`
--

DROP TABLE IF EXISTS `log_auditoria_suc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria_suc` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_suc_ant` int DEFAULT NULL,
  `nombre_suc_ant` varchar(64) DEFAULT NULL,
  `dir_suc_ant` varchar(255) DEFAULT NULL,
  `accion` varchar(15) DEFAULT NULL,
  `nom_tabla` varchar(50) DEFAULT NULL,
  `usuario` varchar(25) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria_suc`
--

LOCK TABLES `log_auditoria_suc` WRITE;
/*!40000 ALTER TABLE `log_auditoria_suc` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_auditoria_suc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `idPrestamo` int NOT NULL AUTO_INCREMENT,
  `dni` int DEFAULT NULL,
  `monto` int DEFAULT NULL,
  `sucursal` int DEFAULT NULL,
  `vendedor` int DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idPrestamo`),
  KEY `PK_DNI_PRES` (`dni`),
  KEY `PK_SUC_PRES` (`sucursal`),
  KEY `PK_VEND_PRES` (`vendedor`),
  CONSTRAINT `PK_DNI_PRES` FOREIGN KEY (`dni`) REFERENCES `clientes` (`dni`),
  CONSTRAINT `PK_SUC_PRES` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`idSucursal`),
  CONSTRAINT `PK_VEND_PRES` FOREIGN KEY (`vendedor`) REFERENCES `empleados` (`legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (1,24887887,12000,4,5,'2024-02-24'),(2,29887650,22000,12,6,'2024-02-24'),(3,42876556,32000,10,9,'2024-02-24'),(4,45895612,60000,11,10,'2024-02-24'),(5,31458776,6000,2,5,'2024-02-24'),(6,23776487,12000,4,7,'2024-02-24'),(7,45895612,12000,2,8,'2024-02-24'),(8,16008592,12000,10,5,'2024-02-24'),(9,30765888,12000,4,10,'2024-02-24');
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguros`
--

DROP TABLE IF EXISTS `seguros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguros` (
  `idSeguro` int NOT NULL AUTO_INCREMENT,
  `tipoSeguro` varchar(25) NOT NULL,
  `precioSeguro` int NOT NULL,
  PRIMARY KEY (`idSeguro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguros`
--

LOCK TABLES `seguros` WRITE;
/*!40000 ALTER TABLE `seguros` DISABLE KEYS */;
INSERT INTO `seguros` VALUES (1,'Desempleo',300),(2,'Hogar',500),(3,'Mascota',250),(4,'Bolso Protegido',450),(5,'Ayuda Medica',700);
/*!40000 ALTER TABLE `seguros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `idSucursal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'Lomas','Correa 24'),(2,'Quilmes','Donato Alvarez 956'),(3,'Banfield','Alcorta 566'),(4,'Ezeiza','Raguzzi 198'),(5,'Temperley','De Andrea 98'),(6,'Florencio Varela','El Zorzal 4536'),(7,'Abasto','Corrientes 4556'),(8,'Lacroze','Lacroze 874'),(9,'Florida','Florida 44'),(10,'Boedo','Laprida 63'),(11,'Lanus','9 de Julio 34'),(12,'Urquiza','25 de septiembre 23'),(13,'Martelli','Neuquen 45'),(14,'San Jose','Allipi 789'),(15,'Bernal','Santa Ana 89');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetas` (
  `idTarjeta` int NOT NULL AUTO_INCREMENT,
  `tipoTarjeta` varchar(25) NOT NULL,
  PRIMARY KEY (`idTarjeta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` VALUES (1,'Visa'),(2,'Mastecard'),(3,'Regional');
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventaseg`
--

DROP TABLE IF EXISTS `ventaseg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventaseg` (
  `idVentSeg` int NOT NULL AUTO_INCREMENT,
  `codSeg` int DEFAULT NULL,
  `cliente` int DEFAULT NULL,
  `vendedor` int DEFAULT NULL,
  `sucursal` int DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idVentSeg`),
  KEY `FK_COD_SEG` (`codSeg`),
  KEY `FK_CLI_SEG` (`cliente`),
  KEY `FK_VEND_SEG` (`vendedor`),
  KEY `FK_SUC_SEG` (`sucursal`),
  CONSTRAINT `FK_CLI_SEG` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`dni`),
  CONSTRAINT `FK_COD_SEG` FOREIGN KEY (`codSeg`) REFERENCES `seguros` (`idSeguro`),
  CONSTRAINT `FK_SUC_SEG` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`idSucursal`),
  CONSTRAINT `FK_VEND_SEG` FOREIGN KEY (`vendedor`) REFERENCES `empleados` (`legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventaseg`
--

LOCK TABLES `ventaseg` WRITE;
/*!40000 ALTER TABLE `ventaseg` DISABLE KEYS */;
INSERT INTO `ventaseg` VALUES (1,1,31263026,2,4,'2024-02-24'),(2,3,16008592,6,5,'2024-02-24'),(3,5,29887650,7,15,'2024-02-24'),(4,4,30765888,10,6,'2024-02-24'),(5,2,42909654,15,12,'2024-02-24');
/*!40000 ALTER TABLE `ventaseg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventatarj`
--

DROP TABLE IF EXISTS `ventatarj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventatarj` (
  `idVentaTarj` int NOT NULL AUTO_INCREMENT,
  `cliente` int NOT NULL,
  `tipoTarj` int NOT NULL,
  `limite1` int NOT NULL,
  `limite2` int NOT NULL,
  `utilL1` int DEFAULT '0',
  `utilL2` int DEFAULT '0',
  `dispL1` int DEFAULT '0',
  `dispL2` int DEFAULT '0',
  `vendedor` int NOT NULL,
  `sucursal` int NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idVentaTarj`),
  KEY `FK_CLI_VT` (`cliente`),
  KEY `FK_TT_VT` (`tipoTarj`),
  KEY `FK_VEN_VT` (`vendedor`),
  KEY `FK_SUC_VT` (`sucursal`),
  CONSTRAINT `FK_CLI_VT` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`dni`),
  CONSTRAINT `FK_SUC_VT` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`idSucursal`),
  CONSTRAINT `FK_TT_VT` FOREIGN KEY (`tipoTarj`) REFERENCES `tarjetas` (`idTarjeta`),
  CONSTRAINT `FK_VEN_VT` FOREIGN KEY (`vendedor`) REFERENCES `empleados` (`legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventatarj`
--

LOCK TABLES `ventatarj` WRITE;
/*!40000 ALTER TABLE `ventatarj` DISABLE KEYS */;
INSERT INTO `ventatarj` VALUES (1,16008592,2,15000,45000,5000,20000,10000,25000,12,4,'2024-02-24'),(2,45895612,1,6000,30000,2000,30000,4000,0,1,6,'2024-02-24'),(3,45999768,2,25000,75000,20000,60000,5000,15000,2,8,'2024-02-24'),(4,24887887,3,60000,145000,45000,100000,15000,45000,6,12,'2024-02-24'),(5,23776487,2,80000,245000,20000,200000,60000,45000,10,15,'2024-02-24');
/*!40000 ALTER TABLE `ventatarj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 16:47:24
