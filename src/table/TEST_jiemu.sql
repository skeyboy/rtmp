-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: TEST
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `jiemu`
--

DROP TABLE IF EXISTS `jiemu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiemu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `call` varchar(45) DEFAULT NULL,
  `app` varchar(45) DEFAULT NULL,
  `path` varchar(256) DEFAULT NULL,
  `tcurl` varchar(45) DEFAULT NULL,
  `recorder` varchar(45) DEFAULT NULL,
  `clientid` int(11) DEFAULT NULL,
  `bytes_out` int(11) DEFAULT NULL,
  `bytes_in` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `addr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiemu`
--

LOCK TABLES `jiemu` WRITE;
/*!40000 ALTER TABLE `jiemu` DISABLE KEYS */;
INSERT INTO `jiemu` VALUES (1,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,523,644,371,'stream153','192.168.3.17'),(2,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,525,644,371,'stream153','192.168.3.17'),(3,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,528,644,371,'stream153','192.168.3.17'),(4,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,529,644,371,'stream153','192.168.3.17'),(5,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,527,644,371,'stream153','192.168.3.17'),(6,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,533,644,371,'stream153','192.168.3.17'),(7,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,535,644,371,'stream153','192.168.3.17'),(8,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,537,644,371,'stream153','192.168.3.17'),(9,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,539,644,371,'stream153','192.168.3.17'),(10,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,541,644,371,'stream153','192.168.3.17'),(11,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,543,644,371,'stream153','192.168.3.17'),(12,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,542,644,371,'stream153','192.168.3.17'),(13,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,547,644,371,'stream153','192.168.3.17'),(14,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,551,644,371,'stream153','192.168.3.17'),(15,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,550,644,371,'stream153','192.168.3.17'),(16,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,549,644,371,'stream153','192.168.3.17'),(17,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,555,644,371,'stream153','192.168.3.17'),(18,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,558,644,371,'stream153','192.168.3.17'),(19,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,557,644,371,'stream153','192.168.3.17'),(20,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,561,525,285,'stream153','192.168.3.17'),(21,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,394,864,602,'stream153','192.168.3.17'),(22,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,436,810,602,'stream153','192.168.3.17'),(23,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,565,761,66726,'stream153','192.168.3.17'),(24,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,567,761,688,'stream153','192.168.3.17'),(25,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,569,761,688,'stream153','192.168.3.17'),(26,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,570,644,371,'stream153','192.168.3.17'),(27,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,573,761,170533,'stream153','192.168.3.17'),(28,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,576,644,371,'stream153','192.168.3.17'),(29,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,575,761,664183,'stream153','192.168.3.17'),(30,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,583,761,688,'stream153','192.168.3.17'),(31,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,585,761,162796,'stream153','192.168.3.17'),(32,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,587,761,224104,'stream153','192.168.3.17'),(33,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,589,761,4171,'stream153','192.168.3.17'),(34,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,592,761,387410,'stream153','192.168.3.17'),(35,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,599,761,688,'stream153','192.168.3.17'),(36,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,618,761,2982935,'stream153','192.168.3.17'),(37,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,621,761,170731,'stream153','192.168.3.17'),(38,NULL,'rtmplive','%2Fusr%2Flocal%2Fvar%2Fwww%2Frec%2Fstream153.flv','rtmp%3A%2F%2F192.168.3.11%3A1935%2Frtmplive',NULL,624,761,1645692,'stream153','192.168.3.17');
/*!40000 ALTER TABLE `jiemu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01 11:09:04
