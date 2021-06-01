-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost   Database: mm_cpsc502101team05
-- ------------------------------------------------------
-- Server version	8.0.20


-- Added Create Schema and use entries
DROP schema if exists `mm_cpsc502101team05`;
CREATE SCHEMA `mm_cpsc502101team05` ;
use `mm_cpsc502101team05` ;

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
-- SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup
--

-- SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `clinical_test`
--

DROP TABLE IF EXISTS `clinical_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_test` (
  `clinical_test_id` int NOT NULL,
  `technician_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `sop_id` varchar(45) DEFAULT NULL,
  `equipment_id` varchar(45) DEFAULT NULL,
  `test_type` varchar(45) NOT NULL,
  `clinical_test_date` varchar(45) NOT NULL,
  PRIMARY KEY (`clinical_test_id`),
  KEY `fk_Clinical Test_SOP1_idx` (`sop_id`),
  KEY `fk_Clinical Test_Equipment1_idx` (`equipment_id`),
  KEY `fk_Clinical Test_Technician1_idx` (`technician_id`),
  CONSTRAINT `fk_Clinical Test_Equipment1` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`equipment_id`),
  CONSTRAINT `fk_Clinical Test_SOP1` FOREIGN KEY (`sop_id`) REFERENCES `sop` (`sop_id`),
  CONSTRAINT `fk_Clinical Test_Technician1` FOREIGN KEY (`technician_id`) REFERENCES `technician` (`technician_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinical_test`
--

LOCK TABLES `clinical_test` WRITE;
/*!40000 ALTER TABLE `clinical_test` DISABLE KEYS */;
INSERT INTO `clinical_test` VALUES (1044,118,21169,'CT004','FC002','HLA typing','2021-04-17 00:00:00'),(1045,101,21169,'CT003','HA003','Complete Blood Count ','2021-04-19 00:00:00'),(1046,101,21169,'CT002','IN001','Sample Sterility','2021-04-19 00:00:00'),(1047,110,21169,'CT007','BG004','Basic Metabolic Panel ','2021-04-20 00:00:00'),(1048,115,131285,'CT006','UA001','Urinalysis','2021-04-20 00:00:00'),(1049,102,183033,'CT005','FC001','Bone marrow aspiration and biopsy ','2021-04-23 00:00:00'),(1050,104,196850,'CT004','FC001','HLA typing','2021-04-23 00:00:00'),(1051,104,212808,'CT001','LP003','Lipid Profile ','2021-04-23 00:00:00'),(1052,106,234270,'CT003','HA001','Complete blood count','2021-04-24 00:00:00'),(1053,120,234270,'CT001','LP001','Lipid Profile ','2021-04-26 00:00:00'),(1054,102,267912,'CT003','HA002','Complete Blood Count ','2021-04-27 00:00:00'),(1055,117,269680,'CT002','IN002','Sample Sterility','2021-04-29 00:00:00'),(1056,116,271639,'CT007','BG003','Basic Metabolic Panel ','2021-04-29 00:00:00'),(1057,120,274707,'CT003','HA001','Complete Blood Count ','2021-04-30 00:00:00'),(1058,105,274707,'CT002','IN003','Sample Sterility','2021-04-30 00:00:00'),(1059,114,276244,'CT007','BG002','Basic Metabolic Panel ','2021-05-03 00:00:00'),(1060,112,276244,'CT003','HA002','Complete Blood Count ','2021-05-03 00:00:00'),(1061,119,299843,'CT005','FC001','Bone marrow aspiration and biposy','2021-05-04 00:00:00'),(1062,102,325391,'CT006','UA002','Urinalysis','2021-05-04 00:00:00'),(1063,113,328484,'CT004','FC001','HLA typing','2021-05-04 00:00:00'),(1064,107,337830,'CT001','LP001','Lipid Profile ','2021-05-05 00:00:00'),(1065,106,347305,'CT005','FC002','Bone marrow aspiration and biopsy ','2021-05-05 00:00:00'),(1066,107,414720,'CT007','BG001','Basic Metabolic Panel ','2021-05-06 00:00:00'),(1067,110,423537,'CT005','FC002','Bone marrow aspiration and biopsy ','2021-05-07 00:00:00'),(1068,117,423537,'CT001','LP003','Lipid Profile ','2021-05-07 00:00:00'),(1069,116,423537,'CT002','IN004','Sample Sterility','2021-05-07 00:00:00'),(1070,115,436718,'CT007','BG004','Basic Metabolic Panel ','2021-05-08 00:00:00'),(1071,117,468849,'CT004','FC002','HLA typing','2021-05-08 00:00:00'),(1072,109,471814,'CT003','HA003','Complete Blood Count ','2021-05-09 00:00:00'),(1073,106,512228,'CT004','FC001','HLA typing','2021-05-10 00:00:00'),(1074,107,523206,'CT002','IN002','Sample Sterility','2021-05-11 00:00:00'),(1075,111,524340,'CT006','UA001','Urinalysis','2021-05-11 00:00:00'),(1076,115,549126,'CT002','IN004','Sample sterility','2021-05-12 00:00:00'),(1077,116,561757,'CT006','UA003','Urinalysis','2021-05-12 00:00:00'),(1078,111,574623,'CT005','FC001','Bone marrow aspiration and biopsy ','2021-05-12 00:00:00'),(1079,120,576075,'CT007','BG004','Basic Metabolic Panel ','2021-05-12 00:00:00'),(1080,113,595360,'CT002','IN003','Sample Sterility','2021-05-13 00:00:00'),(1081,120,633758,'CT001','LP001','Lipid Profile','2021-05-14 00:00:00'),(1082,115,726608,'CT003','HA001','Complete Blood Count ','2021-05-14 00:00:00'),(1083,109,726608,'CT001','LP002','Lipid Profile ','2021-05-14 00:00:00'),(1084,115,739464,'CT005','FC002','Bone marrow aspiration and biopsy ','2021-05-14 00:00:00'),(1085,109,741423,'CT002','IN004','Sample Sterility','2021-05-14 00:00:00'),(1086,115,761450,'CT001','LP002','Lipid Profile ','2021-05-15 00:00:00'),(1087,108,790525,'CT006','UA001','Urinalysis','2021-05-15 00:00:00'),(1088,103,793054,'CT007','BG001','Basic Metabolic Panel','2021-05-15 00:00:00'),(1089,110,794430,'CT001','LP003','Lipid Profile ','2021-05-15 00:00:00'),(1090,112,823429,'CT004','FC002','HLA typing','2021-05-16 00:00:00'),(1091,113,823429,'CT005','FC002','Bone marrow aspiration and biopsy ','2021-05-16 00:00:00'),(1092,117,964176,'CT006','UA002','Urinalysis','2021-05-16 00:00:00'),(1093,113,968624,'CT001','LP002','Lipid Profile ','2021-05-16 00:00:00');
/*!40000 ALTER TABLE `clinical_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinical_test_uses_materials`
--

DROP TABLE IF EXISTS `clinical_test_uses_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_test_uses_materials` (
  `material_id` int DEFAULT NULL,
  `clinical_test_id` int DEFAULT NULL,
  `clinical_tests_uses_materials_quantity_used` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinical_test_uses_materials`
--

LOCK TABLES `clinical_test_uses_materials` WRITE;
/*!40000 ALTER TABLE `clinical_test_uses_materials` DISABLE KEYS */;
INSERT INTO `clinical_test_uses_materials` VALUES (1258,1051,2),(1258,1053,2),(1258,1064,2),(1258,1068,2),(1258,1081,2),(1258,1083,2),(1258,1086,2),(1258,1089,2),(1258,1093,2),(2147,1049,1),(2147,1061,1),(2147,1065,1),(2147,1067,1),(2147,1078,1),(2147,1084,1),(2147,1091,1),(3254,1046,2),(3254,1055,2),(3254,1058,2),(3254,1069,2),(3254,1074,2),(3254,1076,2),(3254,1080,2),(3254,1085,2),(5855,1044,1),(5855,1050,1),(5855,1063,1),(5855,1071,1),(5855,1073,1),(5855,1090,1),(7487,1045,3),(7487,1052,3),(7487,1054,3),(7487,1057,3),(7487,1060,3),(7487,1072,3),(7487,1082,3),(8574,1048,1),(8574,1062,1),(8574,1075,1),(8574,1077,1),(8574,1087,1),(8574,1092,1),(8741,1047,2),(8741,1056,2),(8741,1059,2),(8741,1066,2),(8741,1070,2),(8741,1079,2),(8741,1088,2);
/*!40000 ALTER TABLE `clinical_test_uses_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competency`
--

DROP TABLE IF EXISTS `competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competency` (
  `competency_id` varchar(45) NOT NULL,
  `compentency_due_date` datetime NOT NULL,
  PRIMARY KEY (`competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competency`
--

LOCK TABLES `competency` WRITE;
/*!40000 ALTER TABLE `competency` DISABLE KEYS */;
INSERT INTO `competency` VALUES ('Basic Metabolic Panel ','2021-08-21 00:00:00'),('Bone marrow aspiration and biopsy ','2021-10-08 00:00:00'),('Complete Blood Count ','2021-09-05 00:00:00'),('HLA typing','2021-06-21 00:00:00'),('Lipid Profile ','2021-07-11 00:00:00'),('Sample Sterility','2021-11-12 00:00:00'),('Urinalysis','2021-12-15 00:00:00');
/*!40000 ALTER TABLE `competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `equipment_id` varchar(45) NOT NULL,
  `sop_id` varchar(45) DEFAULT NULL,
  `equipment_type` varchar(45) NOT NULL,
  `equipment_serial_number` varchar(45) NOT NULL,
  `equipment_manufacturer` varchar(45) NOT NULL,
  `equipment_model` varchar(45) NOT NULL,
  `equipment_purchase_date` datetime NOT NULL,
  `equipment_price` decimal(10,0) NOT NULL,
  `equipment_service_interval` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`equipment_id`),
  KEY `fk_Equipment_SOP1_idx` (`sop_id`),
  CONSTRAINT `fk_Equipment_SOP1` FOREIGN KEY (`sop_id`) REFERENCES `sop` (`sop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES ('BG001','EQ001','Blood Gas Analyzer ','MDR0611','Abbott','BGA400','2017-08-15 00:00:00',59597,'annual'),('BG002','EQ001','Blood Gas Analyzer ','VAA6449','Abbott','BGA400','2018-03-13 00:00:00',29711,'annual'),('BG003','EQ001','Blood Gas Analyzer ','TBZ9989','Abbott','BGA400','2019-01-30 00:00:00',694,'annual'),('BG004','EQ001','Blood Gas Analyzer ','CLQ2030','Abbott','BGA400','2020-02-20 00:00:00',38656,'annual'),('FC001','EQ002','Flow cytometer ','OXJ8584','Beckman Coulter','FC500','2017-07-06 00:00:00',48567,'annual'),('FC002','EQ002','Flow cytometer ','LXD6795','Beckman Coulter','FC500','2019-12-01 00:00:00',58990,'annual'),('HA001','EQ003','Hematology Analyzer ','GAC2287','Sysmex','XS-1000','2018-06-24 00:00:00',88554,'annual'),('HA002','EQ003','Hematology Analyzer ','OEK9420','Sysmex','XS-1000','2019-06-19 00:00:00',67835,'annual'),('HA003','EQ003','Hematology Analyzer ','CWV5055','Sysmex','XS-1000','2020-03-16 00:00:00',38048,'annual'),('IN001','EQ004','Incubator ','AGF3719','Thermo Fisher','4250','2018-04-06 00:00:00',29786,'annual'),('IN002','EQ004','Incubator ','FLQ5387','Thermo Fisher','4250','2019-04-24 00:00:00',9290,'annual'),('IN003','EQ004','Incubator ','UDR0263','Thermo Fisher','4250','2020-03-04 00:00:00',84148,'annual'),('IN004','EQ004','Incubator ','WJV8679','Thermo Fisher','4250','2021-01-24 00:00:00',63269,'annual'),('LP001','EQ005','LipidPlus ','AWY2400','Jant','MD550','2019-03-19 00:00:00',19330,'annual'),('LP002','EQ005','LipidPlus ','LZL7762','Jant','MD550','2019-11-15 00:00:00',54654,'annual'),('LP003','EQ005','LipidPlus ','XWW5177','Jant','MD550','2020-05-24 00:00:00',17091,'annual'),('UA001','EQ006','Urinalysis analyzer ','HHJ2816','Sysmex','UF-5000','2018-09-01 00:00:00',94764,'annual'),('UA002','EQ006','Urinalysis analyzer ','PMT0103','Sysmex','UF-5000','2019-02-28 00:00:00',45705,'annual'),('UA003','EQ006','Urinalysis analyzer ','MHB6057','Sysmex','UF-5000','2020-12-01 00:00:00',36584,'annual');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `material_id` int DEFAULT NULL,
  `material_manufacturer` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material_description` varchar(27) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material_lot_number` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material_par_number` int DEFAULT NULL,
  `material_expiration_date` datetime DEFAULT NULL,
  `material_quantity_received` int DEFAULT NULL,
  `Quantity_Used_per_Clinical_Test` int DEFAULT NULL,
  `material_reference` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (8574,'Gilson','pipette tips','AS5478965',2,'2025-08-20 00:00:00',8,1,'Urinalysis'),(7487,'Becton Dickinson','EDTA tube, 3 mL','RT4125789',10,'2021-12-26 00:00:00',30,3,'Complete blood count'),(3254,'Becton Dickinson','Fluid Thioglycollate Medium','TG2136547',10,'2023-09-15 00:00:00',25,2,'Sample sterility'),(2147,'Beckman Coulter','Stem Cell Enumeration Kit','TH8547236',4,'2022-06-20 00:00:00',10,1,'Bone marrow aspiration and biposy'),(5855,'Beckman Coulter','HLA Antibodies','YJ8574621',4,'2028-06-12 00:00:00',10,1,'HLA typing'),(8741,'Abbott','EG7+ Cartridges','IO8574962',5,'2024-03-21 00:00:00',20,3,'Basic Metabolic Panel'),(1258,'Jant','LipidPlus testing strips','NB1423685',10,'2022-06-17 00:00:00',20,2,'Lipid Profile');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int NOT NULL,
  `physician_id` int NOT NULL,
  `patient_first_name` varchar(45) NOT NULL,
  `patient_last_name` varchar(45) NOT NULL,
  `patient_initial` varchar(45) NOT NULL,
  `patient_DOB` date NOT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `fk_Patient_Physician1_idx` (`physician_id`),
  CONSTRAINT `fk_Patient_Physician1` FOREIGN KEY (`physician_id`) REFERENCES `physician` (`physician_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (21169,10005,'Blazevic','Conniam','T','2002-12-07'),(131285,10014,'Stealy','Drinan','Z','1980-03-10'),(183033,10021,'Gero','Steutly','N','1978-02-18'),(196850,10027,'Wixon','McNair','K','1983-04-03'),(212808,10036,'Rodgier','Gudge','Q','1942-01-20'),(234270,10002,'Bonny','Carbine','E','1962-10-13'),(267912,10040,'Timbrell','Arthars','H','1946-06-09'),(269680,10034,'Bille','Basini-Gazzi','S','1994-05-29'),(271639,10026,'Yter','Halesworth','W','1933-07-22'),(274707,10030,'Ayling','Howman','X','1940-10-03'),(276244,10029,'Friman','De Benedictis','K','1988-02-23'),(299843,10004,'Glencrosche','Plowright','X','1935-05-01'),(325391,10001,'Hedde','Letherbury','X','2000-11-28'),(328484,10019,'Bernat','Tillyer','O','1995-01-23'),(337830,10008,'McGilroy','Crosen','L','1964-07-28'),(347305,10024,'Bloxsum','Ballister','P','1978-10-09'),(414720,10025,'Foulis','Iggulden','H','1973-01-01'),(423537,10032,'Godman','Kynman','P','1969-12-25'),(436718,10023,'Newe','Tiffany','T','1975-09-20'),(468849,10038,'Mc Caghan','Sandells','V','1926-01-01'),(471814,10009,'Issacov','Hartzenberg','R','1974-09-09'),(512228,10033,'Kilgrew','Woolard','M','1992-03-26'),(523206,10015,'Dabbs','Maskelyne','S','1986-09-06'),(524340,10020,'Aberdalgy','Webland','L','1955-09-05'),(549126,10003,'Simao','Wolstenholme','V','2007-01-30'),(561757,10017,'Kinforth','Stollenwerck','D','1971-01-09'),(574623,10039,'Goeff','Foggo','H','1973-05-31'),(576075,10016,'Vest','Forten','L','1978-10-15'),(595360,10035,'Ridout','Ciccerale','O','1998-09-02'),(633758,10007,'Streeton','Lanchester','P','1939-12-28'),(726608,10010,'Naulty','Vasquez','B','1982-05-12'),(739464,10011,'Bagnold','Blench','N','1929-10-30'),(741423,10022,'Slowan','Sogg','O','1932-06-21'),(761450,10018,'Pendrich','Liven','X','1975-04-14'),(790525,10012,'De Castri','McCuish','G','1955-07-27'),(793054,10006,'McVeigh','Guslon','A','1948-10-09'),(794430,10013,'Scourge','Bunyard','F','1979-09-16'),(823429,10028,'Cadigan','Haskayne','I','1996-12-13'),(964176,10031,'Clayfield','Lambard','A','1949-09-10'),(968624,10037,'Devennie','O\'Gavin','V','1940-08-22');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physician`
--

DROP TABLE IF EXISTS `physician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physician` (
  `physician_id` int NOT NULL,
  `physician_last_name` varchar(45) NOT NULL,
  `physician_first_name` varchar(45) NOT NULL,
  `physician_initial` varchar(45) NOT NULL,
  `physician_department` varchar(45) NOT NULL,
  `physician_phone_number` varchar(45) NOT NULL,
  `physician_email` varchar(45) NOT NULL,
  PRIMARY KEY (`physician_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physician`
--

LOCK TABLES `physician` WRITE;
/*!40000 ALTER TABLE `physician` DISABLE KEYS */;
INSERT INTO `physician` VALUES (10001,'Avrasin','Lannon','A','Anesthesiology','(881) 7519582','ilannon0@dailymotion.com'),(10002,'Scruton','Reedshaw','X','Ophthalmology','(428) 4462817','vreedshaw1@acquirethisname.com'),(10003,'Shirer','Cunnington','B','Emergency medicine','(217) 6039492','ccunnington2@tinyurl.com'),(10004,'Hortop','Sutliff','N','Family medicine','(112) 6098883','bsutliff3@addthis.com'),(10005,'Greggor','Gerrelt','U','Internal medicine','(114) 5291710','sgerrelt4@youtube.com'),(10006,'Kassel','Sitlinton','S','Pediatrics','(752) 5463220','isitlinton5@gnu.org'),(10007,'Blackler','Oller','X','Physical medicine and rehabilitation','(926) 2609951','coller6@chron.com'),(10008,'Medgwick','Hanlin','O','Allergy and immunology','(778) 1160852','rhanlin7@ed.gov'),(10009,'Brace','Chaulk','Y','Family medicine','(491) 5135764','kchaulk8@pbs.org'),(10010,'Jurisic','Corke','K','Emergency medicine','(816) 8219770','lcorke9@springer.com'),(10011,'Bleyman','Myers','W','Family medicine','(546) 3963276','emyersa@apache.org'),(10012,'Gearty','Milesop','B','Ophthalmology','(796) 3025692','smilesopb@csmonitor.com'),(10013,'Philps','Vaggs','D','Urology','(477) 5122095','cvaggsc@biblegateway.com'),(10014,'Bricham','Mulcock','E','Pediatrics','(474) 1605234','rmulcockd@gnu.org'),(10015,'Roddell','Constantine','N','Dermatology','(121) 1189127','dconstantinee@earthlink.net'),(10016,'Schorah','McCrorie','M','Emergency medicine','(970) 4872998','gmccrorief@slashdot.org'),(10017,'Fforde','Kryska','B','Surgery','(589) 2728637','mkryskag@reddit.com'),(10018,'How to preserve','Boullin','N','Diagnostic radiology','(849) 6490783','tboullinh@comcast.net'),(10019,'Heaford','Cove','Z','Family medicine','(552) 2871348','acovei@ed.gov'),(10020,'Howlin','Licas','A','Emergency medicine','(907) 2118404','nlicasj@statcounter.com'),(10021,'Tedman','Itzchaky','N','Obstetrics and gynecology','(130) 4673145','sitzchakyk@g.co'),(10022,'Hilbourne','Wride','C','Neurology','(539) 4262386','hwridel@meetup.com'),(10023,'Kennagh','Condict','J','Ophthalmology','(920) 1891227','kcondictm@theglobeandmail.com'),(10024,'Margett','Jarad','N','Allergy and immunology','(607) 1219876','cjaradn@ehow.com'),(10025,'De Bernardis','Tickle','Q','Radiation oncology','(377) 2675834','ctickleo@pinterest.com'),(10026,'Vaszoly','Withey','W','Ophthalmology','(973) 7198752','rwitheyp@privacy.gov.au'),(10027,'Eggleton','Drewry','S','Preventive medicine','(230) 5059833','adrewryq@ihg.com'),(10028,'Barehead','Grenter','F','Allergy and immunology','(759) 3025168','fgrenterr@ifeng.com'),(10029,'Konzel','Mcwhinnie','K','Emergency medicine','(137) 8711810','mmcwhinnies@weebly.com'),(10030,'Heindrick','Buswell','R','Medical genetics','(815) 2386602','jbuswellt@vk.com'),(10031,'Morsley','Tremethack','L','Pediatrics','(745) 7028262','ptremethacku@barnesandnoble.com'),(10032,'Gerardet','Dymott','Q','Nuclear medicine','(476) 1543292','hdymottv@cafepress.com'),(10033,'Leasor','Bartke','L','Emergency medicine','(769) 7841415','abartkew@bbc.co.uk'),(10034,'Vaan','Waterman','S','Pathology','(556) 3602180','kwatermanx@shop-pro.jp'),(10035,'Geerits','Haskew','C','Diagnostic radiology','(995) 6472564','rhaskewy@w3.org'),(10036,'Lere','Carlile','I','Internal medicine','(944) 1210667','gcarlilez@github.io'),(10037,'Warsap','Sorrill','O','Physical medicine and rehabilitation','(456) 9986293','bsorrill10@1688.com'),(10038,'Leftley','Murden','H','Pediatrics','(467) 4408078','lmurden11@fema.gov'),(10039,'Dobinson','Beamand','R','Medical genetics','(409) 6373963','gbeamand12@arstechnica.com'),(10040,'Rowbottam','Bowlands','T','Dermatology','(376) 1389967','cbowlands13@liveinternet.ru');
/*!40000 ALTER TABLE `physician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_history`
--

DROP TABLE IF EXISTS `service_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_history` (
  `equipment_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `service_date` datetime DEFAULT NULL,
  `service_provider_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `service_type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `service_due_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_history`
--

LOCK TABLES `service_history` WRITE;
/*!40000 ALTER TABLE `service_history` DISABLE KEYS */;
INSERT INTO `service_history` VALUES ('BG001','2017-08-24 00:00:00','Precision Mechanical','calibration',NULL),('BG001','2018-08-23 00:00:00','Precision Mechanical','calibration',NULL),('BG001','2019-08-22 00:00:00','Precision Mechanical','calibration',NULL),('BG001','2020-08-15 00:00:00','Precision Mechanical','calibration','2021-08-15 00:00:00'),('BG002','2018-03-13 00:00:00','Precision Mechanical','calibration',NULL),('BG002','2019-03-12 00:00:00','Precision Mechanical','calibration',NULL),('BG002','2020-03-12 00:00:00','Precision Mechanical','calibration',NULL),('BG002','2021-03-10 00:00:00','Precision Mechanical','calibration','2022-03-10 00:00:00'),('BG003','2019-01-30 00:00:00','Precision Mechanical','calibration',NULL),('BG003','2020-01-27 00:00:00','Precision Mechanical','calibration',NULL),('BG003','2021-01-26 00:00:00','Precision Mechanical','calibration','2022-01-26 00:00:00'),('BG004','2020-02-20 00:00:00','Precision Mechanical','calibration',NULL),('BG004','2021-02-19 00:00:00','Precision Mechanical','calibration','2022-02-19 00:00:00'),('FC001','2017-07-06 00:00:00','Beckman Coulter','preventative maintenance',NULL),('FC001','2018-07-06 00:00:00','Beckman Coulter','preventative maintenance',NULL),('FC001','2019-07-05 00:00:00','Beckman Coulter','preventative maintenance',NULL),('FC001','2019-11-21 00:00:00','Beckman Coulter','repair',NULL),('FC001','2020-07-03 00:00:00','Beckman Coulter','preventative maintenance','2021-07-03 00:00:00'),('FC002','2019-12-01 00:00:00','Beckman Coulter','preventative maintenance',NULL),('FC002','2020-12-01 00:00:00','Beckman Coulter','preventative maintenance','2021-12-01 00:00:00'),('HA001','2018-06-24 00:00:00','Sysmex','preventative maintenance',NULL),('HA001','2019-06-22 00:00:00','Sysmex','preventative maintenance',NULL),('HA001','2020-06-19 00:00:00','Sysmex','preventative maintenance','2021-06-19 00:00:00'),('HA002','2019-06-19 00:00:00','Sysmex','preventative maintenance',NULL),('HA002','2019-12-02 00:00:00','Sysmex','repair',NULL),('HA002','2020-06-17 00:00:00','Sysmex','preventative maintenance','2021-06-17 00:00:00'),('HA003','2020-03-16 00:00:00','Sysmex','preventative maintenance',NULL),('HA003','2021-03-14 00:00:00','Sysmex','preventative maintenance','2022-03-14 00:00:00'),('IN001','2018-04-06 00:00:00','Precision Mechanical','calibration',NULL),('IN001','2019-04-06 00:00:00','Precision Mechanical','calibration',NULL),('IN001','2020-04-05 00:00:00','Precision Mechanical','calibration',NULL),('IN001','2021-04-03 00:00:00','Precision Mechanical','calibration','2022-04-03 00:00:00'),('IN002','2019-04-24 00:00:00','Precision Mechanical','calibration',NULL),('IN002','2020-04-21 00:00:00','Precision Mechanical','calibration',NULL),('IN002','2021-04-19 00:00:00','Precision Mechanical','calibration','2022-04-19 00:00:00'),('IN003','2020-03-17 00:00:00','Precision Mechanical','calibration',NULL),('IN003','2021-03-14 00:00:00','Precision Mechanical','calibration','2022-03-14 00:00:00'),('IN004','2021-01-29 00:00:00','Precision Mechanical','calibration','2022-01-29 00:00:00'),('LP001','2019-03-27 00:00:00','Technical Safety Services','calibration',NULL),('LP001','2019-03-28 00:00:00','Technical Safety Services','calibration',NULL),('LP001','2020-03-23 00:00:00','Technical Safety Services','calibration',NULL),('LP001','2021-03-22 00:00:00','Technical Safety Services','calibration','2022-03-22 00:00:00'),('LP002','2019-11-29 00:00:00','Technical Safety Services','calibration',NULL),('LP002','2020-11-23 00:00:00','Technical Safety Services','calibration','2021-11-23 00:00:00'),('LP003','2020-05-29 00:00:00','Technical Safety Services','calibration','2021-05-29 00:00:00'),('UA001','2018-09-15 00:00:00','Sysmex','calibration',NULL),('UA001','2019-09-13 00:00:00','Sysmex','calibration',NULL),('UA001','2019-02-13 00:00:00','Sysmex','repair',NULL),('UA001','2020-09-09 00:00:00','Sysmex','calibration','2021-09-09 00:00:00'),('UA002','2019-03-15 00:00:00','Sysmex','calibration',NULL),('UA002','2020-03-15 00:00:00','Sysmex','calibration',NULL),('UA002','2021-03-15 00:00:00','Sysmex','calibration','2022-03-15 00:00:00'),('UA003','2020-12-17 00:00:00','Sysmex','calibration','2021-12-17 00:00:00'),('FC001','2021-06-05 00:00:00','Beckman Coulter','preventative maintenance','2022-06-05 00:00:00');
/*!40000 ALTER TABLE `service_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_provider`
--

DROP TABLE IF EXISTS `service_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_provider` (
  `service_provider_id` varchar(45) NOT NULL,
  `service_provider_phone_number` varchar(45) NOT NULL,
  `service_provider_email` varchar(45) NOT NULL,
  `service_provider_contract_id` varchar(45) NOT NULL,
  `service_provider_contract_due` datetime NOT NULL,
  PRIMARY KEY (`service_provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_provider`
--

LOCK TABLES `service_provider` WRITE;
/*!40000 ALTER TABLE `service_provider` DISABLE KEYS */;
INSERT INTO `service_provider` VALUES ('Beckman Coulter','245-476-8921','service@beckman.coulter.com','AZP3549','2021-06-21 00:00:00'),('Precision Mechanical','814-771-2216','service@precision.mechanical.com','RQY5195','2021-07-08 00:00:00'),('Sysmex','233-746-1314','service@sysmex.com','EWG3277','2021-12-14 00:00:00'),('Technical Safety Services','582-550-4241','service@tss.com','IJT4431','2021-05-16 00:00:00');
/*!40000 ALTER TABLE `service_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sop`
--

DROP TABLE IF EXISTS `sop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sop` (
  `sop_id` varchar(45) NOT NULL,
  `sop_revision_number` int NOT NULL,
  `sop_title` varchar(45) NOT NULL,
  `sop_revision_date` datetime NOT NULL,
  PRIMARY KEY (`sop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sop`
--

LOCK TABLES `sop` WRITE;
/*!40000 ALTER TABLE `sop` DISABLE KEYS */;
INSERT INTO `sop` VALUES ('CT001',3,'Performing the Lipid Profile','2018-01-05 00:00:00'),('CT002',5,'Testing Sample Sterility','2020-05-21 00:00:00'),('CT003',2,'Performing a Complete Blood Count','2020-09-04 00:00:00'),('CT004',1,'Performing HLA Typing','2021-03-02 00:00:00'),('CT005',3,'Performing Bone Marrow Aspiration and Biopsy','2020-07-04 00:00:00'),('CT006',2,'Performing Urinalysis','2016-10-02 00:00:00'),('CT007',2,'Performing a Basic Metabolic Panel','2020-11-01 00:00:00'),('EQ001',2,'Abbott BGA400 Blood Gas Analyzer','2021-01-30 00:00:00'),('EQ002',3,'Beckman Coulter FC500 Flow Cytomer','2018-11-21 00:00:00'),('EQ003',4,'Sysmex XS-1000 Hematology Analyzer','2020-12-19 00:00:00'),('EQ004',2,'Thermo Fisher 4250 Incubator','2018-01-13 00:00:00'),('EQ005',3,'Jant MD550 LipidPlus','2016-08-20 00:00:00'),('EQ006',4,'Sysmex UF-5000 Urinalysis Analyzer','2017-06-02 00:00:00');
/*!40000 ALTER TABLE `sop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technician`
--

DROP TABLE IF EXISTS `technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technician` (
  `technician_id` int NOT NULL,
  `technician_last_name` varchar(45) NOT NULL,
  `technician_first_name` varchar(45) NOT NULL,
  `technician_initial` varchar(45) NOT NULL,
  PRIMARY KEY (`technician_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technician`
--

LOCK TABLES `technician` WRITE;
/*!40000 ALTER TABLE `technician` DISABLE KEYS */;
INSERT INTO `technician` VALUES (101,'Andrich','Sprosson','W'),(102,'Tams','Wyss','Q'),(103,'Bradie','Bilborough','L'),(104,'Sturrock','Hamlen','V'),(105,'Worwood','Skoggings','T'),(106,'Sully','Cran','D'),(107,'O\'Crevan','Chestney','E'),(108,'McKea','Leake','Q'),(109,'Aldie','Macconachy','W'),(110,'Elms','Evennett','X'),(111,'Martini','Thorington','X'),(112,'Stainburn','Tenant','Q'),(113,'Hollyer','Spillard','B'),(114,'MacPhee','Raimbauld','N'),(115,'Lewcock','Stallworthy','G'),(116,'Danelet','Lawther','P'),(117,'Inglesent','O\'Sheilds','Z'),(118,'Bruster','Gairdner','D'),(119,'Marguerite','Czaja','V'),(120,'Faley','Metzig','M');
/*!40000 ALTER TABLE `technician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technician_has_competency`
--

DROP TABLE IF EXISTS `technician_has_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technician_has_competency` (
  `technician_id` int NOT NULL,
  `competency_id` varchar(45) NOT NULL,
  `technician_has_competency_date` datetime NOT NULL,
  PRIMARY KEY (`competency_id`,`technician_id`),
  KEY `fk_Technician_Has_Competency_Technician1_idx` (`technician_id`),
  KEY `fk_Technician_Has_Competency_Competency1_idx` (`competency_id`),
  CONSTRAINT `fk_Technician_Has_Competency_Competency1` FOREIGN KEY (`competency_id`) REFERENCES `competency` (`competency_id`),
  CONSTRAINT `fk_Technician_Has_Competency_Technician1` FOREIGN KEY (`technician_id`) REFERENCES `technician` (`technician_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technician_has_competency`
--

LOCK TABLES `technician_has_competency` WRITE;
/*!40000 ALTER TABLE `technician_has_competency` DISABLE KEYS */;
INSERT INTO `technician_has_competency` VALUES (103,'Basic Metabolic Panel ','2020-08-21 00:00:00'),(107,'Basic Metabolic Panel ','2020-08-21 00:00:00'),(110,'Basic Metabolic Panel ','2020-08-21 00:00:00'),(114,'Basic Metabolic Panel ','2020-08-21 00:00:00'),(115,'Basic Metabolic Panel ','2020-08-21 00:00:00'),(116,'Basic Metabolic Panel ','2020-08-21 00:00:00'),(117,'Basic Metabolic Panel ','2020-08-21 00:00:00'),(120,'Basic Metabolic Panel ','2020-08-21 00:00:00'),(102,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(106,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(110,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(111,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(113,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(114,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(115,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(116,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(117,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(119,'Bone marrow aspiration and biopsy ','2020-10-08 00:00:00'),(101,'Complete Blood Count ','2020-09-05 00:00:00'),(102,'Complete Blood Count ','2020-09-05 00:00:00'),(106,'Complete Blood Count ','2020-09-05 00:00:00'),(107,'Complete Blood Count ','2020-09-05 00:00:00'),(109,'Complete Blood Count ','2020-09-05 00:00:00'),(112,'Complete Blood Count ','2020-09-05 00:00:00'),(115,'Complete Blood Count ','2020-09-05 00:00:00'),(117,'Complete Blood Count ','2020-09-05 00:00:00'),(120,'Complete Blood Count ','2020-09-05 00:00:00'),(104,'HLA typing','2020-06-21 00:00:00'),(106,'HLA typing','2020-06-21 00:00:00'),(110,'HLA typing','2020-06-21 00:00:00'),(112,'HLA typing','2020-06-21 00:00:00'),(113,'HLA typing','2020-06-21 00:00:00'),(115,'HLA typing','2020-06-21 00:00:00'),(117,'HLA typing','2020-06-21 00:00:00'),(118,'HLA typing','2020-06-21 00:00:00'),(104,'Lipid Profile ','2020-07-11 00:00:00'),(107,'Lipid Profile ','2020-07-11 00:00:00'),(109,'Lipid Profile ','2020-07-11 00:00:00'),(110,'Lipid Profile ','2020-07-11 00:00:00'),(113,'Lipid Profile ','2020-07-11 00:00:00'),(115,'Lipid Profile ','2020-07-11 00:00:00'),(117,'Lipid Profile ','2020-07-11 00:00:00'),(120,'Lipid Profile ','2020-07-11 00:00:00'),(101,'Sample Sterility','2020-11-12 00:00:00'),(105,'Sample Sterility','2020-11-12 00:00:00'),(107,'Sample Sterility','2020-11-12 00:00:00'),(109,'Sample Sterility','2020-11-12 00:00:00'),(110,'Sample Sterility','2020-11-12 00:00:00'),(112,'Sample Sterility','2020-11-12 00:00:00'),(113,'Sample Sterility','2020-11-12 00:00:00'),(115,'Sample Sterility','2020-11-12 00:00:00'),(116,'Sample Sterility','2020-11-12 00:00:00'),(117,'Sample Sterility','2020-11-12 00:00:00'),(102,'Urinalysis','2020-12-15 00:00:00'),(108,'Urinalysis','2020-12-15 00:00:00'),(111,'Urinalysis','2020-12-15 00:00:00'),(115,'Urinalysis','2020-12-15 00:00:00'),(116,'Urinalysis','2020-12-15 00:00:00'),(117,'Urinalysis','2020-12-15 00:00:00'),(119,'Urinalysis','2020-12-15 00:00:00');
/*!40000 ALTER TABLE `technician_has_competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
-- SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-21  0:31:58
