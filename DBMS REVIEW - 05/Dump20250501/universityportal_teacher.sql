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
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `empID` varchar(40) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `class_X` varchar(10) DEFAULT NULL,
  `class_XII` varchar(10) DEFAULT NULL,
  `aadhar` varchar(20) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `experience_years` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `empID` (`empID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `aadhar` (`aadhar`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,2,'Jane Smith','John Smith','EMP001','1980-05-15','123 Main St, City, Country','jane.smith@example.com','85%','90%','123456789012','Ph.D in Computer Science',1,10),(2,5,'Bob Jones','Mike Jones','EMP002','1975-08-20','456 Elm St, City, Country','bob.jones@example.com','80%','85%','234567890123','M.Tech in Electrical Engineering',2,15),(3,7,'Diana Ross','David Ross','EMP003','1985-03-25','789 Oak St, City, Country','diana.ross@example.com','90%','95%','345678901234','Ph.D in Mechanical Engineering',3,8),(4,12,'Hannah Clark','Henry Clark','EMP004','1978-11-10','101 Pine St, City, Country','hannah.clark@example.com','88%','92%','456789012345','M.Sc in Mathematics',4,12),(5,14,'Linda Martin','Louis Martin','EMP005','1982-07-30','202 Maple St, City, Country','linda.martin@example.com','82%','87%','567890123456','Ph.D in Physics',5,9),(6,16,'Nancy Anderson','Neil Anderson','EMP006','1970-12-05','303 Cedar St, City, Country','nancy.anderson@example.com','91%','94%','678901234567','M.Sc in Chemistry',6,20),(7,18,'Patricia White','Paul White','EMP007','1988-09-12','404 Birch St, City, Country','patricia.white@example.com','89%','93%','789012345678','Ph.D in Biology',7,7),(8,20,'Rachel Brown','Richard Brown','EMP008','1983-04-18','505 Walnut St, City, Country','rachel.brown@example.com','84%','89%','890123456789','M.A in English',8,11),(9,22,'Tina Garcia','Tony Garcia','EMP009','1976-06-22','606 Spruce St, City, Country','tina.garcia@example.com','86%','91%','901234567890','Ph.D in History',9,14),(10,24,'Victoria Hernandez','Victor Hernandez','EMP010','1987-02-14','707 Fir St, City, Country','victoria.hernandez@example.com','83%','88%','012345678901','M.A in Economics',10,6),(11,26,'Xena Lopez','Xavier Lopez','EMP011','1979-10-08','808 Ash St, City, Country','xena.lopez@example.com','87%','92%','123450987654','MBA in Business Administration',11,13),(12,28,'Zachary Rodriguez','Zane Rodriguez','EMP012','1984-01-25','909 Beech St, City, Country','zachary.rodriguez@example.com','90%','95%','234561098765','Ph.D in Psychology',12,8),(13,30,'Amy Carter','Adam Carter','EMP013','1981-08-03','1010 Cedar St, City, Country','amy.carter@example.com','85%','90%','345672109876','M.Sc in Sociology',13,10);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 17:06:07
