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
INSERT INTO `analisis` VALUES ('HEMATOLOGÍA',1);
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
INSERT INTO `determina` VALUES (1,'2020-11-03 13:30:00',84716736,66574073,1,1,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,2,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,3,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,4,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,5,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,6,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,7,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,8,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,9,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,10,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,11,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,12,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,13,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,14,'migraña'),(1,'2020-11-03 13:30:00',84716736,66574073,1,15,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,1,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,2,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,3,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,4,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,5,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,6,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,7,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,8,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,9,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,10,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,11,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,12,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,13,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,14,'migraña'),(2,'2020-11-03 15:30:00',96210522,66574073,1,15,'migraña');
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
INSERT INTO `enfermedad` VALUES ('migraña',NULL);
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
INSERT INTO `especificacion` VALUES (1,'Aseo','El paciente debe concurrir higienizado al análisis.'),(1,'Ayuno','El paciente debe realizar ayuno de 8 horas.');
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
INSERT INTO `formulario` VALUES (1,'Formulario para la fiebre','<?xml version=\"1.0\" encoding=\"utf-16\"?>\r\n<ListaControles xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Controles>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>302</X>\r\n        <Y>67</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbENutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p14</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Obesidad</string>\r\n        <string>Anorexia</string>\r\n        <string>Caquexia</string>\r\n        <string>Peso normal</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>50</X>\r\n        <Y>68</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>198</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblENutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p14</Tag>\r\n      <Text>Estado de nutrición:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>302</X>\r\n        <Y>113</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbGradoHidr</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p16</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Hidratado</string>\r\n        <string>Normohidratado</string>\r\n        <string>Hiperhidratado</string>\r\n        <string>Hipohidratado</string>\r\n        <string>Deshidratado</string>\r\n        <string>Rehidratado</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>50</X>\r\n        <Y>115</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>213</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblGradoHidratacion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p16</Tag>\r\n      <Text>Grado de hidratación:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>379</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkSensoriales</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text>¿El paciente presenta trastornos sensoriales?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>431</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkHumorales</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p8</Tag>\r\n      <Text>¿El paciente presenta trastornos humorales?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>752</X>\r\n        <Y>113</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p11</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Coma</string>\r\n        <string>Otro</string>\r\n        <string>Apatía</string>\r\n        <string>Exitación</string>\r\n        <string>Desmotivación</string>\r\n        <string>Desinterés</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>506</X>\r\n        <Y>115</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>82</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p11</Tag>\r\n      <Text>Actitud:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>531</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkVacunas</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p6</Tag>\r\n      <Text>¿El paciente fue vacunado recientemente?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>449</X>\r\n        <Y>24</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>18</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblGrados</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Text>°</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>752</X>\r\n        <Y>25</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtFrecuenciaCard</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p15</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>411</X>\r\n        <Y>24</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>35</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtTemperatura</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>50</X>\r\n        <Y>26</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>136</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblTemperatura</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text>Temperatura:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>506</X>\r\n        <Y>25</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>209</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblFrecuenciaCard</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p15</Tag>\r\n      <Text>Frecuencia Cardíaca:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>751</X>\r\n        <Y>66</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p13</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Fuerte</string>\r\n        <string>Filiforme</string>\r\n        <string>Débil</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>579</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkDigestivos</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text>¿El paciente presenta trastornos digestivos?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>506</X>\r\n        <Y>68</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>70</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p13</Tag>\r\n      <Text>Pulso:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>172</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkErupciones</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Text>¿El paciente manifiesta erupciones cutáneas?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>329</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkApendiceDolor</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Text>¿El paciente presenta dolor en el apéndice al tocarlo?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>227</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkCalor</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Text>¿El paciente se expone al calor? / ¿Estuvo expuesto?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>278</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkDificultadesRespirar</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p2</Tag>\r\n      <Text>¿El paciente presenta dificultades para respirar?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>54</X>\r\n        <Y>482</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>841</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkMeds</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Text>¿El paciente toma medicamentos?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n  </Controles>\r\n</ListaControles>',_binary '�\��\�\0JFIF\0\0`\0`\0\0�\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\�\�$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R\�br\�\n$4\�%\�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����\�\0\0\0?\0\��(���(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0bOeч�\0�r�\0߶�\0\nWE(\�삊@\�#�\�P�Ei�(� ��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0����\� }M7͏�\��\�4�E3͏�\��\�\�\��\��\�\\|���)�l\�_Ώ6?\�\�EÕ\�E3͏�\��\�\�\��\��\�r�\�\�y��\0}:<\��\0���W\�}QL���(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0�?�\0hG��Ν�=�\�\�m�$ߒ\�q�V\�A{i���\�n\�\�;N\\\�eE\�\�\�\�񝥎�&�urn\�ë\�3­#��#\�S�q��ȩ\�\�2$�=\�(]U�r�P˺3\�g\��;\�\�\�]>]N{\�%ʴ\�Ĳ\�2̻Kc\��|f��@�xdT2n>[�Eڽ�:^\���y<{mm���\�O�ѤX\�\�.%�\���\�[j�ӝ\�v\���-d�7v\�r\�n�\�q$�h\�!gh\�\�-�\�#r03�[Oٮ��\�\�or#�y\�yf��\�FOE\�n��\�W[¶\rc%��t�ĆO7\�7i�\�\�\��{Q�^^�\�s�\�B\�\�H�Rƃ~\�%ei�X\�\�3\�E[�\�B\�Et�\�;dg�S$h��^ 2\�uh\�\�u�/��\�\�[�\�py\��匞`l\�\�\�sR�\�\�c=��\�,�s\'��eyC\�\�\�\�\�k`n,h:\�k\�\��l\�\���,\�p\�\�J\�Nzg#�֬\�\'F�G�ɷ�\�D\�1I�,͸�>�&�j�ݯ�QE(��\0(��\0(��\0(��\0(��\0(��\0���\0\���\0�m�\�mV\r�\�ot$p\�v�ϥhj\�\�O�\�\�3N祆�U;6?S�\0��\0y\�!\\̖S��\�u�i��1瞸\�;�\�n^_\�=�G}Į2�t \�\n�-50\�I9+0��+C�+�ҵK\�!�\�&:\�\�A\�\�F��~\�@\�\�ϡ�\���\0fZg5����Ē��v\�y\�֓E\�I-N`x�\"\�%\�\�\�V3��\�9v*o`�\n\�F\�{V�:\�\�\��\�\�\�I����\"A�Sx9\n9=\�\�V�\�\�c\�R_�f�\�e-�I1\�nq\�q��|!��%�h&h�O4���v\�\�\�\�۷��\�8\�/z\�^�x�!\�&�֢\�mX�g\�;���\�mۍ��g�j��\�)\�ۦ��\�����Le\�߷�8ێ�\�\�iipf[y1�e\�l#n\�\�\�\�\�x݌�\�\��5�_.&�L\�~h\�ta�v�� \�w\�F�xv0�o\Z6�$\�\�q�w)�\�DUBJ�C�\���kj�u�ki�\�\�\�\�v�\�\�h�B\0`prx\�)o|!�j�\�k\'͝\�9\�@��!Xd|��㊹�h�:\�D.\�]\�\�\�\��z�\�A�\�3\�b�z��M/PӴ�=D\�R)�\"�fr��U r9\�/=3ҫ^x�W�Ѽ\�m$@\�m̒�L1\�\�Bߘ���\�rx�\�\���\�\�GF�\����wT�T�A\�A4\�\nh\�ij�[9[h�\�\�\�\n/\�\r�\�`\�3�h\�|\�\�cj�2}%6�w��\���#����P���rա/�n��\�/N��\�ݞ8%k���yd\�W\�\�1��:g\0\�\�<\'�jjV\�\�B	��K�v\�k�y�\�\'�t�^\�	su\�\�\�@\�J\0\�!,%pI�P�;�u��\�=.\�\�\�˗GR\�um��U8\�9 j٪\Zf�e�E\�\�,��1\�\�\�\�$�\�\�߭_�3v��EP\"Ň�E��\0#[��k*Cu\�HPNH\�>����i�\0=����V3N祅�T\�e�*�\����\�o�\�\�\�G\����\�o�\�\�\�Qftsǹn����i�\0=����Q��i�\0=����Qf\�\�[��iZ\�F�\0�m�iZ\�F�\0�m�Y�<{�\�\��x\\\�6�T\�\�+O�\�\�\�\�¡����\�dGb̄��8�P��m��EWI\�Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@V\'�\���\";!m\�\�3\�\�\\cP�\�\0y�qӽ&\�4�vF\��o\�[H�\�F\�\�o.FTY�\��~\���q��*;\�\��\�\�\�\�\�8\�\'\�\�*7�\\���d\�\�C\�c���\�\�\�\�D�*m��\�$\�[�\�(\�\�	<\�OJ\�]wM}�Qt>Ĺ\�!Vq��g9\�\�h�.��\�\�x\�I��{�F\�\��nK�a���\�\0\�ZZ���h��]|\�\�?��!q�\�7MA\�\�k\ZTV.�\�;K\�\�y\Z@�\��b���\"��\0	^�f�h!�d󙣐\�ʤ�\r\�`\�\�8\0\Z.��]�\�+_\�\�\�5عF�\�D�\�\�X�]�s��c�{RA\�\�!��r\�\�..\�U\�\�^�x��_�\�֋�\�cv�d2�\�,�\�ktʕ?�\�LAEP ���\�\��ARhè�\��V�vW.�9\�GEk�\0di�\0\�\�\�G\�F��\0>��U��:����V�\�F��\0>��Tdi�\0\�\�\�G���\�E�����\0Ϭ�\�\Z��\��Q\�\�o��Ek�\0di�\0\�\�\�G\�F��\0>��T{@��\�dQV\�8,��\�\�\�/\\�U\�\\\�i:n\�\n(��\�(��Ko_$�O�[YC�\�\�*I\�\� �;d*8\�g�<�J\�(��\�\�X׾#���\�\"���|\�@B1\�D��$�-\�\�\�y/�\�q�\�&\'\�\�pņ2�	lE\�r�\�\�ȦI�$�b�*G#�_\�O� ��(QE\0QE\0QE\0QE\0QO���Qh�U�\��\�\�Z�\0ٖ\�\�m�\0~��+9N\�\�U,7��5\�Z+k�2\��|m�\�\��\0�ٖ\�\�m�\0~��){O#O��\0{\�1h��\�\��\��\0�K�fXύ���_\�\�y\��\0���V\�\�e���\�ߥ�\0\n?�,?\�\�\���/�Q\�<�\�\��Z+k�3O�\0�o�\��\�T5m8Yo�P��Ց8\�9�\�y	\�\�\�T��+S�(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0+\�:=ά�f\�K%�\�c&/-�\�(ˍ����9\�jڢ�W\Zm;���\�\�\�ƛq%\�Z\�\�gh\��\�a1\'\0�mé\0Uy�\ry5園jV\�\r���+\�1e	1�m;𤃆89\�n�\�\�E�^\�G �\�W\�έ	�$I��/\�\�\�_\���˃�{b�F�r\�\�\�\�\�o\�m:Ä�V\\&s�mQ�\�޷���\�\�\�^�\n\�P\�\�\Z��ݼ�4\�\�H�U\�\�*���6\�G�5\�\�:�UD�F�a=�\�\��`@^\�:w\�lQE��rz�����\�Q�D >k@�\�\�B�K\�0�85boM-�@^�O\�*��+�I\�e\�=\\�s\�WMEA\�#��\�\��r\�޾�\��*�$�1\�c\�7gn�n\�|\�[�VH\�ͽI&�\�\�h.�33�%\�lu5\�QE����J\"Q3#I�E�?�\'�\�袙!EP �\�\�U\�Գ��\�\�J��\�\�&7��:n�%ucJs䒑\�y��\0\�D�\0��l\�\�?\�\\\�\�m�\0\�_\���\��\0\�\�/�\�V~\�\��\�\�t\�l\�\�?\�G��\�O�\�W3\�[�\��\�(�-��\����{0�\�\�t\�l\�\�?\�G��\�O�\�W3\�[�\��\�(�-��\����{0�\�\�t\�l\�\�?\�G��\�O\�W3\�[�\��\�(�-��\����{0�\�\�_����\�\��9y#�,\�Q補٪���X2\�#�\n*J�ǔ\�W\�;\�(���\0�r\���]��{Z\�%\�\�sG-\�p*\�D�瞧�\�]�R�[��B\�\�nd�\�-g��X6m?w\�F�\�ݜ~\�\�<\�EG�u}<[C�\�н�\��ǔ\�8�s��d\�qn�:WgEC\�����\�H\�\�##`��T�/`y98\�R\�E2�(��(��(��(��(�\�\�\r���<�Ħ���\�N9�o\�M?�\�\�\��\0�cQY\�w:�by#\�cg�SO�\0��_���\�G\����\0?\��\��Ʊ��\��\�>��\�g�SO�\0��_���\�G\����\0?\��\��Ʊ��\���\�?�l�\0ji�\0\��\0k�\0��h�\�\��\0\��\���\0/�\�5{?0�\�\�M�\�M?�\�\�\��\0�f\�ɥ\�i0��\�̚Tf	(%�\�\�?^=\�AE\�OukQZ�AEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPE\�x�\�&�o�K\�\�L\�9i\n#�ñ\�򓟩\0w�\�J\�\�h�=\�u�m�h4\�K+Kg��T�Qt�cH\�ll��\�2q\�E���W��\�\�\�d�\���]�|�\�Yr�8�\\ȿd\�G��\�B\�\�v�L\"\�\�E\ZYۛFRf�H�L�\�\�7\�\�j\�uK�\�Ř���o,�ٝ}>\�T\�S��\�F\�\�\�\�\�v\�W\�\�\�\Z\��\�\�D��/9\�S͍�,�[\�B\�\�Y\�Z��ekk\�\�\�ar�A\Z\�C&%e�9��\�\��6�\�\�\�\�z\�6Zƫs���V\�渻�\�|\�a,��2�R��#r3\�T\�z��~\��x-\�\�\� �A�� HN{i\�1E\�\�\�\�W�X�\�T��\�wc\nJ\�nd�v��\\e�Hs\�@���E\\�\�&��\���M�o#�e�*LN<�b\�>\�8\�z\�ͥ\�ٴ\�\�\�\�t\�\�����q\�3\�\�\"$�\�\�<\0p@\�C]�;���dm�.��:�\�M;�(�\�>�(�HR*\�,\��1R\�sm\0��-Y\�\�(�\�\��\0\�$������M&G\�\rC�xC�\0��\�}�P�\0��\0\�\���o\�Ys\�\���>\�\�5�\����\0\�Q\�\rC�xC�\0��տE\��\�\�`}�P�\0��\0\�\���`\�?\�?\���\0�[\�Q\� ��>\�\�5�\����\0\�Q\�\rC�xC�\0��տE\��\�\�s�[\�[G\�\�b0ʤ��<�==\�*\�\�\�3i\�}�\�\�\�$K\�������\�Lg�aT\�H6֧&\"�a$�QEY\�Q^wk\�\�MOT\�\Z\�\�A{\�[\�6\�&F�I�&��\�\����q��ǢQ^}�\�W\�+w}oO�E�\�\�E\�JB##y�\�\�k\�K�2\�\�+�F\�Yw\�4;\�i\�.Jl\�s�G�R���v�\�\�\\-��y���\�Iu;%\�[`D���\".\�\�\�\�\�k���\�ɔyB�(�HQE\0QE\0QE\0QE\0��\�8P3��\�	��7\�5�\����\0\�Qi�\0!o\���\0Aj߬�&��u\n�.\��j\�\����\0֣\�\Z��\����\0\��~��y}V�c\�\Z��\����\0\�����\0<!�\0�\��jߢ�y\�i\�0>��\�\�\��\0Z��j\�\����\0֭�(\�}V�c\�\Z��\����\0\���[_[�\�I[K6%\���+���ɮ����[a\Z$.7\�\�s�6�c�{�\�\�!<5;lP��+s\�\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\nd\�\�qC<I,N0\�\�\�\r>�A��1�q[C\ZF�QR0�\�\�TK�\�\���}�Ő\�*#�q���Q@]�\�\�\�f�e��K\�\�c(��\�Բ\�\�\�2M5�2J�q\�0Yy�ې\�S\�@\\�Kky%�x�yN\�)s\�H\�G\�-�R-\��>\�\�>^s\�\�\�MEr�Z}�.^+;xض\�R%�y\�ד�\�F���!�\�wI���\�A\�\�@?�[��]�����jl��\�\'<\�\�>�\�t�)�1Kgo$g\0�\�8\�\�;v�4S�/�[��E\��:���T��\Z*\"�UU\0\nZ(\0��(R\�,\�\�+4*�B2䎤\�IE&��Q���,�\0k^�\0\��\��\0�\�׿\�\�\���?\�U��䉷\�j\�,�\0k^�\0\��\��\0�\�׿\�\�\���?\�U���!\���\�?\�׿\�\�\���?\�G\��\��\��\0�\��Uj(\�}f�r\�\��\��\��\0�\��Q��{�\0<-�\0\��Z�9\"Y�ܒ\�\�\�\�%\�T��U�<0?ң����\�\�u%7yQL\�B# \�\�\�\�\Zy1\�Z\�Lzq\�KE*�2�aHE���	eA\�Rz�1\�r:VӬ]\����6\���JN\�0ON�ϵY���+g\�y�K\�;2O��R\�u8\���\�PEP ��(\0��(\0��(\0��(\0$SE4A#�\' �\�V��煿�\�«QR\�\�Э8+E���煿�\�\�k\��\�o�\0}�\�\�R\�_Y�ܳ��{�\0<-�\0\��k^�\0\��\��\0�V��H�\�j\�,�\0k^�\0\��\��\0�\�׿\�\�\���?\�U���!\���\�?\�׿\�\�\���?\�Q\�_\�\�\�KE��!��**(\�}f�p��*\�p��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0���\��\��݉\�=OU�L�\r\��,v\�3��\0H�t\�eo&�����D�\�;�\nv�@O�\0|c\�i\�\�ٳ~�\��L��\�a�Z\�D!!p�p����X\\���\�J�Kyl\�G 1�\�L\�\'ԭ-�Z[��X�?3E�ٳ^�\�Y�\��X�\�\0\��\����\�\�L\��:���!�Eg}�,�\�)�\�p�s\�T5\rr\�N�̐K\"�,\'��\�b\0^z\�f΂�˂\�&H�J<��cr7c\�d���-{�̲�)�\�_\�\�4X=�5\�\��%ϗ\"�Ӄ���\�M�T;�\��\�ҋ!�Eg�\�\�3 \�K�y\����_\�}ϛ\�}=h�r\Z4V\\7qʑ�\�\ZA��\�\r�f�\��J3�\�j�\�\�0>�X=��Egy\�\�E\�Ws��\�\�}=iL���\�\0\�\�Krh�r\ZVLڅ��ۤ��k�	\�\�$?E4�\�0M��bG#FL��ԎzQ`\�lע��\�\�~b\�#!wrG�)�j�c?\�#ڧim\�\0�Q`\�f�\�\�\�x5U�hn\�]c7,Į\�*��NGlr+W\'\�\�`t\�.\�T�}M>��!v���\�h\�\�4X9�U,�SFO���\�]��d��2}MB\�K\'\�ѓ\�h�rh�Y>���SE���ER\�\�4d��,�\�*�O��\'\�\�`\�.\�T�}M>��!v���\�h\�\�4X9�U,�SFO���\�]��d��2}MB\�K\'\�ѓ\�h�rh� �ؐ�2~�՝\�\�\�[]G��\�\�\�sI\�\rRm]\Z4QEAEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPT\�)�����\�C\Z3\�A\�`gޮS$�\�\�8\�E�\�\�<2.�᥊���<wIsp�s�@,\�\�,��2\���\��MO��\�\�i,n-\"�\�+s{\��\�4Dŉ\�\�\�g�{\�T-UF�\��g\��)\�l\�#\�aЯ�m.\�\�\�f7\�y�Z\�4\�t�1�S\��3�٫\ZG��\�~\�nth.Q%-%�?\�3 p\�j\�8�\��:ף`:6?\n>\�?��RI!�\�\�\�i|\'�6�ir1���Z,ÉY\�,��Ap�\�59\������\�\�\"�\�~_\�:ͻ$��)n\n\�/��\�~�}�{\��E u�p�\�\�W2ތ)�\�.X��gȡ�~\\�\�\�Q7���g�nZ	���|\�\�\�\�\�\�\�]�\0\�\�\��J>\�?��Qe�����g�u)u��n\�\"�<\�/�wǶP.�\�\0��7\�$\��\�\�\�I�\\�6\�m\�m0R��s3\�;ax\�\�wg\��(�8�\�\�BI\rֹ\�\�\�\�\"״��_\�\�\�\�\�~\�\'\�L�/�\�\n@9\��\�=N\�pt\�c7QIr�l\�Զ\�Q�\r\�r\�1�\��M�8�\�\�G\�\�\��J9P{c�🇵=6Y\'�Y�\��l��\���\�}\�sT\�/\�@�ǨZ��n\"g��%b�-�A嗖\��+\�>\�?��Q\�q�\�ҋ \�۞k{�jq\�\�\�y�A,1<6\��q��s\�\0�p\Z�c\���[\�9�ѭf�9��\r?\���\0/\��|�\�+��0=[\��\�\��ߥ	$�g�E\�B;�m�u��o����\�U,�u\�g�q\�U�\�]\�iP\�ekm\�[��\�\����_vC��~`r\�\�g\��(�8�\�\�G*ly�~\�a�\�&Keim\�VYe�&X\�JͷR�x\�s�w�\��([æAu�*]<�5�\�۰1�sۯz\�~\�?��Q\�q�\�ҋ!:��\�\��bCe%Ɨj^\�;hc\r*�o-fR�\�ȭ��z\�}��kpS\�!�!�$x��eb\"�Iڠ���\�O��}�{\��\�\��ߥ�~\�\�;O	\�p\�6�,\�?�-\�VB�\�2`�<+`\�=j�^\rՆ�s\�3I�\Z\��]Y�\�G\�8#=\�\����\�~�}�{\���ۜ\���r\�H�v\�\�Ko�#?�\�S��w�V\�O\�q�\�ҏ��\�~�WF|肊�\�\��ߥg\��(�s\"\n*��\�~�}�{\��\�̈(��\�?��Q\�q�\�ҋ�2 ���8�\�\�G\�\�\��J.Ȃ��\�\��ߥg\��(�s\"\n*��\�~�}�{\��\�̈(��\�?��Q\�q�\�ҋ�2 ���8�\�\�G\�\�\��J.Ȃ��\�\��ߥg\��(�s\"\n*��\�~�}�{\��\�̈(��\�?��Q\�q�\�ҋ�2 ���8�\�\�G\�\�\��J.Ȃ��\�\��ߥg\��(�s\"�\�-�E�̄ʭ\\\�\�}aof�}\�l$���Ǵm`OG\'��/\�\�\��JQ\��L�eF�*iu&��(9(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��*)��nӌ\�4�\�h���Z\�K�7W\�I\0�.�����c�67\�\�v݇�ݻ�-\��\�b��\�٢�y��\�<\��\�;��\�1]�\�\"�2FG���i^\�\�y�B��2OAE���h��k�\0z�5�\0�E���語k�\0z�5�\0�E���語k�\0z�5�\0�E���語k�\0z��\�[\�\�M(D\rǦI��MF_��y��\�K�	�I(S#lL�\0`�~��#/\�U<\��\�R�\�lu�೿�y`8�#`J\�a�6lQTc�\�w\�6\�*\�\�Gj����\�G\��\0�o\�\�s�\�8ݎ�\�R�{6ͪ+>\��.\�c��e�r8\�G�=.���FV�)\�\\��ET\�_�\�y��\�,��ET\�_�\�y��\�,��ET\�_�\�\�rU\�\Z@�\�$d�(�r2\���j\�\�U�\�/\�㷇!w\�p2{T\�]�\�I��d�\�2:�CЊ,?f\�\�UO5�\0�G��\0ޢ\�\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���\0ޣ\�\�Q`\�e�*���$�\0\�MA�k4\�\Z_[�1\0*Ȥ�VFiQEQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0SP�;kv�V\�H\�\�\��V\�\�\�i\nT�n�PTl��\r�\\\�M\�\�%\�f�\�\�rV\�̰F\�\�IA��=�\�\n��\�5\�e;\�{t#������kc�А6�^\��\�8>�\�i\�\r���\�\��۬���d\�\�!�E4n\�\�\�Τ\�\�\�i&�4��nj<\�!���~\�8�*MMK+�K��i+�v�9T�y��7vNݸ\�\�g�z$m�\n*&K`z����Ry\�)%a��\�y��\�O\�\�,5\�x\�\�&*G�۷\�~\�>�8\�)\�\�\��]��k#IĪd��2ώ\0\�\r��;\0{f�#\�QG�����{Tp�mp\�wcSk��_\�D\�]�]\�üm\�3\�2:V;\�\�$�X�\�\�j�L\�u*�aܪ�\'8=b$`p�R\�\�Q\�?��\��Wl\�ٵ\��W�F�7��͉D�W�\�Q\�gf{n�j��\�\r$�jF%��\�G�	�\�>�\�[=s\�l\�{W��\�(\�\�S���V�\�vs\�SX��\�\�#D>\�\�\\�<\��\0Q��_�\�=����>�qn\��s�%��R\�f$yI0\�H-�X\r\�k\�`�[hQR4UI\�?����꣄\�\�\�ŷ���<�˽\\K偻\�{w\r��\�\\\�l�X�\�%\�2\�Mn\�a�9Lk�x\�\'\�\�r~Qө&�7\�QG����\�+���J<W�ڧ�\�\�\�e�\r\�e�\�7/M�{�\�rzi\�\�RF�\�%�n��K�`@/\�o*\���T\�\�Q\�?������>ӡ�����)\�\�k��\�t\�\�S8!2\"\�\�\�t�}�Ǫ\�\\�kv\�-���=��\�X\�\�zqǮks\�QG�����u9ﴶ�ᏴI��rYb��d��U\'�,{b�5\�\�\�I�+��\�0K\�\�Y�\����\01\'�+��\�!���\�\�(\�A�G�g�A�Z���1\�}\�N�ց�\�\�\�\�S�\�\�3j�\�\�)�kq��\�`9\��;St\�~,�\��]b! ��\�<�\�X\�Î�Cҽ\�QG�������<\�\�MRkX.�#�\�\�@b�\�7������\�,�7�\�3\�Y\�Ck�F\�\n�b�\�\�\�\�\�m�\0Rc9\�\�+�\�\�Q\�?��\�\�+�\�/�\�\�K���QH�N��(~R�#\�qӶ\�\��c���G�\�\'�f�8�\�#M�\�:�\�\�	\�\�b�\�\�V\��eW�E\�\�zR}���j\�\��\�KV\�#kβI|�\�Gݕ�\'��\0�\�v\����\�ZG�Ig\�uW��{���\��\03�\'nVA�\r\����<W�y\�(\�\�Q`\��\�t\�9���\�o\�H\�}�MR)T���T8݁�\�\�WSag�a\r�91An�ޮ�\�(\�\�SЇ4Ȩ�|�\�y\�)\�\\Ȋ��\�QG�����2\"��\�\�Q\�?��\�̈��|�\�y\�(�s\"**_!�EC��.Ȋ��\�QG�����2\"��\�\�Q\�?��\�̈��|�\�y\�(�s\"**_!�EC��.Ȋ��\�QG�����2\"��\�\�Q\�?��\�̊�@���I��\�W\�k;�.\�\���\�!�L.:2�\�\�Qy\�)V\Z�E7sH\�QMw,QE�EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPE�#n	\r+�\�Xڞ��h.&Y\�\�\Z�]ُ@\0\�QX\�q_IB\�ydWuK�Z6\�\��\0�?Zv/ٳz�����:7�\��\�E���Eg\�9�0\�H�$a����\�\�\�Uie\�\�5\�\�1��FiQT��\��\�F\��\��\�rh�[\��\�\�y�\��\�rh�다���\�yvEv=��Ro\'��\�E���h��\�J;\n\�\�\�YcXԱb�\�F>�j;}^+��\�\"[�\��!��\�`n\�O\"��f\�K{x�uR\�U��\�-\�,\�2\�A���,͛V]\�\�vQ,�;i!�~g`�\�\"�\�\�\�?�F]��oo\�΍\��\��\�`\�.\�T��\�΍\��\��\�`\�.\�T��\�Ι4\�^C\�>\�-�,q\�;�,��Ky�\��ꆧ���$faq+\�\�$V\�\�\'�\�*m\�nQY�\�iwk\�\�d�;��\�\�\�?�B\�Ksx�tno\�΋!v�����:77\��\�E���ER\�\�\�?���\�\��\�]��no\�΍\��\��\�`\�.\�T�7\��\�F\��\��\�rh�[��\�\�sx�tX9�U-\��\��ѹ��:,�\�*�\��\��\�\�\�\�?�B\�Ksx�tno\�΋!v�����:77\��\�E���ER\�\�\�?���\�\��\�]��no\�΍\��\��\�`\�.\�TZ]�\�\�B�\�>\�Ļ��f�\�\�@i-�U\�\�\�\\sI\��m]\Z4QEaEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPT\�)ŵ���\�$g*�$\�gޮTrG\�c�b��\�z�{$�Y\�\�Gb\�{t�Iu<zlʌ�ݟj\�J�\�<\�\�i薗b�\�yl\�#��\�\�\�)4�f��U����\�uXE��R0NHD\'֤�?�_�5cgQ_�yum{5���\�\�	4\�U�\0Kn\rÕ�\�nA56�\�\�\�1b/49.b�W�:<\�)�&@��R\0㏐1�`\�!m)\n:\�S�\��\�\�I$�\�_C\�\�\�δ\�\����#��,����-�r��硩����t���G5\�nB]\�l瓂B1�8\��F�?�_�g�\0k\��E u�����jwr\�F\�=���	\�vw\�I-\�y`=+2\�@��\Z\'ʎGe��ʧ\�c\�*Ì\�\�Un�\�p3^�\�\��Jj\�]�B�@��\�@\�ڶy�xSS�]\�Ym\�m\�tY!1G�6B0�,1\�\\f�I\�]q\�k[q�m�\�+l#�p\�k�\�\�~T\�\�$׭}���ҏ��\0��R\�C\�\�\��>\�\�\�\�G�Yo�\�#y�\�]\r���zy�q\�3N\�4=B\ZC��\0d���VBCE�c\��D\��$t��z\'\��\0\��(�?�_�;+\�^\�Kq�xv�\�R�x��\�n��\�\��\�ȱ�	\��r0;u5=߅\�[\�-4\�yf�UFT3+�\�s�A\\s\�\�Z\���\0��Q\�\��J,�\�ƙ�%�Q\�h-o\�\� \\\'�6%\�\�8\�g�\���\�m\����\���\�\�g�\�b,T<�n�O(~l�P+\��\��\�\�G\��\0\��(i0U�y���\�4]4\\\�\r5\�F\�m\�N��H\�w�^z��Ϩ�ZxKXM7S�\�\�giQ�\�\�\\8m���~�܃�\�o��\0��Q\�\��J,�\�\�\�\�\�\�w\�$�s��0]\�\�\�x�%q����VM߆ug�N0\�/pI\���\�6�\�-��<a1��L\�\n\��\r�\���zw\��\0\��(��\�\�Q座�\��\�-��L�Zf�\'�2\�\\\�\\�\0u@y\��\�\Z�\�\�\�\�X��\�$d6\�Fz�\�\�]�\��\0\��(�?�_�V�{mnyL�Վ�h��\�\�\�s#\�n\�\0��@\�Q�\'(ۆN:\�a�k\��\�7�\�\�ܗ�I/ˉC#(�s\�\�<�q�\�ק}���Қ��s�����\�h��\�\�?xN\�\�Ŗ\�J\�g�\�\�gx\�-�̄\�Ĺ\�6\�\0�\�k��Ѯ-\����4׷?��2�C~�\�R\�\�\�5\�����ҏ��\0��P�Bun�T���\�	jtP\0�*��\0��Q\�\��J��̈(��\��\�\�G\��\0\��(�s\"\n*��\0��Q\�\��J.Ȃ��\��\0\�~�}���ҋ�2 ���?�_�g�\0k\��\�̈(��\��\�\�G\��\0\��(�s\"\n*��\0��Q\�\��J.Ȃ��\��\0\�~�}���ҋ�2 ���?�_�g�\0k\��\�̈(��\��\�\�G\��\0\��(�s\"\n*��\0��Q\�\��J.Ȃ��\��\0\�~�}���ҋ�2 ���?�_�g�\0k\��\�̊w\n\�k*(\�2�*\�ޫ\�\�>\�\�,n�đϳh\����Oj>\��\�\�J�a�\�\��T\�\'�q�ʚ]I���`��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0�4T\��\�4�\�M�\�(\�\���\�\�b�Y�`�l�8�c�E\\�pFO\�l�K�����Ӟ\�yc�@�U|*W\�\�L\�ٝG��#\�V\"\�ZS�\�.�hZ\�KL˘�\�\�\�>���\�/���ٲ]�\�v�&>�\�\�~�Y�f\�G��#\�Vź�e���\�r\�(L\�Y\�H�Fy\�ګ\�\�}\�\���\�t��L�����;�F�\�3�\�\�dz�ɵ\�loe�+[\�\'�\�*\� c\�`:\Z�k�I\�\�ٟ��f���\�\'w<s\�E�{6ndz�2=EbG�\�sL\�Ũ\�<��\�)*�\�\�3�\�zg\���\�8\�?�l�\�+�q\�\�\�o@s�}��{6odz�2=Es\�\�\"\�4\��\�\�\��\�h�i ��FO˟q���\�X\�n\�E���k-��J\"I��a\r�s�Ͻ\Z�f\�G��#\�W?>�a��.!{��Ʋ�\�F}\�:���i_ӧ6\�kw\�3;��U�\n�c�=�\Z�gC�\�(\�\����MSE�Y�R\�\�F\�:�\�6��NH\�ަ}J\�;屒\�\�n\�w�\r W\�/\\Q`\�l\�\�\�dz�ȲԬ5%v����X\�\�(}��\�J�5\�	�?c��\�=\�\�\��*�F�<\�\�ҋ�f�G��#\�V4���\r\�Y\�j�+��iT8A\�b3�{\�k�iP\�w\�ZK�2\� ]\��7�~�hɝG��#\�V(\�\��\0�Ch\�֢\�e��˹�3�:����,.�&�����CK\�TXm\�\�m\�ך,͝.G��#\�V	״qdקU��*\�噼\�\������U��F\�\�\�\�W��[ۜ~\�Y�=9<Q`\�l\�\�\�dz�\�f\�����y3�� <��Wv�0*\�Zƙ5ɶ�P�y\�1)�fR�1�\�\�q�\�Y�f\�G��#\�V	\�\�ai\�լE��\�\�7\�c��9�>\�\�״\�\��\�B\���ʿ�\n3\�zt=}\r\Z�gA�\�(\�\�\�\���3gΓnuh\�-\�\�ʛ/R\\�g۽i\�\\�\�Qg˚5�w��,��<�QFG��TQarr=E��QE����\�(\�\�J�,�܏QFG��TQ`\�.\�z�2=ER��!w#\�Q�\�*�X9����QT���\�]\�\�dz��EB\�G��#\�U*(�rr=E��QE����\�(\�\�J�,�܏QFG�P�\�q4��($\�ڗ�.�i\����wA��2\�\0\�9=\�jN\�q�M���QA�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0U=JI\"��H�2Ȉ̑�\�\�ƮS0�\�<zPT]�\�>\�d\�\'�Ť}�h�y�\0�\��W,Y\�|��\�Lt\�4=\�\�\�\�Y,��\�x��9Y\�\�h�9d_\�6ë�:��>ξ�����<\�j�\�2�Kp�p!?2��\�\�\����<�\�*Ɠ\�[Lx\�\�\�%.\�%Y��A�\n\\�u뎀\�w\�g_SG\�\�\�\�I!�\�\�\�\�<��V���\�.�`\'u۶Vq���\�\�\��ճ\�k���h��M���7�y\�O\�k��:��>ξ�� u�q^\�\�\�},�W,k������@^�n�j���o\�\�y�����������q\�q\�9\�\�g_SG\�\�\�\�dש\�\�����_L\�\�-�\�{\"I;\����\0\�\r���I\�nK(w]\�fI%�\�\�\�Ps/��\�\�\�zg�\������\�\�\�h��8{�M%��#\���\��\�\�v�S\�\�\�\�\�Ia\�\�Z?E�\���F�\�\�)\�\'\�M�Bm��.�s\�J\�~ξ�������\�O�\�\�}\�]B\�\�X��KF�\�E�\�\�\�4N�#�,;\�\0\�Ro\�w\�in��\�J\�4`\�\�FI-\�\�A�k��:��>ξ�����\�i�\�\�\�\��@\�6\�̫\��\'�x`sU�|+}q\�\�c�_�I\"L\�g`U�B\�`\\�wd\�k��:��>ξ��!{S�\��>\�0K	h�i\�Zr�n��\����GQ\�e�K�\�o*X��\�L�+�\�6��\�\�y5\�}�}Mg_SOK\�=��<\�\�\Z\�\�\�/�56\�l�,��\�m�=�X]�\�\�q$\�1Eτ\�k\�\�5��\�4{!��\�B���-��\�?M�\0c=\�\�>ξ������dW�8�<!4v�I\�\�q\�K(@C`��\�8��~\�\�l\\�\0g@�Pj[%PH7�\�\�v\���\�\�\�h�:��,�\�\n�\�:\�\��j�\�\���R\�g�]vl\�}��\�\�x\�=\�ާ\�\�\�=�i֯��\� �g�0W�PXu\�\�\�\"�/����\�\�\�h�a\�N6\�\�w�\��\�\�\�\�<ƌ�ܰG<g�\�銭?�\�;\�:\�c�\�n\�<�h\�4�卐�@\�\�\�!@��\�\�\�\�h�:��4jp\Z߆��gO�3��J�G\�\"\r�B�໘��+�G\\U��)u-��=�\�^i��b\�\��0}���:��>ξ�� \��)�y5�\�_%�r^\�\�$�\�H\�XE\�\n\�*	\�S�s�z\�@\n�\0\0\0\�k\�\�\�h�:��wD��V����}Mg_SN\�\�Ej*\�\�\�\�\�\�u\�4\\9\�Z��\�u\�4}�}MtV����}Mg_SEÝ��?g_SG\�\�\�\�p\�Ej*\�\�\�\�\�\�u\�4\\9\�Z��\�u\�4}�}MtV����}Mg_SEÝ��?g_SG\�\�\�\�p\�Ej*\�\�\�\�\�\�u\�4\\9\�Z��\�u\�4}�}MtR��\�F�\�!Q�qV\'\�//m �{H#Ux�:\�?+\�`\�\��~ξ���O-\'�q�ʚ]Ih��p��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0���}\�Ӫ�\��hE%vI\�G�\�ҏ:?\�~�\�\��\�\�\��\0j���\���[�\�\�eT����X\�֙�j\��6�=��\�sE<�h-\��h�fo\�\n44\�Z\\\�|\��\0��Q\�G�\�ҹe\�m�4\�\�ި�d*\�\�\�]���z�\�ZKO\�\�\�jm���\�\�Yc�q�\r��� �g������\�y\��\0{\��Ώ�ߥrq��\�.!���ydl4�<�E\�\�\�H\�S��O\Z[��mcz\�\�\�\�\�\�\�P�\�\��v��{#�\��\�\�G�\��J\�t�\�\�7\�j&\�ih�s�\�\�3\�\�*��&:~\�X\�\�(L\�&�\�8�\�\�\�0�=쎳Ώ�ߥt\��+�1\�\�ȷ1#wwx�\\�\�u<�\0\�\�y\�\�2Ӓ\���\�y\��b\��\\nn�*29\�\�^)h?dηΏ�ߥt\��+�\�<igk\r\�\�\����q\�q�7�����\�\'��\�SJ0\�\�t\�\�h\��\�#�r�{\�\�^\�K�/�\��J<\��\0��W#�#73�=�\�sL�\�û)2�\�\�\Zx\�Ixcu�\�\�h|��R��<0\�d\�Җ�\�,\�\��\0��Q\�G�\�ҹ\�|H\�5�\�x�%�Rw�\Zct�\�A�{\�ҟ7�,cvX\�o�\0-Z7	f�\0��~^\Z4dγΏ�ߥt\��+�_\�\�q\Z*ܘ\\/�H��J́\�Kz�#�p:\�\�g���]2mB$�;x�f2ǌ�3��\�b��\�GC\�G�\�ҏ:?\�~�ȯ�4\�\�c�X/H�O.8�C{\�n,9�\\wϷ^*_�K\�ϵ,AnLeC}�B|����3\�W<{R\�~\�\�|\��\0��Q\�G�\�ҹH|_eq�\�w\r���Yqe\��p��\\wϷ^)G�m..\"�\�\\\�B\������Aݏcӥ=\�W�\��J<\��\0��W�6��+,~dPD\�\"h�u=\�\0\�ӯ�L�5\�\�)Z\�2IL^@�y�@r3\�	<\�\�=�:\�:?\�~�y\��\0{\��]\�X�Eo5�Y\�3�X\�\�T�5�8v\�w\�\�;	\�H�\�G�\�ҏ:?\�~�R�,.D[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�G�\��J�ED[\��\�\�@�	�n�\�Fg1A$�d��\�\�T\�i\�\�V\�^Kwo\"3\�\n,�\�`:\�=3\�I��)QrM���(��\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0�z�\�ֲ-�*NQ�l\� 68\'񫔅U��\�T]�\�*\�Iԯ4t��6\�Z\�D�)RU�F�Y\� ��{�\�\�Z�:L\�\�Q\\\�jS^\�\ZI\Z���|�P\�\n\0\�\�k\�O\�<��觡��s��\�ug4w\�\�3K\�ńe�t�\�8���\�d`�Vl|%��\�5��w�f��#r�ݴ��Q�\�n8$W_\�\�EZtRVCu�8\�<�ɨ\�\�\�\�\�`\�D\�\�\�\���\�\�\"���!h�T��6�T#��\� ~\�\�b��-?�(\�\����\�Y\�\�>�\��\�\�\�w�\�DhQs�Uݹbj��\�Y<�k�ˆdvh�;v\�\�C�Nv�Rp8\�yi�\�G��\�h՜��2\�5��F9\n<�a�`�r3��\�\�z�	\"�7ý=�\�&�2��!�\��W\�\n�ؿtrs�޻\�-?�(\�\����!�fr\��Z\�[G�\�dX�ٰ��\��\���?Z�\�\�ig�&�ڄ\�J��V�1��v�$(\'\�\�tW]\�\�EZtS\�\��\�\�//�!�[\�{�\�]\�4{\0_݉vn�Ǫg�\�5���K	-d\�%u�o6Bm\���Upf� 9�\�\�O\�<��襠��9)<)�\�{mV\�ٙ�e_��\�Pjݿ���LB\'p�J\�*\�\�c\�\��WE\�\�EZtQ���\��\�8\����\�\�c\�\�l6\�y+\�(8�to\rC�Ez�s$�v~w�x\��@E<\�\�Mt�ZtQ\�\�E\Z�g~X5�F\��3y�cZ�Tq����9\�\��h�3k+RȈ�#�\�6G\�``q\�t\�ZtQ\�\�E\Z\�6qv�\n�\�6k]N\�\�/�.\"�$\�F\�6\�\�\�q�@=�\�\�\�E�qdbw\r\�,{:��\�}k�\�\����-?�(\�^՜D�Ky��\�Y\�U\�\�ʍ\0�\n*�=���\����.v�Jd��\�\0�>\�M��p@Ͻv�ZtQ\�\�E\Z\�3&\�O�\�\�eF\'l	\0\�\�ڤ\�\�zպ�\�\�EZtS�<\�E[\�\����-?�(�s��o\�O\�<��\�\�Ί�U�-?�(\�\�����:*QV���\�\�O\�.\�E[\�\����-?�(�s��o\�O\�<��\�\�Ί�U�-?�(\�\�����:*QV���\�\�O\�.\�E[\�\����-?�(�s��o\�O\�<��\�\�Ί�U�-?�(\�\�����:*QV���\�\�O\�.\�E[\�\����-?�(�s���%�\�\'��#ޞ\�\�\�G\r�\�h\�ڰ�N\�\�>\�o\�O\�_-\�QI\�\�5U�\�EPbQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0\�uLg�:���ƄRWc�\�\�?�zz�ʹMY�\r\\Z\�\��\�ݥX|\�P�!9\�ӭ7DԮ\'���\�伊Xg�\�-��l�D\0\��|\�\�|ѡ��\�\�[秩��\�\�\��U\��\0\�_\0��}\�qF�\�p�f1�\�\�q\�v�\�=�4�\0[\�ill\��ɚV\"Q\�\�\0m�����\�<\�O@\�G[秩��\�\�\��U\�\Z\�Ayoe1�\�\�\��6fFEʖ\�\�<rqM�\�N�X�\�n\�<\�*�v\0\��\�\�F9\�Pq�WA\�N\�\�OS�Q秩���\��Wa�]\�olYzto13�\�V%y\�\�W�\0�\��;i�ʼ��� ����\�0�\�\�\�Q�{-lu�zz�ʏ==O\�\\h\�Μ.\�m\�h\�\�9��ؖE,\�X�F$`\�i�x\�O�N��{iCN\�/:��ͻ~\�\��\0�\�Qtŝ����\�\�OS�W��\�`��k=>\�_.\'0\�B�R8�\�\����\�\�GZ�k\�{�}4i-g�\�\�\�g1R�\���\�\�\�=��:�==O\�G���\�>/\�.� �\�\�s�\�(@�-�s\��8\�\�U�\��\�\�J-.7�\��K	\�T)\'v���I\�\�\�{w>zz�ʏ==O\�\\rx�u{�\�H��H\�Q ٓ{r\�/�\�\�\��\'�#\�E��}t�O.7�\�C�\�8\�À��\�E\�{#�\�\�\��Ty\�\�*\�SŖ�MK;�h\��\n�\���\� �@\�H��\�4z΁{�ZC$&د�\��!r\�\�~�\�Q�{#�\�\�\��Ty\�\�*\�t\�Gt�\�w0O���=\�	\�����\�m H4��\���c	�}�M��\�i\�Ou\�=\����\�\�OS�W(�-��H\�,�\�т�ڡ\���\�!��c$\�\�[-Ɵ\�P5�\�,\�\�\�\�	]\�9\�\��dv^zz�ʏ==O\�\\F�\�{I$���\�nd�#,�\�\0���f\�\� \��q��/���\�y�L�lp�f�\�$�c\nNT+��玔h\�\��\�\�?�zz�ʲ4���4�YoP%\�\��.\�}q\�=qۥ]��<��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��\�\�\��UV�,��秩��! y\��3��\�IT,3\�*\��}啤�w�\�d[r�\�`:\�>��-��q�̛]TQE8QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0U=I%�\�H\��˕��>3��\���R�\�(*.\�\�e�_]ia�NH\Z��|��$�g\\|\�\�\'�\'5�c�9\�[�\�ɣI^吐�P�\�\�S[����Q�?���;�:�8�E-�\�}uv\�\�!EYAX7I�(\�\�\�ȫ6\���h�CQY\�\�q0\r6Hb��\�#<c�8��bu*6\'\�W򤬁\�l\�\���q��\�Kr�e�Yq\'\�Xn\�<z\�5<��x�A5\�B�ua���ޣ\�bu*6\'\�W\�@\��\�\�\r\�\�\�k$\�v�H\�lk�\�`�\�\�-;\�q\�k˛�%Y\�\"�\�\�\�U\�s\�1]�\��\��TlO\�\�F�\�Y\�\nX��q|�]F\�\�%@��\�\�@ݞO|ڪ\�	�}�G\��\�;\�i\Z\�2om�Amی*\�\0\�\�5\�lO\�\�F\��\��Thٜܾ\Z��\�\�c7�\�\�@\�C䑜t�u\r��m��H\����D%�I\"�,˵���$\��\��⺭��\���؟\�_ʞ���g5\'�l��\���\�\�9ct\�0�M��\�\�\�\�\�\'\�M��r[I�j.�I\�JZD>g\�m\�0��v\"�-��\���؟\�_ʖ�\�Y\�\�\�+Gfh�o\�3��+� ��h>�\�E]�A��1�^b�r4���Sf:t\�o\�O\�\�F\��\��T\�j\�V	\�C<.�7�(\����FΨ\\�3�\0:2\�jM?\�V�tѬ\�35\�\�YYK�@s\��\�m��\���؟\�_ʖ�\�Y\�]�^\�\��E\�.6�\�\�\�!Lt\�A\�\�\�Mk�ZZy>[\�|�<\�\�ï�\�zt~u\�\�O\�\�F\��\��T\�jr��F\�9\"\�sy䢦m�\�\�\"Wa��\0\��8��\�6R\�\�\\}�\�<��yi\"��\�9B\�.O\�@��bu*6\'\�W\�{VrV�ӭ�`��[�1\".�\�*��\�s�:8\�SX�^\�\�\�\�L׀	d��18w�\�Ork�؟\�_ʍ��\���\�ղ�sbu*6\'\�W\�\�\�諛���Q�?���r�sbu*6\'\�W\�\�\�S��lO\�\�F\��\��T\\9\�tU͉�\���؟\�_ʋ�9N���?������Qp\�)\�W6\'\�W\�bu*.\�:*\�\��\��TlO\�\�EÜ�E\\؟\�_ʍ��\����s�諛���Q�?���r�sbu*6\'\�W\�\�\�S��lO\�\�F\��\��T\\9\�tU͉�\���؟\�_ʋ�9N���?������Qp\�(ȂH�6\�8\���\0K�b�}B\�XQ\�\�d���9aޮ\�O\�\�K�G\��ʓ�ܥU�d-QA�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0S$�G��\�P\\\�B**\�_�\�>\�?�k�\�u��\�7G}���\�9_��\'�\�4\�\�\"\�l�\�H\�K{�\Z-FUy2\ZT��N9\�h\�\�٣��@�\�\�����\�e\�\�5Ɵ@\�Ql\�\��\�\�\�\r�g<cq\�❥x�QՌ��\�&Vo��\�ɱC\�\�n@X\�8`�(M1�VW;/�\�>\�?�k�_\Z5{h\�)|J\�\�3�\�2��B1���3K\'�\�����\�\�:x�67�De(\��8=:g�\�\"��\�\'w\���\�G\�\�Mr>\�Y\�\�\�\�R�ؘo��\�r\0�~R\�ީY��XK%ŕ�\�\�\����\�v\r�19�\�=�\���t\�\���\�\\L�,\�\�ȚL\ri4\�\�\�c�\��F\�	\��9\"�\�&��ķ\Z[Z*��S\�\�w\�+�\��\0	8\�j\�=�\���t\�\���\�\\MǊ\�8�ĉ��\�Ɠʬn�&8_k\�m\��6��\�g�\'?\�0��\�%��\�V2�\�3\�pwe\0H8!���t\�\�~\�?�h�@�\�	|A�Y\��P�zI� �\�y\�\�%G�p1\�Z����Q\�`��N�\\0g��)� `7)	\�9���z.�\��\�\�Mh\�5\�\�x�S�\��\�\Z\\J�\�D�>\�26\�NF\�ߜ\�o?\�5��\��\�圸,\�\�;�M�\��Qt\�\��\�?�h�@�\�_\�\�j;g��E��q<)p[{�$\�U��\�\�[�]\�\�KL��Η\0�)���Y��E\�\�2rA\� MA\�N\�\�����\�\�n�\�0<\Z�\�\�\"���+\�GR݋\�\�7�����pH�\���\�G\�\�MW����>\�?�h�@�\�\�Q`\�E��\�>\�?�j�X9Qc\�����ETX�@�\�\����\�E��>\�?�h�@�\�\�Q`\�E��\�>\�?�j�X9Qc\�����ETX�@�\�\����\�E��>\�?�h�@�\�\�Q`\�E��\�>\�?�j�X9Qc\�����ETX�@�\�\����\�E��>\�?�h�@�\�\�Q`\�E��\�>\�?�j�X9Qc\�����ETX�@�\���m<��p̖Һ�2� �\�]\�_b\�\�\�\��\�\�\�*�6�\�\�\���KB\�G�6�\�E�EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPT\�~\�k$\�?17�U\�\�G�\\���\�\�r6��]0\�k3\�sn����\�0�\r�q\�\�8\�V���a�2��RP�ZI�Bm\�2\�\�ؿ�oQN\��VrV�\�\�\�n-�in����C9~9�Nq\��\��O	葬\n�\0ȟ�s\�	\�?6H#<\�OE-ڳ�\r\�s\r\�Y�2�;\�x�#8lH\�qڤ�B\�e�#{\\�\0��6\�~\�\�o\�O@\����\�\�\�2\�Y\�\�RK\��\�8\�\0\'\n3\�`Uw\�\�\�#X�ѹu�\�c%��\��\�8<ºj(\�=�0\�F�h�6�9#a�\�\�:\�5��\��-NMF\�\�%ԛ�>\�?x\�	�\�\�u���4h\�6Ѭ\'���G�X\�n<��s��\�C�\0\�\����d�[�e�,\�Ho�\�\�\0�\�k����\�Y\�C\�m\��;\�&\�᝛v\�\nrI9\��TR�?B���\�rD.e|���\�9ny\�5\�QF�\�Y�tk��6\�G,dn<��s��\��\0\n��oHk�\�\r�\�\'VY\��\�\�8\�#\�GE=\�3\�A\�.\�ig�Ww.X�?6\�\�\�U\��V>\�\r�[,Ʈ_�k\�$�[9`@�����Z�fdv\�E&\�M�bǀN�\�\�u5-^��\�\�Q��QEÜ�E^���9F��Er�z�.\�\Z*\�\\9\�4U\�(�s�h�\�Qp\�(\�W��\�\�Q��QEÜ�E^���9F��Er�z�.\�\Z*\�\\9\�4U\�(�s�h�\�Qp\�(\�W��\�\�Pe��2�0G�1-�hզ�tFRK�x<p[�E\'f?hҲ\n(�� ��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��vM�OZ��\�J�Bf��\�\Z�f=\0�AQWdz�\�\�\�\�hA\0\�3�PONO��g�(k+�[�l\�\�*�q�\�=��G�r�\�\�\��f\�\�iE��\�\�\�Q�%  �\�q\�\�t)\�\�U��.\�	mt�46�n�\�i\'�w\�4奔\"�\�y\�\��Q\�?�\�^ju�Eb��\��\0Q�@\'��	n�Q��\�黀N8�\����0�]CS\�#�eu�⁛\�$W\�gH\�B\�{RRM�Ҳ�\�\����9Ԓ7)q���^�8\�\�MW_Mr\�$y&�ԖU�30|���aq՗}\�\�\�Z\�w�j\�\r\�\�?tD�p0�\�\�\�4) t�=#\�_Ң�P�\�Xn\"��}�`J7\\t<�+�\�f��^jwi�;�\�Dvc\�ɻ�%\n1�77A\��q\�\\\�6�1$\�\�n�\�&2\�\�.\�/<�\�}�٫�z7����s���\��oQ֮<Uy\�?�<\�\�1ᰘP\��m����j\�\�\�y\�Q���_��\0�d\�B�¦\�\���\�̭q{=lw\�s���y\�\��W�\�:��\��hԵ\���Ɩ\�m�\�[~W<(N�\�^\���������^_۟.\�+�2�$\�7��\�ʨ&��\�g��\�\��S\�2�BT2*�)��pq\����\��\0�\��\0\�m9{��F�\�:��\� &\0݁�\�x\�^L\'��j���\�K���\"XFe,\�\�\0\�q�G2�=?\�_ҏ9�J\�]B\�\�Zz��\�9&��\�l��\��1pJ�zw�][\�Ms�$�λ�л��`\0��@q3g拡*w=\'\��\�\�\�6\�ّ�z\�ҟ\�?�\�^y�jZ�:b>�wys�7\\̦96y�Ȍ�\�\�}趹\�.mm\�d���\�n1��3��őI�1\�z\�t?f�B\�*��QK\�?�\�^S\r\�aq�Y\�OrbS�3�\�y\�H6\�.\�\�\�=ƴ\�Z\�.U�S\�\�α�\\�\\\"��8 \�;Ф�:I�\�?�\�I\��ݷp\��\�\�\"}SX�\�,eV`o(\�l�\�c�\�9��Q:��\�\�\r\�\�\�żW0\�3�\��c�!\�\0�\�\�s \�J\�=\n\�U�\�\�Y/o �Fm�\�H�	\�\��\�\�FC\rp�gڵO��i\��\0h6ֳO�v\�&�͖D\�G\��=���\�\�ۥ��6ђR$T\\���h��>s���y\�\��TtS�\'����s����\'����s����\'����s����\'����s����\'����s����\'����s����\'����s����\'����s����\'����s����\'����s����\'����s����\'����s����\'����s����\'�\���\�Q\�}��,\�1\'2j��9��\0�m��\�\�\�6�k�Ń\���a\"t/\�.x\�\�D�f�p���(��g(QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0TP�\�l�сVV\�A\�S\�RN\�\�\�\�<=g���c�\�#qiZBq\�e� à��C�ά\�_Q�ѹ}G\�N\�\�ȣm���>L��367g�I=}ɩ|�\��Yܾ�\�r��΋�����\��C�ά\�_Q�ѹ}G\�E\�s2����\�\�A�՝\�\�?:7/��\�fV\�\�~ty\�?:��}G\�F\�\��a\�\�\�C�Ώ!�\�Vw/��\�ܾ�\�\�9�[\�A�\�\�?��\�\�\�\���\�~t]�3+y\�?:<�\��Yܾ�\�r��΋�\�eo!�\�G���\�;�\�~tn_Q�\�v̭\�?��\�\�\�~ugr��΍\�\�?:.Ù���\��C�ά\�_Q�ѹ}G\�E\�s2����\�\�A�՝\�\�?:7/��\�fV\�\�~ty\�?:��}G\�F\�\��a\�\�\�C�Ώ!�\�Vw/��\�ܾ�\�\�9�[\�A�\�\�?��\�\�\�\���\�~t]�3+y\�?:<�\��Yܾ�\�r��΋�\�eo!�\�G���\�;�\�~tn_Q�\�v̭\�?��\�\�\�~ugr��΍\�\�?:.Ù���\��C�ά\�_Q�ѹ}G\�E\�s2����\�\�A�՝\�\�?:7/��\�fV\�\�~ty\�?:��}G\�F\�\��a\�\�\�C�Ώ!�\�Vw/��\�ܾ�\�\�9�[\�A�\�\�?��\�\�\�\���\�~t]�3+y\�?:<�\��Yܾ�\�r��΋�\�eo!�\�G���\�;�\�~tn_Q�\�v̭\�?��\�\�\�~ugr��΍\�\�?:.Ù���\��*\�\�ԑ\��Ս\�\�?:7Q�\�p\�b\�E�\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n�\��\Z��\�O,v�<��*1D\�768���|FN���+�\����\�_,n\�[ \��\�j�S\�Ak{b�\�K���\0�\\��\0Oz�[Y�A\��f��,�N�Lu[v�9�,Y\�a�\'\�0Mjh�%Ņͼ�Z\�isF!�R�\�\�8 s\��\�\�nұy|C��ܢ\�Vŭ��\�\��\0\���\�/��w�\�\�R�+v\�-Ϙ?x�\���\�\\\�>կ\�d̶\��\Z\�\�\�#��^l�\�r�^y�X\�|1�\�O\�6�\�#��H�8T.\�$\�Q\�\�\��cq�sy5\�?η��\�\�+��a^h%�\�q�~|Uy�[�D>]B	H�8F\��g8��\�X�x*\�8n\�|�\�\�\'�*��Fq�R�\�\�t>�*\�\�\�\�Gj`�\�K�P@b&\�A\�\�М�\�7l\�]?P�xl\�!�Hl��P�\�q\�=��\Z���0o\���s�\�Y^\�΅{$�\�yѬ^L?��\�\�\�\�\�Uz�R�\�\�yo\\�h��G\�PD\�\�\r\�\�\�\�\�c�sN\�@�nΖ=H�i!�Q�i#�\�u\�U1�\�\�\�gĺ ��\�ꖢ\�W\�\�C �oJ�>�m^\�v��KY�\�\�$�7J�c\�1\�rG�Z��դ��v�<\��O�\�S�X\�P\��\�px\��+˰�a\�\��Q�\�\�v�\�B\�\�B\�<\n\�~\�\�\�#\�\�\�yx--\�\��\�\�%+�\�H}�I�#$�Z�\�.\�r��S\�\�\�^�\�\r\���-Z\�\�\�\�Yت<�\�\0~P\�\�\�M�cR\�\�\�,M}rG<�v\0�O��\�Ǌ4#k\�\����$�$0`�\�?�gK\�\�\�.u[�M\�@\�\�e\�r~�OOj\�>\�M��.m#��\�$\�\�E8rr\�s$7���v;C�ү�4@��\�\�@�ܵ�2�q\�-ωtK9$�\�S��\� 8gi �? k\"O\�\�\�,\�\�.\�\�G��؂��\�H\�\nt\�A\�Vm<2־B���E;I��0�c\�\�-S�oK�rX�\0h[��D\�/0d�3�˟�>\�V\�\�H{\�n\"���\���>\�\�\��V��\�\�d\�A��Bcc\'��*m�����$w�\�?\r]\�隍�\�Ҙ\�ˍ\"wq\�G\�=�\�A�w`\�{�\�|S�\�_��\�\�\nl\�:\�6儤�\�<�\�\�2��t\'��\�u[Soy��A\���\�S\�s5\���0�m��\�E:pV>h\�=�Y\��>�\�8��,���\�[R{@\�c(}}\�\�nG4�\�\���\�\ZM�\������3�od�9\�\�Zw�\��F\�\�	<K�\�\\\�3�hf$v\�\�Xq�:\�\�=ໆ(��fF�t�A*X�x\'�RG\�+Ƴ�)\� �d1���F#u\���S��o\rH3\�@5o6\��\'�2�:�T\�<F�w�M�\�v\�^I%I\�z�\����\�U	�/};M�ص��İ���JX��#��\�98�U�7÷P\�cp��Y�L�\�  \�\�\�fw\�\�J5ah���U�\�PBȡ�a��3O���0��)(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0l�\"�\� ��X\�ڔ�\�\�q=�$.\�7y�q��8ޛ2`�0pYJ�}\�O6�}{k��v\�\"�dȷ,\�\�`zlq\�S.k�W\�Z��(9�(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��\�\�s\�>�E\�\'�B{ԴQq\�2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޏ!=\�Z(�s2/!=\�\�ޥ���3\"\�ޔB��\�%\\9�QEQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0�\�'),(2,'Formulario genérico','<?xml version=\"1.0\" encoding=\"utf-16\"?>\r\n<ListaControles xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Controles>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>684</X>\r\n        <Y>189</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>50</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtFrecuenciaResp</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>680</X>\r\n        <Y>77</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>194</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbGradoHidr</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p6</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Hidratado</string>\r\n        <string>Normohidratado</string>\r\n        <string>Hiperhidratado</string>\r\n        <string>Hipohidratado</string>\r\n        <string>Deshidratado</string>\r\n        <string>Rehidratado</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>681</X>\r\n        <Y>130</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>204</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p8</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Fuerte</string>\r\n        <string>Filiforme</string>\r\n        <string>Débil</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>251</X>\r\n        <Y>186</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>50</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtFrecuenciaCard</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>469</X>\r\n        <Y>82</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>213</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblGradoHidratacion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p6</Tag>\r\n      <Text>Grado de hidratación:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>252</X>\r\n        <Y>133</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>50</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>txtTemperatura</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text />\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>739</X>\r\n        <Y>187</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>30</Width>\r\n        <Height>15</Height>\r\n      </Tamano>\r\n      <Nombre>Label21</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Text>rpm</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 9pt; style=Bold</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>251</X>\r\n        <Y>77</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>165</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbENutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Obesidad</string>\r\n        <string>Anorexia</string>\r\n        <string>Caquexia</string>\r\n        <string>Peso normal</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>467</X>\r\n        <Y>193</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>239</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblFrecuenciaResp</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text>Frecuencia Respiratoria:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>25</X>\r\n        <Y>-22</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>227</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblEConsciencia</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Text>Estado de consciencia:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 13,8pt; style=Bold</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>305</X>\r\n        <Y>186</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>32</Width>\r\n        <Height>15</Height>\r\n      </Tamano>\r\n      <Nombre>Label23</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Text>ppm</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 9pt; style=Bold</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>81</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>198</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblEstadoNutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Text>Estado de nutrición:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>305</X>\r\n        <Y>131</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>18</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label24</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Text>°</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>251</X>\r\n        <Y>-27</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>165</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbEstadoConsciencia</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Consciente</string>\r\n        <string>Inconsciente</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>190</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>209</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblFrecuenciaCard</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text>Frecuencia Cardíaca:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>680</X>\r\n        <Y>29</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>194</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Coma</string>\r\n        <string>Otro</string>\r\n        <string>Apatía</string>\r\n        <string>Excitación</string>\r\n        <string>Desmotivación</string>\r\n        <string>Desinterés</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>469</X>\r\n        <Y>137</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>70</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p8</Tag>\r\n      <Text>Pulso:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>40</X>\r\n        <Y>137</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>136</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblTemperatura</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text>Temperatura:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>468</X>\r\n        <Y>33</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>82</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Text>Actitud:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>251</X>\r\n        <Y>29</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>165</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbMovilidad</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Buena</string>\r\n        <string>Mala</string>\r\n        <string>Con dificultades</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>42</X>\r\n        <Y>30</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>107</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>lblMovilidad</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Text>Movilidad:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n  </Controles>\r\n</ListaControles>',_binary '�\��\�\0JFIF\0\0`\0`\0\0�\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\�\�$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R\�br\�\n$4\�%\�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����\�\0\0\0?\0\��(���(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0+��\�\�SXZ]fi�B2\�r\�\�\�C��\�+��\���3\�\�4\\m�C$�9\��Ȕri;ܸ�\�S��V\�n%x�\�-$�9N�2��z)\0\�x<U;�\�Cs\�IA,�\�*2A\�\�\�\�Ұ-�+�Gm�ǧ�5��\�i,,\�\�\�\�\�\�|�o+\�\��\�\�:o\�p�\�Q\Z�Y�X�\0�\�s��һ�\\��\�A\'�t\�\�>\�\��\�9$��ˈ6m\�~~_�\�қ}\�]&\�I:�\�\�e��w�d\�|���\�\�<v�f\�\�Z��#�1R(��9�2}\�+��\0!\�p�g\��9�\�\�b-&\�\�m\�\�d��x�\\N\��\�\�\�r\�\'�@{b��\�ù\�QM\�Z7W\0\�;NpGP}\�J�\�H���4B����؞55Q�QE(��\0(��\0�a�\�w�J\�\�d c�J���k�\��\0\�\�Q�Ǭ�\�տ�h\�;n\�N\�Zt3��m�?��j?�m�?��jѢ�\�~\��\�\�[_\�O�\0��\�[_\�O�\0��h�\�=�;\�ض�ޟ��\05ض�ޟ��\05h\�E\�{8v3��m�?��j?�m�?��jѢ��\�p\�c_ip[Y\�4o6\����\�UJ�ye\�k+�\�\�+�B.\�p=y\�{`v�5�7�ŋ�MYQZd7WPX\�\�uu*\�K�ݏ\n*PC( \��E`��\��\0P�\�N��&\�f\�&k�cD\�\r�ն\�\��\�Q�}*\�T�V&\�#k\0\�6�_߱B�yn>\�zW\�Ũ\�s�[�F�F��=\0n�$`\�*\�{\Z�^g�s\�E\�}\\Akv��\�9�q�s\�\�$\��\�J�\'\�\�\��\�v�\�vqEk\�Ĳ$�ʳ)�\�#���F;RRЧM_Fw\�\�\���� �&��:qR\�?\�\Z\�D��h�\�XF\��1\�6=�z\�\�ں\n�6�(�AEPEPL����\nH�\�&�\0Q\'���P5���lУ�%A?�j\�-�\���\0�\�W`�\0�x�\�ʤ�k�\�\�p\�gb\��\0z��\�b\��\0z��գEa\�\�\�\��ŵ�\��\0\����ŵ�\��\0\���F�.\�\�ñ���k�\��\0\�\�Q��k�\��\0\�\�V�]���c;�\��\��\0\�\��\��\��\0\�\�\Z(�g\�w\�-�\���\0�\�G\�-�\���\0�\�Z5չ��b\�\�8;�D\�\�\��\ra\�\�\�ź�KK\�m!Sl;�\�\'֙S^\� �H���£,rO-\�5\rm�\�q	*� ��*\��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(���\�H.	9;\\�\�h\�W�\��\0\�\��\0\Z\�+�H88Rh\�\��\0k��?\�S��\��\�\�\�\���\0���4y+�\�\�\��|\�\��(\�\��\0k��?\�G�?\�����ޗ����\�\�\���\0���4y\��\0��\0|\�Ϗ���\��\0�\�~\�\�<��\��\�\��Ə%�/��o\�Ϗ���\��\0�|\�\��(\�C\��a\�\���\0���4y+�\�\�\��|\�\��(\�\��\0k��?\�G��\��\�\�pdb?�IQ}�1ԑ\�9R*Zj\��7\�\n(��!EPEPEPEPEPEPH@ �2ZZB@�\0\�@\���\0M�h\�W�\��\0\�\��\0\ZAq��\�\�\��\0k��?\�S\�~\�\�<��\��\�\��Ə%�/��o\�Ϗ���\��\0�|\�\��(\�C\��a\�\���\0���4y+�\�\�\��|\�\��(\�\��\0k��?\�G��\�%�/��o\�\�_\�K�\0[�h\�\��\0k��?\�G��_\���\0\n=\��\�y+�\�\�\��J�\0z_��\�\�G��_\���\0\n<��\0\��\0��Q\�\�|\�\�_\�K�\0[�h\�W�\��\0\�\��\0\Z<��\0\��\0��Q\�\��\��\�t?{\�*D�ņ\�H�,\��\0:}1%Gb�y$E>�!\���QL���(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(	\�+�Ѽ]-\�Myw�%�@gx\�n�Y\�}\�Ǿ;\�W\\FA��+?	\�6\�XM{�\�l\�\��KÞ8\�L�0㑁�j�~��嶥\��L\���ā\�\�d��s+[\�6\�`�J�\�9==8\�TZ��4�M���2\�\�H\�\�a�\��6\�p2\�\�\�\�5\�Zj\�G�*�\��p\�6�#Pd\�)\�\�r\�)�x\�\�L�\�\�V��\�1\�\�\�/���@E\�\�\��\�\�^hԫS\�t�� \�.uF\�c�&\�r\n�n�\�#i#�\"�\�x�O�\�`\�R`\�Y.��īHN\�m$m\0\�g�-<=so��Ϩ+\�\�<�ۈ0\�$��e\�\����SUo�#5�đɩ���K\�q\�\ZX\�\�\�O��\�\�\�\rIJ6,�\�;P��\�\�v0�	��N��\�k\0q�A\�=�\���.2F\ZC\�\�\�6\�Cڨh~�\�\�5V��\�M�≔(\�@ᝉ<��\0��\�\�\�J�ZjKo0��\�x\�#1��\'9�;\�\��\�?iR��J���p����>E}\�/O��A\�Yoi\�g�;�7P\�%|\�\'�8�\�y\�\��\�ddU;_	Kn\�\r��f�G��D���܏�c�9<1y�Պ\�,&C��\�\�+�d�\�\�\�$�M\Z�\�\'>.\�\���)n�!��s9�NHl>\�0RT�\�y\�h\��Ŗ�\Z\�g$���\�B邧�m9\�pk\r�%s+�\�Ѭ\�gkX��\Z2\�\�m\�7p8y\�m\�\�Keqp\�th��\�)\�\��\�\�9\�0{w��ԙr\�B�QL�OF�\0�Y?\�JѬ;\rFH��a(o0�\�0\���\�v\�\���?�W;N\�Nq\�Z\�4h�\�\�?�o�\0~�(�۳�\0��\0\�\��\0�~\�\�\Z+;�n\����\0߇�\0\n?�\��\0\���\�\�=�;�4Vw\�ݟ�7�\0��m\��\0\��\��\0\�E�{Hw4h�\�\�?�o�\0~�(�۳�\0��\0\�\��\00\��\�G{}ouaq.Y\�Aq���60}A\�ڨU�\�J\�{I��%\�%#�X0\�\�\�q\�*�kMhqb\�V\n(��8\�:����j�$q4���\�\�<�I>�\�H5�\0&:ݸ\�\��JP\�!a���\�x�<U�^\�{\�h��\�\rݼ�h^Eܻ�#28 ��\��\�k\�}Mu�-RV�\�\�(7�)\�\�\\�\�\�L�\�N��Fښ\�\�\Z���\Z���قL\�A�\'�?\Z�\�\�zM\�6�-\�\�;����6�@G\�}k�Ӽ�\�Nn\�唷q�F#!�\�\�	-��2$\�/\0���uHm�̷V]\�\�ϔ\�P&y�\��a=�cq�Fok�\"�\�m\�\\\��d-\r V��Z�\�\�\�B{{\�e��fXU�d��\�\��\�\�9\�k)�.��\�qqb�X�*G�\�\�5�\�;�3ē_\�w\�\�n�\�S4��#n#am��a\�)\�qZ<�\�hC\�	�\��ym+#۴�6\�&\�\�8\�_\�Sd\�~���\�}�ܤ1H\��F!*\�[\�_\���>�m�%�[\�\�\��$\�㷢\�\�\�-D\�n�Obֶ�\"�dl�ϊ\\�l\�28\�s߅�\�V\�\�Z\r�F	\Z\�\��\0\��*\�\��\�]F5;]։�q\�ݯ��f\������\�\�\�-XH&\�K���쬠�\�P6\�\�\���\0\��>�q{-\�1\�\�26X̒�e\'F͸P:拱\�ù\�K\�]6+G��]�Y�e�L쒠s\�F:\���ĺK��P�K�\�\�\�Lv쏔\�\��j͹\�5k�a�\�\���#*\�B\\;��\�\�둜v�\��R\�8�3Mn\�Lav(�*�ܼ\��ρ\�\�rmD3Gq\����0\�i\�RB0i���R��<\�\�ٜ~�\�t0�\0���\���\���ŢF�\�vT\0q�\�N�۳�\0��\0\�\��\0¹�\�]T��4h�\�\�?�o�\0~�(�۳�\0��\0\�\��\01�Hw4h�\�\�?�o�\0~�(�۳�\0��\0\�\��\00\��\�h\�Y\�\�v\�\���?�Q��g�\0M�\0\�\��\0�a\�!\�Ѣ���\��\0\���\��n\����\0߇�\0\n,\�\�C��QOs��\�!`��\�g\�\��\�v\�\���?�R6�b\�Q\�fV ۹\��\�=�;�\�fK���2J<*T�FF[֡�\�]Gwzd�>\�\\�\�\'֙[C\�<\�CN�h(���\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��P�*}\��L?\�\�:WErK�-\�a�\0���\�\��\��t]$�\�Q}��꿝i��z�\�E\�rK�-\�a�\0���\�\��\��t]$�\�Q}��꿝i��z�\�E\�rK�-\�a�\0���\�\��\��t]$�\�Q}��꿝=d]\���\�\\Z\�uQL���(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(�J �IJ;�R\�c]\�q\�\�\�\�\�R̐Z_\�\��m�5\�8#\'��k\�\�O\�\�J�Z�\�\Z�\�=�X\�z�\�m��N9\�r3������OFw\�W	�乞\�]N\�\\ʲ\�\�Z!n�\�\\r;\�ҳ\�+�\�x�Ɣ\�\�\�Z�3/�\"�%�3��ߗ9\�p(��s\�\�+��mb\�gp��S\'ՈP?@�6\�<����P�/��.C�\�\�Uf��o�[\���\���.��M&��\�Y7C�}��\�q�ڸ�\�8\0�\�\\��\�\�\\h:�\��Y\�\�$Y\�!Ff�\n̍t�\0s��\�}\�\�t_Y��\�\�}Ŭ�*6ևd��Cv\��\�1�\'�[s\�h���0��(\0��(\��k\�J\�\����`U\�\��O�\��_I A.H��\0\�Ehn_\�ι\�\�\�^�^\��\0�\�?\�Vu�Ap�$\n\nd�\���\��\��\�N�A����\0:p~\����1t\�\�Y�\�:JZBc\�z/�\�1\�\���\�Eny�EP ��(\0��(\0��(���C�Z�\�\�\�(ij�Ddvc\��4\�N\�U�i\�YSc�\�9�1�0\�O#�\�U<E�\\\�v��\�\�4�I#M	]\�\�H\��\r`\�:�gm*i\�\�\�\�Y\�A4\�M\Z�� M�\�tc\�\n=8\�jn\�b\�\�\�\�n⼍䄒�#\�r1\�#?�5=y\�\�\�S�\�^C���Eu+�v���\rþ~\�u%Xr�\�B8���qi�4�\�f=�V\�o5\�ҙQ�\\n�3|\�#8\0Лk\�\�袊�0��(\0��(\0��(\0��(kM�\0�]��qO�U�Ȳխ!���C0t�U�\�\�8 \�j\�\�M�\0�\�\�5\�f{*q\�hQY�\0\�V?ޛ�\0\��\0\�h�ڱ�\�\��\'�\0E��\�\�Т��\0���7�\��\0\�\���c�\�\�O�&�0\�sB�\��ڱ�\�\��\'�\0G\�Տ\���\0�y?��,Þ=\�\n+?�j\��\�\�<��M\�V?ޛ�\0\��\0\�h�x\�4(��\0\�\�M�\0�\�\�4mX�\0zo���\0��\�9\�ܱ5\��,2I�F\�\��\�d\�_J\��\0���\0\�i?\�3ZgWә՛\�,�t�i2>�-e�28k\�\�7)�\Z�i\�\�\�\�8+1\�QEly\�EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPHC\n7S�M-\0QE\0QE\0QE\0QE\0QE\0\�\Z1\�\"�\�E\'��\�O�\�S\�wc<��\0\�\�\"���\�T�����\n(��Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@8��\'\�V�̻-m\�\�vy�,\�rG��\�\0={V�r�{W���Y\�5\�Ē�Q=�\��5YP�_A�7C\�RԸ�֧gEy�xg\\�[\�Z\�d�u�UUE�6\�@\�M\��1��\�>\�--F�\�۫x����[V�7D\�ʻ|\�\�7\nOQ\�&�\�\�W\�\�h�2�\�Z\�\�\�ôS>+�\�B��#@�f\�G\0c���Ǉ\�\�\�]\Z\�\�LK�\Z\�\�+��[�C�L��^y � \�v.E\�J�B�\�b�:�\�q�{{\���S^�\�8\�<�%�K\�\�y�(\�\�($(\�S\\F��k3\�\�\�\�ap\�+��)bd;spX\�,\�()�m9�\"��E\�\�m\�m.mF;�d���\�dg �\�\r�$��\rvT�\�\�\�so\�:\��O \�.\�ᲄM;C\"F����Ԋ\�\�OE׮�G\r\�iβ,AZKfO$)���f\�>c\�(g�SO\�m�F�b�h\�\�$�-�YJ\�$\�n\�z\�(L|��\�[\�%\�fH\�m\�\�)��\�ێ�-y���k3O��.���I\"d;\��\�\�\���\�\�I\�	<�-\�\�6�n�Ѻ�T�\\\�e��\�E2\0x=o Qv��\�TW;\�\�+�\r\�\�\�\�h���c<�	*$}�\�p�9\�誌ڳ��ag\�\�\�Mͼ�\�կ\�\�O�\��\0�\�i_\�\�\�5v�\�\�\�Z�W\"ӡW�:\��x�\0\�\��k#Uش�|���<���+��]YU\�\�0Z =\�Z�or1\n*�\�\��X\�ZO\�\�X�>n\�;���\0/\�\�pOc�J\�\�-r]Zk�f�H\Z��\r\�z\�δa�������c�\�~����¶<\�\�\�B\�E\�\n(��\n(��\n(��\"�\�\�\�C\\O!��\�\�\�\�\"K\Z\����S�Es>*��P\�\� �O�\�3m��\�6�\�sY\Zޡ�\�\�\��\�\�-\�\�M���qG��S��쁻�jocE\�\�EpZ_�o��\�E���~l`ċI\�\�沑�?��~L�=*��\0�u\�\�\�K\�f�$[\�\0E�;��X�˵H\0FA\"�d\�G�\�3*\�s���\�ןZkz\�ݵ�\�Զ$1B\�\Z\���k��%�\�PW<�*k}vy-y5_�\\�\�fkAj�ٜ�cu\�pN\�3�\Z9�ٳ�$�pA\�\�aos\�z�n�q�\�ou�\reo/\�F��C�2�T�UӜtɬk(\�\r\n\�o��\�ы\�m�~v\�	\',�\�9\�=�\Z�ө\�t��T��O��_\�K\�\�nƯE�t	 g�B�\ng�\�~Q���\�\Z�w\�;\�.��U\�\�L�ٲ[\'\�\�3\�`rJ\�f�`\�L\�n�\"�\�=w\�:Ο�=\�zтIngXC\�\"��Q�-\�N8#(�\�ų\�y�$k�\�I�Sm�\�q4q�F\�w;x4s T��L,�T\0��\���>�Z\�\�ݵ+��$u[an�\�fd$dn\�\�\�\�cִ<�\\\�N/5h\�\�\�Ѱ�6F\�ʢ���P=�Ӿ��J\�h�\�,�s\�T��Xn$ؓ\�3ʊ�Wt\���?\�\�S%er\�I9(�����?�\�*�\�f�\�\��d�s��Xڟ�\�%�mQ	6άE(F�i+x\�\�ߦ\�<\�\�J	̛�\�ӄ9?J\�е�\�\��An\�4eAV`\�C\�֬.���\�\\�(<\�E��@p�I\0��\��U��\�Cq��\�P3��k�\�\�z\"J(��EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPQ�\�E$\�\"�&/�\�\�ȧ\�@\�\�y1\�4�\0�E9QS\�\\�\nZ(���(QE\0QE\0QE\0QE\0QE\0`zR`zR\�@��Q@\0\�(��\0LAP\�\�Cjg1��2�N~b\0?ʧ����\�F����&\0\�KE\0\�H\�\�ܣz�Sh�i�\�~\�u�\0?2~K�;\��\�vv\�2q\�\��\�QJ\�\�NJͅQL���(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(�\�'),(3,'Formulario Malestar','<?xml version=\"1.0\" encoding=\"utf-16\"?>\r\n<ListaControles xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Controles>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>829</X>\r\n        <Y>112</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cb_e_nutricion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Obesidad</string>\r\n        <string>Anorexia</string>\r\n        <string>Caquexia</string>\r\n        <string>Peso normal</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>238</X>\r\n        <Y>622</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>734</Width>\r\n        <Height>24</Height>\r\n      </Tamano>\r\n      <Nombre>txtDieta</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p14</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>592</X>\r\n        <Y>115</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>198</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label17</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p4</Tag>\r\n      <Text>Estado de nutrición:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>622</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>181</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label31</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p14</Tag>\r\n      <Text>Dieta del paciente:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>564</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>931</Width>\r\n        <Height>37</Height>\r\n      </Tamano>\r\n      <Nombre>chkCambioDieta</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p13</Tag>\r\n      <Text>¿Ha cambiado su dieta recientemente?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>829</X>\r\n        <Y>72</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbGradoHidr</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Hidratado</string>\r\n        <string>Normohidratado</string>\r\n        <string>Hiperhidratado</string>\r\n        <string>Hipohidratado</string>\r\n        <string>Deshidratado</string>\r\n        <string>Rehidratado</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>592</X>\r\n        <Y>72</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>213</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label9</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p3</Tag>\r\n      <Text>Grado de hidratación:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>410</X>\r\n        <Y>462</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>563</Width>\r\n        <Height>25</Height>\r\n      </Tamano>\r\n      <Nombre>TextBox3</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p11</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>482</X>\r\n        <Y>508</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>491</Width>\r\n        <Height>24</Height>\r\n      </Tamano>\r\n      <Nombre>txtDrugs</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p12</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>508</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>441</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label19</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p12</Tag>\r\n      <Text>¿El paciente presenta trastornos alimenticios?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>143</X>\r\n        <Y>112</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbActitud</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p2</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Coma</string>\r\n        <string>Otro</string>\r\n        <string>Apatía</string>\r\n        <string>Excitación</string>\r\n        <string>Desmotivación</string>\r\n        <string>Desinterés</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>115</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>82</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label16</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p2</Tag>\r\n      <Text>Actitud:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"ComboBox\">\r\n      <Posicion>\r\n        <X>143</X>\r\n        <Y>70</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>144</Width>\r\n        <Height>26</Height>\r\n      </Tamano>\r\n      <Nombre>cbPulso</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n      <items>\r\n        <string>Fuerte</string>\r\n        <string>Filiforme</string>\r\n        <string>Débil</string>\r\n      </items>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>462</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>337</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label3</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p11</Tag>\r\n      <Text>¿Consume alcohol u otras drogas?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>72</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>70</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label21</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p1</Tag>\r\n      <Text>Pulso:</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>410</X>\r\n        <Y>416</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>563</Width>\r\n        <Height>25</Height>\r\n      </Tamano>\r\n      <Nombre>TextBox2</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>417</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>364</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label2</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p10</Tag>\r\n      <Text>¿Qué otros problemas de salud tiene?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>184</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>414</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label28</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Text>¿Cuánto tiempo ha durado esta sensación?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>353</X>\r\n        <Y>364</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>620</Width>\r\n        <Height>25</Height>\r\n      </Tamano>\r\n      <Nombre>TextBox1</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>482</X>\r\n        <Y>184</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>492</Width>\r\n        <Height>24</Height>\r\n      </Tamano>\r\n      <Nombre>txtDuracion</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p5</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>365</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>303</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label1</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p9</Tag>\r\n      <Text>¿Qué medicinas está tomando?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>42</X>\r\n        <Y>229</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>930</Width>\r\n        <Height>27</Height>\r\n      </Tamano>\r\n      <Nombre>chkMalestarConstante</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p6</Tag>\r\n      <Text>¿El malestar es constante?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"CheckBox\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>311</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>931</Width>\r\n        <Height>32</Height>\r\n      </Tamano>\r\n      <Nombre>chkViajo</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>Black</ForeColor>\r\n      <BackColor>LightBlue</BackColor>\r\n      <Tag>p8</Tag>\r\n      <Text>¿Ha viajado recientemente?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Label\">\r\n      <Posicion>\r\n        <X>41</X>\r\n        <Y>271</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>626</Width>\r\n        <Height>22</Height>\r\n      </Tamano>\r\n      <Nombre>Label26</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>buttontext</ForeColor>\r\n      <BackColor>PaleTurquoise</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text>¿Puede cumplir con sus actividades diarias? Si no, ¿Qué lo limita?</Text>\r\n      <Multiline>false</Multiline>\r\n      <Font>Arial; 14pt</Font>\r\n    </SControl>\r\n    <SControl xsi:type=\"Textbox\">\r\n      <Posicion>\r\n        <X>679</X>\r\n        <Y>271</Y>\r\n      </Posicion>\r\n      <Tamano>\r\n        <Width>294</Width>\r\n        <Height>24</Height>\r\n      </Tamano>\r\n      <Nombre>txtADiarias</Nombre>\r\n      <Dock>None</Dock>\r\n      <Anchor>Top</Anchor>\r\n      <ForeColor>windowtext</ForeColor>\r\n      <BackColor>window</BackColor>\r\n      <Tag>p7</Tag>\r\n      <Text />\r\n      <Multiline>true</Multiline>\r\n      <Font>Arial; 12pt</Font>\r\n    </SControl>\r\n  </Controles>\r\n</ListaControles>',_binary '�\��\�\0JFIF\0\0`\0`\0\0�\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\�\�$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R\�br\�\n$4\�%\�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����\�\0\0\0?\0\��(���(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\�F�\�m#W��=�˼���G�F2T��Ñ\�=h�\���]��\�2\��\�@\'\�\"���(�AE5��o�n��l�B�\\t�>�.IniN��\�h��\0؃��?$�\0\�h�\�\��q�\'�\0S\��\�*(��\0؃��?$�\0\�h�\�\��q�\'�\0G�A\�J�\n*�\0\� �\0�\�\�?��?���\0\\~I�\0\�\�\�}R�B����?\��\�\�O�&�\�A�\0?\��\�4{DT�P��ujl�b�O$�\"3\�x��z\�*Ӻ��\�\�.VQE2�(��(��(��(��(��(��(��(����Z閍uy0� n �I\�\0�}3M\�,\�kcqe7�\Z�FʕeoB���\���\\���\�\�\�X\�m\�|2�`��ƀ&�����\�=\�\���O$�:{�SPEVK\�y-\�\�nZ#\'�\n�?6\�\�3\��\�N�)�\0j�\�d\���\0/\�ك\�s��u�,ME2Y��\�\�YP8\�\0~$��\�\�\0���\�\�+�X#\�db�y\�8\�\�\�20tW\���ʀ�(�AE*K4\�\�@Ϟ_8\�Rn\�F.N\�(�?\�W�\�\�\���j?��筿�\�\�<\�6��^\�j*\�\�U\��\���\0�Z�\�\��\�o�\0|�\��U\�V���\0e^�\0\�[�\��ʽ�\0���\0\�\�Q\���^\�j*\�\�U\��\���\0�Z�\�\��\�o�\0|�\��U\�V�������y�HPd�MET��\�s�(|AES3\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(���\��W��x�3\�\�\�\\\�\�\�\�\�\�bX\�m���\�6ѓ\�\�sE+�\�\�Z������\�\�\�P\�._n��C�\�C�\�����\�\�?i\�\�/��l�\�%��G\�H�M�[�W�z=�l_�d��9#]\�\�ɜ\�q\�\�<�j��*�´\�\��\0\�o��k2��D,c�h\�����c�TN-�j9]�5\�\��\0����\�\�\�\�q�\0}\�{6u�n��\�Q\\\�������\0�\�\�q�\0?w\�\�͇\�\���%\�\��\0����\�\�\�\�q�\0}\�\�\�}n��\�TW1\�,a�ʔr����\�w��\��~\�?\�7\�\�\�\��\�G�a\��~d��o\��$�YRr1���*\nn�$�H�7�p�\0�S�H�+U��>dQEQ�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE��%\�-^\�Y\�y�x\�\�Q�+�#vq\\彞��]-\�\�f�<\�	m�\�˼!\�\07zt\�wtT�r\�\�yf��j\�\��\�X��\��ۣ<n\�c�W2 >\�~a�1V\�4�R�G%��.�-Ŵ�o\����z$��3����:W�QE�u[8�i\�wZ�?b\�.A�?\�^	�-�fM\�#�\�Ps�:S<#e�\���\�MHL#e�\�f��\�\��B\��\�s���+������\�-�P���kt�\r=\�=�21Q�\�\�x\�\0\�\\\�\�f�\�;\�\�cIl5X���;\�e���A(2!��\�01^�E%\�=O*�F\�n5[\�s�j-k�;\�\�m�1�\�>a\�|���Q\�sRAa��CR�{-S\�\�a�bFa�	�*�d%�\�\�m\�\�\n\�\Z(\��gyet\�	:~�\�P�\�Kj�1@\'\�!�H&\"@9\�3Ғ\�F\��\�k˔�Y\�{a�\�vǽ��\0\�B��\�\�N\��Gk\�p�\�x\� ڒgr�t9\�SQE2���\0��F�U\r ic�%�\�]3\��p\�\�2WEҒ�\�gKE`�\0hj\�\��\���?�5�\���?�Ue\�#\��\�>\�\�����\�h?\�\��\0\��\�\�?\�\�\��\0\�TrH>�O��E`�\0hj\�\��\���?�5�\���?�U��S\�oQX?\�\Z��\������*�\�\rC�{A�\0~O�\0G$�\�T��/>\�loȈF�B\�_��\�q�\\\�\Zt\�7��RM\�m�q�\0}SkHE�\�LMHͮP��*\�`��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��\�\�\�\�PI\'��;ӼAdu;\�l\�m�\�	��K��V\�\�\�\��Fђ8CI��#Ѩ��P��m�}b\�\�?!Մ1|���!�o8`㞇֍\'ėvv\�\�j\�$\�\�.̗/�d\�\�K�~\�\�\�}Ep\��y���+�\�;i,D�\\I\��s|ܷl\�s�+���W&Q\�v\n|\�W^cD�\�Fۗ��x��֙Zz?���\0\��ʵ3m-\r�Ќ\�i?�o�\0�m�\0[�\0���6�\0��\�\�\����ܢ�\�\�\�j]�?\�\��\0\�\�\�\��\0\�h�Ϳ�\���o�&�(��A\�j]�?\�\��\0\�\�\�\��\0\�h�Ϳ�\���o�&�(��A\�j]�?\�\��\0\�\�\�\��\0\�h�Ϳ�\���o�&�*+��`-n�\�/;\�p\�3\�\�\� ��.\�\�Om:G:\�\�`Q\�\�G���>�f3\���S��t��\0Z���mjpW��ڈQEF!EPEPEPEPEPEPEPEPEr�9�f�\�bx-\'F��\�sM���\�\�\�ֱ�\�\�<;o�\�h�e��,\�YH.@��\�#c�Rs\�*o���\�\�\�tW�\�X��_\�ܰ�?|j	V�d�&A\�\��t\�,�#�:�w\�`\�mfR>ǺxS\��7;z��\�j9�\�\�H��h�\�\�\�֥r\�6�3\�\�a[�]���~r2pq\�\�k��\�\Z��%\�Awoy$\�\���$1��(*��\�8����	Sl\�\Z+�\�5MX\�iϧIom-ż�\�\�G恵m#�\�sX�����tk� ��\�\�\�\n2\�H2~�\�۵��0n\�g�\�\\ƹ�[���{9�<\�@�IQ\\#܎rG�\�R\�kWV\�\056\�g�\�ڂ&#L̋�q�y\�is�goEy����Al�\�\\\�5���H\�	+r�(O�\��x\�N[�]ݹc\�2\�w7̣�\�\�\�\�ɔyIh��d�\"��\�0�|�\� `ijk�	�\�o\�S\'dkJ*SI��Ϳ�\���o�&�\�\��\0\�\�\�\��\0\�kr�ǞG�\�j]�?\�\��\0\�\�\�\��\0\�h�Ϳ�\���o�&�(��A\�j]�?\�\��\0\�\�\�\��\0\�h�Ϳ�\���o�&�(��A\�j]�?\�\��\0\�\�\�\��\0\�h�Ϳ�\���o�&�(��A\�j]�~\�\�\�\��\��2q!\���Q\�\�ƽkŸ�5��e92s\��;z\�\�ZA��ɉ�5ʂ�(�P��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(Ddu�0\�\� �CL{x$\n\� !APv\�`\�\�⤢����b�\�\Z\�[���R��	�\�~gX\�W��\�%���\�$\�\'�R@?QVh�.\�˧\�$�\"Y۫�nf(,rI\�\\�\n�E\0S����\�/\�m\�x�#�:��\�)4�\�Br��I�\0���\�k�\0~[�\0���KQ�\0���\�\�����\\�4�\�^\��\0\�Z��\���\0�-�\0\�\�����\0\�K_�\�\��]AE��U\�O����\0\�K_�\�\��]\�Z��\���\0�-�\0\�\�Q\��\�^\��\0\�Z��\���\0�-�\0\�\�����\0\�K_�\�\��]AE��U\�\�qs2Ip\��UDhW�:\�J(��V\�\�RrwaES$(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0�\�\�\��/*\�\���\�ɣ3\�Q&��Ʊ,z}�,,^ ��ǩp}\�\\��ݕK\�\�\�{VpŷT���8\�i\�\�\�BId���A7�2�\�rq\�p?!Vh�dQZ\��l-��(\�$@�\�P�\0ei\�@�\��H`\�?%v�\�1�\0��\�\�\�c\����@ʃ�z\�?\�\�E\�͝�\�]�\�R\�c��8�U�(�-��F#[hU\0 (�\0\��tѧ\�,B\�ۈB��\�\�z�1�{U�(���H\�ik\n\�`Q\0/\\c\�ڥH\�5\�\Z*�I�M:�\0(�����d�Et\�\�R�\�\�E-��Q���\'�\�\�祯��o�.�\�-G�zZ�\0ߖ�\0\�\�\n)rD\�\�{��\0ij?\�\�\�����\0G\����\0=-\�\�\�urD>�W�?\����\0=-\�\�\�tij?\�\�\�����\0PQG$C\�{��\0ij?\�\�\�����\0G\����\0=-\�\�\�urD>�W��\�\�!hd�\�c���8�\0���QM$�3�IO\�aES (��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(���A�a�\�1\�Sw�\��\�zy:\�u\�\��\��\�ޟ\�_΀�E7zy:7�\��\�,\�QMޟ\�_΍\��\��\�1\�Sw�\��\�zy:\�u\�\��\��\�ޟ\�_΀�E7zy:7�\��\�,\�QMޟ\�_΍\��\��\�1\�Sw�\��\�zy:\�u\�\��\��\�ޟ\�_΀�E7zy:7�\��\�,\�QMޟ\�_΍\��\��\�1\�Sw�\��\�zy:\�u\�\��\��\�ޟ\�_΀�E7zy:7�\��\�,\�QMޟ\�_Ν@Q@��(��(��(��(��(��(��(��(��(��(��(��(��(���=ZX\��\�i�n\"��\��eW�\�\�\��j\�=8⹭\'C�[�7W[\'�ee\�\�Iٛ&G$\r�\�	\�\�)2�m\�b\�[�\"\�;mCQ�\�[�U\"v�#�	NB�\n��g�YSx\�ִ�<�V)\�b\�2w�$gpc\��ڴǄt�\0!\�\�/䙝\�Or\�eٝ�7`2x��_\�)$,�x�\�#\r���#�\��~i;��:��\�5�yl\�\�f���|�k�\"\�`\��Ox\�zղק���ߦOkut�WS\�#\�r%H \��\�\�:f���\�b5|eQY0}AW`}sR\�z�����\�f�U\�&i\"\�jz��tY\�&\�m�g�\�\�\�\�&ԣ\�u8��ROH��Gl3?�q�rkH�\�̙\�I���VX\�;�\"U^O)9==\�c\�\�3\�\�ĳ^�FFْ\��\0\nn}0�~��e�\�I\�u˓\���\����\�F�n��<b�\�.�t-\�\\\\Deh#9<�:U\�\�V�\�}>{A,\"\�٥e>tD�\�	\�yQU-<k�\�\�$\�o�\����-@R\�АFE_Ҽ=e�\�\�[5Ò�$L\�\"��@z/�\0[҅~��%�0-<o$\Z\'��XK\�Q��\�k8bWp$����\�\��\�*M�\�����\�_��[Ub\�A$\�`+s\�D�ӧ�\�\�\�\�\"$RE1W@�\��;�\�~51\�ݏ\�5���sVͺRb%�\�\�~�	\�4ka��v�\�y\'\�U\�!�\�F��l\��.\�j�\�\�1�0\�i�º�\�M\�FX#�Um�\�\��q�V�~\r\�\�{VF�g(B�\�)!�K�\�\�\�։��Lm2\�h��E�NU]b9Má��tj���\0	�\�\�c��6\�l��f�BS7Le�##��\�\�8\��Z�\�xm�?w�^\�Ij֎c�uʾ@vv\�\�S�\��҃Jw\�\�Q\�6!\�Ǘ�\�2�1W\�\�)�˦7�,S1y$�Rdw\';�u\�@Ǧ\Z\����\0O6�s����+uDeې$ݵ�\0\�\�\�M�Ǎ�B_Q\�\�f\�x�dу\�\�\�rO=�j\�\��>\�\�;9�5�3	�l\�\�8�\�i�~	\�\�R\�\�Ʋ��H�T� �ǦFq\�M\Z�\��\�>(�Eմ�	`f7�C*F��07�\�qY��DӦ���L\�[\�bG<l\�\�p�\�\r�\�n\�Enj��\�d��\�\�l}c�b� \�p�u栏\�zlR\�\�\�[%9ؤ0s�z�?�(Ԕ\�mL\�<s66\�:t�Mq3\�\�,Ѩ���\�p\�\�s�\�v\�_\�\�Gc,��Bĩ,m\�7�#\�\nw׵h\��SN��t\�t�id�\'*�A\�\�dT\�-d�ķ�u*�\�-���8\��\�0Q�\�L�\�\�7q���\�\���\��gd�\�s�\�\'\'M6\�\��d\�\�\r:\��Q\�;�T�\�\�\�R\�;\�\�|+a,J�k�*��\r\�B\�0n�>c\�*[\r\�\�\�\�YB�s!$�ܺ�O$�$�Z5\�b��&�5�\�k\�C\�\�D�\�0�cXf<�hG,6�y\�s\�\rE\r�@\�2g3I\�6}p\�-5�-\�\�(��d�k鱡�BQI\�ܑ�Ѭ��g��\�\�&\�[���k:��u\�$�\'viyQ�\0\�5��\��\0�k�UO\�[\�\��\0|\���o�\�\�˕�\�\�\�oʏ�y�\�G��\�_ʪj\��\0v_�\�\�[\�\��\0|\�\�\�\�C�-�Q�\0\�5��\��\0�k�UO\�[\�\��\0|\���o�\�\�9X{HwE�*?�濕T\�\�*���o�\�\�?�m�\0�/�\�G+i\�\�G�\0<\�\�ʏ�y�\�U?�m�\0�/�\�G\���\�e�\0�h\�a\�!\����\0\��TyQ�\0\�5���\���\�e�\0�h�շ�\�\�\��=�;�ߕ�\�_ʏ*?�濕T�շ�\�\�\�ڶ�\0ݗ�������t[\��\0�k�Q\�G�\0<\�\�ڶ�\0ݗ����V\����\0\�4r�\��\�~T\�\�*<��\0\��US�V\����\0\�4j\��\0v_�\�V\�\�oʏ�y�\�G��\�_ʪj\��\0v_�\�\�[\�\��\0|\�\�\�\�C�-�Q�\0\�5��\��\0�k�UO\�[\�\��\0|\���o�\�\�9X{HwE�*?�濕T\�\�*���o�\�\�?�m�\0�/�\�G+i\�\�G�\0<\�\�ʏ�y�\�U?�m�\0�/�\�G\���\�e�\0�h\�a\�!\����\0\��TyQ�\0\�5���\���\�e�\0�h�շ�\�\�\��=�;�ߕ�\�_ʏ*?�濕T�շ�\�\�\�ڶ�\0ݗ�������tKwb\�rշojĭ�J-�EY72>_QYխ4\�ŋ�ek0��+C�(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(�H\�\"�\�|-�\�R�H]\�\��AJ-\�]���?i\�\�\�-p�r(3YM%��\�\�\"��\���E�\�$Y���PI�\�⣷�[�h� *\�J�ѰFT��\�;#.\�T\��bx\�\��m�\���\n\�\�h�r2\�[\�\�}���#,\�U�\���G\�\�h�r2\�NK\�\�GdV�� ?\�pN\�	�)�\0hE��\�\�4U8\�W�cdf��8\�p\�G\�Tf\�-�\Z�i�NӐ�NT\�\�\��J�\�#j��\��\�Z>\���N�\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�\��\�Z,��EV�C�-hE��\�\�4Uo�?�\�=ٍ\�j���{\n,��EQME\ZTB��\�h-�\'\�F*\�!J.;�QA!EPEPEPEPEPEPEPEPEPEPEPEPEPs�5\�\�~��\�\�I#\�f�KK{p�\�\�\Z�\�Gn[\�q]��\���i�X\�y%\�vХԃḵ�v���F�\ZӚ�\�\�4\�o%�z��Mn\��E#�dRv\���aW5][�rK�[��l�9��Ap\�0\rvg_\�\Z>ο\�4\�/ڮ��I�kI�ia-o��gDWXy^c\�K\�\�\�\�H\�K�\�� �\\�gƐD��3��B�w�\0;\�\�\�\�}=C\�\��\�G\�\��Ʀ\�~\�\�?E\�b���\�n\��5\�xL�cr\�\'\\�\�0v̰#9\�*φ�MC\�%\��\�\�%ϞbPg\�\�\�\�\�BNzצ}��h�:�\0x\�I�s�\�t\�jO\�u�\�\�\�1�FJ�`|\�[\�rs\���%\�}��e�\�\\F��-\�C��6I\�\���3\�\�w_g_\�\Z>ο\�4Y	\�V�\�i�\�4h#}V0%\�\r�/;yd_��ߴ�Fz\��Z\�z��.\�K\�u�X�\0\�	)X0<\���NrEz\�\��Ə��\��A\�+Ӵ]V(�it۹��\��#\�,b�w\�0�b�a�\�q\�.�\��B\�5�\�����/��٣\�\��\��\�\�pk\��ο\�4}��ir��s\�\�\�=`[��iu�I��\�\�i���	P�>y\��p{vv�}Կ\�޳���\�\�̝B,A=98\�\�x��\�\��\�G\�\��ƚ���^��\�u�\�\�\��\�Ury\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��\�u�\�\�\��\�EÝ\�g_\�\Z>ο\�4\\9\�^��F�O�D�D�\�\�\��\0��\��g_\�\Z.\�~��Z\�\�\�ۭ�q21\�n\�\0y#��`\n�\�\�R\�(��V�\�(�bQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0\r\�ݵ���Ws\��c/,�T{�Ҧ\�2k����\�<9y-�7\�\�\�%�K�\�bH�r�\�nAlp{I���΋O\�,5ksq�^\�\�\�ix$��dU�㧏Q\�\�cԯ\��\��\'\Zu��\0D\�>\\�\'q�oJò�\�Sk��^m\�\�2�Je\�\�`�<��ߞK����W1~\���҄\�\�\"�UC�g�� zp*}yD�\Z�Euqas�\�Z+d��\�$�\�\�\��e�\r���㎝A�ԏ�����\�7i\\\�l�eXw��egnܝ�\�N(��;}ľ�w\rŽ�Rj��\�͠�XXO0��\0S�g8<��g��\�\\>��;l.\Z7#iy$+*��\�(/l\�\�\�;�!\�K4P idTR�Ac�I8\�I���xRh]d�E��!�\�}+\�\�\�\�譙n�;�/n\�B\�3�9\�{v���\�F\0\'�\�<.5),\�\�g�{�)3�\�\�\�\�.[\'\�IJ\�\�\�\�\�\�?K\��`i5-\�k�\Z�\�\�\�[eS	�n��\�\�\�K��n[�[\�\�5彲]v��Ń3�>\�]��JwM\�ᵋ�^/��f��!ڐFU2�\���n�\�\�`x\�5=cU�\�~\�is�\�ƞ@!��2\�\�\�Fa\�w\�A#�)s\rSnǦR3*)g`�I\'\0W\��Tx{MkV����2\�cV,fB0�I\�\'�\�89\��W2]\�Zv�\�֯\�\�,��h\�a��J�v\�q9\�s�F(�\�T\�\�zsG0c�\�X�m9�G֣�\��yS�\�-\�p{\�q\�\�j�so3^��\�\�%�Mٍ#p�9\�n�z\�\��&\�f�K�d��],���\�LOU,\�q�\�\�u9\�ڎ`P�\�\�f�\�!,2,��FC�{W�iz��,W��V[,4�\�)� \�.\�RP����p3\�\�cq\�k�\Z^\�86����\�̍\�oU���y�E\�t�}OT�%���U�[��G\�\�f\0�����\�k�\�}֦�ƫo{5\�\�)ܲ\�U[q�v�\r�\�Y��c\�M�V�6�5؎5�\�Uc�\�G�\�\r�\�L�~4sl/g�]�K�E4s\�\"\����\�#\�\Z\�O\�\�z�趸�\�\�	. wb$VL\�9t\�ʼec\�\�v��R\�γ���\�#�\�$�\�;�\"K\�n߽�\��\�Q\�?e�W=\Z�\0Q�\�\�Ө]�kB��\�rz�.u+;�\�\��\r���$\n�=O\��vmB\�\�\��t�uwm0�7I#�gIP\�1��\�\�\0\�u�+}/@Ӡ\�Ce*m��!+C� 9LÜ\�\�)\�\\�\�7m�\�\�6���e�<\�\�n2\�\�3Vk�\�\�\�r\�)xLv\�\�`0�\�\������8?^\��W����uY�\�\"�[�KI\0\���\0�m\0�d\�\�\�MZ=��I�Mb�j\�I�\�⸖\�IAv�����\�6l�\�P=���N\�i��Y+:O�-�/��\0�FxwӮ{\�l\\�\�ڰ\�\�\�THt��k�)�\�\�J���*̳\��M\"Ƭ�c��8\�I\�pW�\�z��H���k+b$�4FDDJ(\�[h\r���Z\�\�5=~\�\�	�\�\�[��{_5%]\�o\���m\�h�?�\�+\�\�\�\�:10�ȾiR\�3\��q\�ȢY��7\�\"���8$\0?@�k�\�A���)�71\�-v\�5�t�\�\���\�3��I\\\��Qr\�s�\�a�<�D��B�\0\�\�$g\0N\�\�\�\�\�4sC\"\��\�\�r\�\��L\����Sp\�\�\�\�\�\\�:\�\�\�<���\�T8Z�\�u\�߱�rɪgyq&�$��\��]\����d����z\\\�\�\��\�B�\�\�4���彤E���@��\�\'�YV����dx5\��{�����n#�X�..���i(@\�oP\�[��»�+H\�,-\�\�ϕKd\�ʚ&I\"z(��H\�\nO�\�-5�\0շ\�\�5�.f\�zC�\0�Q��y\���?\�[TV\�=?�S\�b�\0f\�zC�\0�Q��y\���?\�[TQ\� ��>\�/\�m\�?\�\��\0�ٷ���\0\�\���E\��S\�b�\0f\�zC�\0�Q��y\���?\�[TQ\� ��>\�/\�m\�?\�\��\0�ٷ���\0\�\���E\��S\�b�\0f\�zC�\0�Q��y\���?\�[TQ\� ��>\�/\�m\�?\�\��\0�ٷ���\0\�\���E\��S\�b�\0f\�zC�\0�Q��y\���?\�[TQ\� ��>\�/\�m\�?\�\��\0�ٷ���\0\�\���E\��S\�aKcuM#���\�Ü�\0*��\��\0\�\�o\�\rbV��{���q�\\�EU��EPEPEPEPEPEPEPEPEPEPEPEPEPY\�v��\�3\�5��C$\�|�O\�O\�2I���\�\�$Th_CE�I\�Bj*�/��\�\�h�r�j*�/��\�\�h�r�j*�/��\�\�h�r�m�����\�	k�\�T�\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y5\�\�\�\��\�4X9Y&\�\��F\�0[\�ҨYh:^�5\�Eq6w�$\�98\�ry8\�M[�B�\Z>о���MEC\��\�4}�}\rVMEC\��\�4}�}\rVMEC\��\�4}�}\rVMEC\��\�4}�}\rVMEC\��\�4}�}\rVMH\�r�\�1Q}�}\rh_CE���~\�w�\0=\��\�\�Gۮ�\0\��\0�W�*�\�\�\�\��\�4�c_kW�w\�\�\�\��\0\�+�}�\��{��\�©}�}\rh_CG\"\�֯r\�ۮ�\0\��\0�W�(�u\��\�?\�\��\0�R�B�\Z>о��E\�=�^\�߷]�\0\�s�\0|��Q\�\��\�\��\0\n�\��\�4}�}\r��{Z�˿n��\0�\���_\�\�\�\�\��\0\�+�K\�\�h�B�\Z9`\��{�~\�w�\0=\��\�\�Gۮ�\0\��\0�W�*�\�\�\�\��\�4r.�\�j\�.��\��{��\��]�\0\�s�\0|��U/�/��\�\�h\�]�\�\�\�]�u\��\�?\�\��\0�n��\0�\���_\�_h_CG\�\�\�Ȼ��ܻ\�\��\�\��\0\n>\�w�\0=\��\�\�T�о���/���vkW�nK��cdy�V#j�\0�EQ	՘jZ��\�)|AES (��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0�\��szƪ\�\�Z\�[Ke\r\�nۻ�g�\�\���\��r\�:\�F\�\�\�\�	�\�L�\�H�\�)v\�]�\�1��;Z\�̸\�uս\�\�ٷH+[�#,\�\�e�\�\�\�\'��\�]<I\�.��\�nc��\\ɹ�\���\�\�\�+��QV�\rN\�\�2]E!��\�\�a�v0T�>�t\�w\��tt\�M�lP(X���p\�9\�(�.\�9��\Zͦ\�\�I���\�4F\���Bv���n\����M\'�M�\�؞d�ᣒC1-3�Jp\��\"�pkV�\0ºF�\�\�6\�Y\�\�<�8\�;H\��GҫZ�Fɖ	�\�RC+4RȈ[\�i\�\r����9�\�\�A|Q���s�;lچ��\�\0�\�\�EB\�o\�~nz\�\��u\�\�&�m<\�g[w�\�w�U|t��\�?\nU𖊾~-_\�˵�\'\�7~o�6\��\�\Z5����1\�\�B\�$\�H\�\�\�\�X���ɦ��7�:�=�jv�X��:K�.b\�^0K\0<�\n����\�I�;�OO0J\"��1܇F!\�U\�nz�\\s�\�χt���\�ٚua\"4�c;�\�\�\�H\�@\�5|3���\�\�:mu\�$\�\�w$\�\'9�9F1JҰ^\�\�_O5�\�\�\�K6\�\�\�m\�2�����C\�p:b�\�㫍0yw\�Q<�\�\�g#\�I)A�\'-�\�;s�k��údV\�n!����2L\�̯�\�bI$\�s�\�QM\�m&\�B\���V�츑r[�\�����3��h��\�\�g\�x��g�-�U�52�ݮ\�o1\�FӁ�\�^x\�sU�\0\�?�����\�q�V\�Hve�~\n\��^1�Ǟ\�\��\0dX\�\'�d?x\�~�z��\0ƒ\'i����f2�wق�I۝��\�\��\�\�\�ß\���\�%Ƙ�\���\�t�\�y(!\��\�\�\�r:�t^ oh�7i�L[Gsf\�kH�|��`\��{c�kz}L��<\���y�\�\��\�m8�\�i�\�\�\�ImͲV\�\�$w8\�\�1\'t\�;0�l�&\�\�\�ҭE�\�Ќy���\�3\��tQT@QE�(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0*\�\Z�P\�\�&e>\�T\�\�#Y�x�eJ�\��-\�iN�\�\�/\�&dR�\��~�\�R\�z\�^X�ˋ�8`�\\;�	�\n��Z���).TQE3\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��FA\�K@(��B@\�ih\0��(\0��(\0��(\0��(\0��:u��\�Ȣ�\n(\� �H\0}j\�\�.�\0\��<)6�\�Ɯ\�Q^��\���\��\0�\n>�w�\0<\�\�K�\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�V>�w�\0<\�\�G\�.�\0\��<(\�A\�*v+\�R\�ism#ŅQ�w\n��i\�D�(�H(��dQ@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@s\Z��\��Ԯ\��ڑ�&\�2	Yq\�1\�s\�ںr20k\'I\����+�77s.\�.(\�z\�\�\�t\��\�*--NJ\�Vд�Vf\�\�Ť6y+|!��J�7�J�\�l\�K\�\�:��#Xf�&2\�I�D\�\�,C\�I\���\�r{W�-��\�m� �\�c�y#\�O�4�\�c\�d�;\�O\\zR�/�v9�j:���ɧ\�Cp\���C�yiJc9\�\�{U\�f��\���)��t\�a�\\p\�Ivd\�?Hhщ,�I$�c[�\�K\�mm\�*\�\�E��\�\�yε�\\\�\�\�_Z;@o\0ӌ@�A\"p�\�0瑃��\����qs\�\�;Q���\�#\Z�ۅ�TNs\��\�u ��\�5�\�\�e\�`�A�ڗȇ{��\� �\�2\�韥5\�\�ټM�Zij\�\Z���w2\�\'��\"\�\\K0^�9=\�\��_�uK�WD76\�\�\�\�\�Ffv\�	 �p2\n�9\�z[[�lx#d�J0:\n�\"��0\�V2\��&78\�8\�G\�ڭ���\�\"D�H�\�٢Ep7?\�\�\�3�*G\�ǳ\�6�|m�۪E\�_D\�4)\�U�O�2�\�%p�nF{W�biVV��0�TdcM�\�\"�y-\�\�\��\�9\�m�\�:\�\�\���1q�,�\"�r��TpI#��\�\�\�\"\�\�5�Y�-�+hcK�xԴ�\�<zq\�\�]�V\���&\�\�]�i\�\�Y`�Yj��=�uw�\�\�k ŵ\����\�E�\���e�}�3�1��ԟn+?H\�^��ܵ�Z�����\�0�Ʈ���U�\��;�W�y1�\Z``}\�ۧ\�MK[x\�rA�\�*�s\���,\�\�C\�\�ׯ�\��\�\�X�\\\��\0���\�$ʄȧ9\0�Nz���jM\���\�\�-\�im>\�qk\nl6̬?r�\�#\r\�\�{\Z\�M�����)\�>^s\�\�J�B�\�D�\��\r\�_Z,ÝtF_�,�\�(c\�K!3,}\�C�_a�\�V\� @\0\0\0\nZ�6\�\�*�\0����/\�\�\�7\�*F2�g\�\�j\\�\0v/�\��\0�g8�\�;0\�a�&lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�rH\��\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\�\����s�ؿ\��4j\\�\0v/�\��\0���\�\�lQX�\0ڗ?݋��?\�G\��\�\�b�\0�O�\�\� �\�.\���\0�\��\�X�fk���h�D�\0�V� �\�\�\�Ԍ\�\�\n(��\�\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n*(. �M\�\�G*�Ѱa�Ή�{*\�;FN2}(\�(��Q@RR̡�e\�3Ƞb\�H���у)\�r\r-\n(��\n)�\�\"\�F�2E:�\n)\�1��\�\�d\�>��\0QMY�+�B21\��V����dށ�E\\B��\r4bgX\�\r\�{\n\0��(�AE>(e�M�\�	;��\�\�?\�m\�?\�\��\0�K�F��9+�U��f\�zC�\0�Q��y\���?\�G<J��N\�Z*\�\�m\�?\�\��\0�ٷ���\0\�\��s\�>�S�V����y\���?\�G\�m\�?\�\��\0�\��\�\�U��f\�zC�\0�Q��y\���?\�G<C\�\�;h�_ٷ���\0\�\��f\�zC�\0�Q\���N\�Z*\�\�m\�?\�\��\0�ٷ���\0\�\��s\�>�S�V����y\���?\�G\�m\�?\�\��\0�\��\�\�U��f\�zC�\0�Q��y\���?\�G<C\�\�;h�_ٷ���\0\�\��f\�zC�\0�Q\���N\�Z*\�\�m\�?\�\��\0�ٷ���\0\�\��s\�>�S�V����y\���?\�G\�m\�?\�\��\0�\��\�\�U��f\�zC�\0�Q��y\���?\�G<C\�\�;h�_ٷ���\0\�\��f\�zC�\0�Q\���N\�Z*\�\�m\�?\�\��\0�ٷ���\0\�\��s\�>�S�V����y\���?\�G\�m\�?\�\��\0�\��\�\�U��f\�zC�\0�Q��y\���?\�G<C\�\�;h�_ٷ���\0\�\��f\�zC�\0�Q\���N\�Z*yln���q\�8s�\�PSM=�\�NP��QE\�\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n\�\�\�\��7�\\�K7�M�d��M�\��&:�EuF\rei~�\�\'�kQ6\�]�%��D�\�\����\�ړ*--N:=C�V�\�\�\��og·\�\n����v\n\\:df�]��T�X\�\nL�	��\�>\�\�ϟ,d`�bDx)n\�\�z�\�\���b�\�c�\�^�u�\�Kz�Y�Z\�\"V�lۈ\�\�A=\�?6s\�dZ^j��jk�\��\0dkɤ�\�o9��m���\�W�\�E�έka�x�P�\�D\�^!76itV;±#܍�v�)��Č\r�\� \�A\�f[V\�?\�o&�\rŴҳ�*\�\\y{�,F;\�q]}@\��I{\r\�\�B�\Z\�*O��(���\�և.��su�\�R\�\�]$8�<Z�$?VS�\\\�-�ۭT�\�o�ᙵ6�\�x\�Z�\0�j�`X�2>O�\0�g�+Ҩ�\�\�V\�\��+_խ\��#NIB[�\�T��*0\�iR\�y\0\�5~\��\0^�=�ܚԲ)���h�\�\r\�9FL���\�\�\�+\�h�!��\�\�t\�v�5��˭ƈ�)�ƭ]�&|���\�\�\�s\�u7\Z\�\��?J���[�d[�։7F�[\��FX(\�1�\�u\�P��9�\�<�\�\�:��\�E��\�\�$bц؟j-q ��c\�8R1��+�\�>�}���K�+Ҷ\�\�\rkM\��\'�q�p�\�s\�vtQ`sM\�Ǖ\���R\�5	�{\�*\��ǅ\�\�q����\�K\�֋x�K\�\�d\�ͥ�X{ąO�\�7%~e#�\0:�\Z\�:(Qv�:��\�\�\�gOxN\�\�@�*\�`���2p��\0k\�BkcWko<\"��V\�\0A\� M��\�|\�\�\��(�*��<\�U\�u\�*\�a}U\�ZX\�\�C	M\�n	��\0-�dg�s[�\�\�\�\�s\�\�\�<iysq�\�\\\"g��8\�{�\�\�mEϦ�(��fe\�/�?�s?\�V\�s\�M-��dE3�\�\'\�\�zT�\0\�w��߳�\0\�VR�n\�}\n\��lڢ��\�=`�\0�g�\0���N\�\��\����I\Z�f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sj�\��Ӽ\������*�\�;\�X?\�\��\0\�\�}f�sF�\0�<&�\0p\�%O-\�\�\�4na\�\�s�\�\n\�	�\�LMHͮP��*\�`��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��\�Եcoaw%�k%\�S\�l�\�6��\\\�3\"\�_jCJ\�����\�Hu�\�wU�6\�V9\�l,zc9݌g�)�\�-=\�-\�[{\�\��a\�\��a.\�\�\�w�_�C\�gCE`\�.\�\�eV��\�#\�!Gx�W$1z|�������i����i�K�/\��-��pz�R\�.�\�+\�\�GEs�\�]-���e\�k���F\0���\�\�q�˚��x�\�H\�\�,n�p\�L��*\r��mPI#$�\�8\�p(�+\�l\�\\\�⨮��[�.<\�n%���\�DJo�n\��#�EA?�\�ųAa~�Uky-\�,��H\�\�3ܧ~�9\�C\�\�QX��O�kt���an?���\�\�s؜�\�\�zՋ\rhI�i7@�\�\�\�)\�\�\�\�\�\��\�EйY�Ed]��\�\�\�\�\�-�\�Z\�C\��[�+�q$g\0\0Fy\�Y־3�\�\�H�\�\�H�h㶒(���I���\�\�]�j\�QEr�\��`�\�7�ds$>IEŃ0\�\�:V\�������\0g���q\�A$\�x\�r��\�\�E\�8IicN�\�4�\0\ZE.��\�\�\�pa�\�A\�cj(\';�I\�`	$T\�x\�O�\�����R���\�9\�\�w\�ONh�$���\�n<s�\�\�_\�̗)%�\�`\��7�.N~\�(\�`\�q\�7R\�\�7\�\�=3Ɇ݀Ž\�,f���Jz}\�w\�\�G\�\�(��dQ@f\���\"X\��B@e��?�\��\0Ϭ\�\�Vnvv:�\�\�\�s�\��\r�����\0~\�a��\0�X?\�إ\�\r>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV\�\�l�\0\�\��\�(�\r�����\0~\�\�>���tV�흪Y\�\�m\n�\\�+*�2\�9\�Q\�m+�QTbQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\08\�r\�V��\�au�\�։O�{�\�7\�<ų\�/(\�\0t\�4R�JVG;�\0��m$\�\�\���\�h�F\Z-��\nf>f\�G9�m�-m,�i�\�\�,\�\�e�9�mǏ\�f9�1[�Qd\�\�b\�<Iq<z�\�]K*H��q+&\�q�L9\�Kjퟅ\��\�w\�\�\�$�\�\�\�<\�\�Y\r\�L\�\�&�&�ozdb\�6\�\rO�\\|̥��\�#5gV\�\Z���ד\�\�\"\r\Z\"�[\�^J����\�(�\�9\�s\�\��ՂGu\�F�G5�˲bf\�q�\�\�@\�R\��]mna��R���CͰ����(\�юz�\�\��Y	ɳ��\��,^�v-�\�\�[|�&x\�\�GE\�j\�ǆ\�JӬb���6(9�۹�&\�A�\�\���(�\�9\�\�5χ�\�+mu�9�c\�qB\�v� �\�v\�*_\nZ\�\�#\�sq\�*�$�\"\�g%qߨ�\��4�s3��\���V7\�S�a0�Ikx\n�M\�6m?|\�Fr\�Z\�xv3�i\�v��6�`�a�2��v\� \��o�l\�E�\�\�\�z/	Ao���\�\�SEp6���\r\� \�g995��xSSCm�\�p\�\�.\�ۦ�5\�O�\\�R��q�q��\�,\nl\��\�%\�\�\�܏=%E_*\"I\"�\�ʏ��+KK\�\�cck�\�i+L\"\r\����\0(��\nl\�BI	ͽ(�HQEf\�h��-,���\0�\�qZo��\0��\�XtVnw:�\�\\#\�cs\�\�\�\��\�(�}���C�\0}�â��/돱�\��?�����}�\��~��\0�\�a\�G��>\�\�\�\��\0\�\��\�Q\��?������E\�>���o��\0��\�G\�\��\0\�\��\�V{0�\�\�n}�\��~��\0�\�o��\0��\�XtQ\�\�돱�\��?�����}�\��~��\0�\�a\�G��>\�\�\�\��\0\�\��\�Q\��?������E\�>���o��\0��\�G\�\��\0\�\��\�V{0�\�\�n}�\��~��\0�\�o��\0��\�XtQ\�\�돱�\��?�����}�\��~��\0�\�a\�G��>\�\�\�\��\0\�\��\�Q\��?������E\�>���o��\0��\�G\�\��\0\�\��\�V{0�\�\�n}�\��~��\0�\�o��\0��\�XtQ\�\�돱�\��?�����}�\��~��\0�\�a\�G��>\�\�\�\��\0\�\��\�Q\��?������E\�>���o��\0��\�G\�\��\0\�\��\�V{0�\�\�n}�\��~��\0�\�o��\0��\�XtQ\�\�돱�yyk%���3�\�MeQE\\c\�aZ��i\�(�����(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0�//-��I.\�\'H-\�y\�T{����\�+\�5_\�\�#��t��TS,�xǘ#䞅�q��i7b��O\���c\�\Z��\�_`\�\��\�\�֕q\�U\�څ\��\�\�\��\0ɹr\�Ϧ���a`FF{�\�u\�\����5�\�\�\�1Mp+�\���n\�A]�f\�uolR�\\�g�S#�9��ncl�u\�ZmƦmvjz\�[�\�嶆q)b�P|\�]\�g\�r9�\�\��$]A~\�%\�C\�K\�`M̛�\�\�5`Wa:\�\�_Q�?3\�\�4.쪣�c�)\�\�Z���\�my$�:��;\�����TT�Jl��8\�$~g\�sk�\����\�\�\�]\�(�`�w\�ܡۏ�I99砞����\�Q^qus�Iw���\�X{�{\�eØ0��a\�7ی\�{T�����V\�+�\�B�	���<>X\�I\�\�߻�`\�\08��~\�\�\�::�\�t�\�\Z\�r\�%Ԟ$�O:\��Ԭ˱�\0\�e_�.vn^x8\�lEk�]G\r\�\�ޤ&	m�7uG9+�\�`�O#��\�۩ߣ����XeX�)љ�XC�\0\�8\�?�y��.���A\�\�op\�$SG9F]�99\0\�͖\�V\�\�7#ŷ\�)5DYn�wHꎢ\�\�\0�\�]H#\�\�(��N\�\�;�j�32�\�p�G~k\�b�\�\�J�-{��	`��\�vJ\�7��\�n@\�5��\�9f��\�\�\�\\�\��kȣ\�\�_\�h��\�\�^g�Q\\\r���z��\�\��\�DBJɈ\�˒�\0\'�=*%�V�{H\�Y7i奘Us�H�\�\�\r�\�Kc�G4\�O\'�\�u\r\�\��\�T�I�,q���?�r^�S�\�\�a�{\��\�%�H�q�B��8�\�\�t�r\�]v\�\��S�I�MيM�\0�\0�\����)sh5OW�Ǫ�+���U�A\�-p_`ծ\�/&��E\�\�\���*Ƭ�・<\�<��V|w>(}q̒^\�\�\�6ݞGP�a��\0��<c9�~��Oq\r�e\�#P	\�pO\�4�O0�\�H�\�\�O\��8��ԭLLnu�\�g�B\�;	^ٸ\�\���q�\�Io�\�K3k\'Q\r\�e_\�\���\nc%�s\�n�}l.Ed\�w5J�X\�t\�`���i.lK+�.}�:\�d�Vxo\�Wz\�w^L�\�\��N$]�\0\��\0\�y;y\�ZZ}�ƫ\�(.\�%�v��y\�\�V����\��\r\��\�I\�n	j\�֊(�2\n�+����\�m$��\�<zT��ǂ�\����iht\�\�rjE\�˿�a�\0}��&�\�˿�a�\0}��&�h��\�v}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c�2\���\�g�\0���2\���\�g�\0���(\�}Z�c[�bi\�ڣ\'s���m\��\0Ǆ\�\�\Zĭ \�\�\�\�ӌ\Z\�\n(��\�\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n\�\�\�M3J�y�l���s�\�A׾=�I\�qZP;�����\�\�\�/�\�G\�v=MKE\0QE\n(��\"�\�+p\�\�F\�v\'$ԴQ@(�AEPEPEPEPEPEPEPEPRGqq\nl�vU�6�s�J��M\'�Q��\��\��\0\�\�\�+�}�\��~[��_\�(�ʋ\�\�;���\��~[��_\�\�\�\�\�\�\��\0�AE�=�N\��\0m��\0���\0�W�(�m\�����\�\�PQG*mS�?\�n�\0\�\�\��\0\n>\�w�\0?-�\0|��TQʃ\�T\�O\�ۿ��o�\��\��\0\�\�\�+�r�\�\�;���\��~[��_\�\�\�\�\�\�\��\0�AE�=�N\��\0m��\0���\0�W�(�m\�����\�\�PQG*mS�?\�n�\0\�\�\��\0\n>\�w�\0?-�\0|��TQʃ\�T\�O\�ۿ��o�\��\��\0\�\�\�+�r�\�\�;���\��~[��_\�\�\�\�\�\�\��\0�AE�=�N\��\0m��\0���\0�W�(�m\�����\�\�PQG*mS�?\�n�\0\�\�\��\0\n>\�w�\0?-�\0|��TQʃ\�T\�O\�ۿ��o�\��\��\0\�\�\�+�r�\�\�;���\��~[��_\�\�\�\�\�\�\��\0�AE�=�N\��\0m��\0���\0�W�(�m\�����\�\�PQG*mS�,�72�#\�\�X`��\�\�QQE4�ؙNR��QE\�\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(���(\�8����\�l�\0\��\0\ZɾԢ������S{ƭ\�\� {S4�nly��\�<\��\�`]k\�V7w^\��0C�<��\���w\��\Z��k���q{vlY\�@�\�ލ\n\�f���ޣ\�O\�V+kzZ^-�j\�\�\�\�V/0n)�\�Ǧ9�WĚ4�\rN\�YX��i0%�FXp(\�=�\�y��\�<\��\�s�>$\�\�Xf���r̋*	�b,��}�\�O%\�\r�^��fm�O(\�&]��\0��Z4ftjz�5?�\\\���\�\�ıF���\�Vh\�Q��3�\�V�մ\�5��\��tް4�9^y\�\�*,�ٚ�jz�5?�Y\�][\�q\��E�\�9�[8?C��VU��4�\�A��緞$ٺt�m\�y�\�y}=���ft\�jz�5?�\\\��%:+5���[̷W\�7�@@p�\�\�폩r\�X\�uY�l\�\�D�G eL���\Z�6<\��\�jz�\�\�􋋈-\�\�\�d�\��PL�	�C�P�ޟp�mn\�\�?�.ɇ\�\�\�\�\�O\�\�=��\�\��\�S�\�\��\0\�K�������̲��r\�v\�\�\0\�\�\�\����ijȲH\�(_�C.{��\Z4dt�jz�5?�Xs\�\�E�����N\�dUy@%@ݑ\�iF�����\rF\�\�v��\�\��z��A\�Ϳ5?�G��ޮjohp�5+yH�;vȤ���\�<t?���]���\�\�MF\�\�\�ooo ,�a��=I\�F�\��\05?�G��ެm\'QmJͥ�ݭ\�F�X��\�\�ppÂ*\�\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T��\"-���\�<\��\�T�O*��0%cR\��4X9xH�\�5>�2^[4Oqa,Q��\�]\�\�٫���©fQEaEPEPEPEPEPEPEPEPEPEPEPEPEPS�\0��k���֠\�t���WBQ\'�,��C+\�es\�8\�Wu\"\\Z�\�\�\�(6�\�G}\�Ҷ���R�B��W\�\�J�����\�]�B\�-|=�[@\��{�8`%\�\�?\�\�y\�=�WW\�v\�}��E;\"��\�^�OU�\�\�\�g\�\n\� S\�\�T\\d\�\'\'U\�\���\�[6܀zF�Oo~+��;z�>\�ޢ��{S���[³\\X\�-�1\�\�`F�UW�#��\�Ӄ\�P\�\�\�l$k�&�\�;\�Y%�\n�\�\�f\�=\�\�qֻ�\0����\�\�\�(��8�/jV�kk\�\�Pm��\����\'m�h\�\�&�\���\�$W\�\�\��LC�\�\�F\n}\�\�\�pG�u�goQG\�\�\�S��9m\'B\�\"���Q�\��֑\�!�\r q��\�vk<�OS�2}�k�E\0ګ�c�3\�\��\�\�l�\�\�\�\�(�;z�,�{C��\���k\0cw��\�`G$y\�\�fB\�c5kE\�\������u%��\�\Zl�I\0!\n\�\�\��z\�goQG\�\�\�R��8��%v�!�\�;���yc\�\\��~V\�9==�S�\�:�\�DZm̶I\0E�+h\�n�l\����\�s\�5\����EgoQE���\�\������\�x�h�W \�$�E�D/ә:v\�SUf\�f�\�H#�\�h<�M�I,�yL7(\�\0�\�^�\�v\�}��E\r&?k�\�F\�¯l�+�彳d\�?\�\�\\����\�>\n�\Z��\�)�\�(dgU�n�\�\�]\�\�\�\�Q\�v\�\�\�N8�b\�8\�l$�P\�\"m\�\�\'\��s·�4Ӵ\�bUx�F8\�s�\�>�\�]�\�\�\�Q\�v\���ڙ�u�i�m��(QaNr{�\�\�\�\�z�S}��EgoQUry�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\r7\�\�\�Q\�v\�\\9�\rEu�\�hT�\�F\�	\�\�\�[�;z�>\�ޢ��\�Au�^\�Y\�ċ*�u�.x\�\�?�X�V#�S\�$�«Q\�݅QL\�(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(�\'\0�A\\���5!i\rޣ�\�[[]B\�[K\�8c2 \��\\��#wJW)E����¿\�n�c�n�I\�i%�\'��`�Fq\�<իOiW\�\�\�\�\�$�	�ǂ0q�����4]+�\�i\�XW+\�!\�c\�V\�&�>\�K`BN0z`\�\�y���Ee�Of�-\�W\"3��B���x�\�E\�r�^�\��\0��E�d\��Q�g�WiU�B}\�\�~�\�_\�\�_e�\�\�Q��ĥ��`�A�9�],�TVCx�M��\"���)d�\�C���\'�9\�3\�\�k\�\Zh�kr\�\�-���$V,�\��\�\��q\�\�(�Yv:\n+2/\�3\�\\[\�z�-�&UPI88\�3�\��LM5�QEZ���\�\�\�C�q�#\�ғvW.�7R\\��Ek�\0eZq�\0\�\��\�V�\���\�\�Q\�\�\�9\�2(�\�O\�?��o\��*\����\0[�h\��>�>\�E���i�\��\0���4eZq�\0\�\��\�\�\�\�Ȣ��\0��?��\0\�\��Ə\�O\�?��o\�\� ����V�\�U�\�����\���i�\��\0���4{DS�s\"�\��ʴ�\��\0\�\��\0\Z?��?��\0\�\��Əh�\�s\�dQZ�\0\�V�\���\�\�G\�U�\�����\�\�}N}̊+_�*\����\0[�h�ʴ�\��\0\�\��\0\Z=��Ϲ�Ek�\0eZq�\0\�\��\�V�\���\�\�G�A\�9\�2(�\�O\�?��o\��*\����\0[�h\��>�>\�E���i�\��\0���4eZq�\0\�\��\�\�\�\�Ȣ��\0��?��\0\�\��Ə\�O\�?��o\�\� ����V�\�U�\�����\���i�\��\0���4{DS�s\"�\��ʴ�\��\0\�\��\0\Z?��?��\0\�\��Əh�\�s\�dQZ�\0\�V�\���\�\�G\�U�\�����\�\�}N}̊+_�*\����\0[�h�ʴ�\��\0\�\��\0\Z=��Ϲ�Ek�\0eZq�\0\�\��\�V�\���\�\�G�A\�9\�2(�\�O\�?��o\��*\����\0[�h\��>�>\�E���i�\��\0���4eZq�\0\�\��\�\�\�\�Ȣ��\0��?��\0\�\��Ə\�O\�?��o\�\� ����V�\�U�\�����\���i�\��\0���4{DS�s\"�\��ʴ�\��\0\�\��\0\Z?��?��\0\�\��Əh�\�s\�dQZ�\0\�V�\���\�\�G\�U�\�����\�\�}N}̊+B\�\�\�V�5p��	��q\�Y\�Q�\�*\�tݘQEFAEPEPEPEPEPEPEPEPEPEPEPEPEP�#\�W �ծ4�\�\�\rB\��mm$6\�N捣\�\���Z\�(�b��\�\��_\����\�<���Ŗ��<�\�*dف�\�Pjޝ\�[���wym1fv\��\�\�8\�b�8\0:\�]eY!��g!}\����&����3\\<h��(3\�[<�[�c��@\�L\�\\Kqʲ��F��6�dv>�k��� s��qcÚ��o�\�\�\�\�7R[�	}\��y\\1<`\�֍/����L\��\�1\�<\�3���FE�6rw9$\�\'5\�QBH~\�G��	\�\�M\�\�\���ef�~F���������\"�.�-<�(�\�$�7���$n�\�f\\\�\�l����,�\�$r:G�\�\�5{�\�\�as�<�\�1�v\�w!L\�TW]E%aJNN\�*\�4Q<\�I2�Z�E)+�J���1�\��o�����}�\��~\"�\0�\�`\�Q\��Ο�w\�7�\�m�\0?\�b��\�\�\�_\�ج\Z(\�~a\�\�\��&\�\�\�\�\�/�\�Q\��o������E\�\�>��\�\�\��]���E�\0}�>\�m�\0?\�b�h�\���\�?���\�k��\0���\�G\�\�\�\�/�\�V\r{?0�\�\�{\�v\�\�\��\�(�]���E�\0}����g\�\\�\�\�o}�\��~\"�\0�\�k��\0���\�X4Q\��\�\�\��M\�\�\�\�_\�أ\�v\�\�\��\�+�=��}s����\��o�����}�\��~\"�\0�\�`\�G�\��w\�7�\�m�\0?\�b��\�\�\�_\�ج\Z(\�~a\�\�\��&\�\�\�\�\�/�\�Q\��o������E\�\�>��\�\�\��]���E�\0}�>\�m�\0?\�b�h�\���\�?���\�k��\0���\�G\�\�\�\�/�\�V\r{?0�\�\�{\�v\�\�\��\�(�]���E�\0}����g\�\\�\�\�o}�\��~\"�\0�\�k��\0���\�X4Q\��\�\�\��M\�\�\�\�_\�أ\�v\�\�\��\�+�=��}s����\��o�����}�\��~\"�\0�\�`\�G�\��w\�7�\�m�\0?\�b��\�\�\�_\�ج\Z(\�~a\�\�\��&\�\�\�\�\�/�\�Q\��o������E\�\�>��\�\�\��]���E�\0}�>\�m�\0?\�b�h�\���\�?���\�k��\0���\�G\�\�\�\�/�\�V\r{?0�\�\�{\�v\�\�\��\�(�]���E�\0}����g\�\\�\�\�o}�\��~\"�\0�\�k��\0���\�X4Q\��\�\�\��M]B\��uI�f%p�~\�(��yNz\�}���QEQ�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE�\�');
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
INSERT INTO `parametro` VALUES ('Hematíes',1,'10E6/uL',4.00,5.50),('Hemoglobina',2,'g/dL',12.00,16.00),('Hematocrito',3,'%',36.00,47.00),('V.C.M',4,'fL',80.00,98.00),('H.C.M',5,'pg',27.00,32.00),('A.D.E',6,'%',11.50,15.00),('PLAQUETAS',7,'10E3/uL',140.00,400.00),('V.P.M',8,'fL',7.50,11.00),('A.D.P',9,'%',15.60,18.40),('Plaquetocrito',10,'%',0.15,0.41),('LEUCOCITOS',11,'10E3/uL',4.00,10.00),('Neu',12,'%',42.00,73.00),('Lin',13,'%',16.00,45.00),('Mon',14,'%',2.00,12.00),('Eos',15,'%',0.00,5.00),('Bas',16,'%',0.00,2.00);
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
INSERT INTO `pregunta` VALUES (23,'¿Consume alcohol u otras drogas?'),(25,'¿Cuánto tiempo ha durado esta sensación?'),(27,'¿El malestar es constante?'),(6,'¿El paciente fue vacunado recientemente?'),(11,'¿El paciente manifiesta erupciones cutáneas?'),(14,'¿El paciente presenta dificultades para respirar?'),(12,'¿El paciente presenta dolor en el apéndice al tocarlo?'),(22,'¿El paciente presenta trastornos alimenticios?'),(9,'¿El paciente presenta trastornos digestivos?'),(4,'¿El paciente presenta trastornos humorales?'),(3,'¿El paciente presenta trastornos sensoriales?'),(13,'¿El paciente se expone al calor? / ¿Estuvo expuesto?'),(15,'¿El paciente toma medicamentos?'),(21,'¿Ha cambiado su dieta recientemente?'),(28,'¿Ha viajado recientemente?'),(29,'¿Puede cumplir con sus actividades diarias? Si no, ¿Qué lo limita?'),(26,'¿Qué medicinas está tomando?'),(24,'¿Qué otros problemas de salud tiene?'),(5,'Actitud:'),(20,'Dieta del paciente:'),(17,'Estado de consciencia:'),(1,'Estado de nutrición:'),(8,'Frecuencia Cardíaca:'),(16,'Frecuencia Respiratoria:'),(2,'Grado de hidratación:'),(19,'Movilidad:'),(10,'Pulso:'),(7,'Temperatura:');
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
INSERT INTO `responde` VALUES (1,'2020-11-03 13:30:00',84716736,66574073,1,1,'Peso normal'),(1,'2020-11-03 13:30:00',84716736,66574073,1,2,'Hidratado'),(1,'2020-11-03 13:30:00',84716736,66574073,1,3,'False'),(1,'2020-11-03 13:30:00',84716736,66574073,1,4,'False'),(1,'2020-11-03 13:30:00',84716736,66574073,1,5,'Apatía'),(1,'2020-11-03 13:30:00',84716736,66574073,1,6,'False'),(1,'2020-11-03 13:30:00',84716736,66574073,1,7,'25'),(1,'2020-11-03 13:30:00',84716736,66574073,1,8,'33'),(1,'2020-11-03 13:30:00',84716736,66574073,1,9,'True'),(1,'2020-11-03 13:30:00',84716736,66574073,1,10,'Fuerte'),(1,'2020-11-03 13:30:00',84716736,66574073,1,11,'True'),(1,'2020-11-03 13:30:00',84716736,66574073,1,12,'False'),(1,'2020-11-03 13:30:00',84716736,66574073,1,13,'True'),(1,'2020-11-03 13:30:00',84716736,66574073,1,14,'True'),(1,'2020-11-03 13:30:00',84716736,66574073,1,15,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,1,'Peso normal'),(2,'2020-11-03 15:30:00',96210522,66574073,1,2,'Normohidratado'),(2,'2020-11-03 15:30:00',96210522,66574073,1,3,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,4,'False'),(2,'2020-11-03 15:30:00',96210522,66574073,1,5,'Desmotivación'),(2,'2020-11-03 15:30:00',96210522,66574073,1,6,'False'),(2,'2020-11-03 15:30:00',96210522,66574073,1,7,'25'),(2,'2020-11-03 15:30:00',96210522,66574073,1,8,'33'),(2,'2020-11-03 15:30:00',96210522,66574073,1,9,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,10,'Débil'),(2,'2020-11-03 15:30:00',96210522,66574073,1,11,'False'),(2,'2020-11-03 15:30:00',96210522,66574073,1,12,'False'),(2,'2020-11-03 15:30:00',96210522,66574073,1,13,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,14,'True'),(2,'2020-11-03 15:30:00',96210522,66574073,1,15,'False');
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
INSERT INTO `signo_clinico` VALUES (1,'erupciones cutáneas');
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
INSERT INTO `tratamiento` VALUES ('Tratamiento para migraña 1',1,'El paciente debe tomar la medicina Maxalt, 1 vez en la mañana y otra vez a la noche, todos los días.');
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
INSERT INTO `usuario` VALUES (20373964,'Mateo','Alfonso','Carriquí','Cnudde','Luis Alberto de Herrera',1231,_binary '','mateocarriqui7@gmail.com',''),(26282854,'Fabio','','Pinto','Ribeiro','Canelones',2571,_binary '','doc.fabiopintor@gmail.com',''),(37440164,'Paulo','','Ferreira','Alves','Treinta y Tres',9018,_binary '','paulof3alves@gmail.com',''),(41818963,'Pedro','','Correia','Azevedo','Ombu',2719,_binary '','pedreocazevedo@gmail.com',''),(49424233,'Lara','Marta','Rocha','Olivera','Ibirapita',5112,_binary '','lararocha0v@gmail.com',''),(66574073,'Diego','','Barbosa','Santos','Baltasar Brum',8211,_binary '','diegobarbosa5@gmail.com',''),(66639471,'Livia','','Costa','Ferreira','Baltasar Brum',4825,_binary '','liviacostaf@gmail.com',''),(74175332,'Romelio','','Gracia','Castellanos','Piedras',6256,_binary '','romeliogcast@gmail.com',''),(75883683,'Tomas','','Santos','Costa','Cagancha',8688,_binary '','tomas5costa@gmail.com',''),(80231829,'Diego','','Valdés','Reyna','Neptuno',5673,_binary '','adrielvreyna@gmail.com',''),(84716736,'Daniel','','Moore','','Molle',5312,_binary '','danielm77@gmail.com',''),(87666431,'Bianca','','Barbosa','Fernandes','Joaquin Suarez',9566,_binary '','biancabfernandes@gmail.com',''),(96210522,'Oscar','','Watson','','Democracia',6521,_binary '','oscarwt@gmail.com',''),(99491204,'Luana','','Dias','Oliveira','Ibirapita',9624,_binary '','luadiasolivera@gmail.com','');
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
    INSERT INTO indicacion(nombre) SELECT NOM WHERE NOT EXISTS(SELECT nombre FROM indicacion WHERE nombre=NOM) LIMIT 1;
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
INSERT INTO auxiliar (CI) SELECT cedula WHERE NOT EXISTS(SELECT 1 FROM auxiliar WHERE CI = cedula);
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
INSERT INTO corresponde(CI_medico,CI_auxiliar,fecha) SELECT CI_M,CI_A,FEC WHERE NOT EXISTS(SELECT 1 FROM corresponde WHERE CI_medico = CI_M AND CI_auxiliar=CI_A AND fecha = FEC);
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
INSERT INTO enfermedad(nombre) SELECT NOM WHERE NOT EXISTS(SELECT 1 FROM ENFERMEDAD WHERE NOMBRE = NOM) LIMIT 1;
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
    INSERT INTO estado(nombre) SELECT NOM WHERE NOT EXISTS(SELECT 1 FROM estado WHERE nombre=NOM) LIMIT 1;
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
INSERT INTO medico (CI) SELECT cedula WHERE NOT EXISTS(SELECT 1 FROM medico WHERE CI = cedula);
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
    INSERT INTO pregunta(pregunta) SELECT PREG WHERE NOT EXISTS(SELECT 1 from pregunta where pregunta=PREG) LIMIT 1;
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
INSERT INTO signo_clinico(nombre) SELECT NOM WHERE NOT EXISTS(SELECT 1 FROM signo_clinico where nombre=NOM) LIMIT 1;
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
INSERT INTO sintoma(nombre) SELECT NOM WHERE NOT EXISTS(SELECT 1 FROM sintoma where nombre=NOM) LIMIT 1;
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
    EXECUTE dropUser;SET @alta = concat('CREATE USER ', USUARIO, '@', 'localhost', ' IDENTIFIED BY ''', CONTRASENA, ''' DEFAULT ROLE ',ROL,';');
    PREPARE createUser FROM @alta;
    EXECUTE createUser;
SET @grant_rol = concat('GRANT ' , ROL, ' TO ', USUARIO,'@', 'localhost', ';');
    PREPARE grantRole FROM @grant_rol;
    EXECUTE grantRole;
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
    SELECT DEFAULT_ROLE_USER AS 'ROL' 
    FROM mysql.default_roles WHERE default_roles.USER = USUARIO;
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
