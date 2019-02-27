-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: gamebook
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `eventID` int(11) NOT NULL AUTO_INCREMENT,
  `eName` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `public` int(1) DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `numPeople` int(3) DEFAULT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Game Night','Game Night','Eau Claire',1,'00:00:00','00:00:00','2018-01-01',NULL,5);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `game` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(30) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `aveRating` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gameID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'No Many Sky','Video',NULL,NULL),(2,'Fortnite','Video',NULL,NULL),(3,'Rocket League','Video',NULL,NULL),(4,'Modern Warfare','Video',NULL,NULL),(5,'PubG','Video',NULL,NULL),(6,'Resident Evil 2','Video',NULL,NULL),(7,'Poker','Card',NULL,NULL),(26,'Dark Souls 1','Video',NULL,NULL),(27,'Dark Souls 2','Video',NULL,NULL),(28,'Dark Souls 3','Video',NULL,NULL),(29,'Darkest Dungeon','Video',NULL,NULL),(30,'Dungeons and Dragons','P&P',NULL,NULL),(31,'Bloodborne','Video',NULL,NULL),(32,'Vampire: The Masquerade','LARP',NULL,NULL),(33,'Rummie Cube','Tabletop',NULL,NULL),(34,'World of Warcraft','Video',NULL,NULL),(35,'Monopoly','Tabletop',NULL,NULL),(36,'Sorry','Tabletop',NULL,NULL),(37,'Scrabble','Tabletop',NULL,NULL),(38,'Xcom: Enemy Unknown','Video',NULL,NULL),(39,'Rise of the Tomb Raider','Video',NULL,NULL),(40,'Uncharted 4','Video',NULL,NULL),(41,'Resident Evi 2: Remaster','Video',NULL,NULL),(42,'Battleborn','Video',NULL,NULL),(43,'Overwatch','Video',NULL,NULL),(44,'Anthem','Video',NULL,NULL),(45,'Destiny','Video',NULL,NULL),(46,'Rummy','Card',NULL,NULL),(47,'Betrayal at House on the Hill','Tabletop',NULL,NULL),(48,'Cards Against Humanity','Card',NULL,NULL);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `group` (
  `groupID` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'DnDers of CV','We play DND yo!'),(2,'Tabletops 4us','Tabletop games are what we do!'),(3,'LARP Central','Name sez it all'),(4,'SoulsBorne','Miyazaki is god.'),(5,'Fortnite builders incorporated','18+ only please!'),(6,'Scary stuff!','Scary video games.');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(45) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) DEFAULT NULL,
  `pWord` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mdog','Mandy','Wagner','password1','mwagner40@student.cvtc.edu',NULL,'Eau Claire','WI',54703),(2,'MastaHunta','Hunter','Heimstead','password2','hheimstead3@student.cvtc.edu',19,NULL,NULL,NULL),(3,'Aarizzle','Aaron','Riedel','password3','ariedel2@cvtc.edu',20,'Chippewa Falls','WI',NULL),(4,'CrissCross','Chris','Nimtz','password4','cnimtz1@student.cvtc.edu',NULL,NULL,NULL,NULL),(5,'XxTeemoxX','Timothy','Hartwig','password5','thartwig2@student.cvtc.edu',NULL,NULL,NULL,NULL),(6,'JessieWineTester','Jesse','Willson','password6','jwilson49@student.cvtc.edu',NULL,NULL,NULL,NULL),(7,'WolfyConn','Conor','Wolfgram','password7','cwolfgram1@student.cvtc.edu',NULL,NULL,NULL,NULL),(8,'ManiacMatt','Matthew','Marx','hunter2','mmarx@cvtc.edu',37,'Elk Mound','WI',54739),(9,'CooleyThanU','Josh','Cooley','password8','jcooley7@cvtc.edu',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userevent`
--

DROP TABLE IF EXISTS `userevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userevent` (
  `eventID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`eventID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userevent`
--

LOCK TABLES `userevent` WRITE;
/*!40000 ALTER TABLE `userevent` DISABLE KEYS */;
INSERT INTO `userevent` VALUES (1,8);
/*!40000 ALTER TABLE `userevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergame`
--

DROP TABLE IF EXISTS `usergame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usergame` (
  `userID` int(11) NOT NULL,
  `gameID` int(11) NOT NULL,
  `userRating` int(11) DEFAULT NULL,
  `userReview` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`,`gameID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergame`
--

LOCK TABLES `usergame` WRITE;
/*!40000 ALTER TABLE `usergame` DISABLE KEYS */;
INSERT INTO `usergame` VALUES (1,1,NULL,NULL),(1,2,NULL,NULL),(1,3,NULL,NULL),(1,4,NULL,NULL),(1,5,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(2,26,NULL,NULL),(2,29,NULL,NULL),(3,26,NULL,NULL),(3,28,NULL,NULL),(3,30,NULL,NULL),(3,35,NULL,NULL),(3,36,NULL,NULL),(3,37,NULL,NULL),(3,38,NULL,NULL),(3,39,NULL,NULL),(3,40,NULL,NULL),(3,41,NULL,NULL),(3,42,NULL,NULL),(3,43,NULL,NULL),(3,44,NULL,NULL),(3,45,NULL,NULL),(4,26,NULL,NULL),(4,30,NULL,NULL),(4,31,NULL,NULL),(5,30,NULL,NULL),(5,32,NULL,NULL),(5,33,NULL,NULL),(5,34,NULL,NULL),(6,35,NULL,NULL),(6,46,NULL,NULL),(6,47,NULL,NULL),(6,48,NULL,NULL),(8,26,NULL,NULL),(8,27,NULL,NULL),(8,28,NULL,NULL),(8,29,NULL,NULL),(8,30,NULL,NULL),(8,31,NULL,NULL),(8,34,NULL,NULL),(8,35,NULL,NULL),(8,38,NULL,NULL),(8,44,NULL,NULL);
/*!40000 ALTER TABLE `usergame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usergroup` (
  `groupID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`groupID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
INSERT INTO `usergroup` VALUES (1,8),(2,8),(3,5),(4,2),(4,3),(4,8),(5,1),(6,8);
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-27 13:36:19
