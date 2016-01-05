-- MySQL dump 10.13  Distrib 5.6.26, for osx10.8 (x86_64)
--
-- Host: localhost    Database: parking
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `park_id` int(11) NOT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `begin_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `p_type` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`s_id`,`park_id`,`begin_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `parks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,1,1,'2016-01-04 01:34:42','2016-01-04 01:35:04','commuter'),(1,1,0,'2016-01-04 01:35:04',NULL,'commuter'),(1,2,0,'2016-01-04 01:34:42','2016-01-04 01:38:31','commuter'),(1,2,1,'2016-01-04 01:38:31','2016-01-04 01:51:18','commuter'),(1,2,0,'2016-01-04 01:51:18',NULL,'commuter'),(2,1,1,'2016-01-04 01:34:42',NULL,'commuter'),(2,2,1,'2016-01-04 01:34:42',NULL,'commuter'),(3,1,1,'2016-01-04 01:34:42','2016-01-04 01:39:41','commuter'),(3,1,0,'2016-01-04 01:39:41','2016-01-04 01:51:42','commuter'),(3,1,1,'2016-01-04 01:51:42',NULL,'commuter'),(3,2,0,'2016-01-04 01:34:42','2016-01-04 01:37:30','commuter'),(3,2,1,'2016-01-04 01:37:30',NULL,'commuter'),(4,1,1,'2016-01-04 01:34:42','2016-01-04 01:57:26','commuter'),(4,1,0,'2016-01-04 01:57:26',NULL,'commuter'),(4,2,1,'2016-01-04 01:34:42','2016-01-04 01:40:10','commuter'),(4,2,0,'2016-01-04 01:40:10',NULL,'commuter'),(5,1,1,'2016-01-04 01:34:42',NULL,'commuter'),(5,2,0,'2016-01-04 01:34:42',NULL,'commuter'),(6,1,0,'2016-01-04 01:34:42',NULL,'commuter'),(6,2,1,'2016-01-04 01:34:42','2016-01-04 01:36:12','commuter'),(6,2,0,'2016-01-04 01:36:12',NULL,'commuter'),(7,1,0,'2016-01-04 01:34:42','2016-01-04 01:36:29','commuter'),(7,1,1,'2016-01-04 01:36:29',NULL,'commuter'),(8,1,0,'2016-01-04 01:34:42','2016-01-04 01:40:21','commuter'),(8,1,1,'2016-01-04 01:40:21',NULL,'commuter');
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-04  1:58:07
