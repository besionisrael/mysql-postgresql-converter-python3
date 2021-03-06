-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: iccvitrinedb
-- ------------------------------------------------------
-- Server version	5.7.19
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,POSTGRESQL' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "data_rows"
--

DROP TABLE IF EXISTS "data_rows";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "data_rows" (
  "id" int(10) unsigned NOT NULL,
  "data_type_id" int(10) unsigned NOT NULL,
  "field" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "type" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "display_name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "required" tinyint(1) NOT NULL DEFAULT '0',
  "browse" tinyint(1) NOT NULL DEFAULT '1',
  "read" tinyint(1) NOT NULL DEFAULT '1',
  "edit" tinyint(1) NOT NULL DEFAULT '1',
  "add" tinyint(1) NOT NULL DEFAULT '1',
  "delete" tinyint(1) NOT NULL DEFAULT '1',
  "details" text COLLATE utf8mb4_unicode_ci,
  "order" int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY ("id"),
  KEY "data_rows_data_type_id_foreign" ("data_type_id"),
  CONSTRAINT "data_rows_data_type_id_foreign" FOREIGN KEY ("data_type_id") REFERENCES "data_types" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "data_rows"
--

LOCK TABLES "data_rows" WRITE;
/*!40000 ALTER TABLE "data_rows" DISABLE KEYS */;
INSERT INTO "data_rows" VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),(2,1,'name','text','Name',1,1,1,1,1,1,'{}',2),(3,1,'email','text','Email',1,1,1,1,1,1,'{}',3),(4,1,'password','password','Password',1,0,0,1,1,0,'{}',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',12),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',0,1,1,1,1,1,'{}',9),(22,1,'email_verified_at','timestamp','Email Verified At',0,1,1,1,1,1,'{}',6),(90,11,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(91,11,'username','text','Username',0,0,1,1,1,1,'{}',3),(93,11,'name','text','D??signation',1,1,1,1,1,1,'{}',2),(94,11,'address','text_area','Adresse',0,1,1,1,1,1,'{}',4),(95,11,'contact','text','Contact',0,1,1,1,1,1,'{}',5),(96,11,'website','text','Site web',0,1,1,1,1,1,'{}',6),(97,11,'logo','image','Logo',0,1,1,1,1,1,'{}',7),(98,11,'description','text_area','Description',0,0,1,1,1,1,'{}',8),(99,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(100,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(109,13,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(110,13,'designation','text','D??signation',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|min:6\"}}',2),(111,13,'description','text_area','Description',0,0,1,1,1,1,'{}',7),(112,13,'attendance','number','Nombre de places',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|numeric\"}}',5),(113,13,'predicted_date','timestamp','Date prevue',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|date\"}}',3),(114,13,'organiser_id','text','Organisateur',0,0,1,1,1,1,'{}',6),(115,13,'created_at','timestamp','Created At',0,0,1,1,0,1,'{}',9),(116,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(126,13,'schedule_belongsto_organiser_relationship','relationship','Organisateur',0,0,1,1,1,1,'{\"model\":\"App\\\\Organiser\",\"table\":\"organisers\",\"type\":\"belongsTo\",\"column\":\"organiser_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',8),(132,1,'user_belongsto_organiser_relationship','relationship','Organisateur',0,1,1,1,1,1,'{\"model\":\"App\\\\Organiser\",\"table\":\"organisers\",\"type\":\"belongsTo\",\"column\":\"organiser_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(133,1,'organiser_id','text','Organiser Id',0,1,1,1,1,1,'{}',12),(134,16,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(135,16,'fullname','text','Nom complet',1,1,1,1,1,1,'{}',2),(136,16,'phone','text','T??l??phone',1,1,1,1,1,1,'{}',3),(137,16,'email','text','Email',0,1,1,1,1,1,'{}',4),(138,16,'organiser_id','text','Organisateur',0,0,0,0,0,0,'{}',5),(139,16,'faithful_belongsto_organiser_relationship','relationship','Organisateur',0,0,0,0,1,0,'{\"model\":\"App\\\\Organiser\",\"table\":\"organisers\",\"type\":\"belongsTo\",\"column\":\"organiser_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(140,16,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(141,16,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(142,17,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(143,17,'designation','text','Designation',1,1,1,1,1,1,'{}',2),(144,17,'nombre_sms','text','Nombre Sms',1,1,1,1,1,1,'{}',3),(145,17,'observation','text','Observation',0,1,1,1,1,1,'{}',4),(146,17,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(147,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(148,17,'organiser_id','text','Organ',0,1,1,1,1,1,'{}',5),(149,17,'bundle_belongsto_organiser_relationship','relationship','organisers',0,1,1,1,1,1,'{\"model\":\"App\\\\Organiser\",\"table\":\"organisers\",\"type\":\"belongsTo\",\"column\":\"organiser_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"bundles\",\"pivot\":\"0\",\"taggable\":null}',8),(150,18,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(151,18,'theme','text','Theme',1,1,1,1,1,1,'{}',2),(152,18,'body','text_area','Corps du message',1,1,1,1,1,1,'{}',3),(153,18,'organiser_id','text','Organisateur',0,1,1,1,1,1,'{}',4),(154,18,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(155,18,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(156,18,'broadcast_belongsto_organiser_relationship','relationship','Organisateur',0,1,1,1,1,1,'{\"model\":\"App\\\\Organiser\",\"table\":\"organisers\",\"type\":\"belongsTo\",\"column\":\"organiser_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"broadcasts\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(157,20,'id','text','Id',1,0,0,0,0,0,'{}',1),(158,20,'name','text','Name',1,1,1,1,1,1,'{}',2),(159,20,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(160,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(161,13,'is_active','checkbox','Est activ??',0,1,1,1,1,1,'{}',4),(162,21,'id','text','Id',1,0,0,0,0,0,'{}',1),(163,21,'nombre_sms','text','Nombre Sms',0,1,1,1,1,1,'{}',2),(164,21,'organiser_id','text','Organiser Id',0,1,1,1,1,1,'{}',3),(165,21,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(166,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(167,21,'notification_belongsto_organiser_relationship','relationship','organisers',0,1,1,1,1,1,'{\"model\":\"App\\\\Organiser\",\"table\":\"organisers\",\"type\":\"belongsTo\",\"column\":\"organiser_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"broadcasts\",\"pivot\":\"0\",\"taggable\":null}',6),(168,11,'is_private','checkbox','Est priv??',0,1,1,1,1,1,'{}',11),(169,22,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(170,22,'designation','text','Designation',0,1,1,1,1,1,'{}',2),(171,22,'type','select_dropdown','Type',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Video\"}}',3),(172,22,'description','text_area','Description',0,1,1,1,1,1,'{}',4),(173,22,'image_url','image','Image Url',0,1,1,1,1,1,'{}',5),(174,22,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(175,22,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(176,22,'est_actif','checkbox','Est Actif',0,1,1,1,1,1,'{}',8),(177,23,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(178,23,'nom_complet','text','Nom Complet',0,1,1,1,1,1,'{}',2),(179,23,'nationalite','text','Nationalite',0,1,1,1,1,1,'{}',3),(180,23,'adresse','text','Adresse',0,1,1,1,1,1,'{}',4),(181,23,'phone','text','Phone',0,1,1,1,1,1,'{}',5),(182,23,'genre','select_dropdown','Genre',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Masculin\",\"2\":\"Feminin\"}}',6),(183,23,'age','number','Age',0,1,1,1,1,1,'{}',7),(184,23,'commentaires','text_area','Commentaires',0,1,1,1,1,1,'{}',8),(185,23,'est_actif','checkbox','Est Actif',0,1,1,1,1,1,'{}',9),(186,23,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(187,23,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(188,24,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(189,24,'nom_complet','text','Nom Complet',0,1,1,1,1,1,'{}',2),(190,24,'type','text','Type',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Ministre\",\"2\":\"Pasteur Assistant\",\"3\":\"Pasteur\"}}',3),(191,24,'image_url','image','Image Url',0,1,1,1,1,1,'{}',4),(192,24,'bio','text_area','Bio',0,1,1,1,1,1,'{}',5),(193,24,'est_actif','checkbox','Est Actif',0,1,1,1,1,1,'{}',6),(194,24,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(195,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(196,25,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(197,25,'email','text','Email',0,1,1,1,1,1,'{}',2),(198,25,'nom_complet','text','Nom Complet',0,1,1,1,1,1,'{}',3),(199,25,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(200,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(201,25,'est_actif','checkbox','Est Actif',0,1,1,1,1,1,'{}',6),(202,26,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(203,26,'nom_complet','text','Nom Complet',0,1,1,1,1,1,'{}',2),(204,26,'ville','text','Ville',0,1,1,1,1,1,'{}',3),(205,26,'body','text','Body',0,1,1,1,1,1,'{}',4),(206,26,'est_actif','checkbox','Est Actif',0,1,1,1,1,1,'{}',5),(207,26,'image_url','image','Image Url',0,1,1,1,1,1,'{}',6),(208,26,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(209,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(210,27,'id','hidden','Id',1,0,0,0,0,0,'{}',0),(211,27,'firstname','text','Firstname',0,1,1,1,1,1,'{}',2),(212,27,'lastname','text','Lastname',0,1,1,1,1,1,'{}',3),(213,27,'adress','text','Adress',0,0,1,1,1,1,'{}',4),(214,27,'email','text','Email',0,0,1,1,1,1,'{}',5),(215,27,'amount','text','Amount',0,1,1,1,1,1,'{}',6),(216,27,'currency','text','Currency',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"USD\":\"USD\",\"CDF\":\"CDF\",\"EUR\":\"EUR\"}}',7),(217,27,'order_id','text','Order Id',0,1,1,1,1,1,'{}',8),(218,27,'session_id','text','Session Id',0,1,1,1,1,1,'{}',9),(219,27,'status','text','Status',0,1,1,1,1,1,'{}',10),(220,27,'method','text','Method',0,1,1,1,1,1,'{}',11),(221,27,'ip_adress','text','Ip Adress',0,0,1,1,1,1,'{}',12),(222,27,'comments','text','Comments',0,0,1,1,1,1,'{}',13),(223,27,'is_active','checkbox','Is Active',0,1,1,1,1,1,'{}',14),(224,27,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',15),(225,27,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',16),(226,27,'phone','text','Phone',0,1,1,1,1,1,'{}',17);
/*!40000 ALTER TABLE "data_rows" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "data_types"
--

DROP TABLE IF EXISTS "data_types";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "data_types" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "slug" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "display_name_singular" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "display_name_plural" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "icon" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "model_name" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "policy_name" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "controller" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "description" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "generate_permissions" tinyint(1) NOT NULL DEFAULT '0',
  "server_side" tinyint(4) NOT NULL DEFAULT '0',
  "details" text COLLATE utf8mb4_unicode_ci,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "data_types_name_unique" ("name"),
  UNIQUE KEY "data_types_slug_unique" ("slug")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "data_types"
--

LOCK TABLES "data_types" WRITE;
/*!40000 ALTER TABLE "data_types" DISABLE KEYS */;
INSERT INTO "data_types" VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-07-18 18:22:10','2020-07-19 15:08:14'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2020-07-18 18:22:10','2020-07-18 18:22:10'),(11,'organisers','organisers','Organisateur','Organisateurs','voyager-polaroid','App\\Organiser',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-07-19 08:38:36','2020-07-30 22:43:42'),(13,'schedules','schedules','C??l??bration','C??l??brations','voyager-news','App\\Schedule',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-07-19 08:42:27','2020-08-02 23:45:31'),(16,'faithfuls','faithfuls','Fid??le','Fid??les','voyager-people','App\\Faithful',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-07-28 01:47:33','2020-07-29 19:09:35'),(17,'bundles','bundles','Bundle','Bundles',NULL,'App\\Bundle',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-07-28 01:55:01','2020-07-28 01:55:01'),(18,'broadcasts','broadcasts','Diffusion','Diffusions','voyager-wifi','App\\Broadcast',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-07-28 02:00:25','2020-08-02 16:30:04'),(20,'menus','menus','Menu','Menus',NULL,'TCG\\Voyager\\Models\\Menu',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-07-28 02:11:23','2020-07-28 02:11:23'),(21,'notifications','notifications','Notification','Notifications','voyager-info-circled','App\\Notification',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-07-30 02:31:09','2020-07-30 02:31:09'),(22,'departements','departements','Departement','Departements','voyager-window-list','App\\Departement',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-08-11 20:15:21','2021-08-11 20:15:21'),(23,'fideles','fideles','Fidele','Fideles','voyager-people','App\\Fidele',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-11 20:21:51','2021-08-11 20:23:05'),(24,'ministres','ministres','Ministre','Ministres','voyager-people','App\\Ministre',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-08-11 20:41:40','2021-08-11 20:41:40'),(25,'newsletters','newsletters','Newsletter','Newsletters','voyager-mail','App\\Newsletter',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-08-11 20:43:19','2021-08-11 20:43:19'),(26,'temoignages','temoignages','Temoignage','Temoignages','voyager-star-two','App\\Temoignage',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-08-11 20:44:33','2021-08-11 20:44:33'),(27,'transactions','transactions','Transaction','Transactions','voyager-activity','App\\Transaction',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-11 20:48:07','2021-08-11 22:31:48');
/*!40000 ALTER TABLE "data_types" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "departements"
--

DROP TABLE IF EXISTS "departements";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "departements" (
  "id" int(10) unsigned NOT NULL,
  "designation" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "type" int(11) DEFAULT NULL,
  "description" text COLLATE utf8mb4_unicode_ci,
  "image_url" text COLLATE utf8mb4_unicode_ci,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  "est_actif" tinyint(4) DEFAULT '1',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "departements"
--

LOCK TABLES "departements" WRITE;
/*!40000 ALTER TABLE "departements" DISABLE KEYS */;
/*!40000 ALTER TABLE "departements" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "failed_jobs"
--

DROP TABLE IF EXISTS "failed_jobs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "failed_jobs" (
  "id" bigint(20) unsigned NOT NULL,
  "connection" text COLLATE utf8mb4_unicode_ci NOT NULL,
  "queue" text COLLATE utf8mb4_unicode_ci NOT NULL,
  "payload" longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  "exception" longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  "failed_at" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "failed_jobs"
--

LOCK TABLES "failed_jobs" WRITE;
/*!40000 ALTER TABLE "failed_jobs" DISABLE KEYS */;
/*!40000 ALTER TABLE "failed_jobs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "fideles"
--

DROP TABLE IF EXISTS "fideles";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "fideles" (
  "id" int(10) unsigned NOT NULL,
  "nom_complet" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "nationalite" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "adresse" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "phone" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "genre" tinyint(4) DEFAULT NULL,
  "age" tinyint(4) DEFAULT NULL,
  "commentaires" text COLLATE utf8mb4_unicode_ci,
  "est_actif" tinyint(4) DEFAULT '1',
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "fideles"
--

LOCK TABLES "fideles" WRITE;
/*!40000 ALTER TABLE "fideles" DISABLE KEYS */;
/*!40000 ALTER TABLE "fideles" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "jobs"
--

DROP TABLE IF EXISTS "jobs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "jobs" (
  "id" bigint(20) unsigned NOT NULL,
  "queue" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "payload" longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  "attempts" tinyint(3) unsigned NOT NULL,
  "reserved_at" int(10) unsigned DEFAULT NULL,
  "available_at" int(10) unsigned NOT NULL,
  "created_at" int(10) unsigned NOT NULL,
  PRIMARY KEY ("id"),
  KEY "jobs_queue_index" ("queue")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "jobs"
--

LOCK TABLES "jobs" WRITE;
/*!40000 ALTER TABLE "jobs" DISABLE KEYS */;
/*!40000 ALTER TABLE "jobs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "menu_items"
--

DROP TABLE IF EXISTS "menu_items";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "menu_items" (
  "id" int(10) unsigned NOT NULL,
  "menu_id" int(10) unsigned DEFAULT NULL,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "url" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "target" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  "icon_class" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "color" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "parent_id" int(11) DEFAULT NULL,
  "order" int(11) NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  "route" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "parameters" text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY ("id"),
  KEY "menu_items_menu_id_foreign" ("menu_id"),
  CONSTRAINT "menu_items_menu_id_foreign" FOREIGN KEY ("menu_id") REFERENCES "menus" ("id") ON DELETE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "menu_items"
--

LOCK TABLES "menu_items" WRITE;
/*!40000 ALTER TABLE "menu_items" DISABLE KEYS */;
INSERT INTO "menu_items" VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2020-07-18 18:22:10','2020-07-18 18:22:10','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,23,3,'2020-07-18 18:22:10','2020-07-19 14:01:39','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,23,2,'2020-07-18 18:22:10','2020-07-19 14:01:38','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,23,1,'2020-07-18 18:22:10','2020-07-19 14:01:35','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,5,'2020-07-18 18:22:10','2021-08-11 21:00:42',NULL,NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2020-07-18 18:22:10','2020-07-19 14:01:24','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2020-07-18 18:22:10','2020-07-19 14:01:24','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2020-07-18 18:22:10','2020-07-19 14:01:24','voyager.bread.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2020-07-18 18:22:10','2020-07-19 14:01:24','voyager.hooks',NULL),(23,1,'Administration','','_self','voyager-helm','#000000',NULL,4,'2020-07-19 14:01:16','2021-08-11 21:00:42',NULL,''),(26,1,'Forfaits','','_self',NULL,'#000000',10,1,'2020-07-28 01:55:01','2020-07-28 02:25:52','voyager.bundles.index','null'),(28,1,'Menus','','_self',NULL,NULL,5,1,'2020-07-28 02:11:23','2020-07-28 02:11:57','voyager.menus.index',NULL),(29,1,'Notifications','','_self','voyager-info-circled',NULL,10,2,'2020-07-30 02:31:09','2020-07-30 23:43:31','voyager.notifications.index',NULL),(30,1,'Departements','','_self','voyager-window-list',NULL,36,1,'2021-08-11 20:15:21','2021-08-11 21:00:22','voyager.departements.index',NULL),(31,1,'Fideles','','_self','voyager-people',NULL,36,2,'2021-08-11 20:21:51','2021-08-11 21:00:23','voyager.fideles.index',NULL),(32,1,'Ministres','','_self','voyager-people',NULL,36,3,'2021-08-11 20:41:40','2021-08-11 21:00:24','voyager.ministres.index',NULL),(33,1,'Newsletters','','_self','voyager-mail',NULL,36,4,'2021-08-11 20:43:19','2021-08-11 21:00:42','voyager.newsletters.index',NULL),(34,1,'Temoignages','','_self','voyager-star-two',NULL,36,5,'2021-08-11 20:44:33','2021-08-11 21:00:42','voyager.temoignages.index',NULL),(35,1,'Transactions','','_self','voyager-activity',NULL,NULL,2,'2021-08-11 20:48:07','2021-08-11 21:00:42','voyager.transactions.index',NULL),(36,1,'Website','','_self','voyager-upload','#000000',NULL,3,'2021-08-11 21:00:02','2021-08-11 21:00:42',NULL,'');
/*!40000 ALTER TABLE "menu_items" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "menus"
--

DROP TABLE IF EXISTS "menus";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "menus" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "menus_name_unique" ("name")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "menus"
--

LOCK TABLES "menus" WRITE;
/*!40000 ALTER TABLE "menus" DISABLE KEYS */;
INSERT INTO "menus" VALUES (1,'admin','2020-07-18 18:22:10','2020-07-18 18:22:10');
/*!40000 ALTER TABLE "menus" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "migrations"
--

DROP TABLE IF EXISTS "migrations";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "migrations" (
  "id" int(10) unsigned NOT NULL,
  "migration" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "batch" int(11) NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "migrations"
--

LOCK TABLES "migrations" WRITE;
/*!40000 ALTER TABLE "migrations" DISABLE KEYS */;
INSERT INTO "migrations" VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2016_01_01_000000_create_pages_table',2),(25,'2016_01_01_000000_create_posts_table',2),(26,'2016_02_15_204651_create_categories_table',2),(27,'2017_04_11_000000_alter_post_nullable_fields_table',2),(28,'2021_08_12_211454_create_jobs_table',3);
/*!40000 ALTER TABLE "migrations" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "ministres"
--

DROP TABLE IF EXISTS "ministres";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "ministres" (
  "id" int(10) unsigned NOT NULL,
  "nom_complet" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "type" int(11) DEFAULT NULL,
  "image_url" int(11) DEFAULT NULL,
  "bio" text COLLATE utf8mb4_unicode_ci,
  "est_actif" tinyint(4) DEFAULT '1',
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "ministres"
--

LOCK TABLES "ministres" WRITE;
/*!40000 ALTER TABLE "ministres" DISABLE KEYS */;
/*!40000 ALTER TABLE "ministres" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "newsletters"
--

DROP TABLE IF EXISTS "newsletters";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "newsletters" (
  "id" int(10) unsigned NOT NULL,
  "email" int(11) DEFAULT NULL,
  "nom_complet" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  "est_actif" tinyint(4) DEFAULT '1',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "newsletters"
--

LOCK TABLES "newsletters" WRITE;
/*!40000 ALTER TABLE "newsletters" DISABLE KEYS */;
/*!40000 ALTER TABLE "newsletters" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "password_resets"
--

DROP TABLE IF EXISTS "password_resets";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "password_resets" (
  "email" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "token" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  KEY "password_resets_email_index" ("email")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "password_resets"
--

LOCK TABLES "password_resets" WRITE;
/*!40000 ALTER TABLE "password_resets" DISABLE KEYS */;
/*!40000 ALTER TABLE "password_resets" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "permission_role"
--

DROP TABLE IF EXISTS "permission_role";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "permission_role" (
  "permission_id" bigint(20) unsigned NOT NULL,
  "role_id" bigint(20) unsigned NOT NULL,
  PRIMARY KEY ("permission_id","role_id"),
  KEY "permission_role_permission_id_index" ("permission_id"),
  KEY "permission_role_role_id_index" ("role_id"),
  CONSTRAINT "permission_role_permission_id_foreign" FOREIGN KEY ("permission_id") REFERENCES "permissions" ("id") ON DELETE CASCADE,
  CONSTRAINT "permission_role_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "roles" ("id") ON DELETE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "permission_role"
--

LOCK TABLES "permission_role" WRITE;
/*!40000 ALTER TABLE "permission_role" DISABLE KEYS */;
INSERT INTO "permission_role" VALUES (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(62,1),(63,1),(64,1),(65,1),(66,1),(72,1),(72,2),(73,1),(73,2),(74,1),(74,2),(75,1),(75,2),(76,1),(76,2),(87,1),(87,2),(88,1),(88,2),(89,1),(89,2),(90,1),(90,2),(91,1),(91,2),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(97,2),(98,1),(98,2),(99,1),(99,2),(100,1),(100,2),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1);
/*!40000 ALTER TABLE "permission_role" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "permissions"
--

DROP TABLE IF EXISTS "permissions";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "permissions" (
  "id" bigint(20) unsigned NOT NULL,
  "key" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "table_name" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "permissions_key_index" ("key")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "permissions"
--

LOCK TABLES "permissions" WRITE;
/*!40000 ALTER TABLE "permissions" DISABLE KEYS */;
INSERT INTO "permissions" VALUES (1,'browse_admin',NULL,'2020-07-18 18:22:10','2020-07-18 18:22:10'),(2,'browse_bread',NULL,'2020-07-18 18:22:10','2020-07-18 18:22:10'),(3,'browse_database',NULL,'2020-07-18 18:22:10','2020-07-18 18:22:10'),(4,'browse_media',NULL,'2020-07-18 18:22:10','2020-07-18 18:22:10'),(5,'browse_compass',NULL,'2020-07-18 18:22:10','2020-07-18 18:22:10'),(11,'browse_roles','roles','2020-07-18 18:22:10','2020-07-18 18:22:10'),(12,'read_roles','roles','2020-07-18 18:22:10','2020-07-18 18:22:10'),(13,'edit_roles','roles','2020-07-18 18:22:10','2020-07-18 18:22:10'),(14,'add_roles','roles','2020-07-18 18:22:10','2020-07-18 18:22:10'),(15,'delete_roles','roles','2020-07-18 18:22:10','2020-07-18 18:22:10'),(16,'browse_users','users','2020-07-18 18:22:10','2020-07-18 18:22:10'),(17,'read_users','users','2020-07-18 18:22:10','2020-07-18 18:22:10'),(18,'edit_users','users','2020-07-18 18:22:10','2020-07-18 18:22:10'),(19,'add_users','users','2020-07-18 18:22:10','2020-07-18 18:22:10'),(20,'delete_users','users','2020-07-18 18:22:10','2020-07-18 18:22:10'),(21,'browse_settings','settings','2020-07-18 18:22:10','2020-07-18 18:22:10'),(22,'read_settings','settings','2020-07-18 18:22:10','2020-07-18 18:22:10'),(23,'edit_settings','settings','2020-07-18 18:22:10','2020-07-18 18:22:10'),(24,'add_settings','settings','2020-07-18 18:22:10','2020-07-18 18:22:10'),(25,'delete_settings','settings','2020-07-18 18:22:10','2020-07-18 18:22:10'),(26,'browse_hooks',NULL,'2020-07-18 18:22:10','2020-07-18 18:22:10'),(62,'browse_organisers','organisers','2020-07-19 08:38:36','2020-07-19 08:38:36'),(63,'read_organisers','organisers','2020-07-19 08:38:36','2020-07-19 08:38:36'),(64,'edit_organisers','organisers','2020-07-19 08:38:36','2020-07-19 08:38:36'),(65,'add_organisers','organisers','2020-07-19 08:38:36','2020-07-19 08:38:36'),(66,'delete_organisers','organisers','2020-07-19 08:38:36','2020-07-19 08:38:36'),(72,'browse_schedules','schedules','2020-07-19 08:42:27','2020-07-19 08:42:27'),(73,'read_schedules','schedules','2020-07-19 08:42:27','2020-07-19 08:42:27'),(74,'edit_schedules','schedules','2020-07-19 08:42:27','2020-07-19 08:42:27'),(75,'add_schedules','schedules','2020-07-19 08:42:27','2020-07-19 08:42:27'),(76,'delete_schedules','schedules','2020-07-19 08:42:27','2020-07-19 08:42:27'),(87,'browse_faithfuls','faithfuls','2020-07-28 01:47:33','2020-07-28 01:47:33'),(88,'read_faithfuls','faithfuls','2020-07-28 01:47:33','2020-07-28 01:47:33'),(89,'edit_faithfuls','faithfuls','2020-07-28 01:47:33','2020-07-28 01:47:33'),(90,'add_faithfuls','faithfuls','2020-07-28 01:47:33','2020-07-28 01:47:33'),(91,'delete_faithfuls','faithfuls','2020-07-28 01:47:33','2020-07-28 01:47:33'),(92,'browse_bundles','bundles','2020-07-28 01:55:01','2020-07-28 01:55:01'),(93,'read_bundles','bundles','2020-07-28 01:55:01','2020-07-28 01:55:01'),(94,'edit_bundles','bundles','2020-07-28 01:55:01','2020-07-28 01:55:01'),(95,'add_bundles','bundles','2020-07-28 01:55:01','2020-07-28 01:55:01'),(96,'delete_bundles','bundles','2020-07-28 01:55:01','2020-07-28 01:55:01'),(97,'browse_broadcasts','broadcasts','2020-07-28 02:00:25','2020-07-28 02:00:25'),(98,'read_broadcasts','broadcasts','2020-07-28 02:00:25','2020-07-28 02:00:25'),(99,'edit_broadcasts','broadcasts','2020-07-28 02:00:25','2020-07-28 02:00:25'),(100,'add_broadcasts','broadcasts','2020-07-28 02:00:25','2020-07-28 02:00:25'),(101,'delete_broadcasts','broadcasts','2020-07-28 02:00:25','2020-07-28 02:00:25'),(102,'browse_menus','menus','2020-07-28 02:11:23','2020-07-28 02:11:23'),(103,'read_menus','menus','2020-07-28 02:11:23','2020-07-28 02:11:23'),(104,'edit_menus','menus','2020-07-28 02:11:23','2020-07-28 02:11:23'),(105,'add_menus','menus','2020-07-28 02:11:23','2020-07-28 02:11:23'),(106,'delete_menus','menus','2020-07-28 02:11:23','2020-07-28 02:11:23'),(107,'browse_notifications','notifications','2020-07-30 02:31:09','2020-07-30 02:31:09'),(108,'read_notifications','notifications','2020-07-30 02:31:09','2020-07-30 02:31:09'),(109,'edit_notifications','notifications','2020-07-30 02:31:09','2020-07-30 02:31:09'),(110,'add_notifications','notifications','2020-07-30 02:31:09','2020-07-30 02:31:09'),(111,'delete_notifications','notifications','2020-07-30 02:31:09','2020-07-30 02:31:09'),(112,'browse_departements','departements','2021-08-11 20:15:21','2021-08-11 20:15:21'),(113,'read_departements','departements','2021-08-11 20:15:21','2021-08-11 20:15:21'),(114,'edit_departements','departements','2021-08-11 20:15:21','2021-08-11 20:15:21'),(115,'add_departements','departements','2021-08-11 20:15:21','2021-08-11 20:15:21'),(116,'delete_departements','departements','2021-08-11 20:15:21','2021-08-11 20:15:21'),(117,'browse_fideles','fideles','2021-08-11 20:21:51','2021-08-11 20:21:51'),(118,'read_fideles','fideles','2021-08-11 20:21:51','2021-08-11 20:21:51'),(119,'edit_fideles','fideles','2021-08-11 20:21:51','2021-08-11 20:21:51'),(120,'add_fideles','fideles','2021-08-11 20:21:51','2021-08-11 20:21:51'),(121,'delete_fideles','fideles','2021-08-11 20:21:51','2021-08-11 20:21:51'),(122,'browse_ministres','ministres','2021-08-11 20:41:40','2021-08-11 20:41:40'),(123,'read_ministres','ministres','2021-08-11 20:41:40','2021-08-11 20:41:40'),(124,'edit_ministres','ministres','2021-08-11 20:41:40','2021-08-11 20:41:40'),(125,'add_ministres','ministres','2021-08-11 20:41:40','2021-08-11 20:41:40'),(126,'delete_ministres','ministres','2021-08-11 20:41:40','2021-08-11 20:41:40'),(127,'browse_newsletters','newsletters','2021-08-11 20:43:19','2021-08-11 20:43:19'),(128,'read_newsletters','newsletters','2021-08-11 20:43:19','2021-08-11 20:43:19'),(129,'edit_newsletters','newsletters','2021-08-11 20:43:19','2021-08-11 20:43:19'),(130,'add_newsletters','newsletters','2021-08-11 20:43:19','2021-08-11 20:43:19'),(131,'delete_newsletters','newsletters','2021-08-11 20:43:19','2021-08-11 20:43:19'),(132,'browse_temoignages','temoignages','2021-08-11 20:44:33','2021-08-11 20:44:33'),(133,'read_temoignages','temoignages','2021-08-11 20:44:33','2021-08-11 20:44:33'),(134,'edit_temoignages','temoignages','2021-08-11 20:44:33','2021-08-11 20:44:33'),(135,'add_temoignages','temoignages','2021-08-11 20:44:33','2021-08-11 20:44:33'),(136,'delete_temoignages','temoignages','2021-08-11 20:44:33','2021-08-11 20:44:33'),(137,'browse_transactions','transactions','2021-08-11 20:48:07','2021-08-11 20:48:07'),(138,'read_transactions','transactions','2021-08-11 20:48:07','2021-08-11 20:48:07'),(139,'edit_transactions','transactions','2021-08-11 20:48:07','2021-08-11 20:48:07'),(140,'add_transactions','transactions','2021-08-11 20:48:07','2021-08-11 20:48:07'),(141,'delete_transactions','transactions','2021-08-11 20:48:07','2021-08-11 20:48:07');
/*!40000 ALTER TABLE "permissions" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "roles"
--

DROP TABLE IF EXISTS "roles";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "roles" (
  "id" bigint(20) unsigned NOT NULL,
  "name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "display_name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "roles_name_unique" ("name")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "roles"
--

LOCK TABLES "roles" WRITE;
/*!40000 ALTER TABLE "roles" DISABLE KEYS */;
INSERT INTO "roles" VALUES (1,'admin','Administrator','2020-07-18 18:22:10','2020-07-18 18:22:10'),(2,'user','Normal User','2020-07-18 18:22:10','2020-07-18 18:22:10');
/*!40000 ALTER TABLE "roles" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "settings"
--

DROP TABLE IF EXISTS "settings";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "settings" (
  "id" int(10) unsigned NOT NULL,
  "key" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "display_name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "value" text COLLATE utf8mb4_unicode_ci,
  "details" text COLLATE utf8mb4_unicode_ci,
  "type" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "order" int(11) NOT NULL DEFAULT '1',
  "group" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "settings_key_unique" ("key")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "settings"
--

LOCK TABLES "settings" WRITE;
/*!40000 ALTER TABLE "settings" DISABLE KEYS */;
INSERT INTO "settings" VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings\\July2020\\y0omQyjrVAbGEcYbFKHz.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','ICC WEB ADMIN','','text',1,'Admin'),(7,'admin.description','Admin Description','Bienvenu ?? l\'interfa??age d\'administration de votre plateforme Web','','text',2,'Admin'),(8,'admin.loader','Admin Loader','settings\\August2021\\hXXmoki8Grp2jGcu9BTh.png','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings\\August2021\\l6n6B81HjC0slwemf3ss.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE "settings" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "temoignages"
--

DROP TABLE IF EXISTS "temoignages";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "temoignages" (
  "id" int(10) unsigned NOT NULL,
  "nom_complet" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "ville" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "body" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "est_actif" tinyint(4) DEFAULT '1',
  "image_url" text COLLATE utf8mb4_unicode_ci,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "temoignages"
--

LOCK TABLES "temoignages" WRITE;
/*!40000 ALTER TABLE "temoignages" DISABLE KEYS */;
/*!40000 ALTER TABLE "temoignages" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "transactions"
--

DROP TABLE IF EXISTS "transactions";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "transactions" (
  "id" int(10) unsigned NOT NULL,
  "firstname" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "lastname" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "adress" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "email" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "amount" float DEFAULT NULL,
  "currency" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "order_id" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "session_id" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "status" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "method" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "ip_adress" int(11) DEFAULT NULL,
  "comments" text COLLATE utf8mb4_unicode_ci,
  "is_active" tinyint(4) DEFAULT '1',
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  "phone" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "transactions"
--

LOCK TABLES "transactions" WRITE;
/*!40000 ALTER TABLE "transactions" DISABLE KEYS */;
INSERT INTO "transactions" VALUES (1,'Sion','Sion','166, Luisa, Huilerie, Lingwala','sisrael@hotmail.fr',NULL,'1',NULL,NULL,NULL,'TWEC PG',NULL,NULL,1,'2021-08-12 20:38:53','2021-08-12 20:38:53','+33818772740'),(2,'Sion','Israel','5, Tshibangu, Righini','sion.israel.pro@gmail.com',NULL,'1',NULL,NULL,NULL,'TWEC PG',NULL,NULL,1,'2021-08-12 20:41:00','2021-08-12 20:41:00','+243818772740'),(3,'Sion','Israel','5, Tshibangu, Righini','sion.israel.pro@gmail.com',NULL,'1',NULL,NULL,NULL,'TWEC PG',NULL,NULL,1,'2021-08-12 20:42:14','2021-08-12 20:42:14','+243818772740'),(4,'Sion','Israel','5, Tshibangu, Righini','sion.israel.pro@gmail.com',NULL,'1',NULL,NULL,NULL,'TWEC PG',NULL,NULL,1,'2021-08-12 20:43:00','2021-08-12 20:43:00','+243818772740'),(5,'Sion','Israel','5, Tshibangu, Righini','sion.israel.pro@gmail.com',NULL,'1',NULL,NULL,NULL,'TWEC PG',NULL,NULL,1,'2021-08-12 20:47:13','2021-08-12 20:47:13','+243818772740'),(6,'Sion','Israel','5, Tshibangu, Righini','sion.israel.pro@gmail.com',NULL,'1',NULL,NULL,NULL,'TWEC PG',NULL,NULL,1,'2021-08-12 21:19:15','2021-08-12 21:19:15','+243818772740');
/*!40000 ALTER TABLE "transactions" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "translations"
--

DROP TABLE IF EXISTS "translations";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "translations" (
  "id" int(10) unsigned NOT NULL,
  "table_name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "column_name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "foreign_key" int(10) unsigned NOT NULL,
  "locale" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "value" text COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "translations_table_name_column_name_foreign_key_locale_unique" ("table_name","column_name","foreign_key","locale")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "translations"
--

LOCK TABLES "translations" WRITE;
/*!40000 ALTER TABLE "translations" DISABLE KEYS */;
INSERT INTO "translations" VALUES (1,'data_types','display_name_singular',5,'pt','Post','2020-07-18 18:53:36','2020-07-18 18:53:36'),(2,'data_types','display_name_singular',6,'pt','P??gina','2020-07-18 18:53:36','2020-07-18 18:53:36'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2020-07-18 18:53:36','2020-07-18 18:53:36'),(4,'data_types','display_name_singular',4,'pt','Categoria','2020-07-18 18:53:36','2020-07-18 18:53:36'),(5,'data_types','display_name_singular',2,'pt','Menu','2020-07-18 18:53:36','2020-07-18 18:53:36'),(6,'data_types','display_name_singular',3,'pt','Fun????o','2020-07-18 18:53:36','2020-07-18 18:53:36'),(7,'data_types','display_name_plural',5,'pt','Posts','2020-07-18 18:53:36','2020-07-18 18:53:36'),(8,'data_types','display_name_plural',6,'pt','P??ginas','2020-07-18 18:53:36','2020-07-18 18:53:36'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2020-07-18 18:53:36','2020-07-18 18:53:36'),(10,'data_types','display_name_plural',4,'pt','Categorias','2020-07-18 18:53:36','2020-07-18 18:53:36'),(11,'data_types','display_name_plural',2,'pt','Menus','2020-07-18 18:53:36','2020-07-18 18:53:36'),(12,'data_types','display_name_plural',3,'pt','Fun????es','2020-07-18 18:53:36','2020-07-18 18:53:36'),(13,'categories','slug',1,'pt','categoria-1','2020-07-18 18:53:36','2020-07-18 18:53:36'),(14,'categories','name',1,'pt','Categoria 1','2020-07-18 18:53:36','2020-07-18 18:53:36'),(15,'categories','slug',2,'pt','categoria-2','2020-07-18 18:53:36','2020-07-18 18:53:36'),(16,'categories','name',2,'pt','Categoria 2','2020-07-18 18:53:36','2020-07-18 18:53:36'),(17,'pages','title',1,'pt','Ol?? Mundo','2020-07-18 18:53:36','2020-07-18 18:53:36'),(18,'pages','slug',1,'pt','ola-mundo','2020-07-18 18:53:36','2020-07-18 18:53:36'),(19,'pages','body',1,'pt','<p>Ol?? Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2020-07-18 18:53:36','2020-07-18 18:53:36'),(20,'menu_items','title',1,'pt','Painel de Controle','2020-07-18 18:53:36','2020-07-18 18:53:36'),(21,'menu_items','title',2,'pt','Media','2020-07-18 18:53:36','2020-07-18 18:53:36'),(22,'menu_items','title',13,'pt','Publica????es','2020-07-18 18:53:36','2020-07-18 18:53:36'),(23,'menu_items','title',3,'pt','Utilizadores','2020-07-18 18:53:36','2020-07-18 18:53:36'),(24,'menu_items','title',12,'pt','Categorias','2020-07-18 18:53:36','2020-07-18 18:53:36'),(25,'menu_items','title',14,'pt','P??ginas','2020-07-18 18:53:36','2020-07-18 18:53:36'),(26,'menu_items','title',4,'pt','Fun????es','2020-07-18 18:53:36','2020-07-18 18:53:36'),(27,'menu_items','title',5,'pt','Ferramentas','2020-07-18 18:53:36','2020-07-18 18:53:36'),(28,'menu_items','title',6,'pt','Menus','2020-07-18 18:53:36','2020-07-18 18:53:36'),(29,'menu_items','title',7,'pt','Base de dados','2020-07-18 18:53:36','2020-07-18 18:53:36'),(30,'menu_items','title',10,'pt','Configura????es','2020-07-18 18:53:36','2020-07-18 18:53:36');
/*!40000 ALTER TABLE "translations" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "user_roles"
--

DROP TABLE IF EXISTS "user_roles";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "user_roles" (
  "user_id" bigint(20) unsigned NOT NULL,
  "role_id" bigint(20) unsigned NOT NULL,
  PRIMARY KEY ("user_id","role_id"),
  KEY "user_roles_user_id_index" ("user_id"),
  KEY "user_roles_role_id_index" ("role_id"),
  CONSTRAINT "user_roles_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "roles" ("id") ON DELETE CASCADE,
  CONSTRAINT "user_roles_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "user_roles"
--

LOCK TABLES "user_roles" WRITE;
/*!40000 ALTER TABLE "user_roles" DISABLE KEYS */;
/*!40000 ALTER TABLE "user_roles" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "users"
--

DROP TABLE IF EXISTS "users";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "users" (
  "id" bigint(20) unsigned NOT NULL,
  "role_id" bigint(20) unsigned DEFAULT NULL,
  "name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "email" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "avatar" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  "email_verified_at" timestamp NULL DEFAULT NULL,
  "password" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "remember_token" varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "settings" text COLLATE utf8mb4_unicode_ci,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  "organiser_id" int(11) DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "users_email_unique" ("email"),
  KEY "users_role_id_foreign" ("role_id"),
  CONSTRAINT "users_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "users"
--

LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
INSERT INTO "users" VALUES (1,1,'Administrateur','admin@icc-kinshasa.com','users\\July2020\\9wBMVCJy82efms0n3VLG.jpg',NULL,'$2y$10$wxegmsyil/LAXq48NrE8Ze5lWg.x.j5nZvA20bslFsCZsxVGGgvlW','wR3TOVehTZMdRkoLthB3qb3M0dC0e8aX2p8FjA3vIATJEMxKLAxt9EmEN5mE','{\"locale\":\"fr\"}','2020-07-18 18:23:40','2020-08-16 14:25:16',NULL);
/*!40000 ALTER TABLE "users" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-13 22:39:57
