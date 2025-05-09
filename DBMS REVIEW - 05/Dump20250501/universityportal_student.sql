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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `rollno` varchar(40) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `class_X` varchar(10) DEFAULT NULL,
  `class_XII` varchar(10) DEFAULT NULL,
  `aadhar` varchar(20) NOT NULL,
  `course_id` int NOT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `admission_year` year DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `rollno` (`rollno`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `aadhar` (`aadhar`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,1,'John Doe','Michael Doe','S001','2000-01-15','123 Main St, City, Country','john.doe@example.com','85%','90%','123456789012',1,'Computer Science',2020),(2,4,'Alice Wang','David Wang','S002','2001-03-20','456 Elm St, City, Country','alice.wang@example.com','80%','85%','234567890123',2,'Electrical Engineering',2020),(3,6,'Charlie Brown','Chris Brown','S003','2000-07-25','789 Oak St, City, Country','charlie.brown@example.com','90%','95%','345678901234',3,'Mechanical Engineering',2020),(4,8,'Edward Nguyen','Eric Nguyen','S004','2001-05-10','101 Pine St, City, Country','edward.nguyen@example.com','88%','92%','456789012345',4,'Mathematics',2020),(5,10,'George Harris','Greg Harris','S005','2000-11-30','202 Maple St, City, Country','george.harris@example.com','82%','87%','567890123456',5,'Physics',2020),(6,13,'Ian Miller','Ivan Miller','S006','2001-09-12','303 Cedar St, City, Country','ian.miller@example.com','91%','94%','678901234567',6,'Chemistry',2020),(7,15,'Kevin Lee','Ken Lee','S007','2000-04-18','404 Birch St, City, Country','kevin.lee@example.com','89%','93%','789012345678',7,'Biology',2020),(8,17,'Michael Taylor','Mike Taylor','S008','2001-06-22','505 Walnut St, City, Country','michael.taylor@example.com','84%','89%','890123456789',8,'English',2020),(9,19,'Oliver Thomas','Oscar Thomas','S009','2000-02-14','606 Spruce St, City, Country','oliver.thomas@example.com','86%','91%','901234567890',9,'History',2020),(10,21,'Quincy Adams','Quinn Adams','S010','2001-10-08','707 Fir St, City, Country','quincy.adams@example.com','83%','88%','012345678901',10,'Economics',2020),(11,23,'Steven Jones','Sam Jones','S011','2000-01-25','808 Ash St, City, Country','steven.jones@example.com','87%','92%','123450987654',11,'Business Administration',2020),(12,25,'Umar Khan','Usman Khan','S012','2001-08-03','909 Beech St, City, Country','umar.khan@example.com','90%','95%','234561098765',12,'Psychology',2020),(13,27,'William Martinez','Wade Martinez','S013','2000-12-05','1010 Cedar St, City, Country','william.martinez@example.com','85%','90%','345672109876',13,'Sociology',2020),(14,29,'Yara Gonzalez','Yvonne Gonzalez','S014','2001-04-18','1111 Pine St, City, Country','yara.gonzalez@example.com','88%','93%','456783210987',14,'Political Science',2020),(17,371,'Meena Kumari','Ravi Kumari','BTECH2025','2005-08-20',NULL,'meena@example.com',NULL,NULL,'987654321098',1,NULL,NULL),(18,373,'Rajan Singh','Mahesh Singh','BTECH2026','2005-07-10',NULL,'rajan@example.com',NULL,NULL,'987654321099',1,NULL,NULL),(19,374,'Neha Rani','Suraj Rani','BTECH2027','2004-12-12',NULL,'neha@example.com',NULL,NULL,'987654321100',1,NULL,NULL),(20,378,'Arjun Verma','Suresh Verma','BTECH2028','2004-09-15',NULL,'arjun@example.com',NULL,NULL,'987654321101',1,NULL,NULL),(21,379,'Sana Iqbal','Imran Iqbal','BTECH2029','2005-03-21',NULL,'sana@example.com',NULL,NULL,'987654321102',1,NULL,NULL),(22,380,'Vicky Mehra','Raj Mehra','BTECH2030','2004-11-02',NULL,'vicky@example.com',NULL,NULL,'987654321103',1,NULL,NULL),(23,381,'Tanya Sharma','Amit Sharma','BTECH2031','2005-06-11',NULL,'tanya@example.com',NULL,NULL,'987654321104',1,NULL,NULL),(24,382,'Dev Joshi','Kiran Joshi','BTECH2032','2005-01-30',NULL,'dev@example.com',NULL,NULL,'987654321105',1,NULL,NULL),(25,383,'Isha Kapoor','Ramesh Kapoor','BTECH2033','2005-04-18',NULL,'isha@example.com',NULL,NULL,'987654321106',1,NULL,NULL),(26,384,'Aman Ali','Salim Ali','BTECH2034','2004-10-05',NULL,'aman@example.com',NULL,NULL,'987654321107',1,NULL,NULL),(27,385,'Simran Kaur','Harjeet Kaur','BTECH2035','2005-02-19',NULL,'simran@example.com',NULL,NULL,'987654321108',1,NULL,NULL),(28,386,'Rohit Yadav','Dinesh Yadav','BTECH2036','2005-05-05',NULL,'rohit@example.com',NULL,NULL,'987654321109',1,NULL,NULL),(29,387,'Anita Desai','Rakesh Desai','BTECH2037','2004-06-22',NULL,'anita@example.com',NULL,NULL,'987654321110',1,NULL,NULL),(30,388,'Manoj Kumar','Raghav Kumar','BTECH2038','2005-03-14',NULL,'manoj@example.com',NULL,NULL,'987654321111',1,NULL,NULL),(31,389,'Zoya Khan','Azhar Khan','BTECH2039','2005-11-09',NULL,'zoya@example.com',NULL,NULL,'987654321112',1,NULL,NULL),(32,390,'Naveen Rathi','Jitendra Rathi','BTECH2040','2005-10-03',NULL,'naveen@example.com',NULL,NULL,'987654321113',1,NULL,NULL),(33,391,'Kajal Thakur','Vinod Thakur','BTECH2041','2004-07-27',NULL,'kajal@example.com',NULL,NULL,'987654321114',1,NULL,NULL),(34,392,'Rajat Bansal','Deepak Bansal','BTECH2042','2005-01-11',NULL,'rajat@example.com',NULL,NULL,'987654321115',1,NULL,NULL),(35,393,'Fatima Sheikh','Habib Sheikh','BTECH2043','2005-09-25',NULL,'fatima@example.com',NULL,NULL,'987654321116',1,NULL,NULL),(36,394,'Yash Mittal','Girish Mittal','BTECH2044','2004-08-08',NULL,'yash@example.com',NULL,NULL,'987654321117',1,NULL,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
