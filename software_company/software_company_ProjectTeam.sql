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
-- Table structure for table `ProjectTeam`
--

DROP TABLE IF EXISTS `ProjectTeam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProjectTeam` (
  `ProjectID` int NOT NULL,
  `EmployeeID` int NOT NULL,
  `IsTeamLead` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ProjectID`,`EmployeeID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `ProjectTeam_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `Projects` (`ProjectID`),
  CONSTRAINT `ProjectTeam_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `Employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectTeam`
--

LOCK TABLES `ProjectTeam` WRITE;
/*!40000 ALTER TABLE `ProjectTeam` DISABLE KEYS */;
INSERT INTO `ProjectTeam` VALUES (1,1,1),(1,2,0),(1,3,0),(2,2,1),(2,4,0),(2,5,0),(3,1,1),(3,3,0),(3,6,0),(4,2,1),(4,4,0),(4,5,0),(5,1,1),(5,6,0),(5,7,0),(6,2,1),(6,3,0),(6,4,0),(7,1,1),(7,6,0),(7,7,0),(8,2,1),(8,4,0),(8,5,0),(9,1,1),(9,3,0),(9,6,0),(10,2,1),(10,4,0),(10,7,0);
/*!40000 ALTER TABLE `ProjectTeam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 13:20:03
