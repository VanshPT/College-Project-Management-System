-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pms
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add mentor',7,'add_mentor'),(26,'Can change mentor',7,'change_mentor'),(27,'Can delete mentor',7,'delete_mentor'),(28,'Can view mentor',7,'view_mentor'),(29,'Can add student',8,'add_student'),(30,'Can change student',8,'change_student'),(31,'Can delete student',8,'delete_student'),(32,'Can view student',8,'view_student'),(33,'Can add team',9,'add_team'),(34,'Can change team',9,'change_team'),(35,'Can delete team',9,'delete_team'),(36,'Can view team',9,'view_team'),(37,'Can add project',10,'add_project'),(38,'Can change project',10,'change_project'),(39,'Can delete project',10,'delete_project'),(40,'Can view project',10,'view_project');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$0NOAkW31tFNi0gpDBlDBNE$JC42Wcw7U8EBe1KhwtXC0viA87BaRgM1ZJ4QyqSrgvA=','2023-08-30 05:21:46.886001',1,'admin','','','admin@gmail.com',1,1,'2023-08-30 05:21:13.976821');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-08-30 15:14:22.291858','1','9580',1,'[{\"added\": {}}]',8,1),(2,'2023-08-30 15:14:56.573083','2','9612',1,'[{\"added\": {}}]',8,1),(3,'2023-08-30 15:15:20.085594','3','9544',1,'[{\"added\": {}}]',8,1),(4,'2023-08-30 15:15:54.034681','4','9557',1,'[{\"added\": {}}]',8,1),(5,'2023-08-30 15:16:19.184767','5','9572',1,'[{\"added\": {}}]',8,1),(6,'2023-08-30 15:17:18.609305','6','9998',1,'[{\"added\": {}}]',8,1),(7,'2023-08-30 15:20:50.131687','7','9997',1,'[{\"added\": {}}]',8,1),(8,'2023-08-30 15:27:49.018327','8','9996',1,'[{\"added\": {}}]',8,1),(9,'2023-08-30 15:30:36.378697','1','1010',1,'[{\"added\": {}}]',7,1),(10,'2023-08-30 15:31:29.188363','2','2010',1,'[{\"added\": {}}]',7,1),(11,'2023-08-30 15:32:04.917571','1','Team#1',1,'[{\"added\": {}}]',9,1),(12,'2023-08-30 15:32:47.365098','2','Team#2',1,'[{\"added\": {}}]',9,1),(13,'2023-08-30 15:32:58.029561','2','Team#2',2,'[]',9,1),(14,'2023-09-02 20:34:48.752629','5','9572',2,'[]',8,1),(15,'2023-09-02 20:36:52.220084','2','Team#2',3,'',9,1),(16,'2023-09-02 20:36:55.475511','1','Team#1',3,'',9,1),(17,'2023-09-02 20:49:57.453603','3','Team#1',1,'[{\"added\": {}}]',9,1),(18,'2023-09-02 20:50:08.831770','4','Team#2',1,'[{\"added\": {}}]',9,1),(19,'2023-09-04 14:23:14.218783','1','Malware Detection and Analysis',3,'',10,1),(20,'2023-09-05 11:39:58.644040','12','Malware Detection and Analysis',3,'',10,1),(21,'2023-09-05 11:40:02.124342','11','pms',3,'',10,1),(22,'2023-09-05 11:40:05.222055','10','pms',3,'',10,1),(23,'2023-09-05 11:40:15.010085','9','pms',3,'',10,1),(24,'2023-09-05 11:40:15.011080','8','pms',3,'',10,1),(25,'2023-09-05 11:40:15.012081','7','pms',3,'',10,1),(26,'2023-09-05 11:40:15.013085','6','pms',3,'',10,1),(27,'2023-09-05 11:40:15.014536','5','pms',3,'',10,1),(28,'2023-09-05 11:48:07.610005','14','Malware Detection ',3,'',10,1),(29,'2023-09-05 11:48:07.612615','13','Malware Detection and Analysis',3,'',10,1),(30,'2023-09-05 11:48:07.613626','4','Sample Project 1',3,'',10,1),(31,'2023-09-05 11:48:07.614626','3','Sample project',3,'',10,1),(32,'2023-09-05 11:48:07.614626','2','Malware Detection and Analysis',3,'',10,1),(33,'2023-09-05 11:54:38.384413','17','pms',3,'',10,1),(34,'2023-09-05 11:54:38.386867','16','Sample project',3,'',10,1),(35,'2023-09-05 11:54:38.387875','15','Malware Detection and Analysis',3,'',10,1),(36,'2023-09-05 12:12:04.138137','23','Sample project',3,'',10,1),(37,'2023-09-05 12:12:04.140840','22','Sample project',3,'',10,1),(38,'2023-09-05 12:12:04.141353','21','Sample project',3,'',10,1),(39,'2023-09-05 12:12:04.142490','20','Sample project',3,'',10,1),(40,'2023-09-05 12:12:04.143495','19','Sample project',3,'',10,1),(41,'2023-09-05 12:12:04.143495','18','Malware Detection and Analysis',3,'',10,1),(42,'2023-09-06 10:53:51.653096','30','pms',3,'',10,1),(43,'2023-09-06 10:53:51.653096','29','pms',3,'',10,1),(44,'2023-09-06 10:54:06.483790','28','pms',3,'',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'pmsMain','mentor'),(8,'pmsMain','student'),(9,'pmsMain','team'),(10,'pmsStudent','project'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-08-30 05:20:34.337330'),(2,'auth','0001_initial','2023-08-30 05:20:34.736946'),(3,'admin','0001_initial','2023-08-30 05:20:34.828674'),(4,'admin','0002_logentry_remove_auto_add','2023-08-30 05:20:34.840697'),(5,'admin','0003_logentry_add_action_flag_choices','2023-08-30 05:20:34.855287'),(6,'contenttypes','0002_remove_content_type_name','2023-08-30 05:20:34.929113'),(7,'auth','0002_alter_permission_name_max_length','2023-08-30 05:20:34.974867'),(8,'auth','0003_alter_user_email_max_length','2023-08-30 05:20:35.005411'),(9,'auth','0004_alter_user_username_opts','2023-08-30 05:20:35.022988'),(10,'auth','0005_alter_user_last_login_null','2023-08-30 05:20:35.069457'),(11,'auth','0006_require_contenttypes_0002','2023-08-30 05:20:35.071796'),(12,'auth','0007_alter_validators_add_error_messages','2023-08-30 05:20:35.078289'),(13,'auth','0008_alter_user_username_max_length','2023-08-30 05:20:35.135286'),(14,'auth','0009_alter_user_last_name_max_length','2023-08-30 05:20:35.186059'),(15,'auth','0010_alter_group_name_max_length','2023-08-30 05:20:35.210799'),(16,'auth','0011_update_proxy_permissions','2023-08-30 05:20:35.223865'),(17,'auth','0012_alter_user_first_name_max_length','2023-08-30 05:20:35.281707'),(18,'pmsMain','0001_initial','2023-08-30 05:20:35.301932'),(19,'pmsMain','0002_delete_team','2023-08-30 05:20:35.313542'),(20,'pmsMain','0003_initial','2023-08-30 05:20:35.525216'),(21,'pmsMain','0004_mentor_password_student_password_team_password_and_more','2023-08-30 05:20:35.977981'),(22,'sessions','0001_initial','2023-08-30 05:20:35.999935'),(23,'pmsMain','0005_alter_student_roll_no','2023-09-01 10:50:15.225909'),(24,'pmsMain','0006_alter_mentor_roll_no','2023-09-01 18:44:38.563663'),(25,'pmsMain','0007_alter_team_mentor_alter_team_student_1_and_more','2023-09-02 08:49:27.027223'),(26,'pmsMain','0008_alter_student_department','2023-09-02 08:54:09.978421'),(27,'pmsMain','0009_alter_student_department','2023-09-02 20:36:24.168032'),(28,'pmsMain','0010_alter_student_department_alter_team_student_1','2023-09-02 20:38:27.957899'),(29,'pmsMain','0011_alter_team_mentor_alter_team_student_1_and_more','2023-09-02 20:42:20.499225'),(30,'pmsMain','0012_student_team','2023-09-02 20:49:32.634267'),(31,'pmsStudent','0001_initial','2023-09-04 11:18:19.185524'),(32,'pmsStudent','0002_alter_project_member1_alter_project_member2_and_more','2023-09-04 12:28:14.679831'),(33,'pmsStudent','0003_project_project_status','2023-09-05 11:50:22.063608');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('j42m2s8z4r0vc4tfftsuuf7nwp7z6ku7','.eJxVjEEOwiAQRe_C2hCwQKFL956BDDODrdbWFLoy3t026UK3_73_3iLCWvu4Fl7iQKITWpx-twT44GkHdIfpNkucp7oMSe6KPGiR15l4vBzuX6CH0m9vk1VCDt5ScDa4tiH0SJo1ojPt2afgFOZknWq88g1kADaWrSZSm5a2KNTKz1ctceRcRWc-Xx93PsM:1qc24O:SewsxnFR_ssfS2wrHSyvcnxwK0G4wZFZtWgFzOQMjVQ','2023-09-15 11:12:08.117492');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmsmain_mentor`
--

DROP TABLE IF EXISTS `pmsmain_mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pmsmain_mentor` (
  `mentor_id` int NOT NULL AUTO_INCREMENT,
  `roll_no` varchar(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `department` varchar(10) NOT NULL,
  `date_joined` date NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`mentor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmsmain_mentor`
--

LOCK TABLES `pmsmain_mentor` WRITE;
/*!40000 ALTER TABLE `pmsmain_mentor` DISABLE KEYS */;
INSERT INTO `pmsmain_mentor` VALUES (1,'1010','Dr. Ashwini','Pansare','COMPS','2018-08-30','1011'),(2,'2010','Prachi','Patil','COMPS','2020-01-01','2011');
/*!40000 ALTER TABLE `pmsmain_mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmsmain_student`
--

DROP TABLE IF EXISTS `pmsmain_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pmsmain_student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `roll_no` varchar(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `department` varchar(10) NOT NULL,
  `batch` int NOT NULL,
  `password` varchar(15) NOT NULL,
  `team` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmsmain_student`
--

LOCK TABLES `pmsmain_student` WRITE;
/*!40000 ALTER TABLE `pmsmain_student` DISABLE KEYS */;
INSERT INTO `pmsmain_student` VALUES (1,'9580','Vansh','Thakkar','COMPS',2025,'1111',''),(2,'9612','Gaurav','Joshi','COMPS',2025,'2222',''),(3,'9544','Andre','John','COMPS',2025,'3333',''),(4,'9557','Gaurav','Mishra','COMPS',2025,'4444',''),(5,'9572','Punit','Gavali','AIDS',2025,'5555',''),(6,'9998','Ashwin','Shukla','ECS',2025,'6666',''),(7,'9997','Akshat','Mathur','ECS',2025,'7777',''),(8,'9996','Shubham','Shanbhag','ECS',2025,'8888','');
/*!40000 ALTER TABLE `pmsmain_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmsmain_team`
--

DROP TABLE IF EXISTS `pmsmain_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pmsmain_team` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(20) NOT NULL,
  `mentor_id` int DEFAULT NULL,
  `student_1_id` int DEFAULT NULL,
  `student_2_id` int DEFAULT NULL,
  `student_3_id` int DEFAULT NULL,
  `student_4_id` int DEFAULT NULL,
  `password` varchar(15) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `pmsMain_team_mentor_id_f8e10c67_fk_pmsMain_mentor_mentor_id` (`mentor_id`),
  KEY `pmsMain_team_student_1_id_fa9fab59_fk_pmsMain_student_student_id` (`student_1_id`),
  KEY `pmsMain_team_student_2_id_3876dfd6_fk_pmsMain_student_student_id` (`student_2_id`),
  KEY `pmsMain_team_student_3_id_0f93ebd0_fk_pmsMain_student_student_id` (`student_3_id`),
  KEY `pmsMain_team_student_4_id_4a1daa2c_fk_pmsMain_student_student_id` (`student_4_id`),
  CONSTRAINT `pmsMain_team_mentor_id_f8e10c67_fk_pmsMain_mentor_mentor_id` FOREIGN KEY (`mentor_id`) REFERENCES `pmsmain_mentor` (`mentor_id`),
  CONSTRAINT `pmsMain_team_student_1_id_fa9fab59_fk_pmsMain_student_student_id` FOREIGN KEY (`student_1_id`) REFERENCES `pmsmain_student` (`student_id`),
  CONSTRAINT `pmsMain_team_student_2_id_3876dfd6_fk_pmsMain_student_student_id` FOREIGN KEY (`student_2_id`) REFERENCES `pmsmain_student` (`student_id`),
  CONSTRAINT `pmsMain_team_student_3_id_0f93ebd0_fk_pmsMain_student_student_id` FOREIGN KEY (`student_3_id`) REFERENCES `pmsmain_student` (`student_id`),
  CONSTRAINT `pmsMain_team_student_4_id_4a1daa2c_fk_pmsMain_student_student_id` FOREIGN KEY (`student_4_id`) REFERENCES `pmsmain_student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmsmain_team`
--

LOCK TABLES `pmsmain_team` WRITE;
/*!40000 ALTER TABLE `pmsmain_team` DISABLE KEYS */;
INSERT INTO `pmsmain_team` VALUES (3,'Team#1',NULL,NULL,NULL,NULL,NULL,'team@1','team@1'),(4,'Team#2',NULL,NULL,NULL,NULL,NULL,'team@2','team@2');
/*!40000 ALTER TABLE `pmsmain_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmsstudent_project`
--

DROP TABLE IF EXISTS `pmsstudent_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pmsstudent_project` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `project_description` longtext NOT NULL,
  `github_link` varchar(100) NOT NULL,
  `project_type` varchar(20) NOT NULL,
  `project_semesters` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `member1_id` int DEFAULT NULL,
  `member2_id` int DEFAULT NULL,
  `member3_id` int DEFAULT NULL,
  `member4_id` int DEFAULT NULL,
  `roll_no_id` int NOT NULL,
  `project_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `pmsStudent_project_roll_no_id_d9f25490_fk_pmsMain_s` (`roll_no_id`),
  KEY `pmsStudent_project_member1_id_3b3bddad_fk_pmsMain_s` (`member1_id`),
  KEY `pmsStudent_project_member2_id_47759703_fk_pmsMain_s` (`member2_id`),
  KEY `pmsStudent_project_member3_id_2d599505_fk_pmsMain_s` (`member3_id`),
  KEY `pmsStudent_project_member4_id_8f18466a_fk_pmsMain_s` (`member4_id`),
  CONSTRAINT `pmsStudent_project_member1_id_3b3bddad_fk_pmsMain_s` FOREIGN KEY (`member1_id`) REFERENCES `pmsmain_student` (`student_id`),
  CONSTRAINT `pmsStudent_project_member2_id_47759703_fk_pmsMain_s` FOREIGN KEY (`member2_id`) REFERENCES `pmsmain_student` (`student_id`),
  CONSTRAINT `pmsStudent_project_member3_id_2d599505_fk_pmsMain_s` FOREIGN KEY (`member3_id`) REFERENCES `pmsmain_student` (`student_id`),
  CONSTRAINT `pmsStudent_project_member4_id_8f18466a_fk_pmsMain_s` FOREIGN KEY (`member4_id`) REFERENCES `pmsmain_student` (`student_id`),
  CONSTRAINT `pmsStudent_project_roll_no_id_d9f25490_fk_pmsMain_s` FOREIGN KEY (`roll_no_id`) REFERENCES `pmsmain_student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmsstudent_project`
--

LOCK TABLES `pmsstudent_project` WRITE;
/*!40000 ALTER TABLE `pmsstudent_project` DISABLE KEYS */;
INSERT INTO `pmsstudent_project` VALUES (24,'Malware Detection and Analysis','3ff3f','https://chat.openai.com/c/117eeba3-5f82-4d8e-be59-20ddd2b13c77','full_year','{\'semester7\': \'on\', \'semester8\': \'on\'}','2023-09-21','2023-10-07',4,1,3,2,1,'O'),(25,'Sample project','erger','https://chat.openai.com/c/117eeba3-5f82-4d8e-be59-20ddd2b13c77','semester','{\'semester5\': \'on\', \'semester6\': \'on\'}','2023-09-06','2023-09-30',1,2,3,4,1,'P'),(26,'Sample Project 1','4g4g','https://chat.openai.com/c/117eeba3-5f82-4d8e-be59-20ddd2b13c77','semester','{\'semester5\': \'on\', \'semester6\': \'on\'}','2023-09-13','2023-09-29',1,2,3,4,1,'P'),(27,'Sample Project 1','4g4g','https://chat.openai.com/c/117eeba3-5f82-4d8e-be59-20ddd2b13c77','semester','{\'semester5\': \'on\', \'semester6\': \'on\'}','2023-09-13','2023-09-29',1,2,3,4,1,'P'),(31,'pms','gegw','https://chat.openai.com/c/117eeba3-5f82-4d8e-be59-20ddd2b13c77','personal','{\'semester5\': \'on\'}','2023-09-12','2023-09-29',1,2,4,3,1,'O'),(32,'Crawly Web Crawler','vadvgaewfewgae','https://chat.openai.com/c/117eeba3-5f82-4d8e-be59-20ddd2b13c77','semester','{\'semester4\': \'on\'}','2023-08-29','2023-09-22',1,2,4,3,1,'O'),(33,'Crawly Web Crawler','wrgerwgew','https://chat.openai.com/c/117eeba3-5f82-4d8e-be59-20ddd2b13c77','semester','{\'semester4\': \'on\'}','2023-09-04','2023-09-29',2,1,3,4,1,'P');
/*!40000 ALTER TABLE `pmsstudent_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-07  2:10:25
