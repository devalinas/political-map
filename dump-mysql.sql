-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: political_map
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Temporary view structure for view `cont_es`
--

DROP TABLE IF EXISTS `cont_es`;
/*!50001 DROP VIEW IF EXISTS `cont_es`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cont_es` AS SELECT 
 1 AS `Назва країни`,
 1 AS `Статус`,
 1 AS `Назва організації`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `continents`
--

DROP TABLE IF EXISTS `continents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `continents` (
  `IdContinents` int NOT NULL AUTO_INCREMENT,
  `NameContinents` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SquareContinents` decimal(12,5) NOT NULL DEFAULT '485.96300',
  `PopulationContinents` decimal(9,3) NOT NULL DEFAULT '83286.730',
  `AverageHeightContinents` double NOT NULL DEFAULT '693.13',
  `LargestSettlementContinents` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `KolStates` int DEFAULT NULL,
  `KolCountries` int DEFAULT NULL,
  PRIMARY KEY (`IdContinents`),
  UNIQUE KEY `IdContinents` (`IdContinents`),
  UNIQUE KEY `NameContinents` (`NameContinents`),
  CONSTRAINT `positive` CHECK (((`SquareContinents` > 0) and (`PopulationContinents` > 0) and (`AverageHeightContinents` > 0)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `continents`
--

LOCK TABLES `continents` WRITE;
/*!40000 ALTER TABLE `continents` DISABLE KEYS */;
INSERT INTO `continents` VALUES (1,'Євразія',54609.37800,845734.900,7547.9,'Шанхай',30,7),(2,'Африка',30300.67000,922011.578,478.3,'Лагос',12,2),(3,'Північна Америка',24250.89000,528720.780,378.2,'Мехіко',12,0),(4,'Південна Америка',18280.89600,382000.673,6762.83,'Сан-Паулу',1,3),(5,'Австралія',7687.98000,320094.000,293.9,'Сідней',0,0),(6,'Антарктида',14754.35000,1000.730,2040.378,'Вілла-лас-Естреллас',5,0),(9,'Океанія',1233.80000,30097.000,264.9,'Нова Зеландія',-1,0);
/*!40000 ALTER TABLE `continents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy_rezerv`
--

DROP TABLE IF EXISTS `copy_rezerv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copy_rezerv` (
  `id_rez` int NOT NULL AUTO_INCREMENT,
  `rez_date_event` datetime DEFAULT NULL,
  `rez_event` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rez_tm_event` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rez_io_NameInternationalOrganizations` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rez_io_Decryption` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rez_io_Head` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rez_io_Appointment` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rez_io_DateOfEntry` date NOT NULL DEFAULT '0000-00-00',
  `rez_io_ReleaseDate` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id_rez`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_rezerv`
--

LOCK TABLES `copy_rezerv` WRITE;
/*!40000 ALTER TABLE `copy_rezerv` DISABLE KEYS */;
INSERT INTO `copy_rezerv` VALUES (2,'2021-01-31 23:13:17','UPDATE','BEFORE','ЛАД','Ліга Арабських Держав','Амур Мусак','Координація взаємодії між державами','1945-03-22',NULL),(3,'2021-01-31 23:13:17','UPDATE','AFTER','ЛАД','Ліга Арабських Держав','Амур Мусак','Координація взаємодії між державами','1945-03-22',NULL),(4,'2021-01-31 23:21:31','INSERT','AFTER','ФАО','Продовольча і сільгосп організація','Жозе Граціану','Займається проблемами сільських регіонів','1945-10-16',NULL),(5,'2021-01-31 23:21:50','DELETE','BEFORE','ЗЄС','Західноєвропейський союз','Рада міністрів','Оперативні повноваження у сфері оборони','1954-09-12','2011-06-30'),(8,'2021-02-04 00:57:09','DELETE','BEFORE','ЮНЕСКО','ООН з питань освіти, науки і культури','Одрі Азулай','Ліквідація неписьменності, охорона памяток','1946-11-04',NULL);
/*!40000 ALTER TABLE `copy_rezerv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `countr_status`
--

DROP TABLE IF EXISTS `countr_status`;
/*!50001 DROP VIEW IF EXISTS `countr_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `countr_status` AS SELECT 
 1 AS `IdCountries`,
 1 AS `NameCountries`,
 1 AS `CapitalCountries`,
 1 AS `PopulationCountries`,
 1 AS `NationalLanguage`,
 1 AS `EconomicTypologyOfCountries`,
 1 AS `LargestCity`,
 1 AS `SquareCountries`,
 1 AS `continents_IdContinents`,
 1 AS `status_IdStatus`,
 1 AS `politicalRegime_IdPoliticalRegime`,
 1 AS `formsOfGovernment_IdFormsOfGovernment`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `IdCountries` int NOT NULL AUTO_INCREMENT,
  `NameCountries` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CapitalCountries` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PopulationCountries` double NOT NULL DEFAULT '83286.73',
  `NationalLanguage` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Англійська',
  `EconomicTypologyOfCountries` enum('розвинена','середньорозвинена','перехідна','розвивається','централізоване управління') NOT NULL DEFAULT 'середньорозвинена',
  `LargestCity` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SquareCountries` decimal(9,3) NOT NULL,
  `continents_IdContinents` int NOT NULL,
  `status_IdStatus` int NOT NULL,
  `politicalRegime_IdPoliticalRegime` int NOT NULL,
  `formsOfGovernment_IdFormsOfGovernment` int NOT NULL,
  PRIMARY KEY (`IdCountries`),
  UNIQUE KEY `IdCountries` (`IdCountries`),
  UNIQUE KEY `NameCountries` (`NameCountries`),
  KEY `continents_IdContinents` (`continents_IdContinents`),
  KEY `status_IdStatus` (`status_IdStatus`),
  KEY `politicalRegime_IdPoliticalRegime` (`politicalRegime_IdPoliticalRegime`),
  KEY `formsOfGovernment_IdFormsOfGovernment` (`formsOfGovernment_IdFormsOfGovernment`),
  CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`continents_IdContinents`) REFERENCES `continents` (`IdContinents`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `countries_ibfk_2` FOREIGN KEY (`status_IdStatus`) REFERENCES `status` (`IdStatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `countries_ibfk_3` FOREIGN KEY (`politicalRegime_IdPoliticalRegime`) REFERENCES `politicalregime` (`IdPoliticalRegime`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `countries_ibfk_4` FOREIGN KEY (`formsOfGovernment_IdFormsOfGovernment`) REFERENCES `formsofgovernment` (`IdFormsOfGovernment`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `positive1` CHECK (((`PopulationCountries` > 0) and (`SquareCountries` > 0)))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Палестинська Держава','Рамалла',510140.14,'арабська','розвивається','Газа',6020.830,1,1,2,1),(2,'Західна Сахара','Ель-Аюн',584000,'арабська','середньорозвинена','Ель-Аюн',266000.000,2,2,17,4),(3,'Косово','Приштина',192007.96,'албанська','розвивається','Приштина',10908.430,1,3,5,1),(4,'Республіка Абхазія','Сухумі',240705.87,'абхазька','централізоване управління','Сухумі',8660.430,1,5,14,2),(5,'Придністровя','Тирасполь',475665.87,'молдовська','перехідна','Тирасполь',4163.980,1,4,17,2),(6,'Північний Кіпр','Лефкоша',285356.87,'турецька','розвивається','Нікосія',3355.870,1,4,1,2),(7,'Південна Осетія','Цхінвалі',70000.23,'осетинська','перехідна','Цхінвалі',3900.840,1,12,4,2),(8,'Сомаліленд','Харгейса',350000.93,'сомалі','перехідна','Харгейса',137600.000,2,4,14,2),(9,'Пуерто-Рико','Сан-Хуан',391205.74,'іспанська','розвивається','Сан-Хуан',9104.830,4,6,18,5),(10,'Аруба','Ораньєстад',103065.93,'нідерландська','перехідна','Ораньєстад',193.700,4,9,15,6),(11,'Кюрасао','Віллемстад',137766.73,'голландська','середньорозвинена','Віллемстад',444.930,4,9,12,6),(12,'Сінт-Мартен','Філіпсбург',40917.37,'нідерландська','розвивається','Філіпсбург',34.860,1,9,8,6);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `data_60`
--

DROP TABLE IF EXISTS `data_60`;
/*!50001 DROP VIEW IF EXISTS `data_60`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `data_60` AS SELECT 
 1 AS `Назва`,
 1 AS `Столиця`,
 1 AS `Населення`,
 1 AS `Державна мова`,
 1 AS `Економічний тип`,
 1 AS `Площа`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `formsofgovernment`
--

DROP TABLE IF EXISTS `formsofgovernment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formsofgovernment` (
  `IdFormsOfGovernment` int NOT NULL AUTO_INCREMENT,
  `NameFormsOfGovernment` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'республіка',
  `TypeFormsOfGovernment` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MeaningOfTheForm` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Comments` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`IdFormsOfGovernment`),
  UNIQUE KEY `IdFormsOfGovernment` (`IdFormsOfGovernment`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formsofgovernment`
--

LOCK TABLES `formsofgovernment` WRITE;
/*!40000 ALTER TABLE `formsofgovernment` DISABLE KEYS */;
INSERT INTO `formsofgovernment` VALUES (1,'Республіка','Парламентська','Уряд формує парламент','Уряд обирає президента'),(2,'Республіка','Президентська','Значна роль президента','Президент виступає як глава держави і уряду'),(3,'Республіка','Президентсько-парламентська','Президент консолідує широкі можливості','Президент пропонує склад уряду'),(4,'Республіка','Парламентсько-президентська','Влада президента обмежена парламентом','Перевага парламенту у формуванні уряду'),(5,'Монархія','Необмежена(абсолютна)','Влада повністю в руках монарха','Правління близьке до диктатури'),(6,'Монархія','Обмежена(конституційна)','Монарх не володіє верховними повноваженнями','Правові обмеження закріплені у вищих законах');
/*!40000 ALTER TABLE `formsofgovernment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `int_org`
--

DROP TABLE IF EXISTS `int_org`;
/*!50001 DROP VIEW IF EXISTS `int_org`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `int_org` AS SELECT 
 1 AS `Абревіатура`,
 1 AS `Розшифрування`,
 1 AS `Очільник організації`,
 1 AS `Кількість років існування`,
 1 AS `Кількість держав`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `interim`
--

DROP TABLE IF EXISTS `interim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interim` (
  `num_organizations` int NOT NULL AUTO_INCREMENT,
  `name_organizations` varchar(12) NOT NULL,
  `decryption` varchar(80) NOT NULL,
  `heads` varchar(60) NOT NULL,
  `date_entry` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`num_organizations`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interim`
--

LOCK TABLES `interim` WRITE;
/*!40000 ALTER TABLE `interim` DISABLE KEYS */;
/*!40000 ALTER TABLE `interim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internationalorganizations`
--

DROP TABLE IF EXISTS `internationalorganizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internationalorganizations` (
  `IdInternationalOrganizations` int NOT NULL AUTO_INCREMENT,
  `NameInternationalOrganizations` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Decryption` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Head` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Appointment` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DateOfEntry` date NOT NULL DEFAULT '0000-00-00',
  `ReleaseDate` date DEFAULT '0000-00-00',
  PRIMARY KEY (`IdInternationalOrganizations`),
  UNIQUE KEY `IdInternationalOrganizations` (`IdInternationalOrganizations`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internationalorganizations`
--

LOCK TABLES `internationalorganizations` WRITE;
/*!40000 ALTER TABLE `internationalorganizations` DISABLE KEYS */;
INSERT INTO `internationalorganizations` VALUES (1,'ООН','Організація Обєднаних Націй','Антоніу Гутерреш','Підтримання та зміцнення миру','1945-10-24',NULL),(2,'ЛАД','Ліга Арабських Держав','Амур Мусак','Координація взаємодії між державами','1945-03-22',NULL),(3,'ОАД','Організація Американських Держав','Хосе Мігель Інсульса','Виконання комерційних функцій','1948-05-05',NULL),(4,'ОАЄ','Організація Африканської Єдності','Муаммар Каддафі','Подолання колоніалізму на континенті','1963-05-25','2002-07-11'),(5,'АЗПАК','Азіатсько-Тихоокеанська Рада','Сесія міністрів іноземних справ','Збереження цілісності перед загрозами','1966-06-16',NULL),(6,'НАТО','Організація Північноатлантичного договору','Єнс Столтенберг','Колективна безпека','1949-04-04',NULL),(8,'АНЗЮС','Тихоокеанський пакт безпеки','Союз трьох держав','Колективна безпека','1951-09-01',NULL),(9,'СОТ','Світова організація торгівлі','Роберто Азеведо','Для лібералізації міжнародної торгівлі','1995-01-01',NULL),(10,'ОПЕК','Організація країн-експортерів нафти','Дізані Елісон-Мадуеке','Для стабілізації цін на нафту','1960-09-14',NULL),(11,'ОЧЕС','Організація чорноморського економічного співробітництва','Тургут Озал','Тісне економічне співробітництво','1992-06-04',NULL),(12,'НАФТА','Північноамериканська зона вільної торгівлі','Обєднання країн','Формування найбільшого ринку','1994-01-24','2018-11-30'),(13,'ЄС','Європейський Союз','Урсула фон дер Ляєн','Економічний та політичний союз','1993-11-01',NULL),(14,'СНД','Співдружність Незалежних Держав','Сергій Лебедєв','Співпраця в різноманітних галузях','1991-12-08',NULL),(15,'ГУАМ','Організація за демократія та економічний розвиток','Алтай Ефендієв','Єдність позицій країн','2006-05-26',NULL),(16,'ЦЄІ','Центральноєвропейська ініціатива','Угрупування країн Європи','Налагодження багатобічного співробітництва','1989-11-21',NULL),(17,'МБРР','Міжнародний банк реконструкції та розвитку','Девід Малпасс','Сприяння розвитку економіки','1944-09-11',NULL),(18,'МВФ','Міжнародний Валютний Фонд','Крісталіна Георгієва','Регулювання валютно-кредитних відносин','1945-12-27',NULL),(19,'ВООЗ','Всесвітня організація охорони здоровя','Тедрос Аданом Гебреісус','Вирішення проблем охорони здоровя','1948-04-07',NULL),(20,'ЄБРР','Європейський банк реконструкції та розвитку','Жак Атталі','Допомога країнам для проведення ринкових реформ','1991-05-23',NULL),(21,'МАГАТЕ','Міжнародна агенція з атомної енергії','Амано','Контроль за мирним використанням атомної енергії','1957-07-29',NULL),(22,'МОП','Міжнародна організація праці','Гай Райдер','Підтримка міжнародного співробітництва','1919-05-21',NULL),(23,'ОБСЄ','Організація з безпеки і співробітницива в Європі','Анджеліно Альфано','Регулювання кризвих ситуацій','1995-01-01',NULL),(24,'НБСЄ','Нарада з безпеки і співробітницива в Європі','Івіца Дачич','Запобігання конфліктних ситуацій','1973-07-03','1975-08-01'),(25,'РЄ','Рада Європи','Марія Пейчинович-Бурич','Вирішення питань попередження злочинності','1946-09-19',NULL),(27,'СОІВ','Світова організація інтелектуальної власності','Френсіс Гаррі','Захист інтелектуальної власності світу','1967-07-14',NULL),(28,'EURACOAL','Європейська асоація вугілля та лігніту','Обєднання країн','Проголошення ролі вугілля','2011-09-06',NULL),(29,'МРЧХЧП','Міжнародний рух Червоного Хреста і Червоного Півмісяця','Петер Маурер','Гуманітарний рух','1945-10-24',NULL),(30,'ФАО','Продовольча і сільгосп організація','Жозе Граціану','Займається проблемами сільських регіонів','1945-10-16',NULL);
/*!40000 ALTER TABLE `internationalorganizations` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rezerv_copy` AFTER INSERT ON `internationalorganizations` FOR EACH ROW BEGIN
INSERT INTO copy_rezerv
SET rez_date_event = NOW(),
rez_event = 'INSERT',
rez_tm_event = 'AFTER',
rez_io_NameInternationalOrganizations = NEW.NameInternationalOrganizations,
rez_io_Decryption = NEW.Decryption,
rez_io_Head = NEW.Head,
rez_io_Appointment = NEW.Appointment,
rez_io_DateOfEntry = NEW.DateOfEntry,
rez_io_ReleaseDate = NEW.ReleaseDate;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rezerv_copy_update` AFTER UPDATE ON `internationalorganizations` FOR EACH ROW BEGIN
INSERT INTO copy_rezerv
SET rez_date_event = NOW(),
rez_event = 'UPDATE',
rez_tm_event = 'BEFORE',
rez_io_NameInternationalOrganizations = OLD.NameInternationalOrganizations,
rez_io_Decryption = OLD.Decryption,
rez_io_Head = OLD.Head,
rez_io_Appointment = OLD.Appointment,
rez_io_DateOfEntry = OLD.DateOfEntry,
rez_io_ReleaseDate = OLD.ReleaseDate;
INSERT INTO copy_rezerv
SET rez_date_event = NOW(),
rez_event = 'UPDATE',
rez_tm_event = 'AFTER',
rez_io_NameInternationalOrganizations = NEW.NameInternationalOrganizations,
rez_io_Decryption = NEW.Decryption,
rez_io_Head = NEW.Head,
rez_io_Appointment = NEW.Appointment,
rez_io_DateOfEntry = NEW.DateOfEntry,
rez_io_ReleaseDate = NEW.ReleaseDate;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rezerv_copy_delete` BEFORE DELETE ON `internationalorganizations` FOR EACH ROW BEGIN
INSERT INTO copy_rezerv
SET rez_date_event = NOW(),
rez_event = 'DELETE',
rez_tm_event = 'BEFORE',
rez_io_NameInternationalOrganizations = OLD.NameInternationalOrganizations,
rez_io_Decryption = OLD.Decryption,
rez_io_Head = OLD.Head,
rez_io_Appointment = OLD.Appointment,
rez_io_DateOfEntry = OLD.DateOfEntry,
rez_io_ReleaseDate = OLD.ReleaseDate;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `internationalorganizations_has_countries`
--

DROP TABLE IF EXISTS `internationalorganizations_has_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internationalorganizations_has_countries` (
  `countries_IdCountries` int NOT NULL,
  `internationalOrganizations_IdInternationalOrganizations` int NOT NULL,
  `DateOfEntry` date NOT NULL DEFAULT '0000-00-00',
  `ReleaseDate` date DEFAULT '0000-00-00',
  `ReasonForExit` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  KEY `countries_IdCountries` (`countries_IdCountries`),
  KEY `internationalOrganizations_IdInternationalOrganizations` (`internationalOrganizations_IdInternationalOrganizations`),
  CONSTRAINT `internationalorganizations_has_countries_ibfk_1` FOREIGN KEY (`countries_IdCountries`) REFERENCES `countries` (`IdCountries`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `internationalorganizations_has_countries_ibfk_2` FOREIGN KEY (`internationalOrganizations_IdInternationalOrganizations`) REFERENCES `internationalorganizations` (`IdInternationalOrganizations`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internationalorganizations_has_countries`
--

LOCK TABLES `internationalorganizations_has_countries` WRITE;
/*!40000 ALTER TABLE `internationalorganizations_has_countries` DISABLE KEYS */;
INSERT INTO `internationalorganizations_has_countries` VALUES (1,1,'2012-11-29',NULL,''),(2,1,'1963-11-07',NULL,''),(3,1,'1999-09-10',NULL,''),(3,6,'2008-02-17',NULL,''),(3,13,'2016-07-24',NULL,''),(4,1,'2008-09-05',NULL,''),(6,1,'2008-01-01',NULL,''),(6,13,'2004-05-01',NULL,''),(8,1,'2002-09-09',NULL,''),(9,1,'2016-10-09',NULL,''),(9,19,'2017-11-23',NULL,''),(11,1,'2007-12-09',NULL,''),(11,20,'2009-11-27',NULL,'');
/*!40000 ALTER TABLE `internationalorganizations_has_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internationalorganizations_has_states`
--

DROP TABLE IF EXISTS `internationalorganizations_has_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internationalorganizations_has_states` (
  `states_IdStates` int NOT NULL,
  `internationalOrganizations_IdInternationalOrganizations` int NOT NULL,
  `DateOfEntry` date NOT NULL DEFAULT '0000-00-00',
  `ReleaseDate` date DEFAULT '0000-00-00',
  `ReasonForExit` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  KEY `states_IdStates` (`states_IdStates`),
  KEY `internationalOrganizations_IdInternationalOrganizations` (`internationalOrganizations_IdInternationalOrganizations`),
  CONSTRAINT `internationalorganizations_has_states_ibfk_1` FOREIGN KEY (`states_IdStates`) REFERENCES `states` (`IdStates`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `internationalorganizations_has_states_ibfk_2` FOREIGN KEY (`internationalOrganizations_IdInternationalOrganizations`) REFERENCES `internationalorganizations` (`IdInternationalOrganizations`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internationalorganizations_has_states`
--

LOCK TABLES `internationalorganizations_has_states` WRITE;
/*!40000 ALTER TABLE `internationalorganizations_has_states` DISABLE KEYS */;
INSERT INTO `internationalorganizations_has_states` VALUES (1,1,'1955-12-15',NULL,''),(1,25,'1995-07-03',NULL,''),(1,16,'2012-11-24',NULL,''),(1,6,'2009-04-01',NULL,''),(2,1,'1945-10-24',NULL,''),(2,19,'1997-09-20',NULL,''),(3,1,'1999-09-14',NULL,''),(3,19,'1998-09-21',NULL,''),(4,1,'1949-05-11',NULL,''),(4,2,'1989-11-03',NULL,''),(4,6,'1999-09-11',NULL,''),(5,1,'1973-11-09','1999-11-12','Вихід на новий рівень'),(5,5,'1998-12-29',NULL,''),(5,6,'1987-12-29',NULL,''),(6,9,'1972-10-09',NULL,''),(7,1,'2001-07-26',NULL,''),(8,1,'1992-09-19',NULL,''),(8,16,'2008-10-10','2020-12-12','Перехід в іншу організацію'),(9,20,'1991-09-25',NULL,''),(9,1,'2002-02-02',NULL,''),(9,21,'1987-09-12',NULL,''),(9,17,'1999-12-29',NULL,''),(9,10,'2002-03-25',NULL,''),(21,13,'1994-04-05',NULL,''),(25,25,'1992-09-29',NULL,''),(29,27,'1999-11-19','2011-11-23','Зміна статусу'),(33,12,'2008-12-12',NULL,''),(38,1,'1995-09-18',NULL,''),(44,14,'2002-04-18',NULL,''),(45,21,'1993-11-16',NULL,''),(45,16,'2003-10-09',NULL,''),(48,5,'2009-09-20',NULL,''),(48,8,'2001-10-28',NULL,''),(46,19,'2005-09-19',NULL,''),(46,21,'1999-09-29',NULL,''),(46,11,'2009-11-19',NULL,''),(38,11,'2010-11-27',NULL,''),(33,10,'1992-05-24',NULL,''),(13,9,'1988-12-03','2006-09-01','Зміна статусу'),(47,3,'2009-09-10',NULL,''),(49,1,'2001-02-01',NULL,''),(49,23,'1992-10-16','2008-04-03','Вхід в іншу організацію'),(50,12,'2002-11-29',NULL,'');
/*!40000 ALTER TABLE `internationalorganizations_has_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `list_states_15`
--

DROP TABLE IF EXISTS `list_states_15`;
/*!50001 DROP VIEW IF EXISTS `list_states_15`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `list_states_15` AS SELECT 
 1 AS `Назва`,
 1 AS `Столиця`,
 1 AS `Найбільше місто`,
 1 AS `Державна мова`,
 1 AS `Площа`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `list_states_org`
--

DROP TABLE IF EXISTS `list_states_org`;
/*!50001 DROP VIEW IF EXISTS `list_states_org`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `list_states_org` AS SELECT 
 1 AS `Назва`,
 1 AS `Столиця`,
 1 AS `Найбільше місто`,
 1 AS `Державна мова`,
 1 AS `Площа`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_table`
--

DROP TABLE IF EXISTS `log_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_table` (
  `num_log` int NOT NULL AUTO_INCREMENT,
  `date_log` date DEFAULT NULL,
  `time_log` time DEFAULT NULL,
  `value_log` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`num_log`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_table`
--

LOCK TABLES `log_table` WRITE;
/*!40000 ALTER TABLE `log_table` DISABLE KEYS */;
INSERT INTO `log_table` VALUES (2,'2021-01-31','21:44:07','Домініка Розо 71727.360 751.340'),(4,'2021-02-04','13:03:05','Еквадор, Кіто, іспанська, 25630.920');
/*!40000 ALTER TABLE `log_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `politicalregime`
--

DROP TABLE IF EXISTS `politicalregime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `politicalregime` (
  `IdPoliticalRegime` int NOT NULL AUTO_INCREMENT,
  `NamePoliticalRegime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TypePoliticalRegime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MainOpportunity` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`IdPoliticalRegime`),
  UNIQUE KEY `IdPoliticalRegime` (`IdPoliticalRegime`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `politicalregime`
--

LOCK TABLES `politicalregime` WRITE;
/*!40000 ALTER TABLE `politicalregime` DISABLE KEYS */;
INSERT INTO `politicalregime` VALUES (1,'Демократичний режим','пряма форма','вибори, референдуми, громадські ініціативи, обговорення'),(2,'Демократичний режим','представницька форма','органи первинного народного представництва'),(3,'Авторитарний режим','військово-бюрократичний','військова диктатура, деякі цивільні фахівці'),(4,'Авторитарний режим','корпоративний','альтернатива ідеологізованій масовій партії'),(5,'Авторитарний режим','дототалітарний','партисипаторний і демократичний режим'),(6,'Авторитарний режим','постколоніальний','однопартійні мобілізаційні режими'),(7,'Авторитарний режим','расова квазідемократія','режим ПАР з ідеологією апартеїду'),(8,'Авторитарний режим','султаністський режим','гранична форма автократії'),(9,'Тоталітарний режим','пряма форма','повний контроль з боку держави'),(10,'Гібридний режим','представницька форма','значні порушення, корупція'),(11,'Анархія','представницька форма','безвладдя, повна відсутність режиму'),(12,'Аристократія','форма державного ладу','правління представниками родової знаті'),(13,'Військова диктатура','пряма форма','владу формують представники Збройних Сил'),(14,'Демократура','демократія+диктатура','можливість безкарного ігнорування'),(15,'Деспотизм','представницька форма','вся правота влади належить монарху, тирану або диктатору'),(16,'Диктатура','необмежена влада','застосування апарату насильства'),(17,'Епістократія','пряма форма','політична влада надається освіченим громадянам'),(18,'Корпоратократія','форма правління','влада належить могутнім і багатим компаніям'),(19,'Олігархія','олігархат','правління належить можновладцям'),(20,'Охлократія','вироджена форма демократії','мінливі примхи натовпу'),(21,'Плутократія','пряма форма','влада належить найбагатшим представникам'),(22,'Тиранія','представницька форма','одноосібна влада з підтримкою армії'),(23,'Фашизм','радикальна імперіалістична','ідея єднання та мобілізації нації та держави проти ворогів');
/*!40000 ALTER TABLE `politicalregime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `regimes`
--

DROP TABLE IF EXISTS `regimes`;
/*!50001 DROP VIEW IF EXISTS `regimes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `regimes` AS SELECT 
 1 AS `cont`,
 1 AS `polreg`,
 1 AS `numbofreg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `rezerv`
--

DROP TABLE IF EXISTS `rezerv`;
/*!50001 DROP VIEW IF EXISTS `rezerv`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rezerv` AS SELECT 
 1 AS `ID`,
 1 AS `Час`,
 1 AS `Подія`,
 1 AS `Час події`,
 1 AS `Міжнародна організація`,
 1 AS `Розшифрування`,
 1 AS `Очільник`,
 1 AS `Особливості`,
 1 AS `Дата заснування`,
 1 AS `Дата закриття`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `IdStates` int NOT NULL AUTO_INCREMENT,
  `NameStates` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CapitalStates` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PopulationStates` decimal(9,3) NOT NULL DEFAULT '83286.730',
  `NationalLanguage` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Англійська',
  `EconomicTypologyOfStates` enum('розвинена','середньорозвинена','перехідна','розвивається','централізоване управління') NOT NULL DEFAULT 'середньорозвинена',
  `LargestCity` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SquareStates` decimal(9,3) NOT NULL DEFAULT '485.963',
  `DryLandStates` decimal(5,3) NOT NULL DEFAULT '35.500',
  `AquatoriumStates` decimal(5,3) NOT NULL DEFAULT '35.300',
  `AerotoriaStates` decimal(5,3) NOT NULL DEFAULT '29.200',
  `continents_IdContinents` int NOT NULL,
  `politicalRegime_IdPoliticalRegime` int NOT NULL,
  `formsOfGovernment_IdFormsOfGovernment` int NOT NULL,
  PRIMARY KEY (`IdStates`),
  UNIQUE KEY `IdStates` (`IdStates`),
  UNIQUE KEY `NameStates` (`NameStates`),
  KEY `continents_IdContinents` (`continents_IdContinents`),
  KEY `politicalRegime_IdPoliticalRegime` (`politicalRegime_IdPoliticalRegime`),
  KEY `formsOfGovernment_IdFormsOfGovernment` (`formsOfGovernment_IdFormsOfGovernment`),
  CONSTRAINT `states_ibfk_1` FOREIGN KEY (`continents_IdContinents`) REFERENCES `continents` (`IdContinents`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `states_ibfk_2` FOREIGN KEY (`politicalRegime_IdPoliticalRegime`) REFERENCES `politicalregime` (`IdPoliticalRegime`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `states_ibfk_3` FOREIGN KEY (`formsOfGovernment_IdFormsOfGovernment`) REFERENCES `formsofgovernment` (`IdFormsOfGovernment`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `positive2` CHECK (((`PopulationStates` > 0) and (`SquareStates` > 0))),
  CONSTRAINT `spaces` CHECK (((`DryLandStates` > 0) and (`AquatoriumStates` > 0) and (`AerotoriaStates` > 0)))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Албанія','Тирана',28227.340,'албанська','розвинена','Дуррес',28748.930,52.300,4.700,43.000,1,2,1),(2,'Єгипет','Каїр',107040.240,'арабська','розвинена','Каїр',100450.430,69.100,6.300,24.600,2,7,3),(3,'Кірибаті','Південна Тарава',105432.600,'кірибаті','перехідна','Бетіо',726.800,29.700,29.100,41.200,6,18,3),(4,'Ізраїль','Єрусалим',921000.320,'арабська','розвивається','Єрусалим',20770.340,71.400,13.800,14.800,1,6,1),(5,'Нідерланди','Амстердам',173790.440,'нідерландська','централізоване управління','Ротердам',41526.700,35.700,12.400,51.900,1,9,6),(6,'Сербія','Белград',696400.330,'сербська','розвивається','Белград',88361.520,48.300,17.800,33.900,1,4,1),(7,'Хорватія','Загреб',429100.870,'хорватська','централізоване управління','Дубровник',56594.230,38.800,17.300,43.900,1,8,1),(8,'Україна','Київ',417300.430,'українська','розвивається','Київ',603548.320,69.300,21.500,9.200,1,4,1),(9,'Тувалу','Фунафуті',10544.330,'англійська','розвивається','Фунафуті',26.430,35.700,29.600,34.700,6,15,6),(10,'Аргентина','Буенос-Айрес',401096.430,'іспанська','середньорозвинена','Буенос-Айрес',276890.300,58.200,26.500,15.300,3,1,2),(11,'Афганістан','Кабул',341411.420,'пушту','централізоване управління','Кабул',652230.430,37.900,22.500,39.600,1,11,2),(12,'Бангладеш','Дакка',165775.320,'бенгальська','перехідна','Дакка',14770.320,38.900,25.300,35.800,1,14,1),(13,'Болгарія','Софія',700034.320,'болгарська','середньорозвинена','Софія',110993.430,59.300,17.400,23.300,1,5,1),(14,'Естонія','Таллінн',134194.000,'естонська','середньорозвинена','Таллінн',45226.434,49.200,14.700,36.100,1,18,1),(15,'Ліберія','Монровія',412572.430,'англійська','централізоване управління','Монровія',11369.320,42.700,18.900,38.400,2,17,2),(16,'Німеччина','Берлін',83019.200,'німецька','розвивається','Берлін',357578.320,49.220,39.100,11.680,1,1,1),(17,'ОАЕ','Абудабі',999203.940,'арабська','централізоване управління','Дубай',83.600,49.600,21.400,29.000,1,15,5),(18,'Парагвай','Асунсьйон',631306.730,'іспанська','середньорозвинена','Асунсьйон',406752.430,49.200,16.400,34.400,3,4,1),(19,'Республіка Конго','Браззавіль',423063.320,'французька','централізоване управління','Браззавіль',342032.210,38.900,14.800,46.300,2,11,2),(20,'Сальвадор','Сан-Сальвадор',614350.320,'іспанська','перехідна','Сан-Сальвадор',21040.940,49.200,15.300,35.500,4,6,1),(21,'Данія','Копенгаген',5432.330,'данська','середньорозвинена','Копенгаген',43094.680,39.600,21.400,39.000,1,15,6),(22,'Гаїті','Порт-о-Пренс',971932.320,'французька','централізоване управління','Порт-о-Пренс',27750.320,48.200,18.300,33.500,3,6,2),(25,'Еритрея','Асмара',60895.320,'арабська','розвивається','Асмара',117600.320,38.200,28.400,33.400,2,7,2),(26,'Зімбабве','Хараре',16150.480,'англійська','централізоване управління','Хараре',39057.420,59.200,23.500,17.300,2,20,2),(27,'Іспанія','Мадрид',462980.590,'іспанська','розвинена','Мадрид',50445.320,83.200,6.400,10.400,1,8,6),(28,'Італія','Рим',605886.320,'італійська','розвинена','Рим',301338.320,39.300,12.500,48.200,1,17,1),(29,'Канада','Оттава',370011.980,'англійська','розвивається','Торонто',99870.320,49.300,21.400,29.300,3,17,6),(30,'Катар','Доха',190347.540,'арабська','перехідна','Доха',11437.890,83.500,8.200,8.300,1,14,6),(31,'Куба','Гавана',112904.820,'іспанська','середньорозвинена','Гавана',110861.230,49.220,23.800,26.980,3,2,1),(33,'Малаві','Лілонгве',180100.450,'англійська','середньорозвинена','Лілонгве',118.484,67.200,26.100,6.700,2,2,1),(34,'Малайзія','Куала-Лумпур',274000.320,'малайська','централізоване управління','Куала-Лумпур',32947.890,58.200,23.700,18.100,5,15,6),(35,'Непал','Катманду',289852.530,'непальська','централізоване управління','Катманду',14711.320,59.200,19.700,21.100,2,6,1),(36,'Нігер','Ніамей',139500.430,'французька','перехідна','Ніамей',126700.000,54.800,31.400,13.800,2,2,2),(37,'Нова Зеландія','Веллінгтон',459670.430,'англійська','розвивається','Окленд',268680.324,49.800,24.600,25.600,6,9,6),(38,'Панама','Панама',332000.330,'іспанська','розвивається','Панама',75570.430,63.700,32.900,3.400,3,7,4),(39,'ПАР','Кейптаун',58657.720,'англійська','перехідна','Йоганнесбург',12237.430,79.200,12.400,8.400,2,2,1),(40,'Румунія','Бухарест',212641.320,'румунська','середньорозвинена','Бухарест',238397.420,52.400,9.400,38.200,1,4,3),(41,'Руанда','Кігалі',112564.000,'англійська','централізоване управління','Кігалі',26798.000,68.300,14.700,17.000,2,10,3),(42,'Сан-Марино','Сан-Марино',32284.600,'італійська','перехідна','Догана',61.430,36.500,17.400,46.100,1,8,4),(43,'Сенегал','Дакар',136338.230,'французька','централізоване управління','Дакар',19623.420,48.200,29.400,22.400,2,2,2),(44,'США','Вашингтон',328900.330,'мови США','розвинена','Нью-Йорк',982675.380,63.800,15.300,20.900,3,14,2),(45,'Туніс','Туніс',114800.420,'арабська','перехідна','Туніс',163610.320,73.200,8.500,18.300,2,6,2),(46,'Туркменістан','Ашгабат',592000.320,'туркменська','централізоване управління','Туркменбаші',488100.338,63.900,28.400,7.700,1,12,2),(47,'Узбекистан','Ташкент',311500.340,'узбецька','перехідна','Самаркант',447400.923,39.100,15.800,45.100,1,17,2),(48,'Угорщина','Будапешт',97761.840,'угорська','розвивається','Будапешт',93030.430,39.500,13.800,46.700,1,5,1),(49,'Фінляндія','Гельсінкі',54729.930,'фінська','середньорозвинена','Турку',338145.240,29.300,10.000,60.700,1,5,1),(50,'Чехія','Прага',106540.460,'чеська','розвинена','Прага',78866.290,48.300,27.320,24.380,1,1,4);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `square` BEFORE INSERT ON `states` FOR EACH ROW begin 
set new.SquareStates=(select distinct SquareContinents from continents 
where continents.IdContinents=new.continents_IdContinents)-
((select sum(SquareStates) from states where continents.IdContinents=new.continents_IdContinents)+
(select sum(SquareCountries) from countries inner join continents on continents.IdContinents=countries.continents_IdContinents)+
(select sum(SquareTerritory) from territory inner join countries on countries.IdCountries=territory.countries_IdCountries
inner join continents on continents.IdContinents=countries.continents_IdContinents)+
(select sum(SquareTerritory) from territory inner join states on states.IdStates=territory.states_IdStates
inner join continents on continents.IdContinents=states.continents_IdContinents));
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_states` BEFORE DELETE ON `states` FOR EACH ROW BEGIN
DECLARE v_name nvarchar(45);
DECLARE v_capital nvarchar(45); 
DECLARE v_language nvarchar(25); 
DECLARE v_square decimal(9,3); 
SET v_name=Old.NameStates;
SET v_capital=Old.CapitalStates;
SET v_language=Old.NationalLanguage;
SET v_square=Old.SquareStates;
INSERT INTO log_table(date_log, time_log, value_log)
SELECT DISTINCT CURDATE(), CURTIME(), CONCAT_WS(', ', v_name, v_capital, v_language, v_square)
FROM states;
UPDATE continents
SET kolStates=kolStates-1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `IdStatus` int NOT NULL AUTO_INCREMENT,
  `NameStatus` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DateStatus` date NOT NULL DEFAULT '0000-00-00',
  `MainOpportunity` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Comments` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`IdStatus`),
  UNIQUE KEY `IdStatus` (`IdStatus`),
  UNIQUE KEY `NameStatus` (`NameStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'держава-спостерігач','1988-11-15','фактично не існує, перебуває під контролем Ізраїлю','являє собою два самокеровані автономні утворення'),(2,'окупована','2016-09-12','окупована Марокко','визнана ООН'),(3,'визнана більшістю','2008-02-17','не входить до ООН',NULL),(4,'не визнана','1971-06-23','визнана де-факто','більшістю не визнана де-юре'),(5,'державне утворення','2011-10-11','формально незалежна','майже ніким не визнана'),(6,'вільно приєднана до США','2018-07-23','повне приєднання',NULL),(7,'коронна земля','1973-11-07','територія Великої Британії','містить найстарший парламент у світі'),(8,'заморська територія','2010-10-21','територія Великої Британії','самоврядна територія'),(9,'спірна територія','1967-09-10','керована Сполученим королівством','територіальні претензії Іспанії'),(10,'заморська територія Нідерландів','1986-01-01','на шляху до незалежності',NULL),(11,'автономний регіон','1976-11-17','регіон Португалії в Африці',NULL),(12,'особливий статус','1920-09-11','обумовлений в міжнародних угодах','під правлінням Норвегії'),(13,'невизначений статус','1994-08-21','в процесі досягнення повної незалежності',NULL),(14,'з претензіями в майбутньому','2011-10-30','самоврядні території',NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `territory`
--

DROP TABLE IF EXISTS `territory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `territory` (
  `IdTerritory` int NOT NULL AUTO_INCREMENT,
  `NameTerritory` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SquareTerritory` decimal(9,3) DEFAULT '485.963',
  `TypeTerritory` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LengthTerritory` decimal(5,3) NOT NULL,
  `countries_IdCountries` int NOT NULL,
  `states_IdStates` int NOT NULL,
  PRIMARY KEY (`IdTerritory`),
  UNIQUE KEY `IdTerritory` (`IdTerritory`),
  KEY `countries_IdCountries` (`countries_IdCountries`),
  KEY `states_IdStates` (`states_IdStates`),
  CONSTRAINT `territory_ibfk_1` FOREIGN KEY (`countries_IdCountries`) REFERENCES `countries` (`IdCountries`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `territory_ibfk_2` FOREIGN KEY (`states_IdStates`) REFERENCES `states` (`IdStates`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `positive3` CHECK (((`SquareTerritory` > 0) and (`LengthTerritory` > 0)))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `territory`
--

LOCK TABLES `territory` WRITE;
/*!40000 ALTER TABLE `territory` DISABLE KEYS */;
INSERT INTO `territory` VALUES (1,'Тайвань',358625.670,'острів',34.700,9,49),(2,'Нагірний Карабах',4400.400,'регіон',43.300,4,47),(3,'Північні Маріанські острови',63.630,'острів',52.500,9,44),(4,'Острів Мен',572.200,'острів',80.300,1,27),(5,'Ангілья',96.600,'заморська',26.000,1,27),(6,'Бермудські острови',54.700,'заморська',26.900,1,27),(7,'Британські Віргінські острови',53.600,'заморська',60.400,1,27),(8,'Кайманові острови',264.400,'заморська',54.900,1,27),(9,'Монтсеррат',104.000,'володіння моря',35.400,1,27),(10,'Острови святої Єлени',2800.000,'острів',15.000,6,27),(11,'Піткерн',47.300,'заморська',67.300,6,13),(12,'Острови Кайкос',430.700,'острів',51.800,6,13),(13,'Теркс',293.200,'острів',31.300,6,13),(14,'Острови Кука',236.700,'острів',17.300,6,37),(15,'Ніуе',258.000,'острів',26.100,6,37),(16,'Токелау',10.120,'залежна',14.920,11,37),(17,'Американське Самоа',197.100,'острів',55.400,12,44),(18,'Гуам',541.300,'острів',61.300,2,44),(19,'Нова Каледонія',18575.300,'заморське',24.930,4,16),(20,'Французька Полінезія',4176.300,'заморське',26.900,4,16),(21,'Сен-Мартен',83.000,'острів',14.300,12,45),(22,'Бонайре',294.000,'острів',14.060,12,44),(23,'Сінт-Естатіус',21.000,'острів',8.430,12,42),(24,'Гренландія',21663.320,'автономія',69.200,7,21),(25,'Фарерські острови',1399.200,'архіпелаг',49.700,7,21),(26,'Кліппертон',9.000,'атол',3.500,3,48),(27,'Гернсі',78.000,'острів',35.400,8,16),(28,'Джерсі',118.200,'острів',97.300,10,37),(29,'Фолклендські острови',12178.200,'острів',73.200,9,10),(30,'Мелілья',20.000,'порт',18.900,9,27),(31,'острови Мадейра',750.700,'острів',57.000,12,49),(32,'Гонконг',1104.000,'район',72.730,11,46),(33,'Джарвіс',4.500,'острів',2.900,8,22),(34,'Кінгмен',0.012,'риф',1.300,8,43),(35,'Пальміра',12.000,'атол',3.900,8,43);
/*!40000 ALTER TABLE `territory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'political_map'
--

--
-- Dumping routines for database 'political_map'
--
/*!50003 DROP PROCEDURE IF EXISTS `delete_organizations_by_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_organizations_by_date`(v_date DATE)
BEGIN
DECLARE name_organizations_now VARCHAR(12);
DECLARE decryption_now VARCHAR(80);
DECLARE heads_now VARCHAR(60);
DECLARE date_now DATE;
DECLARE finished INT;
DECLARE my_cursor CURSOR FOR SELECT NameInternationalOrganizations,Decryption,Head,DateOfEntry FROM internationalOrganizations;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
OPEN my_cursor; -- відкриваємо курсор
SET finished = 0;
WHILE( finished != 1) DO
FETCH my_cursor INTO name_organizations_now, decryption_now, heads_now, date_now;
IF(date_now < v_date) THEN
INSERT INTO interim (name_organizations, decryption, heads, date_entry)
VALUES (name_organizations_now, decryption_now, heads_now, date_now);
DELETE FROM internationalOrganizations
WHERE DateOfEntry=date_now AND NameInternationalOrganizations = name_organizations_now AND Decryption=decryption_now AND Head=heads_now;
END IF;
END WHILE;
CLOSE my_cursor; -- закриваємо курсор
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `entry_term` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `entry_term`(year1 INT, year2 INT)
BEGIN
    DECLARE pro_exit INTEGER; 
    DECLARE count_states INTEGER; 
	DECLARE states_now INTEGER; 
    DECLARE cursor2 CURSOR FOR SELECT states_IdStates FROM internationalOrganizations_has_states
	WHERE YEAR(DateOfEntry) BETWEEN year1 AND year2; 
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET pro_exit = 1; 
    OPEN cursor2; 
    SET pro_exit = 0; 
    SET count_states = 0; 
    WHILE pro_exit = 0 DO 
        FETCH cursor2 INTO states_now; 
        IF (pro_exit = 0) THEN 
            SET count_states = count_states + 1; 
    END IF; 
    END WHILE; 
    CLOSE cursor2; 
    SELECT CONCAT('Загальна кількість країн за період [', year1, ', ', year2, ']: ', count_states) AS 'Результат';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `kol_countries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `kol_countries`()
BEGIN 
UPDATE continents
SET KolStates= (select count(IdStates) from states 
where continents.IdContinents=states.continents_IdContinents);
UPDATE continents
SET KolCountries= (select count(IdCountries) from countries 
where continents.IdContinents=countries.continents_IdContinents);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `population_countries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `population_countries`(name CHAR(25), population DECIMAL(7,2), act BINARY)
BEGIN 
IF act = true THEN
UPDATE countries
SET PopulationCountries=PopulationCountries+population
WHERE NameCountries=name;
ELSE 
UPDATE countries
SET PopulationCountries=PopulationCountries-population
WHERE NameCountries=name;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_counts_states` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_counts_states`(OUT counts INT)
BEGIN 
    DECLARE pro_exit INT; 
    DECLARE pro_states int; 
    DECLARE states_now int; 
    DECLARE cursor1 CURSOR FOR SELECT states_IdStates FROM internationalOrganizations_has_states WHERE YEAR(DateOfEntry)%2=0; 
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET pro_exit = 1; 
    OPEN cursor1; 
    SET pro_exit = 0; 
    SET pro_states = 0; 
    WHILE pro_exit = 0 DO 
        FETCH cursor1 INTO states_now; 
        IF (pro_exit = 0) THEN 
            SET pro_states = pro_states + 1; 
    END IF; 
    END WHILE; 
    CLOSE cursor1; 
    SET counts = pro_states; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_states` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_states`(states VARCHAR(45))
BEGIN
SELECT NameStates as 'Назва', CapitalStates as 'Столиця', PopulationStates as 'Населення',
NationalLanguage as 'Державна мова', SquareStates as 'Площа',   
CASE
	WHEN YEAR (CURRENT_DATE) - YEAR (internationalOrganizations_has_states.DateOfEntry) % 10 = 2
		THEN CONCAT (YEAR (CURRENT_DATE) - YEAR (internationalOrganizations_has_states.DateOfEntry), ' роки')
    WHEN YEAR (CURRENT_DATE) - YEAR (internationalOrganizations_has_states.DateOfEntry) % 10 = 1
		THEN CONCAT (YEAR (CURRENT_DATE) - YEAR (internationalOrganizations_has_states.DateOfEntry), ' рік')    
  	ELSE CONCAT (YEAR (CURRENT_DATE) - YEAR (internationalOrganizations_has_states.DateOfEntry), ' років')	
END AS 'Кількість років',
NameInternationalOrganizations as 'Абревіатура', Decryption as 'Розшифрування', Head as 'Очільник організації'
FROM states inner join internationalOrganizations_has_states
ON internationalOrganizations_has_states.states_IdStates=states.IdStates 
inner join internationalOrganizations 
on internationalOrganizations.IdInternationalOrganizations = internationalOrganizations_has_states.internationalOrganizations_IdInternationalOrganizations
where NameStates=states
ORDER BY 4 desc; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cont_es`
--

/*!50001 DROP VIEW IF EXISTS `cont_es`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cont_es` AS select `countries`.`NameCountries` AS `Назва країни`,`status`.`NameStatus` AS `Статус`,`internationalorganizations`.`NameInternationalOrganizations` AS `Назва організації` from (((`countries` left join `status` on((`status`.`IdStatus` = `countries`.`status_IdStatus`))) join `internationalorganizations_has_countries` on((`countries`.`IdCountries` = `internationalorganizations_has_countries`.`countries_IdCountries`))) join `internationalorganizations` on((`internationalorganizations`.`IdInternationalOrganizations` = `internationalorganizations_has_countries`.`internationalOrganizations_IdInternationalOrganizations`))) where (`internationalorganizations`.`NameInternationalOrganizations` = 'ЄС') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `countr_status`
--

/*!50001 DROP VIEW IF EXISTS `countr_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `countr_status` AS select `countries`.`IdCountries` AS `IdCountries`,`countries`.`NameCountries` AS `NameCountries`,`countries`.`CapitalCountries` AS `CapitalCountries`,`countries`.`PopulationCountries` AS `PopulationCountries`,`countries`.`NationalLanguage` AS `NationalLanguage`,`countries`.`EconomicTypologyOfCountries` AS `EconomicTypologyOfCountries`,`countries`.`LargestCity` AS `LargestCity`,`countries`.`SquareCountries` AS `SquareCountries`,`countries`.`continents_IdContinents` AS `continents_IdContinents`,`countries`.`status_IdStatus` AS `status_IdStatus`,`countries`.`politicalRegime_IdPoliticalRegime` AS `politicalRegime_IdPoliticalRegime`,`countries`.`formsOfGovernment_IdFormsOfGovernment` AS `formsOfGovernment_IdFormsOfGovernment` from `countries` where `countries`.`status_IdStatus` in (select `status`.`IdStatus` from `status` where (`status`.`DateStatus` between '1960-01-01' and '2005-01-01')) is false group by `countries`.`NameCountries` having (`countries`.`SquareCountries` = avg(`countries`.`SquareCountries`)) order by `countries`.`NameCountries` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_60`
--

/*!50001 DROP VIEW IF EXISTS `data_60`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_60` AS select `countries`.`NameCountries` AS `Назва`,`countries`.`CapitalCountries` AS `Столиця`,`countries`.`PopulationCountries` AS `Населення`,`countries`.`NationalLanguage` AS `Державна мова`,`countries`.`EconomicTypologyOfCountries` AS `Економічний тип`,`countries`.`SquareCountries` AS `Площа` from `countries` where `countries`.`IdCountries` in (select `internationalorganizations_has_countries`.`countries_IdCountries` from (`internationalorganizations_has_countries` join `internationalorganizations` on((`internationalorganizations`.`IdInternationalOrganizations` = `internationalorganizations_has_countries`.`internationalOrganizations_IdInternationalOrganizations`))) where (((`internationalorganizations`.`NameInternationalOrganizations` = 'ООН') or (`internationalorganizations`.`NameInternationalOrganizations` = 'ЄС')) and (`internationalorganizations_has_countries`.`DateOfEntry` between (curdate() - interval 60 year) and curdate()))) having (`countries`.`PopulationCountries` <= avg(`countries`.`PopulationCountries`)) union all select `states`.`NameStates` AS `Назва`,`states`.`CapitalStates` AS `Столиця`,`states`.`PopulationStates` AS `Населення`,`states`.`NationalLanguage` AS `Державна мова`,`states`.`EconomicTypologyOfStates` AS `Економічний тип`,`states`.`SquareStates` AS `Площа` from `states` where `states`.`IdStates` in (select `internationalorganizations_has_states`.`states_IdStates` from (`internationalorganizations_has_states` join `internationalorganizations` on((`internationalorganizations`.`IdInternationalOrganizations` = `internationalorganizations_has_states`.`internationalOrganizations_IdInternationalOrganizations`))) where (((`internationalorganizations`.`NameInternationalOrganizations` = 'ООН') or (`internationalorganizations`.`NameInternationalOrganizations` = 'ЄС')) and (`internationalorganizations_has_states`.`DateOfEntry` between (curdate() - interval 60 year) and curdate()))) having (`states`.`PopulationStates` <= avg(`states`.`PopulationStates`)) order by `Назва` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `int_org`
--

/*!50001 DROP VIEW IF EXISTS `int_org`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `int_org` AS select `internationalorganizations`.`NameInternationalOrganizations` AS `Абревіатура`,`internationalorganizations`.`Decryption` AS `Розшифрування`,`internationalorganizations`.`Head` AS `Очільник організації`,(case when (((year(curdate()) - year(`internationalorganizations`.`DateOfEntry`)) % 10) = 2) then concat((year(curdate()) - year(`internationalorganizations`.`DateOfEntry`)),' роки') when (((year(curdate()) - year(`internationalorganizations`.`DateOfEntry`)) % 10) = 1) then concat((year(curdate()) - year(`internationalorganizations`.`DateOfEntry`)),' рік') else concat((year(curdate()) - year(`internationalorganizations`.`DateOfEntry`)),' років') end) AS `Кількість років існування`,count(`internationalorganizations_has_countries`.`countries_IdCountries`) AS `Кількість держав` from (`internationalorganizations` join `internationalorganizations_has_countries` on((`internationalorganizations_has_countries`.`internationalOrganizations_IdInternationalOrganizations` = `internationalorganizations`.`IdInternationalOrganizations`))) group by `internationalorganizations`.`NameInternationalOrganizations` order by `internationalorganizations`.`NameInternationalOrganizations` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `list_states_15`
--

/*!50001 DROP VIEW IF EXISTS `list_states_15`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `list_states_15` AS select `states`.`NameStates` AS `Назва`,`states`.`CapitalStates` AS `Столиця`,`states`.`LargestCity` AS `Найбільше місто`,`states`.`NationalLanguage` AS `Державна мова`,`states`.`SquareStates` AS `Площа` from `states` where `states`.`IdStates` in (select `internationalorganizations_has_states`.`states_IdStates` from `internationalorganizations_has_states` where ((year(curdate()) - year(`internationalorganizations_has_states`.`DateOfEntry`)) >= 15)) order by `states`.`NameStates` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `list_states_org`
--

/*!50001 DROP VIEW IF EXISTS `list_states_org`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `list_states_org` AS select `states`.`NameStates` AS `Назва`,`states`.`CapitalStates` AS `Столиця`,`states`.`LargestCity` AS `Найбільше місто`,`states`.`NationalLanguage` AS `Державна мова`,`states`.`SquareStates` AS `Площа` from `states` where `states`.`IdStates` in (select `internationalorganizations_has_states`.`states_IdStates` from `internationalorganizations_has_states` group by `internationalorganizations_has_states`.`states_IdStates` having (count(`internationalorganizations_has_states`.`internationalOrganizations_IdInternationalOrganizations`) >= 3)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `regimes`
--

/*!50001 DROP VIEW IF EXISTS `regimes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `regimes` AS select `continents`.`NameContinents` AS `cont`,`politicalregime`.`NamePoliticalRegime` AS `polreg`,count(`politicalregime`.`IdPoliticalRegime`) AS `numbofreg` from ((`continents` left join `states` on((`continents`.`IdContinents` = `states`.`continents_IdContinents`))) left join `politicalregime` on((`states`.`politicalRegime_IdPoliticalRegime` = `politicalregime`.`IdPoliticalRegime`))) group by `continents`.`NameContinents`,`politicalregime`.`NamePoliticalRegime` order by `continents`.`NameContinents`,count(`politicalregime`.`IdPoliticalRegime`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rezerv`
--

/*!50001 DROP VIEW IF EXISTS `rezerv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rezerv` AS select `copy_rezerv`.`id_rez` AS `ID`,`copy_rezerv`.`rez_date_event` AS `Час`,`copy_rezerv`.`rez_event` AS `Подія`,`copy_rezerv`.`rez_tm_event` AS `Час події`,`copy_rezerv`.`rez_io_NameInternationalOrganizations` AS `Міжнародна організація`,`copy_rezerv`.`rez_io_Decryption` AS `Розшифрування`,`copy_rezerv`.`rez_io_Head` AS `Очільник`,`copy_rezerv`.`rez_io_Appointment` AS `Особливості`,`copy_rezerv`.`rez_io_DateOfEntry` AS `Дата заснування`,`copy_rezerv`.`rez_io_ReleaseDate` AS `Дата закриття` from `copy_rezerv` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-05 14:11:36
