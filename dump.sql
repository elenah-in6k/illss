-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ills
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `illnessdetails`
--

DROP TABLE IF EXISTS `illnessdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `illnessdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `illness` int(11) DEFAULT NULL,
  `symptom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb8ld3eff092q8r1ow8ok5i7x0` (`illness`),
  KEY `FKt3i8qqi3wyltwuk1ad9qp6ru5` (`symptom`),
  CONSTRAINT `FKb8ld3eff092q8r1ow8ok5i7x0` FOREIGN KEY (`illness`) REFERENCES `illnesses` (`id`),
  CONSTRAINT `FKt3i8qqi3wyltwuk1ad9qp6ru5` FOREIGN KEY (`symptom`) REFERENCES `symptoms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `illnessdetails`
--

LOCK TABLES `illnessdetails` WRITE;
/*!40000 ALTER TABLE `illnessdetails` DISABLE KEYS */;
INSERT INTO `illnessdetails` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,10),(15,2,12),(16,2,13),(17,2,14),(18,2,15),(19,2,16),(20,2,17),(21,2,18),(22,2,19),(23,2,20),(24,2,21),(25,3,22),(26,3,19),(27,3,20),(28,3,23),(29,3,13),(30,3,16),(31,3,24),(32,3,25),(33,3,26),(34,4,17),(35,4,10),(36,4,16),(37,4,1),(38,4,27),(39,5,16),(40,6,28),(41,6,1),(42,6,13),(43,6,16),(44,6,21),(45,6,2),(46,6,23),(47,7,28),(48,7,29),(49,8,30),(50,8,28),(51,8,31),(52,8,32),(53,8,33),(54,8,1),(55,8,2),(56,9,30),(57,9,28),(58,9,34),(59,9,35),(60,9,1),(61,9,19),(62,9,20),(63,9,21),(64,9,32),(65,8,33),(66,10,11),(67,10,13),(68,10,1),(69,10,16),(70,10,27),(71,10,23),(72,10,14),(73,10,10),(74,10,21),(75,5,1),(76,5,36),(77,11,37),(78,11,38),(79,11,39),(80,11,16),(81,11,40),(82,12,41),(83,12,42),(84,12,9),(85,12,25),(86,12,43),(87,12,44),(88,12,45),(89,12,46),(90,13,17),(91,13,27),(92,13,3),(93,13,38),(94,13,47),(95,13,3),(96,13,49),(97,13,50),(98,13,54),(99,14,25),(100,14,45),(101,14,10),(102,14,51),(103,14,9),(104,14,52),(105,14,53),(106,14,54),(107,15,55),(108,15,56),(109,15,57),(110,15,58),(111,15,59),(112,15,60),(113,15,61),(114,15,62),(115,16,63),(116,16,64),(117,16,65),(118,16,66),(119,16,16),(120,16,67),(121,17,68),(122,17,69),(123,17,70),(124,17,71),(125,17,72),(126,17,73),(127,17,74),(128,18,75),(129,18,68),(130,18,76),(131,18,77),(132,19,82),(133,19,78),(134,19,65),(135,19,47),(136,19,43),(137,19,27),(138,19,10),(139,19,79),(140,19,80),(141,20,81),(142,20,82),(143,20,26),(144,20,54),(145,20,60),(146,20,27),(147,21,83),(148,21,38),(149,21,28),(150,22,84),(151,22,85),(152,22,86),(153,23,68),(154,23,87),(155,23,69),(156,23,88),(157,23,89),(158,23,90),(159,24,91),(160,24,92),(161,24,93),(162,24,94),(163,24,95),(164,24,28),(165,25,47),(166,25,38),(167,25,96),(168,25,97),(169,25,1),(170,25,21),(171,25,36),(172,25,98),(173,25,99),(174,25,11),(175,25,100),(176,26,101),(177,26,102),(178,26,103),(179,26,84),(180,27,104),(181,27,105),(182,27,103),(183,27,106),(184,27,26),(185,27,24),(186,27,41),(187,27,108),(188,28,109),(189,28,110),(190,28,85),(191,28,111),(192,29,112),(193,29,108),(194,29,113),(195,29,16),(196,29,114),(197,30,115),(198,30,116),(200,31,116),(201,31,69),(202,31,87),(203,31,43),(204,31,117),(205,31,47),(206,31,119),(207,31,24),(208,32,126),(209,32,101),(210,32,120),(211,32,121),(212,32,122),(213,32,123),(214,32,124),(215,32,88),(216,32,44),(217,33,127),(218,33,128),(219,33,41),(220,33,108),(221,33,11),(222,33,130),(223,33,24),(224,34,131),(225,34,61),(226,34,133),(227,34,134),(228,34,135),(229,34,137),(230,35,136),(231,35,133),(232,35,137),(233,35,135),(234,35,10),(235,35,27),(236,36,138),(237,36,139),(238,36,61),(239,36,27),(240,37,139),(241,37,140),(242,37,57),(243,37,141),(244,37,142),(245,37,119),(246,37,145),(247,38,143),(248,38,27),(249,38,144),(250,38,145),(251,38,146),(252,39,147),(253,39,148),(254,39,115),(255,39,142),(256,40,149),(257,40,150),(258,40,151),(259,40,138),(261,41,152),(262,41,153),(263,41,154),(264,42,155),(265,42,156),(266,42,119),(267,42,139),(268,42,144),(269,42,145),(270,43,154),(271,43,157),(272,43,158),(273,43,159),(274,44,160),(275,44,161),(276,44,162),(277,44,52),(278,44,155),(279,45,163),(280,45,125),(281,45,88),(282,45,155),(283,46,164),(284,46,26),(285,46,60),(286,46,167),(287,47,168),(288,47,164),(289,47,26),(290,47,61),(291,47,76),(292,48,168),(293,48,164),(294,48,129),(295,48,41),(296,49,87),(297,49,169),(298,49,170),(299,50,168),(300,50,164),(301,50,171),(302,50,26),(303,50,79);
/*!40000 ALTER TABLE `illnessdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `illnesses`
--

