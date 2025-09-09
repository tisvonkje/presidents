-- MySQL dump 10.13  Distrib 9.4.0, for macos15.4 (arm64)
--
-- Host: 127.0.0.1    Database: presidents
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_pr_vp`
--

DROP TABLE IF EXISTS `admin_pr_vp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_pr_vp` (
  `Admin_Nr` decimal(3,0) NOT NULL,
  `Pres_Name` varchar(15) NOT NULL,
  `Vice_Pres_Name` varchar(17) NOT NULL,
  PRIMARY KEY (`Admin_Nr`,`Pres_Name`,`Vice_Pres_Name`),
  CONSTRAINT `Admin_Pr_Vp_ibfk_1` FOREIGN KEY (`Admin_Nr`, `Pres_Name`) REFERENCES `administration` (`Admin_Nr`, `Pres_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_pr_vp`
--

LOCK TABLES `admin_pr_vp` WRITE;
/*!40000 ALTER TABLE `admin_pr_vp` DISABLE KEYS */;
INSERT INTO `admin_pr_vp` VALUES (1,'Washington G','Adams J'),(2,'Washington G','Adams J'),(3,'Adams J','Jefferson T'),(4,'Jefferson T','Burr A'),(5,'Jefferson T','Clinton G'),(6,'Madison J','Clinton G'),(7,'Madison J','Gerry E'),(8,'Monroe J','Tompkins D'),(9,'Monroe J','Tompkins D'),(10,'Adams J Q','Calhoun J'),(11,'Jackson A','Calhoun J'),(12,'Jackson A','Van Buren M'),(13,'Van Buren M','Johnson R M'),(14,'Harrison W H','Tyler J'),(15,'Polk J K','Dallas G M'),(16,'Taylor Z','Fillmore M'),(17,'Pierce F','De Vane King W R'),(18,'Buchanan J','Breckinridge J C'),(19,'Lincoln A','Hamlin H'),(20,'Lincoln A','Johnson A'),(21,'Grant U S','Colfax S'),(22,'Grant U S','Wilson H'),(23,'Hayes R B','Wheeler W'),(24,'Garfield J A','Arthur C A'),(25,'Cleveland G','Hendricks T A'),(26,'Harrison B','Morton L P'),(27,'Cleveland G','Stevenson A E'),(28,'McKinley W','Hobart G A'),(29,'McKinley W','Roosevelt T'),(30,'Roosevelt T','Fairbanks C W'),(31,'Taft W H','Sherman J S'),(32,'Wilson W','Marshall T R'),(33,'Wilson W','Marshall T R'),(34,'Harding W G','Coolidge C'),(35,'Coolidge C','Dawes C G'),(36,'Hoover H C','Curtis C'),(37,'Roosevelt F D','Garner J N'),(38,'Roosevelt F D','Garner J N'),(39,'Roosevelt F D','Wallace H A'),(40,'Roosevelt F D','Truman H S'),(41,'Truman H S','Barkley A W'),(42,'Eisenhower D D','Nixon R M'),(43,'Eisenhower D D','Nixon R M'),(44,'Kennedy J F','Johnson L B'),(45,'Johnson L B','Humphrey H H'),(46,'Nixon R M','Agnew S T'),(47,'Ford G R','Rockefeller N A'),(47,'Nixon R M','Agnew S T'),(47,'Nixon R M','Ford G R'),(48,'Carter J E','Mondale W F'),(49,'Reagan R','Bush G'),(50,'Reagan R','Bush G'),(51,'Bush G H W','Quayle D'),(52,'Clinton W J','Gore A'),(53,'Clinton W J','Gore A'),(54,'Bush G W','Cheney R'),(55,'Bush G W','Cheney R'),(56,'Obama B H','Biden J R'),(57,'Obama B H','Biden J R'),(58,'Trump D J','Pence M'),(59,'Biden J R','Harris K D');
/*!40000 ALTER TABLE `admin_pr_vp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration`
--

DROP TABLE IF EXISTS `administration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administration` (
  `Admin_Nr` decimal(3,0) NOT NULL,
  `Pres_Name` varchar(15) NOT NULL,
  `Year_Inaugurated` decimal(4,0) NOT NULL,
  PRIMARY KEY (`Admin_Nr`,`Pres_Name`),
  KEY `Pres_Name` (`Pres_Name`),
  CONSTRAINT `administration` FOREIGN KEY (`Pres_Name`) REFERENCES `president` (`Pres_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration`
--

LOCK TABLES `administration` WRITE;
/*!40000 ALTER TABLE `administration` DISABLE KEYS */;
INSERT INTO `administration` VALUES (1,'Washington G',1789),(2,'Washington G',1793),(3,'Adams J',1797),(4,'Jefferson T',1801),(5,'Jefferson T',1805),(6,'Madison J',1809),(7,'Madison J',1813),(8,'Monroe J',1817),(9,'Monroe J',1821),(10,'Adams J Q',1825),(11,'Jackson A',1829),(12,'Jackson A',1833),(13,'Van Buren M',1837),(14,'Harrison W H',1841),(14,'Tyler J',1841),(15,'Polk J K',1845),(16,'Fillmore M',1850),(16,'Taylor Z',1849),(17,'Pierce F',1853),(18,'Buchanan J',1857),(19,'Lincoln A',1861),(20,'Johnson A',1865),(20,'Lincoln A',1865),(21,'Grant U S',1869),(22,'Grant U S',1873),(23,'Hayes R B',1877),(24,'Arthur C A',1881),(24,'Garfield J A',1881),(25,'Cleveland G',1885),(26,'Harrison B',1889),(27,'Cleveland G',1893),(28,'McKinley W',1897),(29,'McKinley W',1901),(29,'Roosevelt T',1901),(30,'Roosevelt T',1905),(31,'Taft W H',1909),(32,'Wilson W',1913),(33,'Wilson W',1917),(34,'Coolidge C',1923),(34,'Harding W G',1921),(35,'Coolidge C',1925),(36,'Hoover H C',1929),(37,'Roosevelt F D',1933),(38,'Roosevelt F D',1937),(39,'Roosevelt F D',1941),(40,'Roosevelt F D',1945),(40,'Truman H S',1945),(41,'Truman H S',1949),(42,'Eisenhower D D',1953),(43,'Eisenhower D D',1957),(44,'Johnson L B',1963),(44,'Kennedy J F',1961),(45,'Johnson L B',1965),(46,'Nixon R M',1969),(47,'Ford G R',1974),(47,'Nixon R M',1973),(48,'Carter J E',1977),(49,'Reagan R',1981),(50,'Reagan R',1985),(51,'Bush G H W',1989),(52,'Clinton W J',1993),(53,'Clinton W J',1997),(54,'Bush G W',2001),(55,'Bush G W',2005),(56,'Obama B H',2009),(57,'Obama B H',2013),(58,'Trump D J',2017),(59,'Biden J R',2021);
/*!40000 ALTER TABLE `administration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `election`
--

