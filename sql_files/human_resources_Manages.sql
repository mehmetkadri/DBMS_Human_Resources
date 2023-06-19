-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: human_resources
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `Manages`
--

DROP TABLE IF EXISTS `Manages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manages` (
  `manager_id` bigint NOT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`manager_id`,`department_id`),
  KEY `fk_Manager_has_Department_Department1_idx` (`department_id`),
  KEY `fk_Manager_has_Department_Manager1_idx` (`manager_id`),
  CONSTRAINT `fk_Manager_has_Department_Department1` FOREIGN KEY (`department_id`) REFERENCES `Department` (`department_id`),
  CONSTRAINT `fk_Manager_has_Department_Manager1` FOREIGN KEY (`manager_id`) REFERENCES `Manager` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manages`
--

LOCK TABLES `Manages` WRITE;
/*!40000 ALTER TABLE `Manages` DISABLE KEYS */;
INSERT INTO `Manages` VALUES (1,1),(2,1),(3,1),(9,1),(10,1),(13,1),(17,1),(2,2),(6,2),(7,2),(9,2),(1,3),(2,3),(4,3),(5,3),(7,3),(13,3),(21,3),(3,4),(5,4),(10,4),(0,5),(2,5),(7,5),(11,5),(12,5),(14,5),(16,5),(18,5),(19,5),(20,5),(22,5),(30,5),(39,5),(0,6),(1,6),(2,6),(5,6),(13,6),(15,6),(17,6),(21,6);
/*!40000 ALTER TABLE `Manages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 12:53:47
