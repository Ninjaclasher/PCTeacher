-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pcteacher
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB-6ubuntu2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add sub lesson',7,'add_sublesson'),(26,'Can change sub lesson',7,'change_sublesson'),(27,'Can delete sub lesson',7,'delete_sublesson'),(28,'Can view sub lesson',7,'view_sublesson'),(29,'Can add lesson',8,'add_lesson'),(30,'Can change lesson',8,'change_lesson'),(31,'Can delete lesson',8,'delete_lesson'),(32,'Can view lesson',8,'view_lesson'),(33,'Can add topic',9,'add_topic'),(34,'Can change topic',9,'change_topic'),(35,'Can delete topic',9,'delete_topic'),(36,'Can view topic',9,'view_topic'),(37,'Can add variable',10,'add_variable'),(38,'Can change variable',10,'change_variable'),(39,'Can delete variable',10,'delete_variable'),(40,'Can view variable',10,'view_variable'),(41,'Can add sub lesson user data',11,'add_sublessonuserdata'),(42,'Can change sub lesson user data',11,'change_sublessonuserdata'),(43,'Can delete sub lesson user data',11,'delete_sublessonuserdata'),(44,'Can view sub lesson user data',11,'view_sublessonuserdata');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'website','lesson'),(7,'website','sublesson'),(11,'website','sublessonuserdata'),(9,'website','topic'),(10,'website','variable');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-05-04 20:44:02.842806'),(2,'auth','0001_initial','2019-05-04 20:44:03.076187'),(3,'admin','0001_initial','2019-05-04 20:44:03.959372'),(4,'admin','0002_logentry_remove_auto_add','2019-05-04 20:44:04.106516'),(5,'admin','0003_logentry_add_action_flag_choices','2019-05-04 20:44:04.120592'),(6,'contenttypes','0002_remove_content_type_name','2019-05-04 20:44:04.227257'),(7,'auth','0002_alter_permission_name_max_length','2019-05-04 20:44:04.297136'),(8,'auth','0003_alter_user_email_max_length','2019-05-04 20:44:04.397696'),(9,'auth','0004_alter_user_username_opts','2019-05-04 20:44:04.417026'),(10,'auth','0005_alter_user_last_login_null','2019-05-04 20:44:04.471684'),(11,'auth','0006_require_contenttypes_0002','2019-05-04 20:44:04.477734'),(12,'auth','0007_alter_validators_add_error_messages','2019-05-04 20:44:04.496969'),(13,'auth','0008_alter_user_username_max_length','2019-05-04 20:44:04.566364'),(14,'auth','0009_alter_user_last_name_max_length','2019-05-04 20:44:04.645828'),(15,'auth','0010_alter_group_name_max_length','2019-05-04 20:44:04.730157'),(16,'auth','0011_update_proxy_permissions','2019-05-04 20:44:04.750402'),(17,'sessions','0001_initial','2019-05-04 20:44:04.779034'),(18,'website','0001_initial','2019-05-05 01:00:20.402971'),(19,'website','0002_auto_20190505_0134','2019-05-05 01:34:04.627729'),(20,'website','0003_auto_20190505_0139','2019-05-05 01:39:54.311981'),(21,'website','0004_sublessonuserdata','2019-05-05 02:57:09.000614'),(22,'website','0005_sublessonuserdata_tries','2019-05-05 03:42:38.083064'),(23,'website','0006_auto_20190505_0439','2019-05-05 04:39:25.642870'),(24,'website','0007_sublessonuserdata_solved','2019-05-05 05:03:16.853471'),(25,'website','0008_auto_20190505_0536','2019-05-05 05:37:55.388374'),(26,'website','0009_remove_sublessonuserdata_time','2019-05-05 08:07:12.837412'),(27,'website','0010_sublesson_markdown_expression','2019-05-05 09:20:51.398556'),(28,'website','0011_auto_20190505_1029','2019-05-05 10:29:56.159469'),(29,'website','0012_sublessonuserdata_current_tries','2019-05-05 10:35:34.067633');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_lesson`
--

DROP TABLE IF EXISTS `website_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_lesson_topic_id_f4f43a9b_fk_website_topic_id` (`topic_id`),
  CONSTRAINT `website_lesson_topic_id_f4f43a9b_fk_website_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `website_topic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_lesson`
--