DROP TABLE IF EXISTS `illnesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `illnesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `system` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs3247ynr5qfyqbhup6rclhoma` (`system`),
  CONSTRAINT `FKs3247ynr5qfyqbhup6rclhoma` FOREIGN KEY (`system`) REFERENCES `organsystems` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `illnesses`
--

LOCK TABLES `illnesses` WRITE;
/*!40000 ALTER TABLE `illnesses` DISABLE KEYS */;
INSERT INTO `illnesses` VALUES (1,'1','Муковісцидоз',1),(2,'1','Бронхоектазії',1),(3,'1','Первинна легенева гіпертензія',1),(4,'1','Легенева емфізема',1),(5,'1','Бронхіальна астма',1),(6,'1','Синдром Муньє-Куна',1),(7,'1','Бронхомаляція генералізована',1),(8,'1','Синдром нерухомих війок',1),(9,'1','Синдром Картагенера',1),(10,'1','Синдром Гудпасчера',1),(11,'2','Ендокринна неоплазія',2),(12,'2','Гіперглікемія',2),(13,'2','Хвороба Жильбера',2),(14,'2','Цукровий діабет',2),(15,'2','Гіпотиреоз',2),(16,'2','Алкаптонурія',2),(17,'2','Базедова хвороба',2),(18,'2','Адреногенітальний синдром',2),(19,'2','Аутоімунний тиреоідит',2),(20,'2','Гіперінсулінемія',2),(21,'3','Важко комбінований імунодефіцит',3),(22,'3','Коагулопатія',3),(23,'3','Анемія Фанконі',3),(24,'3','Хвороба Брутона',3),(25,'3','Алергічний синдром',3),(26,'3','Талассемія',3),(27,'3','Еритроцитоз',3),(28,'3','Гемофілія',3),(29,'3','Хвороба Рандо-Ослера',3),(30,'3','Синдром Веста',3),(31,'4','Фенілкетонурія',4),(32,'4','Синдром Дауна',4),(33,'4','Епілепсія',4),(34,'4','Шизофренія',4),(35,'4','Хвороба Альцгеймера',4),(36,'4','Хорея Гентінгтона',4),(37,'4','Хвороба Паркінсона',4),(38,'4','Боковий аміотрофічний склероз',4),(39,'4','Торсіонна дистонія',4),(40,'4','Синдром Кернса-Сейра',4),(41,'5','Анофтальм',5),(42,'5','Атрофія зорового нерву',5),(43,'5','Мікрофтальм',5),(44,'5','Ністагм',5),(45,'5','Ретинобластома',5),(46,'5','Отосклероз',5),(47,'5','Туговухість',5),(48,'5','Глухота',5),(49,'5','Нейрофіброматоз',5),(50,'5','Синдром Пендреда',5),(51,'6','6',6),(52,'6','6',6),(53,'6','6',6),(54,'6','6',6),(55,'6','6',6),(56,'6','6',6),(57,'6','6',6),(58,'6','6',6),(59,'6','6',6),(60,'6','6',6),(61,'7','7',7),(62,'7','7',7),(63,'7','7',7),(64,'7','7',7),(65,'7','7',7),(66,'7','7',7),(67,'7','7',7),(68,'7','7',7),(69,'7','7',7),(70,'7','7',7),(71,'8','8',8),(72,'8','8',8),(73,'8','8',8),(74,'8','8',8),(75,'8','8',8),(76,'8','8',8),(77,'8','8',8),(78,'8','8',8),(79,'8','8',8),(80,'8','8',8),(81,'9','9',9),(82,'9','9',9),(83,'9','9',9),(84,'9','9',9),(85,'9','9',9),(86,'9','9',9),(87,'9','9',9),(88,'9','9',9),(89,'9','9',9),(90,'9','9',9),(91,'10','Муковісцидоз',10),(92,'10','10',10),(93,'10','10',10),(94,'10','10',10),(95,'10','10',10),(96,'10','10',10),(97,'10','10',10),(98,'10','10',10),(99,'10','10',10),(100,'10','10',10);
/*!40000 ALTER TABLE `illnesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organsystems`
--

DROP TABLE IF EXISTS `organsystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organsystems`
--

LOCK TABLES `organsystems` WRITE;
/*!40000 ALTER TABLE `organsystems` DISABLE KEYS */;
INSERT INTO `organsystems` VALUES (1,'Дихальна система'),(2,'Ендокринна система'),(3,'Кровотворна та імунна система'),(4,'Нервова система'),(5,'Органи зору і слуху'),(6,'Тканини'),(7,'Серцево-судинна система'),(8,'Сечовидільна система'),(9,'Статева система'),(10,'Травна система');
/*!40000 ALTER TABLE `organsystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptoms`
--

DROP TABLE IF EXISTS `symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptoms`
--

LOCK TABLES `symptoms` WRITE;
/*!40000 ALTER TABLE `symptoms` DISABLE KEYS */;
INSERT INTO `symptoms` VALUES (1,'Кашель'),(2,'Віхраркування мокротиння з гноєм'),(3,'Здуття живота'),(4,'Випадіння прямої кишки'),(5,'Болі в животі'),(6,'Болі від кашлю у правому підребер\'ї'),(7,'Болі від кашлю у печінці'),(8,'Гнильний запах калу'),(9,'Підвищений апетит'),(10,'Схуднення'),(11,'Набряки на тілі'),(12,'Хрипи в легенях'),(13,'Відхаркування мокротиння з кров\'ю'),(14,'Підвищення температури тіла'),(15,'Підвищена ШОЕ'),(16,'Задишка'),(17,'Погіршення апетиту'),(18,'Посиніння губ'),(19,'Опуклість нігтів'),(20,'Розпухання пальців'),(21,'Хрипи в легенях'),(22,'Посиніння шкіри'),(23,'Біль у грудях'),(24,'Втрата свідомості'),(25,'Швидка стомлюваність'),(26,'Запаморочення'),(27,'Слабкість'),(28,'Часті пневмонії'),(29,'Порушення дихання'),(30,'Зворотне розташування органів'),(31,'Часті ГРВІ'),(32,'Труднощі носового дихання'),(33,'Гнійні виділення з носа'),(34,'Хронічний синусит'),(35,'Хронічний отит'),(36,'Нестача повітря'),(37,'Спазми у животі'),(38,'Діарея'),(39,'Збільшення лімфатичних вузлів'),(40,'Біль на вдиху'),(41,'Головний біль'),(42,'Запах ацетону із роту'),(43,'Пітливість'),(44,'Сухість шкіри'),(45,'Часті позиви мочовиділення'),(46,'Онеміння губ'),(47,'Запор'),(49,'Печія'),(50,'Гіркота у роті'),(51,'Довготривале загоєння ран'),(52,'Розпливчастий зір'),(53,'Онеміння кінцівок'),(54,'Спрага'),(55,'Набрякле обличчя'),(56,'Блідо-жовтий відтінок обличчя'),(57,'Нечітка міміка'),(58,'Потускніння волосся'),(59,'Випадіння волосся'),(60,'Апатія'),(61,'Невнятність мови'),(62,'Набряклий язик'),(63,'Почорніння мочі'),(64,'Потемніння шкіри (від темно-сірого до чорного кольору)'),(65,'Болі в суглобах'),(66,'Хриплий голос'),(67,'Біль при ковтанні'),(68,'Відсалість фізичного розвитку'),(69,'Відсталість розумового розвитку'),(70,'Грубі риси обличчя'),(71,'Великий розмір язика (не вміщається в ротовій порожнині)'),(72,'Широкий плаский ніс із впалою спинкою'),(73,'Широко розміщені очі'),(74,'Великий живіт'),(75,'Гіпертрофія геніталій'),(76,'Блювота'),(77,'Зневоднення'),(78,'Біль у м\'язах'),(79,'Збільшення щитовидної залози'),(80,'Комок в горлі'),(81,'Слабкість у м\'язах'),(82,'Лихорадка'),(83,'Кандідоз'),(84,'Бліда шкіра'),(85,'Кровотеча слизових оболонок'),(86,'Погане звертання крові'),(87,'Гіперпігментація'),(88,'Косоокість'),(89,'Аномалії променевої кістки'),(90,'Аномалії великого пальця кисті'),(91,'Гнійні утворення на шкірі(імпетіго)'),(92,'Целюліт'),(93,'Фурункули'),(94,'Менінгіт'),(95,'Бактеріальна діарея'),(96,'Чхання'),(97,'Зуд у носі'),(98,'Почервоніння шкіри'),(99,'Зуд шкіри'),(100,'Сльозотеча'),(101,'Аномальна форма черепу'),(102,'Монголоїдне обличчя зі збільшеною верхньою щелепою'),(103,'Збільшені розміри печінки'),(104,'Збільшені розміри селезінки'),(105,'Збільшений об\'єм крові'),(106,'Тромбоз'),(108,'Носова кровотеча'),(109,'Крововилив у суглоб'),(110,'Крововилив у м\'язи'),(111,'Відсрочена кровотеча'),(112,'Судинна сітка на тілі'),(113,'Крововилив у мозок'),(114,'Червоний колір обличчя'),(115,'Міоклонічні/тонічні судоми'),(116,'Затримка психо-моторного розвитку'),(117,'Синюшність кінцівок'),(118,'Гіпотонія'),(119,'Тремор рук'),(120,'Пласка потилиця/обличчя'),(121,'Широке пласке перенісся'),(122,'Напіввідкритий рот'),(123,'Виступаюча нижня щелепа'),(124,'Низьке розташування недорозвинених вух'),(125,'Симптом \"кошачого ока\"'),(126,'Недорозвиненість статевих органів'),(127,'Судомний припадок'),(128,'Порушення сну'),(129,'Роздратованість'),(130,'Відсутність реакції зіниць на світло'),(131,'Марення'),(132,'Галюцинації'),(133,'Розсіяна увага'),(134,'Манії переслідування/величі'),(135,'Непередбачуваність реакцій'),(136,'Забудькуватість'),(137,'Проблеми з мовою'),(138,'Безумність'),(139,'Порушння координаії рухів'),(140,'Своєрідна зігнутість тіла, рук, колін'),(141,'Мимовільний біг'),(142,'Тимчасова незрушність'),(143,'Атрофія дистальних відділів кінцівок'),(144,'Спазматичне скорочення м\'язів'),(145,'Судоми'),(146,'Периферійний парліч (відсутність довільних рухів)'),(147,'Порушення ходи'),(148,'Спастична кривошия'),(149,'Порушення ритму серця'),(150,'Втрата слуху'),(151,'Атрофія зорового нерву'),(152,'Дуже малі повіки/щілина ока'),(153,'Відсутність очного яблука'),(154,'Невеликі розміри очного яблука'),(155,'Зниження центрального зору'),(156,'Проблеми з кольоровим зором'),(157,'Неправильна форма очного яблука'),(158,'Пласка тонка роговиця'),(159,'Катаракта'),(160,'Коливальні рухи очей в різних напрямах'),(161,'Неприродне положення голови'),(162,'Неможливість фокусування погляду на предметі'),(163,'Білий зіничний рефлекс'),(164,'Шум у вухах'),(165,'Біль у вухах'),(167,'Сонливість'),(168,'Погіршення слуху'),(169,'Нейрофібріоми'),(170,'Коричневі п\'ятна на радужці ока'),(171,'Гіпертонія');
/*!40000 ALTER TABLE `symptoms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-08 18:41:59
