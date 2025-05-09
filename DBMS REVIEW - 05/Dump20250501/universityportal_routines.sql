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
-- Temporary view structure for view `teacher_subjects`
--

DROP TABLE IF EXISTS `teacher_subjects`;
/*!50001 DROP VIEW IF EXISTS `teacher_subjects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teacher_subjects` AS SELECT 
 1 AS `teacher_id`,
 1 AS `teacher_name`,
 1 AS `subject_name`,
 1 AS `course_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `exam_details`
--

DROP TABLE IF EXISTS `exam_details`;
/*!50001 DROP VIEW IF EXISTS `exam_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `exam_details` AS SELECT 
 1 AS `exam_date`,
 1 AS `subject_name`,
 1 AS `teacher_name`,
 1 AS `course_name`,
 1 AS `department_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_fee_status`
--

DROP TABLE IF EXISTS `student_fee_status`;
/*!50001 DROP VIEW IF EXISTS `student_fee_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_fee_status` AS SELECT 
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `course_name`,
 1 AS `amount`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `teacher_subjects`
--

/*!50001 DROP VIEW IF EXISTS `teacher_subjects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teacher_subjects` AS select `t`.`teacher_id` AS `teacher_id`,`t`.`name` AS `teacher_name`,`s`.`subject_name` AS `subject_name`,`c`.`course_name` AS `course_name` from ((`teacher` `t` join `subject` `s` on((`t`.`teacher_id` = `s`.`teacher_id`))) join `course` `c` on((`s`.`course_id` = `c`.`course_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `exam_details`
--

/*!50001 DROP VIEW IF EXISTS `exam_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exam_details` AS select `es`.`exam_date` AS `exam_date`,`s`.`subject_name` AS `subject_name`,`t`.`name` AS `teacher_name`,`c`.`course_name` AS `course_name`,`d`.`department_name` AS `department_name` from ((((`exam_schedule` `es` join `subject` `s` on((`es`.`subject_id` = `s`.`subject_id`))) join `teacher` `t` on((`s`.`teacher_id` = `t`.`teacher_id`))) join `course` `c` on((`es`.`course_id` = `c`.`course_id`))) join `department` `d` on((`c`.`department_id` = `d`.`department_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_fee_status`
--

/*!50001 DROP VIEW IF EXISTS `student_fee_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_fee_status` AS select `s`.`student_id` AS `student_id`,`s`.`name` AS `student_name`,`c`.`course_name` AS `course_name`,`f`.`amount` AS `amount`,`f`.`status` AS `status` from ((`student` `s` join `fee` `f` on((`s`.`student_id` = `f`.`student_id`))) join `course` `c` on((`s`.`course_id` = `c`.`course_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'universityportal'
--

--
-- Dumping routines for database 'universityportal'
--
/*!50003 DROP PROCEDURE IF EXISTS `low_stock_books` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `low_stock_books`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE book_title VARCHAR(100);
    DECLARE available INT;

    DECLARE cur CURSOR FOR
    SELECT title, available_copies FROM library WHERE available_copies < 3;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO book_title, available;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('Book "', book_title, '" has only ', available, ' copies left.') AS alert;
    END LOOP;
    CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `notify_pending_fees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `notify_pending_fees`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_name VARCHAR(40);
    DECLARE student_roll VARCHAR(40);
    
    DECLARE fee_cursor CURSOR FOR 
    SELECT s.name, s.rollno FROM student s
    JOIN fee f ON s.student_id = f.student_id
    WHERE f.status = 'pending';
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN fee_cursor;
    
    read_loop: LOOP
        FETCH fee_cursor INTO student_name, student_roll;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Display a message (or send a notification in a real system)
        SELECT CONCAT('Reminder: Student ', student_name, ' (', student_roll, ') has pending fees.') AS notification;
    END LOOP;
    
    CLOSE fee_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upcoming_exams` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upcoming_exams`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_name VARCHAR(40);
    DECLARE exam_date DATE;
    DECLARE subject_name VARCHAR(255);
    
    DECLARE exam_cursor CURSOR FOR 
    SELECT s.name, es.exam_date, sub.subject_name 
    FROM student s
    JOIN study_plan sp ON s.student_id = sp.student_id
    JOIN subject sub ON sp.subject_id = sub.subject_id
    JOIN exam_schedule es ON sub.subject_id = es.subject_id
    WHERE es.exam_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN exam_cursor;
    
    read_loop: LOOP
        FETCH exam_cursor INTO student_name, exam_date, subject_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Display the notification message
        SELECT CONCAT('Reminder: ', student_name, ' has an upcoming exam on ', exam_date, ' for subject ', subject_name) AS notification;
    END LOOP;
    
    CLOSE exam_cursor;
END ;;
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

-- Dump completed on 2025-05-01 17:06:09
