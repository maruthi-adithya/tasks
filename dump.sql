-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: localhost    Database: zargetabtest
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `segmentcategory`
--

DROP TABLE IF EXISTS `SegmentCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SegmentCategory` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SEGMENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segmentcategory`
--

LOCK TABLES `SegmentCategory` WRITE;
/*!40000 ALTER TABLE `segmentcategory` DISABLE KEYS */;
INSERT INTO `SegmentCategory` VALUES (1,'Mac OS'),(2,'Windows'),(3,'Linux'),(4,'iOS'),(5,'Android'),(6,'Chrome OS'),(7,'Sony Playstation'),(8,'Blackberry OS '),(9,'Symbian '),(10,'XBox OS '),(11,'Web OS '),(12,'Nintendo Wii '),(13,'Bada '),(14,'Sony Ericsson '),(15,'SunOS '),(16,'Series 40 '),(17,'Unknown '),(18,'Social ');
/*!40000 ALTER TABLE `segmentcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segmentvalue`
--

DROP TABLE IF EXISTS `SegmentValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SegmentValue` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SEGMENTID` bigint(20) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SEGMENTID` (`SEGMENTID`),
  CONSTRAINT `SegmentValue_ibfk_1` FOREIGN KEY (`SEGMENTID`) REFERENCES `segmentcategory` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segmentvalue`
--

LOCK TABLES `SegmentValue` WRITE;
/*!40000 ALTER TABLE `segmentvalue` DISABLE KEYS */;
INSERT INTO `SegmentValue` VALUES (1,1,'MAC OS X'),(2,1,'MAC OS X(iPhone)'),(3,1,'MAC OS X(iPad)'),(4,1,'MAC OS '),(5,1,'MAC OS(iPod) '),(6,2,'Windows 7 '),(7,2,'Windows 10 '),(8,2,'Windows 8.1 '),(9,2,'Windows XP '),(10,2,'Windows 8 '),(11,2,'Windows Phone 8.1 '),(12,2,'Windows Vista '),(13,2,'Windows Phone 8 '),(14,2,'Windows'),(15,2,'Windows 2000'),(16,2,'Windows Phone 7'),(17,2,'Windows 98'),(18,2,'Windows Phone'),(19,2,'Windows Mobile'),(20,2,'Windows RT'),(21,3,'Linux'),(22,3,'MeeGo'),(23,3,'Ubuntu'),(24,3,'Maemo'),(25,3,'Linux(Kindle 3)'),(26,3,'Fedora'),(27,4,'iOS 9(iPhone)'),(28,4,'iOS 9(iPad)'),(29,4,'iOS 7(iPhone)'),(30,4,'iOS 8.1(iPhone)'),(31,4,'iOS 7(iPad)'),(32,4,'iOS 8.4(iPhone)'),(33,4,'iOS 8.4(iPad)'),(34,4,'iOS 8.1(iPad)'),(35,4,'iOS 8.3(iPhone)'),(36,4,'iOS 8.3(iPad)'),(37,4,'iOS 6(iPad)'),(38,4,'iOS 8.2(iPhone)'),(39,4,'iOS 8.2(iPad)'),(40,4,'iOS 8(iPhone)'),(41,4,'iOS 6(iPhone)'),(42,4,'iOS 8(iPad)'),(43,4,'iOS 4(iPhone)'),(44,4,'iOS 5(iPhone)'),(45,4,'iOS'),(46,5,'Android Mobile'),(47,5,'Android 5.x'),(48,5,'Android 4.x'),(49,5,'Android 4.x Tablet'),(50,5,'Android 5.x Tablet'),(51,5,'Android'),(52,5,'Android 2.x'),(53,5,'Android Tablet'),(54,5,'Android 3.x Tablet'),(55,5,'Android 2.x Tablet'),(56,5,'Android 1.x'),(57,5,'Android (Google TV)'),(58,6,'Chrome OS'),(59,7,'Sony Playstation'),(60,8,'BlackBerry 7'),(61,8,'BlackBerryOS'),(62,8,'BlackBerry Tablet OS'),(63,8,'BlackBerry 6'),(64,8,'BlackBerry OS'),(65,9,'Symbian OS'),(66,9,'Symbian OS 9.x'),(67,9,'Symbian OS 8.x'),(68,9,'Symbian OS 6.x'),(69,10,'Xbox OS'),(70,11,'Web OS'),(71,12,'Nintendo Wii'),(72,13,'Bada'),(73,14,'Sony Ericsson'),(74,15,'SunOS'),(75,16,'Series 40'),(76,17,'Unknown'),(77,17,'Unknown mobile'),(78,17,'Other'),(79,17,'Unknown Tablet'),(80,18,'www.facebook.com'),(81,18,'www.t.co'),(82,18,'www.quora.com'),(83,18,'www.t.umblr.com'),(84,18,'www.in.pinterest.com'),(85,18,'www.plus.google.com'),(86,18,'www.linkedin.com'),(87,18,'www.reddit.com'),(88,18,'www.taringa.net'),(89,18,'www.redirect.foursquare.com'),(90,18,'www.vine.co'),(91,18,'www.digg.com'),(92,18,'www.instagram.com'),(93,18,'www.yelp.com');
/*!40000 ALTER TABLE `segmentvalue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-28 15:44:18
