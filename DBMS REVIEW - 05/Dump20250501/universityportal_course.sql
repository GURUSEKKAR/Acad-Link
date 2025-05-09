-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: universityportal
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `department_id` int NOT NULL,
  `duration_years` int NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `fk_course_department` (`department_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_course_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'B.Tech in Computer Science',1,4),(2,'B.Tech in Electrical Engineering',2,4),(3,'B.Tech in Mechanical Engineering',3,4),(4,'B.Sc in Mathematics',4,3),(5,'B.Sc in Physics',5,3),(6,'B.Sc in Chemistry',6,3),(7,'B.Sc in Biology',7,3),(8,'B.A in English',8,3),(9,'B.A in History',9,3),(10,'B.A in Economics',10,3),(11,'MBA in Business Administration',11,2),(12,'B.Sc in Psychology',12,3),(13,'B.Sc in Sociology',13,3),(14,'B.A in Political Science',14,3),(15,'B.F.A in Art and Design',15,4),(16,'B.Mus in Music',16,4),(17,'B.A in Philosophy',17,3),(18,'B.Sc in Environmental Science',18,3),(19,'B.Tech in Civil Engineering',19,4),(20,'B.Tech in Chemical Engineering',20,4),(21,'B.Tech in Information Technology',21,4),(22,'M.Sc in Data Science',22,2),(23,'M.Tech in Artificial Intelligence',23,2),(24,'M.Tech in Robotics',24,2),(25,'M.Sc in Biotechnology',25,2),(26,'B.Tech in Aerospace Engineering',26,4),(27,'B.Arch in Architecture',27,5),(28,'LL.B in Law',28,3),(29,'M.B.B.S in Medicine',29,5),(30,'B.Pharm in Pharmacy',30,4);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 17:06:08
