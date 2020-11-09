-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sibim
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Current Database: `sibim`
--
CREATE ROLE IF NOT EXISTS 'administrador';
GRANT ALL PRIVILEGES ON *.* TO 'administrador';
GRANT EXECUTE ON *.* TO 'administrador';
CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED BY 'overcl0de-4DM';
GRANT 'administrador' TO 'admin'@'%';
SET DEFAULT ROLE 'administrador' FOR 'admin'@'%';
CREATE ROLE IF NOT EXISTS 'medico';
GRANT EXECUTE ON `sibim`.* TO 'medico'@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisis` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisisindicacion` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisisparametro` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisisrequerido` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisisresultados` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisistieneparametro` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaatiende` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altadeterminaenfermedad` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altadiasemana` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaenfermedad` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaespecificacion` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaestado` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaexamenfisico` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaformulario` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altapacienteseguimientodiario` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altapacientesiguetratamiento` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altapregunta` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altapreguntadeformulario` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaref_c_previa` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaregistrasintoma` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaregistro_es` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaresponde` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaresultadotratamiento` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altasignoclinico` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altasintoma` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altatratamiento` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altatratamientosugerido` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`analisisexiste` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`bajaformulario` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`bajapreguntasdeformulario` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscaranalisisxnombre` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarconsultaspendientes` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarconsultasprevias` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarcrrauxiliar` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarcrrmedico` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarformulariosxnombre` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarmedicoxci` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarpacientexci` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarparametrosdeanalisis` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarpregunta` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarrespuestas` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarrolusuariomysql` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscartratamientosxnombre` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`cargarformulariousado` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaanalisisresultados` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaractivo` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaranalisisrequerido` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultardiassemana` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarenfermedaddeterminada` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarexamenfisico` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarhistorialestados` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarhistorialtratamientos` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarresultadotratamiento` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarsegdiario` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarsintomasr` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultartratamientosugerido` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarultimoestado` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`finalizarconsulta` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`leerfotousuario` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`listadoanalisispaciente` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`listarparametros` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`modificarformulario` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugeriranalisissegune` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugeriranalisissegunpyr` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugeriranalisisseguns` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugeriranalisissegunsc` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugerirenfermedadsegunpyr` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugerirenfermedadseguns` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugerirenfermedadsegunsc` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugerirtratamientopyr` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugerirtratamientosegune` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugerirtratamientoseguns` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`sugerirtratamientosegunsc` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`usuarioexiste` TO `medico`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`cargarfecharesultadoa` TO `medico`@`%`;
CREATE ROLE IF NOT EXISTS 'auxiliar';
GRANT EXECUTE ON `sibim`.* TO 'auxiliar'@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisis` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisisindicacion` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisisparametro` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisisresultados` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaanalisistieneparametro` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaatiende` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altadiasemana` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaenfermedad` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaespecificacion` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaestado` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaformulario` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altapacienteseguimientodiario` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altapacientesiguetratamiento` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altapregunta` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altapreguntadeformulario` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaref_c_previa` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaregistro_es` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altaresultadotratamiento` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altasignoclinico` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altasintoma` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`altatratamiento` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`analisisexiste` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`bajaformulario` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`bajapreguntasdeformulario` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscaranalisisxnombre` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarconsultasprevias` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarcrrauxiliar` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarcrrmedico` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarformulariosxnombre` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarauxiliarxci` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarmedicoxci` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarpacientexci` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarparametrosdeanalisis` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarpregunta` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarrolusuariomysql` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscartratamientosxnombre` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaanalisisresultados` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaractivo` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaranalisisrequerido` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultardiassemana` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarhistorialestados` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarhistorialtratamientos` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarresultadotratamiento` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarsegdiario` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarultimoestado` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`leerfotousuario` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`listadoanalisispaciente` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`listarparametros` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`modificarformulario` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`usuarioexiste` TO `auxiliar`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`cargarfecharesultadoa` TO `auxiliar`@`%`;
CREATE ROLE IF NOT EXISTS 'paciente';
GRANT EXECUTE ON `sibim`.* TO 'paciente'@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarconsultasprevias` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarpacientexci` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarparametrosdeanalisis` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarpregunta` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarrespuestas` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`buscarrolusuariomysql` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`cargarformulariousado` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaanalisisresultados` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaractivo` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultaranalisisrequerido` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultardiassemana` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarenfermedaddeterminada` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarexamenfisico` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarhistorialestados` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarhistorialtratamientos` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarresultadotratamiento` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarsegdiario` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarsintomasr` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultartratamientosugerido` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`consultarultimoestado` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`leerfotousuario` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`listadoanalisispaciente` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`usuarioexiste` TO `paciente`@`%`;
GRANT EXECUTE ON PROCEDURE `sibim`.`cargarfecharesultadoa` TO `paciente`@`%`;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sibim` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sibim`;

--
-- Table structure for table `analisis`
--

DROP TABLE IF EXISTS `analisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analisis` (
  `nombre` varchar(90) NOT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analisis`
--

