-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: geawd
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `materialInvoice`
--

DROP TABLE IF EXISTS `materialInvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialInvoice` (
  `invoiceId` int(7) NOT NULL AUTO_INCREMENT,
  `invoiceNo` varchar(10) COLLATE utf8_bin NOT NULL,
  `supplierId` int(7) NOT NULL,
  `invoiceDate` date NOT NULL,
  `receivedBy` int(7) NOT NULL,
  PRIMARY KEY (`invoiceId`),
  KEY `fk_materialInvoice1` (`supplierId`),
  KEY `fk_materialInvoice2` (`receivedBy`),
  CONSTRAINT `fk_materialInvoice1` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`supplierId`),
  CONSTRAINT `fk_materialInvoice2` FOREIGN KEY (`receivedBy`) REFERENCES `staff` (`staffId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialInvoice`
--

LOCK TABLES `materialInvoice` WRITE;
/*!40000 ALTER TABLE `materialInvoice` DISABLE KEYS */;
INSERT INTO `materialInvoice` VALUES (4,'2222222222',5,'2018-04-16',1),(5,'212121',1,'2018-04-15',1),(6,'34343434',5,'2018-04-15',2),(7,'123455',2,'2018-04-15',3),(8,'643111',6,'2018-04-16',6),(10,'345765345',3,'2018-04-15',1),(11,'123123123',3,'2018-04-14',2),(12,'1231231231',6,'2018-04-15',3),(13,'0000000001',6,'2018-04-15',1),(14,'123123',2,'2018-04-15',4),(15,'3333333333',4,'2018-04-15',2),(16,'123',2,'2018-04-15',2),(17,'3424234243',2,'2021-05-07',1);
/*!40000 ALTER TABLE `materialInvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialList`
--

DROP TABLE IF EXISTS `materialList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialList` (
  `itemId` int(7) NOT NULL AUTO_INCREMENT,
  `stockNo` varchar(30) COLLATE utf8_bin NOT NULL,
  `itemName` varchar(50) COLLATE utf8_bin NOT NULL,
  `unitId` int(7) NOT NULL,
  `reorderPoint` int(7) NOT NULL,
  `startBalance` int(7) NOT NULL,
  `removeStatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `specName` (`itemName`,`unitId`),
  UNIQUE KEY `unique_materialList1` (`itemName`),
  UNIQUE KEY `stockNo` (`stockNo`),
  KEY `fk2` (`unitId`),
  CONSTRAINT `fk_materialSpec1` FOREIGN KEY (`unitId`) REFERENCES `unit` (`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialList`
--

LOCK TABLES `materialList` WRITE;
/*!40000 ALTER TABLE `materialList` DISABLE KEYS */;
INSERT INTO `materialList` VALUES (1,'GI-P20-40','GI Pipe, 20mm, Sch. 40',1,30,100,0),(2,'GI-P25-40','GI Pipe, 25mm, Sch. 40',1,30,100,0),(3,'GI-P32-40','GI Pipe, 32mm, Sch. 40',1,30,100,0),(4,'GI-P40-40','GI Pipe, 40mm, Sch. 40',1,30,100,0),(5,'GI-P50-40','GI Pipe, 50mm, Sch. 40',1,30,100,0),(22,'GI-P63-40','GI Pipe, 63mm, Sch. 40',1,30,100,0),(23,'GI-P75-40','GI Pipe, 75mm, Sch. 40',1,30,100,0),(24,'GI-P100-40','GI Pipe, 100mm, Sch. 40',1,30,100,0),(25,'GI-C20','GI Pipe, Coupling, 20mm',1,30,100,0),(26,'GI-C25','GI Pipe, Coupling, 25mm',1,30,100,0),(27,'GI-C32','GI Pipe, Coupling, 32mm',1,30,33,0),(28,'GI-C40','GI Pipe, Coupling, 40mm',1,30,100,0),(29,'GI-C50','GI Pipe, Coupling, 50mm',1,30,100,0),(31,'GI-C63','GI Pipe, Coupling, 63mm',1,30,100,0),(37,'GI-C75','GI Pipe, Coupling, 75mm',1,30,100,0),(45,'GI-C100','GI Pipe, Coupling, 100mm',1,30,100,1),(46,'GI-N20-4-40','GI Pipe, 20mm, 4\", Sch. 40',1,30,100,0),(47,'GI-N20-6-40','GI Pipe, 20mm, 6\", Sch. 40',1,30,100,0),(48,'GI-N20-8-40','GI Pipe, 20mm, 8\", Sch. 40',1,30,100,0),(49,'GI-N20-10-40','GI Pipe, 20mm, 10\", Sch. 40',1,30,100,0),(54,'GI-N20-12-40','GI Pipe, 20mm, 12\", Sch. 40',1,30,100,0),(107,'GI-N25-4-40','GI Pipe, 25mm, 4\", Sch. 40',1,30,50,0),(109,'GI-N25-6-40','GI Pipe, 25mm, 6\", Sch. 40',1,30,50,0),(110,'GI-N25-8-40','GI Pipe, 25mm, 8\" Sch. 40',1,30,50,0),(111,'GI-N25-10-40','GI Pipe, 25mm, 10\", Sch. 40',1,20,50,0),(112,'GI-N25-12-40','GI Pipe, 25mm, 12\", Sch. 40',1,20,50,0),(113,'TEST','TEST',3,100,100,1),(114,'qwe','qwe',2,1000,10,1),(116,'test2','test2',3,2,200,1),(117,'qwer','&12345',1,10,10,1),(118,'asdf','asdf',1,2,2,1),(124,'asdfg','asdfg',1,5,5,1),(125,'GI-N32-4-40','GI Pipe, 32mm, 4\", Sch. 40',1,100,100,0),(126,'GI-N32-6-40','GI Pipe, 32mm, 6\", Sch. 40',1,100,100,0),(127,'GI-N32-8-40','GI Pipe, 32mm, 8\", Sch. 40',1,100,100,0),(128,'test','test',2,10,10,0);
/*!40000 ALTER TABLE `materialList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialReceive`
--

DROP TABLE IF EXISTS `materialReceive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialReceive` (
  `receiveId` int(7) NOT NULL AUTO_INCREMENT,
  `invoiceId` int(7) NOT NULL,
  `itemId` int(7) NOT NULL,
  `itemCount` int(7) NOT NULL,
  PRIMARY KEY (`receiveId`),
  UNIQUE KEY `invoiceId` (`invoiceId`,`itemId`),
  KEY `fk_temprelease1` (`itemId`),
  KEY `fk_temprelease2` (`invoiceId`),
  CONSTRAINT `fk_release1` FOREIGN KEY (`itemId`) REFERENCES `materialList` (`itemId`),
  CONSTRAINT `fk_release2` FOREIGN KEY (`invoiceId`) REFERENCES `materialInvoice` (`invoiceId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialReceive`
--

LOCK TABLES `materialReceive` WRITE;
/*!40000 ALTER TABLE `materialReceive` DISABLE KEYS */;
INSERT INTO `materialReceive` VALUES (28,4,31,20),(29,4,54,400),(30,4,29,400),(32,8,29,20),(34,4,37,20),(36,4,45,1),(37,4,25,10),(38,4,26,10),(39,4,28,10),(43,4,49,10),(45,4,46,10),(46,4,48,1),(47,13,25,200),(48,8,45,200),(49,17,26,10),(50,17,29,20);
/*!40000 ALTER TABLE `materialReceive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialRelease`
--

DROP TABLE IF EXISTS `materialRelease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialRelease` (
  `releaseId` int(7) NOT NULL AUTO_INCREMENT,
  `risId` int(7) NOT NULL,
  `itemId` int(7) NOT NULL,
  `itemCount` int(7) NOT NULL,
  PRIMARY KEY (`releaseId`),
  UNIQUE KEY `risId` (`risId`,`itemId`),
  KEY `fkris2` (`risId`),
  KEY `fk_release1` (`itemId`),
  CONSTRAINT `fk3` FOREIGN KEY (`itemId`) REFERENCES `materialList` (`itemId`),
  CONSTRAINT `fkris2` FOREIGN KEY (`risId`) REFERENCES `materialRis` (`risId`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialRelease`
--

LOCK TABLES `materialRelease` WRITE;
/*!40000 ALTER TABLE `materialRelease` DISABLE KEYS */;
INSERT INTO `materialRelease` VALUES (3,5,45,10),(5,5,31,5),(7,4,45,20),(8,4,25,40),(9,6,28,5),(13,8,45,5),(14,9,28,40),(15,10,37,3),(17,13,27,5),(22,15,26,1),(23,15,27,1),(25,15,29,1),(33,15,31,1),(34,15,37,1),(36,15,54,1),(37,15,46,1),(38,15,48,1),(39,15,109,1),(41,15,110,1),(43,5,37,20),(44,15,49,5);
/*!40000 ALTER TABLE `materialRelease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialReturn`
--

DROP TABLE IF EXISTS `materialReturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialReturn` (
  `returnId` int(7) NOT NULL AUTO_INCREMENT,
  `rnid` int(7) NOT NULL,
  `itemId` int(7) NOT NULL,
  `itemCount` int(7) NOT NULL,
  PRIMARY KEY (`returnId`),
  UNIQUE KEY `rnid` (`rnid`,`itemId`),
  KEY `fk_materialReturn1` (`itemId`),
  CONSTRAINT `fk_materialReturn1` FOREIGN KEY (`itemId`) REFERENCES `materialList` (`itemId`),
  CONSTRAINT `fk_materialReturn2` FOREIGN KEY (`rnid`) REFERENCES `materialRn` (`rnId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialReturn`
--

LOCK TABLES `materialReturn` WRITE;
/*!40000 ALTER TABLE `materialReturn` DISABLE KEYS */;
INSERT INTO `materialReturn` VALUES (1,12,27,100),(2,16,27,20),(4,16,54,2),(5,8,37,2),(6,16,37,25),(8,16,29,2),(9,16,46,2),(10,7,37,2),(11,16,26,4),(14,16,48,2),(15,16,31,5),(20,16,109,2),(21,16,110,20),(23,16,49,5),(25,15,37,2);
/*!40000 ALTER TABLE `materialReturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialRis`
--

DROP TABLE IF EXISTS `materialRis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialRis` (
  `risId` int(7) NOT NULL AUTO_INCREMENT,
  `risNo` varchar(11) COLLATE utf8_bin NOT NULL,
  `issuedBy` int(7) NOT NULL,
  `receivedBy` int(7) NOT NULL,
  `risPurpose` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `risDate` date NOT NULL,
  PRIMARY KEY (`risId`),
  UNIQUE KEY `risNo` (`risNo`),
  KEY `fk_issuedBy` (`issuedBy`),
  KEY `fk_receivedBy` (`receivedBy`),
  CONSTRAINT `fk_issuedBy` FOREIGN KEY (`issuedBy`) REFERENCES `staff` (`staffId`),
  CONSTRAINT `fk_receivedBy` FOREIGN KEY (`receivedBy`) REFERENCES `staff` (`staffId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialRis`
--

LOCK TABLES `materialRis` WRITE;
/*!40000 ALTER TABLE `materialRis` DISABLE KEYS */;
INSERT INTO `materialRis` VALUES (4,'2018-333333',6,6,'test data','2018-04-15'),(5,'2018-555555',2,2,'test 2','2018-04-15'),(6,'2018-888888',6,6,'purpoase asdfasdf adfasdf adfasdf asdfasdfa adsfadsf asdfasdfapurpoase asdfasdf adfasdf adfasdf asdfasdfa adsfadsf asdfasdfapurpoase asdfasdf adfasdf adfasdf asdfasdfa adsfadsf asdfasdfapurpoase asdfasdf adfasdf adfasdf asdfasdfa adsfadsf asdfasdfapurpoas','2018-04-14'),(8,'2018-777777',2,3,'','2018-04-15'),(9,'2018-666667',5,1,'test purpose','2018-04-14'),(10,'2018-554433',3,3,'','2018-04-15'),(11,'2018-232323',3,3,'','2018-04-15'),(13,'2018-999999',2,2,'','2018-04-13'),(15,'2018-444444',1,1,'','2018-04-14');
/*!40000 ALTER TABLE `materialRis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialRn`
--

DROP TABLE IF EXISTS `materialRn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialRn` (
  `rnId` int(7) NOT NULL AUTO_INCREMENT,
  `rnNo` varchar(11) COLLATE utf8_bin NOT NULL,
  `risId` int(7) NOT NULL,
  `returnedBy` int(7) NOT NULL,
  `receivedBy` int(7) NOT NULL,
  `rnDate` date NOT NULL,
  PRIMARY KEY (`rnId`),
  UNIQUE KEY `rnNo` (`rnNo`),
  KEY `fk_materialRn1` (`risId`),
  KEY `fk_materialRn2` (`returnedBy`),
  KEY `fk_materialRn3` (`receivedBy`),
  CONSTRAINT `fk_materialRn1` FOREIGN KEY (`risId`) REFERENCES `materialRis` (`risId`),
  CONSTRAINT `fk_materialRn2` FOREIGN KEY (`returnedBy`) REFERENCES `staff` (`staffId`),
  CONSTRAINT `fk_materialRn3` FOREIGN KEY (`receivedBy`) REFERENCES `staff` (`staffId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialRn`
--

LOCK TABLES `materialRn` WRITE;
/*!40000 ALTER TABLE `materialRn` DISABLE KEYS */;
INSERT INTO `materialRn` VALUES (2,'2018-123123',10,1,2,'2018-05-03'),(3,'2018-456456',13,1,6,'2018-05-03'),(4,'2018-132123',11,1,2,'2018-05-03'),(5,'2018-888888',8,5,5,'2018-05-03'),(6,'2018-111111',13,3,3,'2018-05-03'),(7,'2018-555555',10,1,1,'2018-05-03'),(8,'2018-232323',5,6,1,'2018-05-03'),(9,'2018-000000',8,2,3,'2018-05-03'),(12,'2018-111112',6,2,2,'2018-05-03'),(14,'2018-232324',9,4,4,'2018-05-03'),(15,'2018-123456',5,1,1,'2018-05-07'),(16,'2018-234432',15,2,4,'2018-05-07');
/*!40000 ALTER TABLE `materialRn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staffId` int(7) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8_bin NOT NULL,
  `middleName` varchar(255) COLLATE utf8_bin NOT NULL,
  `lastName` varchar(255) COLLATE utf8_bin NOT NULL,
  `removeStatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`staffId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Arnel','Glorioso','Forbes',0),(2,'staff 2','','',0),(3,'staff 3','','',0),(4,'staff 4','','',0),(5,'staff 5','','',0),(6,'Arnel Glorioso Forbes','','',0);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `supplierId` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(255) COLLATE utf8_bin NOT NULL,
  `supplierAddress` varchar(255) COLLATE utf8_bin NOT NULL,
  `removeStatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`supplierId`),
  UNIQUE KEY `supplierName` (`supplierName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'supplier 1','',0),(2,'supplier 2','',0),(3,'supplier 3','',0),(4,'supplier 4','',0),(5,'supplier 5','',0),(6,'UP-TOWN Industrial Sales, Incorporated','',0);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemUser`
--

DROP TABLE IF EXISTS `systemUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemUser` (
  `userId` int(7) NOT NULL AUTO_INCREMENT,
  `levelId` int(7) NOT NULL,
  `userName` varchar(255) COLLATE utf8_bin NOT NULL,
  `passWord` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `fk_systemUser1` (`levelId`),
  CONSTRAINT `fk_systemUser1` FOREIGN KEY (`levelId`) REFERENCES `userLevel` (`levelId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemUser`
--

LOCK TABLES `systemUser` WRITE;
/*!40000 ALTER TABLE `systemUser` DISABLE KEYS */;
INSERT INTO `systemUser` VALUES (1,1,'syscom','ef43d6c418745699441068874ff63b27'),(2,1,'GM','64f3bd1741ab8d6ba545a1ae09bb8728'),(3,1,'admin','21232f297a57a5a743894a0e4a801fc3'),(4,2,'user','ee11cbb19052e40b07aac0ca060c23ee');
/*!40000 ALTER TABLE `systemUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `unitId` int(7) NOT NULL AUTO_INCREMENT,
  `unitName` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'pc/s'),(2,'mtr/s'),(3,'kg');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userLevel`
--

DROP TABLE IF EXISTS `userLevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userLevel` (
  `levelId` int(7) NOT NULL AUTO_INCREMENT,
  `levelName` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`levelId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userLevel`
--

LOCK TABLES `userLevel` WRITE;
/*!40000 ALTER TABLE `userLevel` DISABLE KEYS */;
INSERT INTO `userLevel` VALUES (1,'Administrator'),(2,'User');
/*!40000 ALTER TABLE `userLevel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-07  6:09:58
