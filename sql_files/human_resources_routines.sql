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
-- Temporary view structure for view `employeemanager`
--

DROP TABLE IF EXISTS `employeemanager`;
/*!50001 DROP VIEW IF EXISTS `employeemanager`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeemanager` AS SELECT 
 1 AS `employee_id`,
 1 AS `employee_name`,
 1 AS `manager_name`,
 1 AS `manager_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employeedepartment`
--

DROP TABLE IF EXISTS `employeedepartment`;
/*!50001 DROP VIEW IF EXISTS `employeedepartment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeedepartment` AS SELECT 
 1 AS `employee_id`,
 1 AS `employee_name`,
 1 AS `department_id`,
 1 AS `department_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employeeposition`
--

DROP TABLE IF EXISTS `employeeposition`;
/*!50001 DROP VIEW IF EXISTS `employeeposition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeeposition` AS SELECT 
 1 AS `employee_name`,
 1 AS `pay_rate`,
 1 AS `position_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `activeemployees`
--

DROP TABLE IF EXISTS `activeemployees`;
/*!50001 DROP VIEW IF EXISTS `activeemployees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `activeemployees` AS SELECT 
 1 AS `employee_name`,
 1 AS `employee_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `employeemanager`
--

/*!50001 DROP VIEW IF EXISTS `employeemanager`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeemanager` AS select `employee`.`employee_id` AS `employee_id`,`employee`.`employee_name` AS `employee_name`,`m`.`manager_name` AS `manager_name`,`m`.`manager_id` AS `manager_id` from (`employee` join (select `manager`.`manager_id` AS `manager_id`,`manager`.`manager_name` AS `manager_name`,`managedby`.`employee_id` AS `employee_id` from (`manager` join `managedby` on((`manager`.`manager_id` = `managedby`.`manager_id`)))) `M` on((`m`.`employee_id` = `employee`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeedepartment`
--

/*!50001 DROP VIEW IF EXISTS `employeedepartment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeedepartment` AS select `employee`.`employee_id` AS `employee_id`,`employee`.`employee_name` AS `employee_name`,`d`.`department_id` AS `department_id`,`d`.`department_name` AS `department_name` from (`employee` join (select `department`.`department_name` AS `department_name`,`department`.`department_id` AS `department_id`,`positionhistory`.`employee_id` AS `employee_id` from (`positionhistory` join `department` on((`positionhistory`.`department_id` = `department`.`department_id`)))) `D` on((`d`.`employee_id` = `employee`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeeposition`
--

/*!50001 DROP VIEW IF EXISTS `employeeposition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeeposition` AS select `E`.`employee_name` AS `employee_name`,`E`.`pay_rate` AS `pay_rate`,`t`.`position_name` AS `position_name` from (`employee` `E` join (select `H`.`employee_id` AS `employee_id`,`P`.`position_name` AS `position_name` from (`positionhistory` `H` join `position` `P` on((`H`.`position_id` = `P`.`position_id`)))) `T` on((`E`.`employee_id` = `t`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `activeemployees`
--

/*!50001 DROP VIEW IF EXISTS `activeemployees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `activeemployees` AS select `E`.`employee_name` AS `employee_name`,`E`.`employee_id` AS `employee_id` from (`employee` `E` join (select `positionhistory`.`employee_id` AS `employee_id` from `positionhistory` where `positionhistory`.`employee_status_id` in (select `employeestatus`.`employee_status_id` from `employeestatus` where (`employeestatus`.`employee_status` = 'Active'))) `T` on((`t`.`employee_id` = `E`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 12:53:48
