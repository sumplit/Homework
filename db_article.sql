-- MySQL dump 10.13  Distrib 5.1.41, for Win32 (ia32)
--
-- Host: localhost    Database: article
-- ------------------------------------------------------
-- Server version	5.1.41

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
-- Table structure for table `visit_article`
--

DROP TABLE IF EXISTS `visit_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `time_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_article`
--

LOCK TABLES `visit_article` WRITE;
/*!40000 ALTER TABLE `visit_article` DISABLE KEYS */;
INSERT INTO `visit_article` VALUES (1,1,2,'2015-04-21 14:01:23',NULL),(2,1,3,'2015-04-21 14:01:23',NULL),(3,1,5,'2015-04-21 14:01:23',NULL),(4,1,7,'2015-04-21 14:01:23',NULL),(5,1,9,'2015-04-21 14:01:23',NULL),(6,2,3,'2015-04-21 14:01:23',NULL),(7,2,5,'2015-04-21 14:01:23',NULL),(8,2,7,'2015-04-21 14:01:23',NULL),(9,2,8,'2015-04-21 14:01:23',NULL),(10,3,3,'2015-04-21 14:01:23',NULL),(11,3,5,'2015-04-21 14:01:23',NULL),(12,3,9,'2015-04-21 14:01:23',NULL),(13,4,3,'2015-04-21 14:01:23',NULL),(14,4,9,'2015-04-21 14:01:23',NULL),(15,4,11,'2015-04-21 14:01:23',NULL),(16,5,3,'2015-04-21 14:01:23',NULL),(17,5,9,'2015-04-21 14:01:23',NULL),(18,5,12,'2015-04-21 14:01:23',NULL);
/*!40000 ALTER TABLE `visit_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'article'
--
/*!50003 DROP PROCEDURE IF EXISTS `getRecommended` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getRecommended`(IN param1 INT)
BEGIN
SELECT COUNT(article_id) jumlah , article_id
FROM visit_article WHERE user_id IN 
(SELECT user_id FROM visit_article WHERE article_id =param1) 
GROUP BY article_id ORDER BY jumlah DESC LIMIT 1;
END */;;
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

-- Dump completed on 2015-04-23 21:02:58
