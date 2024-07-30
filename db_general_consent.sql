-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: db_general_consent
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_consent`
--

DROP TABLE IF EXISTS `general_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_consent` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puskesmas_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petugas_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasien_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wali_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `general_consent_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_consent`
--

LOCK TABLES `general_consent` WRITE;
/*!40000 ALTER TABLE `general_consent` DISABLE KEYS */;
INSERT INTO `general_consent` VALUES (1,'6e3348da-e2c2-439a-b902-cf512c960d27','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-28 01:15:17','2024-07-28 01:15:17',NULL),(2,'c8280ae3-db17-4f0d-8b62-0b116eb9db5e','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 01:43:13','2024-07-29 01:43:13',NULL),(3,'546f9391-ae9a-4a06-8a8d-7f871f5fcfb6','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 01:57:45','2024-07-29 01:57:45',NULL),(4,'2aff3ca3-b95f-4d6d-8a99-034a8ec87511','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 01:59:31','2024-07-29 01:59:31',NULL),(5,'2922910e-cbeb-4b9a-a90a-451820d42857','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 02:01:13','2024-07-29 02:01:13',NULL),(6,'3ae77bef-b63e-4c86-a52b-59cb9da976a9','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 02:02:32','2024-07-29 02:02:32',NULL),(7,'9d4a8b1c-a405-4c0d-9546-7c41e8d720a5','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 02:05:23','2024-07-29 02:05:23',NULL),(8,'b7c5204f-4245-411c-9af6-517ff8c4e37c','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 02:11:33','2024-07-29 02:11:33',NULL),(9,'d14636ac-caa0-46b8-9468-fb85d23955bb','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 02:12:28','2024-07-29 02:12:28',NULL),(10,'38aca639-0829-49da-baac-de32d9b9ff8f','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 02:18:45','2024-07-29 02:18:45',NULL),(11,'4dede99f-30f4-4cb7-aad8-37184c9609ca','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 02:22:19','2024-07-29 02:22:19',NULL),(12,'7d966b6b-b0b5-4431-81ef-2b647aa7cc93','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 02:23:46','2024-07-29 02:23:46',NULL),(13,'bb30f15e-a120-4a3d-aebe-64b31f136ea8','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','618fe7c5-31ac-48b1-a80c-3cdda11e1b34','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 03:33:36','2024-07-29 03:33:36',NULL),(14,'fd3a2f3d-bf81-467a-8a84-70b7e7c276ce','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','618fe7c5-31ac-48b1-a80c-3cdda11e1b34','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 03:39:10','2024-07-29 03:39:10',NULL),(15,'5f1da358-19a0-4ba2-a6b5-7ed837a42c82','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 04:10:38','2024-07-29 04:10:38',NULL),(16,'118ba1e2-a73b-4db3-a022-4c6227bd67ca','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a','79099c6d-6e28-40fb-b410-e567f06672fd','82293023-Tracy Ruiz.pdf','2024-07-29 04:11:27','2024-07-29 04:11:27',NULL),(17,'762a2526-1597-45cf-9930-8e574f911a22','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a','7393e781-d93d-4377-86ae-91eb80841382','82293023-Tracy Ruiz.pdf','2024-07-29 04:12:51','2024-07-29 04:12:51',NULL),(18,'99364df0-e152-4483-9a5f-f4297c8db098','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','618fe7c5-31ac-48b1-a80c-3cdda11e1b34','eeed36c5-41d2-4858-97f4-37fe26e7889a','9bef6782-ea52-4f52-980a-9e3921e2312a','82293023-Tracy Ruiz.pdf','2024-07-29 04:23:29','2024-07-29 04:23:29',NULL),(19,'14adcdb1-97de-42bd-b3e3-469136c216e1','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 04:32:19','2024-07-29 04:32:19',NULL),(20,'a4dc37a1-c03d-48be-a43b-c9a01f2232b4','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a','2386115e-f3b2-4065-a7d1-6780499bc263','82293023-Tracy Ruiz.pdf','2024-07-29 04:35:23','2024-07-29 04:35:23',NULL),(21,'d2bbb184-bbf9-428e-9553-cd98945fbfdb','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 04:45:52','2024-07-29 04:45:52',NULL),(22,'12e5c41c-a3f7-43fa-a615-0c457b28f79c','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 06:46:47','2024-07-29 06:46:47',NULL),(23,'c2bd5466-8511-422b-93ac-3a80ee97a4d5','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a','50dc61b5-f5b6-4f0c-a5f3-95f036d9c800','82293023-Tracy Ruiz.pdf','2024-07-29 06:48:33','2024-07-29 06:48:33',NULL),(24,'7ff69b7b-3382-4442-a139-c9bd71c8f197','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 08:31:42','2024-07-29 08:31:42',NULL),(25,'d47282dd-fa0a-4126-b7ac-6eee6c224cbc','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 12:02:32','2024-07-29 12:02:32',NULL),(26,'5475dd4a-392a-4f39-b680-228738470b84','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 12:03:34','2024-07-29 12:03:34',NULL),(27,'97b99b18-5aef-4ac6-be9b-4067e72c2729','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 12:07:33','2024-07-29 12:07:33',NULL),(28,'21976b67-6f33-4308-8af5-82d9be688c45','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','78cd23d8-2440-4a79-9ca6-36b2c337ed73','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 12:08:23','2024-07-29 12:08:23',NULL),(29,'953a800c-bbc5-4b4e-aee2-563d1b31171c','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','618fe7c5-31ac-48b1-a80c-3cdda11e1b34','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 15:54:30','2024-07-29 15:54:30',NULL),(30,'90b4882a-382e-40ae-b009-c1493df142bf','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','605b4f16-87db-4dfb-87d8-efa2739f02c8','eeed36c5-41d2-4858-97f4-37fe26e7889a',NULL,'82293023-Tracy Ruiz.pdf','2024-07-29 16:02:28','2024-07-29 16:02:28',NULL);
/*!40000 ALTER TABLE `general_consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_pasien`
--

DROP TABLE IF EXISTS `master_pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_pasien` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puskesmas_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_rm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_pasien`
--