LOCK TABLES `website_lesson` WRITE;
/*!40000 ALTER TABLE `website_lesson` DISABLE KEYS */;
INSERT INTO `website_lesson` VALUES (1,'Addition and Subtraction',1),(2,'Multiplication, Division, and Exponentiation',1);
/*!40000 ALTER TABLE `website_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_sublesson`
--

DROP TABLE IF EXISTS `website_sublesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_sublesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` longtext,
  `example_title` varchar(128) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `expression` longtext,
  `markdown_expression` longtext,
  PRIMARY KEY (`id`),
  KEY `website_sublesson_lesson_id_36437b43_fk_website_lesson_id` (`lesson_id`),
  CONSTRAINT `website_sublesson_lesson_id_36437b43_fk_website_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `website_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_sublesson`
--

LOCK TABLES `website_sublesson` WRITE;
/*!40000 ALTER TABLE `website_sublesson` DISABLE KEYS */;
INSERT INTO `website_sublesson` VALUES (1,'Addition','Addition (often signified by the plus symbol \"~+~\") is one of the four basic operations of arithmetic; the others are subtraction, multiplication and division. The addition of two whole numbers is the total amount of those values combined. For example, in the adjacent picture, there is a combination of three apples and two apples together, making a total of five apples. This observation is equivalent to the mathematical expression \"~3 + 2 = 5~\" i.e., \"~3~ add ~2~ is equal to ~5~\".','Adding two numbers',1,'a + b','a + b'),(2,'Subtraction','Subtraction is an arithmetic operation that represents the operation of removing objects from a collection. The result of a subtraction is called a difference. Subtraction is signified by the minus sign (~−~). For example, in the adjacent picture, there are ~5 − 2~ apples-meaning ~5~ apples with ~2~ taken away, which is a total of 3 apples. Therefore, the difference of 5 and 2 is 3, that is, ~5 − 2 = 3~. Subtraction represents removing or decreasing physical and abstract quantities using different kinds of objects including negative numbers, fractions, irrational numbers, vectors, decimals, functions, and matrices.','Subtracting two numbers',1,'a - b','a - b'),(3,'Multiplying','Multiplication (often denoted by the cross symbol \"~\\times~\", by a point \"~\\cdot~\", by juxtaposition, or, on computers, by an asterisk \"~*~\") is one of the four elementary mathematical operations of arithmetic; with the others being addition, subtraction and division.\r\n\r\nThe multiplication of whole numbers may be thought as a repeated addition; that is, the multiplication of two numbers is equivalent to adding as many copies of one of them, the multiplicand, as the value of the other one, the multiplier. The multiplier can be written first and multiplicand second (though the custom can vary by culture); both can be called factors.','Multiplying two numbers',2,'a * b','a \\times b'),(4,'Division','Division is one of the four basic operations of arithmetic, the others being addition, subtraction, and multiplication. The mathematical symbols used for the division operator are the obelus (~\\div~) and the slash (~/~).\r\n\r\nAt an elementary level the division of two natural numbers is – among other possible interpretations – the process of calculating the number of times one number is contained within another one. This number of times is not always an integer, and this led to two different concepts.','Dividing two numbers',2,'a // b','\\frac{ a }{ b }'),(5,'Exponents','Exponentiation is a mathematical operation, written as ~b^n~, involving two numbers, the base ~b~ and the exponent or power ~n~. When ~n~ is a positive integer, exponentiation corresponds to repeated multiplication of the base: that is, ~b^n~ is the product of multiplying ~n~ bases:\r\n\r\n$$b^n=\\underbrace{b\\times\\ldots\\times b}_\\text{n times}$$','Exponents',2,'a ** b','a ^ b');
/*!40000 ALTER TABLE `website_sublesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_sublessonuserdata`
--

DROP TABLE IF EXISTS `website_sublessonuserdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_sublessonuserdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sublesson_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tries` int(11) NOT NULL,
  `current_answer` varchar(128) DEFAULT NULL,
  `current_problem` varchar(128) DEFAULT NULL,
  `solved` int(11) NOT NULL,
  `learn_type` int(11) NOT NULL,
  `current_tries` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_sublessonuse_sublesson_id_17f1ff98_fk_website_s` (`sublesson_id`),
  KEY `website_sublessonuserdata_user_id_161e9305_fk_auth_user_id` (`user_id`),
  CONSTRAINT `website_sublessonuse_sublesson_id_17f1ff98_fk_website_s` FOREIGN KEY (`sublesson_id`) REFERENCES `website_sublesson` (`id`),
  CONSTRAINT `website_sublessonuserdata_user_id_161e9305_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_sublessonuserdata`
--

LOCK TABLES `website_sublessonuserdata` WRITE;
/*!40000 ALTER TABLE `website_sublessonuserdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_sublessonuserdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_topic`
--

DROP TABLE IF EXISTS `website_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_topic`
--

LOCK TABLES `website_topic` WRITE;
/*!40000 ALTER TABLE `website_topic` DISABLE KEYS */;
INSERT INTO `website_topic` VALUES (1,'Introduction to BEDMAS');
/*!40000 ALTER TABLE `website_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_variable`
--

DROP TABLE IF EXISTS `website_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `order` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `sublesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_variable_sublesson_id_e4757c82_fk_website_sublesson_id` (`sublesson_id`),
  CONSTRAINT `website_variable_sublesson_id_e4757c82_fk_website_sublesson_id` FOREIGN KEY (`sublesson_id`) REFERENCES `website_sublesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_variable`
--

LOCK TABLES `website_variable` WRITE;
/*!40000 ALTER TABLE `website_variable` DISABLE KEYS */;
INSERT INTO `website_variable` VALUES (1,'a',0,'randint(1, 10)',1),(2,'b',1,'randint(1, 10)',1),(3,'a',0,'randint(5, 10)',2),(4,'b',1,'randint(1, 5)',2),(5,'a',0,'randint(2, 5)',3),(6,'b',1,'randint(2, 5)',3),(7,'b',0,'randint(2, 5)',4),(8,'a',1,'randint(2, 5) * b',4),(9,'a',0,'randint(2, 4)',5),(10,'b',1,'randint(1, 3)',5);
/*!40000 ALTER TABLE `website_variable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 21:51:26
