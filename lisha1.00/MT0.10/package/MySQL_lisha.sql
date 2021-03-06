-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: lisha
-- ------------------------------------------------------
-- Server version	5.5.31-0+wheezy1-log

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
-- Table structure for table `lisha_config`
--

DROP TABLE IF EXISTS `lisha_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lisha_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'key identifier number',
  `value` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Value of configuration',
  `unite` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unit of configuration value',
  `FORMAT` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'format expected if any',
  `THEME` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Theme de la conf (groupe)',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Group of type',
  `designation` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Main configuration parameters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lisha_config`
--

LOCK TABLES `lisha_config` WRITE;
/*!40000 ALTER TABLE `lisha_config` DISABLE KEYS */;
INSERT INTO `lisha_config` VALUES (1,'ENG','','string 3 digits','','','Default language'),(2,'ID|SSID|VERSION|tab-level|LNG','string','','','','Reserved keyword'),(3,'28800','seconds','','','','Page Timeout\r\nDo not exceed 86400 (24 hours) !!'),(4,'doc_user/picture/','string','','','','Path for user documentation pictures'),(5,'doc_user/video/','string','','','','Path for user documentation video'),(6,'doc_tech/picture/','string','','','','Path for technical documentation pictures'),(7,'doc_tech/video/','string','','','','Path for technical documentation video'),(8,'f2','string','','','','Url key name to load recorder custom view'),(9,'GroupTheme','string','','','','Customer specific column name for theme group');
/*!40000 ALTER TABLE `lisha_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lisha_language`
--

DROP TABLE IF EXISTS `lisha_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lisha_language` (
  `id` char(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'language identifier',
  `id_tiny` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'description',
  `date_format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Date format by country',
  `decimal_symbol` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Digit used for decimal',
  `thousand_symbol` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Thousand digit',
  `currency` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Currency digit',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='language definition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lisha_language`
--

LOCK TABLES `lisha_language` WRITE;
/*!40000 ALTER TABLE `lisha_language` DISABLE KEYS */;
INSERT INTO `lisha_language` VALUES ('FRA','fr','Français','%d/%m/%Y',',','','€'),('ENG','en','English','%Y-%m-%d','.',',','$');
/*!40000 ALTER TABLE `lisha_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lisha_filter`
--

DROP TABLE IF EXISTS `lisha_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lisha_filter` (
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` mediumint(5) NOT NULL AUTO_INCREMENT,
  `id` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lisha id used',
  `id_column` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('IEQ','IBT','EEQ','EBT','DMD','QSC','SMD','CPS','ORD','SIZ','ALI') COLLATE utf8_unicode_ci NOT NULL,
  `val1` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `val2` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `val3` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`name`,`id`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Record lisha custom viewer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lisha_filter`
--

LOCK TABLES `lisha_filter` WRITE;
/*!40000 ALTER TABLE `lisha_filter` DISABLE KEYS */;
INSERT INTO `lisha_filter` VALUES ('Project Manager',37,'lisha_bugs','reference','ALI','12','center','','2013-03-26 21:16:06'),('Project Manager',35,'lisha_bugs','reference','CPS','12','','','2013-03-26 21:16:06'),('Project Manager',36,'lisha_bugs','reference','SMD','12','%','','2013-03-26 21:16:06'),('Project Manager',34,'lisha_bugs','qui','ALI','11','center','','2013-03-26 21:16:06'),('Project Manager',32,'lisha_bugs','qui','CPS','11','','','2013-03-26 21:16:06'),('Project Manager',33,'lisha_bugs','qui','SMD','11','%','','2013-03-26 21:16:06'),('Project Manager',31,'lisha_bugs','details','ALI','10','center','','2013-03-26 21:16:06'),('Project Manager',30,'lisha_bugs','details','SMD','10','%','','2013-03-26 21:16:06'),('Project Manager',29,'lisha_bugs','details','CPS','10','','','2013-03-26 21:16:06'),('Project Manager',28,'lisha_bugs','flag','ALI','9','center','','2013-03-26 21:16:06'),('Project Manager',27,'lisha_bugs','flag','SMD','9','%','','2013-03-26 21:16:06'),('Project Manager',26,'lisha_bugs','flag','CPS','9','','','2013-03-26 21:16:06'),('Project Manager',25,'lisha_bugs','status','ALI','8','center','','2013-03-26 21:16:06'),('Project Manager',24,'lisha_bugs','status','SMD','8','%','','2013-03-26 21:16:06'),('Project Manager',23,'lisha_bugs','status','CPS','8','','','2013-03-26 21:16:06'),('Project Manager',22,'lisha_bugs','Description','ALI','7','left','','2013-03-26 21:16:06'),('Project Manager',21,'lisha_bugs','Description','SMD','7','%','','2013-03-26 21:16:06'),('Project Manager',20,'lisha_bugs','Description','CPS','7','','','2013-03-26 21:16:06'),('Project Manager',19,'lisha_bugs','DateCrea','ALI','6','center','','2013-03-26 21:16:06'),('Project Manager',18,'lisha_bugs','DateCrea','SMD','6','%','','2013-03-26 21:16:06'),('Project Manager',17,'lisha_bugs','DateCrea','CPS','6','','','2013-03-26 21:16:06'),('Project Manager',16,'lisha_bugs','version','ALI','5','center','','2013-03-26 21:16:06'),('Project Manager',15,'lisha_bugs','version','SMD','5','','','2013-03-26 21:16:06'),('Project Manager',14,'lisha_bugs','version','CPS','5','','','2013-03-26 21:16:06'),('Project Manager',13,'lisha_bugs','classe','ALI','4','center','','2013-03-26 21:16:06'),('Project Manager',12,'lisha_bugs','classe','SMD','4','%','','2013-03-26 21:16:06'),('Project Manager',11,'lisha_bugs','classe','CPS','4','','','2013-03-26 21:16:06'),('Project Manager',10,'lisha_bugs','type','ALI','3','left','','2013-03-26 21:16:06'),('Project Manager',9,'lisha_bugs','type','SMD','3','%','','2013-03-26 21:16:06'),('Project Manager',8,'lisha_bugs','type','CPS','3','','','2013-03-26 21:16:06'),('Project Manager',7,'lisha_bugs','business','ALI','2','center','','2013-03-26 21:16:06'),('Project Manager',6,'lisha_bugs','business','SMD','2','','','2013-03-26 21:16:06'),('Project Manager',5,'lisha_bugs','business','QSC','2','Project Manager','','2013-03-26 21:16:06'),('Project Manager',1,'lisha_bugs','id','CPS','1','','','2013-03-26 21:16:06'),('Project Manager',2,'lisha_bugs','id','SMD','1','','','2013-03-26 21:16:06'),('Project Manager',3,'lisha_bugs','id','ALI','1','center','','2013-03-26 21:16:06'),('Project Manager',4,'lisha_bugs','business','CPS','2','','','2013-03-26 21:16:06'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',27,'lisha_transaction','datum','ALI','8','center','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',28,'lisha_transaction','MyGroupTheme','CPS','9','','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',12,'lisha_transaction','upper','CPS','4','','','2013-05-15 13:13:44'),('Project Manager',41,'lisha_bugs','last_mod','ALI','13','center','','2013-03-26 21:16:06'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',10,'lisha_transaction','amount','SMD','3','%','','2013-05-15 13:13:44'),('Project Manager',40,'lisha_bugs','last_mod','SMD','13','%','','2013-03-26 21:16:06'),('Project Manager',39,'lisha_bugs','last_mod','CPS','13','','','2013-03-26 21:16:06'),('Project Manager',38,'lisha_bugs','last_mod','ORD','1','DESC','13','2013-03-26 21:16:06'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',31,'lisha_transaction','MyGroupTheme','ALI','9','center','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',30,'lisha_transaction','MyGroupTheme','SMD','9','%','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',7,'lisha_transaction','description','ALI','2','left','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',6,'lisha_transaction','description','SMD','2','%','','2013-05-15 13:13:44'),('mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmooooommmmmmmm',1,'','','IEQ','',NULL,NULL,'2013-05-14 09:23:23'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',29,'lisha_transaction','MyGroupTheme','DMD','9','','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',26,'lisha_transaction','datum','SMD','8','%','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',25,'lisha_transaction','datum','CPS','8','','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',24,'lisha_transaction','status','ALI','7','center','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',23,'lisha_transaction','status','SMD','7','%','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',22,'lisha_transaction','status','CPS','7','','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',21,'lisha_transaction','checkme','ALI','6','center','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',20,'lisha_transaction','checkme','SMD','6','%','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',19,'lisha_transaction','checkme','CPS','6','','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',18,'lisha_transaction','index','ALI','5','center','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',17,'lisha_transaction','index','SMD','5','%','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',16,'lisha_transaction','index','CPS','5','','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',15,'lisha_transaction','index','ORD','1','DESC','5','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',14,'lisha_transaction','upper','ALI','4','left','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',13,'lisha_transaction','upper','SMD','4','%','','2013-05-15 13:13:44'),('testme',23,'lisha_transaction','status','CPS','7','','','2013-05-16 14:39:30'),('testme',31,'lisha_transaction','MyGroupTheme','SMD','9','%','','2013-05-16 14:39:30'),('testme',30,'lisha_transaction','MyGroupTheme','DMD','9','','','2013-05-16 14:39:30'),('testme',29,'lisha_transaction','MyGroupTheme','CPS','9','','','2013-05-16 14:39:30'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',11,'lisha_transaction','amount','ALI','3','left','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',9,'lisha_transaction','amount','CPS','3','','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',8,'lisha_transaction','amount','ORD','3','ASC','3','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',5,'lisha_transaction','description','CPS','2','','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',4,'lisha_transaction','description','ORD','2','DESC','2','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',3,'lisha_transaction','daterec','ALI','1','center','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',2,'lisha_transaction','daterec','SMD','1','%','','2013-05-15 13:13:44'),('mmmmmmmmmmmm!!!!!mmmmmmmmmmmmmmmmmmmmmmmmmmm!!!!mmm',1,'lisha_transaction','daterec','CPS','1','','','2013-05-15 13:13:44'),('testme',28,'lisha_transaction','datum','ALI','8','center','','2013-05-16 14:39:30'),('testme',26,'lisha_transaction','datum','CPS','8','','','2013-05-16 14:39:30'),('testme',27,'lisha_transaction','datum','SMD','8','%','','2013-05-16 14:39:30'),('testme',25,'lisha_transaction','status','ALI','7','center','','2013-05-16 14:39:30'),('dz',1,'','','IEQ','',NULL,NULL,'2013-05-14 14:39:02'),('testme',24,'lisha_transaction','status','SMD','7','%','','2013-05-16 14:39:30'),('testme',22,'lisha_transaction','checkme','ALI','6','center','','2013-05-16 14:39:30'),('testme',21,'lisha_transaction','checkme','SMD','6','%','','2013-05-16 14:39:30'),('testme',20,'lisha_transaction','checkme','CPS','6','','','2013-05-16 14:39:30'),('testme',19,'lisha_transaction','index','ALI','5','center','','2013-05-16 14:39:30'),('testme',18,'lisha_transaction','index','SMD','5','%','','2013-05-16 14:39:30'),('testme',17,'lisha_transaction','index','CPS','5','','','2013-05-16 14:39:30'),('testme',16,'lisha_transaction','index','ORD','1','DESC','5','2013-05-16 14:39:30'),('testme',15,'lisha_transaction','upper','ALI','4','left','','2013-05-16 14:39:30'),('testme',14,'lisha_transaction','upper','SMD','4','%','','2013-05-16 14:39:30'),('testme',13,'lisha_transaction','upper','CPS','4','','','2013-05-16 14:39:30'),('testme',12,'lisha_transaction','amount','ALI','3','left','','2013-05-16 14:39:30'),('testme',10,'lisha_transaction','amount','QSC','3','hkjdjgkjlkgjflkgjdflkgjdlfdjlhj000iiiiiiilhjdlhjdlhjldhjfhjlkfhjfglkhjflkhjflkgj','','2013-05-16 14:39:30'),('testme',11,'lisha_transaction','amount','SMD','3','%','','2013-05-16 14:39:30'),('testme',9,'lisha_transaction','amount','CPS','3','','','2013-05-16 14:39:30'),('testme',8,'lisha_transaction','amount','ORD','3','ASC','3','2013-05-16 14:39:30'),('testme',7,'lisha_transaction','description','ALI','2','left','','2013-05-16 14:39:30'),('testme',6,'lisha_transaction','description','SMD','2','%','','2013-05-16 14:39:30'),('testme',4,'lisha_transaction','description','ORD','2','DESC','2','2013-05-16 14:39:30'),('testme',5,'lisha_transaction','description','CPS','2','','','2013-05-16 14:39:30'),('testme',3,'lisha_transaction','daterec','ALI','1','center','','2013-05-16 14:39:30'),('testme',2,'lisha_transaction','daterec','SMD','1','%','','2013-05-16 14:39:30'),('testme',1,'lisha_transaction','daterec','CPS','1','','','2013-05-16 14:39:30'),('efferfer',1,'','','IEQ','',NULL,NULL,'2013-05-15 13:36:05'),('testme',32,'lisha_transaction','MyGroupTheme','ALI','9','center','','2013-05-16 14:39:30');
/*!40000 ALTER TABLE `lisha_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lisha_text`
--

DROP TABLE IF EXISTS `lisha_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lisha_text` (
  `id` mediumint(8) unsigned NOT NULL COMMENT 'Text id',
  `id_lang` char(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language id',
  `texte` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Title',
  `corps` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Body message',
  `version_active` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Active version',
  PRIMARY KEY (`id`,`id_lang`,`version_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Store lisha text';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lisha_text`
--

LOCK TABLES `lisha_text` WRITE;
/*!40000 ALTER TABLE `lisha_text` DISABLE KEYS */;
INSERT INTO `lisha_text` VALUES (0,'FRA','','Recherche multi-colonne','lisha1.00'),(0,'ENG','','Multiple columns search','lisha1.00'),(1,'FRA','','Masquer/démasquer des colonnes','lisha1.00'),(1,'ENG','','Show/hide columns','lisha1.00'),(2,'FRA','','Masquer options colonnes','lisha1.00'),(2,'ENG','','Hide column option','lisha1.00'),(3,'FRA','','Sauvegarder le filtrage utilisé','lisha1.00'),(3,'ENG','','Save filter','lisha1.00'),(4,'FRA','','Charger un filtre','lisha1.00'),(4,'ENG','','Load a filter','lisha1.00'),(5,'FRA','','Tout afficher','lisha1.00'),(5,'ENG','','Display all','lisha1.00'),(6,'FRA','','Insérer une ligne','lisha1.00'),(6,'ENG','','Insert a line','lisha1.00'),(7,'FRA','','Editer les lignes sélectionnées','lisha1.00'),(7,'ENG','','Edit selected lines.','lisha1.00'),(8,'FRA','','Effacer les lignes sélectionnées','lisha1.00'),(8,'ENG','','Delete selected line','lisha1.00'),(9,'FRA','','Exporter le résultat au format CSV','lisha1.00'),(9,'ENG','','Export result as CSV','lisha1.00'),(10,'FRA','','Documentation utilisateur','lisha1.00'),(10,'ENG','','User help documentation','lisha1.00'),(11,'FRA','','Mettre à jour la liste','lisha1.00'),(11,'ENG','','Refresh list','lisha1.00'),(12,'FRA','','Aller en première page','lisha1.00'),(12,'ENG','','Go to the first page','lisha1.00'),(13,'FRA','','Page précédente','lisha1.00'),(13,'ENG','','Previous page','lisha1.00'),(14,'FRA','','Page suivante','lisha1.00'),(14,'ENG','','Next page','lisha1.00'),(15,'FRA','','Aller en dernière page','lisha1.00'),(15,'ENG','','Go to the last page','lisha1.00'),(16,'FRA','','Editer la ligne sélectionnée','lisha1.00'),(16,'ENG','','Edit selected line.','lisha1.00'),(17,'FRA','','Redimensionner colonne','lisha1.00'),(17,'ENG','','Resize column','lisha1.00'),(18,'FRA','','Tri croissant','lisha1.00'),(18,'ENG','','Sort ascending','lisha1.00'),(19,'FRA','','Tri décroissant','lisha1.00'),(19,'ENG','','Sort descending','lisha1.00'),(20,'FRA','','Masquer la colonne','lisha1.00'),(20,'ENG','','Hide column','lisha1.00'),(21,'FRA','','Options de colonne','lisha1.00'),(21,'ENG','','Column option','lisha1.00'),(22,'FRA','','Page','lisha1.00'),(22,'ENG','','Page','lisha1.00'),(23,'FRA','','sur','lisha1.00'),(23,'ENG','','on','lisha1.00'),(24,'FRA','','lignes par page','lisha1.00'),(24,'ENG','','lines per page','lisha1.00'),(25,'FRA','','Lignes affichées','lisha1.00'),(25,'ENG','','Displayed lines','lisha1.00'),(26,'FRA','','à','lisha1.00'),(26,'ENG','','to','lisha1.00'),(27,'FRA','','sur','lisha1.00'),(27,'ENG','','out of','lisha1.00'),(28,'FRA','','au total','lisha1.00'),(28,'ENG','','total','lisha1.00'),(29,'FRA','','(ici : $x lignes)','lisha1.00'),(29,'ENG','','(here : $x lines)','lisha1.00'),(30,'FRA','','Veuillez saisir le nom du filtre.','lisha1.00'),(30,'ENG','','Please insert the name of the filter.','lisha1.00'),(31,'FRA','','Ok','lisha1.00'),(31,'ENG','','Ok','lisha1.00'),(32,'FRA','','Annuler','lisha1.00'),(32,'ENG','','Cancel','lisha1.00'),(33,'FRA','','Résultat(s)','lisha1.00'),(33,'ENG','','Result(s)','lisha1.00'),(34,'FRA','','Mode de recherche','lisha1.00'),(34,'ENG','','Search mode','lisha1.00'),(35,'FRA','','Stricte','lisha1.00'),(35,'ENG','','Strict','lisha1.00'),(36,'FRA','','Partielle','lisha1.00'),(36,'ENG','','Partial','lisha1.00'),(37,'FRA','','autre possibilité','lisha1.00'),(37,'ENG','','other possibilitie','lisha1.00'),(38,'FRA','','autres possibilités','lisha1.00'),(38,'ENG','','other possibilities','lisha1.00'),(39,'FRA','','Tri','lisha1.00'),(39,'ENG','','Order','lisha1.00'),(40,'FRA','','Déplacer la colonne / Faire un tri sur la colonne','lisha1.00'),(40,'ENG','','Move column / order the column','lisha1.00'),(41,'FRA','','Filtrage avancé','lisha1.00'),(41,'ENG','','Advanced filter','lisha1.00'),(42,'FRA','','Supprimer le tri','lisha1.00'),(42,'ENG','','Delete order clause','lisha1.00'),(43,'FRA','','Aucun résultat','lisha1.00'),(43,'ENG','','No result','lisha1.00'),(44,'FRA','','Liste des valeurs possibles','lisha1.00'),(44,'ENG','','Possible values','lisha1.00'),(45,'FRA','','Abandonner','lisha1.00'),(45,'ENG','','Abort','lisha1.00'),(46,'FRA','\r\n','Alignement','lisha1.00'),(46,'ENG','','Alignment','lisha1.00'),(47,'FRA','\r\n','Gauche','lisha1.00'),(47,'ENG','','Left','lisha1.00'),(48,'FRA','\r\n','Centré','lisha1.00'),(48,'ENG','','Center','lisha1.00'),(49,'FRA','\r\n','Droite','lisha1.00'),(49,'ENG','','Right','lisha1.00'),(50,'FRA','\r\n','Sauvegarder','lisha1.00'),(50,'ENG','','Save','lisha1.00'),(51,'FRA','','Suppression d\'une ligne','lisha1.00'),(51,'ENG','','Delete a line','lisha1.00'),(52,'FRA','','Veuillez sélectionner au moins une ligne','lisha1.00'),(52,'ENG','','Please select at least one line','lisha1.00'),(53,'FRA','','Edition d\'une ligne','lisha1.00'),(53,'ENG','','Edit a line','lisha1.00'),(54,'FRA','','Suppression d\'une ligne','lisha1.00'),(54,'ENG','','Delete a line','lisha1.00'),(55,'FRA','','Êtes vous sur de vouloir supprimer $x ligne(s) ?','lisha1.00'),(55,'ENG','','Are you sure to delete $x line(s) ?','lisha1.00'),(56,'FRA','','Insertion impossible','lisha1.00'),(56,'ENG','','Impossible insertion','lisha1.00'),(57,'FRA','','Le champ $name est obligatoire.','lisha1.00'),(57,'ENG','','The field $name is mandatory !!','lisha1.00'),(58,'FRA','','Le champ $name est interdit.','lisha1.00'),(58,'ENG','','The field $name is forbidden.','lisha1.00'),(60,'FRA','','Filtre','lisha1.00'),(60,'ENG','','Filter','lisha1.00'),(61,'FRA','','Date','lisha1.00'),(61,'ENG','','Date','lisha1.00'),(62,'FRA','','Le nom du filtre que vous avez saisi existe déjà. Merci d\'en choisir un autre.','lisha1.00'),(62,'ENG','','The name of the filter already exit. Please check an other.','lisha1.00'),(63,'FRA','','Impossible de sauvegarder le filtre','lisha1.00'),(63,'ENG','','Impossible save','lisha1.00'),(64,'FRA','','Masquer / Afficher les colonnes','lisha1.00'),(64,'ENG','','Display / Hide columns','lisha1.00'),(65,'FRA','','Cliquer pour lancer la recherche avec cette valeur','lisha1.00'),(65,'ENG','','Click to search with this value','lisha1.00'),(66,'FRA','','Calendrier','lisha1.00'),(66,'ENG','','Calendar','lisha1.00'),(67,'FRA','','Mois suivant','lisha1.00'),(67,'ENG','','Next month','lisha1.00'),(68,'FRA','','Mois précédent','lisha1.00'),(68,'ENG','','Previous month','lisha1.00'),(69,'FRA','','Cliquer pour sélectionner cette date','lisha1.00'),(69,'ENG','','Click to return this date','lisha1.00'),(70,'FRA','','Jour précédent','lisha1.00'),(70,'ENG','','Previous day','lisha1.00'),(71,'FRA','','Jour suivant','lisha1.00'),(71,'ENG','','Next day','lisha1.00'),(72,'FRA','','Année suivante','lisha1.00'),(72,'ENG','','Next year','lisha1.00'),(73,'FRA','','Année précédente','lisha1.00'),(73,'ENG','','Previous year','lisha1.00'),(74,'FRA','','Erreur javascript','lisha1.00'),(74,'ENG','','Javascript error','lisha1.00'),(75,'FRA','','Ligne','lisha1.00'),(75,'ENG','','Line','lisha1.00'),(77,'FRA','','Cocher pour sélectionner la ligne / Presser maj pour en sélectionner plusieurs','lisha1.00'),(77,'ENG','','Check to select the line / Press maj for multiple select','lisha1.00'),(76,'FRA','','Cocher pour prendre en compte la modification','lisha1.00'),(76,'ENG','','Check to backup update','lisha1.00'),(78,'FRA','','Annuler les modifications','lisha1.00'),(78,'ENG','','Cancel edit','lisha1.00'),(79,'FRA','','Liste des Tickets','lisha1.00'),(79,'ENG','','Tickets list','lisha1.00'),(80,'FRA','','Documentation technique','lisha1.00'),(80,'ENG','','Technical documentation','lisha1.00'),(81,'FRA','','Janvier','lisha1.00'),(81,'ENG','','January','lisha1.00'),(82,'FRA','','Février','lisha1.00'),(82,'ENG','','February','lisha1.00'),(83,'FRA','','Mars','lisha1.00'),(83,'ENG','','March','lisha1.00'),(84,'FRA','','Avril','lisha1.00'),(84,'ENG','','April','lisha1.00'),(85,'FRA','','Mai','lisha1.00'),(85,'ENG','','May','lisha1.00'),(86,'FRA','','Juin','lisha1.00'),(86,'ENG','','June','lisha1.00'),(87,'FRA','','Juillet','lisha1.00'),(87,'ENG','','July','lisha1.00'),(88,'FRA','','Août','lisha1.00'),(88,'ENG','','August','lisha1.00'),(89,'FRA','','Septembre','lisha1.00'),(89,'ENG','','September','lisha1.00'),(90,'FRA','','Octobre','lisha1.00'),(90,'ENG','','October','lisha1.00'),(91,'FRA','','Novembre','lisha1.00'),(91,'ENG','','November','lisha1.00'),(92,'FRA','','Décembre','lisha1.00'),(92,'ENG','','December','lisha1.00'),(93,'FRA','','Lundi','lisha1.00'),(93,'ENG','','Monday','lisha1.00'),(94,'FRA','','Mardi','lisha1.00'),(94,'ENG','','Tuesday','lisha1.00'),(95,'FRA','','Mercredi','lisha1.00'),(95,'ENG','','Wednesday','lisha1.00'),(96,'FRA','','Jeudi','lisha1.00'),(96,'ENG','','Thursday','lisha1.00'),(97,'FRA','','Vendredi','lisha1.00'),(97,'ENG','','Friday','lisha1.00'),(98,'FRA','','Samedi','lisha1.00'),(98,'ENG','','Saturday','lisha1.00'),(99,'FRA','','Dimanche','lisha1.00'),(99,'ENG','','Sunday','lisha1.00'),(100,'FRA','','Lu','lisha1.00'),(100,'ENG','','Mo','lisha1.00'),(101,'FRA','','Ma','lisha1.00'),(101,'ENG','','Tu','lisha1.00'),(102,'FRA','','Me','lisha1.00'),(102,'ENG','','We','lisha1.00'),(103,'FRA','','Je','lisha1.00'),(103,'ENG','','Th','lisha1.00'),(104,'FRA','','Ve','lisha1.00'),(104,'ENG','','Fr','lisha1.00'),(105,'FRA','','Sa','lisha1.00'),(105,'ENG','','Sa','lisha1.00'),(106,'FRA','','Di','lisha1.00'),(106,'ENG','','Su','lisha1.00'),(107,'FRA','','Export en cours...','lisha1.00'),(107,'ENG','','Exporting in progress...','lisha1.00'),(108,'FRA','','Total de $1 ligne(s)','lisha1.00'),(108,'ENG','','Total of $1 line(s)','lisha1.00'),(109,'FRA','','Export de fichier terminé','lisha1.00'),(109,'ENG','','Export file done','lisha1.00'),(110,'FRA','','Le fichier <b>$1</b> est créé dans votre répertoire de téléchargement<br>Total de $2 ligne(s) exporté(s)','lisha1.00'),(110,'ENG','','A new file <b>$1</b> is created in your download folder<br>Total of $2 line(s) exported','lisha1.00'),(111,'FRA','','Impossible de créer le fichier','lisha1.00'),(111,'ENG','','Export file creation failed','lisha1.00'),(112,'FRA','','Votre navigateur semble bloquer les fenêtres surgissantes.<br>Merci d\'autoriser cette fonction pour pouvoir exporter votre liste.','lisha1.00'),(112,'ENG','','It\'s seems that your browser lock popup.<br>Thank to granted this function to be able to create export file. ','lisha1.00'),(113,'FRA','','Confirmation téléchargement fichier','lisha1.00'),(113,'ENG','','Downloading export file confirmation','lisha1.00'),(114,'FRA','','Vous allez exporter $1 ligne(s).<br>Continuer ?','lisha1.00'),(114,'ENG','','You requested to export $1 line(s).<br>Continue ?','lisha1.00'),(115,'FRA','','Téléchargement en cours','lisha1.00'),(115,'ENG','','Donwloading in progress','lisha1.00'),(116,'FRA','','Aucune ligne a exporter. Vos filtres de colonnes retournent aucun résultat','lisha1.00'),(116,'ENG','','No line to export. You column filter values return no line','lisha1.00'),(117,'FRA','','Export vide','lisha1.00'),(117,'ENG','','Empty export','lisha1.00'),(118,'FRA','','Colonnes disponibles','lisha1.00'),(118,'ENG','','Available columns','lisha1.00'),(119,'FRA','','Nom de la colonne','lisha1.00'),(119,'ENG','','Column name','lisha1.00'),(120,'FRA','','Afficher','lisha1.00'),(120,'ENG','','Display','lisha1.00'),(121,'FRA','','Appliquer','lisha1.00'),(121,'ENG','','Apply','lisha1.00');
/*!40000 ALTER TABLE `lisha_text` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-20 16:20:43
