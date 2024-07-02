-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: software_company
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.24.04.1

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
-- Temporary view structure for view `OngoingProjects`
--

DROP TABLE IF EXISTS `OngoingProjects`;
/*!50001 DROP VIEW IF EXISTS `OngoingProjects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OngoingProjects` AS SELECT 
 1 AS `ProjectID`,
 1 AS `ProjectName`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `ClientID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `EmployeeProjectCount`
--

DROP TABLE IF EXISTS `EmployeeProjectCount`;
/*!50001 DROP VIEW IF EXISTS `EmployeeProjectCount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `EmployeeProjectCount` AS SELECT 
 1 AS `EmployeeName`,
 1 AS `ProjectCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `November2024Projects`
--

DROP TABLE IF EXISTS `November2024Projects`;
/*!50001 DROP VIEW IF EXISTS `November2024Projects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `November2024Projects` AS SELECT 
 1 AS `ProjectName`,
 1 AS `ContactName`,
 1 AS `ContactEmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ProjectWithTeamLeads`
--

DROP TABLE IF EXISTS `ProjectWithTeamLeads`;
/*!50001 DROP VIEW IF EXISTS `ProjectWithTeamLeads`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProjectWithTeamLeads` AS SELECT 
 1 AS `ProjectName`,
 1 AS `TeamLead`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ClientContact`
--

DROP TABLE IF EXISTS `ClientContact`;
/*!50001 DROP VIEW IF EXISTS `ClientContact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ClientContact` AS SELECT 
 1 AS `ClientName`,
 1 AS `ContactName`,
 1 AS `ContactEmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `OngoingProjects`
--

/*!50001 DROP VIEW IF EXISTS `OngoingProjects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `OngoingProjects` AS select `Projects`.`ProjectID` AS `ProjectID`,`Projects`.`ProjectName` AS `ProjectName`,`Projects`.`Requirements` AS `Requirements`,`Projects`.`Deadline` AS `Deadline`,`Projects`.`ClientID` AS `ClientID` from `Projects` where (`Projects`.`Deadline` >= curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `EmployeeProjectCount`
--

/*!50001 DROP VIEW IF EXISTS `EmployeeProjectCount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `EmployeeProjectCount` AS select `Employees`.`EmployeeName` AS `EmployeeName`,count(`ProjectTeam`.`ProjectID`) AS `ProjectCount` from (`Employees` join `ProjectTeam` on((`Employees`.`EmployeeID` = `ProjectTeam`.`EmployeeID`))) group by `Employees`.`EmployeeName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `November2024Projects`
--

/*!50001 DROP VIEW IF EXISTS `November2024Projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `November2024Projects` AS select `Projects`.`ProjectName` AS `ProjectName`,`Clients`.`ContactName` AS `ContactName`,`Clients`.`ContactEmail` AS `ContactEmail` from (`Projects` join `Clients` on((`Projects`.`ClientID` = `Clients`.`ClientID`))) where (`Projects`.`Deadline` between '2024-11-01' and '2024-11-30') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProjectWithTeamLeads`
--

/*!50001 DROP VIEW IF EXISTS `ProjectWithTeamLeads`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProjectWithTeamLeads` AS select `Projects`.`ProjectName` AS `ProjectName`,`Employees`.`EmployeeName` AS `TeamLead` from ((`Projects` join `ProjectTeam` on((`Projects`.`ProjectID` = `ProjectTeam`.`ProjectID`))) join `Employees` on((`ProjectTeam`.`EmployeeID` = `Employees`.`EmployeeID`))) where (`ProjectTeam`.`IsTeamLead` = true) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ClientContact`
--

/*!50001 DROP VIEW IF EXISTS `ClientContact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ClientContact` AS select `Clients`.`ClientName` AS `ClientName`,`Clients`.`ContactName` AS `ContactName`,`Clients`.`ContactEmail` AS `ContactEmail` from `Clients` */;
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

-- Dump completed on 2024-07-02 13:20:03