DROP TABLE IF EXISTS `election`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `election` (
  `Election_Year` decimal(4,0) NOT NULL,
  `Candidate` varchar(20) NOT NULL,
  `Party` varchar(12) DEFAULT NULL,
  `Votes` decimal(3,0) NOT NULL,
  `Winner_Loser_Indic` char(1) NOT NULL,
  PRIMARY KEY (`Election_Year`,`Candidate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `election`
--

LOCK TABLES `election` WRITE;
/*!40000 ALTER TABLE `election` DISABLE KEYS */;
INSERT INTO `election` VALUES (1789,'Adams J','Federalist',34,'L'),(1789,'Armstrong J',NULL,1,'L'),(1789,'Clinton G',NULL,3,'L'),(1789,'Hancock J',NULL,4,'L'),(1789,'Harrison R H',NULL,6,'L'),(1789,'Huntington S',NULL,2,'L'),(1789,'Jay J',NULL,9,'L'),(1789,'Lincoln B',NULL,1,'L'),(1789,'Milton J',NULL,2,'L'),(1789,'Rutledge J',NULL,6,'L'),(1789,'Telfair E',NULL,1,'L'),(1789,'Washington G','Federalist',69,'W'),(1792,'Adams J','Federalist',77,'L'),(1792,'Burr A',NULL,1,'L'),(1792,'Clinton G','Demo-Rep',50,'L'),(1792,'Jefferson T','Demo-Rep',4,'L'),(1792,'Washington G','Federalist',132,'W'),(1796,'Adams J','Federalist',71,'W'),(1796,'Adams S','Demo-Rep',15,'L'),(1796,'Burr A','Anti-Fed',30,'L'),(1796,'Clinton G','Demo-Rep',7,'L'),(1796,'Ellsworth O','Federalist',11,'L'),(1796,'Henry J','Independent',2,'L'),(1796,'Iredell J','Federalist',3,'L'),(1796,'Jay J','Federalist',5,'L'),(1796,'Jefferson T','Demo-Rep',68,'L'),(1796,'Johnston S','Federalist',2,'L'),(1796,'Pinckney C C','Federalist',1,'L'),(1796,'Pinckney T','Federalist',59,'L'),(1796,'Washington G','Federalist',2,'L'),(1800,'Adams J','Federalist',65,'L'),(1800,'Burr A','Demo-Rep',73,'L'),(1800,'Jay J','Federalist',1,'L'),(1800,'Jefferson T','Demo-Rep',73,'W'),(1800,'Pinckney C C','Federalist',64,'L'),(1804,'Jefferson T','Demo-Rep',162,'W'),(1804,'Pinckney','Federalist',14,'L'),(1808,'Clinton G','Independent',6,'L'),(1808,'Madison J','Demo-Rep',122,'W'),(1808,'Pinckney C C','Federalist',47,'L'),(1812,'Clinto D W','Fusion',89,'L'),(1812,'Madison J','Demo-Rep',128,'W'),(1816,'King R','Federalist',34,'L'),(1816,'Monroe J','Demo-Rep',183,'W'),(1820,'Adams J Q','Demo-Rep',1,'L'),(1820,'Monroe J','Demo-Rep',231,'W'),(1824,'Adams J Q','Demo-Rep',84,'W'),(1824,'Clay H','Demo-Rep',41,'L'),(1824,'Crawford W H','Demo-Rep',37,'L'),(1824,'Jackson A','Demo-Rep',99,'L'),(1828,'Adams J Q','Nat. Rep.',83,'L'),(1828,'Jackson A','Democratic',178,'W'),(1832,'Clay H','Nat. Rep.',49,'L'),(1832,'Floyd J','Nullifiers',11,'L'),(1832,'Jackson A','Democratic',219,'W'),(1832,'Wirt W','Anti-Masonic',7,'L'),(1836,'Harrison W H','Whig',73,'L'),(1836,'Mangum W P','Anti-Jackson',11,'L'),(1836,'Van Buren M','Democratic',170,'W'),(1836,'Webster D','Whig',14,'L'),(1836,'White H L','Whig',26,'L'),(1840,'Harrison W H','Whig',234,'W'),(1840,'Van Buren M','Democratic',60,'L'),(1844,'Clay H','Whig',105,'L'),(1844,'Polk J K','Democratic',170,'W'),(1848,'Cass L','Democratic',127,'L'),(1848,'Taylor Z','Whig',163,'W'),(1852,'Pierce F','Democratic',254,'W'),(1852,'Scott W','Whig',42,'L'),(1856,'Buchanan J','Democratic',174,'W'),(1856,'Fillmore M','Know-Nothing',8,'L'),(1856,'Fremont J C','Republican',114,'L'),(1860,'Bell J','Const. Union',39,'L'),(1860,'Breckinridge J C','Southern Dem',72,'L'),(1860,'Douglas S A','Democratic',12,'L'),(1860,'Lincoln A','Republican',180,'W'),(1864,'Lincoln A','Republican',212,'W'),(1864,'McClellan G B','Democratic',21,'L'),(1868,'Grant U S','Republican',214,'W'),(1868,'Seymour H','Democratic',80,'L'),(1872,'Brown B G','Democratic',18,'L'),(1872,'Davis D','Democratic',1,'L'),(1872,'Grant U S','Republican',286,'W'),(1872,'Hendricks T A','Democratic',42,'L'),(1872,'Jenkins C J','Democratic',2,'L'),(1876,'Hayes R B','Republican',185,'W'),(1876,'Tilden S J','Democratic',184,'L'),(1880,'Garfield J A','Republican',214,'W'),(1880,'Hancock W S','Democratic',155,'L'),(1884,'Blaine J G','Republican',182,'L'),(1884,'Cleveland G','Democratic',219,'W'),(1888,'Cleveland G','Democratic',168,'L'),(1888,'Harrison B','Republican',233,'W'),(1892,'Cleveland G','Democratic',277,'W'),(1892,'Harrison B','Republican',145,'L'),(1892,'Weaver J B','Populist',22,'L'),(1896,'Bryan W J','Democratic',176,'L'),(1896,'McKinley W','Republican',271,'W'),(1900,'Bryan W J','Democratic',155,'L'),(1900,'McKinley W','Republican',292,'W'),(1904,'Parker A B','Democratic',140,'L'),(1904,'Roosevelt T','Republican',336,'W'),(1908,'Bryan W J','Democratic',162,'L'),(1908,'Taft W H','Republican',321,'W'),(1912,'Roosevelt T','Progressive',88,'L'),(1912,'Taft W H','Republican',8,'L'),(1912,'Wilson W','Democratic',435,'W'),(1916,'Hughes C E','Republican',254,'L'),(1916,'Wilson W','Democratic',277,'W'),(1920,'Cox J M','Democratic',127,'L'),(1920,'Harding W G','Republican',404,'W'),(1924,'Coolidge C','Republican',382,'W'),(1924,'Davis J W','Democratic',136,'L'),(1924,'La Follette R M','Progressive',13,'L'),(1928,'Hoover H C','Republican',444,'W'),(1928,'Smith A E','Democratic',87,'L'),(1932,'Hoover H C','Republican',59,'L'),(1932,'Roosevelt F D','Democratic',472,'W'),(1936,'Landon A M','Republican',8,'L'),(1936,'Roosevelt F D','Democratic',523,'W'),(1940,'Roosevelt F D','Democratic',449,'W'),(1940,'Willkie W L','Republican',82,'L'),(1944,'Dewey T E','Republican',99,'L'),(1944,'Roosevelt F D','Democratic',432,'W'),(1948,'Dewey T E','Republican',189,'L'),(1948,'Thurmond S','Dixiecrat',39,'L'),(1948,'Truman H S','Democratic',303,'W'),(1952,'Eisenhower D D','Republican',442,'W'),(1952,'Stevenson A E','Democratic',89,'L'),(1956,'Eisenhower D D','Republican',457,'W'),(1956,'Jones W','Independent',1,'L'),(1956,'Stevenso A E','Democratic',73,'L'),(1960,'Bird H F','Southern Dem',15,'L'),(1960,'Kennedy J F','Democratic',303,'W'),(1960,'Nixon R M','Republican',219,'L'),(1964,'Goldwater B','Republican',52,'L'),(1964,'Johnson L B','Democratic',486,'W'),(1968,'Humphrey H H','Democratic',191,'L'),(1968,'Nixon R M','Republican',302,'W'),(1968,'Wallace G C','Independent',46,'L'),(1972,'Hospers J','Libertarian',1,'L'),(1972,'McGovern G S','Democratic',17,'L'),(1972,'Nixon R M','Republican',520,'W'),(1976,'Carter J E','Democratic',297,'W'),(1976,'Ford G R','Republican',240,'L'),(1980,'Anderson J B','Independent',0,'L'),(1980,'Carter J E','Democratic',49,'L'),(1980,'Reagan R','Republican',489,'W'),(1984,'Mondale W','Democratic',13,'L'),(1984,'Reagan R','Republican',525,'W'),(1988,'Bush G H W','Republican',426,'W'),(1988,'Dukakis M','Democratic',112,'L'),(1992,'Bush G H W','Republican',168,'L'),(1992,'Clinton W J','Democratic',370,'W'),(1992,'Perot R','Independent',0,'L'),(1996,'Clinton W J','Democratic',379,'W'),(1996,'Dole B','Republican',159,'L'),(1996,'Perot R','Reform',0,'L'),(2000,'Bush G W','Republican',271,'W'),(2000,'Gore A','Democratic',266,'L'),(2004,'Bush G W','Republican',286,'W'),(2004,'Kerry J','Democratic',251,'L'),(2008,'McCain J S','Republican',173,'L'),(2008,'Obama B H','Democratic',365,'W'),(2012,'Obama B H','Democratic',332,'W'),(2012,'Romney W M','Republican',206,'L'),(2016,'Clinton H D R','Democratic',232,'L'),(2016,'Trump D J','Republican',306,'W'),(2020,'Biden J R','Democratic',306,'W'),(2020,'Trump D J','Republican',232,'L');
/*!40000 ALTER TABLE `election` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pres_hobby`
--

DROP TABLE IF EXISTS `pres_hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pres_hobby` (
  `Pres_Name` varchar(15) NOT NULL,
  `Hobby` varchar(18) NOT NULL,
  PRIMARY KEY (`Pres_Name`,`Hobby`),
  CONSTRAINT `Pres_Hobby_ibfk_1` FOREIGN KEY (`Pres_Name`) REFERENCES `president` (`Pres_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pres_hobby`
--

LOCK TABLES `pres_hobby` WRITE;
/*!40000 ALTER TABLE `pres_hobby` DISABLE KEYS */;
INSERT INTO `pres_hobby` VALUES ('Adams J Q','Billards'),('Adams J Q','Swimming'),('Adams J Q','Walking'),('Arthur C A','Fishing'),('Biden J R','Football'),('Biden J R','Skiing'),('Bush G H W','Sailing'),('Bush G W','Golf'),('Bush G W','Reading'),('Cleveland G','Fishing'),('Clinton W J','Crossword Puzzles'),('Clinton W J','Reading'),('Clinton W J','Running'),('Coolidge C','Fishing'),('Coolidge C','Golf'),('Coolidge C','Indian Clubs'),('Coolidge C','Mechanical Horse'),('Coolidge C','Pitching Hay'),('Eisenhower D D','Bridge'),('Eisenhower D D','Fishing'),('Eisenhower D D','Golf'),('Eisenhower D D','Hunting'),('Eisenhower D D','Painting'),('Garfield J A','Billards'),('Harding W G','Golf'),('Harding W G','Poker'),('Harding W G','Riding'),('Harrison B','Hunting'),('Hayes R B','Croquet'),('Hayes R B','Driving'),('Hayes R B','Shooting'),('Hoover H C','Fishing'),('Hoover H C','Medicine Ball'),('Jackson A','Riding'),('Jefferson T','Fishing'),('Jefferson T','Riding'),('Johnson L B','Riding'),('Kennedy J F','Sailing'),('Kennedy J F','Swimming'),('Kennedy J F','Touch Football'),('Lincoln A','Walking'),('McKinley W','Riding'),('McKinley W','Swimming'),('McKinley W','Walking'),('Nixon R M','Golf'),('Obama B H','Basketball'),('Obama B H','Golf'),('Reagan R','SDI'),('Roosevelt F D','Fishing'),('Roosevelt F D','Sailing'),('Roosevelt F D','Swimming'),('Roosevelt T','Boxing'),('Roosevelt T','Hunting'),('Roosevelt T','Jujitsu'),('Roosevelt T','Riding'),('Roosevelt T','Shooting'),('Roosevelt T','Tennis'),('Roosevelt T','Wrestling'),('Taft W H','Golf'),('Taft W H','Riding'),('Taylor Z','Riding'),('Truman H S','Fishing'),('Truman H S','Poker'),('Truman H S','Walking'),('Trump D J','Golf'),('Van Buren M','Riding'),('Washington G','Fishing'),('Washington G','Riding'),('Wilson W','Golf'),('Wilson W','Riding'),('Wilson W','Walking');
/*!40000 ALTER TABLE `pres_hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pres_marriage`
--

DROP TABLE IF EXISTS `pres_marriage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pres_marriage` (
  `Pres_Name` varchar(15) NOT NULL,
  `Spouse_Name` varchar(15) NOT NULL,
  `Pr_Age` decimal(3,0) NOT NULL,
  `Sp_Age` decimal(3,0) NOT NULL,
  `Nr_Children` decimal(2,0) NOT NULL,
  `Mar_Year` decimal(4,0) NOT NULL,
  PRIMARY KEY (`Pres_Name`,`Spouse_Name`),
  CONSTRAINT `Pres_Marriage_ibfk_1` FOREIGN KEY (`Pres_Name`) REFERENCES `president` (`Pres_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pres_marriage`
--

LOCK TABLES `pres_marriage` WRITE;
/*!40000 ALTER TABLE `pres_marriage` DISABLE KEYS */;
INSERT INTO `pres_marriage` VALUES ('Adams J','Simth A',28,19,5,1764),('Adams J Q','Johnson L C',30,22,4,1797),('Arthur C A','Horndon E L',29,22,3,1859),('Biden J R','Hunter N',23,24,3,1966),('Biden J R','Jacobs J T',34,26,1,1977),('Bush G H W','Pierce B',20,19,5,1945),('Bush G W','Welch L L',31,31,2,1977),('Carter J E','Smith R',21,18,4,1946),('Cleveland G','Folson F',49,21,5,1886),('Clinton W J','Rodham H D',29,27,1,1975),('Coolidge C','Goodhue G A',33,26,2,1905),('Eisenhower D D','Doud G',25,19,2,1916),('Fillmore M','McIntosh C C',58,44,0,1858),('Fillmore M','Powers A',26,27,2,1826),('Ford G R','Warren E B',35,30,4,1948),('Garfield J A','Rudolph L',26,26,7,1853),('Grant U S','Dent J B',26,22,4,1848),('Harding W G','DeWolfe F K',25,30,0,1891),('Harrison B','Dimmick M S L',62,37,1,1896),('Harrison B','Scott C L',20,21,2,1853),('Harrison W H','Symmos A T',22,20,10,1795),('Hayes R B','Webb L W',30,21,8,1852),('Hoover H C','Henry L',24,23,2,1899),('Jackson A','Robards R D',26,26,0,1794),('Jefferson T','Skelton M W',28,23,6,1772),('Johnson A','McCardle E',18,16,5,1827),('Johnson L B','Taylor C A',26,21,2,1934),('Kennedy J F','Bouvier J L',36,24,3,1953),('Lincoln A','Todd M',33,23,4,1842),('Madison J','Todd D D P',43,26,0,1794),('McKinley W','Saxton I',27,23,2,1871),('Monroe J','Kortright E',27,17,3,1786),('Nixon R M','Ryan T C',27,28,2,1940),('Obama B H','Robinson M L',31,28,2,1992),('Pierce F','Appleton J M',29,28,3,1834),('Polk J K','Chidross S',28,20,0,1824),('Reagan R','Davis N',41,28,2,1952),('Reagan R','Wyman J',28,25,2,1940),('Roosevelt F D','Roosevelt A E',23,20,6,1905),('Roosevelt T','Carow E K',28,25,5,1886),('Roosevelt T','Lee A H',22,19,1,1880),('Taft W H','Horron H',28,25,3,1886),('Taylor Z','Smith M M',25,21,6,1810),('Truman H S','Wallace E V',35,34,1,1918),('Trump D J','Knavs M',58,34,1,2005),('Trump D J','Maples M A',47,30,1,1993),('Trump D J','Zelnickova I M',30,28,3,1977),('Tyler J','Christian L',23,22,8,1813),('Tyler J','Gardiner J',54,24,7,1844),('Van Buren M','Hoes H',24,23,4,1807),('Washington G','Custis M D',26,27,0,1759),('Wilson W','Axson E L',28,25,3,1885),('Wilson W','Galt E B',58,43,0,1915);
/*!40000 ALTER TABLE `pres_marriage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `president`
--

DROP TABLE IF EXISTS `president`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `president` (
  `Pres_Name` varchar(15) NOT NULL,
  `Birth_Year` decimal(4,0) NOT NULL,
  `Years_Serv` decimal(2,0) NOT NULL,
  `Death_Age` decimal(3,0) DEFAULT NULL,
  `Party` varchar(12) NOT NULL,
  `State_Born` varchar(17) NOT NULL,
  PRIMARY KEY (`Pres_Name`),
  KEY `State_Born` (`State_Born`),
  CONSTRAINT `President_ibfk_1` FOREIGN KEY (`State_Born`) REFERENCES `state` (`State_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president`
--

LOCK TABLES `president` WRITE;
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` VALUES ('Adams J',1735,4,90,'Federalist','Massachusetts'),('Adams J Q',1767,4,80,'Demo-Rep','Massachusetts'),('Arthur C A',1830,3,56,'Republican','Vermont'),('Biden J R',1942,4,NULL,'Democratic','Pennsylvania'),('Buchanan J',1791,4,77,'Democratic','Pennsylvania'),('Bush G H W',1924,4,94,'Republican','Massachusetts'),('Bush G W',1946,8,NULL,'Republican','Connecticut'),('Carter J E',1924,4,NULL,'Democratic','Georgia'),('Cleveland G',1837,8,71,'Democratic','New Jersey'),('Clinton W J',1946,8,NULL,'Democratic','Arkansas'),('Coolidge C',1872,5,60,'Republican','Vermont'),('Eisenhower D D',1890,8,79,'Republican','Texas'),('Fillmore M',1800,2,74,'Whig','New York'),('Ford G R',1913,5,93,'Republican','Georgia'),('Garfield J A',1831,0,49,'Republican','Ohio'),('Grant U S',1822,8,63,'Republican','Ohio'),('Harding W G',1865,2,57,'Republican','Ohio'),('Harrison B',1833,4,67,'Republican','Ohio'),('Harrison W H',1773,0,68,'Whig','Virginia'),('Hayes R B',1822,4,70,'Republican','Ohio'),('Hoover H C',1871,4,90,'Republican','Iowa'),('Jackson A',1767,8,78,'Democratic','South Carolina'),('Jefferson T',1743,8,83,'Demo-Rep','Virginia'),('Johnson A',1808,4,66,'Democratic','North Carolina'),('Johnson L B',1908,5,65,'Democratic','California'),('Kennedy J F',1917,2,46,'Democratic','Texas'),('Lincoln A',1809,4,56,'Republican','Kentucky'),('Madison J',1751,8,85,'Demo-Rep','Virginia'),('McKinley W',1843,4,58,'Republican','Ohio'),('Monroe J',1758,8,73,'Demo-Rep','Virginia'),('Nixon R M',1913,5,81,'Republican','Nebraska'),('Obama B H',1961,8,NULL,'Democratic','Hawaii'),('Pierce F',1801,4,64,'Democratic','New Hampshire'),('Polk J K',1795,4,53,'Democratic','North Carolina'),('Reagan R',1911,8,93,'Republican','Illinois'),('Roosevelt F D',1882,12,63,'Democratic','New York'),('Roosevelt T',1858,7,60,'Republican','New York'),('Taft W H',1857,4,72,'Republican','Ohio'),('Taylor Z',1784,1,65,'Whig','Virginia'),('Truman H S',1884,7,88,'Democratic','Missouri'),('Trump D J',1946,4,NULL,'Republican','New York'),('Tyler J',1790,3,71,'Whig','Virginia'),('Van Buren M',1782,4,79,'Democratic','New York'),('Washington G',1732,7,67,'Federalist','Virginia'),('Wilson W',1856,8,67,'Democratic','Virginia');
/*!40000 ALTER TABLE `president` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `State_Name` varchar(17) NOT NULL,
  `Admin_Entered` decimal(3,0) DEFAULT NULL,
  `Year_Entered` decimal(4,0) NOT NULL,
  PRIMARY KEY (`State_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES ('Alabama',8,1819),('Alaska',43,1959),('Arizona',31,1912),('Arkansas',12,1836),('California',16,1850),('Colorado',22,1876),('Connecticut',NULL,1776),('Delawhare',NULL,1776),('Florida',14,1845),('Georgia',NULL,1776),('Hawaii',43,1959),('Idaho',26,1890),('Illinois',8,1818),('Indiana',7,1816),('Iowa',15,1846),('Kansas',18,1861),('Kentucky',1,1792),('Louisiana',6,1812),('Maine',8,1820),('Maryland',NULL,1776),('Massachusetts',NULL,1776),('Michigan',12,1837),('Minnesota',18,1858),('Mississippi',8,1817),('Missouri',9,1821),('Montana',26,1889),('Nebraska',20,1867),('Nevada',19,1864),('New Hampshire',NULL,1776),('New Jersey',NULL,1776),('New Mexico',31,1912),('New York',NULL,1776),('North Carolina',NULL,1776),('North Dakota',26,1889),('Ohio',4,1803),('Oklahoma',30,1907),('Oregon',18,1859),('Pennsylvania',NULL,1776),('Rhode Island',NULL,1776),('South Carolina',NULL,1776),('South Dakota',26,1889),('Tennesee',2,1796),('Texas',15,1845),('Utah',27,1896),('Vermont',1,1791),('Virginia',NULL,1776),('Washington',26,1889),('West Virginia',19,1863),('Wisconsin',15,1848),('Wyoming',26,1890);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-09 20:08:00
