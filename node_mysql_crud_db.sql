-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: node_mysql_crud_db
-- ------------------------------------------------------
-- Server version	8.0.33
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
-- Table structure for table `employees`
--
DROP DATABASE IF EXISTS node_mysql_crud_db;

CREATE DATABASE node_mysql_crud_db;

USE node_mysql_crud_db;

DROP TABLE IF EXISTS `employees`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
    `employees` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `first_name` varchar(255) NOT NULL,
        `last_name` varchar(255) NOT NULL,
        `email` varchar(255) NOT NULL,
        `phone` varchar(50) NOT NULL,
        `organization` varchar(255) NOT NULL,
        `designation` varchar(100) NOT NULL,
        `salary` decimal(11, 2) unsigned DEFAULT '0.00',
        `status` tinyint unsigned DEFAULT '0',
        `is_deleted` tinyint unsigned DEFAULT '0',
        `created_at` datetime NOT NULL,
        `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--
LOCK TABLES `employees` WRITE;

/*!40000 ALTER TABLE `employees` DISABLE KEYS */;

INSERT INTO
    `employees`
VALUES
    (
        1,
        'John',
        'Doe',
        'johndoe@gmail.com',
        '1234567890',
        'BR Softech Pvt Ltd',
        'Full Stack Developer',
        500.00,
        1,
        0,
        '2019-11-19 03:30:30',
        '2024-04-04 19:28:24'
    ),
    (
        2,
        'Jane',
        'Doe',
        'janedoe@gmail.com',
        '9876543210',
        'RG Infotech Jaipur',
        'PHP Developer',
        450.00,
        1,
        0,
        '2019-11-19 03:35:30',
        '2024-04-04 19:28:24'
    );

/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-16 13:41:29