LOCK TABLES `analisis` WRITE;
/*!40000 ALTER TABLE `analisis` DISABLE KEYS */;
INSERT INTO `analisis` VALUES ('HEMATOLOG√çA',1);
/*!40000 ALTER TABLE `analisis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atiende`
--

DROP TABLE IF EXISTS `atiende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atiende` (
  `ID_consulta` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `CI_paciente` int NOT NULL,
  `CI_medico` int NOT NULL,
  `motivo` varchar(400) NOT NULL,
  `nombre_ref` varchar(120) NOT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID_consulta`,`fecha`,`CI_paciente`,`CI_medico`),
  KEY `CI_paciente` (`CI_paciente`),
  KEY `CI_medico` (`CI_medico`),
  CONSTRAINT `atiende_ibfk_1` FOREIGN KEY (`CI_paciente`) REFERENCES `paciente` (`CI`) ON DELETE CASCADE,
  CONSTRAINT `atiende_ibfk_2` FOREIGN KEY (`CI_medico`) REFERENCES `medico` (`CI`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atiende`
--

LOCK TABLES `atiende` WRITE;
/*!40000 ALTER TABLE `atiende` DISABLE KEYS */;
INSERT INTO `atiende` VALUES (1,'2020-11-03 13:30:00',84716736,66574073,'Concurrencia anual.','Control anual',_binary '\0'),(2,'2020-11-03 15:30:00',96210522,66574073,'Concurrencia anual','Control anual',_binary '\0');
/*!40000 ALTER TABLE `atiende` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auxiliar`
--

DROP TABLE IF EXISTS `auxiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auxiliar` (
  `CI` int NOT NULL,
  PRIMARY KEY (`CI`),
  CONSTRAINT `auxiliar_ibfk_1` FOREIGN KEY (`CI`) REFERENCES `usuario` (`CI`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auxiliar`
--

LOCK TABLES `auxiliar` WRITE;
/*!40000 ALTER TABLE `auxiliar` DISABLE KEYS */;
INSERT INTO `auxiliar` VALUES (37440164),(41818963),(75883683),(87666431);
/*!40000 ALTER TABLE `auxiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corresponde`
--

DROP TABLE IF EXISTS `corresponde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corresponde` (
  `CI_medico` int NOT NULL,
  `CI_auxiliar` int NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`CI_medico`,`CI_auxiliar`,`fecha`),
  KEY `CI_auxiliar` (`CI_auxiliar`),
  CONSTRAINT `corresponde_ibfk_1` FOREIGN KEY (`CI_medico`) REFERENCES `medico` (`CI`) ON DELETE CASCADE,
  CONSTRAINT `corresponde_ibfk_2` FOREIGN KEY (`CI_auxiliar`) REFERENCES `auxiliar` (`CI`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corresponde`
--

LOCK TABLES `corresponde` WRITE;
/*!40000 ALTER TABLE `corresponde` DISABLE KEYS */;
INSERT INTO `corresponde` VALUES (26282854,37440164,'2020-11-02 15:30:00'),(99491204,37440164,'2020-11-06 15:30:00'),(26282854,75883683,'2020-11-12 17:30:00'),(49424233,87666431,'2020-11-04 07:45:00'),(66639471,87666431,'2020-11-05 10:20:00');
/*!40000 ALTER TABLE `corresponde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `de`
--

DROP TABLE IF EXISTS `de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `de` (
  `ID_formulario` int NOT NULL,
  `ID_pregunta` int NOT NULL,
  `nombre_control_pregunta` varchar(40) NOT NULL,
  `nombre_control_respuesta` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_formulario`,`ID_pregunta`),
  KEY `ID_pregunta` (`ID_pregunta`),
  CONSTRAINT `de_ibfk_1` FOREIGN KEY (`ID_formulario`) REFERENCES `formulario` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `de_ibfk_2` FOREIGN KEY (`ID_pregunta`) REFERENCES `pregunta` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `de`
--

LOCK TABLES `de` WRITE;
/*!40000 ALTER TABLE `de` DISABLE KEYS */;
INSERT INTO `de` VALUES (1,1,'lblENutricion','cbENutricion'),(1,2,'lblGradoHidratacion','cbGradoHidr'),(1,3,'chkSensoriales','chkSensoriales'),(1,4,'chkHumorales','chkHumorales'),(1,5,'lblActitud','cbActitud'),(1,6,'chkVacunas','chkVacunas'),(1,7,'lblTemperatura','txtTemperatura'),(1,8,'lblFrecuenciaCard','txtFrecuenciaCard'),(1,9,'chkDigestivos','chkDigestivos'),(1,10,'lblPulso','cbPulso'),(1,11,'chkErupciones','chkErupciones'),(1,12,'chkApendiceDolor','chkApendiceDolor'),(1,13,'chkCalor','chkCalor'),(1,14,'chkDificultadesRespirar','chkDificultadesRespirar'),(1,15,'chkMeds','chkMeds'),(2,1,'lblEstadoNutricion','cbENutricion'),(2,2,'lblGradoHidratacion','cbGradoHidr'),(2,5,'lblActitud','cbActitud'),(2,7,'lblTemperatura','txtTemperatura'),(2,8,'lblFrecuenciaCard','txtFrecuenciaCard'),(2,10,'lblPulso','cbPulso'),(2,16,'lblFrecuenciaResp','txtFrecuenciaResp'),(2,17,'lblEConsciencia','cbEstadoConsciencia'),(2,19,'lblMovilidad','cbMovilidad'),(3,1,'Label17','cb_e_nutricion'),(3,2,'Label9','cbGradoHidr'),(3,5,'Label16','cbActitud'),(3,10,'Label21','cbPulso'),(3,20,'Label31','txtDieta'),(3,21,'chkCambioDieta','chkCambioDieta'),(3,22,'Label19','txtDrugs'),(3,23,'Label3','TextBox3'),(3,24,'Label2','TextBox2'),(3,25,'Label28','txtDuracion'),(3,26,'Label1','TextBox1'),(3,27,'chkMalestarConstante','chkMalestarConstante'),(3,28,'chkViajo','chkViajo'),(3,29,'Label26','txtADiarias');
/*!40000 ALTER TABLE `de` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `determina`
--

DROP TABLE IF EXISTS `determina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `determina` (
  `ID_consulta` int NOT NULL,
  `fecha` datetime NOT NULL,
  `CI_paciente` int NOT NULL,
  `CI_medico` int NOT NULL,
  `ID_formulario` int NOT NULL,
  `ID_pregunta` int NOT NULL,
  `nombre_enfermedad` varchar(160) NOT NULL,
  PRIMARY KEY (`ID_consulta`,`fecha`,`CI_paciente`,`CI_medico`,`ID_formulario`,`ID_pregunta`,`nombre_enfermedad`),
  KEY `nombre_enfermedad` (`nombre_enfermedad`),
  CONSTRAINT `determina_ibfk_1` FOREIGN KEY (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`, `ID_formulario`, `ID_pregunta`) REFERENCES `responde` (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`, `ID_formulario`, `ID_pregunta`) ON DELETE CASCADE,
  CONSTRAINT `determina_ibfk_2` FOREIGN KEY (`nombre_enfermedad`) REFERENCES `enfermedad` (`nombre`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `determina`
--

LOCK TABLES `determina` WRITE;
/*!40000 ALTER TABLE `determina` DISABLE KEYS */;
INSERT INTO `determina` VALUES (1,'2020-11-03 13:30:00',84716736,66574073,1,1,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,2,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,3,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,4,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,5,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,6,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,7,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,8,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,9,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,10,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,11,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,12,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,13,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,14,'migra√±a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,15,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,1,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,2,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,3,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,4,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,5,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,6,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,7,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,8,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,9,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,10,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,11,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,12,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,13,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,14,'migra√±a'),(2,'2020-11-03 15:30:00',96210522,66574073,1,15,'migra√±a');
/*!40000 ALTER TABLE `determina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_semana`
--

DROP TABLE IF EXISTS `dia_semana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia_semana` (
  `CI_paciente` int NOT NULL,
  `ID_tratamiento` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  `dia` tinyint NOT NULL,
  PRIMARY KEY (`CI_paciente`,`ID_tratamiento`,`fecha_inicio`,`dia`),
  CONSTRAINT `dia_semana_ibfk_1` FOREIGN KEY (`CI_paciente`, `ID_tratamiento`, `fecha_inicio`) REFERENCES `sigue` (`CI_paciente`, `ID_tratamiento`, `fecha_inicio`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_semana`
--

LOCK TABLES `dia_semana` WRITE;
/*!40000 ALTER TABLE `dia_semana` DISABLE KEYS */;
INSERT INTO `dia_semana` VALUES (84716736,1,'2020-11-03',2),(84716736,1,'2020-11-03',3);
/*!40000 ALTER TABLE `dia_semana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermedad`
--

DROP TABLE IF EXISTS `enfermedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermedad` (
  `nombre` varchar(160) NOT NULL,
  `tipo` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedad`
--

LOCK TABLES `enfermedad` WRITE;
/*!40000 ALTER TABLE `enfermedad` DISABLE KEYS */;
INSERT INTO `enfermedad` VALUES ('migra√±a',NULL);
/*!40000 ALTER TABLE `enfermedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especificacion`
--

DROP TABLE IF EXISTS `especificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especificacion` (
  `ID_analisis` int NOT NULL,
  `nombre_indicacion` varchar(90) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`ID_analisis`,`nombre_indicacion`),
  KEY `nombre_indicacion` (`nombre_indicacion`),
  CONSTRAINT `especificacion_ibfk_1` FOREIGN KEY (`ID_analisis`) REFERENCES `analisis` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `especificacion_ibfk_2` FOREIGN KEY (`nombre_indicacion`) REFERENCES `indicacion` (`nombre`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especificacion`
--

LOCK TABLES `especificacion` WRITE;
/*!40000 ALTER TABLE `especificacion` DISABLE KEYS */;
INSERT INTO `especificacion` VALUES (1,'Aseo','El paciente debe concurrir higienizado al an√°lisis.'),(1,'Ayuno','El paciente debe realizar ayuno de 8 horas.');
/*!40000 ALTER TABLE `especificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `nombre` varchar(90) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES ('dasdsadasdasd'),('De alta');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examenfisico`
--

DROP TABLE IF EXISTS `examenfisico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examenfisico` (
  `ID_consulta` int NOT NULL,
  `fecha_c` datetime NOT NULL,
  `CI_paciente` int NOT NULL,
  `CI_medico` int NOT NULL,
  `ID_signo` int NOT NULL,
  PRIMARY KEY (`ID_consulta`,`fecha_c`,`CI_paciente`,`CI_medico`,`ID_signo`),
  KEY `ID_signo` (`ID_signo`),
  CONSTRAINT `examenfisico_ibfk_1` FOREIGN KEY (`ID_consulta`, `fecha_c`, `CI_paciente`, `CI_medico`) REFERENCES `atiende` (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`) ON DELETE CASCADE,
  CONSTRAINT `examenfisico_ibfk_2` FOREIGN KEY (`ID_signo`) REFERENCES `signo_clinico` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examenfisico`
--

LOCK TABLES `examenfisico` WRITE;
/*!40000 ALTER TABLE `examenfisico` DISABLE KEYS */;
INSERT INTO `examenfisico` VALUES (2,'2020-11-03 15:30:00',96210522,66574073,1);
/*!40000 ALTER TABLE `examenfisico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulario`
--

DROP TABLE IF EXISTS `formulario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formulario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(90) NOT NULL,
  `xml` mediumtext NOT NULL,
  `v_previa` mediumblob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario`
--

LOCK TABLES `formulario` WRITE;
/*!40000 ALTER TABLE `formulario` DISABLE KEYS */;
INSERT INTO `formulario` VALUES (1,'Formulario para la fiebre','<?xml version=\"1.0\" encoding=\"utf-16\"?>\r\n<ListaControles xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Controles>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>302</X>\r\n        <Y>67</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbENutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p14</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Obesidad</string>\r\n        <string>Anorexia</string>\r\n        <string>Caquexia</string>\r\n        <string>Peso normal</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>50</X>\r\n        <Y>68</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>198</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblENutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p14</Tag>\r\n      <Text>Estado de nutrici√≥n:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>302</X>\r\n        <Y>113</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbGradoHidr</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p16</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Hidratado</string>\r\n        <string>Normohidratado</string>\r\n        <string>Hiperhidratado</string>\r\n        <string>Hipohidratado</string>\r\n        <string>Deshidratado</string>\r\n        <string>Rehidratado</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>50</X>\r\n        <Y>115</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>213</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblGradoHidratacion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p16</Tag>\r\n      <Text>Grado de hidrataci√≥n:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>379</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkSensoriales</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text>¬øEl paciente presenta trastornos sensoriales?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>431</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkHumorales</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p8</Tag>\r\n      <Text>¬øEl paciente presenta trastornos humorales?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>752</X>\r\n        <Y>113</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p11</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Coma</string>\r\n        <string>Otro</string>\r\n        <string>Apat√≠a</string>\r\n        <string>Exitaci√≥n</string>\r\n        <string>Desmotivaci√≥n</string>\r\n        <string>Desinter√©s</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>506</X>\r\n        <Y>115</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>82</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p11</Tag>\r\n      <Text>Actitud:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>531</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkVacunas</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p6</Tag>\r\n      <Text>¬øEl paciente fue vacunado recientemente?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>449</X>\r\n        <Y>24</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>18</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblGrados</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Text>¬∞</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>752</X>\r\n        <Y>25</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtFrecuenciaCard</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p15</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>411</X>\r\n        <Y>24</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>35</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtTemperatura</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>50</X>\r\n        <Y>26</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>136</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblTemperatura</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text>Temperatura:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>506</X>\r\n        <Y>25</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>209</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblFrecuenciaCard</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p15</Tag>\r\n      <Text>Frecuencia Card√≠aca:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>751</X>\r\n        <Y>66</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p13</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Fuerte</string>\r\n        <string>Filiforme</string>\r\n        <string>D√©bil</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>579</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkDigestivos</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text>¬øEl paciente presenta trastornos digestivos?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>506</X>\r\n        <Y>68</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>70</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p13</Tag>\r\n      <Text>Pulso:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>172</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkErupciones</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Text>¬øEl paciente manifiesta erupciones cut√°neas?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>329</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkApendiceDolor</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Text>¬øEl paciente presenta dolor en el ap√©ndice al tocarlo?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>227</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkCalor</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Text>¬øEl paciente se expone al calor? / ¬øEstuvo expuesto?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>278</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkDificultadesRespirar</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p2</Tag>\r\n      <Text>¬øEl paciente presenta dificultades para respirar?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>482</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkMeds</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Text>¬øEl paciente toma medicamentos?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n  </Controles>\r\n</ListaControles>',_binary 'ˇ\ÿˇ\‡\0JFIF\0\0`\0`\0\0ˇ\€\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ˇ\€\0C			\r\r2!!22222222222222222222222222222222222222222222222222ˇ¿\0\‡\–\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0\0}\0!1AQa\"q2Åë°#B±¡R\—\$3brÇ	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\·\‚\„\‰\Â\Ê\Á\Ë\È\Í\Ò\Ú\Û\Ù\ı\ˆ\˜¯˘˙ˇ\ƒ\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0w\0!1AQaq\"2ÅBë°±¡	#3R\br\—\n$4\·%\Ò\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÇÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\‚\„\‰\Â\Ê\Á\Ë\È\Í\Ú\Û\Ù\ı\ˆ\˜¯˘˙ˇ\⁄\0\0\0?\0\ı∫(¢∫è(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(£æ\0bOe—áˇ\0ûrˇ\0ﬂ∂ˇ\0\nWE(\…ÏÇä@\À#Å\ÍPÅEi≠¬ä(¶ ¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ê≤Ø\ﬁ }M7Õè˚\Î˘\–4õE3Õè˚\Î˘\—\Ê\«˝\ı¸\È\\|Ø∞˙)ûl\ﬂ_Œè6?\ÔØ\ÁE√ï\ˆE3Õè˚\Î˘\—\Ê\«˝\ı¸\Ë∏ræ\√\Ë¶y±ˇ\0}:<\ÿˇ\0æøùW\ÿ}QLê¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¨?ˇ\0hG§ΩŒù©=ì\√\ÀmÖ$ﬂí\‡q¯V\ÂA{i˝§ñ\”n\Ú\‰;N\\\“eE\Ÿ\‹\Â\·Òù•é•&ãurn\Ó≠√´\‹3¬≠#™ó#\ S∏qù∏»©\·\Òóô2$ö=\Ï(]U§ròPÀ∫3\√g\Ê˝;\‚Æ\À\·]>]N{\„% ¥\·∑ƒ≤\‚2ÃªKc\◊á|f•õ@µxdT2n>[∑E⁄Ωø:^\ıãºy<{mmß˝¶\ÛOû—§X\ﬁ\›.%â\ ˘¡\‹[j˝”ù\ƒv\ı©é-d¥7v\ˆr\Õnñ\Àq$¢h\¬!gh\¬\Ó-É\Û#r03ö[OŸÆìΩ\‘\˜or#ày\ﬁyfÑ†\‡FOE\…n£ú\ÛW[¬∂\rc%ØôtëƒÜO7\Á7iÅ\ı\‹\ƒ˙{Q®^^ù\„s®\ﬁB\—\ÿH∂R∆É~\Ù%eiåX\‡\Ú3\ŒE[ü\∆B\◊Et˘\ﬁ;dgñS$h´â^ 2\ƒuh\œ\–uß/Ç¥\‰É\ [õ\py\Á¸Âåû`l\„\Ô\‰sRè\È\Àc=®í\Ë,¡s\'õóeyC\ı\ﬁ\‰\Ûû\‘k`n,h:\‚k\ˆ\ﬁ¡l\Ò\¬˚Å,\Íp\Í\≈J\Nzg#ä÷¨\Ì\'FáGÉ…∑û\ÊD\À1Iø,Õ∏±>π&¥jå›Ø†QE(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0µ¶ˇ\0\«¯ˇ\0Æm¸\≈mV\r§\…ot$p\€v¿œ•hj\€\”O˚\‡\÷3NÁ•ÜúU;6?Sˇ\0èˇ\0y\Ù!\\ÃñSæØ\‡ªuÖiÉú1Áû∏\Ó;¿\Á≠n^_\√=´G}ƒÆ2§t \’\n®-50\≈I9+0¢ä+Cê+Ç“µK\»!æ\’&:\Ì\√A\Êë\√F∂≤~\®@\›\Ùœ°Æ\ˆ©ˇ\0fZg5áï˛åƒíõèv\‹y\Î÷ìE\∆I-N`x˘\"\÷%\”\Ó\ÏV3∞î\«9v*o`¿\n\F\Ïé{V¨:\ı\Í\≈ø\“\÷\÷IÑå™∑\"AµSx9\n9=\«\ÔVõ\√\⁄c\ÍR_¥fê\Íe-âI1\Ánq\∆qö¨|!¢õ%¥h&hñO4πî∂v\Ì\∆\Ì\Ÿ€∑çπ\∆8\≈/z\≈^åx˛!\√&¢÷¢\ƒmXãg\Œ;∑à¸\Ãm€çΩ∑gØjµä\ı)\ˆ€¶Ñø\⁄¿≠πºLe\Óﬂ∑Ø8€éΩ\Ò\Õiipf[y1˘e\Úl#n\Ã\Ï\Œ\›\€x›å˚\”\Ó¸5•_.&ÇL\Â~h\ÊtaµvÅï \„w\ÔF°xv0µo\Z6â$\√\Ïq∂w)ü\ÊDUBJÖC˝\Ó¯µkj´u®kiê\Í\ÿ\≈\ˆvù\ﬁ\ﬂhíB\0`prx\Ó)o|!¢jæ\—k\'Õù\¬9\‰@¿Ä!Xd|´¡„äπ™h∂:\¬D.\“]\—\Â\…\œÆzÄ\»A¡\Ó3\Õbºz¯≤M/P”¥π=D\»R)Ø\"ìfrÄïU r9\À/=3“´^x≥Wπ—º\€m$@\ÕmÃí∞L1\»\ÿBﬂòù≠ë\∆rx≠\∆\éà\◊\”GF∂\Ú¸µéwT˘TïA\ÓA4\Îü\nh\˜ijì[9[hñ\¬\Ã\Í\n/\›\rÉ\Û`\Ú3úh\‘|\–\Ïcjû2}%6èwõô\˜©õ#çÇí°Pûû∏r’°/ân¢¥\‘/Nñ¢\ ›û8%k†Æ≤yd\∆W\Ê\Œ1∏ê:g\0\ÿ\‘<\'£jjV\Í\ﬁB	ê∞Kâv\ÛñkÇy¡\‚ù\'Ötâ^\Èö	su\À\‚\‚@\ÓJ\0\ﬂ!,%pI£Pº;áuπµ\›=.\⁄\À\ÏÀóGR\‰ïum∏¡U8\„9 jŸ™\Zfçe§E\Â\Ÿ,®ü1\√\Ã\Ôí\«$ù\ƒ\‰ìﬂ≠_™3væÅEP\"≈á¸E¯ˇ\0#[ïÅk*Cu\»HPNH\ˆ>ï©˝•iˇ\0=˛˝∑¯V3NÁ•ÖíT\ıe∫*ß\ˆïß¸\Ùo˚\ˆ\ﬂ\·G\ˆïß¸\Ùo˚\ˆ\ﬂ\·Qfts«πnä©˝•iˇ\0=˛˝∑¯Q˝•iˇ\0=˛˝∑¯Qf\Ò\Ó[¢™iZ\œFˇ\0øm˛iZ\œFˇ\0øm˛Yá<{ñ\ÍΩ\˜¸x\\\◊6˛T\œ\Ì+O˘\Ë\ﬂ\˜\Ìø¬°ªø∂í\ŒdGbÃÑ±π8˙PìîmπôEWI\„Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@V\'à\ıõç\";!m\ˆ\˜3\˜\ﬂ\\cPõ\Ô\0y˘q”Ω&\Ï4õvF\›Öo\‚[Hí\ŒF\Í\—o.FTY≥\Õà~\‹ëéqìê*;\Ë\˜±\Ÿ\Óù\·ñ\Ï\‚8\ﬁ\'\„\Ê*7∏\\ëÅúd\Ù\ÕC\Âóc°¢π\≈\Ò¶í\˜\ÛDó*m†Ä\…$\€[Æ\†(\«\Ã	<\ŒOJ\“]wM}µQt>ƒπ\›!VqÇ§g9\„\Œh∫.Üç\Õ\€x\◊Iíû{ÅF\·\·à˘nKñaå®π\Œ\0\ÔZZ¶ø¶h¶®]|\‡\∆?ëõ!qì\ÚÉÄ7MA\ \Ôk\ZTV.©\‚ç;K\”\‰ªy\Z@¨\ âb¨á±\"õˇ\0	^îfìh!ÅdÛô£ê\» §ó\r\À`\‡\Á8\0\Z.Éñ]ç\ +_\È\—\€5ÿπF∂\ÚDâ\Úøò\ÃX®]ªsúåcÆ{RA\‚\›!Öår\ﬁ\∆..\—U\ \Ââ^ªx˘Å_õ\Ò÷ã†\Âócväd2§\Ò,±\Ákt ï?ë\ÊüLAEP ¢äí\“\ﬁùARh√®â\ŒÆVìvW.ú9\‰¢GEkˇ\0diˇ\0\Û\Î\ÂG\ˆFüˇ\0>±˛Uü¥:æ¶˚ôVø\ˆFüˇ\0>±˛Tdiˇ\0\Û\Î\ÂG¥©æ\ÊEØ˝ëßˇ\0œ¨ï\Ÿ\Z¸˙\«˘Q\Ì\ÍoπëEkˇ\0diˇ\0\Û\Î\ÂG\ˆFüˇ\0>±˛T{@˙õ\ÓdQV\ı8,å∞¬ä\·\„\√/\\™U\∆\\\∆i:n\◊\n(¢®\ƒ(¢πKo_$±O©[YC¶\Œ\Û*I\Ï\Ú å;d*8\ƒg°<ëJ\Â(∑±\’\—X◊æ#≤±æ\À\"àëß|\∆@B1\ŒDÉ•$û-\–\‚Ç\⁄y/∂\«qª\À&\'\»\⁄p≈Ü2Ä	lE\–ræ\∆\’»¶IÉ$Öbß*G#Ø_\ÁO¶ ¢ä(QE\0QE\0QE\0QE\0QO≥ÇçQhíUπ\‘ù\…\ÎZˇ\0Ÿñ\Û\„mˇ\0~ó¸+9N\Œ\«U,7¥è5\ÃZ+k˚2\√˛|mø\Ô\“ˇ\0ÖŸñ\Û\„mˇ\0~ó¸){O#O©ˇ\0{\1h≠Ø\Ï\À˘\Ò∂ˇ\0øK˛fXœç∑˝˙_\£\⁄y\‘ˇ\0Ω¯¥V\◊\ˆeá¸¯\€ﬂ•ˇ\0\n?≥,?\Á\∆\€˛˝/¯Q\Ì<É\Í\ﬁ¸Z+k˚3Oˇ\0üo˚\Ùø\·T5m8YoÇP˘ç’ë8\ﬁ9£\⁄y	\‡\ÏØ\ÃT¢ä+Sà(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0+\ƒ:=Œ¨ñf\÷K%í\⁄c&/-å\Ò∞(Àç°óüõ9\œj⁄¢ìW\Zm;£ê∏\ï\ı\›∆õq%\ÂÑZ\\Ôgh\Ò°\˜a1\'\0ém√©\0Uyº\ry5ÂúíjV\œ\r¨±∫+\€1e	1êm;§ÉÜ89\«nï\€\—Eë^\“G û\‘W\ÀŒ≠	˚$Ió˙/\‹\Í\Í_\Ê˘èÀÉå{b¥FÅr\⁄\÷\“\ﬁ\∆o\Ê∏m:√ÑáV\\&s¥mQå\Áﬁ∑®¢¿\Ê\Ÿ\√^¯\n\ÁP\ƒ\◊\Zçª›ºí4\Õ\‰H®U\ˆ\‰*¨ÄÇ6\ÒíG®5\–\Í:æUDòF´a=ò\ \Á˝`@^\€:w\ÕlQEï¨rzúå˛Ωï\ÁQ™D >k@Ü\‹\ÂB¨K\ﬂ0Ω85boM-º@^¢O\œ*∏ã+æI\÷e\„=\\ûs\‘WMEA\œ#öπ\\ˆ•r\ﬁæß\ˆî*•$˚1\Ú∑Üc\˜7gnån\œ|\“[¯VH\‚õÕΩI&ú\ƒ\Ú∏ãh.∑33¿%\lu5\”QEÉùåÑJ\"Q3#I¸E®?Å\'˘\”Ë¢ô!EP ©\Ù\ÊU\‘‘≥˚ó\Í\⁄JÇò\Ò\«&7¢∂:n•%ucJs‰íë\“y±ˇ\0\œDˇ\0æÖl\Û\—?\Ô°\\\œ\Ÿmˇ\0\ÁÑ_\˜¿£\Ï∂ˇ\0\Û\¬/˚\‡V~\Ã\Î˙\‚\Ït\ﬁl\Û\—?\Ô°Gõ¸\ÙO˚\ËW3\ˆ[˘\·˝\(˚-ø¸\ã˛¯{0˙\‚\Ït\ﬁl\Û\—?\Ô°Gõ¸\ÙO˚\ËW3\ˆ[˘\·˝\(˚-ø¸\ã˛¯{0˙\‚\Ït\ﬁl\Û\—?\Ô°Gõ¸\ÙO\ÃW3\ˆ[˘\·˝\(˚-ø¸\ã˛¯{0˙\‚\Ï_º¥¥¥\”\Â˚9y#˛,\‡QË£úŸ™µ∑ÅX2\√#°\n*J∏«î\Á≠W\⁄;\ÿ(¢ä£\0Ær\€¡ö]∂ù{Z\€%\Â\‰sG-\‰p*\»DÑÁûßØ\È]¨Rì[É¯B\ˆ\Èndæ\‘-g∏ùX6m?w\ F£\Â›ú~\Ô\◊<\EGÉu}<[C´\ƒ–Ωµ\Œ¯«î\«8ãsí§d\„qnΩ:WgEC\ˆíµà≠\“H\„\Ÿ##`êõTå/`y98\ÔR\—E2ä(†ä(†ä(†ä(†ä(†\Ÿ\œ\ræ¶è<±ƒ¶ùÇå\ÓN9≠o\ÌM?˛\Ì\Ô\Úˇ\0çcQY\ w:©by#\Àcg˚SOˇ\0ü˚_˚¸ø\„G\ˆ¶üˇ\0?\ˆø\˜˘∆±®•\Ï¸\Õ>π˝\”g˚SOˇ\0ü˚_˚¸ø\„G\ˆ¶üˇ\0?\ˆø\˜˘∆±®£\Ÿ˘á\◊?∫lˇ\0jiˇ\0\Ûˇ\0kˇ\0ó¸h˛\‘\”ˇ\0\Á˛\◊˛ˇ\0/¯\÷5{?0˙\Á\˜Mü\ÌM?˛\Ì\Ô\Úˇ\0çf\›…•\«i0¥û\€ÃöTf	(%é\Ò\€?^=\ÕAE\ÃOukQZúAEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPE\œxü\ÏØ&õo©K\Â\ÈìL\À9i\n#∂√±\ÒÚìü©\0w§\ J\Ï\ËhØ=\”u©m¢h4\ÂK+Kg∏ñTíQt°cH\€llßÅ\Û2q\ÕEß¯øWΩâ\Ìßø\”\Ìdë\ˆπ£]Å|∞\·Yrã8ä\\»ød\œG¢º\˜B\Ò\Ïv∫L\"\Ú\ÃE\ZY€õFRfúHàLä\Ÿ\Ë7\«\Óûj\ÁâuK¶\’≈òΩ¥Ço,áŸù}>\ÈT\ÓSûÉ\∆F\Êù\≈\Ï\›\Ïv\‘W\‡\ﬂ\Í\Z\Ì¸\Ò\ﬁD™Ü/9\‘SÕçø,å[\ÍB\Ù\ÈY\ˆZ¶ßekk\«\Ÿ\ÓarìA\Z\∆C&%e¡9˘â\‡\Áó6¡\Ï\›\⁄\Ïz\Á6Z∆´s´ááV\”Ê∏ªÜ\’|\»a,∞á2±Rªπ#r3\‹T\≈z∂ß~\˚x-\≈\Ã\« çAô∂ HN{i\Í1E\«\Ï\Ÿ\È¥WúX¯\◊TΩû\‚wc\nJ\—ndçv¿Æ\\eîHs\˜@äúûE\\ø\’&πê\ÿ˝øMÖo#âeø*LN<∂b\Ã>\ˆ8\Á¶z\—Õ•\√Ÿ¥\Ï\Œ\Óä\‚t\Ô\Îó≥˘∂q\Ÿ3\√\ƒ\"$í\Òñ\ﬁ<\0p@\«C]ú;åñëdm£.£é:Å\ÔM;ë(∏\Ó>ä(¶HR*\Õ,\Î´1R\«sm\0ßΩ-Y\”\‰(ø\ı\≈ˇ\0\Ù$©ì≤π≠©M&G\ˆ\rC˛xCˇ\0ø˙\‘}ÉPˇ\0ûˇ\0\ﬂ\Ô˛µo\—Ys\»\Ô˙≠>\∆\ÿ5˘\·˝˛ˇ\0\ÎQ\ˆ\rC˛xCˇ\0ø˙’øE\Ú™\”\Ï`}ÉPˇ\0ûˇ\0\ﬂ\Ô˛µ`\‘?\ÁÑ?\˜˚ˇ\0≠[\ÙQ\œ ˙≠>\∆\ÿ5˘\·˝˛ˇ\0\ÎQ\ˆ\rC˛xCˇ\0ø˙’øE\Ú™\”\Ïsì[\ﬁ[G\Ê\Õb0 §¨ô<ê==\È*\Â\‰\◊3i\”}¢\€\…\Ÿ$K\˜≥π∑åë˛\œLgüaT\ÎH6÷ß&\"úa$¢QEY\ÃQ^wk\‚\ÀMOT\’\Z\∆\ÏA{\“[\…6\ﬂ&FÖIà&üô\ÿ\‰îõ±qãñ«¢Q^}™\ÍW\‚+w}oOΩEÇ\Î\ÃE\ÚJB##y¡\˜\‚ùk\‚KΩ2\÷\Ú+≠F\ﬁYw\‹4;\◊i\‹.Jl\ÍsÄGÑRæ∂≥vπ\ﬂ\—\\-é´y®¯û\ﬁIu;%\Ã[`D˘≠±\".\Ê\‰\Ò\Ì\Œk∫¶ù\’…îyBä(¶HQE\0QE\0QE\0QE\0òï\‰é8P3π¿\ÿ	˛ï7\ÿ5˘\·˝˛ˇ\0\ÎQiˇ\0!o\˜õˇ\0Ajﬂ¨ß&ûáu\nú.\Ã∞j\Û\¬˚˝ˇ\0÷£\Ï\Zá¸\á˛ˇ\0\ı´~äûy}Vüc\Ï\Zá¸\á˛ˇ\0\ı®˚°ˇ\0<!ˇ\0ø\ﬂ˝jﬂ¢éy\’i\ˆ0>¡®\œ\Ô\˜ˇ\0Zè∞j\Û\¬˚˝ˇ\0÷≠˙(\Áê}Vüc\Ï\Zá¸\á˛ˇ\0\ı©ì[_[¿\ÛI[K6%\…¿¸+¢¨´…Æ§±øé[a\Z$.7\Ó\»sé6˚cÆ{˙\—\œ!<5;lP¢ä+s\Ã\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\nd\–\≈qC<I,N0\»\Í\Ó\r>äAù¨1§q[C\ZF•QR0É\‘\ÿTK§\È\…í∫}™≈ê\€*#êqé¢ÆQ@]ï\÷\¬\Õfäe¥ÄK\Ïç\ƒc(æÄ\ˆ‘≤\Ÿ\⁄\œ2M5¥2Jüq\ﬁ0YyÉ€ê\·S\—@\\ÜKky%íx¢yN\È)s\ÍH\ÎG\Ÿ-ÅR-\‚˘>\Ô\»>^s\«\„\ÕMEr¥Z}î.^+;xÿ∂\‚R%ûy\È◊ì˘\”FóßÉ!†\ wI˚ï˘\ŒA\…\„û@?Ö[¢ê]ïïßïüjl˘ã\‰Æ\'<\Ò\œ>¥\Èt˚)¢1Kgo$g\0£\ƒ8\È\∆;v´4S≤/≥[û∞E\‘∏:ÅÅ˙Tàã\Z*\"ÖUU\0\nZ(\0¢ä(R\«,\÷\˜+4*åB2‰é§\ÈIE&Ø°Qìã∫,ˇ\0k^ˇ\0\œ˚\Ïˇ\0Ö\⁄◊ø\Û\¬\ﬂ˛˚?\·U®©‰â∑\÷j\˜,ˇ\0k^ˇ\0\œ˚\Ïˇ\0Ö\⁄◊ø\Û\¬\ﬂ˛˚?\·U®£í!\ıöΩ\À?\⁄◊ø\Û\¬\ﬂ˛˚?\·G\ˆµ\Ô¸\∑ˇ\0æ\œ¯Uj(\‰à}fØr\œ\ˆµ\Ô¸\∑ˇ\0æ\œ¯Q˝≠{ˇ\0<-ˇ\0\Ô≥˛Zä9\"Y´‹í\Ê\ˆ\Í\Ó%\„ÖT≤íUâ<0?“£¢ä§í\ÿ\Œu%7yQL\ÃB# \ı\Ÿ\‡\Ÿ\Zy1\ÏãZ\ÌLzq\≈KE*ç2¡aHEç∞â	eA\ÌRzê1\∆r:V”¨]\˜Ωïª6\‚˚åJN\‚0ON§œµY¢Äª+g\Ÿy≤K\ˆ;2Oæ˛R\Â∫u8\Á†¸™\ÕPEP ¢ä(\0¢ä(\0¢ä(\0¢ä(\0$SE4A#Ü\' è\ÎVµØÁÖø˝\ˆ¬´QR\‚û\Ê–≠8+EñµØÁÖø˝\ˆ¬è\Ìk\ﬂ˘\·oˇ\0}ü\™\‘R\‰â_Y´‹≥˝≠{ˇ\0<-ˇ\0\Ô≥˛k^ˇ\0\œ˚\Ïˇ\0ÖV¢éHá\÷j\˜,ˇ\0k^ˇ\0\œ˚\Ïˇ\0Ö\⁄◊ø\Û\¬\ﬂ˛˚?\·U®£í!\ıöΩ\À?\⁄◊ø\Û\¬\ﬂ˛˚?\·Q\‹_\›\‹\€KEâ©!è¸**(\‰à}fßp¢ä*\Œp¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢äÇ\‡˝\⁄ï›â\Ë¨=OUèL¥\r\˜§,v\‡3≥å\0H˛t\Àeo&ä≥º¥öDë\÷;î\nv°@Oˇ\0|c\Ëi\ÿ\”Ÿ≥~ä\Œ¿LÑ†\ÀaáZ\ƒD!!páp˘æû¥X\\Üçó\⁄J®Kyl\‰ÖG 1¡\«L\”\'‘≠-ïZ[î§XÜ?3EÉŸ≥^ä\œYë\ÀëX©\√\0\Ÿ¡\˜¶˝¶\„\œL\‰æ:ûÇã!•Eg}¶,∞\Ûì)ç\√p˘s\ÎT5\rr\€NãÃêK\"ü,\'ïÉ\Êb\0^z\Òü•fŒÇäÀÇ\Ì&HéJ<ãπcr7c\Èöd∫ï¨-{ÑÃ≤˘)Ü\Œ_\„\Ù4X=õ5\Ë¨\Ùô%œó\"æ”Éµ≥É\ÈM˚T;˘\È¥§\Ô“ã!•Egà\¬\Ó3 \ŒKîy\Ò¸üΩ_\ﬁ}œõ\Ô}=h∞r\Z4V\\7q ëù\€\ZAïç\»\r˘fù\ˆòJ3â\”j˝\Ê\ﬁ0>¥X=ô•Egy\Ò\ÓE\ÛWså®\›\À}=iL™Æ®\“\0\Ì\—Krh∞r\ZVL⁄Öµª€§≥®ká	\œ\ﬁ$?E4ê\Í0MèøbG#FLÑë‘ézQ`\ˆl◊¢≥¸\‰\Û~b\Ô#!wrGÆ)øjÉc?\⁄#⁄ßim\„\0˙Q`\ˆfï\Œ\Õ\‚x5U∞hn\Œ]c7,ƒÆ\√*•ΩNGlr+W\'\‘\—`t\⁄.\—T≤}M>¶ã!vä•ì\Íh\…\ı4X9¥U,üSFO©¢¡\»]¢©d˙ö2}MB\ÌK\'\‘—ì\Íh∞rh™Y>¶åüSEÉêªER\…\ı4d˙ö,Ö\⁄*ñO©£\'\‘\—`\‰.\—T≤}M>¶ã!vä•ì\Íh\…\ı4X9¥U,üSFO©¢¡\»]¢©d˙ö2}MB\ÌK\'\‘—ì\Íh∞rh™ çÿê™2~î’ù\‘\ƒ\Ú[]G≤Ä\Ô\‰\‡sI\Ÿ\rRm]\Z4QEAEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPT\ı)çΩ¨ìà\⁄C\Z3\ÏA\À`gﬁÆS$è\Ã\«8\≈E§\Ó\œ<2.ø·•ä¡Ü£<wIsp∂sò@,\≈\ ,Äå2\Áú˙\ı≠MO∫ä\ˆ\÷i,n-\"Ü\„+s{\ˆó\À4D≈â\«\ \‹gå{\◊T-UFÅ\Ùøg\ﬁ˝)\Ël\Í#\Ãa–ØØm.\Â≤\“\Ì¢f7\”yäZ\Ï4\ﬂtÇ1¿S\˜≤3éŸ´\ZGÜØ\Ï~\»nth.Q%-%ù?\—3 p\„j\„8˛\ËÆ:◊£`:6?\n>\Œ?Ω˙RI!∫\◊\–\Ûi|\'¨6∑ir1´ÉπZ,√âY\œ,•ÜApå\Ù59\Ñê•ºë\Èñ\œ\"ò\‰ù~_\ﬁ:Õª$û§)n\n\Ù/≥è\Ô~î}ú{\Ù°E uÆpæ\Ó•£\ÍW2ﬁå)è\À.Xô∑g»°è~\\ì\œ\„Q7É≥íg¿nZ	¸åô|\›\»\Ÿ\ı\–\ˆ\È]ˇ\0\Ÿ\«\˜øJ>\Œ?Ω˙Qe†ΩÆ≠ûgÑu)u´©n\Ï\"˚<\Ú/úw«∂P.˛\Ë\0ë∞7\ﬁ$\ˆ˙\Ë\≈\·Iæ\\ñ6\Ìm\ƒm0R®ãs3\;ax\˜\≈wg\ﬁ˝(˚8˛\˜\ÈBI\r÷π\Ê\÷\ﬁ\÷\"◊¥˚ó_\›\«\‰í\Í\—~\Ë\'\ﬁLï/É\œ\n@9\Áù\·=N\—pt\Àc7QIr¥l\Ÿ‘∂\ÂQ∏\r\ r\ﬂ1¡\ˆØM˚8˛\˜\ÈG\Ÿ\«\˜øJ9P{cÉüáµ=6Y\'ÄYµ\‘¨lØ˝\‡∞Ä\’}\œsT\Ù/\ﬂ@±«®Z°Ån\"gâå%b∏-µAÂóñ\À˝+\“>\Œ?Ω˙Q\ˆq˝\Ô“ã \ˆ€ûk{•jq\€\€\«y¶A,1<6\Èúqâ∑s\«\0åp\ZΩc\·˚ª[\€9•—≠fè9ç¿\r?\˜¨ˇ\0/\¿|Ω\◊+º˚0=[\Ù£\Ï\„˚ﬂ•	$≤güE\·ΩB;´m˙uºíoÅñ˘•\ÌU,Äu\‰gßq\ÕU∫\]\ÍiP\≈ekm\‰[õò\”\À˝¸à_vCÇ¨~`r\√\Èg\ﬁ˝(˚8˛\˜\ÈG*lyº~\’aº\—&Keim\’VYeí&X\‘JÕ∑R∞x\‡søw•\Ã˛([√¶Au¢*]<Ä5Æ\›€∞1ûs€Øz\Í~\Œ?Ω˙Q\ˆq˝\Ô“ã!:ßù\«\·˝bCe%∆ój^\ ;hc\r*∏o-fR˛\‹»≠éºz\’}¡∑kpS\”!˚!ï$xù¢eb\"ëI⁄†¨Ωâ\ÓOß¶}ú{\Ù£\Ï\„˚ﬂ•®~\ÿ\Û;O	\Îp\Î6ó,\Ÿ?Ω-\»VBÑ\Ì2`∞<+`\Á=jú^\r’Üùs\ÈÄ3Iâ\Z\Àï]Y∂\ÿG\Ã8#=\Ûëä\ıè≥è\Ô~î}ú{\Ù£ï€ú\ıÆõr\«H˚v\”\ˆKoù#?ª\Û∞†Sèõw˙V\’O\ˆq˝\Ô“è≥è\Ô~ïWF|ËÇäü\Ï\„˚ﬂ•g\ﬁ˝(∏s\"\n*≥è\Ô~î}ú{\Ù¢\·Ãà(©˛\Œ?Ω˙Q\ˆq˝\Ô“ãá2 ¢ß˚8˛\˜\ÈG\Ÿ\«\˜øJ.»Çäü\Ï\„˚ﬂ•g\ﬁ˝(∏s\"\n*≥è\Ô~î}ú{\Ù¢\·Ãà(©˛\Œ?Ω˙Q\ˆq˝\Ô“ãá2 ¢ß˚8˛\˜\ÈG\Ÿ\«\˜øJ.»Çäü\Ï\„˚ﬂ•g\ﬁ˝(∏s\"\n*≥è\Ô~î}ú{\Ù¢\·Ãà(©˛\Œ?Ω˙Q\ˆq˝\Ô“ãá2 ¢ß˚8˛\˜\ÈG\Ÿ\«\˜øJ.»Çäü\Ï\„˚ﬂ•g\ﬁ˝(∏s\"•\¬-•E˚ÃÑ ≠\\\Í\Õ}aof∫}\‘l$àóê«¥m`OG\'∑•/\Ÿ\«\˜øJQ\›•LíeF∑*iu&¢ä(9¬ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä*)ùón”å\–4Æ\…h¨´˝Z\ﬂKµ7W\◊I\0Ö.¸ûïÜøc™67\—\Œv›áÆ›ªø-\À˘\—b˝õ\‹Ÿ¢™yØ˝\Í<\◊˛\ı;ëñ\Ë™1]˘\Òâ\"ê2FG±¡˝i^\‰\∆yÇBåê2OAEÉëóh™ûkˇ\0zè5ˇ\0ΩEÉëñË™ûkˇ\0zè5ˇ\0ΩEÉëñË™ûkˇ\0zè5ˇ\0ΩEÉëñË™ûkˇ\0z£ö\[\«\ÊM(D\r«¶I¿˝MF_¢™yØ˝\ÍéK¡	åI(S#lLˇ\0`ú~Üã#/\—U<\◊˛\ıR≥\◊luâ‡≥øÜy`8ï#`J\—a˚6lQTc∫\Ûw\Ïê6\∆*\ÿ\ÏGjß©¯Ü\√G\Úˇ\0¥o\‚∂\Ûs≥\Ã8›éø\ÃR∞{6Õ™+>\ﬁ˝.\ÌcπÇeír8\ËG≠=.àÆíFVÇ)\ÿ\\åªET\Û_˚\‘yØ˝\Í,å∑ET\Û_˚\‘yØ˝\Í,å∑ET\Û_˚\‘\”rU\’\Z@˛\Ë$d˝(∞r2\Ìï®j\ˆ\⁄U∑\⁄/\Ó„∑á!w\»p2{T\Ò]â\·I°ïdç\‘2:êC–ä,?f\À\‘UO5ˇ\0ΩGöˇ\0ﬁ¢\¬\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*ßöˇ\0ﬁ£\Õ\ÔQ`\‰e∫*°ô¿$æ\0\ÍMA´k4\…\Z_[ª1\0*»§öVFiQEQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0SPö;kvûV\€H\Œ\Á\–ìV\Í\·\Ûói\nTÇnÑPTlûß\r™\\\‹M\·\ÿ%\ÛfÜ\Á\ÌârV\ÕÃ∞F\Œ\≈IA∏û=±\◊\n≥¢\Õ5\Ê©e;\Õ{t#∑πçßπ≤kcí–ê6ï^\Ÿ¡\«8>ï\–i\⁄\rñëë\È\ˆê€¨çπÇd\’\ﬂ!˝E4n\Á\Ã\≈Œ§\–\ﬁ\Ài&µ4òùnj<\‹!ãÉí~\Á8æ*MMK+©KÆ¥i+ãvä9TªyÄè7vN›∏\∆\ÛågΩz$mó\n*&K`zìì˙ìRy\Í)%a∫©\Ëy§Ø\‚O\Ì\€,5\Ëèx\Ú\Ú&*Gö€∑\Ì~\Ó>˛8\∆)\Ú\È\◊˛]¥ók#Iƒ™dïä2œé\0\‰\rßê;\0{fΩ#\»QGê˛¢Ñê{Tpæmp\ÍwcSkíæ_\ÔD\¬]¢]\ﬂ√ºm\∆3\˜2:V;\…\‚$áXä\‘\Âj≥L\‚u*æa‹™∏\'8=b$`pØR\Ú\‘Q\‰?®¢\€µWl\·Ÿµ\œ¯WπF∏7ªáÕâDæWô\œQ\Êgf{n¸jïì\ÎÜ\r$ªjF%ëæ\“Gö	É\Ã>¯\ﬁ[=s\Ûl\Œ{W¢˘\Í(\Ú\‘S∂∑¥V±\Êvs\ÍSXº∂\Û\Îí#D>\⁄\Ã\\ê<\‘ˇ\0Qû˛_ô\˜=øäß˚>©qn\Ú¡s≠%ΩºR\…f$yI0\Î¥H-¸X\r\…k\–`∞[hQR4UI\‰?®§ïÜÍ£Ñ\\Î\Îá≈∑Ç˘Æ<úÀΩ\\KÂÅª\˜{w\rÉè\Ó\\\÷lßX∏\Ò%\Í2\ÍMn\“aí9Lk∂x\ˆ\'\‰\Âr~Q”©&Ω7\»QGê˛¢ã\⁄+úΩ˚J<Wö⁄ßó\Â\«\ˆeµ\r\‰≥eº\œ7/Mø{˛\Õrzi\◊\ÁûRF¢\ÔΩ%çn£óK≤`@/\«o*\Ù¿ØT\Ú\‘Q\‰?®¢¿™§è>”°ºªπ∂Ü)\ı\Â∞kàå\Õt\Ú§õ\ƒS8!2\"\È\Ú\Á•t∫}ä«™\›\\˘kv\Í-≠¢é=™±\·X\ˆ\Àzq«Æks\»QGê˛¢ûÇu9Ô¥∂ô·è¥I˝¢rYb˚¨dï˛U\'∑,{b≤5\…\ÁÇ\ÎIí+˚∏\Ã0K\”\ŸYµ\·˚º©\01\'û+≤ª\”!øµí\÷\Ó(\ÊÇAÜGõg•AßZ•≠ú1\√}\‘NÉ÷Å©\ƒ\‡\Ó\ﬂSπ\◊\Ïå3j∑\˜\À)äkqÇ¨\»`9\ÁÜ;St\”~,¨\Ùî]b! á≤\ <¥\ÚäæX\Ù√éüC“Ω\»QGê˛¢ïê˝™<\Ú\‚MRkX.µ#¨\√\∆@b±\Û7§à®âêº\Ì,≤7°\‹3\≈Y\ÒCkÉF\“\nÖbø\ÈÜ\ﬂ\Õ\›\Êmˇ\0Rc9\ˆ\Èû+∫\Ú\‘Q\‰?®¢\⁄\⁄+£\Œ/ß\÷\‚K©¶óQHóN˘ù(~Rñ#\—q”∂\Ï\˜©cªø≥Gö\◊\'±fí8Ñ\…#Mº\∆:É\Û\ﬁ	\‡\ÿbª\È\ÏV\ÊÇeWäE\⁄\ zR}ù˝®j\„\ˆ®\ÛKV\Ò#kŒ≤I|Ä\¬G›ïî\'ï¡\0˛\Ôv\Ïª≥¡\‚´ZG¨Ig\≈uWπ∑{Ö∂ô\Ãˇ\03¥\'nVA∏\r\√¯≤π<W™y\Í(\Ú\‘Q`\ˆ®\‚t\—9∞øñ\—o\‰H\ˆ}éMR)TîÇÆT8›Åë\Ì\◊WSagüa\r§91¬ÅAnßﬁÆ˘\Í(\Ú\‘S–á4»®©|á\ıy\Í)\‹\\»ääó\»QGê˛¢ãá2\"¢•\Ú\‘Q\‰?®¢\·Ãà®©|á\ıy\Í(∏s\"**_!˝EC˙ä.»ääó\»QGê˛¢ãá2\"¢•\Ú\‘Q\‰?®¢\·Ãà®©|á\ıy\Í(∏s\"**_!˝EC˙ä.»ääó\»QGê˛¢ãá2\"¢•\Ú\‘Q\‰?®¢\·Ãä∑@µ§¿IçÄ\ÈW\Ôµk;Ω.\⁄\⁄ë¶\Û!˘L.:2ì\…\ÌQy\Í)V\ZôE7sH\’QMw,QE°EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPE¡#n	\r+ª\—X⁄û´ïh.&Y\‰\Î\Z§]Ÿè@\0\ÎQX\Îq_IB\ÀydWuKòZ6\¬\‡ˇ\0æ?Zv/Ÿ≥zä•Ωøº:7∑\˜è\ÁEÉêªEg\≈9ñ0\‡Hπ$a¡Ééî\Ÿ\Ó\„∂Uie\⁄\÷5\Î\À1¿ùFiQT∑∑\˜è\ÁF\ˆ˛\Ò¸\Ë∞rh™[\€˚\«\Û£y˛\Ò¸\Ë∞rh¨Îã§¥∂ñ\‚yvEv=îìRo\'¯è\ÁEÉëóh¨ã\ÕJ;\n\…\Ê≥\ÃYcX‘±b®\ŒF>äj;}^+´˘\Ì\"[Ç\–Ø!åà\˜`n\ËO\"ã≥f\›K{x˛uR\ÀU∑ø\ﬁ-\Ê,\»2\ A∞™ö,ÕõV]\›\ÙvQ,≥;i!é~g`£\ı\"ß\ﬁ\ﬂ\ﬁ?ùF]¢©oo\ÔŒç\Ì˝\„˘\—`\‰.\—T∑ü\ÔŒç\Ì˝\„˘\—`\‰.\—T∑ü\ÔŒô4\Ê^C\Ê>\≈-µ,q\Ë;ö,ÜÖKy˛\Ò¸ÍÜß¨¡•$faq+\ \ƒ$V\Ò¥é\ÿ\'∞\Ë∞*m\ÏnQY∂\◊iwk\Ã\ÔÜdå;©•\‹\ﬂ\ﬁ?ùB\ÌKsx˛tno\ÔŒã!vä•πøº:77\˜è\ÁEÉêªER\‹\ﬂ\ﬁ?ùõ˚\«\Û¢¡\»]¢©no\ÔŒç\Õ˝\„˘\—`\‰.\—T∑7\˜è\ÁF\Ê˛\Ò¸\Ë∞rh™[õ˚\«\Û£sx˛tX9¥U-\Õ˝\„˘—πøº:,Ö\⁄*ñ\Ê˛\Ò¸\Ë\‹\ﬂ\ﬁ?ùB\ÌKsx˛tno\ÔŒã!vä•πøº:77\˜è\ÁEÉêªER\‹\ﬂ\ﬁ?ùõ˚\«\Û¢¡\»]¢©no\ÔŒç\Õ˝\„˘\—`\‰.\—TZ]à\Œ\ÃB®\…>\‘ƒª˘£fä\Ì\Ÿ@i-§U\‰\Ò\…\\sI\Ÿ≥m]\Z4QEaEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPT\ı)≈µ¨ó¨\¬$g*£$\‡gﬁÆTrG\ÊcúbÇ¢\“zû{$£Y\\⁄Gb\Ì{tóIu<zl åõ›üj\»Jç\√<\Ûû\Á≠iËñób˛\“yl\ı#äà\€\Ì\˜)4ôfàéUõÉµª\Òè•uXEïâR0NHD\'÷§˚?˚_•5cgQ_çyum{5éë±\ﬂ\Ì	4\∆Uˇ\0Kn\r√ïæ\ˆnA56è\·\€\€1b/49.bÜW˚:<\Ò)¥&@¡˛R\0„èê1å`\ÊΩ!m)\n:\‡Sæ\œ˛\◊\ÈI$Ü\Î_C\Ã\Â\Œ¥\⁄\Ìï¿Åä#Çí,˘ïôπ-πr˚†Á°©èÑ∑ëtîï∑G5\¬nB]\÷lÁìÇB1¸8\ˆØF˚?˚_•gˇ\0k\Ù°E ué¡ö©•jwr\ﬂF\»=Æ¯å	\ﬂvw\ÂI-\∆y`=+2\«@ö˛\Z\' éGeπò ß\Ìc\Ì*√å\Á\ÂUn∏\∆p3^ü\ˆ\ˆøJj\⁄]™Bè@∏¢\À@\ˆ⁄∂y≤xSSè]\‘Ym\›m\‰étY!1Gæ6B0˘,1\∆\\f®I\·]q\Ùk[qßmÇ\Â+l#Ép\‹kï\ﬂ\ÂÇ~T\Áú\„$◊≠}ü˝Ø“è≥ˇ\0µ˙R\ÂC\ˆ\Áú\ﬁ¯>\Ê\Ê\ﬁ\ÊG≥Yo¶\Û#yô\∆]\r¶¡ûzyÄq\Í3N\“4=B\ZC®ˇ\0dΩù∏VBCEµc\Ú¿D\‡ñ$tÉΩz\'\Ÿˇ\0\⁄˝(˚?˚_•;+\‹^\◊Kq™xv˛\„Rªx¥Ç\˜nâø\Ûì\˜®\»±¶	\œîr0;u5=ﬂÖ\Ó[\…-4\‰yfíUFT3+é\“s¸A\\s\Î\œZ\Ù≥ˇ\0µ˙Q\ˆ\ˆøJ,É\€∆ô®%¥Q\ÿh-o\÷\Ê \\\'˙6%\›\œ8\‰gÖ\»éú\÷m\˜ÖØä\‹¢˘\∆\„gú\Ëb,T<án∞O(~låP+\”˛\œ˛\◊\ÈG\Ÿˇ\0\⁄˝(i0U¨yï∑Ü\ı4]4\\\È\r5\‘F\”m\€Nô∂H\›wß^z¿¡œ®´ZxKXM7SÇ\Í\“giQÑ\Ú\⁄\\8m¸íÄ~˛‹Éä\ıo≥ˇ\0µ˙Q\ˆ\ˆøJ,á\Ìé\Í\∆\Ê\È\ˆw\÷$´sµ¢0]\À\Ê\øx®%qëùΩ∫VMﬂÜugìN0\È/pI\Ê¿ë\À6£\Œ-∞ñ<a1çüL\‡\n\ı¥\rç\ƒåØzw\Ÿˇ\0\⁄˝(≤Ω\≈\ÌQÂ∫ßÑ\ı≥\ÿ-¶îL®Zfí\'à2\Ã\\\Ã\\ˇ\0u@y\„∫\Ë\Z≠\≈\‹\ˆ\©úXà≠\‰$d6\„ΩFzß\˜\Î]è\Ÿˇ\0\⁄˝(˚?˚_•V∞{mnyLæ’éâhâ¶\»\“\≈s#\√n\¬\0êÇ@\ÿQï\'(€ÜN:\Òa¥k\À˘\ı7∂\“\ˆ‹óªI/ÀâC#(às\˜\»<åqú\‰◊ß}ü˝Ø“ö∂Ås¥ÅììÖ\Íh≤∂\–\Û?xN\ˆ\‚≈ñ\€J\Ûgö\Ê\Ógx\⁄-˚ÃÑ\ƒƒπ\∆6\˜\0∞\Ìék°≥—Æ-\Ù´˝ë4◊∑?Ωñ2¶C~π\œR\ÿ\Áé\√5\÷˝ü˝Ø“è≥ˇ\0µ˙PíBun¨TÇ≠≠\„Ç	jtP\0©*≥ˇ\0µ˙Q\ˆ\ˆøJ´ëÃà(©˛\œ˛\◊\ÈG\Ÿˇ\0\⁄˝(∏s\"\n*≥ˇ\0µ˙Q\ˆ\ˆøJ.»Çäü\Ïˇ\0\Ì~î}ü˝Ø“ãá2 ¢ß˚?˚_•gˇ\0k\Ù¢\·Ãà(©˛\œ˛\◊\ÈG\Ÿˇ\0\⁄˝(∏s\"\n*≥ˇ\0µ˙Q\ˆ\ˆøJ.»Çäü\Ïˇ\0\Ì~î}ü˝Ø“ãá2 ¢ß˚?˚_•gˇ\0k\Ù¢\·Ãà(©˛\œ˛\◊\ÈG\Ÿˇ\0\⁄˝(∏s\"\n*≥ˇ\0µ˙Q\ˆ\ˆøJ.»Çäü\Ïˇ\0\Ì~î}ü˝Ø“ãá2 ¢ß˚?˚_•gˇ\0k\Ù¢\·Ãäw\n\œk*(\À2æ*\Âﬁ´\ˆ\›>\ﬁ\—,nëƒëœ≥h\⁄¿ûåOj>\œ˛\◊\ÈJ∞aÅ\›\–˙T\…\'©q≠ ö]I®¢ä`¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0£4T\√¯\–4Æ\ÏMë\Í(\»\ıÅ©\Í\ﬂb≥Y≠`˚lè8ÅcéE\\æpFO\”lµKôÆ°µº”û\Œycí@ÜU|*W\◊\ÈL\”ŸùG®£#\‘V\"\ÎZSΩ\¬.•hZ\›KLÀò¿\Ó\‹\>¥ã≠\È/¨ã©Ÿ≤]∂\€vÆ&>ã\œ\Ã~îY≥f\ÊG®£#\‘VzÕÅíeª∂ä\‚r\¬(L\ÍY\H˘Fy\È⁄´\œ\‚}\œ\ˆï´\‚tÅÇL§´π¿û;˛Fç\Ÿ3§\»\ıdzä…µ\‘loeö+[\»\'í\€*\≈ c\Ù`:\ZÑköI\Û\Ò©Ÿü≥Äf˝˙˛\Ô\'w<s\ÎEê{6ndzä2=EbG¨\ÈsL\≈®\⁄<âú\Ë≥)*ò\Œ\‚3¿\«zg\ˆ˛è\ˆ8\Ô?µlæ\À+˘q\Õ\ÁÆ\∆o@sÇ}®∞{6odzä2=Es\◊\ﬁ\"\“4\Ù∫\Û\Ô\Ì¸\€höi ØòFOÀüq˘äû\ﬂX\”n\ÓEµæ°k-¡åJ\"Iïõa\rÄsåœΩ\Z≥f\÷G®£#\‘W?>Ωa´ö.!{©´∆≤Æ\ËÄF}\Ã:ÅÖ˝i_”ß6\Ìkw\Ã3;°öUë\n©cí=Ö\Z≤gCë\Í(\»\ıÖª§MSE™YºR\…\ÂF\Î:ê\Ôê6ÉûNH\„ﬁ¶}J\∆;Â±í\Ú\›n\›w¨\r W\‘/\\Q`\ˆl\◊\»\ıdzä»≤‘¨5%v±Ω∑πX\Œ\√(}ß¡\«JÆ5\€	å?cπÜ\Ï=\«\Ÿ\ÿ¡*∞F¡<\„\È“ã≥f˛G®£#\‘V4ö∂õ\r\„Y\Àjó+ï°iT8A\…b3ú{\’kèiP\Èw\È®ZK£2\‹ ]\„¯7Ä~¥h…ùG®£#\‘V(\’\Ùˇ\0µCh\◊÷¢\Íeê˘ÀπÜ3ê:ëä©â,.µ&¥¥ûÄªCK\ÍTXm\Î\‘m\È◊ö,Õù.G®£#\‘V	◊¥qd◊ßU≤˚*\…Âôº\ı\ÿ˚ª≥å˚UãΩF\∆\¬\”\ÌWóê[€ú~\ˆYØ=9<Q`\ˆl\÷\»\ıdzä\Áf\Òïµû•y3∂± <õÜWv˛0*\ƒZ∆ô5…∂ãPµy\÷1)âfR¡1ù\ÿ\Œqé\ÙY≥f\÷G®£#\‘V	\◊\Ùai\Ÿ’¨E¥Ø\Â\«7\⁄c∑†9¡>\‘\◊◊¥\ı\‘ö\›B\Óôä øπ\n3\Ûzt=}\r\Z≥gAë\Í(\»\ı\Ã\‹¯Ç3gŒìnuh\‰-\Û\⁄ õ/R\\úg€Ωi\⁄\\•\ÂúQgÀö5ëwëö,ùç<èQFG®™TQarr=E¢©QEÉêªë\Í(\»\ıJä,Ö‹èQFG®™TQ`\‰.\‰zä2=ER¢ã!w#\‘Që\Í*ïX9π¢åèQT®¢¡\»]\»\ıdzä•EB\ÓG®£#\‘U*(∞rr=E¢©QEÉêªë\Í(\»\ıJä,Ö‹èQFG≠Pë\ƒq4çú($\„⁄ó˝.äi\Ù˚à°wAΩû2\‚\0\‡9=\«jN\Àq™M´¢˝QAêQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0U=JI\"µíH¢2»àÃëÉ\˜\»∆ÆS0¯\…<zPT]ù\œ>\Úd\Ò\'Ü≈§}ÆhÆyˇ\0¥\‡äW,Y\–|•Ä\«Lt\Êµ4=\Ê\∆\Ê\⁄Y,¥˚\·äx¸õ9Y\‘\Ôhà9d_\Ó6√´˚:˙ö>Œæ¶ûÜÆ™<\Êj∑\ˆ2îKp≠p!?2º•\Ê\…\Ú¸£¡<É\∆*∆ì\·ç[Lx\ﬂ\À\”%.\Ó%Y§íAó\n\\≥uÎéÄ\Áµw\ﬂg_SG\Ÿ\◊\‘\“I!∫\◊\–\Û\Ÿ<®ùVÖπè\….¶`\'u€∂VqÖÜ˚\›\ \‡˙’≥\·k∏£µhüõM¿íë7òy\ËO\‚k∑˚:˙ö>Œæ¶ã uÆq^\\≈\Óá},∑W,kì≥ñ≥í•@^ùnΩjçááo\Ô≠\„y¢≤Üù¸∞îÖë∑åq\¬q\◊9\œ\Ëg_SG\Ÿ\◊\‘\—d◊©\Á\Á¡ó≠¨_L\Ú\√-ú\ﬁ{\"I;\‡ôç•\0\ı\rúÇ™I\‡≠nK(w]\¬fI%˝\ﬂ\⁄\ﬂPs/óπ\œ\…\›zgä\Ùø≥Ø©£\Ï\Î\Íh≤∂8{èM%å∞#\€˘é\Ô˚\÷\ŒvõS\œ\ﬁ\Á\È\ÔIa\·\ÕZ?E™\›˝åF¨\Ï\¬)\‰\'\ÊMªBm¡˛.§s\«J\Ó~Œæ¶è≥Ø©ß•\ÓOµ\“\«}\·]B\Ú\ÍXÅ±KFí\ÊEü\Ê\Û\Û4Nò#¿,;\Ú\0\ÈéRo\Íw\‚inø≥\Ì•ïJ\Ìã4`\Ÿ\ÂFI-\»\«Aékª˚:˙ö>Œæ¶ïê˝±\»i˙\\’\„\‘Ô£±é@\Âå6\ÃÃ´\Ú£\'Æx`sUØ|+}q\‚∂\‘c∏_≤I\"L\ g`UïB\„`\\ùwd\k∏˚:˙ö>Œæ¶ã!{Só\“¸>\ˆ0K	h£i\–ZrÜnÉ˚\„ì†¯GQ\”eÜKô\‚o*X±â\ﬁL¢+é\Í6üõ\Ó\Ûéy5\ﬂ}ù}Mg_SOK\‹=Æñ<\Ô\ƒ\Z\‘\Ê\’/µ56\Ôl©,äØ\Êmö=æX]§\‰\Áq$\„é1EœÑ\ık\Ë\‰5ùµ\“4{!∂ô\‚B™åπ-∞ê\ﬂ?Mß\0c=\Î\—>Œæ¶è≥Ø©•dW∂8à<!4vãI\Ò\ˆq\ÊK(@C`ëü\‚8˛ï~\‘\Âl\\ˇ\0g@´Pj[%PH7®\Á\Áv\ıÆ˚\Ï\Î\Íh˚:˙ö,Ö\Ìé\n˚\√:\≈\ˆõj∏\”\ÌÆ≠•˘R\÷gâ]vl\…}ÑÜ\ˆ\⁄x\„=\Íﬁß\·\€\Èº=¶i÷ØΩ¶\— ígå0WáPXu\ˆ\»\„\"ª/≥Ø©£\Ï\Î\Íh≤a\ÌN6\√\√wñ\ﬁΩ\“\‰í\‹\œ<∆åî‹∞G<gê\ˆÈä≠?Ö\ı;\œ:\ﬁcß\≈n\Ì<¢h\À4ªÂçê©@\⁄\ı\œ!@¿Æ\Ô\Ï\Î\Íh˚:˙ö4jp\ZﬂÜµΩgOé3ïÑJ≤G\“\"\r¡B∂‡ªò¸ß+ÄG\\Uâ¸)u-ëà=™\»^iúïb\ÿ\⁄é0}´∑˚:˙ö>Œæ¶ã \ˆß)ây5Ö\Í_%¨r^\‹\«$∞\€H\ﬁXE\ÿ\n\Ó*	\»Sûsèz\Ë@\n†\0\0\0\’k\Ï\Î\Íh˚:˙öwDπ¶V¢¨˝ù}Mg_SN\‚\ÁEj*\œ\Ÿ\◊\‘\—\ˆu\ı4\\9\—Zä≥\ˆu\ı4}ù}MtV¢¨˝ù}Mg_SE√ù®´?g_SG\Ÿ\◊\‘\—p\ÁEj*\œ\Ÿ\◊\‘\—\ˆu\ı4\\9\—Zä≥\ˆu\ı4}ù}MtV¢¨˝ù}Mg_SE√ù®´?g_SG\Ÿ\◊\‘\—p\ÁEj*\œ\Ÿ\◊\‘\—\ˆu\ı4\\9\—Zä≥\ˆu\ı4}ù}MtRù∂\ÚF∏\À!QüqV\'\‘//m ≥{H#Uxã:\‹?+\”`\Ù\ı©~Œæ¶ÅÇO-\'πq≠ ö]Ih¢äp¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¶≥™}\„å”™è\·¸hE%vI\ÁG˝\Ô“è:?\Ô~ï\ \Î˙\€\Ÿ\Ëˇ\0jµ∏Ü\ÿ˝®[¥\”\ƒeT˘äìµX\”÷ô¢j\˜ó6±=˝≠\ÙsE<Üh-\⁄îhÄfo\Ô∂\n44\ˆZ\\\Î|\Ëˇ\0Ω˙Q\ÁG˝\Ô“πe\ÒmÉ4\‡\€ﬁ®âd*\∆\‹\‚]çµÇzê\œZKO\È\˜\…jm†ºî\Œ\≈Ycáqá\r¥ó¡ ˙gø°ß†˝ë\’y\—ˇ\0{\Ù£Œè˚ﬂ•rq¯≤\≈.!µô•ydl4â<πE\›\…\∆H\«SäÜO\Z[∂¡mcz\Ï\”\«\ﬂ\–\»\ŒP≤\Û\»˘v•†{#≤\Û£˛\˜\ÈGù\˜øJ\Átü\ÿ\Î7\√j&\ıihësç\À\Í3\Ù\Í*Ø¸&:~\ŸX\€\ﬂ(L\Ï&˚\Ï8å\Ï\ı\√0ç=Ïé≥Œè˚ﬂ•t\ﬁ˝+î1\”\◊»∑1#wwx˛\\¢\Óu<∞\0\Á\Ëy\‚ö\ﬁ2”í\∆ñÇ\y\Ã¡b\Ú≤¯\\nn∏*29\ı\«^)h?dŒ∑Œè˚ﬂ•t\ﬁ˝+é\‘<igk\r\Á\Ÿ\ÌÆ¶íù£q\Ó§qò7˚º˝´ñ\ﬁ\'≤π\÷SJ0\‹\√t\Ò\Ôh\ˆÉ\ÚÜ#Ær˙{\”\–^\ÀKù/ù\˜øJ<\Ëˇ\0Ω˙W#ã#73¡=Ö\ÍºsL´\Â√ª)2¸\„\Ê\Zx\ÔIxcuä\Ìù\Êh|ïåR†ê<0\‡d\Û“ñÉ\ˆ,\Ïº\Ëˇ\0Ω˙Q\ÁG˝\Ô“π\Ò|H\◊5Ö\ÒxÆ%çRwì\Zctò\œA∏{\Û“ü7å,cvX\ÌoÆ\0-Z7	fˇ\0óû~^\Z4dŒ≥Œè˚ﬂ•t\ﬁ˝+ò_\È\Õq\Z*‹ò\\/˙HÑ˘JÃÅ\’Kzï#∑p:\‘\⁄gà¨µ]2mB$û;xÅf2«åÆ3ëå\‰bûÇ\ˆGC\ÁG˝\Ô“è:?\Ô~ï»Øç4\Ê\”cºX/HñO.8ÑC{\‡n,9¡\\wœ∑^*_¯K\Ùœµ,AnLeC}†B|°ò¸¿3\ÍW<{R\–~\»\Í|\Ëˇ\0Ω˙Q\ÁG˝\Ô“πH|_eqß\«w\r•¸ÜYq¬êe\ﬂªp¡¡\\wœ∑^)Gäm..\"é\ÿ\\\…B\“˘©ªÇéA›èc”•=\ŸWù\˜øJ<\Ëˇ\0Ω˙Wû6±∏+,~dPD\Ó∑\"h˛u=\„\0\◊”ØµL˛5\”\⁄)Z\œ2IL^@àyä@r3\œ	<\“\–=ã:\Ô:?\Ô~îy\—ˇ\0{\ÙÆ]\ÔµXºEo5£Y\‹3∑X\€\ÕTü5õ8v\‹w\÷\Ì;	\”H∑\ÁG˝\Ô“è:?\Ô~ïRä,.D[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\ÈGù\˜øJ©ED[\Û£˛\˜\È@ï	¿næ\’Fg1A$Äd¢ñ\«\–T\”i\˜\÷V\–^Kwo\"3\∆\n,ß\Ê`:\Ô=3\ÈI¥∑)QrMÆÖ∫(¢É\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0™zí\Ã÷≤-ª*NQÑl\√ 68\'Ò´îÖU∫å\–T]ù\Œ*\ÀI‘Ø4t≥û6\“Z\ﬁDí)RUûFêY\… Éí{å\ı\ÈZñ:L\ˆ\˜Q\\\ﬁjS^\œ\ZI\Zºë¢|ÆP\„\n\0\‡ß\Ík\ÀO\Óä<¥˛Ëß°£´sáá\¬ug4w\˜\◊3K\‰≈Ñeátª\Ú8˘≥Å\√d`ëVl|%˝û\—5æ´wáfôï#rñ›¥Ä∏Qú\„n8$W_\Âß\˜EZtRVCuõ8\…<ß…®\€\ﬁ\À\∆\Ÿ`\D\Â\\Â\∆îï\Âè\›\"≠øÜ!h†T∫ö6ÅT#Ä§\Ò ~\„\‘b∫è-?∫(\Ú\”˚¢ç\ÌY\ \Ë>≤\˝\‹\”\€wÆ\ƒDhQsúU›πbjÆü\·Y<ïk˚ÀÜdvh°;v\¬\¬CÇNvØRp8\⁄yi˝\—Gñü\›h’úÇ¯2\≈5ã≠F9\n<˛a˘`ãr3ÇÉ\Ì\‹zû	\"©7√Ω=¨\“&ü2¨Ø!ê\⁄¿W\Ê\nîÿøtrsìﬁª\œ-?∫(\Ú\”˚¢ã!˚fr\Ú¯Z\“[Gµ\ÛdXôŸ∞†É\…¿\„˚ß?ZÜ\«\¬ig≠&®⁄Ñ\”J§πVä1πôv±$(\'\‘\‡tW]\Âß\˜EZtS\“\˜µ\“\«//Ü!ö[\Ê{©\ ]\«4{\0_›âvn¡«™gú\ı5ú˛ÇK	-d\‘%uño6Bm\·¡˘UpfÖ 9Æ\Á\ÀO\Óä<¥˛Ë•†˝≥9)<)˚\«{mV\ÚŸôúe¬á_ò•\œPj›øá≠≠LB\'pëJ\“*\Ò\∆c\Ú\Ò˘WE\Âß\˜EZtQ†Ω©\…¡\·8\‡ñ∫Ö\◊\Ÿc\ÿ\Õl6\Ìy+\Á(8©to\rC£Ez©s$èv~w§x\‡Ä@E<\ı\∆Mt˛ZtQ\Âß\˜E\Zµg~X5£F\˜¶3yæcZ¿TqÉ˚Ωõ9\Òú\˜≠hº3k+R»à≤#Æ\–6G\Âå``q\Õt\ﬁZtQ\Âß\˜E\Z\€6qvæ\né\∆6k]N\‚\√/ò.\"Ü$\∆F\“6\€\»\Íqí@=™\ÿ\•ö\ŸEûqdbw\r\ﬂ,{:˙ë\Œ}k©\Ú\”˚¢è-?∫(\–^’úD≥Ky°û\ÓY\“U\⁄\√ ç\0˘\n*®=∫äÄ\Ìë˝û.v´Jdëñ\Œ\0Ä>\‡M†åp@œΩv˛ZtQ\Âß\˜E\Z\€3&\ﬂOé\⁄\·eF\'l	\0\›\…⁄§\˜\Íz’∫∑\Âß\˜EZtSπ<\Ë©E[\Ú\”˚¢è-?∫(∏s¢•o\ÀO\Óä<¥˛\Ë¢\·ŒäîUø-?∫(\Ú\”˚¢ãá:*QV¸¥˛\Ë£\ÀO\Óä.\Ë©E[\Ú\”˚¢è-?∫(∏s¢•o\ÀO\Óä<¥˛\Ë¢\·ŒäîUø-?∫(\Ú\”˚¢ãá:*QV¸¥˛\Ë£\ÀO\Óä.\Ë©E[\Ú\”˚¢è-?∫(∏s¢•o\ÀO\Óä<¥˛\Ë¢\·ŒäîUø-?∫(\Ú\”˚¢ãá:*QV¸¥˛\Ë£\ÀO\Óä.\Ë©E[\Ú\”˚¢è-?∫(∏s¢å®%â\„\'î©#ﬁû\“\ﬂ\‹G\rº\˜h\£°⁄∞ÄN\“\Á>\’o\ÀO\Óä_-\»QI\Ÿ\Ó5U§\“EPbQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0\÷uLgΩ:†∏˛∆ÑRWc¸\Ù\ı?ïzzü πMYí\r\\Z\Œ\ˆß\ÌÇ›•X|\ˆP©!9\È”≠7D‘Æ\'ª¥Ö\Ô‰ºäXgê\…-ô∂l£D\0\⁄¿|\Õ\œ|—°Ø≤\“\Á[Áß©¸®\Û\”\‘˛U\…ˇ\0\¬_\0ºö}\‰qF≤\‰pÅf1∂\÷\Ûq\œv¿\«=©4ˇ\0[\Íill\Ù˚…öV\"Q\∆\Ú\0mªòÜ¡˛\È<\ÈO@\ˆG[Áß©¸®\Û\”\‘˛U\∆\Z\ÿAyoe1ë\‰ë\\Úç6fFE ñ\…\‰<rqMì\∆N˛X∂\“n\˜<\Ò*ôv\0\Ò¥Öó\Á\ÏF9\«PqäWA\ÏN\◊\œOS˘QÁß©¸´ò\–¸WaØ]\ÕolYzto13ç\ÿV%y\«\Á•Wˇ\0Ñ\∆í;ió º˘™§ åÖ˘∏\√0˚\ÿ\»\‰Q†{-lu˛zzü è==O\Â\\h\ÒŒú.\Óm\ÂÜh\ﬁ\ﬁ9Ü¯ÿñE,\ËX∂F$`\„Çiíx\˜OãN∂ª{iCN\Œ/:ãçÕª~\√\˜á\0ì\€Qt≈ùØûûß\Ú£\œOS˘W®¯\—`∑ºk=>\Ê_.\'0\ŒB˘R8á\Õ\˜Å˚º\Ù\ÏGZπk\‚´{ç}4i-gÇ\È£\›\Ûºg1Râ\‡∏¡\«\”\–=ñó:ü==O\ÂGûûß\ÚÆ>/\ .Æ ∏\“\Ós≥\·£(@ä-πs\Û¥8\Î\ÌUì\‚û\ˆ\—J-.7º\ÌåK	\⁄T)\'v˝ßÜI\Ù\‚ï\–{w>zzü è==O\Â\\rx≤u{ò\ﬂHªñH\ÁïQ Ÿì{r\Á/˛\–\„©\œü\'å#\ﬁE∂ó}tÜO.7ã\ÀC≥\Ã8\‹√Äæ∏\ÎE\–{#Æ\Û\”\‘˛Ty\È\Í*\ÂS≈ñ≤MK;≥h\€ª\nª\Ÿ™ù\Ÿ é@\∆H•∞\Ò4zŒÅ{®ZC$&ÿØò\»˘!r\»\ƒ~ë\‹Q†{#©\Û\”\‘˛Ty\È\Í*\Ât\ÔGtâ\ˆw0O¥í≤=\·Ü	\‡éÉØ®\ÒÑm H4õ˘\˜¸®c	Ü}ÇMú∞\Ái\ŒOu\Õ=\Ÿûûß\Ú£\œOS˘W(û-∂íH\Ÿ,Æ\⁄—Ç∫⁄°\›™ù\Ÿ!óúc$\‘\õ[-∆ü\÷P5˛\ﬂ,\»\—\\·	]\Ÿ9\ˆ\Á¥dv^zzü è==O\Â\\Fù\„{I$±≥π\‹ndÇ#,™\»\0ë£∑f\Ì\Á \ıéqöí/æΩ¢\ÀyßL∫lp∂fû\‡$ªc\nNT+ûúÁéîh\»\Ï¸\Ù\ı?ïzzü ≤4ôÆÆ4õYoP%\À\∆Ä.\ﬁ}q\€=q€•]™±<àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®\Û\”\‘˛UVä,àµÁß©¸®! y\ˆ™3πä\ﬁIT,3\Ï*\ƒ˙}Âï§èwä\œd[rß\Ê`:\Ô>æï-•πq£Ãõ]TQE8QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0U=I%í\÷H\‡ìÀïëÇ>3µà\‡˛ÆR®\Í(*.\Œ\Áe¢_]ia∑NH\Z±õ|õó$πg\\|\ƒ\Á\'Ø\'5ßc£9\„û[˚\À…£I^ÂêêÆPë\Ú®\ÓÉS[˚˚´˘Q±?∫øï;ö:∑8´E-¨\À}uv\Œ\Ì!EYAX7Iø(\Î\¬\ı»´6\ﬁ∂¥hûCQY\Ÿ\‰q0\r6HbØÅ\”#<c©8Æ≥bu*6\'\˜WÚ§¨Å\’l\‰\€¡˙qΩÜ\ËKr≠eïYq\'\ÃXn\„<z\«5<û≥x°A5\¬BÑuaëâéﬁ£\ÚÆóbu*6\'\˜W\Ú£@\ˆ¨\Ê\Ù\r\Ÿ\Ëó\Õk$\ÌΩv™H\√lkú\‡`˘\‰\’-;\¬q\«kÀõô%Y\Õ\"˝\Ëì\‰\„πU\Œs\Ë1]é\ƒ˛\Í˛TlO\ÓØ\ÂFÅ\ÌY\À\nX¶•q|ì]F\”\Ô%@™å\„\ @›ûO|⁄™\¬	¶}úG\ˆã\œ;\Ãi\Z\‡2om¡Am€å*\Ù\0\Ò\◊5\⁄lO\ÓØ\ÂF\ƒ˛\Í˛ThŸú‹æ\Z∞ö\›\‡c7ñ\Ó\Œ@\ÔC‰ëút˛u\róÖm¨µH\ıΩæñD%ÇI\"î,ÀµòÄ£$\ı˙\Ù¿‚∫≠â˝\’¸®ÿü\›_ ûõáµg5\'Ül¶ñ\ı§ñ\·ñ\Ó9ct\ﬁ0¢Mª∂\Òë\˜\Î\‹\’\'\Múñr[I®j.≥I\ÊJZD>g\ m\∆0£†v\"ª-â˝\’¸®ÿü\›_ ñÅ\ÌY\…\À\·+GfhØo\Ìã3©î+É ¸ßh>π\ËE]áA≥∑1˘^b¨r4ä†åSf:t\≈o\ÏO\ÓØ\ÂF\ƒ˛\Í˛T\Ùj\ŒV	\ŸC<.ó7¢(\¬≥˘†FŒ®\\Ä3∏\0:2\∆jM?\√Vöt—¨\˜35\Í\ÌöYYKÇ@s\…˙\Ê∫mâ˝\’¸®ÿü\›_ ñÅ\ÌY\Ã]¯^\Œ\ÏÜ˚E\‹.6ç\\»\‡!Lt\ËA\Á\Ù\≈Mk†ZZy>[\Ã|©<\≈\‹√Øï\Âzt~u\–\ÏO\ÓØ\ÂF\ƒ˛\Í˛T\Ùjrë¯F\∆9\"\€sy‰¢¶m¸\—\Âª\"Waèº\0\Ò¿8§ó\¬6R\›\€\\}™\Ò<ÖÑyi\"Öì\ 9B\ﬂ.O\‡@Æ≥bu*6\'\˜W\Ú•†{VrV˛”≠Ø`πä[•1\".¿\‡*Åâ\∆sÄ:8\ÈSX¯^\Œ\∆\‘\‹L◊Ä	dò´18w©\‰ÇOrkßÿü\›_ çâ˝\’¸©\Ë’≤ùsbu*6\'\˜W\Ú¢\‰\ÛîË´õ˚´˘Q±?∫øïrùsbu*6\'\˜W\Ú¢\·\ŒS¢ÆlO\ÓØ\ÂF\ƒ˛\Í˛T\\9\ tUÕâ˝\’¸®ÿü\›_ ãá9Näπ±?∫øï˚´˘Qp\Á)\—W6\'\˜W\Ú£bu*.\Â:*\Ê\ƒ˛\Í˛TlO\ÓØ\ÂE√úßE\\ÿü\›_ çâ˝\’¸®∏sîË´õ˚´˘Q±?∫øïrùsbu*6\'\˜W\Ú¢\·\ŒS¢ÆlO\ÓØ\ÂF\ƒ˛\Í˛T\\9\ tUÕâ˝\’¸®ÿü\›_ ãá9Näπ±?∫øï˚´˘Qp\Á(»ÇHö6\Œ8\˜•ˇ\0KôbÜ}B\‚XQ\–\Ïdå¥Ç9aﬁÆ\ÏO\ÓØ\ÂK±G\è ì≥‹•U•d-QAàQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0S$êGåå\ÊüP\\\„B**\Ï_¥\Óö>\–?∫kè\◊uÆ¥\Â∂7G}¯Éë\‘9_ïõ\'∏\˜4\Ì\Ó\"\‘l†\ÌH\“K{ô\Z-FUy2\ZTëéN9\Óh\–\◊Ÿ£Æ˚@˛\È£\Ì˚¶∏∑\Òe\‰\À5∆ü@\¬Ql\¬\‡í\Ì\Ï\√\rºg<cq\Ìå‚ù•x£Q’å¡•\ƒ&Voµ´\Ã…±C\Ì\ n@X\ı8`Ω(M1∫VW;/¥\Óö>\–?∫kÉ_\Z5{h\“)|J\Ã\“3ç\“2ç∏B1ì∏Ø3K\'â\ıô¸Öé\∆\÷:xö67∑De(\Ÿ˘8=:gÉ\◊\"ã†\ˆ\'w\ˆÅ˝\”G\⁄\˜Mr>\ÒY\◊\Ó\Êã\ÏæR¸ÿòo˚π\∆r\0ê~R\√ﬁ©Y¯üXK%≈ï¥\∆\›\˜é∑ë\’v\rü19¢\Ë=ë\›˝†t\—\ˆÅ˝\”\\L˛,\‘\„»öL\ri4\ \∆\ËÇcÖ\ˆæF\ﬁ	\„ø9\"≠\Èæ&ñ˚ƒ∑\Z[Z*¿¢S\Í\Ãw\ÿ+ï\‘ˇ\0	8\Ôäj\Ã=ë\’˝†t\—\ˆÅ˝\”\\M«ä\ı8Öƒâ§¿\∆ì ¨nà&8_k\‰m\‡û6é¸\‰äg¸\'?\Ò0øá\Ï%°∑\ÛV2ª\˜3\∆pwe\0H8!è∏•t\»\Ó~\–?∫h˚@˛\ÈÆ	|A©Y\ÍáP∑zIµ Ü\‰¥y\Ú\”%G∑p1\œZµ´¯ßQ\—`µ˚Nõ\\0g∏é)ù¬†`7)	\ﬂ9˘∂èz.É\Ÿü\⁄\˜Mh\›5\ƒ\‹xØSã\Ìì\√\Z\\J¨\◊Dê>\Ÿ26\NF\—ﬂú\‚¢o?\€5£∞\ﬂ≤\ÕÂú∏,\—\Á;âM†\ƒ˚Qt\ƒ\Ó˛\–?∫h˚@˛\ÈÆ_\Í\j;g±∂E∑éq<)p[{è$\∆Uä˘\Í†\Á[Æ]\‚\ÌKLÑ≠Œó\0û)ºªÜYù°E\⁄\¬2rA\« MA\ÏN\„\Ì˚¶è¥\Óö\Ânõ\≈0<\Zç\Ã\À\"ô¶á+\‰GR›ã\Á\–7∞ÆéùâpH±\ˆÅ˝\”G\⁄\˜MW¢ùÉï>\–?∫h˚@˛\È™\ÙQ`\ÂEè¥\Óö>\–?∫jΩX9Qc\Ì˚¶è¥ÓöØETX˚@˛\È£\Ì˚¶´\—EÉï>\–?∫h˚@˛\È™\ÙQ`\ÂEè¥\Óö>\–?∫jΩX9Qc\Ì˚¶è¥ÓöØETX˚@˛\È£\Ì˚¶´\—EÉï>\–?∫h˚@˛\È™\ÙQ`\ÂEè¥\Óö>\–?∫jΩX9Qc\Ì˚¶è¥ÓöØETX˚@˛\È£\Ì˚¶´\—EÉï>\–?∫h˚@˛\È™\ÙQ`\ÂEè¥\Óö>\–?∫jΩX9Qc\Ì˚¶è¥ÓöØETX˚@˛\È•Ç¿m<ö£pÃñ“∫ú2° ˚\‚Æ]\È_b\”\Ì\Ó\“˙\È\‹\…*˚6ù\Ã\Ë†\˜©ìKB\„Gô6∫\—E¡EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPT\ı~\”k$\⁄?17ßU\»\∆GΩ\\¢Ç¢\Ï\Ór6æí]0\ÿk3\≈snõ≠ë≠\÷0ù\rªq\Ô\Œ8\‡VÖÜâa¶2µ¨RP¡ZIûBm\‹2\ƒ\ıÿøïoQN\Â˚VrVû\“\‚Ç\·n-ñin˘èπÜC9~9˘Nq\»¡\»¶O	Ëë¨\n∂\0»üºs\Û	\œ?6H#<\◊OE-⁄≥ú\r\Ès\r\√Yè2î;\€x∑#8lH\Œq⁄§ìB\”eâ#{\\™\0¿å6\ÒÇ~\\Õo\—O@\ˆå¡∞\–\Ù\Ì2\‚Y\Ï\ÌÑRK\˜é\Ê8\Œ\0\'\n3\ÿ`Uw\∂ä\Ú\«#XÇ—πu˝\„c%∑å\‡ç\«8<¬∫j(\–=´0\€F∞hû6∂9#a∏\Ú≤\Œ:\˜5Øá\Ùª-NMF\ﬁ\‘%‘õ∑>\ˆ?x\Â∞	¿\…\‡uÆÜä4h\Ã6—¨\'ç≠ÅGéX\ÿn<¨áséΩ\ÕCˇ\0\Êì\ˆªãìdÜ[Öeó,\≈HoΩ\Ú\Á\0û\‰k¢¢ñÅ\ÌY\ÕC\·m\ﬁÜ;\Ÿ&\Ì·ùõv\Â\nrI9\‡¯TR¯?Bö°í\√rD.e|úúù\«9ny\Á5\’QFÅ\ÌYÜtkç£6\‡´G,dn<¨ßséΩ\»ˇ\0\nÄ¯oHkô\Ó\rò\Û\'VY\ˆ¡\›\◊8\˜#\◊GE=\⁄3\„A\”.\Âig¥Ww.Xñ?6\‰\Ÿ\‰U\ˆ≠V>\—\r¢[,∆Æ_˝k\Ó$Ä[9`@ë¿Æ¢äZµfdv\ÒE&\ÙMßb«ÄNå\‡\–u5-^¢ù\≈\ŒQ¢ØQE√ú£E^¢ãá9FäΩErçzä.\Â\Z*\ı\\9\ 4U\Í(∏sîh´\‘Qp\Á(\—W®¢\·\ŒQ¢ØQE√ú£E^¢ãá9FäΩErçzä.\Â\Z*\ı\\9\ 4U\Í(∏sîh´\‘Qp\Á(\—W®¢\·\ŒPeåå2¨0Gµ1-Åh’¶∫tFRKôx<p[•E\'f?h“≤\n(¢É ¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0®¶vMªOZñ™\ﬂJêBfïÇ\«\Zñf=\0ìAQWdzú\Ê\‚\ˆ\ÓhA\0\…3ÑPONO¶µg®(k+˚[ïl\‡\√*æqå\Ù=∑˝G≠r∫\’\‘\“¯f\ﬁ\ÊiE≥µ\Í\Ã\ôåQó%  ˝\‹q\€\©t)\÷\ÔU±ï.\·ª	mtç46çnπ\ﬂi\'úw\œ4Ô©ø\"±\ÿy\œ\Î˙Q\Á?Ø\È^juùEbΩñ\ﬁˇ\0Qû@\'°ã	nªQï∂\ŸÈªÄN8ß\Ë˙Æ°0±]CS\‘#çeuÖ‚Åõ\Ì$W\ gH\∆B\‰{RRMç“≤π\Ëë\›˘©æ9‘í7)q¡ßÜ^¨8\Êº\÷MW_Mr\ $y&ê‘ñUì30|®â∑aq’ó}\È\Û¶¢\—Z\…w©j\À\r\√\?tD˚p0π\∆\œ\”4) tí=#\Œ_“¢áPé\·•Xn\"ï¢}í`J7\\t<é+ä\f£≠^jwi©;ï\ÊDvc\Â…ª†%\n1û77A\ı™q\‹\\\Ë6ó1$\◊\Ãnû\Ò¢&2\‰\ .\Í/<˚\—}ÉŸ´¥z7ú˛ø•s˙˛ï\¬¯oQ÷Æ<Uy\Î?î<\›\Ò≥1·∞òP\«˚mûµ≠®j\÷\Ò\Íy\˜Q•§û_ûπ\0âd\‹B±¬¶\’\»ì¯\—Ã≠q{=lw\ﬁs˙˛îy\œ\Î˙Wü\Ë:ù˝\Ã˙h‘µ\Ùê†∆ñ\Ám¡\Û[~W<(N∏\«^\Ùñ∫é£´µÖ¢^_€ü.\ﬁ+©2å$\€7ôÇ\√ ®&ã†\ˆg†˘\œ\Î˙S\ÿ2¥BT2*Ü)ëêpq\È¡¸´\Ãˇ\0∂\ıˇ\0\Ìm9{ñîFà\—:≥á\Ê &\0›Åí\›x\≈^L\'∏újö©Å\„∂Kª∑∑\"XFe,\‰\Ë\0\qìG2≤=?\Œ_“è9˝J\‰ñ]B\Ô\√Zz˝™\Ó9&∫ô\¬lï°\ﬁ¿1pJÄzw¨][\ƒMs™$≤Œªº–ªù°`\0¢˘@q3gÊã°*w=\'\ÌΩ\Úº\≈\Û6\ÓŸëúz\„“ü\Á?Ø\È^y™jZå:b>ówysí7\\Ã¶96y§»åë\∆\Ìßé}Ë∂π\◊.mm\Ódø∫å\√n1ïõ3≤¸≈ëI˘1\ÿz\—t?fèB\√*¿èQK\Á?Ø\È^S\r\ÓµaqßY\⁄OrbSÖ3ç\Úy\ŒH6\Ï.\ﬁ\Îå\Á=∆¥\ÁZ\ÚÆ.UæS\‰\‹Œ±Ö\\ä\\\"èó8 \Ú;–§ò:IÅ\Á?Ø\ÈI\ˆÜ›∑p\…º\‘\Íæ\"}SXà\Õ,eV`o(\ƒl´\Âc¯\€9¸óQ:µÖ\Ù\œ\r\Ì\ı\≈≈ºW0\€3å\Ô∫cú!\…\0π\‡\„s \ˆJ\ˆ=\n\ÔU∑\”\„Y/o ∂Fm™\”H®	\Ù\˜©\ƒ\ÓFC\rpög⁄µO¥∑i\ƒˇ\0h6÷≥Oôv\«&¿ÕñD\‹G\Õ¸=±ûµ\Ÿ\⁄€••§6—íR$T\\úúähóã>s˙˛îy\œ\Î˙TtSë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'ú˛ø•s˙˛ïë\'û\„¯á\ÂQ\«}í™,\Ò1\'2j¨õ9¿ˇ\0ûm¸™\Â\Ì\Êã6ôk•≈É\‹˘∞a\"t/\√.x\Ù\ÕD•fëp§•˚(¢äg(QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0TPà\ÃlÅ—ÅVV\ËA\ÌS\“RN\Œ\Ë\«\”<=g£§ãcè\Ã#qiZBq\–eâ √†´˛C˙Œ¨\Ó_Q˘—π}G\ÁN\Â\Û»£mß≠§>LÑå367gíI=}…©|á\ÙùY‹æ£\Û£r˙èŒããùïºá\ÙùC˙Œ¨\Ó_Q˘—π}G\ÁE\ÿs2∑ê˛É\Û£\»A˘’ù\À\Í?:7/®¸\ËªfV\Ú\–~ty\Ë?:≥π}G\ÁF\Â\ıùa\Ã\ \ﬁC˙Œè!˝\ÁVw/®¸\Ë‹æ£\Û¢\Ï9ô[\»A˘\—\‰?†¸\Í\Œ\Â\ıùó\‘~t]á3+y\Ë?:<á\ÙùY‹æ£\Û£r˙èŒã∞\Êeo!˝\ÁGê˛É\Û´;ó\‘~tn_Q˘\—vÃ≠\‰?†¸\Ë\Ú\–~ugr˙èŒç\À\Í?:.√ôïºá\ÙùC˙Œ¨\Ó_Q˘—π}G\ÁE\ÿs2∑ê˛É\Û£\»A˘’ù\À\Í?:7/®¸\ËªfV\Ú\–~ty\Ë?:≥π}G\ÁF\Â\ıùa\Ã\ \ﬁC˙Œè!˝\ÁVw/®¸\Ë‹æ£\Û¢\Ï9ô[\»A˘\—\‰?†¸\Í\Œ\Â\ıùó\‘~t]á3+y\Ë?:<á\ÙùY‹æ£\Û£r˙èŒã∞\Êeo!˝\ÁGê˛É\Û´;ó\‘~tn_Q˘\—vÃ≠\‰?†¸\Ë\Ú\–~ugr˙èŒç\À\Í?:.√ôïºá\ÙùC˙Œ¨\Ó_Q˘—π}G\ÁE\ÿs2∑ê˛É\Û£\»A˘’ù\À\Í?:7/®¸\ËªfV\Ú\–~ty\Ë?:≥π}G\ÁF\Â\ıùa\Ã\ \ﬁC˙Œè!˝\ÁVw/®¸\Ë‹æ£\Û¢\Ï9ô[\»A˘\—\‰?†¸\Í\Œ\Â\ıùó\‘~t]á3+y\Ë?:<á\ÙùY‹æ£\Û£r˙èŒã∞\Êeo!˝\ÁGê˛É\Û´;ó\‘~tn_Q˘\—vÃ≠\‰?†¸\Ë\Ú\–~ugr˙èŒç\À\Í?:.√ôïºá\Ùù*\¬\·‘ë\–˙’ç\À\Í?:7Q˘\—p\Êb\—Eà\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\nÇ\„¯\Zû©\ÍO,v≤<˘ì*1D\Œ768â†∏|FN©´õ+û\“ªëß\ÍÜ_,n\Œ[ \ˆ¶\ÿj∑S\›Ak{bñ\”K≤¿î\0Ö\\ªˇ\0Oz¡[YºA\·¡fñç,ëNìLu[vé9§,Y\◊a¿\'\”0Mjh∫%≈ÖÕº≤Z\È∂isF!∞R©\Ûò\»8 s\Ú˛\’\Ón“±y|C£ª‹¢\ÍV≈≠î¥\√\Ãª\0\‡ì¯\“/à¥wé\—\◊R∂+v\≈-œò?x¿\‡Å¯\Ò\\\Ã>’Ø\ÏdÃ∂\ˆ¡\Z\„\Ï\‡#§å^lù\‰r¡^yµX\“|1™\ÈO\«6û\Õ#∞úH≤8T.\Â$\‰∑Q\…\ÁÉ\€ìcqèsy5\Ì?Œ∑∑û\Ú\ﬁ+õÜa^h%∞\ƒq˘~|Uyº[¢D>]B	Hû8F\‡ïg8¸è\ÂXíx*\Òµ8n\Ò|í\Í\”\'ù*èñFqÖRæ\˜\Òt>Ω*\È\\≈\“Gj`ñ\‹KßP@b&\ÛA\Èü\ƒ–úÇ\—7l\ı]?Pöxl\Ô!ûHl´ÇP˚\’q\‚=˝£\ZùØ˙0o\ﬁìús¯\ÒY^\µŒÖ{$≥\›y—¨^L?æï\Œ\›\Ÿ\Ë\ÃUzÖR∞\\Ó°yo\\õh¢ÜG\ÚPD\ \Ï\r\¬\»\€\Û\ÏúcÆsN\Ô@¥nŒñ=Höi!èQ∂i#ã\Œu\ÛU1ù\«\€\‘gƒ∫ ≤é\ÙÍñ¢\⁄W\Ú\“C ¡oJ¡>πm^\ˆvπéKYå\Óë\À$¨7J§c\‹1\‰rGßZ®˛’§≥áv§<\ÙíOì\ÌSÖX\›P\Êæ\Êpx\ÁÖ+À∞˘a\‹\ÈØ¸Q£\È\Îv≤\ﬂB\”\€B\”<\n\„~\Ó\È\Ù#\Û´\⁄\Êóyx--\Ô\‡í\‰\∆%+Ç\€H}¨I¸#$ñZ§\—.\ÁrÉúS\˜\Î\œ^î\€\r\Íë¯û-Z\Ú\‚\Ÿ\’Yÿ™<Ñ\Âì\0~PÔåû\Ù\Ó\ÓM£cR\Ë\Ú\À,M}rG<êv\0ñOΩ¯\”«ä4#k\œ\ˆ≠ßì$Ü$0`∞\Í?ïgK\·\À\Ÿ.u[àM\ @\‡\»e\ÿr~ÖOOj\«>\’Múä.m#πí\·•$\”\ÓåE8rr\ﬂs$7éò•v;Cπ“Øã4@≥¥\◊\@∞‹µ±2∏q\◊-œâtK9$é\ÁS∂â\‚ 8gi ê? k\"O\Í\Ò\œ,\÷\◊.\œ\ÁGõàÿÇíÑ\‹H\ƒ\nt\ËA\ÌVm<2÷æB˘ë∫E;Iñ∞0˘c\Ò¢\Ï-S˚oK˚rXˇ\0h[˝™D\Û/0dÆ3üÀü•>\√V\”\ıH{\»n\"ç∂ª\∆¿Ö>\ı\Œ\€¯V˛Ü\–\œd\÷A¢öBcc\'òë*m∂ù£û∏$w©\Ù?\r]\ÿÈöçï\Â“ò\ÓìÀç\"wq\⁄G\…=˛\ÔAäw`\‘{ñ\Ì|Sß\ﬂ_ºì\€\Õ\nl\›:\Ã6ÂÑ§Å\Ó<Ø\»\Á∑2Øät\'≥í\Òu[SoyÉèA\ı¨è\ÍS\≈s5\Ù∂ô0™m≥à\‰™E:pV>h\„=±Y\ˆ˙>≠\‚8ßæ,∂≥§\Ò¥[R{@\·c(}}\Ó∏\«nG4Æ\«\À≥õ\ƒ\ZMº\ÀöÖ∏ï°3¢od¡9\ÿ\‘Zwà\Ù˝F\ﬂ\Ì	<Kã\Œ\\\»3≥hf$v\∆\·Xq¯:\ˆ\Ì=‡ªÜ(†âfFótõA*X´x\'ëRG\·+∆≥ä)\Ó âd1ÉáÑF#u\Á˚¿Sª¢o\rH3\‹@5o6\›ì\'ò2ä:ìT\Ô<FÑw∫M™\Ív\Â^I%I\’z¸\«¯Ω±\‰U	º/};MíÿµöΩƒ∞ç∑≥JXê¯#Å∏\Ù98åUç7√∑P\Ë´cp∑∫YôLå\‡  \Ï\‹\Ÿfw\ı\«J5ah£°ÜUû\ÊPB»°ÄaÉÇ3O¢ä£0¢ä)(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0lé\"â\‰ ê™X\„⁄î•\Ï\√q=ì$.\Ë7yäq∏Ä8ﬁõ2`í0pYJÇ}\≈O6°}{kúñv\Ò\"ºd»∑,\«\Â`zlq\ÎS.k´W\ÃZ¢ä(9ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ò\Òá\∆s\≈>äE\‰\'ΩB{‘¥Qq\Û2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\Úﬁè!=\ÍZ(∏s2/!=\Ë\Úﬁ•¢ãá3\"\ÚﬁîB†É\œ%\\9òQEQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0ˇ\Ÿ'),(2,'Formulario gen√©rico','<?xml version=\"1.0\" encoding=\"utf-16\"?>\r\n<ListaControles xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Controles>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>684</X>\r\n        <Y>189</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>50</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtFrecuenciaResp</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>680</X>\r\n        <Y>77</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>194</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbGradoHidr</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p6</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Hidratado</string>\r\n        <string>Normohidratado</string>\r\n        <string>Hiperhidratado</string>\r\n        <string>Hipohidratado</string>\r\n        <string>Deshidratado</string>\r\n        <string>Rehidratado</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>681</X>\r\n        <Y>130</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>204</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p8</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Fuerte</string>\r\n        <string>Filiforme</string>\r\n        <string>D√©bil</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>251</X>\r\n        <Y>186</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>50</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtFrecuenciaCard</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>469</X>\r\n        <Y>82</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>213</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblGradoHidratacion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p6</Tag>\r\n      <Text>Grado de hidrataci√≥n:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>252</X>\r\n        <Y>133</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>50</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtTemperatura</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>739</X>\r\n        <Y>187</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>30</Width>\r\n        <Height>15</Height>\r\n      </Tamano>\r\n      <Nombre>Label21</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Text>rpm</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 9pt; style=Bold</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>251</X>\r\n        <Y>77</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>165</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbENutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Obesidad</string>\r\n        <string>Anorexia</string>\r\n        <string>Caquexia</string>\r\n        <string>Peso normal</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>467</X>\r\n        <Y>193</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>239</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblFrecuenciaResp</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text>Frecuencia Respiratoria:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>25</X>\r\n        <Y>-22</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>227</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblEConsciencia</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Text>Estado de consciencia:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 13,8pt; style=Bold</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>305</X>\r\n        <Y>186</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>32</Width>\r\n        <Height>15</Height>\r\n      </Tamano>\r\n      <Nombre>Label23</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Text>ppm</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 9pt; style=Bold</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>81</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>198</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblEstadoNutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Text>Estado de nutrici√≥n:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>305</X>\r\n        <Y>131</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>18</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label24</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Text>¬∞</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>251</X>\r\n        <Y>-27</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>165</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbEstadoConsciencia</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Consciente</string>\r\n        <string>Inconsciente</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>190</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>209</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblFrecuenciaCard</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text>Frecuencia Card√≠aca:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>680</X>\r\n        <Y>29</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>194</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Coma</string>\r\n        <string>Otro</string>\r\n        <string>Apat√≠a</string>\r\n        <string>Excitaci√≥n</string>\r\n        <string>Desmotivaci√≥n</string>\r\n        <string>Desinter√©s</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>469</X>\r\n        <Y>137</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>70</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p8</Tag>\r\n      <Text>Pulso:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>40</X>\r\n        <Y>137</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>136</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblTemperatura</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text>Temperatura:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>468</X>\r\n        <Y>33</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>82</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Text>Actitud:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>251</X>\r\n        <Y>29</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>165</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbMovilidad</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Buena</string>\r\n        <string>Mala</string>\r\n        <string>Con dificultades</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>42</X>\r\n        <Y>30</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>107</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblMovilidad</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Text>Movilidad:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n  </Controles>\r\n</ListaControles>',_binary 'ˇ\ÿˇ\‡\0JFIF\0\0`\0`\0\0ˇ\€\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ˇ\€\0C			\r\r2!!22222222222222222222222222222222222222222222222222ˇ¿\0\‡\–\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0\0}\0!1AQa\"q2Åë°#B±¡R\—\$3brÇ	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\·\‚\„\‰\Â\Ê\Á\Ë\È\Í\Ò\Ú\Û\Ù\ı\ˆ\˜¯˘˙ˇ\ƒ\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0w\0!1AQaq\"2ÅBë°±¡	#3R\br\—\n$4\·%\Ò\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÇÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\‚\„\‰\Â\Ê\Á\Ë\È\Í\Ú\Û\Ù\ı\ˆ\˜¯˘˙ˇ\⁄\0\0\0?\0\ı∫(¢∫è(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0+üã\≈\÷SXZ]fiΩB2\Âr\ÿ\…\ÁßC¯ä\Ë+ä∂\Ö¸3\ƒ\Õ4\\m°C$£9\È˝»îri;‹∏®\€S©ãV\”n%x°\‘-$í9Nâ2íÆz)\0\x<U;è\€Cs\‰†IA,§\È∑*2A\Á\Â\Ù\Á“∞-º+™Gm∞«ß¡5ù≤\√i,,\ƒ\Ã\Í\Í\Í\Ú|£o+\”\Ê˚\Õ\Õ:o\ﬁpê\…Q\ZÆYéXÑ\0ì\«sì¯“ª±\\±æ\ÁA\'àt\‘\’>\√\ˆ∏\“9$ôÑÀà6m\»~~_Ω\ﬂ“õ}\‚]&\ÀI:è\€\ÌeÖ£wád\Ë|˝†í\Á\Ê<vÆf\„\¬Zªô#ä1R(¶é9∑2}\Ú+¸ˇ\0!\⁄p§g\Ê¡9™\À\‡≠b-&\‚\›m\Ù\Ÿd∫éxò\\N\Ú∂\‡\ \≈r\«\'ß@{bã±\Ú√π\ËQM\ËZ7W\0\Ì;NpGP}\ÍJÜ\ÿH±ïí4BÅ±≥ëÿû55QêQE(¢ä\0(¢ä\0±aß\√wíJ\Ú\Ód cèJ∑˝ãk˝\Èˇ\0\Ô\ÛQ£«¨ü\ı’ø•h\◊;n\Á≠N\‰Zt3ø±mΩ?˝˛j?±mΩ?˝˛j—¢ï\Ÿ~\Œå\Ô\Ï[_\ÔOˇ\0öè\Ï[_\ÔOˇ\0ö¥h¢\Ï=ú;\ﬂÿ∂øﬁü˛ˇ\05ÿ∂øﬁü˛ˇ\05h\—E\ÿ{8v3ø±mΩ?˝˛j?±mΩ?˝˛j—¢ã∞\ˆp\Ïc_ip[Y\…4o6\ı¡îë\‘UJΩye\ˆk+ß\Û\Âê+∂B.\‡p=y\Ó{`v™5≠7°≈ãäMYQZd7WPX\⁄\…uu*\≈Kπ›è\n*PC( \‰êE`¯¶\⁄ˇ\0PÜ\”N±ä&\Ûf\Û&kÑcD\Á\r∑’∂\Ò\ﬂ∞\ÌQä}*\ﬂTáV&\–#k\0\‚6ë_ﬂ±Bõyn>\˜zW\÷≈®\Ès≥[˚FîF∑ñ=\0nß$`\Á*\‹{\Z±^gës\€E\ˆ}\\Akv≠ç\Û9ñq∏s\ \·£$\Ù¡\œJ∞\'\‘\Ó\‡É\Ìv∫\ÙvqEk\⁄ƒ≤$Æ ≥)∑\Ê#óíΩF;RR–ßM_Fw\ˆ\˜\›¿≥¡ í&˚¨:qR\◊?\·\Z\ﬂD∂ähÆ\‚∏XF\ı∏1\Û6=∑z\„\€⁄∫\n£6¨¬ä(†AEPEPLîëë¡\nHß\”&ˇ\0Q\'˚ß˘P5πßçl–£ü%A?æj\ˆ-Ø\˜ßˇ\0ø\ÕW`ˇ\0èxø\‹ §Æk≥\ÿ\ˆp\Ïgb\⁄ˇ\0z˚¸\‘b\⁄ˇ\0z˚¸’£Ea\Ï\·\ÿ\Œ˛≈µ˛\Ùˇ\0\˜˘®˛≈µ˛\Ùˇ\0\˜˘´Fä.\√\Ÿ√±ù˝ãk˝\Èˇ\0\Ô\ÛQ˝ãk˝\Èˇ\0\Ô\ÛVç]á≥ác;˚\◊˚\”ˇ\0\ﬂ\Ê£˚\◊˚\”ˇ\0\ﬂ\Ê≠\Z(ªg\∆w\ˆ-Ø\˜ßˇ\0ø\ÕG\ˆ-Ø\˜ßˇ\0ø\ÕZ5’π∏áb\ \Ò8;íD\Íß\È\–˝\ra\Ï\·\ÿ≈∫µKK\”m!Sl;ñ\Á\'÷ôS^\ƒ ªHïôÇ¬£,rO-\…5\rmÑ\Ûq	*ç ¢ä*\Ãä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†¸î\‹H.	9;\\è\‰h\ÚW˚\“ˇ\0\ﬂ\÷ˇ\0\Z\ÒÜ+íH88Rh\Û\„ˇ\0k˛¯?\·S°¢\ˆñ\“\·\‰Ø\˜•ˇ\0ø≠˛4y+˝\È\Ô\Îç|\Ì\ﬂ¸(\Û\„ˇ\0k˛¯?\·G∫?\ﬁ˘áíøﬁó˛˛∑¯\—\‰Ø\˜•ˇ\0ø≠˛4y\Òˇ\0µˇ\0|\£œè˝Ø˚\‡ˇ\0Ö\Ë~\˜\Ã<ï˛\Ùø\˜\ıø∆è%Ω/˝˝o\Ò£œè˝Ø˚\‡ˇ\0Ö|\Ì\ﬂ¸(\˜C\˜æa\‰Ø\˜•ˇ\0ø≠˛4y+˝\È\Ô\Îç|\Ì\ﬂ¸(\Û\„ˇ\0k˛¯?\·G∫Ω\Û•\»\Œpdb?ùIQ}¢1‘ë\Œ9R*Zj\›ó7\⁄\n(¢ô!EPEPEPEPEPEPH@ Ç2ZZB@û\0\Î@\∆êˇ\0M¸h\ÚW˚\“ˇ\0\ﬂ\÷ˇ\0\ZAq±˛\È•\Û\„ˇ\0k˛¯?\·S\Óö~\˜\Ã<ï˛\Ùø\˜\ıø∆è%Ω/˝˝o\Ò£œè˝Ø˚\‡ˇ\0Ö|\Ì\ﬂ¸(\˜C\˜æa\‰Ø\˜•ˇ\0ø≠˛4y+˝\È\Ô\Îç|\Ì\ﬂ¸(\Û\„ˇ\0k˛¯?\·G∫Ω\Û%Ω/˝˝o\Ò£\…_\ÔKˇ\0[¸h\Û\„ˇ\0k˛¯?\·Gü˚_\˜¡ˇ\0\n=\–˝\Ôòy+˝\È\Ô\ÎçJˇ\0z_˚˙\ﬂ\„Gü˚_\˜¡ˇ\0\n<¯ˇ\0\⁄ˇ\0æ¯Q\Óá\Ô|\√\…_\ÔKˇ\0[¸h\ÚW˚\“ˇ\0\ﬂ\÷ˇ\0\Z<¯ˇ\0\⁄ˇ\0æ¯Q\Á\«˛\◊˝\¬èt?{\Ê*D®≈Ü\‚H¡,\ƒˇ\0:}1%Gb™y$E>ö!\ﬁ˙ÖQLê¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(	¬ì\Ë+ë—º]-\‹Myw¢%¢@gx\ÌnöY\„}\‰«æ;\‡W\\FA¢π+?	\Í6\ˆXM{§\…l\÷\Ê∑K√û8\ﬁLÑ0„ëÅüjó~ÜëÂ∂•\ﬂ¯L\Ùü¥ƒÅ\Ê\Úd∑ís+[\ 6\Ï`•Jï\»9==8\‰TZèé4ãMØ†∏2\»\—H\\∆aê\…¡6\Âp2\ÿ\‰\’\5\‹Zj\€G¨*∂\…øp\Â6≥#Pd\‹)\»\‹r\Ú)±x\Ú\€Lû\“\◊V∑É\Ì1\À\∆\À/ê£í@E\ﬂ\Ú\‡ì\‹\‰^h‘´S\Ótñ˛ \”.uF\”c∏&\Ìr\n˘në\‘#i#∏\"©\ﬁx≥O∂\÷`\”R`\“Y.ïÇƒ´HN\Ïm$m\0\‰gö-<=so™§œ®+\ÿ\√<∑€à0\Î$õ∑e\Û\»˘õØSUoº#5˝ƒë…©¶º≥K\ˆq\Œ\ZX\›\Á\œOúë\«\Á\∆\rIJ6,µ\›;P≤û\Ó\⁄v0¿	êºNå†\Ák\0qéA\«=™\Ë˙äÓµª.2F\ZC\¬\Ô\Œ6\ÚC⁄®h~˛\»\”5Vπâ\‰ºMÖ‚âî(\⁄@·ùâ<ûˇ\0Ä¢\Ô\¬\◊J≥ZjKo0õö\ﬂx\⁄#1∑á\'9∂;\–\ÓÖ\˜?iRõÑJåí˘pñ∑îâ>E}\‹/OõüA\ÕYoi\≈gÜ;§7P\¬%|\«\'ñ8¸\€y\∆\·¿\‰ddU;_	Kn\Ó\r˙ºfçGìÇDëìù‹èêcΩ9<1y≠’ä\Íà,&Càæ\Õ\Û+údñ\›\»\»$ΩM\Zè\‹\'>.\“\“˛˙)në!¥ès9éNHl>\‹0RT§\Úy\≈h\È˙≈ñ´\Z\…g$é≠ª\ÔBÈÇß¿m9\Ïpk\rº%s+•\‘—¨\‚gkXÖæ\Z2\Ó\Óm\ﬂ7p8y\Õm\ÿ\ÿKeqp\¬thßô\Ê)\Â\‡Ç\ÿ\«9\Ë0{w¶Ø‘ôr\€B˝QLÉOFˇ\0èY?\Î´J—¨;\rFH§éa(o0∞\€0\«¿´\€v\Ù\ﬂ˛¸?¯W;N\Á≠Nq\‰Z\Ù4h¨\Ô\Ìª?˙oˇ\0~¸(˛€≥ˇ\0¶ˇ\0\˜\·ˇ\0¬ïô~\“\Õ\Z+;˚n\œ˛õˇ\0ﬂáˇ\0\n?∂\Ïˇ\0\Èø˝¯\¢\Ã=§;ö4Vw\ˆ›ü˝7ˇ\0ø˛m\Ÿˇ\0\”˚\ˇ\0\·Eò{Hw4h¨\Ô\Ìª?˙oˇ\0~¸(˛€≥ˇ\0¶ˇ\0\˜\·ˇ\0¬ã0\ˆê\ÓG{}ouaq.Y\’Aq¥çø60}A\„⁄®Uõ\›J\“{I¢Ö%\Û%#˛X0\…\»\Íq\Ë*µkMhqb\‰õV\n(¢¥8\ :¶£˝õj≤$q4í°Ö\‹\Ù<ÄI>Ä\’H5ˇ\0&:›∏\“\Â¨JP\È!aë±Ä\Ëx¿<Uù^\¬{\Îhç§\…\r›º¢h^E‹ªÄ#28 ë¯\÷ô\·k\À}Muô-RVπ\Û\ﬁ(7≤)\Ú\Â\\Ç\‰\ÚLπ\ËN¶âF⁄ö\„\≈\Z∑π∏\Z≠°ÜŸÇL\‚AÑ\'Ä?\ZÜ\œ\≈zM\Ã6ç-\Âº\ﬁ;§¥†ô6π@G\◊}kù”º¨\ÿNn\ÕÂî∑q˘F#!ï\’\ 	-∏í2$\‡/\0ä≥ÑuHm˛Ã∑V]\ \Óœî\ŸP&yã\”˝a=öcqáFokæ\"∞\–m\À\\\œ∏d-\r VóÖZ∑\’\Ù\ÎΩB{{\ÿeªÄfXU¡d˙ä\«\Òá\Ô\ı9\Ák)≠.≠ñ\ﬁqqb°X∞*Gò\ı\ˆ5ã\·;ù3ƒì_\…w\Ê\€nô\·S4§É#n#amãèa\œ)\ÎqZ<ª\ÍhC\‚ã	ö\Íöym+#€¥¿6\—&\Õ\›8\œ_\ƒSd\Ò~éöõ\⁄}∂‹§1H\˜âF!*\Ëª[\Í_\Ù™ó>öm•%Å[\Ì\ \«ë$\ „∑¢\„\Ú™©\·-D\œn≥Ob÷∂à\"ádlìœä\\øl\‚28\ÓsﬂÖ®\ÌV\Û\∆Z\rúF	\Z\›\‰çà\0\„˛*\–\Òä\“]F5;]÷âæq\Ê›Ø©Æf\Á¡ö¨˙Ω\Â\Á\€-XH&\ÚK¥Ñ¸Ï¨†å\ÌP6\„\Â\ı¶ˇ\0\¬´>©q{-\Â£1\ﬁ\—26XÃí®e\'FÕ∏P:Êã±\Ú√π\“K\‚]6+GΩ˚]≥Y¨eîLÏí†s\ÍF:\ı•áƒ∫KãóP¥Kã\»\—\‚àLvÏèî\˜\‰üjÕπ\–5kâaæ\Û¥\ıøÑ#*\ÿB\\;ú¯\√\ıÎëúv¶\€¯R\Ê8¶3Mn\”Lav(Ñ*≤‹º\Ï∑œÅ\Ù\ÊÖrmD3Gq\Àáç∫0\Ëi\ƒRB0i∞˘æR˘˚<\œ\‚Ÿú~ß\’t0ˇ\0®è˝\—¸©\ıòö≈¢F®\ﬁvT\0qü\ÈN˛€≥ˇ\0¶ˇ\0\˜\·ˇ\0¬π¨\œ]Tç∑4h¨\Ô\Ìª?˙oˇ\0~¸(˛€≥ˇ\0¶ˇ\0\˜\·ˇ\0¬ã1˚Hw4h¨\Ô\Ìª?˙oˇ\0~¸(˛€≥ˇ\0¶ˇ\0\˜\·ˇ\0¬ã0\ˆê\Óh\—Y\ﬂ\€v\Ù\ﬂ˛¸?¯Q˝∑gˇ\0Mˇ\0\Ô\√ˇ\0Öa\Ì!\‹—¢≥ø∂\Ïˇ\0\Èø˝¯\£˚n\œ˛õˇ\0ﬂáˇ\0\n,\√\⁄Cπ£QOs™ô\ˆ!`ªà\‡g\‘\ˆ™\€v\Ù\ﬂ˛¸?¯R6±b\ËQ\÷fV €π\Ù¢\Ã=§;î\ÔfKã¥ñ2J<*TêFF[÷°ß\›]Gwzdà>\—\\∫\Á\'÷ô[C\·<\‹CN£h(¢ä≥\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢¢Pë*}\Ë˚L?\Û\’:WErK±-\⁄aˇ\0û´˘\—\ˆò\Á™˛t]$ª\—Q}¶˘Íøùiá˛zØ\ÁE\–rK±-\⁄aˇ\0û´˘\—\ˆò\Á™˛t]$ª\—Q}¶˘Íøùiá˛zØ\ÁE\–rK±-\⁄aˇ\0û´˘\—\ˆò\Á™˛t]$ª\—Q}¶˘Íøù=d]\»¡î\˜\\Z\‹uQLê¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(ìJ ÇIJ;ÑR\€c]\Ãq\ÿ\Ê≤\Ù\€\ÎRÃêZ_\√\ÂÆmö5\»8#\'øµk\◊\‚O\Íó\÷JëZô\„\ZÑ\”=∏X\ﬂz∑\‹mÆ¡N9\Ír3û¢•∂ãäOFw\‘W	É‰πû\ﬁ]N\–\\ ≤¬í\ \ÚZ!n¡\Áê\\r;\„“≥\Ï¥+Ø\Ìx≠∆î\∆\Ó\‘Zº3/˙\"©%Ü3ìπﬂó9\Ëp(∏˘s\“\Í+ãòmb\ÛgpâπS\'’àP?@Ø6\“<™®∏ÉP¥/≤¿.CÇ\‹\‚Ufïâoî[\Á®•\Ü°.Ø®M&Öæ\‹Y7C≤}∑∫\Áq˝⁄∏˘\»8\0•\Ÿ\\ëæ\Á©\—\\h:ù\ÙëY\›\È$Y\√!Ffï\nÃçtí\0sçÄ\}\Ù\Àt_Y¯∫\Ú\ˆ}≈¨ã*6÷ádüæCv\„Ö¸\›1Ä\'ë[s\–h¢ä£0¢ä(\0¢ä(\ˆùk\ÒJ\“\∆Ñò˙`U\ﬂ\Ï˚O˘\‡ï_I A.HΩˇ\0\ŸEhn_\ÔŒπ\‰\›\œ^í^\Õˇ\0≥\Ì?\ÁÇVu¸ApÇ$\n\ndÅ\ı≠ù\À˝\·˘\÷N®Aπèêˇ\0:p~\ÒÑΩõ1t\ËØ\‚Yæ\ﬂ:JZBc\⁄z/˝\Ú1\Ù\Á¶Æ\—EnyÅEP ¢ä(\0¢ä(\0¢ä(ñ©™C§Z≠\ƒ\Ò\œ(ijêDdvc\–ö4\ÕN\ﬂU∂i\‡YScò\ﬁ9£1∫0\«O#Ç\„U<Eß\\\Ív∂ê\⁄\Õ4∑I#M	]\Ò®\ŒH\‹˝\r`\Î:°gm*i\–\‹\Íí\›Y\›A4\”M\Zøô MÆ\ﬂtc\„\n=8\Íjn\Õb\“\‘\Î\Ìn‚ºç‰Ñí©#\ƒr1\Û#?®5=y\›\ÁÜ\ıSÆ\ÿ^Cß¥íEu+ávç£ç\r√æ~\u%Xrπ\œB8´∫áqi©4ì\Ëf=®V\Ío5\Ì“ôQí\\n˛3|\ÿ#8\0–õk\‹\ÌË¢ä£0¢ä(\0¢ä(\0¢ä(\0¢ä(kMˇ\0ê]ß˝qO˝U™»≤’≠!∞∑äC0tâUá\Ÿ\‰8 \ˆj\Ì´\ÔMˇ\0Ä\Ú\Ò5\Õf{*q\ÓhQYˇ\0\€V?ﬁõˇ\0\‰ˇ\0\‚h˛⁄±˛\Ù\ﬂ¯\'ˇ\0Eò˘\„\‹–¢≥ˇ\0∂¨Ω7˛\…ˇ\0\ƒ\—˝µc˝\Èø\O˛&ã0\ÁèsBä\œ˛⁄±˛\Ù\ﬂ¯\'ˇ\0G\ˆ’è\˜¶ˇ\0¿y?¯ö,√û=\Õ\n+?˚j\«˚\”\‡<ü¸M\€V?ﬁõˇ\0\‰ˇ\0\‚h≥x\˜4(¨ˇ\0\Ì´\ÔMˇ\0Ä\Ú\Ò4mXˇ\0zo¸ìˇ\0â¢\Ã9\„‹±5\ıº,2I∂F\∆\’¡\Àd\„è_J\¬ˇ\0ñ≥ˇ\0\◊i?\Ù3ZgW”ô’õ\Õ,øtõi2>ü-e´28k\ \Ï7)â\Z∫i\‹\Â\≈\…8+1\‘QEly\·EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPHC\n7SéM-\0QE\0QE\0QE\0QE\0QE\0\”\Z1\À\"ì\ÍE\'ï¸\ÛO˚\‰S\Ë†wc<®ˇ\0\Áö\ﬂ\"ú®´\˜T†•¢Äª\n(¢ÅQ@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@8¨ç\'\ƒVöÃª-m\Ô\’vyã,\ˆrGè∫\Ã\0={V≥r§{WÖßè¬êY\À5\ıƒíõQ=¥\◊ñ5YP∏_A¥7C\–R‘∏§÷ßgEy¢xg\\ã[\’Z\‰çdéuéUUEí6\À@\‚M\‹∏1é≠\Îù>\ˆ--Fï\·€´x•¥ºµ[Vù7D\“ ª|\‰\ 7\nOQ\«&ï\ \‰W\‹\ÔhØ2ì\√Z\Î\Í\⁄√¥S>+Ö\ÛB®£#@˛f\‚G\0cØÆÖ«á\“\˜\À]\Z\‚\ÛLKô\Z\ﬁ\ﬁ+çæ[≤C∂Lññ^y ± \—v.E\‹Ó¢îJ¨B∫\Ìbø:ï\Ëqû{{\˜¨˝S^≤\“8\Ó<˘%ëK\Ì\‡yò(\Í\ƒ($(\œS\\F≥°k3\Í\÷\Ú\≈ap\¬+∂ö)bd;spX\Ó,\ﬂ()åm9¡\"∫ΩE\Ô¥\›m\ım.mF;ãdÄ§Å\„dg ù\‰\rß$çΩ\rvTû\Ê\‹\≈so\:\…äO \”.\Ó·≤ÑM;C\"F˘ôÇè‘ä\Û\›OE◊ÆºG\r\€iŒ≤,AZKfO$)ÑÇπf\‹>c\–(gìSO\·âmÓ¨£ãFöbçh\\‹$¿-∏YJ\…$\Ón\Œz\(L|ãπ\ﬂ[\‹%\ÃfH\√m\À\Û)¡¡\Î€éµ-y∂±°k3Oß¨.†ï§I\"d;\⁄é\‚\Õ\Ú¸ò\∆\–I\Œ	<˙-\Á\ˆ6£n∫—∫ñT˚\\\‚eµ¸\‰ñE2\0x=o Qvãπ\ËTW;\‡\Î+ã\r\ﬁ\ﬁ\Ú\“hÆ£èc<•	*$}´\Úúp¶9\ˆË™å⁄≥±°ag\ˆ\Â\‰MÕºå\‰’Ø\Ï\ÎO˘\„ˇ\0è\Ò¶i_\Ò\Ë\ﬂ5vπ\‰\›\œZúW\"”°W˚:\”˛xˇ\0\„\«¸k#Uÿ¥Ø|©˝π<ëª¸+°¨]YU\Ó\ 0Z =\∆Zúor1\n*õ\–\Ûè¯X\“ZO\Ï\»X¨>n\Î;≤åˇ\0/\À\»pOcüJ\Ë\Ù-r]Zk®fµH\Z¸ó\r\Û∫z\ÒüŒ¥a∞¥Åï¢∂çc¢\·~úö∞Ä¬∂<\Ê\‚\ˆB\—E\»\n(¢Ä\n(¢Ä\n(¢Ä\"û\Í\ﬁ\’C\\O!éë\¬\Á\Ûß\«\"K\Z\…´£ÜSêEs>*±õP\‘\Ùà áOï\Û3møÄ\À6è\·sY\Zﬁ°´\Ë\ˆ\˜¶\÷\Ì-\Ì\ÌMΩøïqGîêS∑ûÏÅªêjocE\⁄\«EpZ_àoÆß\“E˛∞∂~l`ƒãI\ˆ\ÛÊ≤ëê?∫™~Lõ=*ùˇ\0åu\Ï\”\ˆK\–fÜ$[\…\0E˚;˘•XíÀµH\0FA\"éd\ G§\“3*\„sìÅì\‘◊üZkz\Ì›µµ\Ÿ‘∂$1B\Ô\Z\«≠¿kÜè%∂\˜PW<é*k}vy-y5_∂\\≠\‘fkAjÑŸú∂cu\‡pN\Ó3ú\Z9ÉŸ≥º$ípA\Â≠\—aos\€z˘nïqû\◊ouõ\reo/\„ΩFØ°C¥2∂TîU”út…¨k(\ı\r\n\›oÆô\»—ã\Ÿmû~v\Û	\',Ä\∆9\…=ç\Zß”©\Ítå¡T≥íOº≤_\ÎK\·\Ën∆ØE∫t	 gùB©\ngñ\ƒ~Q¥ûÄ\‰\ZΩw\‚;\È.µèU\ﬁ\‡LøŸ≤[\'\Ó\‚3\√`rJ\Ûåfé`\ˆL\Ùn£\"ä\Û=w\ƒ:Œü¶=\ƒz—ÇIngXC\«\"à≤Qâ-\ÈÇN8#(ö\›≈≥\›yæ$kö\‚IûSm±\Ãq4qØF\ƒw;x4s TùèL,™T\0±¿\ı•Ø>õZ\’\“›µ+õñ$u[anç\‰ëfd$dn\Œ\„\Î\–c÷¥<≠\\\Í∞N/5hÓ§Ü\·\„à\∆—∞ô6F\Ÿ ¢É¥±P=˙”æ∂ÉJ\Áhã\…,äs\—TäöXn$ÿì\ 3 ä≠Wt\œ¯˙?\Ó\ÈS%er\ÈI9(¥â≤¸¸?˝\Ú*ï\Ãf∏\Ú\˜ódès˛øX⁄ü¸\€%˛mQ	6Œ¨E(Fõi+x\È\ ﬂ¶\»<\—\ÃJ	Ãõ∂\Á”Ñ9?J\⁄–µµ\÷\‡ñAn\–4eAV`\ŸC\«÷¨.è¶≠\”\\ã(<\÷Eå±@p™I\0Éì\€˙Uò≠\·∑CqÉå\ÏP3è•k©\¬\‹z\"J(¢ôEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPQ±\…E$\˜\"è&/˘\Êü\˜»ß\—@\Ó\∆y1\œ4ˇ\0æE9QS\Ó®\\˙\nZ(∞¢ä(QE\0QE\0QE\0QE\0QE\0`zR`zR\—@•îQ@\0\Ë(¢ä\0LAP\€\⁄Cjg1ô§2æN~b\0? ß¢ÅâÅ\ÈF†•¢Å&\0\ÌKE\0\‰íH\Œ\Ë‹£zåSh†i¥\Óâ~\’uˇ\0?2~K˛;\»˚\‰vv\∆2q\”\˙\“QJ\…\ÍNJÕÖQLÄ¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(ˇ\Ÿ'),(3,'Formulario Malestar','<?xml version=\"1.0\" encoding=\"utf-16\"?>\r\n<ListaControles xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Controles>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>829</X>\r\n        <Y>112</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cb_e_nutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Obesidad</string>\r\n        <string>Anorexia</string>\r\n        <string>Caquexia</string>\r\n        <string>Peso normal</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>238</X>\r\n        <Y>622</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>734</Width>\r\n        <Height>24</Height>\r\n      </Tamano>\r\n      <Nombre>txtDieta</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p14</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>592</X>\r\n        <Y>115</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>198</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label17</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Text>Estado de nutrici√≥n:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>622</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>181</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label31</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p14</Tag>\r\n      <Text>Dieta del paciente:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>564</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>931</Width>\r\n        <Height>37</Height>\r\n      </Tamano>\r\n      <Nombre>chkCambioDieta</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p13</Tag>\r\n      <Text>¬øHa cambiado su dieta recientemente?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>829</X>\r\n        <Y>72</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbGradoHidr</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Hidratado</string>\r\n        <string>Normohidratado</string>\r\n        <string>Hiperhidratado</string>\r\n        <string>Hipohidratado</string>\r\n        <string>Deshidratado</string>\r\n        <string>Rehidratado</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>592</X>\r\n        <Y>72</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>213</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label9</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Text>Grado de hidrataci√≥n:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>410</X>\r\n        <Y>462</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>563</Width>\r\n        <Height>25</Height>\r\n      </Tamano>\r\n      <Nombre>TextBox3</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p11</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>482</X>\r\n        <Y>508</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>491</Width>\r\n        <Height>24</Height>\r\n      </Tamano>\r\n      <Nombre>txtDrugs</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p12</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>508</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>441</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label19</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p12</Tag>\r\n      <Text>¬øEl paciente presenta trastornos alimenticios?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>143</X>\r\n        <Y>112</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p2</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Coma</string>\r\n        <string>Otro</string>\r\n        <string>Apat√≠a</string>\r\n        <string>Excitaci√≥n</string>\r\n        <string>Desmotivaci√≥n</string>\r\n        <string>Desinter√©s</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>115</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>82</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label16</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p2</Tag>\r\n      <Text>Actitud:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>143</X>\r\n        <Y>70</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Fuerte</string>\r\n        <string>Filiforme</string>\r\n        <string>D√©bil</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>462</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>337</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label3</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p11</Tag>\r\n      <Text>¬øConsume alcohol u otras drogas?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>72</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>70</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label21</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Text>Pulso:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>410</X>\r\n        <Y>416</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>563</Width>\r\n        <Height>25</Height>\r\n      </Tamano>\r\n      <Nombre>TextBox2</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>417</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>364</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label2</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text>¬øQu√© otros problemas de salud tiene?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>184</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>414</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label28</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Text>¬øCu√°nto tiempo ha durado esta sensaci√≥n?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>353</X>\r\n        <Y>364</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>620</Width>\r\n        <Height>25</Height>\r\n      </Tamano>\r\n      <Nombre>TextBox1</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>482</X>\r\n        <Y>184</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>492</Width>\r\n        <Height>24</Height>\r\n      </Tamano>\r\n      <Nombre>txtDuracion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>365</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>303</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label1</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text>¬øQu√© medicinas est√° tomando?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>42</X>\r\n        <Y>229</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>930</Width>\r\n        <Height>27</Height>\r\n      </Tamano>\r\n      <Nombre>chkMalestarConstante</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p6</Tag>\r\n      <Text>¬øEl malestar es constante?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>311</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>931</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkViajo</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p8</Tag>\r\n      <Text>¬øHa viajado recientemente?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>271</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>626</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label26</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text>¬øPuede cumplir con sus actividades diarias? Si no, ¬øQu√© lo limita?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>679</X>\r\n        <Y>271</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>294</Width>\r\n        <Height>24</Height>\r\n      </Tamano>\r\n      <Nombre>txtADiarias</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n  </Controles>\r\n</ListaControles>',_binary 'ˇ\ÿˇ\‡\0JFIF\0\0`\0`\0\0ˇ\€\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ˇ\€\0C			\r\r2!!22222222222222222222222222222222222222222222222222ˇ¿\0\‡\–\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0\0}\0!1AQa\"q2Åë°#B±¡R\—\$3brÇ	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\·\‚\„\‰\Â\Ê\Á\Ë\È\Í\Ò\Ú\Û\Ù\ı\ˆ\˜¯˘˙ˇ\ƒ\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0w\0!1AQaq\"2ÅBë°±¡	#3R\br\—\n$4\·%\Ò\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÇÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\‚\„\‰\Â\Ê\Á\Ë\È\Í\Ú\Û\Ù\ı\ˆ\˜¯˘˙ˇ\⁄\0\0\0?\0\ı∫(¢∫è(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(†ú\÷Fô\‚m#Wπ˚=ïÀº•™ºGΩF2T≤Ä√ë\”=hû\ÊΩπÑ]≠©\ﬂ2\‡˝\–@\'\Û\"•†ä(†AE5ûûoÆn¶èlõB†\\t∏>µ.IniNõ®\Ïàh´ˇ\0ÿÉ˛Æ?$ˇ\0\‚h˛\ƒ\Û˝q˘\'ˇ\0S\Ì∑\’*(´ˇ\0ÿÉ˛Æ?$ˇ\0\‚h˛\ƒ\Û˝q˘\'ˇ\0G¥A\ıJÖ\n*ˇ\0\ˆ ˇ\0ü\Îè\…?¯ö?±¸ˇ\0\\~Iˇ\0\ƒ\—\Ì}R°Bäø˝à?\Á˙\„\ÚO˛&è\ÏAˇ\0?\◊í\Ò4{DT®P¢üujlÆbåO$´\"3\·x¡Äz\”*”∫πÑ\‡\·.VQE2ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä≠®ZÈñçuy0ä n íI\Ë\0í}3M\’,\ıkcqe7õ\Z±F ïeoB¨ë¡\ËùÆ\\¢äÜ\÷\Í\€X\Óm\ﬂ|2´`åè∆Ä&¢°∫∫Ü\Œ=\√\Ïå•∞O$Ä:{ëSPEVK\Îy-\≈\ƒnZ#\'î\n°?6\Ìò\∆3\˜∏\œN˝)ˇ\0já\Ìüd\ﬂ˚ˇ\0/\ÕŸÉ\˜så˙u†,ME2Y£Å\ \ÍäYP8\Âà\0~$Å¯\”\Ë\0¢†ö\Ú\Ì+ïX#\Ûdbßy\Á8\Á\Óû\ı20tW\√åå Ää(†AE*K4\Ò\√@œû_8\‡Rn\≈F.N\»(´?\ŸWø\Û\÷\ﬂ˛˘j?≤ØÁ≠ø˝\Ú\’<\Ò6˙µ^\≈j*\œ\ˆU\Ô¸\ı∑ˇ\0æZè\Ï´\ﬂ˘\Îoˇ\0|µ\Ò´U\ÏV¢¨ˇ\0e^ˇ\0\œ[˚\Â®˛ Ωˇ\0û∂ˇ\0\˜\ÀQ\œ˙µ^\≈j*\œ\ˆU\Ô¸\ı∑ˇ\0æZè\Ï´\ﬂ˘\Îoˇ\0|µ\Ò´U\ÏV¢•∏±ª∂∑yöHPdÄMET§û\∆sß(|AES3\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Äæ\È˙Wáµxº3\Û\ﬁ\‹\\\‹\€\Ÿ\‚\⁄\ÕbX\ÃmÅëë\À6—ì\‹\◊sE+§\—\ÁZçû´®•˝\œ\ÿ\ıP\Â._n¯àCÇ\ÂCå\˜¶≠ñ≤\ˆ\ˆ?i\”\ı/µàlö\ÿ%ºÇG\ÀHíMá[ÄW≠z=îl_¥dÅé9#]\Ì\Ú…ú\Áq\…\Á±<èjûä*å¬¥\Ù\ıˇ\0\◊o˝ïk2ö¢D,cûh\√ê≠Åúc˙TN-£j9]ù5\Õ\Ô∏ˇ\0üªè˚\Óç\˜\Û\˜qˇ\0}\‘{6u˝nüô\“Q\\\ﬁ˚è˘˚∏ˇ\0æ\Ë\ﬂqˇ\0?w\˜\›Õá\÷\È˘ù%\Õ\Ô∏ˇ\0üªè˚\Óç\˜\Û\˜qˇ\0}\—\Ï\ÿ}nüô\“TW1\À,aó îr≠ååé\ƒwÅæ\„˛~\Ó?\Ô∫7\‹\œ\›\«˝\˜G≥a\ı∫~d˙Ño\ˆâ$¶YRr1ìï˝*\nn§$≤H¿7∂pˇ\0®S´H´+U¶ß>dQEQêQE\0QE\0QE\0QE\0QE\0QE\0QE\0QEèØ%¬õ\ÿ-^\ÏY\‹yØx\ﬁ\ Qó+í#vq\\ÂΩû±©]-\≈\‰f¥<\—	mù\ÒÀº!\È∏\07zt\≈wtTµr\‘\Ïyfóßj\È\¬˛\«Xí¿\Õí€£<n\«cÇW2 >\¬~aû1V\Ï4ΩR¶G%Ü®.ë-≈¥¢o\›¿°øz$±í3úÉúÄ:W§QEäu[8üi\˜wZ¿?b\‘.A˚?\Ÿ^	ä-≤fM\„#®\«Psé:S<#eÆ\€¯í\ˆMHL#eì\ÕfçÇ\»\≈¡B\ ¿\·sç™∏+π¢ùµ∏π\ﬂ-éP¥πäktº\r=\√=¿21Qã\»\Ÿx\Œ\0\ÿ\\\Ò\‘f≥\Ï¥;\Ÿ\ÓcIl5Xô£Ç;\ÈeùàñA(2!éå\Ú01^ôE%\⁄=O*óF\’n5[\„sßj-kº;\ƒ\Ìmó1≤\Ì>a\‹|Ω¯¿Q\ÿsRAaÆùCRí{-S\Ï\”aÆbFaº	Å*åd%é\√\‘m\»\‡\n\ı\Z(\Âµgyet\À	:~¨\⁄Pé\‹Kj≥1@\'\„!≤H&\"@9\∆3“í\ÀF\‘¸\ÎkÀîøY\‡{a¥\Ïv«Ω∑Ü\0\·àBûï\ﬁ\—N\ƒ˚Gk\⁄pà\„x\– ⁄ígråt9\ÔSQE2¶±ˇ\0êúF˛U\r icï%Ö\’]3\˜óp\Á\Ò2WE“íå\”gKE`ˇ\0hj\Û\⁄˚\Ú¯™?¥5˘\Ì˝˘?¸Ue\…#\–˙\’>\Ê\ıÉ˝°®\œh?\Ô\…ˇ\0\‚®˛\–\‘?\Á¥\˜\‰ˇ\0\ÒTrH>µOπΩE`ˇ\0hj\Û\⁄˚\Ú¯™?¥5˘\Ì˝˘?¸Uí≠S\ÓoQX?\⁄\Zá¸\ˆÉ˛¸ü˛*è\Ì\rC˛{Aˇ\0~Oˇ\0G$É\ÎT˚ñ/>\⁄lo»àF®B\Œ_ûæ\‹qè\\\’\Zt\◊7∑¥RM\∆m±qˇ\0}SkHE≠\ŒLMHÕÆP¢ä*\Œ`¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ö\Ó±\∆\Œ\‰PI\'∞Ø;”ºAdu;\…l\Ómæ\ﬂ	ªÇK¿æV\‡\ÿ\»\√¥F—í8CIªπ#—®Æ˚Pæ˚mô}b\∆\ˆ?!’Ñ1|í∞û!úo8`„ûá÷ç\'ƒóvv\⁄\›j\˜$\€\À.Ãó/åd\‰Ö\ÈKò~\Õ\⁄\Á}Ep\⁄©y©¯Ç+â\ı;i,Dû\\I\Ãïs|‹∑l\sû+π¶µW&Q\Âv\n|\◊W^cD∞\ÏF€óêÇx˚ß÷ôZz?˙âˇ\0\Î∑˛ µ3m-\r∞–å\Ái?≥oˇ\0ªmˇ\0[ˇ\0â£˚6ˇ\0˚∂\ﬂ\˜\ıø¯ö‹¢≤\Áë\€\ıj]å?\Ï\€ˇ\0\Ó\€\ﬂ\÷ˇ\0\‚h˛Õø˛\Ì∑˝˝o˛&∑(£ûA\ıj]å?\Ï\€ˇ\0\Ó\€\ﬂ\÷ˇ\0\‚h˛Õø˛\Ì∑˝˝o˛&∑(£ûA\ıj]å?\Ï\€ˇ\0\Ó\€\ﬂ\÷ˇ\0\‚h˛Õø˛\Ì∑˝˝o˛&∑*+ñù`-n™\Ú/;\„p\Ó3\ÿ\—\œ ˙µ.\∆\—Om:G:\«\Û©`Q\…\ËG®¥ï>†f3\⁄Ä¢SÖÇtØˇ\0ZÇ∂ÉmjpWäå⁄àQEF!EPEPEPEPEPEPEPEPEræ9çf≥\”bx-\'FΩé\ÚsM˚∑˚\Ã\«\Â÷±¶\÷\Ó<;o§\√höe≠ë,\◊YH.@˘¿\‡≥#c®Rs\∆*o©¢Ö\’\—\ËtWô\Í∫XµÄ_\€‹∞∫?|j	V∏dì&A\‡\„ªt\Ô,û#ø:úw\Ì`\ŒmfR>«∫xS\˜ø7;züª\»j9á\Ïù\œH¢πhµ\Î\ƒ\÷•r\◊6ó3\Ÿ\Ãa[¥]∞∞˘~r2pq\Œ\ûkóõ\≈\Zûï%\‚Awoy$\◊\“ªÜ$1∑ó(*Åú\ÛÜ8¡¿£ô	Sl\ı\Z+ô\÷5MX\ŸiœßIom-≈ºì\…\ÁGÊÅµm#π\∆sXöøäÆÆtk® ºÇ\⁄\ÌÑ\Ÿ\n2\Ò†ÑH2~æ\Ù€µ¸Ç0n\ﬁg†\—\\∆π™[Üºñ{9Ç<\Ò@˛IQ\\#‹érG†\ÎR\ﬁkWV\‚\056\‚gà\¬⁄Ç&#LÃãíqÄy\Îéis≥goEy˝∂∑´Alê\Ÿ\\\ÿ5ÆûÑH\È	+r´(Oî\Ó˘x\ŒN[ë]›πc\œ2\ w7Ã£©\„©\È\”\¶ù…îyIh¢ädÖ\"¨≤\œ0™|˝\ˆ `ijk˘	¡\Ùo\ÂS\'dkJ*SIé˛Õø˛\Ì∑˝˝o˛&è\Ï\€ˇ\0\Ó\€\ﬂ\÷ˇ\0\‚krä«ûG°\ıj]å?\Ï\€ˇ\0\Ó\€\ﬂ\÷ˇ\0\‚h˛Õø˛\Ì∑˝˝o˛&∑(£ûA\ıj]å?\Ï\€ˇ\0\Ó\€\ﬂ\÷ˇ\0\‚h˛Õø˛\Ì∑˝˝o˛&∑(£ûA\ıj]å?\Ï\€ˇ\0\Ó\€\ﬂ\÷ˇ\0\‚h˛Õø˛\Ì∑˝˝o˛&∑(£ûA\ıj]é~\‚\Œ\ˆ\⁄ô\“®2q!\œ˛ÉQ\’\Î∆Ωk≈∏é5çÖe92s\◊Ü;z\Á\Ò£ZA∑π…âß5 Çä(≠P¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(Dduå0\ \√ èCL{x$\n\ÿ !APv\‰`\„\‚§¢ÅïÜùb±\≈\Z\Ÿ[Ñá˝Ràó	˛\Ô~gX\ÔW˚æ\ı%ïº•\»$\Ó\'ßR@?QVh†.\ Àß\Ÿ$ç\"Y€´ªnf(,rI\«\\Ä\n≥E\0S°∏ª∂\Û/\«m\ÿxâ#Ä:Üî\⁄)4û\ÂBrÉºIˇ\0¥µ˘\Èkˇ\0~[ˇ\0ã£˚KQˇ\0ûñø\˜\Âø¯∫Çä\\ë4˙\≈^\‰ˇ\0\⁄Zè¸\Ùµˇ\0ø-ˇ\0\≈\—˝•®ˇ\0\œK_˚\Ú\ﬂ¸]AEë¨U\ÓO˝•®ˇ\0\œK_˚\Ú\ﬂ¸]\⁄Zè¸\Ùµˇ\0ø-ˇ\0\≈\‘Q\…˙\≈^\‰ˇ\0\⁄Zè¸\Ùµˇ\0ø-ˇ\0\≈\—˝•®ˇ\0\œK_˚\Ú\ﬂ¸]AEë¨U\Ó\Àqs2Ip\ÒäUDhWÆ:\‰üJ(¢öV\ÿ\ RrwaES$(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0Ç\Í\ \÷˙/*\Ú\⁄à¡\Œ…£3\ÎÉQ&ë¶∆±,z}¢,,^ ∞®«©p}\≈\\¢Å›ïK\”\‰ì\Ã{Vp≈∑Túûß8\Íi\ﬂ\Ÿ\ˆBId˚æ˘A7î2˘\∆rq\Œp?!Vh§dQZ\€¡l-¢Ç(\‡$@ò\ÈPˇ\0ei\ﬁ@É\ÏæH`\¬?%vÇ\∆1ê\0¸™\›\¬\Ïc\√ÑçÄ@ ÉÄz\‘?\Ÿ\ˆE\ŸÕùæ\ˆ]¨\ﬁR\‰åcéò8˙Uö(ê-ï™F#[hU\0 (å\0\‡˛t—ß\Ÿ,B\Ÿ€àB¸±\Ì\⁄zÆ1å{Uö(≤≤¥H\ƒik\n\∆`Q\0/\\c\”⁄•H\“5\€\Z*ÆI¬åûM:ä\0(¢äÅ•ädöEt\œ\ﬂR¿\Á\ËE-öπQìã∫\'˛\“\‘Á•Ø˝˘o˛.è\Ì-G˛zZˇ\0ﬂñˇ\0\‚\Í\n)rD\◊\Î{ìˇ\0ij?\Û\“\◊˛¸∑ˇ\0G\ˆñ£ˇ\0=-\Ô\À\ÒurD>±Wπ?\ˆñ£ˇ\0=-\Ô\À\Òtij?\Û\“\◊˛¸∑ˇ\0PQG$C\Î{ìˇ\0ij?\Û\“\◊˛¸∑ˇ\0G\ˆñ£ˇ\0=-\Ô\À\ÒurD>±W∏˘\Ó\ÔÆ!hdí\ﬂcå∞∞8ˇ\0æ©îQM$∂3ùIO\‚aES (¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢õΩA¡a˘\–1\‘Swß\˜ó\Û£zy:\Ãu\›\È˝\Â¸\Ëﬁü\ﬁ_ŒÄ≥E7zy:7ß\˜ó\Û†,\«QMﬁü\ﬁ_Œç\È˝\Â¸\Ë1\‘Swß\˜ó\Û£zy:\Ãu\›\È˝\Â¸\Ëﬁü\ﬁ_ŒÄ≥E7zy:7ß\˜ó\Û†,\«QMﬁü\ﬁ_Œç\È˝\Â¸\Ë1\‘Swß\˜ó\Û£zy:\Ãu\›\È˝\Â¸\Ëﬁü\ﬁ_ŒÄ≥E7zy:7ß\˜ó\Û†,\«QMﬁü\ﬁ_Œç\È˝\Â¸\Ë1\‘Swß\˜ó\Û£zy:\Ãu\›\È˝\Â¸\Ëﬁü\ﬁ_ŒÄ≥E7zy:7ß\˜ó\Û†,\«QMﬁü\ﬁ_Œù@Q@Çä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†±µ=ZX\Ù˚\”i±n\"πé\—˛eWê\∆\Ì\Êèj\Ÿ=8‚π≠\'Cø[ç7W[\'±ee\Ã\ÊIŸõ&G$\r≠\Ï	\Áú\)2£m\Ÿb\⁄[˝\"\Ê;mCQ˛\—[ôU\"vç#ë	NBÄ\n¸ºgìYSx\Ê÷¥¯<©V)\·b\»2wï$gpc\‡õ⁄¥«Ñtˇ\0!\—\Ó/‰ôù\ÌOr\∆eŸù†7`2x¶¢_\È)$,èx´\“#\r∞≤å#π\«˝~i;ñú:îø\·5∏yl\…\“f∑âü|˛k°\"\»`\ı˘Ox\«z’≤◊ßº∑Ωﬂ¶OkutÜWS\Ê#\⁄r%H \Ùß\À\·ù:fà∞ó\˜b5|eQY0}AW`}sR\Èzûî≥àû\ÊfôU\Ó&i\"\Ájz∏˛tY\Í&\„még˛\Ù\”\Ù\Ë&‘£\€u8å˘ROHø∫Gl3?àqírkH¯\ÀÃô\«I∫ªäVX\‚ï;¥\"U^O)9==\Íc\‡\Õ3\Ï\—ƒ≥^£FFŸí\‡â\0\nn}0†~°áeà\ÒâI\÷uÀì\Ûº°\◊˝ë˘\ÛF£nå®<bì\À.ôt-\…\\\\Deh#9<ê:U\›\ƒVõ\À}>{A,\"\‚Ÿ•e>tD˝\Ó	\⁄yQU-<k¶\”\…$\Õoà\√ù∂ü-@R\Î–êFE_“º=e£\Ã\Ú[5√íÇ$L\Œ\"åÑ@z/ˇ\0[“Ö~¢ó%¥0-<o$\Z\'ü®XK\Á§Q∫ª\…k8bWp$ÄºÉ¡\Áß\÷¿\Ò*M†\È˙ï•î\˜_ê∞[Ub\ƒA$\‡`+s\ÌD˛”ßÇ\˜\‹\ƒ\–\"$RE1W@§\‡Ç;¸\ƒ~51\›è\ˆ5æñèsVÕ∫Rb%å\Û\»~Ω	\ˆ4ka∑Üvè\‚y\'\”U\Ô!ó\œF≠êl\ÔÇ.\ﬁjπ\Ò\Ù1ù0\‹i≤¬∫Ü\∆M\”FX#∞Umπ\…\‰˙q˙VÑ~\r\“\‚{VF∫g(B˘\Ìá)!ëKè\‚\√\◊÷âº¶Lm2\˜h∂±E™NU]b9M√°¡˛tjÅùˇ\0	Ö\…\‘cì˚6\Èl§∂f∑BS7Leâ##üó\Ô\Ù8\‡ÉZè\‚xmº?w™^\€Ij÷écûu æ@vv\‡\ÓSú\„£“ÉJw\ﬁ\ËQ\‹6!\’«ó˝\‹2Ç1W\√\÷)£À¶7ü,S1y$íRdw\';ãu\Œ@«¶\Z\ÿÅÉˇ\0O6ñs§¸˘û+uDe€ê$›µâ\0\‰\Û\ÈMü«ç¶B_Q\”\ÿf\Úxód—É\Â£\Ì\‹rO=•j\Õ\‡˝>\‚\¬;9Æ5à3	∫l\Ã\Í8ò\Ìéió~	\“\ÔR\Ú\ﬁ∆≤≥óHÆTÜ ï«¶Fq\ÍM\Zé\Ù˚\Î>(ÉE’¥˚	`f7áC*F£ê07∏\ÛúqYë¸D”¶∏ΩÜL\“[\ÁbG<l\Ú\Ìpá\Â\rî\‰ån\∆Enjæ≥\÷dÖÆ\ﬁ\Ál}céb© \Œp¿uÊ†è\¬zlR\Œ\Í\◊[%9ÿ§0sµzê?¶(‘î\·mL\È<s66\◊:t∞Mq3\¬\Î,—®çïÇ\‡p\Áú\‡sä\«v\“_\ﬁ\ŸGc,ì¿Bƒ©,m\Á7ò#\«\nw◊µh\ﬁ¯SNøìt\œt•idâ\'*íA\√\‘dT\‡≠-dïƒ∑πu*ü\È-˚üú8\Ÿ˝\‹0Q®\ÔLé\Û\ƒ7q≥¡ï\“\Í¡Ü\‘˘gdç\Ású\„Å\'\'M6\€\≈˛d\÷\–\r:\Ìî˘Q\œ;îTé\Ì\‰\ÔR\ﬁ;\’\Ÿ|+a,J¶k¡*™∏\r\Ê©B\‰0nπ>c\Á∂*[\r\È\ˆ\—\‚YBÉs!$ò‹∫íO$ñ$üZ5\·bÆâ&™5ã\Àk\ÕC\Ì\—Dã\Ê0ÅcXf<˘hG,6êy\…s\œ\rE\r∫@\”2g3I\Ê6}p\Ù-5±-\›\‹(¢ädÖkÈ±°±BQI\‹‹ë˛—¨äøgΩ™\ƒ\Î&\‡[¢˙ík:â¥u\·$£\'viyQˇ\0\œ5¸®\Ú£ˇ\0ûk˘UO\Ì[\Ó\Àˇ\0|\—˝´o˝\Ÿ\ÔöÀïù\ﬁ\“\—o è˛yØ\ÂGï¸\Û_ ™j\€ˇ\0v_˚\Êè\Ì[\Ó\Àˇ\0|\—\ \√\⁄C∫-˘Qˇ\0\œ5¸®\Ú£ˇ\0ûk˘UO\Ì[\Ó\Àˇ\0|\—˝´o˝\Ÿ\Ôö9X{HwEø*?˘ÊøïT\Û\Õ*©˝´o˝\Ÿ\Ôö?µmˇ\0ª/˝\ÛG+i\Ë∑\ÂGˇ\0<\◊\Ú£ è˛yØ\ÂU?µmˇ\0ª/˝\ÛG\ˆ≠ø\˜eˇ\0æh\Âa\Ì!\›¸®ˇ\0\Áö˛TyQˇ\0\œ5¸™ß\ˆ≠ø\˜eˇ\0æh˛’∑˛\Ïø\˜\Õ¨=§;¢ﬂï¸\Û_ è*?˘ÊøïT˛’∑˛\Ïø\˜\Õ⁄∂ˇ\0›ó˛˘£ïá¥át[\Ú£ˇ\0ûk˘Q\ÂGˇ\0<\◊\Ú™ü⁄∂ˇ\0›ó˛˘£˚V\ﬂ˚≤ˇ\0\ﬂ4r∞\ˆê\Óã~T\Û\Õ*<®ˇ\0\Áö˛US˚V\ﬂ˚≤ˇ\0\ﬂ4j\€ˇ\0v_˚\ÊéV\“\—o è˛yØ\ÂGï¸\Û_ ™j\€ˇ\0v_˚\Êè\Ì[\Ó\Àˇ\0|\—\ \√\⁄C∫-˘Qˇ\0\œ5¸®\Ú£ˇ\0ûk˘UO\Ì[\Ó\Àˇ\0|\—˝´o˝\Ÿ\Ôö9X{HwEø*?˘ÊøïT\Û\Õ*©˝´o˝\Ÿ\Ôö?µmˇ\0ª/˝\ÛG+i\Ë∑\ÂGˇ\0<\◊\Ú£ è˛yØ\ÂU?µmˇ\0ª/˝\ÛG\ˆ≠ø\˜eˇ\0æh\Âa\Ì!\›¸®ˇ\0\Áö˛TyQˇ\0\œ5¸™ß\ˆ≠ø\˜eˇ\0æh˛’∑˛\Ïø\˜\Õ¨=§;¢ﬂï¸\Û_ è*?˘ÊøïT˛’∑˛\Ïø\˜\Õ⁄∂ˇ\0›ó˛˘£ïá¥átKwb\ r’∑ojƒ≠çJ-•EY72>_QY’≠4\—≈ãîek0¢ä+Cå(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¶H\≈\"™\œ|-≠\‰ûR´H]\€\‡ìAJ-\Ï]¢π˚?i\◊\«\˜-p£r(3YM%àÇ\Í\…\"µ˛\–˛ãEÜ\·$Y¢´ñPIÅ\…‚£∑ø[´hÆ *\—JÅ—∞FTåÉ\Õ;#.\—T\ﬁ˘bx\—\Ÿ•m®\ÒÅ¯\n\⁄\—h∞r2\Õ[\Ì\Ë¥}°˝ã#,\—Uæ\–˛ãG\⁄\—h∞r2\ÕNK\Ââ\‚GdVï∂ ?\ƒpN\‡	¸)ˇ\0hE¢¡\»\À4U8\ÔñWëcdfâ∂8\¬p\‡G\ÁTf\Ò-Ñ\Z™i≤N”ê˘NT\»\Ò¥\ÿìJ¡\…#jä≠\ˆá\ÙZ>\–˛ãN¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\—\ˆá\ÙZ,å≥EV˚C˙-hE¢¡\»\À4Uo¥?¢\“=Ÿç\ﬂj™åí{\n,åµEQME\ZTBÆª\€h-®\'\ÍF*\ı!J.;ÖQA!EPEPEPEPEPEPEPEPEPEPEPEPEPs™5\∆\À~öÅ\÷\‚I#\ÛfäKK{p¿\»\Ì\Zæ\‚Gn[\Ëq]£Æ\ı¡™i§X\«y%\‰v–•‘ÉkÃ±®vÖ±ìF˙\Z”öä\‘\‚4\Ëo%Çz˚≤Mn\Á˚E#°dRv\Ì∑ØaW5][˝rKÜ[≠ûl¶9ôñAp\Í0\rvg_\Ô\Z>Œø\ﬁ4\Ù/⁄ÆáóI•kI´ia-oºªgDWXy^c\‹K\Ò\Úë\∆\“H\ÔKß\Ë˛ ã\\≤g∆êD°ñ3ÑåBìwö\0;\Û\∆\√\Œ}=C\Ï\Î˝\„G\Ÿ\◊˚∆¶\»~\ÿ\Ú≠?E\’b∑Ö§\”n\Ê˚5\—xLåcr\∆\'\\ë\Ê0vÃ∞#9\Œ*œÜ¥MC\Ìë%\ıΩ\Ú\⁄%œûbPg\À\Ù\ﬁ\«\«BNz◊¶}ùºh˚:ˇ\0x\”I≠sÄ\‘t\ÌjO\«uõ\Ï\€\„1∫FJ¨`|\Í[\Õrs\’®¸%\}é©eß\—\\F¨ì-\ŒC¥ü6I\ÿ\·˘Ü3\È\≈w_g_\Ô\Z>Œø\ﬁ4Y	\÷V±\Áiß\ 4h#}V0%¬õ\Ë\r¡/;yd_üïﬂ¥ûFz\ˆßZ\Ëzñ¯.\ÁK\—u∑Xˇ\0\“	)X0<\‡ê§NrEz\Ÿ\◊˚∆è≥Ø\˜çA\Ìè+”¥]V(°it€πÖµ\‡í#\‰,bëw\Ê0¿bôaå\Úq\≈.ç\·˝B\‡5Ω\ıæ†ñç/ôµŸ£\…\Úòé\«±\‘\Úpk\‘˛Œø\ﬁ4}ùºir°˚s\…\Ó\Ù=`[∑óiu∫I£ñ\‰\Ìi§¿Ä	Pí>y\‡êp{vv˙}‘ø\Ÿﬁ≥∑ìñ\‡\ÌÃùB,A=98\…\‰xÆó\Ï\Î˝\„G\Ÿ\◊˚∆ö≤™ô^ä±\ˆu˛\Ò£\Ï\Î˝\„Ury\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^ä±\ˆu˛\Ò£\Ï\Î˝\„E√ù\Ë´g_\Ô\Z>Œø\ﬁ4\\9\—^†æFìOπD≥D¿\‹\‡\’ˇ\0≥Ø\˜çg_\Ô\Z.\Ë~£¨Z\Í\€\€€≠¡q21\ﬂn\Í\0y#˙â`\n¿\‰\ÒR\‘(•∞V©\Ì¬ä(¶bQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0\r\››µÖ¨óWs\«ºc/,¨T{ì“¶\Ë2kíæ∫∏\’<9y-æ7\‹\‹\≈%íKñ\ÃbH¿r†\ÁnAlp{I≤¢ÆŒãO\’,5ksqß^\€\›\¬ix$†˙dU∫„ßèQ\–\Óc‘Ø\ÂΩ\Ã˚\'\Zu≥Ñ\0D\·>\\±\'qüoJ√≤ø\ÒSk∂™^m\∆\ﬁ2ëJe\⁄\Ë`í<≤ôﬂûKÉëéùW1~\Œ˙£“Ñ\—\⁄\"ôUC≤gêß zp*}yD∑\Z¢Euqas™\ Z+d∫û\Ì$ç\”\Êî\»¨eÄ\rè∫ß„éùAπ‘èÅ¨•ºû\Í7i\\\œlÆeXwüòegn‹ù†\ÚN(∏ù;}ƒæ©w\r≈Ω¨Rjí¨\‚Õ†íXXO0âê\0Såg8<ä≠g¥ë\€\\>©™;l.\Z7#iy$+*ëå\‡(/l\‰\Û\Õ;á!\ﬁK4P idTR¡AcÄI8\ÍIà•éxRh]déEéß!Å\‰}+\Õ\Ù\Îõ\ÎË≠ônµ;µ/n\˜B\Ê3≤9\ƒ{vçªâ\∆F\0\'ö\Ë<.5),\ÓÆ\Ógª{Å)3≥\ƒ\ƒ\‡\˜.[\'\ÎIJ\Í\‡\È\ÿ\Í\ËØ?K\…±`i5-\»kÖ\ZÑ\∆\ƒ\ﬁ[eS	ªn˝†\Ì\Ò\≈Kßùn[õ[\…\Ô5ÂΩ≤]v¨à≈É3Æ>\Ò]§˙JwM\Óä·µã≠^/à≠fªí!⁄êFU2á\Ê˚Ön¡\Œ\Â`x\Ê≥5=cUº\”~\—is®\€∆û@!°ö2\Ì\Â∂\·ïFa\Ûw\⁄A#û)s\rSn«¶R3*)g`™I\'\0W\„˝Tx{MkVæµ∏ö2\ÓcV,fB0çI\…\'ß\ 89\Ù™W2]\ÍZvØ\’÷Ø\ˆ\Ÿ,òãh\‚aó±Jêv\„q9\ËsíF(æ\‚T\Óì\ÓzsG0cä\·X£m9¡G÷£ñ\∆ßySæ\·á-\˜p{\Áµq\ˆ\”jçso3^Ωµ\‰\Ê%íMŸç#p˘9\‰nèz\Á\◊î&\‘fóK˚d∫´],ñè∫\ƒLOU,\Ãqç\€\˜u9\È⁄é`Pπ\Èî\»fä\‚!,2,ë∑FCê{Wóizñ±,W˙˚V[,4±\≈)ñ \À.\ÂRPæ±Éµp3\«\—cq\‚kΩ\Z^\‚86ßñíâ\ÃÃç\ÊoUçîúyóE\√t≠}OT®%º∂ÇUä[àíG\∆\’f\0úê£è©\Íkì\}÷¶˙∆´o{5\’\ )‹≤\ U[q˘v∫\rß\·Yóµc\ŸM®VÅ6´5ÿé5∫\ƒUcê\‹GΩ\‡\r∏\œLå~4sl/g´]èK¶E4s¬í\√\"\…å´©\»#\‘\Z\ÛO\‹\ÎzïË∂∏æ\‘\÷	. wb$VL\«9t\‹ ºec\Œ\–v§èR\◊Œ≥¶†∏\‘#˝\“$à\—;Ü\"K\„nﬂΩÅ\Àë\ÿQ\Ã?e´W=\Zˇ\0Q≤\“\Ìæ”®]¡kB˘ì\»rzö.u+;∂\‹\›¡\r†º˘$\nò=O\ƒ¯vmB\„\√\˜ètØuwm0∑7I#®gIP\Ë¨1ìë\»\Á\0\‚∂uõ+}/@”†\ËCe*m∏Ü!+CÖ 9L√ú\»\∆)\‹\\™\ˆ7mØ\Ï\Ô6µ∫Üeï<\»\Ãn2\Á\Í3Vkî\\ƒ\˜r\ﬁ)xLv\Ì\Ã`0¨\«\Ãê°˚•π8?^\ıåW¥≤çÆuY≠\Ó\"Ü[πKI\0\ﬁ¡∂\0πm\0úd\ı\Êï\ˆMZ=êêI¿Mb¯j\ÓI¥\»‚∏ñ\‚IAvçÆ¨çò\¬6lÅ\…P=˚ûµN\ÓiµçY+:Oπ-¢/Üù\0˚Fxw”Æ{\”l\\∫\ÿ⁄∞\’\Ù\›THt˚˚kø)∂\…\‰JØ¥˙*Ã≥\≈´M\"∆¨¡cå±8\ÍI\≈pWö\‹zôüH≤Ω∂k+b$≤4FDDJ(\∆[h\rëèßZ\œ\÷5=~\Ê\Í	¨\Õ\ [ô•{_5%]\“o\¬´úm\Ëh¡?Ç\Ê+\Ÿ\‹\Ù\Ô:10Ñ»æiR\·3\…Çq\È»¢Y£Å7\À\"¢ññ8$\0?@¸kï\ÒAªä˛)°71\∆-v\œ5≤tå\À\Ú∏ùπ\Ë3åëI\\\‹¯Qr\◊s†\‘a˚<óDØ∏BÅ\0\Ù\œ$g\0N\‰\Ú\Ëô\’\≈4s¬ìC\"\…Ä\ \Ír\‡\“àL\Õï´ÄSp\»\»\»\„\È\\ú:\Õ\Ú\⁄<∫ñ©\ÁÇT8Zπ\‰u\›ﬂ±™r…™gyq&ß$∂®\Àñ]\Ãåç§dïëåüz\\\⁄\Ï\ıµ\œBø\‘\Ï4®˙ÖÂΩ§EÇáû@Äì\€\'ΩYV°îÇ§dx5\Á˛{˚Ω˘ÆÆn#∫X≠..°ëåi(@\ƒoP\Ã[®é¬ª´+H\Ï,-\Ï\·œïKd\ÛÖ ö&I\"z(¢ôH\«\nO†\Õ-5ˇ\0’∑\–\–5´.f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·[TV\Ú=?´S\Ïbˇ\0f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·[TQ\œ ˙µ>\∆/\ˆm\Á§?\˜\ˇ\0ÖŸ∑ûêˇ\0\ﬂ\√˛µE\Ú´S\Ïbˇ\0f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·[TQ\œ ˙µ>\∆/\ˆm\Á§?\˜\ˇ\0ÖŸ∑ûêˇ\0\ﬂ\√˛µE\Ú´S\Ïbˇ\0f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·[TQ\œ ˙µ>\∆/\ˆm\Á§?\˜\ˇ\0ÖŸ∑ûêˇ\0\ﬂ\√˛µE\Ú´S\Ïbˇ\0f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·[TQ\œ ˙µ>\∆/\ˆm\Á§?\˜\ˇ\0ÖŸ∑ûêˇ\0\ﬂ\√˛µE\Ú´S\ÏaKcuM#à∂®\…√úˇ\0*Ç∂\Ôˇ\0\„\¬o\˜\rbVêì{úòöqÉ\\°EUú¡EPEPEPEPEPEPEPEPEPEPEPEPEPY\⁄vÉ•\È3\Õ5ç¢C$\ﬂ|ÇO\ŒO\ 2I¿¿´\Ó\·$Th_CEäI\€Bj*¥/°£\Ì\Ëh∞r≤j*¥/°£\Ì\Ëh∞r≤j*¥/°£\Ì\Ëh∞r±m≠°≥∂é\ﬁ	kµ\‡Tµ\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y5\⁄\–\—\ˆÖ\Ù4X9Y&\≈\ÛõF\Ú0[\„“®Yh:^ü5\Ì•öEq6w∏$\ı98\·ry8\∆M[˚B˙\Z>–æÜã§MEC\ˆÖ\Ù4}°}\rVMEC\ˆÖ\Ù4}°}\rVMEC\ˆÖ\Ù4}°}\rVMEC\ˆÖ\Ù4}°}\rVMEC\ˆÖ\Ù4}°}\rVMH\√rë\Í1Q}°}\rh_CEÉïó~\›wˇ\0=\œ˝\Úø\·G€Æˇ\0\Áπˇ\0æW¸*ó\⁄\–\—\ˆÖ\Ù4πc_kWπw\Ì\◊\Û\‹ˇ\0\ﬂ+˛}∫\Ô˛{ü˚\Â¬©}°}\rh_CG\"\Ï÷Ør\Ô€Æˇ\0\Áπˇ\0æW¸(˚u\ﬂ¸\˜?\˜\ ˇ\0ÖR˚B˙\Z>–æÜéE\ÿ=≠^\Âﬂ∑]ˇ\0\œsˇ\0|Ø¯Q\ˆ\Îø˘\Ó\Ôïˇ\0\n•\ˆÖ\Ù4}°}\rã∞{ZΩÀønªˇ\0û\Á˛˘_\£\Ì\◊\Û\‹ˇ\0\ﬂ+˛K\Ì\Ëh˚B˙\Z9`\ˆµ{ó~\›wˇ\0=\œ˝\Úø\·G€Æˇ\0\Áπˇ\0æW¸*ó\⁄\–\—\ˆÖ\Ù4r.¡\Ìj\˜.˝∫\Ô˛{ü˚\Â¬è∑]ˇ\0\œsˇ\0|Ø¯U/¥/°£\Ì\Ëh\‰]É\⁄\’\Ó]˚u\ﬂ¸\˜?\˜\ ˇ\0Önªˇ\0û\Á˛˘_\™_h_CG\⁄\–\—»ªµ´‹ª\ˆ\Îø˘\Ó\Ôïˇ\0\n>\›wˇ\0=\œ˝\Úø\·Tæ–æÜè¥/°£ëvkWπnK´ôcdyâV#jˇ\0ÖEQ	’òjZ±ú\Â)|AES (¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0ä\ıçsz∆™\Ò\ÈZ\”[Ke\r\Àn€ªågë\‹\ıÆí\ıçr\÷:\‰F\Í\÷\Ú\Í	¥\ŸLá\ÀHä\…)v\Œ]≥\‘1ü¬ôΩ;Z\ÏÃ∏\Òu’Ω\Ì\‰øŸ∑H+[≤#,\Ã\“eÜ\›\‰\£†\'éù\Î]<I\ˆ.ù™\…nc∑∫\\…πø\‘¸å\‹\Ò\œ+∑∑QVµ\rN\‘\‰2]E!êÖ\„ô\„a∑v0TÇ>˚t\Îöw\ˆútt\“MælP(Xãçßp\Á9\Í(≥.\Ò9´ø\ZÕ¶\√\ÊI¶ºé\“4F\‡ìÖBvÄÑún\ÔÅ¡˘ÖM\'åMù\ÌµØÿûdñ·£íC1-3¥Jp\»˛\"ºpkVˇ\0¬∫F§\Ó\˜6\ÓY\À\€<à8\»;H\»˘G“´Z¯F…ñ	µ\ÛØRC+4R»à[\Õi\Â\rÉ¥±¡9•\Ô\±A|Q®Ω¸sù;l⁄Ü¥á\Ì\0˘\≈\‰EB\«o\»~nz\‡\ı¨u\ÎÖ\—&ªm<\»g[wµ\ÂwóU|t˘Å\Œ?\nUñäæ~-_\˜Àµø\'\ 7~oì6\„™\‰\Z5çæû∂1\ƒ\ﬁB\»$\√H\Ã\≈\√\‹Xúì∏…¶ì∞7á:û=åjv≥XÖ˚:Kü.b\Ã^0K\0<˙\n≥®¯í\ÎIÇ;ùOO0J\"î˘1‹áF!\‚U\Ánzø\\s¡\‚¥œát∂ªû\Â≠Ÿöua\"4Æc;Ü\Ï\Œ\–H\Í@\Õ5|3§≠Ø\Ÿ\Ã:mu\›$\Ó\Ów$\Ó\'9˘9F1J“∞^\ÿ\≈_O5ä\‹\€\ÈK6\»\Âñ\„m\Œ2õäíÄæC\‰p:b´\À„´ç0yw\÷Q<Ü\Ê\„g#\˜I)Aå\'-¡\„;sûk•è√∫dV\Õn!ëë¢í2L\ÓÃØç\ŸbI$\‡sú\ÒQM\·m&\‚B\Ô°öVîÏ∏ër[Å\√îëíΩ3ìéh¥Ç\\Ïg\‹xÆ˝gô-¥Uû52à›Æ\¬o1\‡∂F”ÅÉ\«^x\‡sUˇ\0\·?Åµ≠£≥\›q±V\ÛHveè~\n\Ì¿^1ù«û\’\—ˇ\0dX\‰ü\'íd?x\ı~øz≠ˇ\0∆í\'iÖºÄºf2ÇwŸÇªI€ùª∂\Òª\˜¢\“\·\ÿ√ü\≈˙å\«%∆òñ\¿≤\…tÇ\„y(!\ÛØ\À\…\ır:öt^ ohó7ióL[Gsf\ﬁkH§|°î`\Á˘{cækz}Lπê<\÷˚éy˘\ÿ\Ú¡\‰m8¡\‚ùi°\ÿ\ÿ\⁄ImÕ≤V\Â\Ó$w8\È\Û1\'t\Õ;0ºl¥&\“\≈\ÿ“≠E˘\Õ–åyßèΩ\Ôé3\Ù´tQT@QEÄ(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0*\…\ZâP\·\“&e>\‡T\Ù\Ÿ#Y¢xúeJ∞\ıÄ-\ﬂiNé\ﬁ\·/\Ó•&dRí\ˆê~à\ÎR\÷z\¬^X¸Àã©8`≤\\;˝	≠\nÑöZäº£).TQE3\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢êFA\ÈK@¬ä(†äB@\Íih\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä:u†ä\»»¢Ä\n(\Á íH\0}j\«\ÿ.ˇ\0\Áè˛<)6ñ\Â∆ú\Â¨Q^ä±\ˆø˘\„ˇ\0è\n>¡wˇ\0<\Ò\·Kô\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—V>¡wˇ\0<\Ò\·G\ÿ.ˇ\0\Áè˛<(\ÊA\Ï*v+\—R\…ism#≈ÖQíw\näöi\ÏD°(¸H(¢ädQ@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@s\Zé†\˜˛‘Æ\Â˚⁄ëà&\‹2	Yq\Œ1\Ês\Ìë⁄∫r20k\'I\˝æë+º77s.\œ.(\Áóz¬ô\Œ\‘\‡t\Îì¿\Êì*--NJ\ﬂV–¥ΩVf\\›≈§6y+|!¿ÖJ†7¶Jñ\Àl\’K\ﬂ\Í:æú#XfÅ&2\¬IÖD\ƒ\œ,C\›I\¬çÄ\Úr{W£-Öö\Ám§ ©\ƒcêy#\ÈO˚4°\Úc\Ãdî;\ O\\zR≥/ùv9øj:µ∂¢…ß\›Cp\√¨íCøyiJc9\Á\Æ{U\Òfø•\Õ†ñ)ûõt\≈aà\\p\‚Ivd\Ú?Hh—â,äI$äc[¿\ÂK\√mm\„*\◊\ÎEòî\“\ËyŒµ¨\\\‹\Í\”_Z;@o\0”å@¥A\"pπ\‰0ÁëÉëé\ı≠˝≥qs\ˆ\œ;Q≥ôñ\Ò#\Zí€ÖπTNs\»¡\‰u éï\ÿ5¥\Ï\Ìe\ÿ`±Aì⁄ó»á{øï\Á ±\⁄2\ÿÈü•5\ÿ\ÛŸºMÆZij\˜\Zçøõw2\√\'íà\"\‹\\K0^ä9=\ÛÅ\»∫_åuKùWD76\∆\ﬁ\Ó\√\«Ffv\‹	 ∞p2\nÇ9\≈z[[∫lx#d¿J0:\n¥\"∏Ç0\ËV2\Ù°&78\ˆ8\›G\ƒ⁄≠øé£\”\"D¢H£\ÚŸ¢Ep7?\Ã\·\Œ3¸*G\«≥\Ò6ß|m˛€™E\€_D\Ú4)\∆UíOî2±\»%pÄnF{W¶biVVçä0ÆTdcM∂\Í\"õy-\Î\ı\˜¢\Ã9\„mé\¬:\≈Ó´ß\Î\ÒàÇ1q∞,Ø\"ærëêTpI#°®\Ù\œ\ﬂ\"\ÿ\ƒ5õYä-º+hcKïx‘¥†\Á<zq\Ú\Û]¸V\¡ü&\„\œ]äi\÷\›Y`âYjêÄ=µuw°\ƒ\⁄k ≈µ\ƒ˙çª\¬Eå\œµ¡e∏}Ö3û1åÉ‘ün+?H\Ò^π¨‹µ§Zç≤ô•Ñ\«0â∆Æ≤í•Uà\‰í;˙W§y1Å\Z``}\—€ß\ÂMK[x\€rAú\Á*Äs\Î˙ö,\Í\œC\Œ\Á◊Øµ\Ï¯\Ó\ıXò\\\ÿˇ\0°à∞\˜$ Ñ»ß9\0èNzäø¶jM\‚•µ\‘\Ô-\ıim>\’qk\nl6Ã¨?r¸\Ú#\r\œ\ {\Z\ÌM¥ïåíú)\ÿ>^s\«\„J∞BÖ\ Dã\Êæ\r\ﬂ_Z,√ùtF_Ü,≥\Ù(c\ŸK!3,}\»CÑ_aü\ÁåV\≈ @\0\0\0\nZ£6\Ó\Ó*ˇ\0≠ã˛∫/\Û\—\◊7\»*F2¨g\ÿ\ÊÆj\\ˇ\0v/˚\‰ˇ\0çg8∂\Ù;0\’aµ&lQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\‘rH\Ë˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Ê\≈è˝©s˝ÿø\Ôì˛4j\\ˇ\0v/˚\‰ˇ\0çí¨\“\ÓlQXˇ\0⁄ó?›ã˛˘?\„G\ˆ•\œ\˜bˇ\0æO¯\—\… ˙\Õ.\Â˚ˇ\0¯\õ˝\√Xïfk˚â°hòDˇ\0çV≠ ö\‹\‰\ƒ‘å\⁄\Â\n(¢¨\Â\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n*(. πM\ˆ\ÛG*ç—∞aü¬ûŒâ∑{*\Ó;FN2}(\Í(¢ÅQ@RRÃ°Åe\Í3»†b\—HÆÆÅ—É)\‰r\r-\n(¢Ä\n)®\Î\"\ÓFΩ2E:Ä\n)\’1πÇ\‰\‡d\ı>î¥\0QMY£+©B21\ı•V°îÇ§dﬁÅãE\\B≥¨\r4bgX\À\r\ƒ{\n\0íä(†AE>(eûMë\Œ	;õû\ﬁ\ı?\ˆm\Á§?\˜\ˇ\0ÖKíF±£9+§U¢≠f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·G<J˙ΩN\≈Z*\◊\ˆm\Á§?\˜\ˇ\0ÖŸ∑ûêˇ\0\ﬂ\√˛s\ƒ>ØS±Väµ˝õy\È˝¸?\·G\ˆm\Á§?\˜\ˇ\0Ö\Ò´\‘\ÏU¢≠f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·G<C\Í\ı;h´_Ÿ∑ûêˇ\0\ﬂ\√˛f\ﬁzCˇ\0¯Q\œ˙ΩN\≈Z*\◊\ˆm\Á§?\˜\ˇ\0ÖŸ∑ûêˇ\0\ﬂ\√˛s\ƒ>ØS±Väµ˝õy\È˝¸?\·G\ˆm\Á§?\˜\ˇ\0Ö\Ò´\‘\ÏU¢≠f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·G<C\Í\ı;h´_Ÿ∑ûêˇ\0\ﬂ\√˛f\ﬁzCˇ\0¯Q\œ˙ΩN\≈Z*\◊\ˆm\Á§?\˜\ˇ\0ÖŸ∑ûêˇ\0\ﬂ\√˛s\ƒ>ØS±Väµ˝õy\È˝¸?\·G\ˆm\Á§?\˜\ˇ\0Ö\Ò´\‘\ÏU¢≠f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·G<C\Í\ı;h´_Ÿ∑ûêˇ\0\ﬂ\√˛f\ﬁzCˇ\0¯Q\œ˙ΩN\≈Z*\◊\ˆm\Á§?\˜\ˇ\0ÖŸ∑ûêˇ\0\ﬂ\√˛s\ƒ>ØS±Väµ˝õy\È˝¸?\·G\ˆm\Á§?\˜\ˇ\0Ö\Ò´\‘\ÏU¢≠f\ﬁzCˇ\0¯Q˝õy\È˝¸?\·G<C\Í\ı;h´_Ÿ∑ûêˇ\0\ﬂ\√˛f\ﬁzCˇ\0¯Q\œ˙ΩN\≈Z*yln°â§q\’8sü\ÂPSM=å\ÁNP¯êQE\»\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n\Â\Ô\Ó•\‘¸7®\\öK7πM†d∂ÇM†\‡Å&:íEuF\rei~∞\“\'íkQ6\Ê]ä%ôúDô\Œ\‘¸´û\√⁄ì*--N:=CÉVû\Ô\√\“¡og¬∑\œ\nåØú£v\n\\:df™]¯üTüX\”\nL≠	ôû\‘>\≈\Ûœü,d`°bDx)n\…\ÕzÜ\Ì\ÿ••b˘\◊cè\Ò^±uß\ÍKzõY∑Z\¬\"V˚l€à\Ú\ŒA=\∏?6s\≈dZ^jñ±jk´\Œˇ\0dk…§à\≈o9Äúm¯úé\‹W£\—EÖŒ≠ka©xõP∂\”D\÷^!76itV;¬±#‹çäv©)±∞ƒå\r§\Ù \◊A\‚çf[V\”?\‚o&ì\r≈¥“≥˘*\Ã\\y{Ü,F;\Áq]}@\ˆëI{\r\€\ÁBè\Z\ÒÜ*O˛Ç(≥∞˘\’÷á.Ø™su®\ÎR\Èñ\Ú]$8ä<Zè$?VSÇ\\\„-ë€≠T∂\÷oµ·ôµ6é\ˆx\ÌZà\0˚jó`XÇ2>Oõ\0ågû+“®¢\¬\ÁV\ÿ\Ú˝+_’≠\ıù#NIB[ò\‡TÄ≤*0\ﬂiR\‰éy\0\«5~\“ˇ\0^˚=µ‹ö‘≤)∑±ªhæ\œ\r\Á9FLÅù∏\ı\…\Îé+\–h°!πß\–\Út\Òv±5æ®À≠∆à¢)ú∆≠]É&|≤±ú\√\Ó\«s\Õu7\Z\’\√¯?Jæí˛[∏d[´÷â7Fª[\Ê¡FX(\Œ1Ü\Õu\ÙPì∞9¶\ˆ<¢\À\ƒ:µú\⁄E≠Ω\◊\Ó$b—Üÿüj-q î©c\∆8R1úû+§\Ò>∑}•¯´KÜ+“∂\“\Ï\rkM\Úí¯\'πqåp¨\Ís\≈vtQ`sM\ﬁ«ï\Ÿ¯ãR\’5	¢{\Ô¥*\Õ∞«Ö\›\Óq¥Ä£ß\ K\‹÷ãx≤K\ÿ\‚d\÷Õ•âX{ƒÖOñ\Ê7%~e#ñ\0:å\Z\Ù:(Qv∞:âª\ÿ\Û\˜gOxN\„\Ì≤@©*\Ó`äìÄ2p∏ˇ\0k\◊BkcWko<\"≠ÆV\∆\0A\· Mõæ\˜|\Ì\Ìä\Ù˙(∞*ã™<\œU\◊u\Ì*\—a}U\›ZX\Ÿ\ÔC	M\—n	íÖ\0-údg∂s[±\È\È™\›\Ëós\⁄\€\«<iysqè\ﬁ\\\"gï∑8\∆{ö\Î\ËßmEœ¶à(¢äfe\Õ/˛?˝s?\ÃV\≈s\—M-ºûdE3Ç\Â\'\”\‹zTˇ\0\⁄wû∞ﬂ≥ˇ\0\≈VRÉn\Á}\n\Ñl⁄¢±¥\Ô=`ˇ\0øgˇ\0ä£˚N\Û\÷˚\ˆ¯™ûI\Z˝fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósjä\≈˛”º\ıÉ˛˝ü˛*è\Ì;\œX?\Ô\Ÿˇ\0\‚®\‰ê}fósFˇ\0˛<&ˇ\0p\÷%O-\ı\‘\—4na\⁄\√s¸\Í\n\“	≠\ŒLMHÕÆP¢ä*\Œ`¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä\ ‘µcoaw%¨k%\ƒS\«lä\Ï6ô†\\\„ê3\"\Áø_jCJ\Ê≠Å˝°©\Ë∞Huì\ÒwU∂6\ÂV9\ l,zc9›åg¶)©\„-=\Ó-\·[{\ﬂ\ﬁ˘a\ﬂ\»˘a.\Ì\œ\ w©_≠C\ÂgCE`\Èû.\”\ıeV∑ä\Ë#\Ã!Gx¿W$1z|ßé£åäâ¸iß§àãi®Kº/\ÕÄ-ù™pz±R\Îä.á\…+\⁄\«GEsã\„]-ß¥áe\–kÄ•ãF\0Ä≥˘\‡\ÓqüÀöµ™xö\«H\‘\Ì,níp\˜L™í*\rÄ≥mPI#$û\√8\Íp(∫+\Ïl\—\\\Êó‚®Æ°∑[à.<\√n%∏∏é\‰DJo¡n\«˛#ûEA?å\„≈≥Aa~ßUky-\Ò,ë∫H\ \»3‹ß~ò9\≈C\‰ë\’QX¯øOöktä∂äan?ªâ§\∆\≈sÿúé\›\∆z’ã\rhI§i7@˘\˜\÷\À)\Ú\◊\Â\À\ﬁ\›¯\ÔE–πYØEd]¯Ü\ﬁ\⁄\ \Œ\Â-Æ\ÓZ\ÒC\√º[§+∑q$g\0\0Fy\ÔY÷æ3Ç\Ê\ÚHñ\∆\ÚHûh„∂í(ÅÜàIªØì\Ìé\Ù]ãj\ÁQErÉ\‚ê`ï\ƒ7ûds$>IE≈É0\‡∂\‹:V\≈˛πçù¥ˇ\0gªôÆq\ÂA$\»x\‹rß¿\Îü\ÁE\–8IicNä\Â4ˇ\0\ZE.õì\Ÿ\›\…paâ\ÿA\Úcj(\';éI\«`	$T\Ûx\◊OÜ\‰öÑôôRõòß\Ô9\„\Êw\ËONh∫$éíä\Ên<s§\⁄\›_\€Ãó)%ö\Ó`\»ò7¨.N~\Û(\À`\‰q\Õ7R\÷\ı7\”\Ìµ=3…Ü›Ä≈Ω\‘,f∏ê∂Jz}\Ôòw\È\ÕG\‘\Í(¢ädQ@f\¬¶∫\"X\—¿B@e∏≠?∞\Ÿˇ\0œ¨\˜\ÏVnvv:©\·ú\„\Õsä\‹˚\rü¸˙¡ˇ\0~\≈a≥ˇ\0üX?\Ôÿ•\Ì\r>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV\Á\ÿlˇ\0\Á\÷˚\ˆ(˚\rü¸˙¡ˇ\0~\≈\–>¶˚òtV≠Ìù™Y\ \…m\n∞\\Ç+*Æ2\Ê9\ÎQ\ˆm+ÖQTbQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\08\„≠r\⁄Vï®\œau¶\Í÷âOó{ò\Ó7\…<≈≥\Ê/(\”\0t\ı4R±JVG;ˇ\0≥ºm$\⁄\’\Ù∫Ü\ÙhØF\Z-π¿\nf>f\ŒG9©m¸-m,üiù\Ÿ\Ã,\Ó\‰eö9öm«è\‚f9˝1[¥Qd\Ã\Âb\<Iq<zï\“]K*Hì§q+&\“q¿L9\√KjÌüÖ\Ì¨¢ç\‚w\Ú\ﬁ\»$ò\Ûå\Ò\ﬂ<\÷\ÌY\r\ŒL\Â§\&ù&•ozdb\Ò6\Á\rOø\\|Ã•óè\›#5gV\§\Z∂±¢◊ì\¬\»\"\r\Z\"˛[\Ô^Jñìúö\Ë(¢\»9\‰s\ˆ\ﬁä’ÇGu\ˆFàG5ØÀ≤bf\‚qª\Ó\„Ä@\‡R\ÿ¯]mnaπüRªºûCÕ∞äÆ™ü(\Û—ézì\‘\÷˝Y	…≥úá\¬¡,^°v-ê\ƒ\“[|õ&x\Ò±â\∆GE\‡j\≈«Ü\„óJ”¨bæπ∑6(9¢€πî&\¬AÉ\È\Ù≠∫(≤\ÿ9\ﬁ\Ê5œá¸\À+muõ9¨c\≈qB\≈vÖ Ü\‡v\Í*_\nZ\Ÿ\‹#\≈sq\‰¢*¨$å\"\Ú≥úg%qﬂ®˙\÷˝4òs3èã\·˝ºV7\√S∏a0âIkx\nÖM\ÿ6m?|\ÚFr\ÎZ\Ûxv3¶i\ˆv∑∑6Ø`°aû2¨˚v\Ì \Óèo•l\—Eê\‹\‰\Œz/	Ao¶˝ñ\Î®\‰SEp6óç£\r\» \‰g995ã´xSSCm¶\Àp\—\‹.\€€¶û5\ÛOò\\óRû¨q≥q¿Æ\Óä,\nl\Â¿\–%\’\‹\È®‹è=%E_*\"I\"ª\œ èøû+KK\\Ì∂ïcckå\Îi+L\"\r\Ã¡≥¿\0(˘è\nl\—BI	ÕΩ¬ä(¶HQEf\¬h°∫-,äÄ°\0±\«qZo≥ˇ\0ü®\Ô±XtVnw:©\‚\\#\Àcs\Ì\ˆ\Û\ı˝\ˆ(˚}ü¸˝Cˇ\0}ä√¢ó≥/Îè±π\ˆ˚?˘˙á˛˚}æ\œ˛~°ˇ\0æ\≈a\—G≥Æ>\∆\Á\€\Ïˇ\0\Á\Í˚\ÏQ\ˆ˚?˘˙á˛˚áE\Ã>∏˚üo≥ˇ\0ü®\Ô±G\€\Ïˇ\0\Á\Í˚\ÏV{0˙\„\Ïn}æ\œ˛~°ˇ\0æ\≈o≥ˇ\0ü®\Ô±XtQ\Ï\√Îè±π\ˆ˚?˘˙á˛˚}æ\œ˛~°ˇ\0æ\≈a\—G≥Æ>\∆\Á\€\Ïˇ\0\Á\Í˚\ÏQ\ˆ˚?˘˙á˛˚áE\Ã>∏˚üo≥ˇ\0ü®\Ô±G\€\Ïˇ\0\Á\Í˚\ÏV{0˙\„\Ïn}æ\œ˛~°ˇ\0æ\≈o≥ˇ\0ü®\Ô±XtQ\Ï\√Îè±π\ˆ˚?˘˙á˛˚}æ\œ˛~°ˇ\0æ\≈a\—G≥Æ>\∆\Á\€\Ïˇ\0\Á\Í˚\ÏQ\ˆ˚?˘˙á˛˚áE\Ã>∏˚üo≥ˇ\0ü®\Ô±G\€\Ïˇ\0\Á\Í˚\ÏV{0˙\„\Ïn}æ\œ˛~°ˇ\0æ\≈o≥ˇ\0ü®\Ô±XtQ\Ï\√Îè±π\ˆ˚?˘˙á˛˚}æ\œ˛~°ˇ\0æ\≈a\—G≥Æ>\∆\Á\€\Ïˇ\0\Á\Í˚\ÏQ\ˆ˚?˘˙á˛˚áE\Ã>∏˚üo≥ˇ\0ü®\Ô±G\€\Ïˇ\0\Á\Í˚\ÏV{0˙\„\Ïn}æ\œ˛~°ˇ\0æ\≈o≥ˇ\0ü®\Ô±XtQ\Ï\√Îè±´yyk%ú®ó3¿\∆MeQE\\c\ aZ∑¥i\ÿ(¢ä£¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0®//-¥˚I.\Ô\'H-\‚y\·T{öúúö\„µ+\È5_\‹\«#°ût∏µTS,Çx«ò#‰ûÖ∞qëíi7b£≥O\Òë´c\Ï\ZçΩ\Œ_`\Ú\‹õ\„\Ú÷ïq\⁄U\‘⁄Ö\ˆú\∆\ˆ\Úˇ\0…πr\Úœ¶ΩÆ¿a`FF{˚\÷u\≈\Ê°˝±©5î\⁄\ƒ\◊1Mp+ª\»àõn\¬A]˛f\‹uolRπ\\óg°S#ö9∑˘nclÑu\ÊZm∆¶mvjz\Ò±[ó\ÚÂ∂Üq)bàP|\‡π]\ﬁg\ﬁr9¿\‚¶\Ò˛$]A~\Õ%\ÍC\ÁK\‰`MÃõÜ\–\¬5`Wa:\Û\Ë_Q˚?3\“\“4.Ï™£©cÄ)\’\ÁZæü©\Õmy$∑:¥â;\‹˘ê£πTTïJlë¿8\«$~g\√skè\„•ªí\‰\€\Ê]\…(õ`èw\Óà‹°€è∫I99Á†û∂Üóπ\ﬁQ^qus©Iw™˝Ç\ÎX{§{\≈e√ò0≠≥a\∆7€å\›{Tå∫˝ßçV\“+ã\ÊµB´	ë¶ê<>X\‹I\€\Âñﬂªñ`\‹\08£ò~\œ\Ã\Ù::ö\Útπ\Ò\Z\Ër\∆%‘û$ªO:\Â˛‘¨À±≤\0\ÿe_ò.vn^x8\ÕlEkÆ]G\r\≈\’ﬁ§&	mé7uG9+Å\Û`ÇO#µ¿\È€©ﬂ£¨àÆåXeXÇ)—ôïXCÜ\0\Ù8\œ?Öyéè.´±†A\Í\…op\≈$SG9F]Ñ99\0\«Õñ\„åV\ƒ\÷7#≈∑\¬)5DYnñwHÍé¢\ﬂ\Â\0˝\ﬁ]H#\ÿ\∆(æóN\Œ\◊;äj∫32´\»p¿G~k\…bπ\◊\ﬂJΩ-{´™	`êÜ\ÎvJ\»7ºÑ\Ân@\„5§¢\Í9fû¯\Î\÷\—\\º\›˘k»£\Ï\‡_\ÔÇhÅê\√\ˆ^g•Q\\\rΩû≥zëµ\›\ÊØ≥\€DBJ…à\»Àíé\0\'∑=*%ìVé{H\ÊüY7iÂ•òUs†H¡\Ã\ƒ\rπ\⁄KcéG4\ÓO\'ô\Ëu\r\≈\‘à\‚TçI¿,qìÇê?ïr^õS˛\’\’aº{\Îà¡\‹%úHäq˘B∏¿8˛\„\‡tÆr\∆]v\Â\ÓßSêIêMŸäMì\0∞\0ë\Ú˝¿¶)sh5OWÆ«™´+¢∫êUÜA\≈-p_`’Æ\Â/&°¨E\Ê¥\»\À¨†*∆¨∏„Éª<\ı<éúV|w>(}qÃí^\÷\‰Ñ\€6›ûGP˘a∑ˇ\0µª<c9ß~ß§Oq\r¥e\Áï#P	\ÀpO\‰4≤O0˘\“H´\«\ÃO\ÙØ8æ∞‘≠LLnuô\⁄gÜB\Ú;	^Ÿ∏\„∂\ı¿úqö\“Ioº\ÕK3k\'Q\r\Ãe_\Ï\Îòª\nc%∫s\Ànß}l.Ed\Ów5J˚X\”t\…`ä˙˙i.lK+Ö.}ø:\·dìVxo\ƒWz\‘w^LÜ\Ù\…≠N$]Ç\0\‡Æˇ\0\ıy;y\ÎZZ}≠∆´\·õ(.\·ï%ªvµûy\’\ﬁV∑˘õÇ\ å\r\‡û\ÁI\‹n	j\Œ÷ä(™2\nû+ãàÑâ\Âm$Åπ\»<zT≥¶«Çº\ﬂ˙®õiht\·©\∆rjE\ÏÀø˙aˇ\0}ü˛&è\ÏÀø˙aˇ\0}ü˛&∂h¨˘\‰v}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc˚2\Ô˛ò\ﬂgˇ\0â£˚2\Ô˛ò\ﬂgˇ\0â≠ö(\Áê}Zóc[òbi\ ⁄£\'s¸™Ωm\ﬂˇ\0«Ñ\ﬂ\Ó\Zƒ≠ \€\‹\‰\ƒ”å\Z\Â\n(¢¨\Â\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n\œ\”\ÙM3Jöy¨l¢∑ís˚\∆A◊æ=ÜI\‡qZP;∞®°∑ä\ﬂ\Ã\Úê/ò\ÊG\«v=MKE\0QE\n(¢Ä\"Ü\ﬁ+p\‚\⁄F\«v\'$‘¥Q@¬ä(†AEPEPEPEPEPEPEPEPRGqq\nlévUê6ØsüJéäM\'πQú£\≤∂\›ˇ\0\œ\À\ﬂ+˛}∂\Ô˛~[˛˘_\®(• ã\ˆ\’;ì˝∂\Ô˛~[˛˘_\£\Ì∑\Û\Ú\ﬂ\˜\ ˇ\0ÖAE®=µN\‰ˇ\0mªˇ\0üñˇ\0æW¸(˚m\ﬂ¸¸∑˝\Úø\·PQG*mSπ?\€nˇ\0\Á\Âø\Ôïˇ\0\n>\€wˇ\0?-ˇ\0|Ø¯TQ É\€T\ÓO\ˆ€ø˘˘o˚\Â¬è∂\›ˇ\0\œ\À\ﬂ+˛r†\ˆ\’;ì˝∂\Ô˛~[˛˘_\£\Ì∑\Û\Ú\ﬂ\˜\ ˇ\0ÖAE®=µN\‰ˇ\0mªˇ\0üñˇ\0æW¸(˚m\ﬂ¸¸∑˝\Úø\·PQG*mSπ?\€nˇ\0\Á\Âø\Ôïˇ\0\n>\€wˇ\0?-ˇ\0|Ø¯TQ É\€T\ÓO\ˆ€ø˘˘o˚\Â¬è∂\›ˇ\0\œ\À\ﬂ+˛r†\ˆ\’;ì˝∂\Ô˛~[˛˘_\£\Ì∑\Û\Ú\ﬂ\˜\ ˇ\0ÖAE®=µN\‰ˇ\0mªˇ\0üñˇ\0æW¸(˚m\ﬂ¸¸∑˝\Úø\·PQG*mSπ?\€nˇ\0\Á\Âø\Ôïˇ\0\n>\€wˇ\0?-ˇ\0|Ø¯TQ É\€T\ÓO\ˆ€ø˘˘o˚\Â¬è∂\›ˇ\0\œ\À\ﬂ+˛r†\ˆ\’;ì˝∂\Ô˛~[˛˘_\£\Ì∑\Û\Ú\ﬂ\˜\ ˇ\0ÖAE®=µN\‰ˇ\0mªˇ\0üñˇ\0æW¸(˚m\ﬂ¸¸∑˝\Úø\·PQG*mSπ,ó72£#\Œ\≈X`ç´\œ\ÈQQE4íÿôNR¯òQE\»\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Äò(\…8¶˘©˝\Ílˇ\0\Íˇ\0\Z…æ‘¢≤≤ª∏ë≠S{∆≠\»\„ {S4ånly©˝\Í<\‘˛\ı`]k\÷V7w^\Õ¥0C≠<Æ¸\Ï¿¸w\ı´\Z∂ükßÆ°q{vlY\⁄@É\”ﬁç\n\ˆføöüﬁ£\ÕO\ÔV+kzZ^-£j\¬\·\„\ÛV/0n)å\Ó«¶9®Wƒö4¨\rN\“YX∫§i0%ôFXp(\–=ô\–y©˝\Í<\‘˛\ısñ>$\”\ıXf∂∏∑rÃã*	Üb,ª∞}¯\ÈO%\—\rì^Æ≠fmñO(\ &]ªˇ\0ªüZ4ftjzè5?Ω\\\ıèà\Ù\€ƒ±F∫Çª\ÿVh\ÌöQºÇ3¿\ÔV•’¥\Ë5∞ñ\ˆºtﬁ∞4Ä9^y\«\‡*,ÉŸö˛jzè5?ΩY\—][\Œq\»¯Eì\Â9˘[8?CÉ˘VU∑ä4˚\ÌA≠¨Á∑û$Ÿ∫tòm\Àyô\‰y}=˝®≤ft\ﬁjzè5?Ω\\\ﬂ¸%:+5üï®[Ã∑W\⁄7é@@p§\‡\ÛÌè©r\”X\”uYÆl\Ô≠\ÁÇDíG eLúü•\Z≥6<\‘˛\ıjz∞\·\◊Ùããà-\·\‘\Ìdö\‡ÖPLÄ	øC˘Pöﬁüp˚mn\Ìß\€?ë.…á\Ó\€\„\Î\«O\¢\»=ôπ\Êß\˜®\ÛS˚\’\œˇ\0\¬K°˝âØµ¨˛Ã≤åær\Ìv\Á\◊\0\‘\ï\ËÅ\Ôöçºij»≤H\Ú(_ùC.{É˙\Z4dtûjzè5?ΩXs\Î\⁄E¨ã˙ï¨N\ËdUy@%@›ë\ÌéiFª§¥∂ë\rF\‘\…vª≠\◊\ÕîzØ≠A\ÏÕø5?ΩGöüﬁÆjohpé5+yHû;v»§´π¿\œ<t?ë©ü]µñØ\Ï\÷MF\Ê\›\ƒooo ,úaø∫=I\ÈÉFÅ\Ïçˇ\05?ΩGöüﬁ¨m\'QmJÕ•í›≠\ÊéFäXãÜ\⁄\ pp√Ç*\ı\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¢ã\"-˘©˝\Í<\‘˛\ıT¶O*¡ì0%cR\ƒ∏4X9xHÑ\‡5>©2^[4Oqa,QªÑ\ﬁ]\Ù\ËŸ´¥Æû¬©fQEaEPEPEPEPEPEPEPEPEPEPEPEPEPSˇ\0´¸káâ¶÷†\÷tπ†πWBQ\'ù,®˘C+\Ûes\ﬂ8\‡Wu\"\\Zã\Ï\Ì\Í(6Ñ\“G}\‡°“∂ÖïîR∑Bõ°W\Ã\ŒJèæºé∏\≈]èB\‘-|=§[@\ˆè{ß8`%\›\Â?\»\Ëy\‰é=˙WW\ˆv\ı}ùΩE;\"Ω°\¬^¯OUª\÷\Ë\œg\‰®\n\“ S\Â\»T\\d\Á\'\'U\Û\·ôùÜ\›[6‹ÄzF•Oo~+¨˚;zä>\Œﬁ¢ïê{SÜá¬ö£[¬≥\\X\≈-º1\€\ƒ`F¡UWà#ìñ\È”É\ÎP\È\ﬁ\÷l$k°&û\˜;\∆Y%ï\nî\ÿ\Ÿf\Á=\Ì\‘q÷ªˇ\0≥∑®£\Ï\Ì\Í(≤µ8õ/jVãkk\Ê\ŸPm§ù\ˆ∑òº\'mßh\Î\”&¨\ÍûΩΩ\Ò$W\ˆ\Û\√æLCæ\Á\∆F\n}\∆\Î\√pGΩuøgoQG\Ÿ\€\‘S≤¥9m\'B\‘\"µºÉQû\‹˘÷ë\⁄!∂\r¬†qìû\Ávk<¯OSº2}∂k∑E\0⁄´ïcô3\œ\ﬁé\ÿ\«lû\Á\Ï\Ì\Í(˚;zä,ò{CÇ≤\é≠k\0cw∫Æ\Âñ`G$y\À\˜fB\„c5kE\\Õ˝éù´¡u%πí\ˆ\ZlñI\0!\n\‰ó\Á∏\È˘z\ˆgoQG\Ÿ\€\‘R≤µ8©¸%v˛!Ç\Ú;•õ†yc\Û§\\±Ä~V\Ë9==˙Só\√:å\⁄DZmÃ∂I\0E∞+h\ƒnôl\˜˘Å¿\‡s\œ5\Ÿ˝ùΩEgoQEêΩ©\ƒ\ËûΩ±∏∑ö\ˆx•hßW \Õ$πEäD/”ô:v\«SUf\f©\ˆH#Ç\Íh<¶MìI,±yL7(\»\0è\ƒ^Å\ˆv\ı}ùΩE\r&?k≠\ŒF\œ¬Ølê+¥ÂΩ≥d\Ó?\ÍÅ\œ\\ûßåö\œ>\næ\Zú•\⁄)ô\“(dgU¿nΩ\ÒÉ\Î]\˜\Ÿ\€\‘Q\ˆv\ı\ÏÖ\ÌN8¯b\Ó8\Ìl$ÅP\‰\"m\Á†\Ù\'\Ò¶¯s¬∑∫4”¥\◊bUxûF8\ŒsÜ\·>Ä\È]ü\Ÿ\€\‘Q\ˆv\ı¨É⁄ô˙uöi˙mΩ¢(QaNr{ú\˜\…\…\œzµS}ùΩEgoQUryë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\r7\Ÿ\€\‘Q\ˆv\ı\\9ë\rEuû\ŒhTÄ\“F\ 	\È\»\≈[˚;zä>\Œﬁ¢ã†\ÊAu©^\ÍY\€ƒã*πu∏.x\ˆ\ÿ?ùX®V#ÉS\‘$ñ¬´Q\Õ›ÖQL\»(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(§\'\0üA\\≠∑ä5!i\rﬁ£¶\⁄[[]B\Ú[K\€8c2 \Ú¡\\™∑#wJW)EΩéÆä¬ø\Ònëc˛nñI\Ï¢i%Ö\'é†`ûFq\”<’´OiW\◊\Ê\∆\⁄\Ò$π	º«Ç0qåååé£4]+µ\Ïi\—XW+\”!\÷c\”V\Ê&ê>\–K`BN0z`\Û\∆y©≠ºEe®Of∂-\ƒW\"3å©B´ªûx¸\ÛE\–r≥^ä\ ˇ\0ÑõE˚d\ˆáQÖg∑WiUâB}\Ïì\«~ú\‘_\ñ\Ë_eä\‰\ÍQ§îƒ•É∏`êAû9¥],ªTVCxìM∑ï\"ººÇ)dô\‚çCù≠∑\'é9\„û3\‹\’k\ﬂ\Zhñkr\‚\À-≥Ññ$V,ß\Ãû\‹\‡ûq\Ì\Í(∫Yv:\n+2/\È3\‹\\[\≈zè-∞&UPI88\„ú3é\ıßLM5∏QEZ±µä\Â\Â\ÛC°qá#\◊“ìvW.ù7R\\®´Ekˇ\0eZqˇ\0\Ô\Îç\ŸVü\‹˚˙\ﬂ\„Q\Ì\—\ı9\˜2(≠\Ï´O\Ó?˝˝o\Ò£˚*\”˚èˇ\0[¸h\ˆà>ß>\ÊEØ˝ïi˝\«ˇ\0ø≠˛4eZqˇ\0\Ô\Îç\—\‘\Á\‹»¢µˇ\0≤≠?∏ˇ\0\˜\ıø∆è\Ï´O\Ó?˝˝o\Ò£\⁄ ˙ú˚ôVø\ˆUß\˜˛˛∑¯\—˝ïi˝\«ˇ\0ø≠˛4{DSüs\"ä\◊˛ ¥˛\„ˇ\0\ﬂ\÷ˇ\0\Z?≤≠?∏ˇ\0\˜\ıø∆èhÉ\Ís\ÓdQZˇ\0\ŸVü\‹˚˙\ﬂ\„G\ˆUß\˜˛˛∑¯\—\Ì}N}Ãä+_˚*\”˚èˇ\0[¸h˛ ¥˛\„ˇ\0\ﬂ\÷ˇ\0\Z=¢©œπëEkˇ\0eZqˇ\0\Ô\Îç\ŸVü\‹˚˙\ﬂ\„G¥A\ı9\˜2(≠\Ï´O\Ó?˝˝o\Ò£˚*\”˚èˇ\0[¸h\ˆà>ß>\ÊEØ˝ïi˝\«ˇ\0ø≠˛4eZqˇ\0\Ô\Îç\—\‘\Á\‹»¢µˇ\0≤≠?∏ˇ\0\˜\ıø∆è\Ï´O\Ó?˝˝o\Ò£\⁄ ˙ú˚ôVø\ˆUß\˜˛˛∑¯\—˝ïi˝\«ˇ\0ø≠˛4{DSüs\"ä\◊˛ ¥˛\„ˇ\0\ﬂ\÷ˇ\0\Z?≤≠?∏ˇ\0\˜\ıø∆èhÉ\Ís\ÓdQZˇ\0\ŸVü\‹˚˙\ﬂ\„G\ˆUß\˜˛˛∑¯\—\Ì}N}Ãä+_˚*\”˚èˇ\0[¸h˛ ¥˛\„ˇ\0\ﬂ\÷ˇ\0\Z=¢©œπëEkˇ\0eZqˇ\0\Ô\Îç\ŸVü\‹˚˙\ﬂ\„G¥A\ı9\˜2(≠\Ï´O\Ó?˝˝o\Ò£˚*\”˚èˇ\0[¸h\ˆà>ß>\ÊEØ˝ïi˝\«ˇ\0ø≠˛4eZqˇ\0\Ô\Îç\—\‘\Á\‹»¢µˇ\0≤≠?∏ˇ\0\˜\ıø∆è\Ï´O\Ó?˝˝o\Ò£\⁄ ˙ú˚ôVø\ˆUß\˜˛˛∑¯\—˝ïi˝\«ˇ\0ø≠˛4{DSüs\"ä\◊˛ ¥˛\„ˇ\0\ﬂ\÷ˇ\0\Z?≤≠?∏ˇ\0\˜\ıø∆èhÉ\Ís\ÓdQZˇ\0\ŸVü\‹˚˙\ﬂ\„G\ˆUß\˜˛˛∑¯\—\Ì}N}Ãä+B\Ú\¬\ﬁVí5p¿Æ	ëèq\ÔY\ıQï\Ã*\“t›òQEFAEPEPEPEPEPEPEPEPEPEPEPEPEPï#\‘W û’Æ4¥\”\ı\rB\Ã¡mm$6\¬NÊç£\‰±\ŒõÄZ\Ï(•bîö\ÿ\‚Ä_\Ì˙Ñ¢\Ò<ªÖú≈ñî≤<†\Á*dŸÅ∏\ÙPjﬁù\·[˚Æ≥wym1fv\∆˚\Œ\8\…bÇ8\0:\Û]eY!∫íg!}\‡˚ª˘&∑í˛ß3\\<h∞ë(3\Œ[<Ä[åcäõ@\ú∫L\Ò\\Kq ≤ª∏FïÅ6édv>˝k©¢ã sï¨qc√ö¶¢oï\Ô\÷\ﬂ\Ì7R[Å	}\»∂y\\1<`\Û÷ç/¡˙¶íL\ˆ∑\÷1\‹<\“3è≥ªFEà6rw9$\Á\'5\⁄QBH~\“G©¯	\Ô\ÔM\«\⁄\”ºÇefï~Fëüçé†üòèõ\"¥.º-<∞(Ü\Í$ñ7∏ë£$ní\·f\\\Û\–l¡Æûä,Ö\Ì$r:GÉ\Á\“5{ã\Ë\Óasâ<Ä\Ì1¡v\‹w!L\ˆTW]E%aJNN\Ï*\Óô4Q<\¬I2òZ•E)+´Jß≥ó1Ω\ˆªo˘¯ã˛˚}Æ\€˛~\"ˇ\0æ\≈`\—Q\Ï¸ŒüÆw\Ò7æ\◊mˇ\0?\ﬂbèµ\€\œ\ƒ_\˜ÿ¨\Z(\ˆ~a\ı\œ\Ó˛&\˜\⁄\Ìø\Á\‚/˚\ÏQ\ˆªo˘¯ã˛˚ÉE\œ\Ã>π˝\ﬂ\ƒ\ﬁ˚]∑¸¸Eˇ\0}ä>\◊mˇ\0?\ﬂb∞h£\Ÿ˘á\◊?ª¯õ\ﬂk∂ˇ\0üàø\Ô±G\⁄\Ìø\Á\‚/˚\ÏV\r{?0˙\Á\˜{\Ìv\ﬂ\Û\Ò˝\ˆ(˚]∑¸¸Eˇ\0}ä¡¢èg\Ê\\˛\Ô\‚o}Æ\€˛~\"ˇ\0æ\≈k∂ˇ\0üàø\Ô±X4Q\Ï¸\√\Îü\›¸M\Ôµ\€\œ\ƒ_\˜ÿ£\Ìv\ﬂ\Û\Ò˝\ˆ+ä=üò}s˚øâΩ\ˆªo˘¯ã˛˚}Æ\€˛~\"ˇ\0æ\≈`\—G≥\ÛÆw\Ò7æ\◊mˇ\0?\ﬂbèµ\€\œ\ƒ_\˜ÿ¨\Z(\ˆ~a\ı\œ\Ó˛&\˜\⁄\Ìø\Á\‚/˚\ÏQ\ˆªo˘¯ã˛˚ÉE\œ\Ã>π˝\ﬂ\ƒ\ﬁ˚]∑¸¸Eˇ\0}ä>\◊mˇ\0?\ﬂb∞h£\Ÿ˘á\◊?ª¯õ\ﬂk∂ˇ\0üàø\Ô±G\⁄\Ìø\Á\‚/˚\ÏV\r{?0˙\Á\˜{\Ìv\ﬂ\Û\Ò˝\ˆ(˚]∑¸¸Eˇ\0}ä¡¢èg\Ê\\˛\Ô\‚o}Æ\€˛~\"ˇ\0æ\≈k∂ˇ\0üàø\Ô±X4Q\Ï¸\√\Îü\›¸M\Ôµ\€\œ\ƒ_\˜ÿ£\Ìv\ﬂ\Û\Ò˝\ˆ+ä=üò}s˚øâΩ\ˆªo˘¯ã˛˚}Æ\€˛~\"ˇ\0æ\≈`\—G≥\ÛÆw\Ò7æ\◊mˇ\0?\ﬂbèµ\€\œ\ƒ_\˜ÿ¨\Z(\ˆ~a\ı\œ\Ó˛&\˜\⁄\Ìø\Á\‚/˚\ÏQ\ˆªo˘¯ã˛˚ÉE\œ\Ã>π˝\ﬂ\ƒ\ﬁ˚]∑¸¸Eˇ\0}ä>\◊mˇ\0?\ﬂb∞h£\Ÿ˘á\◊?ª¯õ\ﬂk∂ˇ\0üàø\Ô±G\⁄\Ìø\Á\‚/˚\ÏV\r{?0˙\Á\˜{\Ìv\ﬂ\Û\Ò˝\ˆ(˚]∑¸¸Eˇ\0}ä¡¢èg\Ê\\˛\Ô\‚o}Æ\€˛~\"ˇ\0æ\≈k∂ˇ\0üàø\Ô±X4Q\Ï¸\√\Îü\›¸M]B\Ê≤uI£f%pÇ~\¨™(´åyNz\’}£Ω¨QEQàQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QEˇ\Ÿ');
/*!40000 ALTER TABLE `formulario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicacion`
--

DROP TABLE IF EXISTS `indicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicacion` (
  `nombre` varchar(90) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicacion`
--

LOCK TABLES `indicacion` WRITE;
/*!40000 ALTER TABLE `indicacion` DISABLE KEYS */;
INSERT INTO `indicacion` VALUES ('Aseo'),('Ayuno');
/*!40000 ALTER TABLE `indicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `CI` int NOT NULL,
  PRIMARY KEY (`CI`),
  CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`CI`) REFERENCES `usuario` (`CI`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (26282854),(49424233),(66574073),(66639471),(99491204);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_especialidad`
--

DROP TABLE IF EXISTS `medico_especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_especialidad` (
  `CI` int NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  PRIMARY KEY (`CI`,`especialidad`),
  CONSTRAINT `medico_especialidad_ibfk_1` FOREIGN KEY (`CI`) REFERENCES `medico` (`CI`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_especialidad`
--

LOCK TABLES `medico_especialidad` WRITE;
/*!40000 ALTER TABLE `medico_especialidad` DISABLE KEYS */;
INSERT INTO `medico_especialidad` VALUES (26282854,'Dermatologia'),(26282854,'Pediatria'),(49424233,'Oftalmologia'),(66574073,'Medicina General'),(66574073,'Oftalmologia'),(66639471,'Oncologia'),(99491204,'Dermatologia');
/*!40000 ALTER TABLE `medico_especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `CI` int NOT NULL,
  `ocupacion` varchar(50) DEFAULT 'desocupado',
  `e_civil` varchar(7) DEFAULT 'soltero',
  `fecha_nac` date NOT NULL,
  `sexo` char(1) NOT NULL,
  PRIMARY KEY (`CI`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`CI`) REFERENCES `usuario` (`CI`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (20373964,'Desarrollador backend','Soltero','2020-11-02','M'),(74175332,'Mesero','Soltero','1987-09-15','M'),(80231829,'Oficinista','Soltero','1998-08-25','M'),(84716736,'Jubilado','Soltero','1943-02-03','M'),(96210522,'Profesor de gimnasia','Soltero','1998-09-29','M');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametro`
--

DROP TABLE IF EXISTS `parametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parametro` (
  `nombre` varchar(90) NOT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  `unidad` varchar(20) NOT NULL,
  `referencia_min` decimal(8,2) NOT NULL,
  `referencia_max` decimal(8,2) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametro`
--

LOCK TABLES `parametro` WRITE;
/*!40000 ALTER TABLE `parametro` DISABLE KEYS */;
INSERT INTO `parametro` VALUES ('Hemat√≠es',1,'10E6/uL',4.00,5.50),('Hemoglobina',2,'g/dL',12.00,16.00),('Hematocrito',3,'%',36.00,47.00),('V.C.M',4,'fL',80.00,98.00),('H.C.M',5,'pg',27.00,32.00),('A.D.E',6,'%',11.50,15.00),('PLAQUETAS',7,'10E3/uL',140.00,400.00),('V.P.M',8,'fL',7.50,11.00),('A.D.P',9,'%',15.60,18.40),('Plaquetocrito',10,'%',0.15,0.41),('LEUCOCITOS',11,'10E3/uL',4.00,10.00),('Neu',12,'%',42.00,73.00),('Lin',13,'%',16.00,45.00),('Mon',14,'%',2.00,12.00),('Eos',15,'%',0.00,5.00),('Bas',16,'%',0.00,2.00);
/*!40000 ALTER TABLE `parametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregunta` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `pregunta` (`pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (23,'¬øConsume alcohol u otras drogas?'),(25,'¬øCu√°nto tiempo ha durado esta sensaci√≥n?'),(27,'¬øEl malestar es constante?'),(6,'¬øEl paciente fue vacunado recientemente?'),(11,'¬øEl paciente manifiesta erupciones cut√°neas?'),(14,'¬øEl paciente presenta dificultades para respirar?'),(12,'¬øEl paciente presenta dolor en el ap√©ndice al tocarlo?'),(22,'¬øEl paciente presenta trastornos alimenticios?'),(9,'¬øEl paciente presenta trastornos digestivos?'),(4,'¬øEl paciente presenta trastornos humorales?'),(3,'¬øEl paciente presenta trastornos sensoriales?'),(13,'¬øEl paciente se expone al calor? / ¬øEstuvo expuesto?'),(15,'¬øEl paciente toma medicamentos?'),(21,'¬øHa cambiado su dieta recientemente?'),(28,'¬øHa viajado recientemente?'),(29,'¬øPuede cumplir con sus actividades diarias? Si no, ¬øQu√© lo limita?'),(26,'¬øQu√© medicinas est√° tomando?'),(24,'¬øQu√© otros problemas de salud tiene?'),(5,'Actitud:'),(20,'Dieta del paciente:'),(17,'Estado de consciencia:'),(1,'Estado de nutrici√≥n:'),(8,'Frecuencia Card√≠aca:'),(16,'Frecuencia Respiratoria:'),(2,'Grado de hidrataci√≥n:'),(19,'Movilidad:'),(10,'Pulso:'),(7,'Temperatura:');
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_c_previa`
--

DROP TABLE IF EXISTS `ref_c_previa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_c_previa` (
  `ID_cActual` int NOT NULL,
  `ID_cRef` int NOT NULL,
  PRIMARY KEY (`ID_cActual`,`ID_cRef`),
  KEY `ID_cRef` (`ID_cRef`),
  CONSTRAINT `ref_c_previa_ibfk_1` FOREIGN KEY (`ID_cActual`) REFERENCES `atiende` (`ID_consulta`) ON DELETE CASCADE,
  CONSTRAINT `ref_c_previa_ibfk_2` FOREIGN KEY (`ID_cRef`) REFERENCES `atiende` (`ID_consulta`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_c_previa`
--

LOCK TABLES `ref_c_previa` WRITE;
/*!40000 ALTER TABLE `ref_c_previa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_c_previa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registra`
--

DROP TABLE IF EXISTS `registra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registra` (
  `ID_consulta` int NOT NULL,
  `fecha_c` datetime NOT NULL,
  `CI_paciente` int NOT NULL,
  `CI_medico` int NOT NULL,
  `ID_sintoma` int NOT NULL,
  PRIMARY KEY (`ID_consulta`,`fecha_c`,`CI_paciente`,`CI_medico`,`ID_sintoma`),
  KEY `ID_sintoma` (`ID_sintoma`),
  CONSTRAINT `registra_ibfk_1` FOREIGN KEY (`ID_consulta`, `fecha_c`, `CI_paciente`, `CI_medico`) REFERENCES `atiende` (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`) ON DELETE CASCADE,
  CONSTRAINT `registra_ibfk_2` FOREIGN KEY (`ID_sintoma`) REFERENCES `sintoma` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registra`
--

LOCK TABLES `registra` WRITE;
/*!40000 ALTER TABLE `registra` DISABLE KEYS */;
INSERT INTO `registra` VALUES (1,'2020-11-03 13:30:00',84716736,66574073,1),(2,'2020-11-03 15:30:00',96210522,66574073,1),(1,'2020-11-03 13:30:00',84716736,66574073,2),(2,'2020-11-03 15:30:00',96210522,66574073,2),(1,'2020-11-03 13:30:00',84716736,66574073,3),(1,'2020-11-03 13:30:00',84716736,66574073,4),(2,'2020-11-03 15:30:00',96210522,66574073,4);
/*!40000 ALTER TABLE `registra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_es`
--

DROP TABLE IF EXISTS `registro_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_es` (
  `CI_paciente` int NOT NULL,
  `fecha` datetime NOT NULL,
  `nombre_e` varchar(90) NOT NULL,
  PRIMARY KEY (`CI_paciente`,`fecha`),
  KEY `nombre_e` (`nombre_e`),
  CONSTRAINT `registro_es_ibfk_1` FOREIGN KEY (`CI_paciente`) REFERENCES `paciente` (`CI`) ON DELETE CASCADE,
  CONSTRAINT `registro_es_ibfk_2` FOREIGN KEY (`nombre_e`) REFERENCES `estado` (`nombre`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_es`
--

LOCK TABLES `registro_es` WRITE;
/*!40000 ALTER TABLE `registro_es` DISABLE KEYS */;
INSERT INTO `registro_es` VALUES (20373964,'2020-11-02 00:56:48','dasdsadasdasd'),(20373964,'2020-11-02 09:54:52','De alta'),(20373964,'2020-11-03 20:35:34','De alta'),(74175332,'2020-11-02 09:58:33','De alta'),(80231829,'2020-11-02 10:00:46','De alta'),(84716736,'2020-11-02 10:04:59','De alta'),(96210522,'2020-11-02 10:03:29','De alta');
/*!40000 ALTER TABLE `registro_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requiere`
--

DROP TABLE IF EXISTS `requiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requiere` (
  `ID_consulta` int NOT NULL,
  `fecha_c` datetime NOT NULL,
  `CI_paciente` int NOT NULL,
  `CI_medico` int NOT NULL,
  `ID_formulario` int NOT NULL,
  `ID_pregunta` int NOT NULL,
  `ID_analisis` int NOT NULL,
  PRIMARY KEY (`ID_consulta`,`fecha_c`,`CI_paciente`,`CI_medico`,`ID_formulario`,`ID_pregunta`,`ID_analisis`),
  KEY `ID_analisis` (`ID_analisis`),
  CONSTRAINT `requiere_ibfk_1` FOREIGN KEY (`ID_consulta`, `fecha_c`, `CI_paciente`, `CI_medico`, `ID_formulario`, `ID_pregunta`) REFERENCES `responde` (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`, `ID_formulario`, `ID_pregunta`) ON DELETE CASCADE,
  CONSTRAINT `requiere_ibfk_2` FOREIGN KEY (`ID_analisis`) REFERENCES `analisis` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requiere`
--

LOCK TABLES `requiere` WRITE;
/*!40000 ALTER TABLE `requiere` DISABLE KEYS */;
INSERT INTO `requiere` VALUES (1,'2020-11-03 13:30:00',84716736,66574073,1,1,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,2,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,3,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,4,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,5,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,6,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,7,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,8,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,9,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,10,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,11,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,12,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,13,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,14,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,15,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,1,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,2,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,3,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,4,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,5,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,6,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,7,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,8,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,9,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,10,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,11,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,12,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,13,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,14,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,15,1);
/*!40000 ALTER TABLE `requiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responde`
--

DROP TABLE IF EXISTS `responde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responde` (
  `ID_consulta` int NOT NULL,
  `fecha` datetime NOT NULL,
  `CI_paciente` int NOT NULL,
  `CI_medico` int NOT NULL,
  `ID_formulario` int NOT NULL,
  `ID_pregunta` int NOT NULL,
  `respuesta` varchar(7200) NOT NULL,
  PRIMARY KEY (`ID_consulta`,`fecha`,`CI_paciente`,`CI_medico`,`ID_formulario`,`ID_pregunta`),
  KEY `ID_formulario` (`ID_formulario`,`ID_pregunta`),
  CONSTRAINT `responde_ibfk_1` FOREIGN KEY (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`) REFERENCES `atiende` (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`) ON DELETE CASCADE,
  CONSTRAINT `responde_ibfk_2` FOREIGN KEY (`ID_formulario`, `ID_pregunta`) REFERENCES `de` (`ID_formulario`, `ID_pregunta`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responde`
--

LOCK TABLES `responde` WRITE;
/*!40000 ALTER TABLE `responde` DISABLE KEYS */;
INSERT INTO `responde` VALUES (1,'2020-11-03 13:30:00',84716736,66574073,1,1,'Peso normal'),(1,'2020-11-03 13:30:00',84716736,66574073,1,2,'Hidratado'),(1,'2020-11-03 13:30:00',84716736,66574073,1,3,'False'),(1,'2020-11-03 13:30:00',84716736,66574073,1,4,'False'),(1,'2020-11-03 13:30:00',84716736,66574073,1,5,'Apat√≠a'),(1,'2020-11-03 13:30:00',84716736,66574073,1,6,'False'),(1,'2020-11-03 13:30:00',84716736,66574073,1,7,'25'),(1,'2020-11-03 13:30:00',84716736,66574073,1,8,'33'),(1,'2020-11-03 13:30:00',84716736,66574073,1,9,'True'),(1,'2020-11-03 13:30:00',84716736,66574073,1,10,'Fuerte'),(1,'2020-11-03 13:30:00',84716736,66574073,1,11,'True'),(1,'2020-11-03 13:30:00',84716736,66574073,1,12,'False'),(1,'2020-11-03 13:30:00',84716736,66574073,1,13,'True'),(1,'2020-11-03 13:30:00',84716736,66574073,1,14,'True'),(1,'2020-11-03 13:30:00',84716736,66574073,1,15,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,1,'Peso normal'),(2,'2020-11-03 15:30:00',96210522,66574073,1,2,'Normohidratado'),(2,'2020-11-03 15:30:00',96210522,66574073,1,3,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,4,'False'),(2,'2020-11-03 15:30:00',96210522,66574073,1,5,'Desmotivaci√≥n'),(2,'2020-11-03 15:30:00',96210522,66574073,1,6,'False'),(2,'2020-11-03 15:30:00',96210522,66574073,1,7,'25'),(2,'2020-11-03 15:30:00',96210522,66574073,1,8,'33'),(2,'2020-11-03 15:30:00',96210522,66574073,1,9,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,10,'D√©bil'),(2,'2020-11-03 15:30:00',96210522,66574073,1,11,'False'),(2,'2020-11-03 15:30:00',96210522,66574073,1,12,'False'),(2,'2020-11-03 15:30:00',96210522,66574073,1,13,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,14,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,15,'False');
/*!40000 ALTER TABLE `responde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultado` (
  `ID_consulta` int NOT NULL,
  `fecha_c` datetime NOT NULL,
  `CI_paciente` int NOT NULL,
  `CI_medico` int NOT NULL,
  `ID_analisis` int NOT NULL,
  `ID_parametro` int NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`ID_consulta`,`fecha_c`,`CI_paciente`,`CI_medico`,`ID_analisis`,`ID_parametro`),
  KEY `ID_analisis` (`ID_analisis`,`ID_parametro`),
  CONSTRAINT `resultado_ibfk_1` FOREIGN KEY (`ID_consulta`, `fecha_c`, `CI_paciente`, `CI_medico`) REFERENCES `atiende` (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`) ON DELETE CASCADE,
  CONSTRAINT `resultado_ibfk_2` FOREIGN KEY (`ID_analisis`, `ID_parametro`) REFERENCES `tiene` (`ID_analisis`, `ID_parametro`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
INSERT INTO `resultado` VALUES (2,'2020-11-03 15:30:00',96210522,66574073,1,1,5.00,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,2,14.40,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,3,39.00,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,4,91.23,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,5,29.66,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,6,14.01,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,7,325.65,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,8,9.11,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,9,17.21,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,10,0.34,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,11,6.77,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,12,49.42,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,13,29.33,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,14,11.21,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,15,4.33,'2020-11-03'),(2,'2020-11-03 15:30:00',96210522,66574073,1,16,1.22,'2020-11-03');
/*!40000 ALTER TABLE `resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_diario`
--

DROP TABLE IF EXISTS `s_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_diario` (
  `ID_seg` int NOT NULL,
  `fecha` date NOT NULL,
  `ID_tratamiento` int NOT NULL,
  `CI_paciente` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  PRIMARY KEY (`ID_seg`,`fecha`),
  KEY `CI_paciente` (`CI_paciente`,`ID_tratamiento`,`fecha_inicio`),
  CONSTRAINT `s_diario_ibfk_1` FOREIGN KEY (`ID_seg`) REFERENCES `seguimiento` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `s_diario_ibfk_2` FOREIGN KEY (`CI_paciente`, `ID_tratamiento`, `fecha_inicio`) REFERENCES `sigue` (`CI_paciente`, `ID_tratamiento`, `fecha_inicio`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_diario`
--

LOCK TABLES `s_diario` WRITE;
/*!40000 ALTER TABLE `s_diario` DISABLE KEYS */;
INSERT INTO `s_diario` VALUES (1,'2020-11-03',1,84716736,'2020-11-03');
/*!40000 ALTER TABLE `s_diario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguimiento`
--

DROP TABLE IF EXISTS `seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguimiento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(3600) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguimiento`
--

LOCK TABLES `seguimiento` WRITE;
/*!40000 ALTER TABLE `seguimiento` DISABLE KEYS */;
INSERT INTO `seguimiento` VALUES (1,'El paciente manifiesta sensacion de mejora al tomar la medicina tras el correr de pocas horas.');
/*!40000 ALTER TABLE `seguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signo_clinico`
--

DROP TABLE IF EXISTS `signo_clinico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signo_clinico` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(160) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signo_clinico`
--

LOCK TABLES `signo_clinico` WRITE;
/*!40000 ALTER TABLE `signo_clinico` DISABLE KEYS */;
INSERT INTO `signo_clinico` VALUES (1,'erupciones cut√°neas');
/*!40000 ALTER TABLE `signo_clinico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sigue`
--

DROP TABLE IF EXISTS `sigue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigue` (
  `CI_paciente` int NOT NULL,
  `ID_tratamiento` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `resultado` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`CI_paciente`,`ID_tratamiento`,`fecha_inicio`),
  KEY `ID_tratamiento` (`ID_tratamiento`),
  CONSTRAINT `sigue_ibfk_1` FOREIGN KEY (`ID_tratamiento`) REFERENCES `tratamiento` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `sigue_ibfk_2` FOREIGN KEY (`CI_paciente`) REFERENCES `paciente` (`CI`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sigue`
--

LOCK TABLES `sigue` WRITE;
/*!40000 ALTER TABLE `sigue` DISABLE KEYS */;
INSERT INTO `sigue` VALUES (84716736,1,'2020-11-03','2020-11-04','');
/*!40000 ALTER TABLE `sigue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sintoma`
--

DROP TABLE IF EXISTS `sintoma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sintoma` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(160) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sintoma`
--

LOCK TABLES `sintoma` WRITE;
/*!40000 ALTER TABLE `sintoma` DISABLE KEYS */;
INSERT INTO `sintoma` VALUES (2,'dolor de cabeza'),(3,'jaqueca'),(1,'mareo'),(4,'nauseas');
/*!40000 ALTER TABLE `sintoma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugiere`
--

DROP TABLE IF EXISTS `sugiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugiere` (
  `ID_consulta` int NOT NULL,
  `fecha_c` datetime NOT NULL,
  `CI_paciente` int NOT NULL,
  `CI_medico` int NOT NULL,
  `ID_formulario` int NOT NULL,
  `ID_pregunta` int NOT NULL,
  `ID_tratamiento` int NOT NULL,
  PRIMARY KEY (`ID_consulta`,`fecha_c`,`CI_paciente`,`CI_medico`,`ID_formulario`,`ID_pregunta`,`ID_tratamiento`),
  KEY `ID_tratamiento` (`ID_tratamiento`),
  CONSTRAINT `sugiere_ibfk_1` FOREIGN KEY (`ID_consulta`, `fecha_c`, `CI_paciente`, `CI_medico`, `ID_formulario`, `ID_pregunta`) REFERENCES `responde` (`ID_consulta`, `fecha`, `CI_paciente`, `CI_medico`, `ID_formulario`, `ID_pregunta`) ON DELETE CASCADE,
  CONSTRAINT `sugiere_ibfk_2` FOREIGN KEY (`ID_tratamiento`) REFERENCES `tratamiento` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugiere`
--

LOCK TABLES `sugiere` WRITE;
/*!40000 ALTER TABLE `sugiere` DISABLE KEYS */;
INSERT INTO `sugiere` VALUES (1,'2020-11-03 13:30:00',84716736,66574073,1,1,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,2,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,3,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,4,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,5,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,6,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,7,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,8,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,9,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,10,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,11,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,12,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,13,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,14,1),(1,'2020-11-03 13:30:00',84716736,66574073,1,15,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,1,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,2,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,3,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,4,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,5,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,6,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,7,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,8,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,9,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,10,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,11,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,12,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,13,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,14,1),(2,'2020-11-03 15:30:00',96210522,66574073,1,15,1);
/*!40000 ALTER TABLE `sugiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiene`
--

DROP TABLE IF EXISTS `tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiene` (
  `ID_analisis` int NOT NULL,
  `ID_parametro` int NOT NULL,
  PRIMARY KEY (`ID_analisis`,`ID_parametro`),
  KEY `ID_parametro` (`ID_parametro`),
  CONSTRAINT `tiene_ibfk_1` FOREIGN KEY (`ID_analisis`) REFERENCES `analisis` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `tiene_ibfk_2` FOREIGN KEY (`ID_parametro`) REFERENCES `parametro` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene`
--

LOCK TABLES `tiene` WRITE;
/*!40000 ALTER TABLE `tiene` DISABLE KEYS */;
INSERT INTO `tiene` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16);
/*!40000 ALTER TABLE `tiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamiento` (
  `nombre` varchar(160) NOT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(16000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES ('Tratamiento para migra√±a 1',1,'El paciente debe tomar la medicina Maxalt, 1 vez en la ma√±ana y otra vez a la noche, todos los d√≠as.');
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `CI` int NOT NULL,
  `nombre1` varchar(30) NOT NULL,
  `nombre2` varchar(30) DEFAULT NULL,
  `apellido1` varchar(30) NOT NULL,
  `apellido2` varchar(30) DEFAULT NULL,
  `direccion_calle` varchar(160) NOT NULL,
  `direccion_nroPuerta` int NOT NULL,
  `activo` bit(1) DEFAULT b'1',
  `correo` varchar(50) DEFAULT '@',
  `foto` mediumblob,
  PRIMARY KEY (`CI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (20373964,'Mateo','Alfonso','Carriqu√≠','Cnudde','Luis Alberto de Herrera',1231,_binary '','mateocarriqui7@gmail.com',''),(26282854,'Fabio','','Pinto','Ribeiro','Canelones',2571,_binary '','doc.fabiopintor@gmail.com',''),(37440164,'Paulo','','Ferreira','Alves','Treinta y Tres',9018,_binary '','paulof3alves@gmail.com',''),(41818963,'Pedro','','Correia','Azevedo','Ombu',2719,_binary '','pedreocazevedo@gmail.com',''),(49424233,'Lara','Marta','Rocha','Olivera','Ibirapita',5112,_binary '','lararocha0v@gmail.com',''),(66574073,'Diego','','Barbosa','Santos','Baltasar Brum',8211,_binary '','diegobarbosa5@gmail.com',''),(66639471,'Livia','','Costa','Ferreira','Baltasar Brum',4825,_binary '','liviacostaf@gmail.com',''),(74175332,'Romelio','','Gracia','Castellanos','Piedras',6256,_binary '','romeliogcast@gmail.com',''),(75883683,'Tomas','','Santos','Costa','Cagancha',8688,_binary '','tomas5costa@gmail.com',''),(80231829,'Diego','','Vald√©s','Reyna','Neptuno',5673,_binary '','adrielvreyna@gmail.com',''),(84716736,'Daniel','','Moore','','Molle',5312,_binary '','danielm77@gmail.com',''),(87666431,'Bianca','','Barbosa','Fernandes','Joaquin Suarez',9566,_binary '','biancabfernandes@gmail.com',''),(96210522,'Oscar','','Watson','','Democracia',6521,_binary '','oscarwt@gmail.com',''),(99491204,'Luana','','Dias','Oliveira','Ibirapita',9624,_binary '','luadiasolivera@gmail.com','');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_tel`
--

DROP TABLE IF EXISTS `usuario_tel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_tel` (
  `CI` int NOT NULL,
  `telefono` varchar(9) NOT NULL,
  PRIMARY KEY (`CI`,`telefono`),
  CONSTRAINT `usuario_tel_ibfk_1` FOREIGN KEY (`CI`) REFERENCES `usuario` (`CI`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_tel`
--

LOCK TABLES `usuario_tel` WRITE;
/*!40000 ALTER TABLE `usuario_tel` DISABLE KEYS */;
INSERT INTO `usuario_tel` VALUES (20373964,'098745271'),(20373964,'099523212'),(26282854,'098936160'),(37440164,'097582381'),(37440164,'23356819'),(41818963,'091183578'),(41818963,'23394481'),(49424233,'23358219'),(66574073,'099688871'),(66639471,'093165637'),(74175332,'094764619'),(75883683,'23345674'),(80231829,'098468353'),(84716736,'23381928'),(87666431,'097843829'),(87666431,'23367281'),(96210522,'23351829'),(99491204,'097151713');
/*!40000 ALTER TABLE `usuario_tel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sibim'
--
/*!50003 DROP PROCEDURE IF EXISTS `AltaAnalisis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAnalisis`(IN NOM VARCHAR(90), OUT ID_AN INT)
BEGIN
    INSERT INTO analisis (nombre) VALUES (NOM);
    SET ID_AN = LAST_INSERT_ID();
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaAnalisisIndicacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAnalisisIndicacion`(IN NOM VARCHAR(90))
BEGIN
    INSERT INTO indicacion(nombre) SELECT NOM ON DUPLICATE KEY UPDATE nombre=NOM;
END; 
//
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaAnalisisParametro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAnalisisParametro`(IN NOM VARCHAR(90), IN UNI VARCHAR(20),IN REF_MIN DECIMAL(8,2), IN REF_MAX DECIMAL(8,2), OUT ID_P INT)
BEGIN
    INSERT INTO parametro (nombre,unidad,referencia_min,referencia_max) 
VALUES(NOM,UNI,REF_MIN,REF_MAX);
    SET ID_P = LAST_INSERT_ID();
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaAnalisisRequerido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAnalisisRequerido`(IN ID_C INT,FEC_C DATETIME, IN CI_P INT, IN CI_M INT, ID_F INT, ID_P INT, IN ID_AN INT)
BEGIN
INSERT INTO requiere(ID_consulta,fecha_c,CI_paciente,CI_medico,ID_formulario,ID_pregunta,ID_analisis) VALUES (ID_C,FEC_C,CI_P,CI_M,ID_F,ID_P,ID_AN);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaAnalisisResultados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAnalisisResultados`(IN ID_C INT, IN FEC_C DATETIME,IN CI_P INT,IN CI_M INT,IN ID_AN INT, IN ID_P INT, IN VAL DECIMAL(8,2), IN FEC_R DATE)
BEGIN
INSERT INTO resultado(ID_consulta,fecha_c,CI_paciente,CI_medico,ID_analisis,ID_parametro,valor,fecha) VALUES (ID_C,FEC_C,CI_P,CI_M,ID_AN,ID_P,VAL,FEC_R);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaAnalisisTieneParametro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAnalisisTieneParametro`(IN ID_AN INT,IN ID_P INT)
BEGIN
    INSERT INTO tiene(ID_analisis,ID_parametro)  VALUES(ID_AN,ID_P);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaAtiende` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAtiende`(IN FEC_C DATETIME,IN CI_P INT, IN CI_M INT,IN NOM_CONSULTA VARCHAR(120), IN MOT VARCHAR(400), OUT ID_C INT)
BEGIN
INSERT INTO atiende(fecha,CI_paciente,CI_medico,motivo,nombre_ref,activo) VALUES (FEC_C,CI_P,CI_M,MOT,NOM_CONSULTA, 1);
SET ID_C = LAST_INSERT_ID();
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaAuxiliar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAuxiliar`(IN cedula INT)
BEGIN
INSERT INTO auxiliar (CI) SELECT cedula ON DUPLICATE KEY UPDATE CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaAux_c_med` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAux_c_med`(IN CI_M INT, IN CI_A INT, IN FEC DATETIME)
BEGIN
INSERT INTO corresponde(CI_medico,CI_auxiliar,fecha) SELECT CI_M,CI_A,FEC ON DUPLICATE KEY UPDATE CI_medico=CI_M, Ci_auxiliar=CI_A, fecha=FEC;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaDeterminaEnfermedad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaDeterminaEnfermedad`(IN ID_C INT, FEC DATETIME, CI_P INT, CI_M INT, IN ID_F INT, ID_P INT, IN NOM_E VARCHAR (160))
BEGIN
INSERT INTO determina(ID_consulta,fecha,CI_paciente,CI_medico,ID_formulario,ID_pregunta,nombre_enfermedad) VALUES (ID_C,FEC,CI_P,CI_M,ID_F,ID_P,NOM_E);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaDiaSemana` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaDiaSemana`(IN CI_P INT,IN ID_T INT,IN FEC_INI DATE, IN D TINYINT)
BEGIN
INSERT INTO dia_semana(CI_paciente,ID_tratamiento,fecha_inicio,dia) VALUES (CI_P,ID_T,FEC_INI,D);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaEnfermedad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaEnfermedad`(IN NOM VARCHAR (160))
BEGIN
INSERT INTO enfermedad(nombre) SELECT NOM ON DUPLICATE KEY UPDATE nombre=NOM;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaEspecificacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaEspecificacion`(IN ID_AN INT,IN NOM_I VARCHAR(90), IN DESCR VARCHAR(500))
BEGIN
    INSERT INTO especificacion(ID_analisis,nombre_indicacion,descripcion) 
    VALUES(ID_AN,NOM_I,DESCR);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaEstado`(IN NOM VARCHAR(90))
BEGIN
    INSERT INTO estado(nombre) SELECT NOM ON DUPLICATE KEY UPDATE nombre=NOM;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaExamenFisico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaExamenFisico`(IN ID_C INT, IN FEC_C DATETIME, IN CI_P INT, IN CI_M INT, IN ID_SC INT)
BEGIN
INSERT INTO examenfisico(ID_consulta,fecha_c,CI_paciente,CI_medico,ID_signo) VALUES (ID_C,FEC_C,CI_P,CI_M,ID_SC);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaFormulario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaFormulario`(IN NOMBRE VARCHAR(90), IN XML MEDIUMTEXT, IN V_PREVIA MEDIUMBLOB, OUT ID_F INT)
BEGIN
INSERT INTO formulario(nombre,xml,v_previa) VALUES (NOMBRE,XML,V_PREVIA);
SET ID_F = LAST_INSERT_ID();
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaMedico`(IN cedula INT)
BEGIN
INSERT INTO medico (CI) SELECT cedula ON DUPLICATE KEY UPDATE CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaMedicoEspecialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaMedicoEspecialidad`(IN cedula INT, IN ESPECIALIDAD VARCHAR(50))
BEGIN
INSERT INTO medico_especialidad (CI,especialidad) VALUES (cedula,ESPECIALIDAD);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaPaciente`(IN cedula INT,IN OCUP varchar(50),IN E_C varchar(7), IN F_NAC DATE,IN S CHAR(1))
BEGIN
INSERT INTO PACIENTE (CI,ocupacion,e_civil,fecha_nac,sexo) VALUES (cedula,OCUP,E_C,F_NAC,S) ON DUPLICATE KEY UPDATE ocupacion = OCUP, e_civil = E_C, fecha_nac = F_NAC, sexo = S;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaPacienteSeguimientoDiario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaPacienteSeguimientoDiario`(IN ID_T INT, IN CI_P INT, IN FEC_INI DATE,IN FEC_SEG DATE, IN DESCR VARCHAR(600))
BEGIN
INSERT INTO seguimiento(descripcion) VALUES (DESCR);
SET @ID_S = LAST_INSERT_ID();
INSERT INTO s_diario(ID_seg,fecha,ID_tratamiento,CI_paciente,fecha_inicio) VALUES (@ID_S,FEC_SEG,ID_T,CI_P,FEC_INI);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaPacienteSigueTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaPacienteSigueTratamiento`(IN ID_T INT, IN CI_P INT, IN F_INI DATE, IN F_FIN DATE)
BEGIN
INSERT INTO sigue(ID_tratamiento,CI_paciente,fecha_inicio,fecha_fin,resultado) VALUES (ID_T,CI_P, F_INI,F_FIN,'');
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaPregunta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaPregunta`(IN PREG VARCHAR(300), OUT ID_P INT)
BEGIN
    INSERT INTO pregunta(pregunta) SELECT PREG ON DUPLICATE KEY UPDATE pregunta=PREG;
    SET ID_P = (SELECT ID FROM pregunta where pregunta=PREG);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaPreguntaDeFormulario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaPreguntaDeFormulario`(IN ID_P INT, IN ID_F INT, IN NOM_CONTROL_P VARCHAR(40), NOM_CONTROL_R VARCHAR(40))
BEGIN
INSERT INTO de(ID_formulario,ID_pregunta,nombre_control_pregunta,nombre_control_respuesta) VALUES (ID_F,ID_P,NOM_CONTROL_P,NOM_CONTROL_R);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaRef_c_previa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaRef_c_previa`(IN IDC_ACTUAL INT, IN IDC_REF INT)
BEGIN
INSERT INTO ref_c_previa(ID_cActual,ID_cRef) VALUES (IDC_ACTUAL,IDC_REF);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaRegistraSintoma` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaRegistraSintoma`(IN ID_C INT, IN FEC_C DATETIME,IN CI_P INT, IN CI_M INT, IN ID_S INT)
BEGIN
INSERT INTO registra(ID_consulta,fecha_c,CI_paciente,CI_medico,ID_sintoma) VALUES (ID_C,FEC_C,CI_P,CI_M,ID_S);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaRegistro_es` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaRegistro_es`(IN CI_P INT, IN NOM_E VARCHAR(90))
BEGIN
INSERT INTO registro_es(CI_paciente,nombre_e,fecha) VALUES (CI_P,NOM_E,CAST(NOW() AS DATETIME));
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaResponde` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaResponde`(IN ID_C INT,IN FEC_C DATETIME, IN CI_P INT, IN CI_M INT, IN ID_F INT, IN ID_PREG INT, IN RESPUESTA VARCHAR(7200))
BEGIN
INSERT INTO responde(ID_consulta,fecha,CI_paciente,CI_medico,ID_formulario,ID_pregunta,respuesta) VALUES (ID_C,FEC_C,CI_P,CI_M,ID_F,ID_PREG,RESPUESTA);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaResultadoTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaResultadoTratamiento`(IN ID_T INT, IN F_INI DATE, IN CI_P INT, IN RES VARCHAR(90))
BEGIN
UPDATE sigue SET resultado = RES
WHERE sigue.ID_tratamiento = ID_T AND sigue.CI_paciente = CI_P AND sigue.fecha_inicio = F_INI;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaSignoClinico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaSignoClinico`(IN NOM VARCHAR (160), OUT ID_SC INT)
BEGIN
INSERT INTO signo_clinico(nombre) SELECT NOM ON DUPLICATE KEY UPDATE nombre=NOM;
SELECT ID FROM signo_clinico WHERE nombre = NOM INTO ID_SC;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaSintoma` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaSintoma`(IN NOM VARCHAR (160), OUT ID_S INT)
BEGIN
INSERT INTO sintoma(nombre) SELECT NOM ON DUPLICATE KEY UPDATE nombre=NOM;
SELECT ID FROM sintoma WHERE nombre = NOM INTO ID_S;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaTratamiento`(IN NOM_T VARCHAR (160),IN DESCR VARCHAR(16000))
BEGIN
INSERT INTO tratamiento(nombre,descripcion) VALUES (NOM_T,DESCR);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaTratamientoSugerido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaTratamientoSugerido`(IN ID_C INT,IN FEC_C DATETIME, IN CI_P INT, IN CI_M INT, IN ID_F INT, IN ID_P INT, IN ID_T INT)
BEGIN
INSERT INTO sugiere(ID_Consulta,fecha_c,CI_paciente,CI_medico,ID_formulario,ID_pregunta,ID_tratamiento) VALUES (ID_C,FEC_C,CI_P,CI_M,ID_F,ID_P,ID_T);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaUsuario`(IN cedula INT,IN NOM1 varchar(30),IN NOM2 varchar(30),IN AP1 varchar(30),IN AP2 varchar(30),IN DIR_C varchar(160), IN DIR_N INT,IN ACT BIT, IN CORR varchar(50), IN FOTO MEDIUMBLOB)
BEGIN
INSERT INTO Usuario (CI,nombre1,nombre2,apellido1,apellido2,direccion_calle,direccion_nroPuerta,activo,correo,foto) VALUES (cedula,NOM1,NOM2,AP1,AP2,DIR_C,DIR_N,ACT,CORR,FOTO) ON DUPLICATE KEY UPDATE nombre1 = NOM1, nombre2 = NOM2, apellido1 = AP1, apellido2 = AP2, direccion_calle = DIR_C, direccion_nroPuerta = DIR_N, activo = ACT, correo = CORR, foto = FOTO;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaUsuarioMYSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaUsuarioMYSQL`(
    IN USUARIO VARCHAR(50),
    IN CONTRASENA VARCHAR(30),
    IN ROL VARCHAR(30))
BEGIN
SET @dropexists = concat('DROP USER IF EXISTS ', USUARIO, '@', 'localhost',';');
    PREPARE dropUser FROM @dropexists;
    EXECUTE dropUser;SET @alta = concat('CREATE USER ', USUARIO, '@', 'localhost', ' IDENTIFIED BY ''', CONTRASENA, '''',';');
    PREPARE createUser FROM @alta;
    EXECUTE createUser;
SET @grant_rol = concat('GRANT ' , ROL, ' TO ', USUARIO,'@','192.168.x.x',';');
    PREPARE grantRole FROM @grant_rol;
    EXECUTE grantRole;
SET @set_rol = concat('SET DEFAULT ROLE ' , ROL, ' FOR ', USUARIO,'@','192.168.x.x',';');
    PREPARE setRole FROM @set_rol;
    EXECUTE setRole;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaUsuarioTelefono` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaUsuarioTelefono`(IN cedula INT, IN TELEFONO VARCHAR(9))
BEGIN
    INSERT INTO usuario_tel (CI,telefono) VALUES (cedula,TELEFONO);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AnalisisExiste` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AnalisisExiste`(IN NOM VARCHAR(90),OUT EXISTE BIT)
BEGIN
    SET EXISTE = (EXISTS(SELECT 1 FROM analisis WHERE analisis.nombre = NOM));
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `A_BLogicaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `A_BLogicaUsuario`(IN cedula INT, IN CAMBIO BIT)
BEGIN
    UPDATE Usuario SET
        activo = CAMBIO
    WHERE CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaCorresponde` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaCorresponde`(IN CI_M INT, IN CI_A INT, IN FEC DATETIME)
BEGIN
DELETE FROM CORRESPONDE WHERE CI_medico = CI_M and CI_auxiliar = CI_A and fecha = FEC;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaFormulario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaFormulario`(IN ID_F INT)
BEGIN
DELETE FROM formulario WHERE formulario.ID = ID_F;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaPreguntasDeFormulario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaPreguntasDeFormulario`(IN ID_F INT)
BEGIN
DELETE FROM de WHERE ID_formulario = ID_F;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BorrarEspecialidades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarEspecialidades`(IN cedula INT)
BEGIN
    DELETE FROM medico_especialidad WHERE medico_especialidad.CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BorrarTelefonos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarTelefonos`(IN cedula INT)
BEGIN
    DELETE FROM usuario_tel WHERE usuario_tel.CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarAnalisisXNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarAnalisisXNombre`(IN NOM_A VARCHAR(160))
BEGIN
    SELECT * FROM analisis WHERE nombre LIKE concat('%',NOM_A,'%') LIMIT 0,15;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarAUXILIARxAPELLIDO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarAUXILIARxAPELLIDO`(IN APELLIDO1 VARCHAR(30))
BEGIN    
    SELECT usuario.CI, usuario.nombre1,usuario.nombre2,
    usuario.apellido1,usuario.apellido2,usuario.direccion_calle,
    usuario.direccion_nroPuerta,usuario.correo,usuario.foto,
    usuario.activo,usuario_tel.telefono
     FROM usuario,usuario_tel,auxiliar
    WHERE usuario.apellido1 LIKE concat('%',APELLIDO1,'%') AND usuario.CI = auxiliar.CI AND usuario_tel.CI = usuario.CI;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarAUXILIARxCI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarAUXILIARxCI`(IN cedula INT)
BEGIN
    SELECT usuario.CI,usuario.nombre1,usuario.nombre2,
    usuario.apellido1,usuario.apellido2,
    usuario.direccion_calle,usuario.direccion_nroPuerta,
    usuario.correo,usuario.activo,
    usuario_tel.telefono
     FROM usuario,usuario_tel,auxiliar
    WHERE usuario.CI = cedula AND auxiliar.CI = cedula AND usuario_tel.CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarConsultasPendientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarConsultasPendientes`(IN CI_M INT)
BEGIN
SELECT * FROM atiende
WHERE atiende.activo = 1 AND atiende.CI_medico = CI_M AND date(atiende.fecha) = CURDATE();
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarConsultasPrevias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarConsultasPrevias`(IN CI_P INT)
BEGIN
SELECT * FROM atiende WHERE CI_paciente = CI_P AND activo = 0;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarCrrAuxiliar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarCrrAuxiliar`(IN CI_A INT)
BEGIN
SELECT * FROM CORRESPONDE WHERE CI_auxiliar = CI_A;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarCrrMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarCrrMedico`(IN CI_M INT)
BEGIN
SELECT * FROM CORRESPONDE WHERE CI_medico = CI_M;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarFormulariosXNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarFormulariosXNombre`(IN NOM_F VARCHAR(90))
BEGIN
    SELECT * FROM formulario WHERE nombre LIKE concat('%',NOM_F,'%') LIMIT 0,6;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarMEDICOxAPELLIDO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarMEDICOxAPELLIDO`(IN APELLIDO1 VARCHAR(30))
BEGIN
    SELECT usuario.CI, usuario.nombre1,usuario.nombre2,
    usuario.apellido1,usuario.apellido2,usuario.direccion_calle,
    usuario.direccion_nroPuerta,usuario.correo,usuario.foto,
    usuario.activo,usuario_tel.telefono, medico_especialidad.especialidad
     FROM medico_especialidad,usuario,usuario_tel
    WHERE usuario.apellido1 LIKE concat('%',APELLIDO1,'%') AND usuario.CI = medico_especialidad.CI AND usuario_tel.CI = usuario.CI;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarMEDICOxCI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarMEDICOxCI`(IN cedula INT)
BEGIN
    SELECT usuario.CI, usuario.nombre1,usuario.nombre2,
    usuario.apellido1,usuario.apellido2,usuario.direccion_calle,
    usuario.direccion_nroPuerta,usuario.correo,usuario.foto,
    usuario.activo,usuario_tel.telefono,medico_especialidad.especialidad
    FROM usuario,usuario_tel,medico_especialidad
    WHERE usuario.CI = cedula AND usuario_tel.CI = cedula AND medico_especialidad.CI = cedula AND usuario_tel.CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarMEDICOxEspecialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarMEDICOxEspecialidad`(IN ESP VARCHAR(50))
BEGIN 
    SELECT u.CI,u.nombre1,u.nombre2,u.apellido1,u.apellido2, u.direccion_calle,u.direccion_nroPuerta,u.activo,u.correo, utel.telefono,me.especialidad
    FROM usuario u ,usuario_tel utel ,medico_especialidad me
WHERE u.CI = utel.CI AND u.CI = me.CI AND me.especialidad LIKE CONCAT('%',ESP,'%');
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarPACIENTExAPELLIDO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarPACIENTExAPELLIDO`(IN APELLIDO1 VARCHAR(30))
BEGIN
    SELECT usuario.CI, usuario.nombre1,usuario.nombre2,
    usuario.apellido1,usuario.apellido2,usuario.direccion_calle,
    usuario.direccion_nroPuerta,usuario.correo,
    usuario.activo,usuario_tel.telefono,paciente.ocupacion,
    paciente.e_civil,paciente.fecha_nac,paciente.sexo
    FROM paciente,usuario,usuario_tel
    WHERE usuario.apellido1 LIKE concat('%',APELLIDO1,'%') AND usuario.CI = paciente.CI AND usuario_tel.CI = usuario.CI;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarPACIENTExCI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarPACIENTExCI`(IN cedula INT)
BEGIN
    SELECT usuario.CI, usuario.nombre1,usuario.nombre2,
    usuario.apellido1,usuario.apellido2,usuario.direccion_calle,
    usuario.direccion_nroPuerta,usuario.correo,
    usuario.activo,usuario_tel.telefono,paciente.ocupacion,
    paciente.e_civil,paciente.fecha_nac,paciente.sexo
     FROM paciente,usuario,usuario_tel
    WHERE usuario.CI = cedula AND usuario_tel.CI = cedula AND paciente.CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarParametrosDeAnalisis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarParametrosDeAnalisis`(IN ID_AN INT)
BEGIN
SELECT parametro.ID,parametro.nombre,parametro.unidad,parametro.referencia_min,parametro.referencia_max FROM parametro,tiene WHERE tiene.ID_analisis = ID_AN AND parametro.ID = tiene.ID_parametro;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarPregunta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarPregunta`(IN PREG VARCHAR(300))
BEGIN
SELECT ID FROM PREGUNTA where pregunta = PREG;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarRespuestas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarRespuestas`(IN ID_C INT)
BEGIN
SELECT de.nombre_control_respuesta, respuesta FROM responde,de WHERE responde.ID_consulta = ID_C AND de.ID_pregunta = responde.ID_pregunta;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarRolUsuarioMYSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarRolUsuarioMYSQL`(IN USUARIO VARCHAR(50))
BEGIN
    SELECT Role AS 'ROL' 
    FROM mysql.roles_mapping WHERE roles_mapping.USER = USUARIO;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarTratamientosXNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarTratamientosXNombre`(IN NOM_T VARCHAR(160))
BEGIN
    SELECT * FROM tratamiento WHERE nombre LIKE concat('%',NOM_T,'%') LIMIT 0,15;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CargarFechaResultadoA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `CargarFechaResultadoA`(IN ID_C INT, IN ID_AN INT)
BEGIN
SELECT fecha from resultado WHERE ID_Consulta = ID_C AND ID_analisis = ID_AN;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CargarFormularioUsado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `CargarFormularioUsado`(IN ID_C INT)
BEGIN
SELECT xml FROM formulario WHERE ID IN (SELECT ID_formulario FROM responde WHERE responde.ID_consulta = ID_C);
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultaAnalisisResultados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultaAnalisisResultados`(IN ID_C INT, IN ID_AN INT)
BEGIN
SELECT nombre,ID,unidad,referencia_min,referencia_max,valor FROM resultado,parametro WHERE ID_Consulta = ID_C AND ID_analisis = ID_AN AND resultado.ID_parametro = parametro.ID;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarActivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarActivo`(IN CI_U INT)
BEGIN
SELECT activo from usuario WHERE CI = CI_U;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarAnalisisRequerido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarAnalisisRequerido`(IN ID_C INT)
BEGIN
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SELECT ID,nombre FROM requiere,analisis WHERE requiere.ID_consulta = ID_C AND requiere.ID_analisis = analisis.ID GROUP BY ID_consulta;
SET sql_mode = @@GLOBAL.sql_mode;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarDiasSemana` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarDiasSemana`(IN CI_P INT,IN ID_T INT,IN F_INI DATE)
BEGIN
SELECT dia from dia_semana WHERE CI_paciente = CI_P AND ID_tratamiento = ID_T AND fecha_inicio = F_INI;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarEnfermedadDeterminada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarEnfermedadDeterminada`(IN ID_C INT)
BEGIN
SELECT nombre_enfermedad FROM determina WHERE determina.ID_consulta = ID_C LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarExamenFisico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarExamenFisico`(IN ID_C INT)
BEGIN
SELECT signo_clinico.nombre FROM signo_clinico,examenfisico WHERE examenfisico.ID_consulta = ID_C AND signo_clinico.ID = examenfisico.ID_signo;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarHistorialEstados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarHistorialEstados`(IN CI_P INT)
BEGIN
SELECT nombre_e,fecha FROM registro_es WHERE CI_paciente=CI_P;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarHistorialTratamientos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarHistorialTratamientos`(IN CI_P INT)
BEGIN
SELECT * from sigue,tratamiento WHERE CI_paciente = CI_P AND sigue.ID_tratamiento = tratamiento.ID;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarResultadoTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarResultadoTratamiento`(IN ID_T INT, IN CI_P INT)
BEGIN
    SELECT nombre,resultado FROM tratamiento,sigue WHERE sigue.ID_tratamiento = ID_T AND sigue.CI_paciente = CI_P AND tratamiento.ID = ID_T;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarSegDiario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarSegDiario`(IN CI_P INT,IN ID_T INT,IN FEC_SEG DATE)
BEGIN
SELECT seguimiento.ID,seguimiento.descripcion from seguimiento,s_diario WHERE CI_paciente=CI_P AND ID_tratamiento = ID_T AND s_diario.fecha = FEC_SEG AND s_diario.ID_seg = seguimiento.ID;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarSintomasR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarSintomasR`(IN ID_C INT)
BEGIN
    SELECT sintoma.nombre FROM sintoma,registra WHERE registra.ID_consulta = ID_C AND sintoma.ID = registra.ID_sintoma;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarTratamientoSugerido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarTratamientoSugerido`(IN ID_C INT)
BEGIN
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SELECT ID,nombre,descripcion FROM sugiere,tratamiento WHERE sugiere.ID_consulta = ID_C AND sugiere.ID_tratamiento = tratamiento.ID GROUP BY ID_Consulta;
SET sql_mode = @@GLOBAL.sql_mode;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarUltimoEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarUltimoEstado`(IN CI_P INT)
BEGIN
SELECT nombre_e,fecha FROM registro_es WHERE CI_paciente=CI_P ORDER BY fecha DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CRR_ROLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `CRR_ROLE`()
BEGIN
    SELECT CURRENT_ROLE();
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FinalizarConsulta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FinalizarConsulta`(IN ID_C INT)
BEGIN
    UPDATE Atiende SET activo = 0 WHERE ID_consulta = ID_C;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LeerFotoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `LeerFotoUsuario`(IN cedula INT)
BEGIN    
    SELECT foto
     FROM usuario
    WHERE usuario.CI = cedula;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListadoAnalisisPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListadoAnalisisPaciente`(IN CI_P INT)
BEGIN
SELECT analisis.ID,analisis.nombre,requiere.ID_consulta,requiere.fecha_c,requiere.CI_paciente,requiere.CI_medico FROM analisis,requiere WHERE requiere.CI_paciente = CI_P AND requiere.ID_analisis = analisis.ID GROUP BY ID_consulta; 
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarParametros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarParametros`()
BEGIN
    SELECT * FROM parametro;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarFormulario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarFormulario`(IN ID_F INT, IN NOMBRE VARCHAR(90), IN XML MEDIUMTEXT, IN V_PREVIA MEDIUMBLOB)
BEGIN
UPDATE formulario SET
    nombre = NOMBRE,
    xml = XML,
    v_previa = V_PREVIA
WHERE formulario.ID = ID_F;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirAnalisisSegunE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirAnalisisSegunE`(IN ENF VARCHAR(160))
BEGIN
SELECT nombre, COUNT(*) from (SELECT nombre from analisis,requiere,determina WHERE 
determina.nombre_enfermedad = ENF AND determina.ID_consulta = requiere.ID_consulta AND analisis.ID = requiere.ID_tratamiento GROUP BY requiere.ID_consulta) TopAnalisis ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirAnalisisSegunPyR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirAnalisisSegunPyR`(IN ID_P INT, IN RES VARCHAR(7200))
BEGIN
SELECT nombre, COUNT(*) FROM (SELECT nombre from requiere,responde,analisis where responde.ID_pregunta = ID_P AND responde.respuesta =  RES AND requiere.ID_pregunta = responde.ID_pregunta AND analisis.ID = requiere.ID_analisis GROUP BY requiere.ID_consulta) TopAnalisis ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirAnalisisSegunS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirAnalisisSegunS`(IN SIN VARCHAR(160))
BEGIN
SELECT nombrea, COUNT(*) FROM (SELECT analisis.nombre as 'nombrea' from registra,sintoma,requiere,analisis WHERE 
requiere.ID_consulta = registra.ID_consulta AND registra.ID_sintoma = sintoma.ID AND sintoma.nombre = SIN AND requiere.ID_analisis = analisis.ID GROUP BY registra.ID_consulta) TopAnalisis ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirAnalisisSegunSC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirAnalisisSegunSC`(IN SIGNOC VARCHAR(160))
BEGIN
SELECT nombrea, COUNT(*) FROM (SELECT analisis.nombre as 'nombrea' from examenfisico,signo_clinico,requiere,analisis WHERE 
requiere.ID_consulta = examenfisico.ID_consulta AND examenfisico.ID_signo = signo_clinico.ID AND signo_clinico.nombre = SIGNOC AND requiere.ID_analisis = analisis.ID GROUP BY examenfisico.ID_consulta) TopAnalisis ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirEnfermedadSegunPyR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirEnfermedadSegunPyR`(IN ID_P INT, IN RES VARCHAR(7200))
BEGIN
SELECT nombre_enfermedad, COUNT(*) FROM (SELECT nombre_enfermedad from determina,responde where responde.ID_pregunta = ID_P AND responde.respuesta = RES AND determina.ID_pregunta = responde.ID_pregunta GROUP BY determina.ID_consulta) TopEnfermedad ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirEnfermedadSegunS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirEnfermedadSegunS`(IN SIN VARCHAR(160))
BEGIN
SELECT nombre_enfermedad, COUNT(*) FROM (SELECT nombre_enfermedad from registra,sintoma,determina WHERE 
determina.ID_consulta = registra.ID_consulta AND registra.ID_sintoma = sintoma.ID AND sintoma.nombre = SIN GROUP BY registra.ID_consulta) TopEnfermedad ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirEnfermedadSegunSC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirEnfermedadSegunSC`(IN SIGNOC VARCHAR(160))
BEGIN
SELECT nombre_enfermedad, COUNT(*) FROM (SELECT nombre_enfermedad from examenfisico,signo_clinico,determina WHERE 
determina.ID_consulta = examenfisico.ID_consulta AND examenfisico.ID_signo = signo_clinico.ID AND signo_clinico.nombre = SIGNOC GROUP BY examenfisico.ID_consulta) TopEnfermedad ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirTratamientoPyR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirTratamientoPyR`(IN ID_P INT, IN RES VARCHAR(7200))
BEGIN
SELECT nombre, COUNT(*) FROM (SELECT nombre from sugiere,responde,tratamiento where responde.ID_pregunta = ID_P AND responde.respuesta = RES AND sugiere.ID_pregunta = responde.ID_pregunta AND tratamiento.ID = sugiere.ID_analisis GROUP BY sugiere.ID_consulta) TopTratamiento ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirTratamientoSegunE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirTratamientoSegunE`(IN ENF VARCHAR(160))
BEGIN
SELECT nombre, COUNT(*) from (SELECT nombre from tratamiento,sugiere,determina WHERE 
determina.nombre_enfermedad = ENF AND determina.ID_consulta = sugiere.ID_consulta AND tratamiento.ID = sugiere.ID_tratamiento GROUP BY sugiere.ID_consulta) TopTratamiento ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirTratamientoSegunS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirTratamientoSegunS`(IN SIN VARCHAR(160))
BEGIN
SELECT nombret, COUNT(*) FROM (SELECT tratamiento.nombre as 'nombret' from registra,sintoma,sugiere,tratamiento WHERE 
sugiere.ID_consulta = registra.ID_consulta AND registra.ID_sintoma = sintoma.ID AND sintoma.nombre = SIN AND sugiere.ID_tratamiento = tratamiento.ID GROUP BY registra.ID_consulta) TopTratamiento ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SugerirTratamientoSegunSC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SugerirTratamientoSegunSC`(IN SIGNOC VARCHAR(160))
BEGIN
SELECT nombret, COUNT(*) FROM (SELECT tratamiento.nombre as 'nombret' from examenfisico,signo_clinico,sugiere,tratamiento WHERE 
sugiere.ID_consulta = examenfisico.ID_consulta AND examenfisico.ID_signo = signo_clinico.ID AND signo_clinico.nombre = SIGNOC AND sugiere.ID_tratamiento = tratamiento.ID GROUP BY examenfisico.ID_consulta) TopTratamiento ORDER BY COUNT(*) DESC LIMIT 1;
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `USUARIOEXISTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `USUARIOEXISTE`(IN CEDULA INT,OUT EXISTE BIT)
BEGIN
    SET EXISTE = (EXISTS(SELECT 1 FROM USUARIO WHERE CI=CEDULA));
END; //
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-09  0:32:16