LOCK TABLES `master_pasien` WRITE;
/*!40000 ALTER TABLE `master_pasien` DISABLE KEYS */;
INSERT INTO `master_pasien` VALUES (1,'13a061e2-86eb-4a6c-9080-e9af653a2f91','Joseph Gomez','South Danielview','1943-02-04','1-531-167-2075x1124','82812 Kimberly Shore Apt. 299\nNorth Veronica, NV 39815','b6a7c8d9-0e1f2d3a-4b5c6d7a-8b9c0d1e2f3a','3453630432435401','91772290',NULL,'2024-02-26 19:01:56','2024-02-26 19:01:56',NULL),(2,'e906ae63-8ec7-4003-9c7e-59fc9954a41d','Daniel Oconnor','West Brittanychester','2000-11-27','+64(2)1616283361','4768 Nicholson Ramp Apt. 689\nGriffinhaven, LA 70964-5143','a2b3c4d5-6e7f8a9b-0c1d2f3a4b5e','1718369745432353','70830795',NULL,'2024-02-17 10:15:32','2024-02-17 10:15:32',NULL),(3,'c290f343-8d59-43da-8d1b-d9d1187fdd07','Stephanie Wade','Port Donaldberg','2018-02-21','(056)742-8992x21032','1453 Williamson Common\nKennedyside, VT 72118-2931','a4b5c6d7-8a9b0c1d-2e3f4b5c-6d7a8b9c0d1e','0563515427021400','14813070',NULL,'2024-01-13 06:32:13','2024-01-13 06:32:13',NULL),(4,'eeed36c5-41d2-4858-97f4-37fe26e7889a','Tracy Ruiz','Port Jamesport','2018-05-15','(129)728-3778x8416','8942 Hudson Course Apt. 870\nSmithchester, OK 19169','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','6417511898580503','82293023',NULL,'2024-06-25 17:14:04','2024-06-25 17:14:04',NULL),(5,'600cd2e2-524e-4687-bd2f-bcf37c6473c8','Jose Christian','East Amandatown','1924-06-02','001-252-139-3276x12502','69279 Steven Wells Suite 268\nSouth Scottland, PA 99935','d4e5f6a7-8b9c0d1e-2f3a4b5c-6d7a8b9c0d1e','2413356796828382','13091214',NULL,'2024-06-27 20:35:17','2024-06-27 20:35:17',NULL),(6,'6c007314-1008-4cd5-b7f6-5fa47e0a2b91','Stephanie Wilson','North Karl','1933-04-26','030.353.3154x1921','563 James Wall\nSouth Julie, NV 60649','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','6695411747740212','87422627',NULL,'2024-04-28 05:37:27','2024-04-28 05:37:27',NULL),(7,'3b07ba1e-b430-42ff-84af-2fc6ad0d6d8d','Antonio Thompson','West Annland','1947-10-22','290-285-3967x081','2264 Karen Plain Apt. 497\nAndrewmouth, CA 10363-2594','a3e6b1d5-24cd-4828-a0e7-7050ae3b9d8b','5721609633365241','49710749',NULL,'2024-03-15 01:53:40','2024-03-15 01:53:40',NULL),(8,'53c635ff-5d90-409f-98f7-f9c2392fa0d6','Vanessa Patrick','New Wendymouth','1962-05-09','07399223493','82678 Stevens Springs Apt. 257\nPattersonport, VT 71289-9157','d5c6b7a8-9e0f-2d3a-4b5c-6d7a8b9c0d1e','0445232551680674','47045163',NULL,'2024-06-28 03:16:36','2024-06-28 03:16:36',NULL),(9,'9f98981c-13f8-48f6-b159-df7a550d4d22','Anthony Ruiz','East Christopherside','1938-01-25','001-498-278-9070','7424 Alyssa Route Apt. 073\nNew Connorburgh, HI 71530','b6a7c8d9-0e1f2d3a-4b5c6d7a-8b9c0d1e2f3a','1277138842074045','68319380',NULL,'2024-03-16 16:00:19','2024-03-16 16:00:19',NULL),(10,'8c9dc99c-3a0e-4843-8e55-0f1004d28dd5','Lori Harris','Jamesport','1980-05-22','(299)182-4101x0353','9314 Hester Mill\nEast Heatherland, WV 74079','d4f5e6c8-73b2-4fb3-9aef-12bfc98307f9','6976738709312471','09263131',NULL,'2024-03-15 19:58:33','2024-03-15 19:58:33',NULL),(11,'f27069f6-520a-494e-9c9a-798c4c0e6bcb','Katrina Huerta','Alexandraville','1981-01-02','001-067-099-2646','9887 Amanda Inlet Suite 127\nYoungport, WV 60475','f7e8d9c0-1b2a3d4f-5e6d7a8b-9c0d1e2f3a4b','2518368475850455','29870506',NULL,'2024-06-20 04:15:12','2024-06-20 04:15:12',NULL),(12,'c96dd6cb-8f80-42e0-a274-d73c1bc88839','Kayla Castillo','Stevenview','1955-12-27','077.175.8292','7577 Elizabeth Mountains Apt. 423\nPort Christopherport, MA 33469','b6a7c8d9-0e1f2d3a-4b5c6d7a-8b9c0d1e2f3a','3518716703529964','43175580',NULL,'2024-04-14 15:22:41','2024-04-14 15:22:41',NULL),(13,'58eeb16e-1ff3-490a-a58d-2a9705d3e8e8','Victor Colon','Port Hollyburgh','1971-09-19','205.582.0602x317','59550 Amber Coves\nJennifermouth, TN 48483-0634','d1e2f3a4-b5c6d7a8-9b0c1d2e-3f4b5c6d-7a8b9c0d1e2f','2375633641860424','60692920',NULL,'2024-01-29 21:16:56','2024-01-29 21:16:56',NULL),(14,'b1eb648d-e0f4-4975-8a5d-99ab9c95327a','Melissa Phelps','West Vickifort','1994-08-23','528-843-7263x5941','94061 Holly Spring Apt. 676\nNorth Davidbury, PA 44234','b8c9d0e1-f2a3b4c5-d6e7f8a9-b0c1d2e3f4b','1734322937340664','69268313',NULL,'2024-04-17 06:53:50','2024-04-17 06:53:50',NULL),(15,'831e09f0-e1e1-4992-b2d6-65794b0e0f3a','Sandra Dean','North William','1981-09-05','015-239-7064x12294','22782 Medina Shoals Suite 859\nSouth Karen, SC 34753','d5c6b7a8-9e0f-2d3a-4b5c-6d7a8b9c0d1e','1822340248784206','46970037',NULL,'2024-01-10 22:25:18','2024-01-10 22:25:18',NULL),(16,'24665f80-79cb-43f1-850f-158012b6ecb6','Joshua Hughes','South Mark','1983-05-21','001-724-029-2667x151','2837 Peters Fort Apt. 100\nPort Michelleport, OK 28709-0702','f3a4b5c6-d7a8b9c0-1d2e3f4b-5c6d7a8b-9c0d1e2f3a4b','6400123725586530','87067931',NULL,'2024-07-16 05:01:53','2024-07-16 05:01:53',NULL),(17,'2873d012-92ec-4a8b-b194-c7b42228c5b5','Jessica Douglas','West Alexander','1940-08-22','001-281-542-8308x1837','80872 Benjamin Via Apt. 231\nLake Ryanport, SD 89735-2735','b8c9d0e1-f2a3b4c5-d6e7f8a9-b0c1d2e3f4b','5538033207034925','32702000',NULL,'2024-02-06 09:19:00','2024-02-06 09:19:00',NULL),(18,'1ac99897-dbe1-45b4-89e2-94b735d5b960','Eric Wilson','Michaelton','1987-04-25','(187)487-7628','47382 Webster Motorway Apt. 548\nWest Ashley, NY 82054','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','5172622170426832','58998741',NULL,'2024-03-14 04:13:27','2024-03-14 04:13:27',NULL),(19,'104f0a7d-1981-44b5-b040-5f007a91de2b','Denise Sanchez','New Michaelberg','1954-07-24','(019)319-0626x30363','53147 Jennifer Island\nNew Shannon, IL 67436','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','5454242831050245','82230383',NULL,'2024-04-27 09:13:08','2024-04-27 09:13:08',NULL),(20,'d4b91ae7-27a4-460e-9dd6-78a5d81bfa84','Kathryn Little','Bishopchester','1967-11-15','555-693-5083x2762','80800 Jennifer Stream\nNorth Russellville, NV 52460-2754','c3d4e5f6-7a8b9c0d-1e2f3a4b-5c6d7a8b-9c0d1e2f3a4b','7013240764696028','87777979',NULL,'2024-04-24 05:47:11','2024-04-24 05:47:11',NULL),(21,'c31e0862-ea15-4a7f-b8de-dde72de5ea5a','Michael Jackson','North Jamesland','2000-02-27','1-626-891-2777x8466','73025 Grant Corners Apt. 019\nWest Victor, WV 96128','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','3302256141414351','44067227',NULL,'2024-01-21 09:26:05','2024-01-21 09:26:05',NULL),(22,'1298e27e-29f7-40ae-8b6d-b799f8b10ba8','Pamela Byrd','West Michaelmouth','2008-04-04','006.734.5830','16798 Kaitlyn Inlet Suite 124\nLake Sarahton, MS 05594','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','3170461253193928','96108639',NULL,'2024-02-26 06:26:09','2024-02-26 06:26:09',NULL),(23,'c199e0c8-b5d6-44f8-b0c1-2c1d1ed4b1f8','Kristin Buchanan','South Jeremymouth','1985-07-24','(351)076-1272x50898','36207 Matthew Stream\nMorrowberg, NM 63013','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','4644260531692887','24839955',NULL,'2024-01-09 19:29:07','2024-01-09 19:29:07',NULL),(24,'aa124fe3-60d3-4e6b-9b23-2b7d3a5b3038','Tammy Davis','North Samanthabury','1956-07-19','692.267.3446','14922 Choi Falls Suite 508\nNew Lisaview, LA 16878','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','2771616364306928','82995034',NULL,'2024-04-19 13:57:00','2024-04-19 13:57:00',NULL),(25,'b3e61697-4eae-4bcb-bf36-5a3e6df46f97','Lisa Anderson','Christopherstad','2013-09-26','(888)117-5146x60518','94058 Gibbs Pines Suite 460\nDavidside, VT 31731-2376','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','2928437395238056','00788453',NULL,'2024-02-13 21:36:02','2024-02-13 21:36:02',NULL),(26,'af25dbe4-4675-4b7e-8e08-36d653e40ee5','James David','South Brittany','1963-08-11','(612)243-5385','3900 Patricia Ways\nRandyborough, CO 08764','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','4310281212950046','19998170',NULL,'2024-03-30 10:26:07','2024-03-30 10:26:07',NULL),(27,'ff849b5a-0f6d-4c6f-92c4-e0b76cc26c8b','Andrew Peterson','Lake Bradbury','1957-01-25','07368511334','1598 Barry Forks\nEast Heather, NY 52903-7903','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','6273077131731837','06597401',NULL,'2024-03-10 07:00:17','2024-03-10 07:00:17',NULL),(28,'2ad7a24e-4fd7-476f-8e6e-3a3e6606f7c6','Karen Turner','Markmouth','1980-09-17','435.252.3541','218 Cheryl Plaza Suite 713\nKristinbury, MS 46334','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','1689781351882613','35020326',NULL,'2024-01-16 21:52:14','2024-01-16 21:52:14',NULL),(29,'4ac5f7cb-4c64-42c5-8ec1-6cbdde16e6f7','Victoria Jones','South Colleenburgh','1951-06-09','(609)512-0621','107 Joseph Plaza Apt. 952\nEricshire, GA 17998-8272','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','0502832025940616','20270623',NULL,'2024-02-12 16:34:21','2024-02-12 16:34:21',NULL),(30,'5a708e23-cf1d-48cb-9b67-7905c16894f1','Ryan Morris','Port Annettemouth','1945-12-08','315.592.0853','21701 David Garden Suite 308\nEast Kylehaven, MA 47362','b6a7c8d9-0e1f2d3a-4b5c6d7a-8b9c0d1e2f3a','6028141349238287','73057856',NULL,'2024-01-12 14:48:43','2024-01-12 14:48:43',NULL),(31,'43a43eeb-2b1b-4222-8423-fcf8c29f2d5d','Keith Ryan','Lake Robinhaven','1997-09-05','1-282-624-5904x56756','989 Rachael Creek Suite 498\nPort Andrewport, ID 81161-3608','c3d4e5f6-7a8b9c0d-1e2f3a4b-5c6d7a8b-9c0d1e2f3a4b','7001033262120138','78782032',NULL,'2024-07-08 00:36:17','2024-07-08 00:36:17',NULL),(32,'e37b292e-e916-4e6f-a151-8bc8e2049935','Jonathon Valdez','West Angela','1947-10-17','001-765-498-7454x403','168 Linda Lodge Apt. 842\nSullivanside, NM 68922','f7e8d9c0-1b2a3d4f-5e6d7a8b-9c0d1e2f3a4b','6524848848207085','70706447',NULL,'2024-03-05 01:53:19','2024-03-05 01:53:19',NULL),(33,'d8d68c8e-16b8-44be-a4f2-134a6d5f50a3','Stacy Hernandez','New Stephanieport','1955-01-04','001-546-591-2293x84203','18517 Cox Cliff\nAmandatown, SD 88905','a3e6b1d5-24cd-4828-a0e7-7050ae3b9d8b','2553369023821488','77935614',NULL,'2024-07-10 13:23:51','2024-07-10 13:23:51',NULL),(34,'6c7ac2fc-b0ee-42cc-9987-49d3f0c63a09','Stephanie Brown','Jamesbury','2008-05-22','187-896-2444x05735','35690 Olivia Ranch\nNew Gregmouth, ID 11711','a3e6b1d5-24cd-4828-a0e7-7050ae3b9d8b','5670829494572287','19978830',NULL,'2024-03-29 05:14:16','2024-03-29 05:14:16',NULL),(35,'029f2394-4f0a-487f-8a6f-2f5a4d1c9678','Stephen Cook','Hubbardville','2001-07-25','065-891-9181','42561 Beverly Camp Apt. 694\nEast Brendafurt, PA 31713-1265','a3e6b1d5-24cd-4828-a0e7-7050ae3b9d8b','7247863629701153','49619707',NULL,'2024-07-10 08:27:01','2024-07-10 08:27:01',NULL),(36,'308d007b-7b3a-41cc-832b-3e5e6dcce493','Amber Valdez','Pattersonfort','1934-09-28','(020)931-9872x8491','25321 Edward Burg\nCharlesburgh, IN 70742-5680','a3e6b1d5-24cd-4828-a0e7-7050ae3b9d8b','3331452623773824','76449290',NULL,'2024-03-06 16:21:24','2024-03-06 16:21:24',NULL),(37,'d98a0d07-ff1c-4f2f-95f0-4b7fef7f6ed3','Adrian Sanders','North Pamelaborough','1934-01-02','001-589-649-2107','3754 Sam Loop Apt. 666\nSandovaltown, NV 03747-0164','f7e8d9c0-1b2a3d4f-5e6d7a8b-9c0d1e2f3a4b','7217269024551808','12777769',NULL,'2024-07-08 14:48:26','2024-07-08 14:48:26',NULL),(38,'adcfde76-d36c-4b70-8b0b-0540bc2677f5','Heidi Scott','North Johnborough','1948-10-20','515.914.0984','735 Moore Track Suite 683\nCarolynport, NM 08783','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','0134658342860481','39945755',NULL,'2024-02-20 06:58:57','2024-02-20 06:58:57',NULL),(39,'c8d241d2-69b7-4e3d-97b0-227e8f54a379','Theresa Miller','Pinedaville','2012-09-04','308-296-4010x0708','97325 Smith Underpass Apt. 710\nMccoymouth, NC 24071','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','6368667047952888','17419034',NULL,'2024-03-19 11:00:30','2024-03-19 11:00:30',NULL),(40,'d90eb0e5-36ea-4ba4-a1f0-d3dc7429f32f','Joseph Allen','Johnsonfort','2005-01-21','(867)735-7096x6257','835 Walter Club\nBrittanyside, MD 72792','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','4524211050711434','61469400',NULL,'2024-01-18 07:47:44','2024-01-18 07:47:44',NULL),(41,'bc6fa11a-e845-46b2-b6a1-61b5dffb682b','Steven Dean','East Shannonstad','1961-01-15','(015)748-5855x10384','37404 Perry Underpass Apt. 589\nEast Edwardport, CO 22173-9256','b8c9d0e1-f2a3b4c5-d6e7f8a9-b0c1d2e3f4b','0714081305470038','42027417',NULL,'2024-01-23 11:33:12','2024-01-23 11:33:12',NULL),(42,'b9d02424-8fd8-4e7a-9294-b75d9f707ef7','Jennifer Owens','Cookshire','1993-04-14','(620)002-4593','19694 Watts Coves\nStephensonmouth, ND 27996','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','0712895367474530','30941658',NULL,'2024-02-24 09:32:01','2024-02-24 09:32:01',NULL),(43,'0a62fda1-1dbf-4dbd-a32f-1234b2d6b9f1','Joshua Oliver','South April','1995-10-08','099.426.6931','4027 Torres Fords Apt. 661\nEast Adrianside, HI 87490-3146','b5c6d7a8-9c0d1e2f-3a4b5c6d-7a8b9c0d1e2f','7152532751131546','46425911',NULL,'2024-01-25 05:41:18','2024-01-25 05:41:18',NULL),(44,'a3f3f7d0-7268-44ff-a897-4e0b335b81e0','Christopher Baker','North Kaylastad','1960-06-11','142.438.9636','22823 William Junction\nHutchinsonbury, OH 30956-2474','a3e6b1d5-24cd-4828-a0e7-7050ae3b9d8b','2051064437065330','96831461',NULL,'2024-01-22 06:41:35','2024-01-22 06:41:35',NULL),(45,'9eebf3f3-d95e-4a1a-9058-cb05fcb05efb','Daniel Collins','West Brian','2006-08-10','(167)551-3250','116 David Court Apt. 432\nWest Pamelafurt, NJ 93818-7533','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','3566268630705764','80331953',NULL,'2024-07-15 21:32:57','2024-07-15 21:32:57',NULL),(46,'36f9b2a0-28dc-4ae4-94c3-2f4d4f4f8a36','John Smith','West Jeanland','1948-01-26','867-791-8940x0405','8542 Phillip Cape Suite 333\nNew Jeffrey, AR 86012-5697','b6c7d8e9-f0a1b2c3-4d5e6f7a-8b9c0d1e2f3a','4529424512531143','60089672',NULL,'2024-03-14 11:17:00','2024-03-14 11:17:00',NULL),(47,'99c707de-58a8-4d42-8ba4-3a19f0a4b5cd','Wendy Baker','Port Michaelport','1950-09-14','291-293-0177x926','2209 Michael Corners Apt. 697\nGarzachester, VT 63179','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','0740740023053365','52731021',NULL,'2024-03-14 09:39:21','2024-03-14 09:39:21',NULL),(48,'78fa43c1-5d2b-4506-8303-b5c5b0a30d27','Jeffrey Gonzales','West Lori','1964-01-12','(030)516-5683','357 Martinez Isle Apt. 131\nEricaton, NC 75845','c3d4e5f6-7a8b9c0d-1e2f3a4b-5c6d7a8b-9c0d1e2f3a4b','1442742703572120','33019402',NULL,'2024-01-27 08:32:08','2024-01-27 08:32:08',NULL),(49,'2d0f2d5f-2aa3-47ba-b836-96d9b4e6e5e3','Jessica Barnes','New Christopherbury','1946-06-15','(895)348-8568x039','32412 Adam Bypass Apt. 840\nPort Paulstad, VT 78880-3917','a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','3821231246243127','16075409',NULL,'2024-02-04 06:20:22','2024-02-04 06:20:22',NULL),(50,'6fa04cb7-1a1a-45a3-83b2-c6230b572601','Amber Hughes','Port Richard','1985-12-12','(883)391-0456','118 Johnson Field Suite 947\nWest Lisabury, OH 81090','c3d4e5f6-7a8b9c0d-1e2f3a4b-5c6d7a8b-9c0d1e2f3a4b','2414468431884824','28921034',NULL,'2024-01-23 12:39:40','2024-01-23 12:39:40',NULL);
/*!40000 ALTER TABLE `master_pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_petugas`
--

DROP TABLE IF EXISTS `master_petugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_petugas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puskesmas_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_petugas`
--

LOCK TABLES `master_petugas` WRITE;
/*!40000 ALTER TABLE `master_petugas` DISABLE KEYS */;
INSERT INTO `master_petugas` VALUES (1,'7990fbe6-3bee-41a9-8248-3da32aed116e','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','oijoijoijoi','akjsdhiauhsd','akjsdhiauhsd_oijoijoijoi.png','2024-07-24 04:29:00','2024-07-24 04:29:00',NULL),(2,'605b4f16-87db-4dfb-87d8-efa2739f02c8','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','wahyu sahri','881727378488','881727378488_wahyu sahri.png','2024-07-24 08:16:46','2024-07-24 08:16:46',NULL),(3,'618fe7c5-31ac-48b1-a80c-3cdda11e1b34','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','udin ahmed','362540','362540_udin ahmed.png','2024-07-29 03:33:08','2024-07-29 03:33:08',NULL),(4,'f32b9d5b-50f8-4514-bdc9-cedd69528f09','a4b5c6d7-8a9b0c1d-2e3f4b5c-6d7a8b9c0d1e','sujadto sakdulur','890456','890456_sujadto sakdulur.png','2024-07-29 04:20:10','2024-07-29 04:20:10',NULL),(5,'78cd23d8-2440-4a79-9ca6-36b2c337ed73','f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','petugas 1','454512321323213','454512321323213_petugas 1.png','2024-07-29 04:31:14','2024-07-29 04:31:14',NULL);
/*!40000 ALTER TABLE `master_petugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_puskesmas`
--

DROP TABLE IF EXISTS `master_puskesmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_puskesmas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_puskesmas`
--

LOCK TABLES `master_puskesmas` WRITE;
/*!40000 ALTER TABLE `master_puskesmas` DISABLE KEYS */;
INSERT INTO `master_puskesmas` VALUES (1,'f6d9e7d8-9a7b-4c53-ba20-9803e95b1a01','Puskesmas Blambangan','pkm_blambangan','$2y$12$0Y.8pdlSGgcnMBSBTS/zr.ueOGQxfyu1.82gTLXHJye4Yjoz1NWm.','http://puskesmas-blambangan.banyuwangi','2024-07-23 08:30:00','2024-07-23 08:30:00',NULL),(2,'b92a1e3f-49fb-4535-92c9-6a4a9a5e9c11','Puskesmas Genteng','pkm_genteng','$2y$12$e5muXsCNp800Du/ZYxpGJuhhC2n5iOtOTSfoPBJRn8eoaEQ.Pd8ue','http://puskesmas-genteng.banyuwangi','2024-07-23 08:35:00','2024-07-23 08:35:00',NULL),(3,'e7c1f8b2-8d0a-4f7d-9cb3-3b908b620240','Puskesmas Giri','pkm_giri','$2y$12$oO4fyUcMaTROOMrddimc4eSN4wH6LQSpF.9mhRxZnX4sSZ.EiH98G','http://puskesmas-giri.banyuwangi','2024-07-23 08:40:00','2024-07-23 08:40:00',NULL),(4,'a3e6b1d5-24cd-4828-a0e7-7050ae3b9d8b','Puskesmas Kalipuro','pkm_kalipuro','$2y$12$cCNiD372r5wwC0JGVW4HV..QpQjteD0400Dt2vHCTYhh5GEFqmT0y','http://puskesmas-kalipuro.banyuwangi','2024-07-23 08:45:00','2024-07-23 08:45:00',NULL),(5,'d4f5e6c8-73b2-4fb3-9aef-12bfc98307f9','Puskesmas Muncar','pkm_muncar','$2y$12$lbZIaWoc/eHOn06urPepwuY5.GpZkYMt4IPcTbfJT07.A4bus2Sua','http://puskesmas-muncar.banyuwangi','2024-07-23 08:50:00','2024-07-23 08:50:00',NULL),(6,'c1a2b3d4-5e6f-7a8b-9c0d-1e2f3a4b5c6d','Puskesmas Rogojampi','pkm_rogojampi','$2y$12$cU8QWh2anHhMX0jWoDtrr.A/xWJCuer27.laCtmTTXVqdroffcrCa','http://puskesmas-rogojampi.banyuwangi','2024-07-23 09:00:00','2024-07-23 09:00:00',NULL),(7,'f8e9d0c1-2b3a-4f5e-6d7a-8b9c0d1e2f3a','Puskesmas Srono','pkm_srono','$2y$12$7j7kkeqcOLWggcTmlHRP0OeyheHtnKwz1e55SkuCHMYVhybQ/sb4G','http://puskesmas-srono.banyuwangi','2024-07-23 09:10:00','2024-07-23 09:10:00',NULL),(8,'d5c6b7a8-9e0f-2d3a-4b5c-6d7a8b9c0d1e','Puskesmas Tegaldlimo','pkm_tegaldlimo','$2y$12$FyV4cLHcleklIB/byt5EEO2uyLVYCent8QGCLX87gle6/N47U7B/C','http://puskesmas-tegaldlimo.banyuwangi','2024-07-23 09:20:00','2024-07-23 09:20:00',NULL),(9,'a2b3c4d5-6e7f8a9b-0c1d2f3a4b5e','Puskesmas Bangorejo','pkm_bangorejo','$2y$12$G.R5ZEaLq2poBlgTUJ1FUu5FiZQrHn0CjsNYmE1Xg/oa2CmwQtmCm','http://puskesmas-bangorejo.banyuwangi','2024-07-23 09:30:00','2024-07-23 09:30:00',NULL),(10,'e9f0d1c2-b3a4f5e6-7d8a9b0c-1e2f3a4b5c6d','Puskesmas Cluring','pkm_cluring','$2y$12$HTx098wLh1zH8DCEmX/fOOQQ/QpRFKgYhcGQLtlVDnYWz58clYgba','http://puskesmas-cluring.banyuwangi','2024-07-23 09:40:00','2024-07-23 09:40:00',NULL),(11,'b6a7c8d9-0e1f2d3a-4b5c6d7a-8b9c0d1e2f3a','Puskesmas Gambiran','pkm_gambiran','$2y$12$7cp5XTfnAJnNBjCjZ0IxVeKpNRtmOLsUs5jPFC1L98B6fE.wUavLu','http://puskesmas-gambiran.banyuwangi','2024-07-23 09:50:00','2024-07-23 09:50:00',NULL),(12,'c3d4e5f6-7a8b9c0d-1e2f3a4b-5c6d7a8b-9c0d1e2f3a4b','Puskesmas Glenmore','pkm_glenmore','$2y$12$VbpB0wfCC.o8X9wUkyTjZO1az3sz2H86Lb1.i1Bi1lIBPwiXSp5RW','http://puskesmas-glenmore.banyuwangi','2024-07-23 10:00:00','2024-07-23 10:00:00',NULL),(13,'f7e8d9c0-1b2a3d4f-5e6d7a8b-9c0d1e2f3a4b','Puskesmas Kalibaru','pkm_kalibaru','$2y$12$ToCrHRKgvyWGoTzY4S9.a.woaAwd/jFEZNOmGuB4VhnQMwTV5VxBC','http://puskesmas-kalibaru.banyuwangi','2024-07-23 10:10:00','2024-07-23 10:10:00',NULL),(14,'a4b5c6d7-8a9b0c1d-2e3f4b5c-6d7a8b9c0d1e','Puskesmas Licin','pkm_licin','$2y$12$LtkxQLtr/J1H4tSt1c3BS.yEhzoFT4uVNKjhKZqB1FAaLjVtA5LJG','http://puskesmas-licin.banyuwangi','2024-07-23 10:20:00','2024-07-23 10:20:00',NULL),(15,'d1e2f3a4-b5c6d7a8-9b0c1d2e-3f4b5c6d-7a8b9c0d1e2f','Puskesmas Muncar','pkm_muncar','$2y$12$aU.yH2EvzkheME4hvqeM5OLo7uRikuIJUPxOPKt5UKZnKC9XFzGDK','http://puskesmas-muncar.banyuwangi','2024-07-23 10:30:00','2024-07-23 10:30:00',NULL),(16,'e2f3a4b5-c6d7a8b9-0c1d2e3f-4b5c6d7a-8b9c0d1e2f3a','Puskesmas Pesanggaran','pkm_pesanggaran','$2y$12$NMGmsCmKg2P1/hBgnrfvB.JoR1gnS.jXTFr5zH3/Hfbdy9/r6N4gS','http://puskesmas-pesanggaran.banyuwangi','2024-07-23 10:40:00','2024-07-23 10:40:00',NULL),(17,'f3a4b5c6-d7a8b9c0-1d2e3f4b-5c6d7a8b-9c0d1e2f3a4b','Puskesmas Purwoharjo','pkm_purwoharjo','$2y$12$qjsEoUpjY5PKCCqqWXpUK.WPgn4UVCiL3b3OGHSRwP52L/C0ett52','http://puskesmas-purwoharjo.banyuwangi','2024-07-23 10:50:00','2024-07-23 10:50:00',NULL),(18,'a5b6c7d8-e9f0a1b2-3c4d5e6f-7a8b9c0d1e2f','Puskesmas Sempu','pkm_sempu','$2y$12$nFWMbgbB9Hp7/WvtgiMd5eZ1gVSMewKuU6nIlrA3UpnlkpDg/4lg.','http://puskesmas-sempu.banyuwangi','2024-07-23 11:00:00','2024-07-23 11:00:00',NULL),(19,'b8c9d0e1-f2a3b4c5-d6e7f8a9-b0c1d2e3f4b','Puskesmas Siliragung','pkm_siliragung','$2y$12$nXEwdBGSk0NuzQp5NK5NROYdapf75xhdozFMqgod25zjGXJklZIYO','http://puskesmas-siliragung.banyuwangi','2024-07-23 11:10:00','2024-07-23 11:10:00',NULL),(20,'c1d2e3f4-b5c6d7a8-9b0c1d2e-3f4b5c6d-7a8b9c0d1e2f','Puskesmas Singojuruh','pkm_singojuruh','$2y$12$d48dDtv90rC5ZMP2Ht5pNeHWrgDNO3gwS0vpjArYN0E9AOWHg1kG2','http://puskesmas-singojuruh.banyuwangi','2024-07-23 11:20:00','2024-07-23 11:20:00',NULL),(21,'d4e5f6a7-8b9c0d1e-2f3a4b5c-6d7a8b9c0d1e','Puskesmas Songgon','pkm_songgon','$2y$12$FlNIA/Xjl3/ub0T/RkhOt.l20eJHFr9R9GKPzsVjQvWY33AMVagqO','http://puskesmas-songgon.banyuwangi','2024-07-23 11:30:00','2024-07-23 11:30:00',NULL),(22,'e7f8a9b0-c1d2e3f4-b5c6d7a8-9b0c1d2e3f4b','Puskesmas Srono','pkm_srono','$2y$12$3akREryAAfWFiHm/8Hx/XeG05gkvUYlRVXiY6D0TtHLLM7DcaKX8G','http://puskesmas-srono.banyuwangi','2024-07-23 11:40:00','2024-07-23 11:40:00',NULL),(23,'f0a1b2c3-d4e5f6a7-8b9c0d1e-2f3a4b5c6d7','Puskesmas Tegaldlimo','pkm_tegaldlimo','$2y$12$4OAqIcGrMWv6qgVvRDzFnuKDQnJiEP6wzET8mZ8uxGnFCdO4evt4C','http://puskesmas-tegaldlimo.banyuwangi','2024-07-23 11:50:00','2024-07-23 11:50:00',NULL),(24,'b3c4d5e6-f7a8b9c0-1d2e3f4b-5c6d7a8b9c0d','Puskesmas Wongsorejo','pkm_wongsorejo','$2y$12$0VEE/1WV2MHIqXu3GgzxtOAL1TZehf86eXmsjMtsJJmUMIQpbOmsq','http://puskesmas-wongsorejo.banyuwangi','2024-07-23 12:00:00','2024-07-23 12:00:00',NULL);
/*!40000 ALTER TABLE `master_puskesmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_wali_pasien`
--

DROP TABLE IF EXISTS `master_wali_pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_wali_pasien` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_wali_pasien`
--

LOCK TABLES `master_wali_pasien` WRITE;
/*!40000 ALTER TABLE `master_wali_pasien` DISABLE KEYS */;
INSERT INTO `master_wali_pasien` VALUES (1,'79099c6d-6e28-40fb-b410-e567f06672fd','wahyu','Banyuwangi','2024-07-30','0129301293','Gambirran','Saudara','2024-07-29 04:11:21','2024-07-29 04:11:21',NULL),(2,'7393e781-d93d-4377-86ae-91eb80841382','wahyu','Banyuwangi','2024-07-30','0129301293','Gambirran','Saudara','2024-07-29 04:12:48','2024-07-29 04:12:48',NULL),(3,'9bef6782-ea52-4f52-980a-9e3921e2312a','sujadto sakdulur','Kanada','1984-01-02','0898989898','gang berkah','Suami','2024-07-29 04:23:26','2024-07-29 04:23:26',NULL),(4,'2386115e-f3b2-4065-a7d1-6780499bc263','wahyu','Banyuwangi','2020-08-29','asjdakjdwkl','Gambirran','Suami','2024-07-29 04:35:20','2024-07-29 04:35:20',NULL),(5,'50dc61b5-f5b6-4f0c-a5f3-95f036d9c800','sujadto sakdulur','Banyuwangi','2024-07-30','0898989898','SilirAgung','Suami','2024-07-29 06:48:27','2024-07-29 06:48:27',NULL);
/*!40000 ALTER TABLE `master_wali_pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_07_19_073534_master_puskesmas',1),(5,'2024_07_19_073545_master_pasien',1),(6,'2024_07_19_073617_master_wali_pasien',1),(7,'2024_07_19_115207_master_petugas',1),(8,'2024_07_19_115225_general_consent',1),(9,'2024_07_24_041853_tec-petugas',2),(10,'2024_07_24_041854_tec-petugas',3),(11,'2024_07_25_125010_tec_pasiens',4),(12,'2024_07_27_031417_tc_general_consent',5),(13,'2024_07_27_032715_tec_general_consent',6),(14,'2024_07_27_032716_tec_general_consent',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0qz5cIuYo9PL17uE2GoYLEkVUYR8BF7X6uOqHppP',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE1Ob25PZU4yT3Z6VHBUOVhLZElzV2pKYk1FclRzMEJCaVQ1UmVRbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265234),('0YhPplyb1ExcSYllDW5kgCKptPrtwF1YW27Q5tzh',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE5EaFZXczJ2SGlTYW5tQVdSUkFyR1h3STlFanJ6dDFtUlZhQzJtciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMi8/bW9ub3NwYWNlVWlkPTIxNTI3NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722293689),('4eF4apda1QQJECbq1k6WFMVnqidhRGNXI5ktSY59',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUt4OXNTbHNjMldxNUZIcUZydGVZbUY1N21aNW9kN0RwTU9LV3hIcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265233),('7ip2S5aGCGizpCrnB0c3g5CEYiQM826QC2DTIOtC',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkU3UGN1SHI3VDBoQkJQUUxSQUxpUmhUQnMxbG5qc1JDd0dsY044diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722267556),('bEuoFEyv1yr3hppVeXmFNqpPXMJuoCBEbJLTRtQH',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXJnV1llRHZtQ3ZqSUxtU2NDWnpaeWcxbDdTRXJZME9PYUN5OGpSYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722293688),('bpVLXyKQavuHaGNykRZzO6oDVMoYxs18X88VwnPu',7,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTo3OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3ByaXZpZXctY29uc2VudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJYemVpSENYOEQ2ZGw4T3V2OHJxSWN0VUhWOFdqMHg2TnJXMm1yZFIxIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3O3M6NzoicGV0dWdhcyI7czo3NDA6ImV5SnBkaUk2SWtKRmQzZEVTMVJNTDNVNFNrZEVTVE41ZG5GbU1tYzlQU0lzSW5aaGJIVmxJam9pTW1WT1pGbHZjMDg1WmpOa0t6QktZak15WjJKQlVuVTFhbkpqV0hSVE1YQlRObWt5ZVU5aWQzaDJiMEZxTlRaNlMwOVdUVEI2YXpSeWVWTnpNbmRJTW1GU1UxUkplRmwyTjFoWldFOTVkbk1yTUdKM1YzY3ZOM1Z0ZG1KUVltTlVXRGxuSzJaQmQySmtTRTh6TkVjeGJrbFlWemx0WVVkT1kxVjRaa3huU1hOSFFXdENhbEZRZDNaeWVIaHFTRTlqZWt4a2JHbDNVMWxGWVdWdFkxSklObFJYUkhZMVREUXdaemN3YjJwa1dFMWxNRmx6VW1JMGFITkRVVzh6VTNBNEwwVnhOM0ZJTkM5T1IxVlJMMFYxVkZKUFJHNWhNVWhSZEU5U2RYQlVVMmxxTW1vdmRGaFdZa3gyU2pFNVpYUmlkVE5aVDNGTGVIWjZOWE5zU25wemMzbGxkVzlGTVdsSWVVTjFkazlaVUhwcVJtZzRXbGhZWVhsaU5XOUNVVmg1YUVSbVYyWmhNR2hUUVZadmNTOVlTazV6VUdGclkwcDFSRVZ4VFRkbGMyZGlNMjFDV2pGNWJVZ3ZPVTFsTTNOaVlUQTFielpUT0dGMFNEQlphSGt5YTB3MGRUUkdSMkp1TlhVNU1GaFFiREp0UVZGRmIxRjJRelV2UmxWcU9WSk5kekZTT1ZaeVltbzNka0Y0YldsTlJIaE1TeTkxZEZWSUt6RjBZMVJaUVhCamFXbExiMHRLUlZWYVl6MGlMQ0p0WVdNaU9pSmlZek0xWVRsbVl6azJORFE0WkdSaE9UZG1OalUwWVRZME5USTBNbVJqWkRRMU1EQTFZalF3WlRJME5HRXhOMkpoTVdNMU5HUXhNbUpoTXpJM1lqVTFJaXdpZEdGbklqb2lJbjA9IjtzOjY6InBhc2llbiI7czoxNjgwOiJleUpwZGlJNklrbDBObU5oZGpFMmFWZ3lXVzFpVkhWQmVtVmhhWGM5UFNJc0luWmhiSFZsSWpvaWFIY3JkRFpuVWtsRU1VWnRWbXRGY0ZkRVNYSkhaRWg0SzNCV2JIbHFiMHhUT0RnM05XdFphVk5sZVU1WGRWaHJkMk5PU0N0Vk1GQnFMekpPV1RSamQwSXliRkkzV1dkc05uaGtkVEJoZUZSc1NUWllNak5wU21rNVZsSlBiSGM1YzNGaE1VRndSMWxoWWtsWU1rVkNTa05JTkhka04yUllPVmMwV0U5cVl6SjZXVlV3YVU1TGNGUXhla3RIUlZOUldscFhjMGRqWlcxRVRGTlZZbEI2YjBSU1NWRnFkVU4yVVRKRmFWSXpXazQ0YlhKSVJXMXZlRFV2TUdOSmJrRkhZVWhEWkVSMVJYbDVNRzFaTldaeVNIRXhSbVZKTkhOSGNuY3hhVXRIVFRoWFZVODViazVvTDJkblMzY3hSVE5WYWxGRFprMTRRbU5uZUhOcVkwTmxZMGxrVm5oNmVrUlhTbE0xV2pkaGJtdDFURkpFY2tObk5YTXJabXRQWmtaU1Z6SlFRVGxLWjJOVFVVcHdaMnRYVEUxQlJXMHZUbXRLTWk5bWVFUTFTbVZTT1dOMFMxSk1VMDh5TW1aU2NqSlVXR2RCVjI0d1pXbE1lSG8xU1ZGbk4xQXpUR2hUZWt4UVdsb3piVnBZVERSVk9HRXJWa1l3TW5KSWRWaHFNVVY0UkRKTmF6Wk5XR2QxWlVaU2FGYzBaMWxLZEVWaGIyRmlhbE5PVEdkd2FEZEZPRlpKTm5sTWVrbHNkbmhWYnpSRFRESmFka0ZuUTB4aGJsWkNlREJWUzBWWE5WaE9ka3c1V1c1c2JXMXJVRTQyVjNwdlQxRm9XWFIwUzFkYVlqTlViUzlQVWpkNFlXcFZkSGR2ZVc1TVFpczFSR2xLY0hWb1ZGaE5iMlpKUmt0WmRtcEZNMjUxZEdkWGFrbHlSMHhFT1RWTWNXeFNVMU14Ulc5amRWWjViV3BXU0V4dFZrTkRTWGhGT0VvelEwNHhSVkJFVW5wVFRXRm9jVnB5WkRCR1VqbFhlR1Z1TW1GSk9EWnRWRFF3U2xOeWJGUmhaMDQwTW1Jd2EySnNNbGRpZDFkSFlrMU1LMGRRWTNsS2EwMW1PSE01VkdkV1VqaEVia3R6WlVjdk1FWlFXRzl0YzBFd1ExcGlla2R0YldKUFV6VldTbkpYVXpaNmFXZzRRa1V6TkhwNmFVVkNkRGxqWXpFMVVEbFBZMVV2V0ZCcFVIWjRZbHBJVW5WUlEzb3lTVEZqV0VaSWMzZEVheXRhUkdGM1YwdDRXa2cxUjNvemRYQkdlRlZyUldadlUzVlBRMFpMU2psQlFWbFVjM05xVEN0d2NIWkRiMjV3UlRZMVIwUnFNbVp0WVdKdGFteEhOMlpUWmxoWVpXTTJOWEF6UlV4S1ltdDNLM05CTVhBdmVta3hZVkIxVEdGTGRubEhZa0puWWxwVE1rZ3dVM2MzVUZndk5IWnNNVzEzZDNGWVJHb3phbEF3TTAxVGNGVXliamhFY0dWdWRuRlJXR1EyYlhReGJVOHpRVVZHVldWa1R6UkxhMlkxVWpoT0wzcHBjVEl4U2xSUmFrZFFXV1UxUlVWaE1qaHJZak12YXpsamFITTVLM0kwU1dGUWNrOHllRmh4U1UxRFFVSjZieTlJZUZFelUySmhOVzltVVVabVEwdDNiRGh6ZDFSUVptRTFhbEJSY25GSmFHTkpNSGRWZUdObVRVeHpkbk5YUVZaS2R6ZEJlak4zTUc4d1NqVnhRMlkxY1ZVclprSlVSMDVUV1dSRk1HcEJRWFZIYUc5c2NtSnhWR1ZVWVVrNWJFdGFRVzE1ZFVOS1ZEVjNiVWRqVWtWTlpXUkhTMUJxUWtkQlZrVnFhV05ZYnpWdmNIVmpkbXg2V0dkRk5qUnVTbEExVkVkc1ZUUlZhMVkzZGpOeU1tMXRPWGRRUTJkMlNHaFhZM1ZMVDJWd2VFbG5VRGxGWWpCb1VHZDVObGhaY25GQlpqUnNlamQzUFNJc0ltMWhZeUk2SWpCa05qaGlPREJrTXpBMU9HWTVOVEJsTkRjME9HUmlZemMwWmpWak16WTBNekU1WWpWaU1HWmxZamhrWmpaaU1tTXhOelF4TVRrM1pUUmpaRGd4WldVaUxDSjBZV2NpT2lJaWZRPT0iO3M6MTU6ImdlbmVyYWxfY29uc2VudCI7czo4NTI6ImV5SnBkaUk2SWtocE16QnViVmRDZGk5cFZWWm5WbUZuWVRndlZYYzlQU0lzSW5aaGJIVmxJam9pVFV4TlRWQnBWRFp4TUc0MVJtbDRlWGh1TmtWRWVqVmxZbE5OTDNOTmFpOTZWRXM0T1Zsd1RuQjVUMVpGWlZSR1RrVm5MeTlsYW1KaGFtZHBWSEl4YlVjdlNWRXdhV00xV0dsRE5FVnlLMVZ5WmpKNlRrZHdlVzh3VFc1a1lTdEVjbXhHZGtGT0wwbDZPSEpEVTBZeldGaENZV0pZSzFGRlZsRjRWRmxRUkcxd1RuWmxXa3hIVVdoalp6ZERUbXRuVGpWTmFFcHliV0ZOZWxkdGVuWlZaR1l2V1N0cFZXbHRLMlozTlRVMlVqRnpNWFZWVlRSc09WQlVZMlZyTmpSdFRXbDNVRUp2VEZZM2Jta3pRekkxVTA5QlRtVnhVaXRaZVU1aVdUQkJXRFZwZWpSRmEzRklXbWx3Y0ZFeWJWUnhabEkxU21OVGRVbFljbGM0ZFhRM1ZqUkRSMDU2ZW5aQ1VEWktVU3RyYzFoMlVuZEtTR2c1TldwVFV6SlJkRkl5VkZsVFlsSXJNMlJLYXpCbVQxTnFVMGxtYzJGdVVtSlRjRlZXUWtsSFNVODVhMFJJVDB0QmRGTXJabVV4V1VwaVRrbHdNMWhPZVZOQll6RTBWbkoyTnpObldFVTVSR3B4ZFZCcE0yeGpSaTkyYW05cVkxUjNLMlJ5SzNOS01UWXdUVEEzTUZsbE16aE5iekU1YWtacGFEUnhSbGhsU1c1TlUwWm9iMWxZV0VWMWMyeE9OME5VSzJaTkwyVkhPVU00VG14YVdpOVplU3N6Uld0S0t6RXdSakl4UlZWellWbDVXQ3RxWm1SNk4xaG9TRkJyZVVOblpuTlFOVlpETDBaNFZFSkRSRFF6ZW5oR2FWRldOalJHWW1acE56WjRaamhSWlRaRFprMTNOR2tpTENKdFlXTWlPaUl6TmpSbU9EQTBZV1JtTkdObU1URXlNbUkyTkdWbFlUUTNaV0ptTWpGaU9XRTFaREF3T0dNeE9UVmxNMkkzT1dZeFpESXpOV05qTW1ObU9HTTBaak13SWl3aWRHRm5Jam9pSW4wPSI7fQ==',1722268948),('dEom6FbFrqhZa8IfRPT9pEC4PM6Tx8TXSZVvAoTq',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFE4WjE2YWg5eU81Z256OFhYQzBMVHhPbUNWRGdXSHREbzFJS1VRciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265234),('Ds4sDstrJ81kQ4sOQu8gFMF8kJOAVxg1GdO1beac',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTVsYnFGU2ZFV1VxZVVUc2J1OUdHRHEyeW9yZ2cwVHdteDRsWlRkViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265233),('FCYnEqoV9YzFynu64QFdyLcwcFdubHEALBL8tjAd',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVNYR1NyQ0xoSjhoZkFLcGtMSkFUUndlVDNoaEZqZFF2bDdMMlFwUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722303099),('i57qY0qUpa09126XnGYTduOvGR1zMbHcdlCHBMHp',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkpRRkxjaTE1UTZmTVNmSmRzNmZPVWpselR2QmpLZkFHd1hEcnhaTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMi8/bW9ub3NwYWNlVWlkPTgyODg5NSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722268881),('iAOlDNe8qmZgLLifIiGyFhiPucSXCaTm0tdMHZZr',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU5Sd2tuVDdFNzVrNkRseEpLOG81a1ZEc3Z4VjNnNU4xSTdEakF0diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265234),('IrRwrMQVZqaGZiH1MJLgZ2eKQ5oMdfo78kQIr4JO',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU41cnJKaG00VURRMVc1MzVVT25rWm5UNGxBRFVobkwwRGVGQ29kUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265234),('iZSqishSyyZbqddyZOa66KLfliZnZPmPp1NMnGV1',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGlGOVp5eDhDcFptVFBIV3NnRFluYTBRMUgzcFpnRzVndm1McGZJRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722293688),('JepsugMSLNsuTgJfB0ukTvWIVghBKGkGmTNOhbx6',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoidjUxY0xFSHh0dDJic3FyT0RiY1k2a0FPck13bEF2Um9pRkJvNE1mMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265234),('NfMEIThUhVw2wBUaLRWFCEdJkFzsudXEyw5Womp7',7,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWHV0aFpPWEtOclZ0NVZOTmlaVVBGNlF4N2RGNVExY1kwUlpIZlViQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXR1Z2FzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9',1722296217),('nvaEEZz4QL60DGfkAdhVfUW79jVhIbTg6z2jpK0o',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHNSNWJ2MXBNb0F0TUViRG9MQTJrUjVWVnFScXREdjZTd3cweFgyMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMi8/bW9ub3NwYWNlVWlkPTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1722268881),('pDic2UgsmGRepVL8JL0IJNLSnRtqYEyEt1883jmv',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM25Pa3BOclpSUTBmcjQxdHdhNTY2cXU5VWsyVmRmd3hTaUZwd0VnRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722303099),('PuLqExJcyhZ5jKJ6oWaFLD3M3S1j2W5sAiomMsaf',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW9EcVNRMWdBa3ZuRGhUbjVaV0dyZWdxa0VPcmRkbjV2dW1Pb1VKQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMi8/bW9ub3NwYWNlVWlkPTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1722265244),('RCg0kwWu0qGOFokOvEqy0pdQwI8uNvCahJOyZp3y',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0NUd1o1S0NsTk5XNmxqV1RSdm42OXlDSzNwd2tYcEFxMXRON01wdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265233),('TKCJMCpZdt7LCepv4FvaCzeUzCByDyEg2mboYg5R',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib3V6Z2JhdlJ4TDdMWDFGQXR5d290bmx3QWlKZVdUOFVIenl1SGdoYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMi8/bW9ub3NwYWNlVWlkPTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1722267532),('tmu39RJijT2HAaMdoSSlnmSxv5r1G1nSgfge7yPf',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWNBY2taZDNueGVuSVd6MWY1OElrMjhteWo1M2l5RUtJcjVxTDlrdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMi8/bW9ub3NwYWNlVWlkPTM1MjgyMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722303100),('u88OS6t5YJY3JzFzzStcOLvafUK14LgfoiSt5LSb',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlVnc2hkNXk5MEVUTDRqZUZXNjVxS3g4c0VIWTRVS2tLZW1pZXpuOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722303099),('utStnidVAKE9zDERaQIKOGEWyH9xtdxbmoZOkN6h',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoibXg1TnZ6dlU1Z2paU2psRWNOTGZSVmszUENiVHhYbVhHZ2FMZlVKVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265234),('xo9HiVmKwQ3990R71BgWTCaS24RS2Ynl6S2IlyxH',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlhmV1Y5Qk1Gbm9hYllaREFYcDZlYmhMZlI1UGhkdnc3SEw2NzFNRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMi8/bW9ub3NwYWNlVWlkPTIzNDAxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1722265244),('yalohfext2dEM3p5dd8XEEUU3XmqptYbWUTCKeLO',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1lEcXh2aEhzeTJwVDI5RlRlak9KR3VNY2libG5jVFlOenpiYnMzVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMi8/bW9ub3NwYWNlVWlkPTU3NzA2MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722267533),('yTS0R0iwmlsUKSSX2hDezVvdWIfa1NV9W5fb71YL',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1J4VU9mTVFLeG83U0hBdHRKbUVKSVlya1lBa2N0N0R6ejZ5MjBVRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265234),('ZYhG0AOfijLzcpLHfwC7uY3oGIs90kr5qTAAX20h',NULL,'127.0.0.1','axios/1.6.8','YTozOntzOjY6Il90b2tlbiI7czo0MDoianRxN3I1ODZwWm9ETWZRMVM5bktaWktnckRmZHRMQ3BsUDhiN1lzciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6OTAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722265234);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-30  1:32:36
