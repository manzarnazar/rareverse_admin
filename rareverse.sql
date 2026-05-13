-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: rareverse
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

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
-- Table structure for table `add_fund_bonus_categories`
--

DROP TABLE IF EXISTS `add_fund_bonus_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_fund_bonus_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bonus_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus_amount` decimal(21,12) NOT NULL,
  `min_add_money_amount` decimal(21,12) NOT NULL,
  `max_bonus_amount` decimal(21,12) DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_fund_bonus_categories`
--

LOCK TABLES `add_fund_bonus_categories` WRITE;
/*!40000 ALTER TABLE `add_fund_bonus_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_fund_bonus_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_settings`
--

DROP TABLE IF EXISTS `addon_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_settings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `test_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `settings_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `payment_settings_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_settings`
--

LOCK TABLES `addon_settings` WRITE;
/*!40000 ALTER TABLE `addon_settings` DISABLE KEYS */;
INSERT INTO `addon_settings` VALUES ('070c6bbd-d777-11ed-96f4-0c7a158e4469','twilio','{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}','{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}','sms_config','live',0,NULL,'2023-08-12 07:01:29',NULL),('070c766c-d777-11ed-96f4-0c7a158e4469','2factor','{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"otp_template\":\"OTP1\"}','{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"otp_template\":\"OTP1\"}','sms_config','live',0,NULL,'2026-03-10 06:57:32',NULL),('0d8a9308-d6a5-11ed-962c-0c7a158e4469','mercadopago','{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}','{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}','payment_config','test',0,NULL,'2023-08-27 11:57:11','{\"gateway_title\":\"Mercadopago\",\"gateway_image\":null}'),('0d8a9e49-d6a5-11ed-962c-0c7a158e4469','liqpay','{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}','{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}','payment_config','test',0,NULL,'2023-08-12 06:32:31','{\"gateway_title\":\"Liqpay\",\"gateway_image\":null}'),('101befdf-d44b-11ed-8564-0c7a158e4469','paypal','{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}','{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}','payment_config','test',0,NULL,'2023-08-30 03:41:32','{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),('133d9647-cabb-11ed-8fec-0c7a158e4469','hyper_pay','{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}','{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:32:42','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('1821029f-d776-11ed-96f4-0c7a158e4469','msg91','{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}','{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}','sms_config','live',0,NULL,'2023-08-12 07:01:48',NULL),('18210f2b-d776-11ed-96f4-0c7a158e4469','nexmo','{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,'2023-04-10 02:14:44',NULL),('18fbb21f-d6ad-11ed-962c-0c7a158e4469','foloosi','{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}','{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:34:33','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('2767d142-d6a1-11ed-962c-0c7a158e4469','paytm','{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}','{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}','payment_config','test',0,NULL,'2023-08-22 06:30:55','{\"gateway_title\":\"Paytm\",\"gateway_image\":null}'),('3201d2e6-c937-11ed-a424-0c7a158e4469','amazon_pay','{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}','{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:36:07','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('33a90207-7315-4bfe-a9af-d16049cc0b7c','cashfree','\"{\\\"gateway\\\":\\\"cashfree\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"','\"{\\\"gateway\\\":\\\"cashfree\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"','payment_config','test',0,'2024-12-21 06:51:28','2024-12-21 06:51:28',NULL),('4593b25c-d6a1-11ed-962c-0c7a158e4469','paytabs','{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}','{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}','payment_config','test',0,NULL,'2023-08-12 06:34:51','{\"gateway_title\":\"Paytabs\",\"gateway_image\":null}'),('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469','bkash','{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}','{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}','payment_config','test',0,NULL,'2023-08-12 06:39:42','{\"gateway_title\":\"Bkash\",\"gateway_image\":null}'),('544a24a4-c872-11ed-ac7a-0c7a158e4469','fatoorah','{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}','{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:36:24','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('58c1bc8a-d6ac-11ed-962c-0c7a158e4469','ccavenue','{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}','{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 03:42:38','{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469','thawani','{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}','{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:50:40','{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),('60cc83cc-d5b9-11ed-b56f-0c7a158e4469','sixcash','{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}','{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:16:17','{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),('68579846-d8e8-11ed-8249-0c7a158e4469','alphanet_sms','{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('6857a2e8-d8e8-11ed-8249-0c7a158e4469','sms_to','{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('74c30c00-d6a6-11ed-962c-0c7a158e4469','hubtel','{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}','{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:37:43','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('74e46b0a-d6aa-11ed-962c-0c7a158e4469','tap','{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}','{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:50:09','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('761ca96c-d1eb-11ed-87ca-0c7a158e4469','swish','{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}','{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:17:02','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469','payfast','{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}','{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:18:13','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('8592417b-d1d1-11ed-a984-0c7a158e4469','esewa','{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}','{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:17:38','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('888e7b84-27b3-497d-a5ef-cd69d65a798e','instamojo','\"{\\\"gateway\\\":\\\"instamojo\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":\\\"0\\\",\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"','\"{\\\"gateway\\\":\\\"instamojo\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":\\\"0\\\",\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"','payment_config','test',0,'2024-12-21 06:51:28','2024-12-21 06:51:28',NULL),('9162a1dc-cdf1-11ed-affe-0c7a158e4469','viva_wallet','{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n','{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n','payment_config','test',0,NULL,NULL,NULL),('998ccc62-d6a0-11ed-962c-0c7a158e4469','stripe','{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}','{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}','payment_config','test',0,NULL,'2023-08-30 04:18:55','{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),('a3313755-c95d-11ed-b1db-0c7a158e4469','iyzi_pay','{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}','{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:20:02','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('a76c8993-d299-11ed-b485-0c7a158e4469','momo','{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}','{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}','payment_config','live',0,NULL,'2023-08-30 04:19:28','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('a8608119-cc76-11ed-9bca-0c7a158e4469','moncash','{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}','{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:47:34','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('ad5af1c1-d6a2-11ed-962c-0c7a158e4469','razor_pay','{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}','{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}','payment_config','test',0,NULL,'2023-08-30 04:47:00','{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),('ad5b02a0-d6a2-11ed-962c-0c7a158e4469','senang_pay','{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}','{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}','payment_config','test',0,NULL,'2023-08-27 09:58:57','{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),('b043c880-874b-4ee7-b945-b19e3bb2cabc','phonepe','\"{\\\"gateway\\\":\\\"phonepe\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"merchant_id\\\":\\\"\\\",\\\"salt_Key\\\":\\\"\\\",\\\"salt_index\\\":\\\"\\\"}\"','\"{\\\"gateway\\\":\\\"phonepe\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"merchant_id\\\":\\\"\\\",\\\"salt_Key\\\":\\\"\\\",\\\"salt_index\\\":\\\"\\\"}\"','payment_config','test',0,'2024-12-21 06:51:28','2024-12-21 06:51:28',NULL),('b6c333f6-d8e9-11ed-8249-0c7a158e4469','akandit_sms','{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('b6c33c87-d8e9-11ed-8249-0c7a158e4469','global_sms','{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('b8992bd4-d6a0-11ed-962c-0c7a158e4469','paymob_accept','{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\",\"supported_country\":\"\",\"public_key\":\"\",\"secret_key\":\"\"}','{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\",\"supported_country\":\"\",\"public_key\":\"\",\"secret_key\":\"\"}','payment_config','test',0,NULL,'2026-03-10 06:57:32','{\"gateway_title\":\"Paymob accept\",\"gateway_image\":null}'),('c41c0dcd-d119-11ed-9f67-0c7a158e4469','maxicash','{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}','{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:49:15','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('c9249d17-cd60-11ed-b879-0c7a158e4469','pvit','{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}','{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}','payment_config','test',0,NULL,NULL,NULL),('cb0081ce-d775-11ed-96f4-0c7a158e4469','releans','{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,'2023-04-10 02:14:44',NULL),('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469','flutterwave','{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}','{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}','payment_config','test',0,NULL,'2023-08-30 04:41:03','{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),('d822f1a5-c864-11ed-ac7a-0c7a158e4469','paystack','{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}','{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}','payment_config','test',0,NULL,'2023-08-30 04:20:45','{\"gateway_title\":\"Paystack\",\"gateway_image\":null}'),('daec8d59-c893-11ed-ac7a-0c7a158e4469','xendit','{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}','{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:35:46','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469','worldpay','{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}','{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:35:26','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('e0450278-d8eb-11ed-8249-0c7a158e4469','signal_wire','{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('e0450b40-d8eb-11ed-8249-0c7a158e4469','paradox','{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}','{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}','sms_config','live',0,NULL,'2023-09-10 01:14:01',NULL),('ea346efe-cdda-11ed-affe-0c7a158e4469','ssl_commerz','{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"\"}','{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"\"}','payment_config','test',0,NULL,'2023-08-30 03:43:49','{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":null}'),('eed88336-d8ec-11ed-8249-0c7a158e4469','hubtel','{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('f149c546-d8ea-11ed-8249-0c7a158e4469','viatech','{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('f149cd9c-d8ea-11ed-8249-0c7a158e4469','019_sms','{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `addon_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_access` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Master Admin',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_wallet_histories`
--

DROP TABLE IF EXISTS `admin_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_wallet_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `payment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_wallet_histories`
--

LOCK TABLES `admin_wallet_histories` WRITE;
/*!40000 ALTER TABLE `admin_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_wallets`
--

DROP TABLE IF EXISTS `admin_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `inhouse_earning` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `withdrawn` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_earned` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `delivery_charge_earned` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `pending_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `total_tax_collected` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_wallets`
--

LOCK TABLES `admin_wallets` WRITE;
/*!40000 ALTER TABLE `admin_wallets` DISABLE KEYS */;
INSERT INTO `admin_wallets` VALUES (1,1,0.000000000000,0.000000000000,NULL,NULL,0.000000000000,0.000000000000,0.000000000000,0.000000000000),(2,1,0.000000000000,0.000000000000,'2026-04-14 16:15:39','2026-04-14 16:15:39',0.000000000000,0.000000000000,0.000000000000,0.000000000000);
/*!40000 ALTER TABLE `admin_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_role_id` bigint NOT NULL DEFAULT '2',
  `image` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `identify_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `identify_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identify_number` int DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Super Admin','+5204423519673',1,'def.png',NULL,NULL,NULL,'admin@gmail.com',NULL,'$2y$10$mtSLSgCzUQWO5YoDVYJWkOpKzks3nOoB1/DDxWoMD5VldCuPBMKv.','4KQ8jf2pKvjrSfKQ4gjltNwV5CYrEbTpGB5glgAJ0u78L6okrrIuVTzRzftx','2026-04-14 16:15:39','2026-04-14 16:15:39',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_setting_logs`
--

DROP TABLE IF EXISTS `ai_setting_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_setting_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned NOT NULL,
  `total_generated_count` int NOT NULL DEFAULT '0',
  `total_image_generated_count` int NOT NULL DEFAULT '0',
  `limit_at_time` int DEFAULT NULL,
  `section_usage` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ai_setting_logs_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_setting_logs`
--

LOCK TABLES `ai_setting_logs` WRITE;
/*!40000 ALTER TABLE `ai_setting_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_setting_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_settings`
--

DROP TABLE IF EXISTS `ai_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ai_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_limit` int NOT NULL DEFAULT '0',
  `image_upload_limit` int NOT NULL DEFAULT '0',
  `settings` json DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_settings`
--

LOCK TABLES `ai_settings` WRITE;
/*!40000 ALTER TABLE `ai_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytic_scripts`
--

DROP TABLE IF EXISTS `analytic_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytic_scripts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `script` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytic_scripts`
--

LOCK TABLES `analytic_scripts` WRITE;
/*!40000 ALTER TABLE `analytic_scripts` DISABLE KEYS */;
INSERT INTO `analytic_scripts` VALUES (1,'Meta Pixel','meta_pixel',NULL,NULL,0,'2025-02-13 08:41:39','2025-02-13 08:41:39'),(2,'LinkedIn Insight','linkedin_insight',NULL,NULL,0,'2025-02-13 08:41:39','2025-02-13 08:41:39'),(3,'TikTok Tag','tiktok_tag',NULL,NULL,0,'2025-02-13 08:41:39','2025-02-13 08:41:39'),(4,'Snapchat Tag','snapchat_tag',NULL,NULL,0,'2025-02-13 08:41:39','2025-02-13 08:41:39'),(5,'Twitter Tag','twitter_tag',NULL,NULL,0,'2025-02-13 08:41:39','2025-02-13 08:41:39'),(6,'Pinterest Tag','pinterest_tag',NULL,NULL,0,'2025-02-13 08:41:39','2025-02-13 08:41:39'),(7,'Google Tag Manager','google_tag_manager',NULL,NULL,0,'2025-02-13 08:41:39','2025-02-13 08:41:39'),(8,'Google Analytics','google_analytics',NULL,NULL,0,'2025-02-13 08:41:39','2025-02-13 08:41:39');
/*!40000 ALTER TABLE `analytic_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attachable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachable_id` bigint unsigned NOT NULL,
  `file_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `attachments_attachable_type_attachable_id_index` (`attachable_type`,`attachable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `published` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` bigint DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_addresses`
--

DROP TABLE IF EXISTS `billing_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `contact_person_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_addresses`
--

LOCK TABLES `billing_addresses` WRITE;
/*!40000 ALTER TABLE `billing_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `click_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_categories_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_seos`
--

DROP TABLE IF EXISTS `blog_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_seos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_seos`
--

LOCK TABLES `blog_seos` WRITE;
/*!40000 ALTER TABLE `blog_seos` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_translations`
--

DROP TABLE IF EXISTS `blog_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `translation_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_id` bigint unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_draft` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `blog_translations_translation_id_index` (`translation_id`),
  KEY `blog_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_translations`
--

LOCK TABLES `blog_translations` WRITE;
/*!40000 ALTER TABLE `blog_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `readable_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_storage_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `draft_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `draft_image_storage_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `publish_date` datetime NOT NULL DEFAULT '2025-02-13 14:40:55',
  `is_published` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_draft` tinyint NOT NULL DEFAULT '0',
  `draft_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `click_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `image_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `image_alt_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Pokémon','pokemon','2026-04-24-69ea7ac5abd1e.webp','public',NULL,1,'2026-04-24 01:02:13','2026-04-25 04:10:09'),(2,'Yu-Gi-Oh!','yu-gi-oh','2026-04-24-69ea7b20b0ea1.webp','public',NULL,0,'2026-04-24 01:03:44','2026-04-24 01:03:44'),(3,'Magic: The Gathering','magic-the-gathering','2026-04-24-69ea7b2d85b56.webp','public',NULL,0,'2026-04-24 01:03:57','2026-04-24 01:03:57'),(4,'NBA','nba','2026-04-24-69ea7b39bf279.webp','public',NULL,0,'2026-04-24 01:04:09','2026-04-24 01:04:09'),(5,'NFL','nfl','2026-04-24-69ea7b452b765.webp','public',NULL,0,'2026-04-24 01:04:21','2026-04-24 01:04:21'),(6,'MLB','mlb','2026-04-24-69ea7b4fb25ef.webp','public',NULL,0,'2026-04-24 01:04:31','2026-04-24 01:04:31'),(7,'FIFA','fifa','2026-04-24-69ea7b6449983.webp','public',NULL,0,'2026-04-24 01:04:52','2026-04-24 01:04:52'),(8,'Digimon','digimon','2026-04-24-69ea7b6f2986e.webp','public',NULL,0,'2026-04-24 01:05:03','2026-04-24 01:05:03'),(9,'One Piece','one-piece','2026-04-24-69ea7b7e9291b.webp','public',NULL,0,'2026-04-24 01:05:18','2026-04-24 01:05:18'),(10,'Dragon Ball','dragon-ball','2026-04-24-69ea7b84ee6db.webp','public',NULL,0,'2026-04-24 01:05:24','2026-04-24 01:05:24'),(11,'Funko Pop','funko-pop','2026-04-24-69ea7bbeee4e5.webp','public',NULL,0,'2026-04-24 01:06:22','2026-04-24 01:06:22'),(12,'Marvel','marvel','2026-04-24-69ea7bd1e6a28.webp','public',NULL,0,'2026-04-24 01:06:41','2026-04-24 01:06:41'),(13,'DC','dc','2026-04-24-69ea7bd9a5077.webp','public',NULL,0,'2026-04-24 01:06:49','2026-04-24 01:06:49'),(14,'Hot Toys','hot-toys','2026-04-24-69ea7beccb19c.webp','public',NULL,0,'2026-04-24 01:07:08','2026-04-24 01:07:08'),(15,'LEGO','lego','2026-04-24-69ea7bfa0173e.webp','public',NULL,0,'2026-04-24 01:07:22','2026-04-24 01:07:22'),(16,'NES','nes','2026-04-24-69ea7c0c12423.webp','public',NULL,0,'2026-04-24 01:07:40','2026-04-24 01:07:40'),(17,'SNES','snes','2026-04-24-69ea7c13d085b.webp','public',NULL,0,'2026-04-24 01:07:47','2026-04-24 01:07:47'),(18,'Panini','panini','2026-04-24-69ea7c3729afd.webp','public',NULL,0,'2026-04-24 01:08:23','2026-04-24 01:08:23'),(19,'Topps','topps','2026-04-24-69ea7c7d9dc1d.webp','public',NULL,0,'2026-04-24 01:09:33','2026-04-24 01:09:33'),(20,'Upper Deck','upper-deck','2026-04-24-69ea7c8821549.webp','public',NULL,0,'2026-04-24 01:09:44','2026-04-24 01:09:44'),(21,'Bandai','bandai','2026-04-24-69ea7c9cd6417.webp','public',NULL,0,'2026-04-24 01:10:04','2026-04-24 01:10:04'),(22,'Banpresto','banpresto','2026-04-24-69ea7ca84ccb1.webp','public',NULL,0,'2026-04-24 01:10:16','2026-04-24 01:10:16'),(23,'Good Smile Company','good-smile-company','2026-04-24-69ea7cb801a46.webp','public',NULL,0,'2026-04-24 01:10:32','2026-04-24 01:10:32'),(24,'McFarlane Toys','mcfarlane-toys','2026-04-24-69ea7cc0d089e.webp','public',NULL,0,'2026-04-24 01:10:40','2026-04-24 01:10:40'),(25,'Hasbro','hasbro','2026-04-24-69ea7ccdbef3b.webp','public',NULL,0,'2026-04-24 01:10:53','2026-04-24 01:10:53'),(26,'Mattel','mattel','2026-04-24-69ea7cdc8a9d3.webp','public',NULL,1,'2026-04-24 01:11:08','2026-04-24 07:29:32'),(27,'NECA','neca','2026-04-24-69ead55e355c0.webp','public',NULL,1,'2026-04-24 07:28:46','2026-04-24 07:29:24'),(28,'Mezco','mezco','2026-04-24-69ead5707d136.webp','public',NULL,0,'2026-04-24 07:29:04','2026-04-24 07:29:04'),(29,'Bandai Namco','bandai-namco','2026-04-24-69ead59b20d73.webp','public',NULL,0,'2026-04-24 07:29:47','2026-04-24 07:29:47'),(30,'Toei Animation','toei-animation','2026-04-24-69ead63bd5267.webp','public',NULL,0,'2026-04-24 07:32:27','2026-04-24 07:32:27');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_pages`
--

DROP TABLE IF EXISTS `business_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_pages`
--

LOCK TABLES `business_pages` WRITE;
/*!40000 ALTER TABLE `business_pages` DISABLE KEYS */;
INSERT INTO `business_pages` VALUES (1,'About Us','about-us','<p>this is about us page. hello and hi from about page description..</p>',1,1,'2025-05-11 07:50:11','2025-05-11 07:50:11'),(2,'Terms And Conditions','terms-and-conditions','<p>terms and conditions</p>',1,1,'2025-05-11 07:50:11','2025-05-11 07:50:11'),(3,'Privacy Policy','privacy-policy','<p>my privacy policy</p>\r\n\r\n<p>&nbsp;</p>',1,1,'2025-05-11 07:50:11','2025-05-11 07:50:11'),(4,'Refund Policy','refund-policy','',1,1,'2025-05-11 07:50:11','2025-05-11 07:50:11'),(5,'Return Policy','return-policy','',1,1,'2025-05-11 07:50:11','2025-05-11 07:50:11'),(6,'Cancellation Policy','cancellation-policy','',1,1,'2025-05-11 07:50:11','2025-05-11 07:50:11'),(7,'Shipping Policy','shipping-policy','',0,1,'2025-05-11 07:50:11','2025-05-11 07:50:11');
/*!40000 ALTER TABLE `business_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_settings`
--

DROP TABLE IF EXISTS `business_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_settings`
--

LOCK TABLES `business_settings` WRITE;
/*!40000 ALTER TABLE `business_settings` DISABLE KEYS */;
INSERT INTO `business_settings` VALUES (1,'system_default_currency','1','2020-10-11 07:43:44','2026-04-18 12:37:05'),(2,'language','[{\"id\":\"1\",\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":false},{\"id\":2,\"name\":\"Espa\\u00f1ol\",\"direction\":\"ltr\",\"code\":\"mx\",\"status\":1,\"default\":true}]','2020-10-11 07:53:02','2026-04-18 08:01:38'),(3,'mail_config','{\"status\":0,\"name\":\"demo\",\"host\":\"mail.demo.com\",\"driver\":\"SMTP\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"TLS\",\"password\":\"demo\"}','2020-10-12 10:29:18','2021-07-06 12:32:01'),(4,'cash_on_delivery','{\"status\":\"1\"}',NULL,'2021-05-25 21:21:15'),(6,'ssl_commerz_payment','{\"status\":\"0\",\"environment\":\"sandbox\",\"store_id\":\"\",\"store_password\":\"\"}','2020-11-09 08:36:51','2023-01-10 05:51:56'),(10,'company_phone','+5204423519673','2026-04-14 16:15:40','2026-04-18 12:37:05'),(11,'company_name','Rareverse',NULL,'2026-04-18 12:37:05'),(12,'company_web_logo','{\"image_name\":\"2026-04-15-69df4158383f5.webp\",\"storage\":\"public\"}',NULL,'2026-04-15 12:42:16'),(13,'company_mobile_logo','{\"image_name\":\"2026-04-15-69df41589b336.webp\",\"storage\":\"public\"}',NULL,'2026-04-15 12:42:16'),(16,'sms_nexmo','{\"status\":\"0\",\"nexmo_key\":\"custo5cc042f7abf4c\",\"nexmo_secret\":\"custo5cc042f7abf4c@ssl\"}',NULL,NULL),(17,'company_email','Copy@Rareverse.app',NULL,'2026-04-18 12:37:05'),(18,'colors','{\"primary\":\"#003780\",\"secondary\":\"#000000\",\"panel-sidebar\":\"#003580\",\"primary_light\":null,\"app-primary\":null,\"app-secondary\":null}','2020-10-11 13:53:02','2026-04-15 12:59:03'),(19,'company_footer_logo','{\"image_name\":\"2026-04-15-69df4547cbad4.webp\",\"storage\":\"public\"}',NULL,'2026-04-15 12:59:03'),(20,'company_copyright_text','Rareverse@2026',NULL,'2026-04-18 12:37:05'),(21,'download_app_apple_store','{\"status\":0,\"link\":null}',NULL,'2026-04-18 12:37:05'),(22,'download_app_google_store','{\"status\":0,\"link\":null}',NULL,'2026-04-18 12:37:05'),(23,'company_fav_icon','{\"image_name\":\"2026-04-15-69df41587c1cd.png\",\"storage\":\"public\"}','2020-10-11 13:53:02','2026-04-15 12:42:16'),(24,'fcm_topic','',NULL,NULL),(25,'fcm_project_id','',NULL,'2026-04-14 23:39:06'),(26,'push_notification_key','{\r\n  \"type\": \"service_account\",\r\n  \"project_id\": \"rareverseapp\",\r\n  \"private_key_id\": \"3ff0e4a722bda5f773de70123b3807dcbe0025af\",\r\n  \"private_key\": \"-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQD5AnScQx7pLZuI\\n5vEqM+vqSHbUuXe5QAUVrdMNqs5xPLTZgqLRcZtcgXmM3mFfyqncKfNqcjzFMlk9\\nLYHl8k5KQ7X4q/Akx2OJs/cAIcf1qrVUBPgWehv/e1zjohYARjAyiubq8Ckg9PqA\\nTq6FyZ2dUHwzIKy2YFPvAqnuBf78BWtRi100fOmdLFYqdp8OrSf1xU3JIur+a590\\nvWjhirFmXcUoLqJ8de+tGXeIiwm4pQcoMzvyPQ/b1zJj3Qgud2bXmn/LF3auciUw\\nfqiRKxTi+thGV3Yz2MX1JoqjSDLSqD4B2fSZuFdVhPmwa4KPRr3uaxGPsLon5RYv\\noaZ9ele9AgMBAAECggEAAvsKIJKaVKV8P+6upH8nVL50QXZwUZMZ9yV+ig0z8QTH\\nQb2aYPBfqfUABUcCum7WkfMBKH0c9n80XzLnR4K3lM1EvjcwcI4KjWTVcQh9mEhL\\n2r6jQpa6bgL7its56gal8agMCvQOJfo0Rty8BgHkZVfO/FZ2+6yokBlDl4PSW+ZJ\\nN7ev0n4JDhL7J7JuTALXQRCcm1Bsl4wf7VyW78MzY5AZ/h32G8Cwrriry19ql4N0\\nuFr8j4VmeUai4WSzfRQQhHYl9Lb6+cNsfBIpzuztQwPmzQBMR2HFNDr8NLt0jh5Z\\nSx+nr80dHvWm2Qs0FT22QResZ0yOQe+iCdAo1wzcCQKBgQD+0PqRlqqs9lAcHU3w\\nS9Ca18Zl59ZOlfDyNLCTbB/tH95RfZxAnvNunbKGfyQo2zIlAPNfHKOn2gK6y6C9\\nF0cS95+O5/RNcCfsKLzfaOkbFcRAC0D+F2KlPnX+DFCo5XmG5xu3M34sOaXMsnbI\\nxmJ+19zYbluy7no8tTTrn1416QKBgQD6KpJOJ7UkOPuSGCv+SayTPVAroKzPeHZa\\nIU5IyNBlxSCt0YLfDaV2Dp//4TP7WSHEfcTxlM6339Gttgzi8bKKOBvfjf53zRyu\\ngyUA53nofRJ3xjES4T4yaG9EUT3zhp422JYuRnvcBX4LohEvJ/w00WoZ4jV5IryT\\nzixyURYqtQKBgQDOzET+ULt1IXVES9gL00uZztH5tBwtrOxddLt0+UQzyjBADGP5\\n4cYIGL1g/+AVtEbO1yWsI+8BcyHR/R4XN8P7tbDtZnvTONl9hFY8LcU4sQKTQ07c\\np5fsKXPS2KXBXHKzM+4/UO/t7l8LcC6MpMwcyw01LOMIpRfZGuq26qCnuQKBgH8r\\nUvJd5wxB10i99ucuRocWvQFgjVhuMSPCGIyRYLbLTcBuZ6vBwSHRb25g6c7U0YCU\\nOqBf9/Gq2mkGyWg4W3095pVvFjOKVhE0Y4QhJ2yS3+d5HYsuazKuuhktf2OjRBw3\\nX6iodeAz/o4lVbz2A5RJ/DiqMGqiyOAOB7QZGj6dAoGAB1vEao9d7frPxcEe0xF/\\nb39Tx08VBjvR/wif5tCg7q17jeMA532bu4pXX7EiGtsI8/IJF7wBjQ6qfSFEZpbM\\nICitoLTUaArHaUhgrpIt4HTHoaHrPEN1i7PsJ/Ev2o4+fKmugAk5JuwLWct3zCyt\\n/CJAo1rRVZ3R5C82WLtBylU=\\n-----END PRIVATE KEY-----\\n\",\r\n  \"client_email\": \"firebase-adminsdk-fbsvc@rareverseapp.iam.gserviceaccount.com\",\r\n  \"client_id\": \"105370156550192730574\",\r\n  \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",\r\n  \"token_uri\": \"https://oauth2.googleapis.com/token\",\r\n  \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",\r\n  \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40rareverseapp.iam.gserviceaccount.com\",\r\n  \"universe_domain\": \"googleapis.com\"\r\n}',NULL,'2026-04-14 23:39:06'),(27,'order_pending_message','{\"status\":\"1\",\"message\":\"order pen message\"}',NULL,NULL),(28,'order_confirmation_msg','{\"status\":\"1\",\"message\":\"Order con Message\"}',NULL,NULL),(29,'order_processing_message','{\"status\":\"1\",\"message\":\"Order pro Message\"}',NULL,NULL),(30,'out_for_delivery_message','{\"status\":\"1\",\"message\":\"Order ouut Message\"}',NULL,NULL),(31,'order_delivered_message','{\"status\":\"1\",\"message\":\"Order del Message\"}',NULL,NULL),(33,'sales_commission','0',NULL,'2026-04-18 12:37:05'),(34,'seller_registration','1',NULL,'2026-04-17 09:42:24'),(35,'pnc_language','[\"en\",\"mx\"]',NULL,'2026-04-18 07:54:31'),(36,'order_returned_message','{\"status\":\"1\",\"message\":\"Order hh Message\"}',NULL,NULL),(37,'order_failed_message','{\"status\":null,\"message\":\"Order fa Message\"}',NULL,NULL),(40,'delivery_boy_assign_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(41,'delivery_boy_start_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(42,'delivery_boy_delivered_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(43,'terms_and_conditions','',NULL,NULL),(44,'minimum_order_value','1',NULL,NULL),(48,'currency_model','single_currency',NULL,NULL),(49,'social_login','[{\"login_medium\":\"google\",\"client_id\":\"619656543555-scm1qqd4565v5d5spkupsqag6scas6vk.apps.googleusercontent.com\",\"client_secret\":\"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\",\"status\":1},{\"login_medium\":\"facebook\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":1}]',NULL,'2026-04-15 13:56:17'),(50,'digital_payment','{\"status\":\"1\"}',NULL,NULL),(51,'phone_verification','0',NULL,NULL),(52,'email_verification','0',NULL,NULL),(53,'order_verification','0',NULL,NULL),(54,'country_code','MX',NULL,'2026-04-18 12:37:05'),(55,'pagination_limit','10',NULL,'2026-04-18 12:37:05'),(56,'shipping_method','sellerwise_shipping',NULL,'2026-04-17 09:43:37'),(59,'forgot_password_verification','email',NULL,NULL),(61,'stock_limit','10',NULL,NULL),(64,'announcement','{\"status\":null,\"color\":null,\"text_color\":null,\"announcement\":null}',NULL,NULL),(65,'fawry_pay','{\"status\":0,\"merchant_code\":\"\",\"security_key\":\"\"}',NULL,'2022-01-18 09:46:30'),(66,'recaptcha','{\"status\":0,\"site_key\":\"\",\"secret_key\":\"\"}',NULL,'2022-01-18 09:46:30'),(67,'seller_pos','1',NULL,'2026-04-17 09:42:24'),(70,'refund_day_limit','0',NULL,NULL),(71,'business_mode','multi',NULL,'2026-04-18 12:37:05'),(72,'mail_config_sendgrid','{\"status\":0,\"name\":\"\",\"host\":\"\",\"driver\":\"\",\"port\":\"\",\"username\":\"\",\"email_id\":\"\",\"encryption\":\"\",\"password\":\"\"}',NULL,NULL),(73,'decimal_point_settings','2',NULL,'2026-04-18 12:37:05'),(74,'shop_address','Tabasco 242, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX, México',NULL,'2026-04-18 12:37:05'),(75,'billing_input_by_customer','1',NULL,NULL),(76,'wallet_status','0',NULL,NULL),(77,'loyalty_point_status','0',NULL,NULL),(78,'wallet_add_refund','0',NULL,NULL),(79,'loyalty_point_exchange_rate','0',NULL,NULL),(80,'loyalty_point_item_purchase_point','0',NULL,NULL),(81,'loyalty_point_minimum_point','0',NULL,NULL),(82,'minimum_order_limit','1',NULL,NULL),(83,'product_brand','1',NULL,NULL),(84,'digital_product','1',NULL,NULL),(85,'delivery_boy_expected_delivery_date_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(86,'order_canceled','{\"status\":0,\"message\":\"\"}',NULL,NULL),(90,'offline_payment','{\"status\":0}',NULL,'2023-03-04 06:25:36'),(91,'temporary_close','{\"status\":0}',NULL,'2023-03-04 06:25:36'),(92,'vacation_add','{\"status\":0,\"vacation_start_date\":null,\"vacation_end_date\":null,\"vacation_note\":null}',NULL,'2023-03-04 06:25:36'),(93,'cookie_setting','{\"status\":0,\"cookie_text\":null}',NULL,'2026-04-18 12:37:05'),(94,'maximum_otp_hit','0',NULL,'2023-06-13 13:04:49'),(95,'otp_resend_time','0',NULL,'2023-06-13 13:04:49'),(96,'temporary_block_time','0',NULL,'2023-06-13 13:04:49'),(97,'maximum_login_hit','0',NULL,'2023-06-13 13:04:49'),(98,'temporary_login_block_time','0',NULL,'2023-06-13 13:04:49'),(104,'apple_login','[{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":1,\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\"}]',NULL,'2026-03-10 06:57:32'),(105,'ref_earning_status','0',NULL,'2023-10-13 05:34:53'),(106,'ref_earning_exchange_rate','0',NULL,'2023-10-13 05:34:53'),(107,'guest_checkout','0',NULL,'2023-10-13 11:34:53'),(108,'minimum_order_amount','0',NULL,'2023-10-13 11:34:53'),(109,'minimum_order_amount_by_seller','0',NULL,'2026-04-17 09:42:24'),(110,'minimum_order_amount_status','0',NULL,'2023-10-13 11:34:53'),(111,'admin_login_url','admin',NULL,'2023-10-13 11:34:53'),(112,'employee_login_url','employee',NULL,'2023-10-13 11:34:53'),(113,'free_delivery_status','0',NULL,'2023-10-13 11:34:53'),(114,'free_delivery_responsibility','admin',NULL,'2023-10-13 11:34:53'),(115,'free_delivery_over_amount','0',NULL,'2023-10-13 11:34:53'),(116,'free_delivery_over_amount_seller','0',NULL,'2023-10-13 11:34:53'),(117,'add_funds_to_wallet','0',NULL,'2023-10-13 11:34:53'),(118,'minimum_add_fund_amount','0',NULL,'2023-10-13 11:34:53'),(119,'maximum_add_fund_amount','0',NULL,'2023-10-13 11:34:53'),(120,'user_app_version_control','{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}',NULL,'2023-10-13 11:34:53'),(121,'seller_app_version_control','{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}',NULL,'2023-10-13 11:34:53'),(122,'delivery_man_app_version_control','{\"for_android\":{\"status\":1,\"version\":\"4.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"4.1\",\"link\":\"\"}}',NULL,'2023-10-13 11:34:53'),(123,'whatsapp','{\"status\":1,\"phone\":\"00000000000\"}',NULL,'2023-10-13 11:34:53'),(124,'currency_symbol_position','left',NULL,'2026-04-18 12:37:05'),(148,'company_reliability','[{\"item\":\"delivery_info\",\"title\":\"Fast Delivery all across the country\",\"image\":\"\",\"status\":1},{\"item\":\"safe_payment\",\"title\":\"Safe Payment\",\"image\":\"\",\"status\":1},{\"item\":\"return_policy\",\"title\":\"7 Days Return Policy\",\"image\":\"\",\"status\":1},{\"item\":\"authentic_product\",\"title\":\"100% Authentic Products\",\"image\":\"\",\"status\":1}]',NULL,NULL),(149,'react_setup','{\"status\":0,\"react_license_code\":\"\",\"react_domain\":\"\",\"react_platform\":\"\"}',NULL,'2024-01-09 04:05:15'),(150,'app_activation','{\"software_id\":\"\",\"is_active\":0}',NULL,'2024-01-09 04:05:15'),(151,'shop_banner','',NULL,'2023-10-13 11:34:53'),(152,'map_api_status','1',NULL,'2026-04-15 18:09:45'),(153,'vendor_registration_header','{\"title\":\"Vendor Registration\",\"sub_title\":\"Create your own store.Already have store?\",\"image\":\"\"}',NULL,NULL),(154,'vendor_registration_sell_with_us','{\"title\":\"Why Sell With Us\",\"sub_title\":\"Boost your sales! Join us for a seamless, profitable experience with vast buyer reach and top-notch support. Sell smarter today!\",\"image\":\"\"}',NULL,NULL),(155,'download_vendor_app','{\"title\":\"Download Free Vendor App\",\"sub_title\":\"Download our free seller app and start reaching millions of buyers on the go! Easy setup, manage listings, and boost sales anywhere.\",\"image\":null,\"download_google_app\":null,\"download_google_app_status\":0,\"download_apple_app\":null,\"download_apple_app_status\":0}',NULL,NULL),(156,'business_process_main_section','{\"title\":\"3 Easy Steps To Start Selling\",\"sub_title\":\"Start selling quickly! Register, upload your products with detailed info and images, and reach millions of buyers instantly.\",\"image\":\"\"}',NULL,NULL),(157,'business_process_step','[{\"title\":\"Get Registered\",\"description\":\"Sign up easily and create your seller account in just a few minutes. It fast and simple to get started.\",\"image\":\"\"},{\"title\":\"Upload Products\",\"description\":\"List your products with detailed descriptions and high-quality images to attract more buyers effortlessly.\",\"image\":\"\"},{\"title\":\"Start Selling\",\"description\":\"Go live and start reaching millions of potential buyers immediately. Watch your sales grow with our vast audience.\",\"image\":\"\"}]',NULL,NULL),(158,'brand_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(159,'category_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(160,'vendor_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(161,'flash_deal_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(162,'featured_product_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(163,'feature_deal_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(164,'new_arrival_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(165,'top_vendor_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(166,'category_wise_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(167,'top_rated_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(168,'best_selling_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(169,'searched_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(170,'vendor_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(171,'storage_connection_type','public','2024-09-24 07:52:17','2024-09-24 07:52:17'),(172,'google_search_console_code','','2024-09-24 07:52:17','2024-09-24 07:52:17'),(173,'bing_webmaster_code','','2024-09-24 07:52:17','2024-09-24 07:52:17'),(174,'baidu_webmaster_code','','2024-09-24 07:52:17','2024-09-24 07:52:17'),(175,'yandex_webmaster_code','','2024-09-24 07:52:17','2024-09-24 07:52:17'),(176,'firebase_otp_verification','{\"status\":\"1\",\"web_api_key\":\"619656543555-scm1qqd4565v5d5spkupsqag6scas6vk.apps.googleusercontent.com\"}','2024-09-24 07:52:17','2026-04-14 16:59:41'),(177,'maintenance_system_setup','{\"user_app\":0,\"user_website\":0,\"vendor_app\":0,\"deliveryman_app\":0,\"vendor_panel\":0}','2024-09-24 07:52:17','2024-09-24 07:52:17'),(178,'maintenance_duration_setup','{\"maintenance_duration\":\"until_change\",\"start_date\":null,\"end_date\":null}',NULL,NULL),(179,'maintenance_message_setup','{\"business_number\":1,\"business_email\":1,\"maintenance_message\":\"We are Working On Something Special\",\"message_body\":\"We apologize for any inconvenience. For immediate assistance, please contact with our support team\"}',NULL,NULL),(181,'vendor_forgot_password_method','phone','2024-10-27 08:14:24','2026-04-17 09:42:24'),(182,'deliveryman_forgot_password_method','phone','2024-10-27 08:14:24','2024-10-27 08:14:24'),(183,'stock_clearance_product_list_priority','{\"custom_sorting_status\":0,\"sort_by\":\"latest_created\",\"out_of_stock_product\":\"hide\",\"temporary_close_sorting\":\"desc\"}','2025-02-13 08:41:39','2025-02-13 08:41:39'),(184,'stock_clearance_vendor_priority','','2025-02-13 08:41:39','2025-02-13 08:41:39'),(185,'setup_guide_requirements_for_admin','{\"general_setup\":true,\"shipping_method\":true,\"language_setup\":true,\"currency_setup\":0,\"customer_login\":0,\"google_map_apis\":true,\"notification_configuration\":true,\"digital_payment_setup\":0,\"offline_payment_setup\":0,\"category_setup\":true,\"brand_setup\":true,\"inhouse_shop_setup\":0,\"add_new_product\":true}','2025-05-11 07:50:11','2026-04-24 01:02:14'),(190,'loyalty_point_for_each_order','0','2025-07-16 09:12:47','2025-07-16 09:12:47'),(215,'vendor_can_edit_order','1','2026-02-17 03:36:26','2026-04-17 09:42:24'),(220,'refund-policy','{\"status\":0,\"content\":\"\"}','2026-04-14 16:15:39','2026-04-14 16:15:39'),(221,'return-policy','{\"status\":0,\"content\":\"\"}','2026-04-14 16:15:39','2026-04-14 16:15:39'),(222,'cancellation-policy','{\"status\":0,\"content\":\"\"}','2026-04-14 16:15:39','2026-04-14 16:15:39'),(223,'fcm_credentials','{\"apiKey\":\"AIzaSyDGCzazBBuRQfmw5B7f6ZAIuLjeD5f_E1E\",\"authDomain\":\"rareverseapp.firebaseapp.com\",\"projectId\":\"rareverseapp\",\"storageBucket\":\"rareverseapp.firebasestorage.app\",\"messagingSenderId\":\"619656543555\",\"appId\":\"1:619656543555:web:6e9ae5a404f83dd87343f6\",\"measurementId\":\"G-KG2G6CWFL9\"}',NULL,'2026-04-14 23:39:06'),(224,'default_location','{\"lat\":\"19.4182056744061\",\"lng\":\"-99.16387917698364\"}',NULL,'2026-04-18 12:37:05'),(225,'timezone','Asia/Karachi',NULL,'2026-04-18 12:37:05'),(226,'company_web_logo_png','{\"image_name\":\"2026-04-15-69df415849f66.png\",\"storage\":\"public\"}',NULL,'2026-04-15 12:42:16'),(227,'loader_gif','{\"image_name\":\"2026-04-15-69df41587e639.gif\",\"storage\":\"public\"}',NULL,'2026-04-15 12:42:16'),(228,'map_api_key','AIzaSyB0qoO7glsZuTN2Sn2rYeHnEuTok00cSQU',NULL,'2026-04-15 18:09:45'),(229,'map_api_key_server','AIzaSyB0qoO7glsZuTN2Sn2rYeHnEuTok00cSQU',NULL,'2026-04-15 18:09:45'),(230,'addon_activation_delivery_man_app','{\"activation_status\":0,\"name\":\"nnmstdmx\",\"email\":\"nnmstdmx@gmail.com\",\"username\":\"nnmagency\",\"purchase_key\":\"3fadc772-3c25-44c4-9049-4fbcfcdff610\"}',NULL,'2026-04-17 09:33:25'),(231,'vendor_review_reply_status','1',NULL,'2026-04-17 09:42:24');
/*!40000 ALTER TABLE `business_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_shippings`
--

DROP TABLE IF EXISTS `cart_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cart_group_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint DEFAULT NULL,
  `shipping_cost` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_shippings`
--

LOCK TABLES `cart_shippings` WRITE;
/*!40000 ALTER TABLE `cart_shippings` DISABLE KEYS */;
INSERT INTO `cart_shippings` VALUES (1,'2-oMm4S-1776242967',2,5.000000000000,'2026-04-15 14:03:59','2026-04-15 14:03:59'),(13,'2-gcrCG-1776693827',9,20.000000000000,'2026-04-21 00:30:35','2026-04-21 00:30:35');
/*!40000 ALTER TABLE `cart_shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `cart_group_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `digital_product_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choices` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variant` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(18,12) NOT NULL DEFAULT '1.000000000000',
  `tax` decimal(18,12) DEFAULT '1.000000000000',
  `discount` decimal(18,12) NOT NULL DEFAULT '1.000000000000',
  `wholesale_applied` tinyint(1) NOT NULL DEFAULT '0',
  `tax_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'exclude',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_info` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` decimal(18,12) DEFAULT NULL,
  `shipping_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (12,3,'3-t4LxT-1776538181',1,'physical',NULL,'#BC8F8F','[]','{\"color\":\"RosyBrown\"}','RosyBrown',1,100.000000000000,0.000000000000,0.000000000000,0,'exclude',1,'vimly-women-blazer-suit-2U12iR','Vimly Women Blazer Suit','2026-04-15-69df4bf77b3eb.webp',1,'seller','2026-04-18 23:49:41','2026-04-27 07:51:00','Shop',0.000000000000,'order_wise',0),(13,2,'2-gcrCG-1776693827',1,'physical',NULL,'#BC8F8F','[]','{\"color\":\"RosyBrown\"}','RosyBrown',3,100.000000000000,0.000000000000,0.000000000000,0,'exclude',1,'vimly-women-blazer-suit-2U12iR','Vimly Women Blazer Suit','2026-04-15-69df4bf77b3eb.webp',1,'seller','2026-04-21 00:30:35','2026-04-21 00:56:28','Shop',0.000000000000,'order_wise',0),(14,297,'guest-zYUn0-1776713355',1,'physical',NULL,'#BC8F8F','[]','{\"color\":\"RosyBrown\"}','RosyBrown',3,100.000000000000,0.000000000000,0.000000000000,0,'exclude',1,'vimly-women-blazer-suit-2U12iR','Vimly Women Blazer Suit','2026-04-15-69df4bf77b3eb.webp',1,'seller','2026-04-21 00:29:15','2026-04-21 00:29:17','Shop',0.000000000000,'order_wise',1);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `parent_id` int NOT NULL,
  `position` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Trading Cards','trading-cards','2026-04-18-69e33237e64d4.webp','public',0,0,'2026-04-14 16:45:44','2026-04-18 12:26:47',1,1),(2,'Toys','toys','2026-04-18-69e332953b9a0.webp','public',0,0,'2026-04-14 16:46:16','2026-04-18 12:28:21',1,2),(3,'Coins & Banknotes','coins-banknotes','2026-04-18-69e332f102846.webp','public',0,0,'2026-04-14 16:46:47','2026-04-18 12:40:47',1,0),(4,'Clothing','clothing','def.png',NULL,3,1,'2026-04-15 13:29:14','2026-04-15 13:29:14',1,0),(5,'Videogames','videogames','2026-04-24-69ea796b694a3.webp','public',0,0,'2026-04-24 00:56:27','2026-04-24 00:56:27',1,0),(6,'Comics','comics','2026-04-24-69ea79c3b88ec.webp','public',0,0,'2026-04-24 00:57:55','2026-04-24 00:57:55',1,0),(7,'Music','music','2026-04-24-69ea79d85e02c.webp','public',0,0,'2026-04-24 00:58:16','2026-04-24 00:58:16',1,0),(8,'Movies','movies','2026-04-24-69ea79eded158.webp','public',0,0,'2026-04-24 00:58:37','2026-04-24 00:58:37',1,0),(9,'Luxory','luxory','2026-04-24-69ea7a14cef95.webp','public',0,0,'2026-04-24 00:59:16','2026-04-24 00:59:16',1,0),(10,'Art','art','2026-04-24-69ea7a34dfb23.webp','public',0,0,'2026-04-24 00:59:48','2026-04-24 00:59:48',1,0),(11,'Sports','sports','2026-04-24-69ea7a4fde75c.webp','public',0,0,'2026-04-24 01:00:15','2026-04-24 01:00:15',1,0),(12,'Others','others','2026-04-24-69ea7a7f3c7ec.webp','public',0,0,'2026-04-24 01:01:03','2026-04-24 01:01:03',1,0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_shipping_costs`
--

DROP TABLE IF EXISTS `category_shipping_costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_shipping_costs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  `cost` decimal(21,12) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_shipping_costs`
--

LOCK TABLES `category_shipping_costs` WRITE;
/*!40000 ALTER TABLE `category_shipping_costs` DISABLE KEYS */;
INSERT INTO `category_shipping_costs` VALUES (1,1,1,0.000000000000,NULL,'2026-04-15 19:04:48','2026-04-15 19:04:48'),(2,1,2,0.000000000000,NULL,'2026-04-15 19:04:48','2026-04-15 19:04:48'),(3,1,3,0.000000000000,NULL,'2026-04-15 19:04:48','2026-04-15 19:04:48'),(4,0,1,0.000000000000,NULL,'2026-04-17 09:43:04','2026-04-17 09:43:04'),(5,0,2,0.000000000000,NULL,'2026-04-17 09:43:04','2026-04-17 09:43:04'),(6,0,3,0.000000000000,NULL,'2026-04-17 09:43:04','2026-04-17 09:43:04'),(7,2,1,0.000000000000,NULL,'2026-04-19 05:11:36','2026-04-19 05:11:36'),(8,2,2,0.000000000000,NULL,'2026-04-19 05:11:36','2026-04-19 05:11:36'),(9,2,3,0.000000000000,NULL,'2026-04-19 05:11:36','2026-04-19 05:11:36'),(10,2,5,0.000000000000,NULL,'2026-04-24 07:35:30','2026-04-24 07:35:30'),(11,2,6,0.000000000000,NULL,'2026-04-24 07:35:30','2026-04-24 07:35:30'),(12,2,7,0.000000000000,NULL,'2026-04-24 07:35:30','2026-04-24 07:35:30'),(13,2,8,0.000000000000,NULL,'2026-04-24 07:35:30','2026-04-24 07:35:30'),(14,2,9,0.000000000000,NULL,'2026-04-24 07:35:30','2026-04-24 07:35:30'),(15,2,10,0.000000000000,NULL,'2026-04-24 07:35:30','2026-04-24 07:35:30'),(16,2,11,0.000000000000,NULL,'2026-04-24 07:35:30','2026-04-24 07:35:30'),(17,2,12,0.000000000000,NULL,'2026-04-24 07:35:30','2026-04-24 07:35:30');
/*!40000 ALTER TABLE `category_shipping_costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chattings`
--

DROP TABLE IF EXISTS `chattings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chattings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sent_by_customer` tinyint(1) NOT NULL DEFAULT '0',
  `sent_by_seller` tinyint(1) NOT NULL DEFAULT '0',
  `sent_by_admin` tinyint(1) DEFAULT NULL,
  `sent_by_delivery_man` tinyint(1) DEFAULT NULL,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT '1',
  `seen_by_seller` tinyint(1) NOT NULL DEFAULT '1',
  `seen_by_admin` tinyint(1) DEFAULT NULL,
  `seen_by_delivery_man` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `notification_receiver` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin, seller, customer, deliveryman',
  `seen_notification` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chattings`
--

LOCK TABLES `chattings` WRITE;
/*!40000 ALTER TABLE `chattings` DISABLE KEYS */;
INSERT INTO `chattings` VALUES (1,3,NULL,0,NULL,'eyo','[]',1,0,NULL,NULL,1,0,NULL,NULL,1,'admin',1,'2026-04-24 07:34:56','2026-04-24 07:35:01',NULL);
/*!40000 ALTER TABLE `chattings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'IndianRed','#CD5C5C','2018-11-05 02:12:26','2018-11-05 02:12:26'),(2,'LightCoral','#F08080','2018-11-05 02:12:26','2018-11-05 02:12:26'),(3,'Salmon','#FA8072','2018-11-05 02:12:26','2018-11-05 02:12:26'),(4,'DarkSalmon','#E9967A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(5,'LightSalmon','#FFA07A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(6,'Crimson','#DC143C','2018-11-05 02:12:26','2018-11-05 02:12:26'),(7,'Red','#FF0000','2018-11-05 02:12:26','2018-11-05 02:12:26'),(8,'FireBrick','#B22222','2018-11-05 02:12:26','2018-11-05 02:12:26'),(9,'DarkRed','#8B0000','2018-11-05 02:12:26','2018-11-05 02:12:26'),(10,'Pink','#FFC0CB','2018-11-05 02:12:26','2018-11-05 02:12:26'),(11,'LightPink','#FFB6C1','2018-11-05 02:12:26','2018-11-05 02:12:26'),(12,'HotPink','#FF69B4','2018-11-05 02:12:26','2018-11-05 02:12:26'),(13,'DeepPink','#FF1493','2018-11-05 02:12:26','2018-11-05 02:12:26'),(14,'MediumVioletRed','#C71585','2018-11-05 02:12:26','2018-11-05 02:12:26'),(15,'PaleVioletRed','#DB7093','2018-11-05 02:12:26','2018-11-05 02:12:26'),(17,'Coral','#FF7F50','2018-11-05 02:12:26','2018-11-05 02:12:26'),(18,'Tomato','#FF6347','2018-11-05 02:12:26','2018-11-05 02:12:26'),(19,'OrangeRed','#FF4500','2018-11-05 02:12:26','2018-11-05 02:12:26'),(20,'DarkOrange','#FF8C00','2018-11-05 02:12:26','2018-11-05 02:12:26'),(21,'Orange','#FFA500','2018-11-05 02:12:26','2018-11-05 02:12:26'),(22,'Gold','#FFD700','2018-11-05 02:12:26','2018-11-05 02:12:26'),(23,'Yellow','#FFFF00','2018-11-05 02:12:26','2018-11-05 02:12:26'),(24,'LightYellow','#FFFFE0','2018-11-05 02:12:26','2018-11-05 02:12:26'),(25,'LemonChiffon','#FFFACD','2018-11-05 02:12:26','2018-11-05 02:12:26'),(26,'LightGoldenrodYellow','#FAFAD2','2018-11-05 02:12:27','2018-11-05 02:12:27'),(27,'PapayaWhip','#FFEFD5','2018-11-05 02:12:27','2018-11-05 02:12:27'),(28,'Moccasin','#FFE4B5','2018-11-05 02:12:27','2018-11-05 02:12:27'),(29,'PeachPuff','#FFDAB9','2018-11-05 02:12:27','2018-11-05 02:12:27'),(30,'PaleGoldenrod','#EEE8AA','2018-11-05 02:12:27','2018-11-05 02:12:27'),(31,'Khaki','#F0E68C','2018-11-05 02:12:27','2018-11-05 02:12:27'),(32,'DarkKhaki','#BDB76B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(33,'Lavender','#E6E6FA','2018-11-05 02:12:27','2018-11-05 02:12:27'),(34,'Thistle','#D8BFD8','2018-11-05 02:12:27','2018-11-05 02:12:27'),(35,'Plum','#DDA0DD','2018-11-05 02:12:27','2018-11-05 02:12:27'),(36,'Violet','#EE82EE','2018-11-05 02:12:27','2018-11-05 02:12:27'),(37,'Orchid','#DA70D6','2018-11-05 02:12:27','2018-11-05 02:12:27'),(39,'Magenta','#FF00FF','2018-11-05 02:12:27','2018-11-05 02:12:27'),(40,'MediumOrchid','#BA55D3','2018-11-05 02:12:27','2018-11-05 02:12:27'),(41,'MediumPurple','#9370DB','2018-11-05 02:12:27','2018-11-05 02:12:27'),(42,'Amethyst','#9966CC','2018-11-05 02:12:27','2018-11-05 02:12:27'),(43,'BlueViolet','#8A2BE2','2018-11-05 02:12:27','2018-11-05 02:12:27'),(44,'DarkViolet','#9400D3','2018-11-05 02:12:27','2018-11-05 02:12:27'),(45,'DarkOrchid','#9932CC','2018-11-05 02:12:27','2018-11-05 02:12:27'),(46,'DarkMagenta','#8B008B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(47,'Purple','#800080','2018-11-05 02:12:27','2018-11-05 02:12:27'),(48,'Indigo','#4B0082','2018-11-05 02:12:27','2018-11-05 02:12:27'),(49,'SlateBlue','#6A5ACD','2018-11-05 02:12:27','2018-11-05 02:12:27'),(50,'DarkSlateBlue','#483D8B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(51,'MediumSlateBlue','#7B68EE','2018-11-05 02:12:27','2018-11-05 02:12:27'),(52,'GreenYellow','#ADFF2F','2018-11-05 02:12:27','2018-11-05 02:12:27'),(53,'Chartreuse','#7FFF00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(54,'LawnGreen','#7CFC00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(55,'Lime','#00FF00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(56,'LimeGreen','#32CD32','2018-11-05 02:12:27','2018-11-05 02:12:27'),(57,'PaleGreen','#98FB98','2018-11-05 02:12:27','2018-11-05 02:12:27'),(58,'LightGreen','#90EE90','2018-11-05 02:12:27','2018-11-05 02:12:27'),(59,'MediumSpringGreen','#00FA9A','2018-11-05 02:12:27','2018-11-05 02:12:27'),(60,'SpringGreen','#00FF7F','2018-11-05 02:12:27','2018-11-05 02:12:27'),(61,'MediumSeaGreen','#3CB371','2018-11-05 02:12:27','2018-11-05 02:12:27'),(62,'SeaGreen','#2E8B57','2018-11-05 02:12:27','2018-11-05 02:12:27'),(63,'ForestGreen','#228B22','2018-11-05 02:12:28','2018-11-05 02:12:28'),(64,'Green','#008000','2018-11-05 02:12:28','2018-11-05 02:12:28'),(65,'DarkGreen','#006400','2018-11-05 02:12:28','2018-11-05 02:12:28'),(66,'YellowGreen','#9ACD32','2018-11-05 02:12:28','2018-11-05 02:12:28'),(67,'OliveDrab','#6B8E23','2018-11-05 02:12:28','2018-11-05 02:12:28'),(68,'Olive','#808000','2018-11-05 02:12:28','2018-11-05 02:12:28'),(69,'DarkOliveGreen','#556B2F','2018-11-05 02:12:28','2018-11-05 02:12:28'),(70,'MediumAquamarine','#66CDAA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(71,'DarkSeaGreen','#8FBC8F','2018-11-05 02:12:28','2018-11-05 02:12:28'),(72,'LightSeaGreen','#20B2AA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(73,'DarkCyan','#008B8B','2018-11-05 02:12:28','2018-11-05 02:12:28'),(74,'Teal','#008080','2018-11-05 02:12:28','2018-11-05 02:12:28'),(75,'Aqua','#00FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(77,'LightCyan','#E0FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(78,'PaleTurquoise','#AFEEEE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(79,'Aquamarine','#7FFFD4','2018-11-05 02:12:28','2018-11-05 02:12:28'),(80,'Turquoise','#40E0D0','2018-11-05 02:12:28','2018-11-05 02:12:28'),(81,'MediumTurquoise','#48D1CC','2018-11-05 02:12:28','2018-11-05 02:12:28'),(82,'DarkTurquoise','#00CED1','2018-11-05 02:12:28','2018-11-05 02:12:28'),(83,'CadetBlue','#5F9EA0','2018-11-05 02:12:28','2018-11-05 02:12:28'),(84,'SteelBlue','#4682B4','2018-11-05 02:12:28','2018-11-05 02:12:28'),(85,'LightSteelBlue','#B0C4DE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(86,'PowderBlue','#B0E0E6','2018-11-05 02:12:28','2018-11-05 02:12:28'),(87,'LightBlue','#ADD8E6','2018-11-05 02:12:28','2018-11-05 02:12:28'),(88,'SkyBlue','#87CEEB','2018-11-05 02:12:28','2018-11-05 02:12:28'),(89,'LightSkyBlue','#87CEFA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(90,'DeepSkyBlue','#00BFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(91,'DodgerBlue','#1E90FF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(92,'CornflowerBlue','#6495ED','2018-11-05 02:12:28','2018-11-05 02:12:28'),(94,'RoyalBlue','#4169E1','2018-11-05 02:12:28','2018-11-05 02:12:28'),(95,'Blue','#0000FF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(96,'MediumBlue','#0000CD','2018-11-05 02:12:28','2018-11-05 02:12:28'),(97,'DarkBlue','#00008B','2018-11-05 02:12:28','2018-11-05 02:12:28'),(98,'Navy','#000080','2018-11-05 02:12:28','2018-11-05 02:12:28'),(99,'MidnightBlue','#191970','2018-11-05 02:12:29','2018-11-05 02:12:29'),(100,'Cornsilk','#FFF8DC','2018-11-05 02:12:29','2018-11-05 02:12:29'),(101,'BlanchedAlmond','#FFEBCD','2018-11-05 02:12:29','2018-11-05 02:12:29'),(102,'Bisque','#FFE4C4','2018-11-05 02:12:29','2018-11-05 02:12:29'),(103,'NavajoWhite','#FFDEAD','2018-11-05 02:12:29','2018-11-05 02:12:29'),(104,'Wheat','#F5DEB3','2018-11-05 02:12:29','2018-11-05 02:12:29'),(105,'BurlyWood','#DEB887','2018-11-05 02:12:29','2018-11-05 02:12:29'),(106,'Tan','#D2B48C','2018-11-05 02:12:29','2018-11-05 02:12:29'),(107,'RosyBrown','#BC8F8F','2018-11-05 02:12:29','2018-11-05 02:12:29'),(108,'SandyBrown','#F4A460','2018-11-05 02:12:29','2018-11-05 02:12:29'),(109,'Goldenrod','#DAA520','2018-11-05 02:12:29','2018-11-05 02:12:29'),(110,'DarkGoldenrod','#B8860B','2018-11-05 02:12:29','2018-11-05 02:12:29'),(111,'Peru','#CD853F','2018-11-05 02:12:29','2018-11-05 02:12:29'),(112,'Chocolate','#D2691E','2018-11-05 02:12:29','2018-11-05 02:12:29'),(113,'SaddleBrown','#8B4513','2018-11-05 02:12:29','2018-11-05 02:12:29'),(114,'Sienna','#A0522D','2018-11-05 02:12:29','2018-11-05 02:12:29'),(115,'Brown','#A52A2A','2018-11-05 02:12:29','2018-11-05 02:12:29'),(116,'Maroon','#800000','2018-11-05 02:12:29','2018-11-05 02:12:29'),(117,'White','#FFFFFF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(118,'Snow','#FFFAFA','2018-11-05 02:12:29','2018-11-05 02:12:29'),(119,'Honeydew','#F0FFF0','2018-11-05 02:12:29','2018-11-05 02:12:29'),(120,'MintCream','#F5FFFA','2018-11-05 02:12:29','2018-11-05 02:12:29'),(121,'Azure','#F0FFFF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(122,'AliceBlue','#F0F8FF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(123,'GhostWhite','#F8F8FF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(124,'WhiteSmoke','#F5F5F5','2018-11-05 02:12:29','2018-11-05 02:12:29'),(125,'Seashell','#FFF5EE','2018-11-05 02:12:29','2018-11-05 02:12:29'),(126,'Beige','#F5F5DC','2018-11-05 02:12:29','2018-11-05 02:12:29'),(127,'OldLace','#FDF5E6','2018-11-05 02:12:29','2018-11-05 02:12:29'),(128,'FloralWhite','#FFFAF0','2018-11-05 02:12:29','2018-11-05 02:12:29'),(129,'Ivory','#FFFFF0','2018-11-05 02:12:30','2018-11-05 02:12:30'),(130,'AntiqueWhite','#FAEBD7','2018-11-05 02:12:30','2018-11-05 02:12:30'),(131,'Linen','#FAF0E6','2018-11-05 02:12:30','2018-11-05 02:12:30'),(132,'LavenderBlush','#FFF0F5','2018-11-05 02:12:30','2018-11-05 02:12:30'),(133,'MistyRose','#FFE4E1','2018-11-05 02:12:30','2018-11-05 02:12:30'),(134,'Gainsboro','#DCDCDC','2018-11-05 02:12:30','2018-11-05 02:12:30'),(135,'LightGrey','#D3D3D3','2018-11-05 02:12:30','2018-11-05 02:12:30'),(136,'Silver','#C0C0C0','2018-11-05 02:12:30','2018-11-05 02:12:30'),(137,'DarkGray','#A9A9A9','2018-11-05 02:12:30','2018-11-05 02:12:30'),(138,'Gray','#808080','2018-11-05 02:12:30','2018-11-05 02:12:30'),(139,'DimGray','#696969','2018-11-05 02:12:30','2018-11-05 02:12:30'),(140,'LightSlateGray','#778899','2018-11-05 02:12:30','2018-11-05 02:12:30'),(141,'SlateGray','#708090','2018-11-05 02:12:30','2018-11-05 02:12:30'),(142,'DarkSlateGray','#2F4F4F','2018-11-05 02:12:30','2018-11-05 02:12:30'),(143,'Black','#000000','2018-11-05 02:12:30','2018-11-05 02:12:30');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `feedback` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Daviddep','no.reply.AlfieMaes@gmail.com','81671582278','Make sure your products and services are seen with the best advertising!','Hi! rareverse.app, \r\nI recently saw your website while browsing online. \r\nWe provide a platform for contacting website owners. \r\nIt allows companies to reach website owners worldwide. \r\nThe platform is built to provide value while keeping pricing reasonable. \r\nThe platform can be tested for free. \r\nFeel free to contact us if this looks relevant. \r\n \r\nWishing you a great day. \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693',0,'0','2026-04-23 04:21:25','2026-04-23 04:21:25',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `added_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `coupon_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_bearer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inhouse',
  `seller_id` bigint DEFAULT NULL COMMENT 'NULL=in-house, 0=all seller',
  `customer_id` bigint DEFAULT NULL COMMENT '0 = all customer',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `max_discount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `discount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `discount_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','$','USD','1',1,NULL,'2021-06-27 13:39:37'),(2,'BDT','৳','BDT','84',1,NULL,'2021-07-06 11:52:58'),(3,'Indian Rupi','₹','INR','60',1,'2020-10-15 17:23:04','2021-06-04 18:26:38'),(4,'Euro','€','EUR','100',1,'2021-05-25 21:00:23','2021-06-04 18:25:29'),(5,'YEN','¥','JPY','110',1,'2021-06-10 22:08:31','2021-06-26 14:21:10'),(6,'Ringgit','RM','MYR','4.16',1,'2021-07-03 11:08:33','2021-07-03 11:10:37'),(7,'Rand','R','ZAR','14.26',1,'2021-07-03 11:12:38','2021-07-03 11:12:42');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_wallet_histories`
--

DROP TABLE IF EXISTS `customer_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_wallet_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `transaction_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `transaction_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_method` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_wallet_histories`
--

LOCK TABLES `customer_wallet_histories` WRITE;
/*!40000 ALTER TABLE `customer_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_wallets`
--

DROP TABLE IF EXISTS `customer_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `balance` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `royality_points` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_wallets`
--

LOCK TABLES `customer_wallets` WRITE;
/*!40000 ALTER TABLE `customer_wallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_of_the_days`
--

DROP TABLE IF EXISTS `deal_of_the_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_of_the_days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `discount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `discount_type` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_of_the_days`
--

LOCK TABLES `deal_of_the_days` WRITE;
/*!40000 ALTER TABLE `deal_of_the_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_of_the_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_country_codes`
--

DROP TABLE IF EXISTS `delivery_country_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_country_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_country_codes`
--

LOCK TABLES `delivery_country_codes` WRITE;
/*!40000 ALTER TABLE `delivery_country_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_country_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_histories`
--

DROP TABLE IF EXISTS `delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `deliveryman_id` bigint DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_histories`
--

LOCK TABLES `delivery_histories` WRITE;
/*!40000 ALTER TABLE `delivery_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_man_transactions`
--

DROP TABLE IF EXISTS `delivery_man_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_man_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `credit` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `transaction_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_man_transactions`
--

LOCK TABLES `delivery_man_transactions` WRITE;
/*!40000 ALTER TABLE `delivery_man_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_man_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_men`
--

DROP TABLE IF EXISTS `delivery_men`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_men` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `f_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_online` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',
  `fcm_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_men`
--

LOCK TABLES `delivery_men` WRITE;
/*!40000 ALTER TABLE `delivery_men` DISABLE KEYS */;
INSERT INTO `delivery_men` VALUES (1,0,'Manzar','Nazar','Scheme 33, kiran hospital road, karachi','+92','3163266677','+923163266677','manzarnazar@gmail.com','123123131','passport','[{\"image_name\":\"2026-04-16-69dff8d3ea058.webp\",\"storage\":\"public\"}]','2026-04-16-69dff8d44f3e0.webp','$2y$10$ZidVZE3yQ.vUu5U8dV4W.OD2Msi.qslBIC8JQPw/tWpjXNMNxYiM2',NULL,NULL,NULL,NULL,1,1,'2026-04-16 01:45:08','2026-04-17 09:51:24','wVL2d0UaV8KMtAMbYDpCRl5heXNtecIL9tqeMdfah7fn3Sx4Tq','no','en'),(2,1,'Manzar','Nazar','Scheme 33, kiran hospital road, karachi','+92','3123123123','+923123123123','delivery@gmail.com','12312312312','passport','[{\"image_name\":\"2026-04-17-69e1bc3597712.webp\",\"storage\":\"public\"}]','2026-04-17-69e1bc35c14dd.webp','$2y$10$xfxCcFtTD6n5vx/R.j9rMuWiY9kmUG1niMGH5mX2kAglde/KG/eFG',NULL,NULL,NULL,NULL,1,1,'2026-04-17 09:51:01','2026-04-17 10:47:09','SlLpsAXcQC0p6Za8uxjLMvLswSSK6BplrMJLB7n34ZYlQ521pQ','cx3f9tNySl2uaUZX-jGffx:APA91bGl0VkaovQn3QXdfGX4OYfRbeoQZZjZSr9kQGATjote1evAgfV2IHvs4mtLR5uHS3K0PqdqyQCcouXTAGmLm-6T-ra-8etpELKA-emTotaZYdcP53c','en'),(3,0,'NNM','DEV',NULL,'+52','4625090577','+524625090577','nnmstdmx@gmail.com','123','passport','[{\"image_name\":\"2026-04-21-69e6ad37684b8.webp\",\"storage\":\"public\"}]','2026-04-21-69e6ad37a352c.webp','$2y$10$XaprdHrECNIIR3Np.2dkY.ZWCPYbV0Wk5zUHRkFOQ6FA7W4V0qcli',NULL,NULL,NULL,NULL,1,1,'2026-04-21 03:48:23','2026-04-25 03:29:12','8jPgWA2fY18CBpriyPkB8pHZ70hif3Iiej171712Nzkuzd12BL','fl8J66tNTX63tLfQPlcOEC:APA91bEu7kxCextH3OpYbjOuiqX22fczTgL7zuJfy-_19SnFWBbTck3al9J-nKnU3_y_W1f4groxTZjjrovhQl7Q2aWIe5ID9JNpigd5QBuaUqQ6YPSBBZc','US');
/*!40000 ALTER TABLE `delivery_men` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_zip_codes`
--

DROP TABLE IF EXISTS `delivery_zip_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_zip_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_zip_codes`
--

LOCK TABLES `delivery_zip_codes` WRITE;
/*!40000 ALTER TABLE `delivery_zip_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_zip_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryman_notifications`
--

DROP TABLE IF EXISTS `deliveryman_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryman_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryman_notifications`
--

LOCK TABLES `deliveryman_notifications` WRITE;
/*!40000 ALTER TABLE `deliveryman_notifications` DISABLE KEYS */;
INSERT INTO `deliveryman_notifications` VALUES (1,2,100008,'customize your delivery man charge message','2026-04-17 11:00:42','2026-04-17 11:00:42');
/*!40000 ALTER TABLE `deliveryman_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryman_wallets`
--

DROP TABLE IF EXISTS `deliveryman_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryman_wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `current_balance` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `cash_in_hand` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `pending_withdraw` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `total_withdraw` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryman_wallets`
--

LOCK TABLES `deliveryman_wallets` WRITE;
/*!40000 ALTER TABLE `deliveryman_wallets` DISABLE KEYS */;
INSERT INTO `deliveryman_wallets` VALUES (1,2,5.000000000000,120.000000000000,0.000000000000,0.000000000000,'2026-04-17 09:53:44','2026-04-17 09:53:44');
/*!40000 ALTER TABLE `deliveryman_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_product_authors`
--

DROP TABLE IF EXISTS `digital_product_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_product_authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_product_authors`
--

LOCK TABLES `digital_product_authors` WRITE;
/*!40000 ALTER TABLE `digital_product_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_product_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_product_otp_verifications`
--

DROP TABLE IF EXISTS `digital_product_otp_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_product_otp_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_details_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_product_otp_verifications`
--

LOCK TABLES `digital_product_otp_verifications` WRITE;
/*!40000 ALTER TABLE `digital_product_otp_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_product_otp_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_product_publishing_houses`
--

DROP TABLE IF EXISTS `digital_product_publishing_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_product_publishing_houses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `publishing_house_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_product_publishing_houses`
--

LOCK TABLES `digital_product_publishing_houses` WRITE;
/*!40000 ALTER TABLE `digital_product_publishing_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_product_publishing_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_product_variations`
--

DROP TABLE IF EXISTS `digital_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `variant_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(24,8) DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_product_variations`
--

LOCK TABLES `digital_product_variations` WRITE;
/*!40000 ALTER TABLE `digital_product_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_design_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `hide_field` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `button_content_status` tinyint NOT NULL DEFAULT '1',
  `product_information_status` tinyint NOT NULL DEFAULT '1',
  `order_information_status` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'order-received','admin','order-received','New Order Received','<p><b>Hi {adminName},</b></p><p>We have sent you this email to notify that you have a new order.You will be able to see your orders after login to your panel.</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"icon\",\"product_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(2,'order-place','customer','order-place','Order # {orderId} Has Been Placed Successfully!','<p><b>Hi {userName},</b></p><p>Your order from {vendorName} has been placed to know the current status of your order click track order</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"icon\",\"product_information\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(3,'registration-verification','customer','registration-verification','Registration Verification','<p><b>Hi {userName},</b></p><p>Your verification code is</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(4,'registration-from-pos','customer','registration-from-pos','Registration Complete','<p><b>Hi {userName},</b></p><p>Thank you for joining Rareverse Shop.If you want to become a registered customer then reset your password below by using this email. Then you’ll be able to explore the website and app as a registered customer.</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_url\",\"button_content_status\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(5,'account-block','customer','account-block','Account Blocked','<div><b>Hi {userName},</b></div><div><b><br></b></div><div>Your account has been blocked due to suspicious activity by the admin .To resolve this issue please contact with admin or support center. We apologize for any inconvenience caused.</div><div><br></div><div>Meanwhile, click here to visit theRareverseshop website</div><div><font color=\"#0000ff\"> <a href=\"https://rareverse.app\" target=\"_blank\">https://rareverse.app</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(6,'account-unblock','customer','account-unblock','Account Unblocked','<div><b>Hi {userName},</b></div><div><b><br></b></div><div>Your account has been successfully unblocked. We appreciate your cooperation in resolving this issue. Thank you for your understanding and patience. </div><div><br></div><div>Meanwhile, click here to visit theRareverse shop website</div><div><font color=\"#0000ff\"> <a href=\"https://rareverse.app\" target=\"_blank\">https://rareverse.app</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(7,'digital-product-download','customer','digital-product-download','Congratulations','<p>Thank you for choosing Rareverse shop! Your digital product is ready for download. To download your product use your email <b>{emailId}</b> and order # {orderId} below.</b><br></p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(8,'digital-product-otp','customer','digital-product-otp','Digital Product Download OTP Verification','<p><b>Hi {userName},</b></p><p>Your verification code is</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(9,'add-fund-to-wallet','customer','add-fund-to-wallet','Transaction Successful','<div style=\"text-align: center; \">Amount successfully credited to your wallet .</div><div style=\"text-align: center; \"><br></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(10,'registration','vendor','registration','Registration Complete','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Congratulation! Your registration request has been send to admin successfully! Please wait until admin reviewal. </div><div><br></div><div>meanwhile click here to visit the Rareverse Shop Website</div><div><font color=\"#0000ff\"> <a href=\"https://rareverse.app\" target=\"_blank\">https://rareverse.app</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:39','2026-04-14 16:15:39'),(11,'registration-approved','vendor','registration-approved','Registration Approved','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your registration request has been approved by admin. Now you can complete your store setting and start selling your product on Rareverse Shop. </div><div><br></div><div>Meanwhile, click here to visit theRareverse shop website</div><div><font color=\"#0000ff\"> <a href=\"https://rareverse.app\" target=\"_blank\">https://rareverse.app</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:40','2026-04-14 16:15:40'),(12,'registration-denied','vendor','registration-denied','Registration Denied','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your registration request has been denied by admin. Please contact with admin or support center if you have any queries.</div><div><br></div><div>Meanwhile, click here to visit theRareverse shop website</div><div><font color=\"#0000ff\"> <a href=\"https://rareverse.app\" target=\"_blank\">https://rareverse.app</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:40','2026-04-14 16:15:40'),(13,'account-suspended','vendor','account-suspended','Account Suspended','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your account access has been suspended by admin.From now you can access your app and panel again Please contact us for any queries we’re always happy to help.</div><div><br></div><div>Meanwhile, click here to visit theRareverse shop website</div><div><font color=\"#0000ff\"> <a href=\"https://rareverse.app\" target=\"_blank\">https://rareverse.app</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:40','2026-04-14 16:15:40'),(14,'account-activation','vendor','account-activation','Account Activation','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your account suspension has been revoked by admin. From now you can access your app and panel again Please contact us for any queries we’re always happy to help.</div><div><br></div><div>Meanwhile, click here to visit theRareverse shop website</div><div><font color=\"#0000ff\"> <a href=\"https://rareverse.app\" target=\"_blank\">https://rareverse.app</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:40','2026-04-14 16:15:40'),(15,'forgot-password','vendor','forgot-password','Change Password Request','<p><b>Hi {vendorName},</b></p><p>Please click the link below to change your password.</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:40','2026-04-14 16:15:40'),(16,'order-received','vendor','order-received','New Order Received','<p><b>Hi {vendorName},</b></p><p>We have sent you this email to notify that you have a new order.You will be able to see your orders after login to your panel.</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"icon\",\"product_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:40','2026-04-14 16:15:40'),(17,'reset-password-verification','delivery-man','reset-password-verification','OTP Verification For Password Reset','<p><b>Hi {deliveryManName},</b></p><p>Your verification code is</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2026 Rareverse. All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2026-04-14 16:15:40','2026-04-14 16:15:40');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergency_contacts`
--

DROP TABLE IF EXISTS `emergency_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergency_contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergency_contacts`
--

LOCK TABLES `emergency_contacts` WRITE;
/*!40000 ALTER TABLE `emergency_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `emergency_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_logs`
--

DROP TABLE IF EXISTS `error_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_counts` int NOT NULL DEFAULT '0',
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_logs`
--

LOCK TABLES `error_logs` WRITE;
/*!40000 ALTER TABLE `error_logs` DISABLE KEYS */;
INSERT INTO `error_logs` VALUES (1,404,'http://127.0.0.1:8000/admin/messages/new-notification',16,NULL,NULL,'2024-12-21 06:49:44','2025-09-23 06:27:28'),(2,404,'http://127.0.0.1:8000/admin/dashboard/real-time-activities',4,NULL,NULL,'2025-02-13 08:40:56','2025-09-23 06:27:28');
/*!40000 ALTER TABLE `error_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `feature_deals`
--

DROP TABLE IF EXISTS `feature_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_deals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_deals`
--

LOCK TABLES `feature_deals` WRITE;
/*!40000 ALTER TABLE `feature_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deal_products`
--

DROP TABLE IF EXISTS `flash_deal_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_deal_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `flash_deal_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `discount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `discount_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deal_products`
--

LOCK TABLES `flash_deal_products` WRITE;
/*!40000 ALTER TABLE `flash_deal_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `flash_deal_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deals`
--

DROP TABLE IF EXISTS `flash_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_deals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `deal_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deals`
--

LOCK TABLES `flash_deals` WRITE;
/*!40000 ALTER TABLE `flash_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `flash_deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_users`
--

DROP TABLE IF EXISTS `guest_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=589 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_users`
--

LOCK TABLES `guest_users` WRITE;
/*!40000 ALTER TABLE `guest_users` DISABLE KEYS */;
INSERT INTO `guest_users` VALUES (1,'::1',NULL,'2024-02-19 08:35:50',NULL),(2,'::1',NULL,'2024-03-27 03:10:49',NULL),(3,'::1',NULL,'2024-03-27 03:12:35',NULL),(4,'::1',NULL,'2024-05-18 10:57:05',NULL),(5,'::1',NULL,'2024-09-24 07:51:36','2024-09-24 07:51:36'),(6,'::1',NULL,'2024-09-24 07:52:19','2024-09-24 07:52:19'),(7,'::1',NULL,'2024-10-27 08:14:28','2024-10-27 08:14:28'),(8,'::1',NULL,'2024-12-21 06:51:41','2024-12-21 06:51:41'),(9,'127.0.0.1',NULL,'2025-02-13 08:41:46','2025-02-13 08:41:46'),(10,'127.0.0.1',NULL,'2025-05-11 07:50:14','2025-05-11 07:50:14'),(11,'::1',NULL,'2025-07-16 09:12:49','2025-07-16 09:12:49'),(12,'::1',NULL,'2025-08-12 06:45:57','2025-08-12 06:45:57'),(13,'::1',NULL,'2025-10-30 04:10:47','2025-10-30 04:10:47'),(14,'127.0.0.1',NULL,'2025-11-17 03:20:18','2025-11-17 03:20:18'),(15,'::1',NULL,'2025-12-15 12:23:25','2025-12-15 12:23:25'),(16,'::1',NULL,'2026-02-17 03:36:29','2026-02-17 03:36:29'),(17,'::1',NULL,'2026-03-10 06:57:35','2026-03-10 06:57:35'),(18,'110.38.240.144',NULL,'2026-04-14 16:15:47','2026-04-14 16:15:47'),(19,'107.172.195.139',NULL,'2026-04-14 16:18:13','2026-04-14 16:18:13'),(20,'103.4.250.251',NULL,'2026-04-14 16:18:13','2026-04-14 16:18:13'),(21,'107.172.195.139',NULL,'2026-04-14 16:18:17','2026-04-14 16:18:17'),(22,'98.84.15.114',NULL,'2026-04-14 16:33:12','2026-04-14 16:33:12'),(23,'98.84.15.114',NULL,'2026-04-14 16:33:56','2026-04-14 16:33:56'),(24,'103.196.9.231',NULL,'2026-04-14 16:43:41','2026-04-14 16:43:41'),(25,'154.28.229.14',NULL,'2026-04-14 16:43:42','2026-04-14 16:43:42'),(26,'103.196.9.231',NULL,'2026-04-14 16:43:50','2026-04-14 16:43:50'),(27,'104.252.191.202',NULL,'2026-04-14 16:08:38','2026-04-14 16:08:38'),(28,'103.4.250.170',NULL,'2026-04-14 16:08:39','2026-04-14 16:08:39'),(29,'103.4.250.170',NULL,'2026-04-14 16:08:49','2026-04-14 16:08:49'),(30,'45.32.152.79',NULL,'2026-04-14 16:41:54','2026-04-14 16:41:54'),(31,'43.165.65.180',NULL,'2026-04-14 16:55:35','2026-04-14 16:55:35'),(32,'147.78.183.134',NULL,'2026-04-14 17:27:15','2026-04-14 17:27:15'),(33,'169.239.180.34',NULL,'2026-04-14 17:40:02','2026-04-14 17:40:02'),(34,'45.148.10.217',NULL,'2026-04-14 17:43:15','2026-04-14 17:43:15'),(35,'5.255.99.123',NULL,'2026-04-14 18:23:03','2026-04-14 18:23:03'),(36,'66.59.211.237',NULL,'2026-04-14 18:45:35','2026-04-14 18:45:35'),(37,'185.220.101.11',NULL,'2026-04-14 18:59:49','2026-04-14 18:59:49'),(38,'35.240.154.31',NULL,'2026-04-14 19:08:27','2026-04-14 19:08:27'),(39,'104.155.112.71',NULL,'2026-04-14 19:13:12','2026-04-14 19:13:12'),(40,'43.153.215.224',NULL,'2026-04-14 19:20:01','2026-04-14 19:20:01'),(41,'185.102.112.54',NULL,'2026-04-14 19:24:29','2026-04-14 19:24:29'),(42,'5.182.207.245',NULL,'2026-04-14 19:32:53','2026-04-14 19:32:53'),(43,'5.182.207.245',NULL,'2026-04-14 19:32:55','2026-04-14 19:32:55'),(44,'110.38.240.144',NULL,'2026-04-14 19:34:53','2026-04-14 19:34:53'),(45,'43.166.244.192',NULL,'2026-04-14 19:53:27','2026-04-14 19:53:27'),(46,'43.130.106.18',NULL,'2026-04-14 20:03:35','2026-04-14 20:03:35'),(47,'43.166.242.189',NULL,'2026-04-14 20:13:42','2026-04-14 20:13:42'),(48,'34.172.82.229',NULL,'2026-04-14 20:29:38','2026-04-14 20:29:38'),(49,'43.130.228.73',NULL,'2026-04-14 20:43:09','2026-04-14 20:43:09'),(50,'43.164.197.177',NULL,'2026-04-14 20:53:17','2026-04-14 20:53:17'),(51,'43.156.156.96',NULL,'2026-04-14 21:32:42','2026-04-14 21:32:42'),(52,'185.81.145.85',NULL,'2026-04-14 21:41:04','2026-04-14 21:41:04'),(53,'43.157.156.190',NULL,'2026-04-14 21:42:49','2026-04-14 21:42:49'),(54,'51.38.135.19',NULL,'2026-04-14 21:43:59','2026-04-14 21:43:59'),(55,'54.37.10.247',NULL,'2026-04-14 21:44:06','2026-04-14 21:44:06'),(56,'54.37.10.247',NULL,'2026-04-14 21:44:25','2026-04-14 21:44:25'),(57,'167.114.3.106',NULL,'2026-04-14 21:44:30','2026-04-14 21:44:30'),(58,'54.37.10.247',NULL,'2026-04-14 21:44:41','2026-04-14 21:44:41'),(59,'143.105.29.159',NULL,'2026-04-14 22:53:05','2026-04-14 22:53:05'),(60,'182.42.104.32',NULL,'2026-04-14 23:17:50','2026-04-14 23:17:50'),(61,'43.153.54.138',NULL,'2026-04-15 01:14:47','2026-04-15 01:14:47'),(62,'43.157.82.252',NULL,'2026-04-15 01:29:08','2026-04-15 01:29:08'),(63,'43.163.206.70',NULL,'2026-04-15 01:48:39','2026-04-15 01:48:39'),(64,'43.135.138.128',NULL,'2026-04-15 01:57:06','2026-04-15 01:57:06'),(65,'170.106.193.108',NULL,'2026-04-15 02:08:40','2026-04-15 02:08:40'),(66,'170.106.193.108',NULL,'2026-04-15 02:08:44','2026-04-15 02:08:44'),(67,'43.153.102.138',NULL,'2026-04-15 02:28:29','2026-04-15 02:28:29'),(68,'43.133.220.37',NULL,'2026-04-15 02:47:22','2026-04-15 02:47:22'),(69,'20.219.23.189',NULL,'2026-04-15 02:52:37','2026-04-15 02:52:37'),(70,'43.166.131.228',NULL,'2026-04-15 02:58:43','2026-04-15 02:58:43'),(71,'43.157.191.20',NULL,'2026-04-15 03:08:04','2026-04-15 03:08:04'),(72,'43.157.148.38',NULL,'2026-04-15 03:38:24','2026-04-15 03:38:24'),(73,'43.131.253.14',NULL,'2026-04-15 03:58:39','2026-04-15 03:58:39'),(74,'137.184.73.200',NULL,'2026-04-15 05:26:51','2026-04-15 05:26:51'),(75,'5.133.192.136',NULL,'2026-04-15 05:27:28','2026-04-15 05:27:28'),(76,'5.133.192.136',NULL,'2026-04-15 05:27:31','2026-04-15 05:27:31'),(77,'49.51.196.42',NULL,'2026-04-15 07:17:10','2026-04-15 07:17:10'),(78,'34.87.90.225',NULL,'2026-04-15 07:45:34','2026-04-15 07:45:34'),(79,'43.166.7.113',NULL,'2026-04-15 07:51:31','2026-04-15 07:51:31'),(80,'43.167.239.66',NULL,'2026-04-15 08:10:24','2026-04-15 08:10:24'),(81,'43.135.134.127',NULL,'2026-04-15 08:20:53','2026-04-15 08:20:53'),(82,'43.157.168.43',NULL,'2026-04-15 08:41:00','2026-04-15 08:41:00'),(83,'43.128.67.187',NULL,'2026-04-15 08:50:01','2026-04-15 08:50:01'),(84,'195.201.168.79',NULL,'2026-04-15 08:51:52','2026-04-15 08:51:52'),(85,'168.119.80.126',NULL,'2026-04-15 08:52:07','2026-04-15 08:52:07'),(86,'23.88.69.86',NULL,'2026-04-15 08:52:10','2026-04-15 08:52:10'),(87,'43.157.95.239',NULL,'2026-04-15 09:00:48','2026-04-15 09:00:48'),(88,'170.106.84.136',NULL,'2026-04-15 09:21:35','2026-04-15 09:21:35'),(89,'43.166.136.153',NULL,'2026-04-15 09:32:34','2026-04-15 09:32:34'),(90,'43.166.240.231',NULL,'2026-04-15 09:52:16','2026-04-15 09:52:16'),(91,'43.157.50.58',NULL,'2026-04-15 10:08:56','2026-04-15 10:08:56'),(92,'62.141.44.236',NULL,'2026-04-15 10:47:14','2026-04-15 10:47:14'),(93,'49.233.45.47',NULL,'2026-04-15 11:14:04','2026-04-15 11:14:04'),(94,'34.100.135.49',NULL,'2026-04-15 11:58:29','2026-04-15 11:58:29'),(95,'110.38.247.241',NULL,'2026-04-15 12:09:57','2026-04-15 12:09:57'),(96,'101.33.66.34',NULL,'2026-04-15 12:55:26','2026-04-15 12:55:26'),(97,'110.38.247.241',NULL,'2026-04-15 13:15:53','2026-04-15 13:15:53'),(98,'150.109.46.88',NULL,'2026-04-15 13:29:12','2026-04-15 13:29:12'),(99,'150.109.46.88',NULL,'2026-04-15 13:29:15','2026-04-15 13:29:15'),(100,'149.40.193.237',NULL,'2026-04-15 13:34:52','2026-04-15 13:34:52'),(101,'43.164.197.224',NULL,'2026-04-15 13:39:31','2026-04-15 13:39:31'),(102,'74.125.182.110',NULL,'2026-04-15 13:56:33','2026-04-15 13:56:33'),(103,'172.253.192.122',NULL,'2026-04-15 14:02:51','2026-04-15 14:02:51'),(104,'43.131.253.14',NULL,'2026-04-15 14:49:41','2026-04-15 14:49:41'),(105,'43.128.156.124',NULL,'2026-04-15 14:59:20','2026-04-15 14:59:20'),(106,'195.201.111.82',NULL,'2026-04-15 15:07:27','2026-04-15 15:07:27'),(107,'5.9.50.77',NULL,'2026-04-15 15:07:31','2026-04-15 15:07:31'),(108,'138.201.135.169',NULL,'2026-04-15 15:07:38','2026-04-15 15:07:38'),(109,'88.99.48.186',NULL,'2026-04-15 15:07:43','2026-04-15 15:07:43'),(110,'124.156.157.91',NULL,'2026-04-15 15:08:35','2026-04-15 15:08:35'),(111,'8.229.127.118',NULL,'2026-04-15 15:48:18','2026-04-15 15:48:18'),(112,'93.123.109.214',NULL,'2026-04-15 16:45:12','2026-04-15 16:45:12'),(113,'93.123.109.214',NULL,'2026-04-15 16:45:15','2026-04-15 16:45:15'),(114,'43.165.65.180',NULL,'2026-04-15 17:08:20','2026-04-15 17:08:20'),(115,'159.203.30.229',NULL,'2026-04-15 17:15:30','2026-04-15 17:15:30'),(116,'34.34.148.215',NULL,'2026-04-15 17:50:59','2026-04-15 17:50:59'),(117,'43.133.187.11',NULL,'2026-04-15 18:32:02','2026-04-15 18:32:02'),(118,'216.73.216.107',NULL,'2026-04-15 18:56:05','2026-04-15 18:56:05'),(119,'146.19.44.66',NULL,'2026-04-15 19:24:45','2026-04-15 19:24:45'),(120,'43.157.181.189',NULL,'2026-04-15 19:25:17','2026-04-15 19:25:17'),(121,'35.226.143.249',NULL,'2026-04-15 19:31:58','2026-04-15 19:31:58'),(122,'43.154.140.188',NULL,'2026-04-15 19:34:05','2026-04-15 19:34:05'),(123,'43.155.140.157',NULL,'2026-04-15 19:45:40','2026-04-15 19:45:40'),(124,'43.153.76.247',NULL,'2026-04-15 19:54:52','2026-04-15 19:54:52'),(125,'43.153.192.98',NULL,'2026-04-15 20:36:18','2026-04-15 20:36:18'),(126,'43.157.53.115',NULL,'2026-04-15 20:56:14','2026-04-15 20:56:14'),(127,'170.106.148.137',NULL,'2026-04-15 21:05:13','2026-04-15 21:05:13'),(128,'216.73.216.107',NULL,'2026-04-15 21:08:01','2026-04-15 21:08:01'),(129,'216.73.216.107',NULL,'2026-04-15 21:08:01','2026-04-15 21:08:01'),(130,'216.73.216.107',NULL,'2026-04-15 21:09:11','2026-04-15 21:09:11'),(131,'216.73.216.107',NULL,'2026-04-15 21:09:12','2026-04-15 21:09:12'),(132,'216.73.216.107',NULL,'2026-04-15 21:09:22','2026-04-15 21:09:22'),(133,'216.73.216.107',NULL,'2026-04-15 21:10:49','2026-04-15 21:10:49'),(134,'216.73.216.107',NULL,'2026-04-15 21:10:59','2026-04-15 21:10:59'),(135,'216.73.216.107',NULL,'2026-04-15 21:11:03','2026-04-15 21:11:03'),(136,'216.73.216.107',NULL,'2026-04-15 21:12:27','2026-04-15 21:12:27'),(137,'216.73.216.107',NULL,'2026-04-15 21:12:27','2026-04-15 21:12:27'),(138,'216.73.216.107',NULL,'2026-04-15 21:12:37','2026-04-15 21:12:37'),(139,'216.73.216.107',NULL,'2026-04-15 21:12:47','2026-04-15 21:12:47'),(140,'216.73.216.107',NULL,'2026-04-15 21:13:24','2026-04-15 21:13:24'),(141,'216.73.216.107',NULL,'2026-04-15 21:14:04','2026-04-15 21:14:04'),(142,'216.73.216.107',NULL,'2026-04-15 21:14:04','2026-04-15 21:14:04'),(143,'216.73.216.107',NULL,'2026-04-15 21:17:00','2026-04-15 21:17:00'),(144,'216.73.216.107',NULL,'2026-04-15 21:17:19','2026-04-15 21:17:19'),(145,'216.73.216.107',NULL,'2026-04-15 21:18:24','2026-04-15 21:18:24'),(146,'93.123.109.214',NULL,'2026-04-15 21:48:11','2026-04-15 21:48:11'),(147,'93.123.109.214',NULL,'2026-04-15 21:48:15','2026-04-15 21:48:15'),(148,'216.73.216.107',NULL,'2026-04-15 21:55:19','2026-04-15 21:55:19'),(149,'216.73.216.107',NULL,'2026-04-15 22:58:39','2026-04-15 22:58:39'),(150,'216.73.216.107',NULL,'2026-04-15 23:02:09','2026-04-15 23:02:09'),(151,'216.73.216.107',NULL,'2026-04-15 23:02:09','2026-04-15 23:02:09'),(152,'216.73.216.107',NULL,'2026-04-15 23:03:32','2026-04-15 23:03:32'),(153,'216.73.216.107',NULL,'2026-04-15 23:03:32','2026-04-15 23:03:32'),(154,'3.84.9.250',NULL,'2026-04-15 23:31:48','2026-04-15 23:31:48'),(155,'91.242.127.232',NULL,'2026-04-15 23:31:51','2026-04-15 23:31:51'),(156,'91.242.127.232',NULL,'2026-04-15 23:31:51','2026-04-15 23:31:51'),(157,'204.236.247.214',NULL,'2026-04-15 23:36:51','2026-04-15 23:36:51'),(158,'204.236.247.214',NULL,'2026-04-15 23:37:40','2026-04-15 23:37:40'),(159,'117.33.163.216',NULL,'2026-04-15 23:49:10','2026-04-15 23:49:10'),(160,'43.153.74.75',NULL,'2026-04-16 00:40:15','2026-04-16 00:40:15'),(161,'49.51.195.195',NULL,'2026-04-16 01:35:04','2026-04-16 01:35:04'),(162,'43.130.228.73',NULL,'2026-04-16 01:45:16','2026-04-16 01:45:16'),(163,'104.164.126.121',NULL,'2026-04-16 01:53:49','2026-04-16 01:53:49'),(164,'107.172.195.126',NULL,'2026-04-16 01:53:50','2026-04-16 01:53:50'),(165,'107.172.195.126',NULL,'2026-04-16 01:53:56','2026-04-16 01:53:56'),(166,'43.157.170.13',NULL,'2026-04-16 01:54:11','2026-04-16 01:54:11'),(167,'43.166.128.86',NULL,'2026-04-16 02:15:38','2026-04-16 02:15:38'),(168,'43.155.157.239',NULL,'2026-04-16 02:34:42','2026-04-16 02:34:42'),(169,'43.130.67.33',NULL,'2026-04-16 02:45:15','2026-04-16 02:45:15'),(170,'101.32.52.164',NULL,'2026-04-16 03:07:14','2026-04-16 03:07:14'),(171,'43.163.206.70',NULL,'2026-04-16 03:14:10','2026-04-16 03:14:10'),(172,'101.32.208.70',NULL,'2026-04-16 07:00:05','2026-04-16 07:00:05'),(173,'93.158.90.66',NULL,'2026-04-16 07:00:18','2026-04-16 07:00:18'),(174,'43.140.247.223',NULL,'2026-04-16 11:46:45','2026-04-16 11:46:45'),(175,'43.153.71.132',NULL,'2026-04-16 11:47:21','2026-04-16 11:47:21'),(176,'23.234.96.54',NULL,'2026-04-16 12:42:52','2026-04-16 12:42:52'),(177,'3.85.16.254',NULL,'2026-04-16 14:41:48','2026-04-16 14:41:48'),(178,'51.158.249.12',NULL,'2026-04-16 15:34:18','2026-04-16 15:34:18'),(179,'51.158.249.12',NULL,'2026-04-16 15:34:23','2026-04-16 15:34:23'),(180,'45.148.10.245',NULL,'2026-04-16 15:40:05','2026-04-16 15:40:05'),(181,'34.187.135.248',NULL,'2026-04-16 15:47:47','2026-04-16 15:47:47'),(182,'204.76.203.25',NULL,'2026-04-16 16:20:53','2026-04-16 16:20:53'),(183,'43.157.174.69',NULL,'2026-04-16 16:21:48','2026-04-16 16:21:48'),(184,'43.165.65.75',NULL,'2026-04-16 17:25:51','2026-04-16 17:25:51'),(185,'54.154.142.64',NULL,'2026-04-16 19:04:22','2026-04-16 19:04:22'),(186,'185.102.113.78',NULL,'2026-04-16 19:17:49','2026-04-16 19:17:49'),(187,'109.243.64.80',NULL,'2026-04-16 19:27:29','2026-04-16 19:27:29'),(188,'43.153.26.165',NULL,'2026-04-16 20:50:24','2026-04-16 20:50:24'),(189,'45.148.10.245',NULL,'2026-04-16 23:32:57','2026-04-16 23:32:57'),(190,'43.157.180.116',NULL,'2026-04-17 02:16:28','2026-04-17 02:16:28'),(191,'34.168.16.51',NULL,'2026-04-17 04:28:21','2026-04-17 04:28:21'),(192,'51.210.216.21',NULL,'2026-04-17 06:28:45','2026-04-17 06:28:45'),(193,'162.62.213.187',NULL,'2026-04-17 07:40:44','2026-04-17 07:40:44'),(194,'110.38.240.122',NULL,'2026-04-17 09:45:33','2026-04-17 09:45:33'),(195,'88.151.34.212',NULL,'2026-04-17 10:17:46','2026-04-17 10:17:46'),(196,'88.151.34.212',NULL,'2026-04-17 10:17:46','2026-04-17 10:17:46'),(197,'110.38.240.122',NULL,'2026-04-17 10:56:49','2026-04-17 10:56:49'),(198,'148.222.132.190',NULL,'2026-04-17 11:13:25','2026-04-17 11:13:25'),(199,'170.106.192.3',NULL,'2026-04-17 12:23:52','2026-04-17 12:23:52'),(200,'43.153.49.151',NULL,'2026-04-17 17:06:44','2026-04-17 17:06:44'),(201,'43.165.65.180',NULL,'2026-04-17 17:36:44','2026-04-17 17:36:44'),(202,'146.19.39.136',NULL,'2026-04-17 18:53:44','2026-04-17 18:53:44'),(203,'167.71.189.231',NULL,'2026-04-17 20:45:07','2026-04-17 20:45:07'),(204,'49.51.36.179',NULL,'2026-04-17 21:34:38','2026-04-17 21:34:38'),(205,'148.222.132.190',NULL,'2026-04-18 02:39:55','2026-04-18 02:39:55'),(206,'199.244.88.227',NULL,'2026-04-18 04:57:05','2026-04-18 04:57:05'),(207,'170.106.180.246',NULL,'2026-04-18 07:09:57','2026-04-18 07:09:57'),(208,'148.222.132.190',NULL,'2026-04-18 08:02:08','2026-04-18 08:02:08'),(209,'135.148.195.5',NULL,'2026-04-18 08:48:52','2026-04-18 08:48:52'),(210,'34.174.163.33',NULL,'2026-04-18 11:33:58','2026-04-18 11:33:58'),(211,'34.174.163.33',NULL,'2026-04-18 11:34:08','2026-04-18 11:34:08'),(212,'34.174.163.33',NULL,'2026-04-18 11:39:06','2026-04-18 11:39:06'),(213,'34.174.163.33',NULL,'2026-04-18 11:39:12','2026-04-18 11:39:12'),(214,'34.174.163.32',NULL,'2026-04-18 11:41:20','2026-04-18 11:41:20'),(215,'34.174.163.32',NULL,'2026-04-18 11:41:26','2026-04-18 11:41:26'),(216,'34.174.163.33',NULL,'2026-04-18 11:42:53','2026-04-18 11:42:53'),(217,'34.174.163.33',NULL,'2026-04-18 11:42:59','2026-04-18 11:42:59'),(218,'148.222.132.190',NULL,'2026-04-18 12:30:11','2026-04-18 12:30:11'),(219,'173.252.87.20',NULL,'2026-04-18 12:31:23','2026-04-18 12:31:23'),(220,'173.252.95.9',NULL,'2026-04-18 12:31:23','2026-04-18 12:31:23'),(221,'69.171.249.8',NULL,'2026-04-18 12:32:00','2026-04-18 12:32:00'),(222,'173.252.70.32',NULL,'2026-04-18 12:32:11','2026-04-18 12:32:11'),(223,'14.97.187.165',NULL,'2026-04-18 12:33:46','2026-04-18 12:33:46'),(224,'43.166.132.142',NULL,'2026-04-18 12:54:48','2026-04-18 12:54:48'),(225,'14.97.187.165',NULL,'2026-04-18 12:56:47','2026-04-18 12:56:47'),(226,'14.97.187.165',NULL,'2026-04-18 12:56:51','2026-04-18 12:56:51'),(227,'14.97.187.165',NULL,'2026-04-18 12:56:57','2026-04-18 12:56:57'),(228,'14.97.187.165',NULL,'2026-04-18 12:57:13','2026-04-18 12:57:13'),(229,'14.97.187.165',NULL,'2026-04-18 12:57:19','2026-04-18 12:57:19'),(230,'14.97.187.165',NULL,'2026-04-18 12:57:24','2026-04-18 12:57:24'),(231,'66.249.65.38',NULL,'2026-04-18 12:58:48','2026-04-18 12:58:48'),(232,'66.249.65.36',NULL,'2026-04-18 12:58:51','2026-04-18 12:58:51'),(233,'14.97.187.165',NULL,'2026-04-18 13:17:17','2026-04-18 13:17:17'),(234,'14.97.187.165',NULL,'2026-04-18 13:17:24','2026-04-18 13:17:24'),(235,'129.226.213.145',NULL,'2026-04-18 13:18:42','2026-04-18 13:18:42'),(236,'14.97.187.165',NULL,'2026-04-18 13:24:15','2026-04-18 13:24:15'),(237,'43.157.62.101',NULL,'2026-04-18 13:59:10','2026-04-18 13:59:10'),(238,'43.153.71.132',NULL,'2026-04-18 14:09:18','2026-04-18 14:09:18'),(239,'43.159.128.155',NULL,'2026-04-18 14:18:36','2026-04-18 14:18:36'),(240,'170.106.107.87',NULL,'2026-04-18 14:29:15','2026-04-18 14:29:15'),(241,'54.80.246.10',NULL,'2026-04-18 14:45:57','2026-04-18 14:45:57'),(242,'43.158.91.71',NULL,'2026-04-18 14:48:09','2026-04-18 14:48:09'),(243,'43.166.7.113',NULL,'2026-04-18 15:08:38','2026-04-18 15:08:38'),(244,'43.159.128.155',NULL,'2026-04-18 15:18:59','2026-04-18 15:18:59'),(245,'43.167.239.66',NULL,'2026-04-18 15:28:16','2026-04-18 15:28:16'),(246,'43.167.245.18',NULL,'2026-04-18 15:37:34','2026-04-18 15:37:34'),(247,'216.152.155.220',NULL,'2026-04-18 15:54:25','2026-04-18 15:54:25'),(248,'216.152.155.220',NULL,'2026-04-18 15:54:26','2026-04-18 15:54:26'),(249,'216.152.155.220',NULL,'2026-04-18 15:54:29','2026-04-18 15:54:29'),(250,'43.165.70.220',NULL,'2026-04-18 17:42:59','2026-04-18 17:42:59'),(251,'43.133.91.48',NULL,'2026-04-18 17:49:52','2026-04-18 17:49:52'),(252,'200.68.173.20',NULL,'2026-04-18 20:50:55','2026-04-18 20:50:55'),(253,'148.222.132.190',NULL,'2026-04-18 21:54:51','2026-04-18 21:54:51'),(254,'43.157.153.236',NULL,'2026-04-18 22:35:10','2026-04-18 22:35:10'),(255,'148.222.132.190',NULL,'2026-04-18 23:26:25','2026-04-18 23:26:25'),(256,'148.222.132.190',NULL,'2026-04-18 23:49:05','2026-04-18 23:49:05'),(257,'148.222.132.190',NULL,'2026-04-19 00:04:22','2026-04-19 00:04:22'),(258,'157.51.223.145',NULL,'2026-04-19 01:44:06','2026-04-19 01:44:06'),(259,'43.166.239.145',NULL,'2026-04-19 05:40:25','2026-04-19 05:40:25'),(260,'43.152.72.247',NULL,'2026-04-19 06:14:59','2026-04-19 06:14:59'),(261,'43.153.85.46',NULL,'2026-04-19 06:44:46','2026-04-19 06:44:46'),(262,'45.148.10.62',NULL,'2026-04-19 07:15:22','2026-04-19 07:15:22'),(263,'45.148.10.62',NULL,'2026-04-19 07:15:24','2026-04-19 07:15:24'),(264,'43.153.215.224',NULL,'2026-04-19 11:27:08','2026-04-19 11:27:08'),(265,'117.33.163.216',NULL,'2026-04-19 14:05:14','2026-04-19 14:05:14'),(266,'216.73.216.19',NULL,'2026-04-19 14:23:41','2026-04-19 14:23:41'),(267,'216.73.216.19',NULL,'2026-04-19 14:32:46','2026-04-19 14:32:46'),(268,'216.73.216.19',NULL,'2026-04-19 14:33:15','2026-04-19 14:33:15'),(269,'216.73.216.19',NULL,'2026-04-19 14:43:07','2026-04-19 14:43:07'),(270,'110.38.240.37',NULL,'2026-04-19 15:05:08','2026-04-19 15:05:08'),(271,'54.85.236.130',NULL,'2026-04-19 15:48:27','2026-04-19 15:48:27'),(272,'43.166.246.180',NULL,'2026-04-19 16:39:06','2026-04-19 16:39:06'),(273,'43.165.65.75',NULL,'2026-04-19 17:10:48','2026-04-19 17:10:48'),(274,'185.247.137.37',NULL,'2026-04-19 17:47:37','2026-04-19 17:47:37'),(275,'136.119.201.137',NULL,'2026-04-19 19:14:39','2026-04-19 19:14:39'),(276,'167.99.95.119',NULL,'2026-04-19 20:04:43','2026-04-19 20:04:43'),(277,'93.123.109.232',NULL,'2026-04-19 20:12:57','2026-04-19 20:12:57'),(278,'43.166.224.244',NULL,'2026-04-19 21:17:38','2026-04-19 21:17:38'),(279,'18.232.79.128',NULL,'2026-04-19 23:21:13','2026-04-19 23:21:13'),(280,'149.19.168.159',NULL,'2026-04-20 00:03:32','2026-04-20 00:03:32'),(281,'149.19.168.159',NULL,'2026-04-20 00:15:07','2026-04-20 00:15:07'),(282,'146.70.184.111',NULL,'2026-04-20 02:30:27','2026-04-20 02:30:27'),(283,'43.164.197.224',NULL,'2026-04-20 02:31:48','2026-04-20 02:31:48'),(284,'60.188.57.0',NULL,'2026-04-20 02:33:50','2026-04-20 02:33:50'),(285,'163.172.147.98',NULL,'2026-04-20 03:17:19','2026-04-20 03:17:19'),(286,'18.206.243.235',NULL,'2026-04-20 03:43:25','2026-04-20 03:43:25'),(287,'195.178.110.101',NULL,'2026-04-20 04:31:30','2026-04-20 04:31:30'),(288,'195.178.110.101',NULL,'2026-04-20 04:31:31','2026-04-20 04:31:31'),(289,'149.19.168.159',NULL,'2026-04-20 05:39:05','2026-04-20 05:39:05'),(290,'43.154.140.188',NULL,'2026-04-20 07:38:41','2026-04-20 07:38:41'),(291,'185.247.137.84',NULL,'2026-04-20 09:26:06','2026-04-20 09:26:06'),(292,'43.166.253.94',NULL,'2026-04-20 12:37:56','2026-04-20 12:37:56'),(293,'128.90.157.5',NULL,'2026-04-20 13:20:22','2026-04-20 13:20:22'),(294,'98.81.247.136',NULL,'2026-04-20 14:50:23','2026-04-20 14:50:23'),(295,'43.157.156.190',NULL,'2026-04-20 17:35:31','2026-04-20 17:35:31'),(296,'110.38.240.37',NULL,'2026-04-20 18:51:25','2026-04-20 18:51:25'),(297,'110.38.240.37',NULL,'2026-04-20 18:59:03','2026-04-20 18:59:03'),(298,'35.229.38.191',NULL,'2026-04-20 20:03:50','2026-04-20 20:03:50'),(299,'3.228.96.3',NULL,'2026-04-20 21:06:41','2026-04-20 21:06:41'),(300,'66.249.65.38',NULL,'2026-04-20 22:18:28','2026-04-20 22:18:28'),(301,'66.249.65.38',NULL,'2026-04-20 22:19:39','2026-04-20 22:19:39'),(302,'66.249.65.38',NULL,'2026-04-20 22:19:42','2026-04-20 22:19:42'),(303,'43.166.224.244',NULL,'2026-04-20 22:25:51','2026-04-20 22:25:51'),(304,'162.62.231.139',NULL,'2026-04-20 23:00:05','2026-04-20 23:00:05'),(305,'43.166.131.228',NULL,'2026-04-20 23:20:02','2026-04-20 23:20:02'),(306,'43.156.156.96',NULL,'2026-04-20 23:29:44','2026-04-20 23:29:44'),(307,'49.51.243.156',NULL,'2026-04-20 23:40:19','2026-04-20 23:40:19'),(308,'150.109.46.88',NULL,'2026-04-20 23:51:11','2026-04-20 23:51:11'),(309,'49.51.183.75',NULL,'2026-04-21 00:00:25','2026-04-21 00:00:25'),(310,'162.62.231.139',NULL,'2026-04-21 00:09:48','2026-04-21 00:09:48'),(311,'66.249.65.36',NULL,'2026-04-21 00:15:28','2026-04-21 00:15:28'),(312,'43.157.147.3',NULL,'2026-04-21 00:19:03','2026-04-21 00:19:03'),(313,'43.157.170.13',NULL,'2026-04-21 00:29:45','2026-04-21 00:29:45'),(314,'43.133.91.48',NULL,'2026-04-21 00:39:18','2026-04-21 00:39:18'),(315,'144.76.32.238',NULL,'2026-04-21 00:58:51','2026-04-21 00:58:51'),(316,'66.249.65.36',NULL,'2026-04-21 01:11:28','2026-04-21 01:11:28'),(317,'66.249.65.36',NULL,'2026-04-21 01:11:44','2026-04-21 01:11:44'),(318,'66.249.65.36',NULL,'2026-04-21 01:11:56','2026-04-21 01:11:56'),(319,'66.249.65.36',NULL,'2026-04-21 01:12:01','2026-04-21 01:12:01'),(320,'66.249.65.38',NULL,'2026-04-21 01:48:58','2026-04-21 01:48:58'),(321,'66.249.65.36',NULL,'2026-04-21 01:49:18','2026-04-21 01:49:18'),(322,'66.249.65.38',NULL,'2026-04-21 02:07:43','2026-04-21 02:07:43'),(323,'66.249.65.36',NULL,'2026-04-21 02:26:28','2026-04-21 02:26:28'),(324,'66.249.65.36',NULL,'2026-04-21 02:44:22','2026-04-21 02:44:22'),(325,'66.249.65.36',NULL,'2026-04-21 02:44:36','2026-04-21 02:44:36'),(326,'66.249.65.36',NULL,'2026-04-21 02:44:55','2026-04-21 02:44:55'),(327,'66.249.65.36',NULL,'2026-04-21 02:45:18','2026-04-21 02:45:18'),(328,'66.249.65.38',NULL,'2026-04-21 02:46:10','2026-04-21 02:46:10'),(329,'221.229.106.25',NULL,'2026-04-21 02:59:07','2026-04-21 02:59:07'),(330,'66.249.65.38',NULL,'2026-04-21 03:18:59','2026-04-21 03:18:59'),(331,'49.51.132.100',NULL,'2026-04-21 04:27:29','2026-04-21 04:27:29'),(332,'34.32.247.234',NULL,'2026-04-21 05:05:03','2026-04-21 05:05:03'),(333,'162.55.132.97',NULL,'2026-04-21 05:14:36','2026-04-21 05:14:36'),(334,'66.249.65.36',NULL,'2026-04-21 05:28:29','2026-04-21 05:28:29'),(335,'43.158.91.71',NULL,'2026-04-21 10:52:01','2026-04-21 10:52:01'),(336,'216.73.216.19',NULL,'2026-04-21 13:14:17','2026-04-21 13:14:17'),(337,'216.73.216.19',NULL,'2026-04-21 13:15:40','2026-04-21 13:15:40'),(338,'216.73.216.19',NULL,'2026-04-21 13:22:05','2026-04-21 13:22:05'),(339,'216.73.216.19',NULL,'2026-04-21 13:25:02','2026-04-21 13:25:02'),(340,'205.169.39.166',NULL,'2026-04-21 14:58:55','2026-04-21 14:58:55'),(341,'205.169.39.166',NULL,'2026-04-21 14:59:19','2026-04-21 14:59:19'),(342,'66.249.65.36',NULL,'2026-04-21 15:55:39','2026-04-21 15:55:39'),(343,'43.128.156.124',NULL,'2026-04-21 16:47:06','2026-04-21 16:47:06'),(344,'165.245.221.251',NULL,'2026-04-21 17:52:02','2026-04-21 17:52:02'),(345,'66.249.65.36',NULL,'2026-04-21 18:40:40','2026-04-21 18:40:40'),(346,'66.249.65.36',NULL,'2026-04-21 18:41:00','2026-04-21 18:41:00'),(347,'64.225.15.73',NULL,'2026-04-21 19:44:48','2026-04-21 19:44:48'),(348,'43.157.174.69',NULL,'2026-04-21 21:43:15','2026-04-21 21:43:15'),(349,'43.159.143.187',NULL,'2026-04-21 22:38:05','2026-04-21 22:38:05'),(350,'170.106.202.141',NULL,'2026-04-21 22:57:14','2026-04-21 22:57:14'),(351,'43.166.129.247',NULL,'2026-04-21 23:07:19','2026-04-21 23:07:19'),(352,'43.135.142.37',NULL,'2026-04-21 23:17:07','2026-04-21 23:17:07'),(353,'170.106.8.38',NULL,'2026-04-22 00:07:54','2026-04-22 00:07:54'),(354,'204.76.203.27',NULL,'2026-04-22 03:10:04','2026-04-22 03:10:04'),(355,'43.156.156.96',NULL,'2026-04-22 03:12:53','2026-04-22 03:12:53'),(356,'43.153.10.83',NULL,'2026-04-22 03:37:14','2026-04-22 03:37:14'),(357,'43.153.10.83',NULL,'2026-04-22 03:37:20','2026-04-22 03:37:20'),(358,'221.229.106.25',NULL,'2026-04-22 03:42:52','2026-04-22 03:42:52'),(359,'43.173.1.57',NULL,'2026-04-22 03:46:26','2026-04-22 03:46:26'),(360,'43.167.241.46',NULL,'2026-04-22 04:16:01','2026-04-22 04:16:01'),(361,'43.166.242.189',NULL,'2026-04-22 04:27:07','2026-04-22 04:27:07'),(362,'43.173.1.69',NULL,'2026-04-22 04:36:30','2026-04-22 04:36:30'),(363,'170.106.159.75',NULL,'2026-04-22 04:43:44','2026-04-22 04:43:44'),(364,'43.157.142.101',NULL,'2026-04-22 05:15:19','2026-04-22 05:15:19'),(365,'43.157.168.43',NULL,'2026-04-22 05:35:49','2026-04-22 05:35:49'),(366,'66.249.65.37',NULL,'2026-04-22 06:41:46','2026-04-22 06:41:46'),(367,'66.249.65.37',NULL,'2026-04-22 06:41:56','2026-04-22 06:41:56'),(368,'66.249.65.38',NULL,'2026-04-22 07:11:46','2026-04-22 07:11:46'),(369,'43.128.149.102',NULL,'2026-04-22 08:46:07','2026-04-22 08:46:07'),(370,'193.26.115.176',NULL,'2026-04-22 08:51:07','2026-04-22 08:51:07'),(371,'43.157.148.38',NULL,'2026-04-22 09:18:58','2026-04-22 09:18:58'),(372,'43.166.162.82',NULL,'2026-04-22 09:29:21','2026-04-22 09:29:21'),(373,'43.131.36.84',NULL,'2026-04-22 09:38:59','2026-04-22 09:38:59'),(374,'170.106.35.153',NULL,'2026-04-22 09:49:54','2026-04-22 09:49:54'),(375,'104.28.156.61',NULL,'2026-04-22 09:59:11','2026-04-22 09:59:11'),(376,'43.173.1.57',NULL,'2026-04-22 09:59:52','2026-04-22 09:59:52'),(377,'43.131.36.84',NULL,'2026-04-22 10:07:55','2026-04-22 10:07:55'),(378,'66.249.65.36',NULL,'2026-04-22 10:09:48','2026-04-22 10:09:48'),(379,'66.249.65.36',NULL,'2026-04-22 10:09:54','2026-04-22 10:09:54'),(380,'43.166.253.58',NULL,'2026-04-22 10:38:02','2026-04-22 10:38:02'),(381,'43.166.136.153',NULL,'2026-04-22 10:50:18','2026-04-22 10:50:18'),(382,'43.166.238.12',NULL,'2026-04-22 11:00:04','2026-04-22 11:00:04'),(383,'144.76.32.238',NULL,'2026-04-22 14:07:19','2026-04-22 14:07:19'),(384,'144.76.32.238',NULL,'2026-04-22 14:07:24','2026-04-22 14:07:24'),(385,'144.76.32.238',NULL,'2026-04-22 14:07:30','2026-04-22 14:07:30'),(386,'144.76.32.238',NULL,'2026-04-22 14:07:35','2026-04-22 14:07:35'),(387,'144.76.32.238',NULL,'2026-04-22 14:07:40','2026-04-22 14:07:40'),(388,'144.76.32.238',NULL,'2026-04-22 14:07:41','2026-04-22 14:07:41'),(389,'144.76.32.238',NULL,'2026-04-22 14:07:48','2026-04-22 14:07:48'),(390,'144.76.32.238',NULL,'2026-04-22 14:07:53','2026-04-22 14:07:53'),(391,'144.76.32.238',NULL,'2026-04-22 14:07:58','2026-04-22 14:07:58'),(392,'144.76.32.238',NULL,'2026-04-22 14:08:04','2026-04-22 14:08:04'),(393,'144.76.32.238',NULL,'2026-04-22 14:08:10','2026-04-22 14:08:10'),(394,'144.76.32.238',NULL,'2026-04-22 14:08:16','2026-04-22 14:08:16'),(395,'144.76.32.238',NULL,'2026-04-22 14:08:22','2026-04-22 14:08:22'),(396,'144.76.32.238',NULL,'2026-04-22 14:08:27','2026-04-22 14:08:27'),(397,'144.76.32.238',NULL,'2026-04-22 14:08:33','2026-04-22 14:08:33'),(398,'144.76.32.238',NULL,'2026-04-22 14:08:44','2026-04-22 14:08:44'),(399,'144.76.32.238',NULL,'2026-04-22 14:08:49','2026-04-22 14:08:49'),(400,'144.76.32.238',NULL,'2026-04-22 14:08:55','2026-04-22 14:08:55'),(401,'144.76.32.238',NULL,'2026-04-22 14:09:01','2026-04-22 14:09:01'),(402,'144.76.32.238',NULL,'2026-04-22 14:09:07','2026-04-22 14:09:07'),(403,'144.76.32.238',NULL,'2026-04-22 14:09:12','2026-04-22 14:09:12'),(404,'144.76.32.238',NULL,'2026-04-22 14:09:19','2026-04-22 14:09:19'),(405,'144.76.32.238',NULL,'2026-04-22 14:09:25','2026-04-22 14:09:25'),(406,'144.76.32.238',NULL,'2026-04-22 14:09:30','2026-04-22 14:09:30'),(407,'144.76.32.238',NULL,'2026-04-22 14:09:41','2026-04-22 14:09:41'),(408,'144.76.32.238',NULL,'2026-04-22 14:09:46','2026-04-22 14:09:46'),(409,'144.76.32.238',NULL,'2026-04-22 14:09:51','2026-04-22 14:09:51'),(410,'49.51.132.100',NULL,'2026-04-22 14:24:43','2026-04-22 14:24:43'),(411,'3.87.134.250',NULL,'2026-04-22 14:26:29','2026-04-22 14:26:29'),(412,'43.130.58.44',NULL,'2026-04-22 14:32:38','2026-04-22 14:32:38'),(413,'43.155.26.193',NULL,'2026-04-22 14:39:16','2026-04-22 14:39:16'),(414,'43.153.113.127',NULL,'2026-04-22 15:08:34','2026-04-22 15:08:34'),(415,'43.157.46.118',NULL,'2026-04-22 15:19:27','2026-04-22 15:19:27'),(416,'43.166.1.243',NULL,'2026-04-22 15:28:38','2026-04-22 15:28:38'),(417,'101.32.15.141',NULL,'2026-04-22 15:47:47','2026-04-22 15:47:47'),(418,'182.44.67.97',NULL,'2026-04-22 16:01:59','2026-04-22 16:01:59'),(419,'43.167.157.80',NULL,'2026-04-22 16:28:38','2026-04-22 16:28:38'),(420,'205.169.39.11',NULL,'2026-04-22 16:37:46','2026-04-22 16:37:46'),(421,'43.133.91.48',NULL,'2026-04-22 16:47:59','2026-04-22 16:47:59'),(422,'43.135.142.7',NULL,'2026-04-22 17:08:17','2026-04-22 17:08:17'),(423,'170.106.35.137',NULL,'2026-04-22 19:40:10','2026-04-22 19:40:10'),(424,'136.116.95.128',NULL,'2026-04-22 19:54:11','2026-04-22 19:54:11'),(425,'142.93.250.62',NULL,'2026-04-22 21:06:16','2026-04-22 21:06:16'),(426,'43.130.102.7',NULL,'2026-04-23 02:06:54','2026-04-23 02:06:54'),(427,'170.106.161.38',NULL,'2026-04-23 02:30:56','2026-04-23 02:30:56'),(428,'43.133.66.51',NULL,'2026-04-23 02:41:25','2026-04-23 02:41:25'),(429,'93.158.91.35',NULL,'2026-04-23 02:43:03','2026-04-23 02:43:03'),(430,'66.249.65.37',NULL,'2026-04-23 04:08:57','2026-04-23 04:08:57'),(431,'84.17.47.114',NULL,'2026-04-23 04:21:18','2026-04-23 04:21:18'),(432,'101.42.46.71',NULL,'2026-04-23 04:37:53','2026-04-23 04:37:53'),(433,'43.134.141.244',NULL,'2026-04-23 08:16:09','2026-04-23 08:16:09'),(434,'43.173.1.69',NULL,'2026-04-23 08:30:05','2026-04-23 08:30:05'),(435,'43.166.136.153',NULL,'2026-04-23 08:45:20','2026-04-23 08:45:20'),(436,'43.131.39.179',NULL,'2026-04-23 08:53:39','2026-04-23 08:53:39'),(437,'43.130.72.40',NULL,'2026-04-23 09:07:44','2026-04-23 09:07:44'),(438,'146.112.163.46',NULL,'2026-04-23 09:48:45','2026-04-23 09:48:45'),(439,'3.18.212.83',NULL,'2026-04-23 09:52:09','2026-04-23 09:52:09'),(440,'43.159.130.67',NULL,'2026-04-23 12:19:16','2026-04-23 12:19:16'),(441,'43.130.12.43',NULL,'2026-04-23 13:32:59','2026-04-23 13:32:59'),(442,'43.130.117.94',NULL,'2026-04-23 15:47:21','2026-04-23 15:47:21'),(443,'5.175.220.196',NULL,'2026-04-23 17:15:48','2026-04-23 17:15:48'),(444,'117.33.163.216',NULL,'2026-04-23 17:17:44','2026-04-23 17:17:44'),(445,'43.156.66.8',NULL,'2026-04-23 17:29:38','2026-04-23 17:29:38'),(446,'43.133.36.219',NULL,'2026-04-23 18:21:22','2026-04-23 18:21:22'),(447,'170.106.167.214',NULL,'2026-04-23 18:48:55','2026-04-23 18:48:55'),(448,'138.197.128.142',NULL,'2026-04-23 19:24:12','2026-04-23 19:24:12'),(449,'74.7.227.51',NULL,'2026-04-23 23:37:26','2026-04-23 23:37:26'),(450,'138.84.54.12',NULL,'2026-04-24 00:51:48','2026-04-24 00:51:48'),(451,'49.51.52.250',NULL,'2026-04-24 01:25:48','2026-04-24 01:25:48'),(452,'43.130.72.177',NULL,'2026-04-24 01:59:36','2026-04-24 01:59:36'),(453,'157.66.56.225',NULL,'2026-04-24 02:12:18','2026-04-24 02:12:18'),(454,'43.128.156.124',NULL,'2026-04-24 02:19:19','2026-04-24 02:19:19'),(455,'192.36.109.116',NULL,'2026-04-24 02:24:05','2026-04-24 02:24:05'),(456,'192.36.109.114',NULL,'2026-04-24 02:24:08','2026-04-24 02:24:08'),(457,'192.36.109.108',NULL,'2026-04-24 02:24:11','2026-04-24 02:24:11'),(458,'192.36.109.125',NULL,'2026-04-24 02:24:13','2026-04-24 02:24:13'),(459,'49.51.233.95',NULL,'2026-04-24 02:29:42','2026-04-24 02:29:42'),(460,'43.157.158.178',NULL,'2026-04-24 02:39:03','2026-04-24 02:39:03'),(461,'43.135.172.89',NULL,'2026-04-24 02:49:18','2026-04-24 02:49:18'),(462,'43.153.123.3',NULL,'2026-04-24 03:20:09','2026-04-24 03:20:09'),(463,'129.226.93.214',NULL,'2026-04-24 03:39:30','2026-04-24 03:39:30'),(464,'150.109.230.210',NULL,'2026-04-24 03:50:39','2026-04-24 03:50:39'),(465,'49.235.136.28',NULL,'2026-04-24 05:50:13','2026-04-24 05:50:13'),(466,'43.134.104.17',NULL,'2026-04-24 07:27:23','2026-04-24 07:27:23'),(467,'43.133.220.37',NULL,'2026-04-24 08:20:34','2026-04-24 08:20:34'),(468,'43.166.162.82',NULL,'2026-04-24 08:29:02','2026-04-24 08:29:02'),(469,'170.106.163.48',NULL,'2026-04-24 09:03:56','2026-04-24 09:03:56'),(470,'43.130.105.21',NULL,'2026-04-24 09:14:12','2026-04-24 09:14:12'),(471,'43.134.93.181',NULL,'2026-04-24 09:34:46','2026-04-24 09:34:46'),(472,'129.226.93.214',NULL,'2026-04-24 09:41:38','2026-04-24 09:41:38'),(473,'43.128.149.102',NULL,'2026-04-24 09:54:13','2026-04-24 09:54:13'),(474,'43.157.67.70',NULL,'2026-04-24 10:04:44','2026-04-24 10:04:44'),(475,'43.166.250.187',NULL,'2026-04-24 10:14:18','2026-04-24 10:14:18'),(476,'43.133.69.37',NULL,'2026-04-24 10:34:28','2026-04-24 10:34:28'),(477,'43.134.53.242',NULL,'2026-04-24 10:37:38','2026-04-24 10:37:38'),(478,'43.130.31.17',NULL,'2026-04-24 10:43:14','2026-04-24 10:43:14'),(479,'43.166.247.155',NULL,'2026-04-24 10:55:07','2026-04-24 10:55:07'),(480,'170.106.180.153',NULL,'2026-04-24 11:13:51','2026-04-24 11:13:51'),(481,'129.226.217.17',NULL,'2026-04-24 11:33:19','2026-04-24 11:33:19'),(482,'43.134.5.250',NULL,'2026-04-24 12:35:34','2026-04-24 12:35:34'),(483,'5.133.192.166',NULL,'2026-04-24 12:37:29','2026-04-24 12:37:29'),(484,'43.156.114.184',NULL,'2026-04-24 14:20:26','2026-04-24 14:20:26'),(485,'54.86.211.59',NULL,'2026-04-24 14:33:05','2026-04-24 14:33:05'),(486,'43.159.149.216',NULL,'2026-04-24 14:54:35','2026-04-24 14:54:35'),(487,'43.156.127.60',NULL,'2026-04-24 14:59:58','2026-04-24 14:59:58'),(488,'138.84.54.12',NULL,'2026-04-25 03:12:56','2026-04-25 03:12:56'),(489,'135.148.195.4',NULL,'2026-04-25 05:11:15','2026-04-25 05:11:15'),(490,'66.249.65.37',NULL,'2026-04-25 05:11:21','2026-04-25 05:11:21'),(491,'66.249.65.36',NULL,'2026-04-25 05:11:29','2026-04-25 05:11:29'),(492,'163.5.102.250',NULL,'2026-04-25 05:49:24','2026-04-25 05:49:24'),(493,'144.76.32.238',NULL,'2026-04-25 06:19:24','2026-04-25 06:19:24'),(494,'144.76.32.238',NULL,'2026-04-25 06:19:24','2026-04-25 06:19:24'),(495,'118.193.44.169',NULL,'2026-04-25 06:48:27','2026-04-25 06:48:27'),(496,'165.154.206.139',NULL,'2026-04-25 06:49:16','2026-04-25 06:49:16'),(497,'204.76.203.25',NULL,'2026-04-25 07:02:16','2026-04-25 07:02:16'),(498,'66.249.65.38',NULL,'2026-04-25 07:41:23','2026-04-25 07:41:23'),(499,'66.249.65.36',NULL,'2026-04-25 08:02:25','2026-04-25 08:02:25'),(500,'43.166.226.186',NULL,'2026-04-25 08:09:30','2026-04-25 08:09:30'),(501,'43.138.68.113',NULL,'2026-04-25 08:36:51','2026-04-25 08:36:51'),(502,'43.130.102.223',NULL,'2026-04-25 08:44:28','2026-04-25 08:44:28'),(503,'43.157.158.178',NULL,'2026-04-25 09:02:50','2026-04-25 09:02:50'),(504,'43.157.50.58',NULL,'2026-04-25 09:23:06','2026-04-25 09:23:06'),(505,'43.130.31.17',NULL,'2026-04-25 09:34:07','2026-04-25 09:34:07'),(506,'43.157.188.74',NULL,'2026-04-25 09:42:55','2026-04-25 09:42:55'),(507,'49.51.252.146',NULL,'2026-04-25 09:52:06','2026-04-25 09:52:06'),(508,'43.133.253.253',NULL,'2026-04-25 10:03:56','2026-04-25 10:03:56'),(509,'43.153.67.21',NULL,'2026-04-25 10:12:26','2026-04-25 10:12:26'),(510,'49.51.183.75',NULL,'2026-04-25 10:23:33','2026-04-25 10:23:33'),(511,'49.51.50.147',NULL,'2026-04-25 10:53:53','2026-04-25 10:53:53'),(512,'49.51.72.236',NULL,'2026-04-25 11:03:09','2026-04-25 11:03:09'),(513,'49.51.196.42',NULL,'2026-04-25 15:38:05','2026-04-25 15:38:05'),(514,'68.183.207.48',NULL,'2026-04-25 18:57:01','2026-04-25 18:57:01'),(515,'144.76.32.238',NULL,'2026-04-25 21:29:33','2026-04-25 21:29:33'),(516,'144.76.32.238',NULL,'2026-04-25 21:29:38','2026-04-25 21:29:38'),(517,'144.76.32.238',NULL,'2026-04-25 21:29:42','2026-04-25 21:29:42'),(518,'144.76.32.238',NULL,'2026-04-25 21:29:47','2026-04-25 21:29:47'),(519,'144.76.32.238',NULL,'2026-04-25 21:29:51','2026-04-25 21:29:51'),(520,'144.76.32.238',NULL,'2026-04-25 21:29:55','2026-04-25 21:29:55'),(521,'144.76.32.238',NULL,'2026-04-25 21:29:59','2026-04-25 21:29:59'),(522,'144.76.32.238',NULL,'2026-04-25 21:30:03','2026-04-25 21:30:03'),(523,'144.76.32.238',NULL,'2026-04-25 21:30:07','2026-04-25 21:30:07'),(524,'144.76.32.238',NULL,'2026-04-25 21:30:11','2026-04-25 21:30:11'),(525,'144.76.32.238',NULL,'2026-04-25 21:30:16','2026-04-25 21:30:16'),(526,'144.76.32.238',NULL,'2026-04-25 21:30:20','2026-04-25 21:30:20'),(527,'43.157.22.109',NULL,'2026-04-25 22:04:27','2026-04-25 22:04:27'),(528,'170.106.180.153',NULL,'2026-04-25 22:30:14','2026-04-25 22:30:14'),(529,'182.44.12.37',NULL,'2026-04-25 22:33:26','2026-04-25 22:33:26'),(530,'119.28.140.106',NULL,'2026-04-25 23:02:38','2026-04-25 23:02:38'),(531,'43.130.47.33',NULL,'2026-04-25 23:20:21','2026-04-25 23:20:21'),(532,'138.84.54.12',NULL,'2026-04-26 04:43:00','2026-04-26 04:43:00'),(533,'43.157.142.101',NULL,'2026-04-26 07:00:07','2026-04-26 07:00:07'),(534,'157.173.122.176',NULL,'2026-04-26 07:05:28','2026-04-26 07:05:28'),(535,'182.42.105.144',NULL,'2026-04-26 11:30:27','2026-04-26 11:30:27'),(536,'20.219.23.189',NULL,'2026-04-26 12:48:49','2026-04-26 12:48:49'),(537,'110.38.250.218',NULL,'2026-04-26 12:56:32','2026-04-26 12:56:32'),(538,'104.28.163.34',NULL,'2026-04-26 13:26:10','2026-04-26 13:26:10'),(539,'3.84.222.235',NULL,'2026-04-26 14:10:54','2026-04-26 14:10:54'),(540,'43.157.150.69',NULL,'2026-04-26 14:14:46','2026-04-26 14:14:46'),(541,'74.7.243.237',NULL,'2026-04-26 17:22:02','2026-04-26 17:22:02'),(542,'49.51.245.241',NULL,'2026-04-26 20:17:50','2026-04-26 20:17:50'),(543,'43.167.245.18',NULL,'2026-04-27 02:54:34','2026-04-27 02:54:34'),(544,'104.28.156.61',NULL,'2026-04-27 08:40:07','2026-04-27 08:40:07'),(545,'194.116.236.215',NULL,'2026-04-27 08:42:07','2026-04-27 08:42:07'),(546,'45.141.148.148',NULL,'2026-04-27 08:42:13','2026-04-27 08:42:13'),(547,'193.31.31.40',NULL,'2026-04-27 08:42:20','2026-04-27 08:42:20'),(548,'198.46.154.22',NULL,'2026-04-27 08:46:42','2026-04-27 08:46:42'),(549,'163.5.102.250',NULL,'2026-04-27 08:57:29','2026-04-27 08:57:29'),(550,'13.223.230.212',NULL,'2026-04-27 09:31:21','2026-04-27 09:31:21'),(551,'43.157.188.74',NULL,'2026-04-27 09:48:52','2026-04-27 09:48:52'),(552,'82.102.18.124',NULL,'2026-04-27 12:53:01','2026-04-27 12:53:01'),(553,'64.23.233.112',NULL,'2026-04-27 13:52:48','2026-04-27 13:52:48'),(554,'170.106.165.186',NULL,'2026-04-27 17:05:35','2026-04-27 17:05:35'),(555,'110.38.254.228',NULL,'2026-04-27 17:39:37','2026-04-27 17:39:37'),(556,'161.35.0.174',NULL,'2026-04-27 18:22:24','2026-04-27 18:22:24'),(557,'5.133.192.203',NULL,'2026-04-27 21:04:47','2026-04-27 21:04:47'),(558,'5.133.192.187',NULL,'2026-04-27 21:04:48','2026-04-27 21:04:48'),(559,'185.12.248.5',NULL,'2026-04-27 21:04:49','2026-04-27 21:04:49'),(560,'5.133.192.188',NULL,'2026-04-27 21:04:50','2026-04-27 21:04:50'),(561,'42.83.147.55',NULL,'2026-04-27 21:31:10','2026-04-27 21:31:10'),(562,'49.51.132.100',NULL,'2026-04-27 23:04:34','2026-04-27 23:04:34'),(563,'43.166.1.243',NULL,'2026-04-27 23:29:00','2026-04-27 23:29:00'),(564,'43.157.168.43',NULL,'2026-04-27 23:35:29','2026-04-27 23:35:29'),(565,'43.153.79.218',NULL,'2026-04-27 23:59:30','2026-04-27 23:59:30'),(566,'43.159.148.221',NULL,'2026-04-28 00:07:13','2026-04-28 00:07:13'),(567,'199.168.150.73',NULL,'2026-04-28 00:18:08','2026-04-28 00:18:08'),(568,'43.130.67.33',NULL,'2026-04-28 00:18:13','2026-04-28 00:18:13'),(569,'162.62.132.25',NULL,'2026-04-28 00:38:55','2026-04-28 00:38:55'),(570,'43.166.142.76',NULL,'2026-04-28 00:48:49','2026-04-28 00:48:49'),(571,'43.153.119.119',NULL,'2026-04-28 00:55:36','2026-04-28 00:55:36'),(572,'43.157.46.118',NULL,'2026-04-28 01:11:40','2026-04-28 01:11:40'),(573,'43.153.15.51',NULL,'2026-04-28 01:18:44','2026-04-28 01:18:44'),(574,'43.157.95.131',NULL,'2026-04-28 01:28:06','2026-04-28 01:28:06'),(575,'43.135.134.127',NULL,'2026-04-28 01:38:06','2026-04-28 01:38:06'),(576,'114.96.103.33',NULL,'2026-04-28 02:15:22','2026-04-28 02:15:22'),(577,'138.84.54.12',NULL,'2026-04-28 02:56:21','2026-04-28 02:56:21'),(578,'43.133.14.237',NULL,'2026-04-28 05:55:34','2026-04-28 05:55:34'),(579,'204.76.203.27',NULL,'2026-04-28 09:57:04','2026-04-28 09:57:04'),(580,'119.28.122.202',NULL,'2026-04-28 11:09:08','2026-04-28 11:09:08'),(581,'66.249.65.37',NULL,'2026-04-28 11:11:55','2026-04-28 11:11:55'),(582,'43.156.232.190',NULL,'2026-04-28 12:12:53','2026-04-28 12:12:53'),(583,'34.60.85.54',NULL,'2026-04-28 14:01:20','2026-04-28 14:01:20'),(584,'66.249.65.38',NULL,'2026-04-28 14:12:06','2026-04-28 14:12:06'),(585,'66.249.65.37',NULL,'2026-04-28 14:12:13','2026-04-28 14:12:13'),(586,'3.80.81.0',NULL,'2026-04-28 14:24:18','2026-04-28 14:24:18'),(587,'106.54.62.156',NULL,'2026-04-28 15:09:04','2026-04-28 15:09:04'),(588,'43.159.46.41',NULL,'2026-04-28 15:26:56','2026-04-28 15:26:56');
/*!40000 ALTER TABLE `guest_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topics`
--

DROP TABLE IF EXISTS `help_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ranking` int NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topics`
--

LOCK TABLES `help_topics` WRITE;
/*!40000 ALTER TABLE `help_topics` DISABLE KEYS */;
INSERT INTO `help_topics` VALUES (1,'vendor_registration','How do I register as a seller?','To register, click on the \"Sign Up\" button, fill in your details, and verify your account via email.',1,1,NULL,NULL),(2,'vendor_registration','What are the fees for selling?','Our platform charges a small commission on each sale. There are no upfront listing fees.',2,1,NULL,NULL),(3,'vendor_registration','How do I upload products?','Log in to your seller account, go to the \"Upload Products\" section, and fill in the product details and images.',3,1,NULL,NULL),(4,'vendor_registration','How do I handle customer inquiries?','You can manage customer inquiries directly through our platform\'s messaging system, ensuring quick and efficient communication.',4,1,NULL,NULL),(5,'vendor_registration','How do I register as a seller?','To register, click on the \"Sign Up\" button, fill in your details, and verify your account via email.',1,1,NULL,NULL),(6,'vendor_registration','What are the fees for selling?','Our platform charges a small commission on each sale. There are no upfront listing fees.',2,1,NULL,NULL),(7,'vendor_registration','How do I upload products?','Log in to your seller account, go to the \"Upload Products\" section, and fill in the product details and images.',3,1,NULL,NULL),(8,'vendor_registration','How do I handle customer inquiries?','You can manage customer inquiries directly through our platform\'s messaging system, ensuring quick and efficient communication.',4,1,NULL,NULL);
/*!40000 ALTER TABLE `help_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `login_setups`
--

DROP TABLE IF EXISTS `login_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_setups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_setups`
--

LOCK TABLES `login_setups` WRITE;
/*!40000 ALTER TABLE `login_setups` DISABLE KEYS */;
INSERT INTO `login_setups` VALUES (1,'login_options','{\"manual_login\":1,\"otp_login\":0,\"social_login\":1}','2024-09-24 07:52:17','2024-09-24 07:52:17'),(2,'social_media_for_login','{\"google\":1,\"facebook\":1,\"apple\":1}','2024-09-24 07:52:17','2024-09-24 07:52:17'),(3,'email_verification','0','2024-09-24 07:52:17','2024-09-24 07:52:17'),(4,'phone_verification','0','2024-09-24 07:52:17','2024-09-24 07:52:17');
/*!40000 ALTER TABLE `login_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loyalty_point_transactions`
--

DROP TABLE IF EXISTS `loyalty_point_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loyalty_point_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `transaction_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,6) NOT NULL DEFAULT '0.000000',
  `debit` decimal(24,6) NOT NULL DEFAULT '0.000000',
  `balance` decimal(24,6) NOT NULL DEFAULT '0.000000',
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loyalty_point_transactions`
--

LOCK TABLES `loyalty_point_transactions` WRITE;
/*!40000 ALTER TABLE `loyalty_point_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `loyalty_point_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_09_08_105159_create_admins_table',1),(5,'2020_09_08_111837_create_admin_roles_table',1),(6,'2020_09_16_142451_create_categories_table',2),(7,'2020_09_16_181753_create_categories_table',3),(8,'2020_09_17_134238_create_brands_table',4),(9,'2020_09_17_203054_create_attributes_table',5),(10,'2020_09_19_112509_create_coupons_table',6),(11,'2020_09_19_161802_create_curriencies_table',7),(12,'2020_09_20_114509_create_sellers_table',8),(13,'2020_09_23_113454_create_shops_table',9),(14,'2020_09_23_115615_create_shops_table',10),(15,'2020_09_23_153822_create_shops_table',11),(16,'2020_09_21_122817_create_products_table',12),(17,'2020_09_22_140800_create_colors_table',12),(18,'2020_09_28_175020_create_products_table',13),(19,'2020_09_28_180311_create_products_table',14),(20,'2020_10_04_105041_create_search_functions_table',15),(21,'2020_10_05_150730_create_customers_table',15),(22,'2020_10_08_133548_create_wishlists_table',16),(23,'2016_06_01_000001_create_oauth_auth_codes_table',17),(24,'2016_06_01_000002_create_oauth_access_tokens_table',17),(25,'2016_06_01_000003_create_oauth_refresh_tokens_table',17),(26,'2016_06_01_000004_create_oauth_clients_table',17),(27,'2016_06_01_000005_create_oauth_personal_access_clients_table',17),(28,'2020_10_06_133710_create_product_stocks_table',17),(29,'2020_10_06_134636_create_flash_deals_table',17),(30,'2020_10_06_134719_create_flash_deal_products_table',17),(31,'2020_10_08_115439_create_orders_table',17),(32,'2020_10_08_115453_create_order_details_table',17),(33,'2020_10_08_121135_create_shipping_addresses_table',17),(34,'2020_10_10_171722_create_business_settings_table',17),(35,'2020_09_19_161802_create_currencies_table',18),(36,'2020_10_12_152350_create_reviews_table',18),(37,'2020_10_12_161834_create_reviews_table',19),(38,'2020_10_12_180510_create_support_tickets_table',20),(39,'2020_10_14_140130_create_transactions_table',21),(40,'2020_10_14_143553_create_customer_wallets_table',21),(41,'2020_10_14_143607_create_customer_wallet_histories_table',21),(42,'2020_10_22_142212_create_support_ticket_convs_table',21),(43,'2020_10_24_234813_create_banners_table',22),(44,'2020_10_27_111557_create_shipping_methods_table',23),(45,'2020_10_27_114154_add_url_to_banners_table',24),(46,'2020_10_28_170308_add_shipping_id_to_order_details',25),(47,'2020_11_02_140528_add_discount_to_order_table',26),(48,'2020_11_03_162723_add_column_to_order_details',27),(49,'2020_11_08_202351_add_url_to_banners_table',28),(50,'2020_11_10_112713_create_help_topic',29),(51,'2020_11_10_141513_create_contacts_table',29),(52,'2020_11_15_180036_add_address_column_user_table',30),(53,'2020_11_18_170209_add_status_column_to_product_table',31),(54,'2020_11_19_115453_add_featured_status_product',32),(55,'2020_11_21_133302_create_deal_of_the_days_table',33),(56,'2020_11_20_172332_add_product_id_to_products',34),(57,'2020_11_27_234439_add__state_to_shipping_addresses',34),(58,'2020_11_28_091929_create_chattings_table',35),(59,'2020_12_02_011815_add_bank_info_to_sellers',36),(60,'2020_12_08_193234_create_social_medias_table',37),(61,'2020_12_13_122649_shop_id_to_chattings',37),(62,'2020_12_14_145116_create_seller_wallet_histories_table',38),(63,'2020_12_14_145127_create_seller_wallets_table',38),(64,'2020_12_15_174804_create_admin_wallets_table',39),(65,'2020_12_15_174821_create_admin_wallet_histories_table',39),(66,'2020_12_15_214312_create_feature_deals_table',40),(67,'2020_12_17_205712_create_withdraw_requests_table',41),(68,'2021_02_22_161510_create_notifications_table',42),(69,'2021_02_24_154706_add_deal_type_to_flash_deals',43),(70,'2021_03_03_204349_add_cm_firebase_token_to_users',44),(71,'2021_04_17_134848_add_column_to_order_details_stock',45),(72,'2021_05_12_155401_add_auth_token_seller',46),(73,'2021_06_03_104531_ex_rate_update',47),(74,'2021_06_03_222413_amount_withdraw_req',48),(75,'2021_06_04_154501_seller_wallet_withdraw_bal',49),(76,'2021_06_04_195853_product_dis_tax',50),(77,'2021_05_27_103505_create_product_translations_table',51),(78,'2021_06_17_054551_create_soft_credentials_table',51),(79,'2021_06_29_212549_add_active_col_user_table',52),(80,'2021_06_30_212619_add_col_to_contact',53),(81,'2021_07_01_160828_add_col_daily_needs_products',54),(82,'2021_07_04_182331_add_col_seller_sales_commission',55),(83,'2021_08_07_190655_add_seo_columns_to_products',56),(84,'2021_08_07_205913_add_col_to_category_table',56),(85,'2021_08_07_210808_add_col_to_shops_table',56),(86,'2021_08_14_205216_change_product_price_col_type',56),(87,'2021_08_16_201505_change_order_price_col',56),(88,'2021_08_16_201552_change_order_details_price_col',56),(89,'2019_09_29_154000_create_payment_cards_table',57),(90,'2021_08_17_213934_change_col_type_seller_earning_history',57),(91,'2021_08_17_214109_change_col_type_admin_earning_history',57),(92,'2021_08_17_214232_change_col_type_admin_wallet',57),(93,'2021_08_17_214405_change_col_type_seller_wallet',57),(94,'2021_08_22_184834_add_publish_to_products_table',57),(95,'2021_09_08_211832_add_social_column_to_users_table',57),(96,'2021_09_13_165535_add_col_to_user',57),(97,'2021_09_19_061647_add_limit_to_coupons_table',57),(98,'2021_09_20_020716_add_coupon_code_to_orders_table',57),(99,'2021_09_23_003059_add_gst_to_sellers_table',57),(100,'2021_09_28_025411_create_order_transactions_table',57),(101,'2021_10_02_185124_create_carts_table',57),(102,'2021_10_02_190207_create_cart_shippings_table',57),(103,'2021_10_03_194334_add_col_order_table',57),(104,'2021_10_03_200536_add_shipping_cost',57),(105,'2021_10_04_153201_add_col_to_order_table',57),(106,'2021_10_07_172701_add_col_cart_shop_info',57),(107,'2021_10_07_184442_create_phone_or_email_verifications_table',57),(108,'2021_10_07_185416_add_user_table_email_verified',57),(109,'2021_10_11_192739_add_transaction_amount_table',57),(110,'2021_10_11_200850_add_order_verification_code',57),(111,'2021_10_12_083241_add_col_to_order_transaction',57),(112,'2021_10_12_084440_add_seller_id_to_order',57),(113,'2021_10_12_102853_change_col_type',57),(114,'2021_10_12_110434_add_col_to_admin_wallet',57),(115,'2021_10_12_110829_add_col_to_seller_wallet',57),(116,'2021_10_13_091801_add_col_to_admin_wallets',57),(117,'2021_10_13_092000_add_col_to_seller_wallets_tax',57),(118,'2021_10_13_165947_rename_and_remove_col_seller_wallet',57),(119,'2021_10_13_170258_rename_and_remove_col_admin_wallet',57),(120,'2021_10_14_061603_column_update_order_transaction',57),(121,'2021_10_15_103339_remove_col_from_seller_wallet',57),(122,'2021_10_15_104419_add_id_col_order_tran',57),(123,'2021_10_15_213454_update_string_limit',57),(124,'2021_10_16_234037_change_col_type_translation',57),(125,'2021_10_16_234329_change_col_type_translation_1',57),(126,'2021_10_27_091250_add_shipping_address_in_order',58),(127,'2021_01_24_205114_create_paytabs_invoices_table',59),(128,'2021_11_20_043814_change_pass_reset_email_col',59),(129,'2021_11_25_043109_create_delivery_men_table',60),(130,'2021_11_25_062242_add_auth_token_delivery_man',60),(131,'2021_11_27_043405_add_deliveryman_in_order_table',60),(132,'2021_11_27_051432_create_delivery_histories_table',60),(133,'2021_11_27_051512_add_fcm_col_for_delivery_man',60),(134,'2021_12_15_123216_add_columns_to_banner',60),(135,'2022_01_04_100543_add_order_note_to_orders_table',60),(136,'2022_01_10_034952_add_lat_long_to_shipping_addresses_table',60),(137,'2022_01_10_045517_create_billing_addresses_table',60),(138,'2022_01_11_040755_add_is_billing_to_shipping_addresses_table',60),(139,'2022_01_11_053404_add_billing_to_orders_table',60),(140,'2022_01_11_234310_add_firebase_toke_to_sellers_table',60),(141,'2022_01_16_121801_change_colu_type',60),(142,'2022_01_22_101601_change_cart_col_type',61),(143,'2022_01_23_031359_add_column_to_orders_table',61),(144,'2022_01_28_235054_add_status_to_admins_table',61),(145,'2022_02_01_214654_add_pos_status_to_sellers_table',61),(146,'2019_12_14_000001_create_personal_access_tokens_table',62),(147,'2022_02_11_225355_add_checked_to_orders_table',62),(148,'2022_02_14_114359_create_refund_requests_table',62),(149,'2022_02_14_115757_add_refund_request_to_order_details_table',62),(150,'2022_02_15_092604_add_order_details_id_to_transactions_table',62),(151,'2022_02_15_121410_create_refund_transactions_table',62),(152,'2022_02_24_091236_add_multiple_column_to_refund_requests_table',62),(153,'2022_02_24_103827_create_refund_statuses_table',62),(154,'2022_03_01_121420_add_refund_id_to_refund_transactions_table',62),(155,'2022_03_10_091943_add_priority_to_categories_table',63),(156,'2022_03_13_111914_create_shipping_types_table',63),(157,'2022_03_13_121514_create_category_shipping_costs_table',63),(158,'2022_03_14_074413_add_four_column_to_products_table',63),(159,'2022_03_15_105838_add_shipping_to_carts_table',63),(160,'2022_03_16_070327_add_shipping_type_to_orders_table',63),(161,'2022_03_17_070200_add_delivery_info_to_orders_table',63),(162,'2022_03_18_143339_add_shipping_type_to_carts_table',63),(163,'2022_04_06_020313_create_subscriptions_table',64),(164,'2022_04_12_233704_change_column_to_products_table',64),(165,'2022_04_19_095926_create_jobs_table',64),(166,'2022_05_12_104247_create_wallet_transactions_table',65),(167,'2022_05_12_104511_add_two_column_to_users_table',65),(168,'2022_05_14_063309_create_loyalty_point_transactions_table',65),(169,'2022_05_26_044016_add_user_type_to_password_resets_table',65),(170,'2022_04_15_235820_add_provider',66),(171,'2022_07_21_101659_add_code_to_products_table',66),(172,'2022_07_26_103744_add_notification_count_to_notifications_table',66),(173,'2022_07_31_031541_add_minimum_order_qty_to_products_table',66),(174,'2022_08_11_172839_add_product_type_and_digital_product_type_and_digital_file_ready_to_products',67),(175,'2022_08_11_173941_add_product_type_and_digital_product_type_and_digital_file_to_order_details',67),(176,'2022_08_20_094225_add_product_type_and_digital_product_type_and_digital_file_ready_to_carts_table',67),(177,'2022_10_04_160234_add_banking_columns_to_delivery_men_table',68),(178,'2022_10_04_161339_create_deliveryman_wallets_table',68),(179,'2022_10_04_184506_add_deliverymanid_column_to_withdraw_requests_table',68),(180,'2022_10_11_103011_add_deliverymans_columns_to_chattings_table',68),(181,'2022_10_11_144902_add_deliverman_id_cloumn_to_reviews_table',68),(182,'2022_10_17_114744_create_order_status_histories_table',68),(183,'2022_10_17_120840_create_order_expected_delivery_histories_table',68),(184,'2022_10_18_084245_add_deliveryman_charge_and_expected_delivery_date',68),(185,'2022_10_18_130938_create_delivery_zip_codes_table',68),(186,'2022_10_18_130956_create_delivery_country_codes_table',68),(187,'2022_10_20_164712_create_delivery_man_transactions_table',68),(188,'2022_10_27_145604_create_emergency_contacts_table',68),(189,'2022_10_29_182930_add_is_pause_cause_to_orders_table',68),(190,'2022_10_31_150604_add_address_phone_country_code_column_to_delivery_men_table',68),(191,'2022_11_05_185726_add_order_id_to_reviews_table',68),(192,'2022_11_07_190749_create_deliveryman_notifications_table',68),(193,'2022_11_08_132745_change_transaction_note_type_to_withdraw_requests_table',68),(194,'2022_11_10_193747_chenge_order_amount_seller_amount_admin_commission_delivery_charge_tax_toorder_transactions_table',68),(195,'2022_12_17_035723_few_field_add_to_coupons_table',69),(196,'2022_12_26_231606_add_coupon_discount_bearer_and_admin_commission_to_orders',69),(197,'2023_01_04_003034_alter_billing_addresses_change_zip',69),(198,'2023_01_05_121600_change_id_to_transactions_table',69),(199,'2023_02_02_113330_create_product_tag_table',70),(200,'2023_02_02_114518_create_tags_table',70),(201,'2023_02_02_152248_add_tax_model_to_products_table',70),(202,'2023_02_02_152718_add_tax_model_to_order_details_table',70),(203,'2023_02_02_171034_add_tax_type_to_carts',70),(204,'2023_02_06_124447_add_color_image_column_to_products_table',70),(205,'2023_02_07_120136_create_withdrawal_methods_table',70),(206,'2023_02_07_175939_add_withdrawal_method_id_and_withdrawal_method_fields_to_withdraw_requests_table',70),(207,'2023_02_08_143314_add_vacation_start_and_vacation_end_and_vacation_not_column_to_shops_table',70),(208,'2023_02_09_104656_add_payment_by_and_payment_not_to_orders_table',70),(209,'2023_03_27_150723_add_expires_at_to_phone_or_email_verifications',71),(210,'2023_04_17_095721_create_shop_followers_table',71),(211,'2023_04_17_111249_add_bottom_banner_to_shops_table',71),(212,'2023_04_20_125423_create_product_compares_table',71),(213,'2023_04_30_165642_add_category_sub_category_and_sub_sub_category_add_in_product_table',71),(214,'2023_05_16_131006_add_expires_at_to_password_resets',71),(215,'2023_05_17_044243_add_visit_count_to_tags_table',71),(216,'2023_05_18_000403_add_title_and_subtitle_and_background_color_and_button_text_to_banners_table',71),(217,'2023_05_21_111300_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_users_table',71),(218,'2023_05_21_111600_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_phone_or_email_verifications_table',71),(219,'2023_05_21_112215_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_password_resets_table',71),(220,'2023_06_04_210726_attachment_lenght_change_to_reviews_table',71),(221,'2023_06_05_115153_add_referral_code_and_referred_by_to_users_table',72),(222,'2023_06_21_002658_add_offer_banner_to_shops_table',72),(223,'2023_07_08_210747_create_most_demandeds_table',72),(224,'2023_07_31_111419_add_minimum_order_amount_to_sellers_table',72),(225,'2023_08_03_105256_create_offline_payment_methods_table',72),(226,'2023_08_07_131013_add_is_guest_column_to_carts_table',72),(227,'2023_08_07_170601_create_offline_payments_table',72),(228,'2023_08_12_102355_create_add_fund_bonus_categories_table',72),(229,'2023_08_12_215346_create_guest_users_table',72),(230,'2023_08_12_215659_add_is_guest_column_to_orders_table',72),(231,'2023_08_12_215933_add_is_guest_column_to_shipping_addresses_table',72),(232,'2023_08_15_000957_add_email_column_toshipping_address_table',72),(233,'2023_08_17_222330_add_identify_related_columns_to_admins_table',72),(234,'2023_08_20_230624_add_sent_by_and_send_to_in_notifications_table',72),(235,'2023_08_20_230911_create_notification_seens_table',72),(236,'2023_08_21_042331_add_theme_to_banners_table',72),(237,'2023_08_24_150009_add_free_delivery_over_amount_and_status_to_seller_table',72),(238,'2023_08_26_161214_add_is_shipping_free_to_orders_table',72),(239,'2023_08_26_173523_add_payment_method_column_to_wallet_transactions_table',72),(240,'2023_08_26_204653_add_verification_status_column_to_orders_table',72),(241,'2023_08_26_225113_create_order_delivery_verifications_table',72),(242,'2023_09_03_212200_add_free_delivery_responsibility_column_to_orders_table',72),(243,'2023_09_23_153314_add_shipping_responsibility_column_to_orders_table',72),(244,'2023_09_25_152733_create_digital_product_otp_verifications_table',72),(245,'2023_09_27_191638_add_attachment_column_to_support_ticket_convs_table',73),(246,'2023_10_01_205117_add_attachment_column_to_chattings_table',73),(247,'2023_10_07_182714_create_notification_messages_table',73),(248,'2023_10_21_113354_add_app_language_column_to_users_table',73),(249,'2023_10_21_123433_add_app_language_column_to_sellers_table',73),(250,'2023_10_21_124657_add_app_language_column_to_delivery_men_table',73),(251,'2023_10_22_130225_add_attachment_to_support_tickets_table',73),(252,'2023_10_25_113233_make_message_nullable_in_chattings_table',73),(253,'2023_10_30_152005_make_attachment_column_type_change_to_reviews_table',73),(254,'2024_01_14_192546_add_slug_to_shops_table',74),(255,'2024_01_25_175421_add_country_code_to_emergency_contacts_table',75),(256,'2024_02_01_200417_add_denied_count_and_approved_count_to_refund_requests_table',75),(257,'2024_03_11_130425_add_seen_notification_and_notification_receiver_to_chattings_table',76),(258,'2024_03_12_123322_update_images_column_in_refund_requests_table',76),(259,'2024_03_21_134659_change_denied_note_column_type_to_text',76),(260,'2024_04_03_093637_create_email_templates_table',77),(261,'2024_04_17_102137_add_is_checked_column_to_carts_table',77),(262,'2024_04_23_130436_create_vendor_registration_reasons_table',77),(263,'2024_04_24_093932_add_type_to_help_topics_table',77),(264,'2024_05_20_133216_create_review_replies_table',78),(265,'2024_05_20_163043_add_image_alt_text_to_brands_table',78),(266,'2024_05_26_152030_create_digital_product_variations_table',78),(267,'2024_05_26_152339_create_product_seos_table',78),(268,'2024_05_27_184401_add_digital_product_file_types_and_digital_product_extensions_to_products_table',78),(269,'2024_05_30_101603_create_storages_table',78),(270,'2024_06_10_174952_create_robots_meta_contents_table',78),(271,'2024_06_12_105137_create_error_logs_table',78),(272,'2024_07_03_130217_add_storage_type_columns_to_product_table',78),(273,'2024_07_03_153301_add_icon_storage_type_to_catogory_table',78),(274,'2024_07_03_171214_add_image_storage_type_to_brands_table',78),(275,'2024_07_03_185048_add_storage_type_columns_to_shop_table',78),(276,'2024_07_31_133306_create_login_setups_table',79),(277,'2024_08_04_123750_add_preview_file_to_products_table',79),(278,'2024_08_04_123805_create_authors_table',79),(279,'2024_08_04_123845_create_publishing_houses_table',79),(280,'2024_08_04_124023_create_digital_product_authors_table',79),(281,'2024_08_04_124046_create_digital_product_publishing_houses_table',79),(282,'2024_08_25_130313_modify_email_column_as_nullable_in_users_table',79),(283,'2024_08_26_130313_modify_token_column_as_text_in_phone_or_email_verifications_table',79),(284,'2024_10_01_130036_add_paid_amount_column_in_orders_table',80),(285,'2024_10_01_131352_create_restock_products_table',80),(286,'2024_10_01_132315_create_restock_product_customers_table',80),(287,'2024_11_02_075917_create_stock_clearance_setups_table',81),(288,'2024_11_02_075931_create_stock_clearance_products_table',81),(289,'2024_11_04_162929_create_analytic_scripts_table',81),(290,'2024_12_26_210457_create_blogs_table',82),(291,'2024_12_26_210615_create_blog_categories_table',82),(292,'2024_12_31_170955_bring_change_amount_column_in_orders_table',82),(293,'2025_01_02_180849_create_blog_translations_table',82),(294,'2025_01_12_104824_create_blog_seos_table',82),(295,'2025_02_10_165648_change_paid_amount_column_typein_orders_table',82),(296,'2025_03_08_201607_create_business_pages_table',83),(297,'2025_03_08_204555_create_attachments_table',83),(298,'2025_04_16_154104_modify_loyalty_point_column_in_users_table',83),(299,'2025_05_19_125200_add_setup_guide_column_in_shops_table',84),(300,'2025_05_25_143452_modify_vacation_column_in_shops_table',84),(301,'2025_05_26_205629_create_recent_searches_table',84),(302,'2025_05_27_202411_create_vendor_withdraw_method_infos_table',84),(303,'2025_06_03_171327_create_referral_customers_table',84),(304,'2025_06_11_171704_add_refer_and_earn_discount_to_orders_table',84),(305,'2025_06_12_202801_add_tin_fields_to_shops_table',84),(306,'2025_06_26_233404_add_stock_limit_to_sellers_table',84),(307,'2025_07_02_181417_modify_coupon_amount_column_in_coupons_table',84),(308,'2025_07_13_021823_modify_wallet_balance_column_in_users_table',84),(309,'2025_07_20_162709_modify_details_column_in_products_table',85),(310,'2025_07_20_162748_modify_value_column_in_translations_table',85),(311,'2025_07_24_104352_create_order_details_rewards_table',85),(312,'2025_07_24_223430_add_deliveryman_assigned_at_column_in_orders_table',85),(313,'2025_07_24_225116_add_refund_started_at_column_in_order_details_table',85),(314,'2025_08_04_103017_add_author_type_to_shops_table',85),(315,'2025_08_06_230845_modify_some_string_column_in_products_table',85),(316,'2025_08_11_213029_modify_product_details_column_in_order_details_table',85),(317,'2025_05_26_115043_create_system_tax_setups_table',86),(318,'2025_05_26_115643_create_taxes_table',86),(319,'2025_05_26_120030_create_tax_additional_setups_table',86),(320,'2025_05_26_120912_create_taxables_table',86),(321,'2025_05_26_121656_create_order_taxes_table',86),(322,'2025_08_23_235027_modify_tax_related_column_in_products_table',86),(323,'2025_08_26_183607_modify_tax_related_column_in_carts_table',86),(324,'2025_08_27_213749_add_total_tax_amount_column_to_orders_table',86),(325,'2025_08_31_222732_modify_amount_related_column_in_carts_table',86),(326,'2025_09_03_105451_modify_cost_column_in_shipping_methods_table',86),(327,'2025_09_03_105619_modify_shipping_cost_column_in_cart_shippings_table',86),(328,'2025_09_03_172258_create_ai_settings_table',86),(329,'2025_09_03_202802_create_ai_setting_logs_table',86),(330,'2025_09_04_174517_add_shop_id_to_order_transactions_table',86),(331,'2025_09_08_174517_add_shop_id_to_products_table',86),(332,'2025_09_15_180617_modify_colors_column_in_products_table',86),(333,'2025_11_04_201638_change_double_to_decimal_in_orders_table',87),(334,'2025_11_06_170735_add_slug_to_brands_table',87),(335,'2025_11_06_185319_create_seo_meta_table',87),(336,'2026_01_11_211839_create_order_edit_histories_table',88),(337,'2026_01_13_165849_add_edited_status_to_orders_table',88),(338,'2026_01_20_152719_add_edit_amounts_to_orders_table',88),(339,'2026_01_22_151155_update_add_fund_bonus_categories_table',88),(340,'2026_01_22_153232_update_admin_wallets_amount_columns',88),(341,'2026_01_22_153441_update_category_shipping_costs_table',88),(342,'2026_01_22_153551_update_customer_wallets_amount_columns',88),(343,'2026_01_22_153805_update_customer_wallet_histories_amount_column',88),(344,'2026_01_22_154413_update_deal_of_the_days_discount_column',88),(345,'2026_01_22_154515_update_deliveryman_wallets_amount_columns',88),(346,'2026_01_22_155945_update_delivery_man_transactions_amount_columns',88),(347,'2026_01_22_160344_update_flash_deal_products_discount_column',88),(348,'2026_01_22_163451_update_loyalty_point_transactions_amount_columns',88),(349,'2026_01_22_163620_update_order_details_amount_columns',88),(350,'2026_01_22_163845_update_order_transactions_amount_columns',88),(351,'2026_01_22_164020_update_payment_requests_amount_column',88),(352,'2026_01_22_164104_update_paytabs_invoices_amount_column',88),(353,'2026_01_22_164214_update_products_price_columns',88),(354,'2026_01_22_164309_update_product_stocks_price_column',88),(355,'2026_01_22_164433_update_referral_customers_amount_columns',88),(356,'2026_01_22_164519_update_refund_requests_amount_column',88),(357,'2026_01_22_164609_update_refund_transactions_amount_column',88),(358,'2026_01_22_164738_update_sellers_money_columns',88),(359,'2026_01_22_164826_update_seller_wallets_money_columns',88),(360,'2026_01_22_164958_update_seller_wallet_histories_amount_column',88),(361,'2026_01_22_165234_update_transactions_amount_column',88),(362,'2026_01_22_165803_update_wallet_transactions_decimal_precision',88),(363,'2026_02_25_163505_add_indexes_to_orders_table',89),(364,'2026_02_25_163601_add_indexes_to_products_table',89),(365,'2026_02_25_163645_add_indexes_to_order_details_table',89),(366,'2026_02_25_163731_add_indexes_to_shops_table',89),(367,'2026_02_26_172145_add_full_phone_to_delivery_men_table',89),(368,'2026_03_10_112011_add_method_type_with_comment_to_withdraw_requests_table',89),(370,'2026_04_20_120000_add_wholesale_tiers_to_products_table',90),(371,'2026_04_21_100000_create_wholesale_pricing_table',90),(372,'2026_04_21_100001_add_wholesale_applied_to_carts_table',90);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `most_demandeds`
--

DROP TABLE IF EXISTS `most_demandeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `most_demandeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `most_demandeds`
--

LOCK TABLES `most_demandeds` WRITE;
/*!40000 ALTER TABLE `most_demandeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `most_demandeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_messages`
--

DROP TABLE IF EXISTS `notification_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_messages`
--

LOCK TABLES `notification_messages` WRITE;
/*!40000 ALTER TABLE `notification_messages` DISABLE KEYS */;
INSERT INTO `notification_messages` VALUES (1,'customer','order_pending_message','order pen message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(2,'customer','order_confirmation_message','Order con Message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(3,'customer','order_processing_message','Order pro Message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(4,'customer','out_for_delivery_message','Order ouut Message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(5,'customer','order_delivered_message','Order del Message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(6,'customer','order_returned_message','Order hh Message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(7,'customer','order_failed_message','Order fa Message',0,'2023-10-30 11:02:55','2026-03-10 06:57:32'),(8,'customer','order_canceled','',0,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(9,'customer','order_refunded_message','customize your order refunded message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(10,'customer','refund_request_canceled_message','customize your refund request canceled message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(11,'customer','message_from_delivery_man','customize your message from delivery man message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(12,'customer','message_from_seller','customize your message from seller message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(13,'customer','fund_added_by_admin_message','customize your fund added by admin message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(14,'seller','new_order_message','customize your new order message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(15,'seller','refund_request_message','customize your refund request message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(16,'seller','order_edit_message','customize your order edit message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(17,'seller','withdraw_request_status_message','customize your withdraw request status message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(18,'seller','message_from_customer','customize your message from customer message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(19,'seller','delivery_man_assign_by_admin_message','customize your delivery man assign by admin message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(20,'seller','order_delivered_message','customize your order delivered message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(21,'seller','order_canceled','customize your order canceled message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(22,'seller','order_refunded_message','customize your order refunded message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(23,'seller','refund_request_canceled_message','customize your refund request canceled message message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(24,'seller','refund_request_status_changed_by_admin','customize your refund request status changed by admin message',1,'2023-10-30 11:02:55','2023-10-30 11:02:55'),(25,'delivery_man','new_order_assigned_message',NULL,1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(26,'delivery_man','expected_delivery_date',NULL,1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(27,'delivery_man','delivery_man_charge','customize your delivery man charge message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(28,'delivery_man','order_canceled','customize your order canceled message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(29,'delivery_man','order_rescheduled_message','customize your order rescheduled message message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(30,'delivery_man','order_edit_message','customize your order edit message message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(31,'delivery_man','message_from_seller','customize your message from seller message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(32,'delivery_man','message_from_admin','customize your message from admin message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(33,'delivery_man','message_from_customer','customize your message from customer message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(34,'delivery_man','cash_collect_by_admin_message','customize your cash collect by admin message message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(35,'delivery_man','cash_collect_by_seller_message','customize your cash collect by seller message message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(36,'delivery_man','withdraw_request_status_message','customize your withdraw request status message message',1,'2023-10-30 11:02:55','2026-04-17 10:05:59'),(37,'seller','product_request_approved_message','customize your product request approved message message',1,'2024-02-19 08:35:38','2024-02-19 08:35:38'),(38,'seller','product_request_rejected_message','customize your product request rejected message message',1,'2024-02-19 08:35:38','2024-02-19 08:35:38'),(39,'customer','your_referred_customer_has_been_place_order','your referred customer has been place order',1,'2025-07-16 09:12:47','2025-07-16 09:12:47'),(40,'customer','your_referred_customer_order_has_been_delivered','your referred customer order has been delivered',1,'2025-07-16 09:12:48','2025-07-16 09:12:48'),(41,'customer','order_edit_message','Order {orderId} edited',1,'2026-02-17 03:36:26','2026-02-17 03:36:26'),(42,'customer','message_from_admin','customize your message from admin message',1,'2026-04-17 09:58:57','2026-04-17 09:58:57'),(43,'customer','order_edit_return_amount_message','customize your order edit return amount message message',1,'2026-04-17 09:58:57','2026-04-17 09:58:57'),(44,'seller','order_edit_due_payment_message','customize your order edit due payment message message',1,'2026-04-17 09:58:57','2026-04-17 09:58:57'),(45,'seller','message_from_delivery_man','customize your message from delivery man message',1,'2026-04-17 09:58:58','2026-04-17 09:58:58');
/*!40000 ALTER TABLE `notification_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_seens`
--

DROP TABLE IF EXISTS `notification_seens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_seens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `notification_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_seens`
--

LOCK TABLES `notification_seens` WRITE;
/*!40000 ALTER TABLE `notification_seens` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_seens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sent_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'system',
  `sent_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_count` int NOT NULL DEFAULT '0',
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('5f4f2cc01f59fa933f99ef412bb0cf4bb1fdebc1cb583ea4a597fad576f08abf852adcbe353df4f7',3,1,'LaravelAuthApp','[]',0,'2026-04-24 07:34:31','2026-04-24 07:34:31','2027-04-24 07:34:31'),('6840b7d4ed685bf2e0dc593affa0bd3b968065f47cc226d39ab09f1422b5a1d9666601f3f60a79c1',98,1,'LaravelAuthApp','[]',1,'2021-07-05 09:25:41','2021-07-05 09:25:41','2022-07-05 15:25:41'),('c42cdd5ae652b8b2cbac4f2f4b496e889e1a803b08672954c8bbe06722b54160e71dce3e02331544',98,1,'LaravelAuthApp','[]',1,'2021-07-05 09:24:36','2021-07-05 09:24:36','2022-07-05 15:24:36'),('c7868361e8cac42a1514831eaf230612670939a5d53252222a4e520f80cf061b583aca40560e2c63',2,1,'LaravelAuthApp','[]',0,'2026-04-16 01:18:25','2026-04-16 01:18:25','2027-04-16 01:18:25');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'6amtech','GEUx5tqkviM6AAQcz4oi1dcm1KtRdJPgw41lj0eI','http://localhost',1,0,0,'2020-10-21 18:27:22','2020-10-21 18:27:22',NULL);
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-10-21 18:27:23','2020-10-21 18:27:23');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_payment_methods`
--

DROP TABLE IF EXISTS `offline_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_informations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_payment_methods`
--

LOCK TABLES `offline_payment_methods` WRITE;
/*!40000 ALTER TABLE `offline_payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `offline_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_payments`
--

DROP TABLE IF EXISTS `offline_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_payments`
--

LOCK TABLES `offline_payments` WRITE;
/*!40000 ALTER TABLE `offline_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `offline_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery_verifications`
--

DROP TABLE IF EXISTS `order_delivery_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_delivery_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery_verifications`
--

LOCK TABLES `order_delivery_verifications` WRITE;
/*!40000 ALTER TABLE `order_delivery_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_delivery_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `digital_file_after_sell` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qty` int NOT NULL DEFAULT '0',
  `price` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `tax` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `discount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `tax_model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'exclude',
  `delivery_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_method_id` bigint DEFAULT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT '1',
  `refund_request` int NOT NULL DEFAULT '0',
  `refund_started_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_details_order_id_delivery_status` (`order_id`,`delivery_status`),
  KEY `idx_order_details_product_id_delivery_status` (`product_id`,`delivery_status`),
  KEY `idx_order_details_seller_id_delivery_status` (`seller_id`,`delivery_status`),
  KEY `idx_order_details_order_id_payment_status` (`order_id`,`payment_status`),
  KEY `idx_order_details_delivery_status` (`delivery_status`),
  KEY `idx_order_details_refund_request` (`refund_request`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,100001,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":3},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":8,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-15T08:48:39.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','canceled','unpaid','2026-04-16 01:19:52','2026-04-16 01:35:54',NULL,'RosyBrown','{\"color\":\"RosyBrown\"}','discount_on_product',0,0,NULL),(2,100002,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":3},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":8,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-15T20:35:54.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','canceled','unpaid','2026-04-16 01:36:52','2026-04-16 01:37:31',NULL,'RosyBrown','{\"color\":\"RosyBrown\"}','discount_on_product',0,0,NULL),(3,100003,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":3},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":8,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-15T20:37:31.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','pending','unpaid','2026-04-17 09:36:32','2026-04-17 09:36:32',NULL,'RosyBrown','{\"color\":\"RosyBrown\"}','discount_on_product',1,0,NULL),(4,100004,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":2},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":7,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-17T04:36:32.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','delivered','unpaid','2026-04-17 09:48:51','2026-04-17 09:53:44',NULL,'RosyBrown','{\"color\":\"RosyBrown\"}','discount_on_product',1,0,NULL),(5,100005,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":6,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-17T04:48:51.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','pending','unpaid','2026-04-17 09:57:33','2026-04-17 09:57:33',NULL,'RosyBrown','{\"color\":\"RosyBrown\"}','discount_on_product',1,0,NULL),(6,100006,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":10,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-17T05:03:46.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','pending','unpaid','2026-04-17 10:04:20','2026-04-17 10:04:20',NULL,'FloralWhite','{\"color\":\"FloralWhite\"}','discount_on_product',1,0,NULL),(7,100007,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":4}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":9,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-17T05:04:20.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','pending','unpaid','2026-04-17 10:09:08','2026-04-17 10:09:08',NULL,'RosyBrown','{\"color\":\"RosyBrown\"}','discount_on_product',1,0,NULL),(8,100008,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":4},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":4}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":8,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-17T05:09:08.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','pending','unpaid','2026-04-17 10:58:30','2026-04-17 10:58:30',NULL,'RosyBrown','{\"color\":\"RosyBrown\"}','discount_on_product',1,0,NULL),(9,100009,1,1,NULL,'{\"id\":1,\"added_by\":\"seller\",\"user_id\":1,\"shop_id\":2,\"name\":\"Vimly Women Blazer Suit\",\"slug\":\"vimly-women-blazer-suit-2U12iR\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"4\\\",\\\"position\\\":2}]\",\"category_id\":3,\"sub_category_id\":4,\"sub_sub_category_id\":null,\"brand_id\":null,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[{\\\"color\\\":\\\"BC8F8F\\\",\\\"image_name\\\":\\\"2026-04-15-69df4bf7573cc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"color\\\":\\\"FFFAF0\\\",\\\"image_name\\\":\\\"2026-04-15-69df50e796f5c.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"thumbnail\":\"2026-04-15-69df4bf77b3eb.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[\\\"#BC8F8F\\\",\\\"#FFFAF0\\\"]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[{\\\"type\\\":\\\"RosyBrown\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-RosyBrown\\\",\\\"qty\\\":3},{\\\"type\\\":\\\"FloralWhite\\\",\\\"price\\\":100,\\\"sku\\\":\\\"VWBS-FloralWhite\\\",\\\"qty\\\":4}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":null,\"tax_type\":null,\"tax_model\":null,\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":7,\"minimum_order_qty\":1,\"details\":\"<h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Product Description:<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.<\\/span><\\/h3><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Specifications:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Material: Polyester blend for durability and comfort.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Fit: Slim fit, tailored design.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sizes: Available in sizes S\\u2013XL.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Colors: Available in Black, Navy Blue, and Beige.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Closure: Single-button front with lapel collar.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Key Features:<\\/span><\\/h3><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Sleek, slim-fit design for a polished, professional look.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Lightweight fabric that\\u2019s comfortable for all-day wear.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Versatile styling for both formal and semi-formal occasions.<\\/span><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">Available in multiple colors to suit your style preferences.<\\/span><\\/li><\\/ol><h3><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\\\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.<\\/span><\\/h3><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2026-04-15T08:27:35.000000Z\",\"updated_at\":\"2026-04-17T05:58:30.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Vimly Women Blazer Suit\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"G6Z4Y1\",\"thumbnail_full_url\":{\"key\":\"2026-04-15-69df4bf77b3eb.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/thumbnail\\/2026-04-15-69df4bf77b3eb.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[{\"color\":\"BC8F8F\",\"image_name\":{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200}},{\"color\":\"FFFAF0\",\"image_name\":{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}}],\"images_full_url\":[{\"key\":\"2026-04-15-69df4bf7573cc.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df4bf7573cc.webp\",\"status\":200},{\"key\":\"2026-04-15-69df50e796f5c.webp\",\"path\":\"https:\\/\\/rareverse.app\\/storage\\/product\\/2026-04-15-69df50e796f5c.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null,\"translations\":[]}',1,100.000000000000,0.000000000000,0.000000000000,'exclude','pending','unpaid','2026-04-17 22:41:34','2026-04-17 22:41:34',NULL,'RosyBrown','{\"color\":\"RosyBrown\"}','discount_on_product',1,0,NULL);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details_rewards`
--

DROP TABLE IF EXISTS `order_details_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details_rewards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `order_details_id` bigint unsigned NOT NULL,
  `reward_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'coupon, loyalty_point and others',
  `reward_details` json DEFAULT NULL,
  `reward_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `reward_delivered` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details_rewards`
--

LOCK TABLES `order_details_rewards` WRITE;
/*!40000 ALTER TABLE `order_details_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_edit_histories`
--

DROP TABLE IF EXISTS `order_edit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_edit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `u_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `edit_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edited_user_id` bigint unsigned DEFAULT NULL,
  `edited_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `order_due_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `order_due_payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paid or unpaid',
  `order_due_payment_info` json DEFAULT NULL,
  `order_due_payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_due_transaction_ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_due_payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_return_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `order_return_payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'pending or returned',
  `order_return_payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_return_payment_info` json DEFAULT NULL,
  `order_return_transaction_ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_return_payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_edit_histories_u_id_unique` (`u_id`),
  KEY `order_edit_histories_order_id_index` (`order_id`),
  KEY `order_edit_histories_edited_user_id_index` (`edited_user_id`),
  KEY `order_edit_histories_order_id_created_at_index` (`order_id`,`created_at`),
  KEY `order_edit_histories_order_due_payment_status_order_id_index` (`order_due_payment_status`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_edit_histories`
--

LOCK TABLES `order_edit_histories` WRITE;
/*!40000 ALTER TABLE `order_edit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_edit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_expected_delivery_histories`
--

DROP TABLE IF EXISTS `order_expected_delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_expected_delivery_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected_delivery_date` date NOT NULL,
  `cause` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_expected_delivery_histories`
--

LOCK TABLES `order_expected_delivery_histories` WRITE;
/*!40000 ALTER TABLE `order_expected_delivery_histories` DISABLE KEYS */;
INSERT INTO `order_expected_delivery_histories` VALUES (1,100004,1,'seller','2026-04-18',NULL,'2026-04-17 09:52:39','2026-04-17 09:52:39'),(2,100005,1,'seller','2026-04-18',NULL,'2026-04-17 09:58:27','2026-04-17 09:58:27'),(3,100006,1,'seller','2026-04-17',NULL,'2026-04-17 10:05:21','2026-04-17 10:05:21'),(4,100006,1,'seller','2026-04-17',NULL,'2026-04-17 10:07:11','2026-04-17 10:07:11'),(5,100007,1,'seller','2026-04-17',NULL,'2026-04-17 10:10:06','2026-04-17 10:10:06'),(6,100008,1,'seller','2026-04-17',NULL,'2026-04-17 11:00:40','2026-04-17 11:00:40'),(7,100009,1,'seller','2026-04-17',NULL,'2026-04-17 22:42:47','2026-04-17 22:42:47');
/*!40000 ALTER TABLE `order_expected_delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status_histories`
--

DROP TABLE IF EXISTS `order_status_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cause` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status_histories`
--

LOCK TABLES `order_status_histories` WRITE;
/*!40000 ALTER TABLE `order_status_histories` DISABLE KEYS */;
INSERT INTO `order_status_histories` VALUES (1,100001,2,'customer','pending',NULL,'2026-04-16 01:19:52','2026-04-16 01:19:52'),(2,100002,2,'customer','pending',NULL,'2026-04-16 01:36:52','2026-04-16 01:36:52'),(3,100003,2,'customer','pending',NULL,'2026-04-17 09:36:32','2026-04-17 09:36:32'),(4,100003,1,'seller','confirmed',NULL,'2026-04-17 09:37:11','2026-04-17 09:37:11'),(5,100003,1,'seller','processing',NULL,'2026-04-17 09:37:39','2026-04-17 09:37:39'),(6,100004,2,'customer','pending',NULL,'2026-04-17 09:48:51','2026-04-17 09:48:51'),(7,100004,1,'seller','out_for_delivery',NULL,'2026-04-17 09:52:39','2026-04-17 09:52:39'),(8,100004,1,'seller','out_for_delivery',NULL,'2026-04-17 09:53:09','2026-04-17 09:53:09'),(9,100004,2,'delivery_man','delivered',NULL,'2026-04-17 09:53:44','2026-04-17 09:53:44'),(10,100005,2,'customer','pending',NULL,'2026-04-17 09:57:33','2026-04-17 09:57:33'),(11,100005,1,'seller','processing',NULL,'2026-04-17 09:58:27','2026-04-17 09:58:27'),(12,100005,1,'seller','pending',NULL,'2026-04-17 10:00:43','2026-04-17 10:00:43'),(13,100005,1,'seller','confirmed',NULL,'2026-04-17 10:00:56','2026-04-17 10:00:56'),(14,100006,2,'customer','pending',NULL,'2026-04-17 10:04:20','2026-04-17 10:04:20'),(15,100006,1,'seller','confirmed',NULL,'2026-04-17 10:05:00','2026-04-17 10:05:00'),(16,100006,1,'seller','confirmed',NULL,'2026-04-17 10:05:22','2026-04-17 10:05:22'),(17,100006,1,'seller','confirmed',NULL,'2026-04-17 10:06:22','2026-04-17 10:06:22'),(18,100006,1,'seller','confirmed',NULL,'2026-04-17 10:06:41','2026-04-17 10:06:41'),(19,100006,1,'seller','confirmed',NULL,'2026-04-17 10:07:11','2026-04-17 10:07:11'),(20,100006,1,'seller','confirmed',NULL,'2026-04-17 10:07:35','2026-04-17 10:07:35'),(21,100007,2,'customer','pending',NULL,'2026-04-17 10:09:08','2026-04-17 10:09:08'),(22,100007,1,'seller','confirmed',NULL,'2026-04-17 10:10:06','2026-04-17 10:10:06'),(23,100007,1,'seller','processing',NULL,'2026-04-17 10:10:21','2026-04-17 10:10:21'),(24,100008,2,'customer','pending',NULL,'2026-04-17 10:58:30','2026-04-17 10:58:30'),(25,100008,1,'seller','confirmed',NULL,'2026-04-17 10:59:50','2026-04-17 10:59:50'),(26,100009,2,'customer','pending',NULL,'2026-04-17 22:41:34','2026-04-17 22:41:34'),(27,100009,1,'seller','confirmed',NULL,'2026-04-17 22:42:47','2026-04-17 22:42:47'),(28,100009,1,'seller','processing',NULL,'2026-04-17 22:43:55','2026-04-17 22:43:55'),(29,100009,2,'delivery_man','out_for_delivery',NULL,'2026-04-17 22:44:15','2026-04-17 22:44:15');
/*!40000 ALTER TABLE `order_status_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_taxes`
--

DROP TABLE IF EXISTS `order_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_on` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` double(23,8) NOT NULL DEFAULT '0.00000000',
  `tax_amount` double(23,8) NOT NULL DEFAULT '0.00000000',
  `before_tax_amount` double(23,8) NOT NULL DEFAULT '0.00000000',
  `after_tax_amount` double(23,8) NOT NULL DEFAULT '0.00000000',
  `tax_payer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `order_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `tax_id` int NOT NULL,
  `taxable_id` int DEFAULT NULL,
  `taxable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `seller_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_tax_setup_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_taxes`
--

LOCK TABLES `order_taxes` WRITE;
/*!40000 ALTER TABLE `order_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_transactions`
--

DROP TABLE IF EXISTS `order_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_transactions` (
  `seller_id` bigint NOT NULL,
  `shop_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint NOT NULL,
  `order_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `seller_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `admin_commission` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `received_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `tax` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_transactions`
--

LOCK TABLES `order_transactions` WRITE;
/*!40000 ALTER TABLE `order_transactions` DISABLE KEYS */;
INSERT INTO `order_transactions` VALUES (1,2,100004,120.000000000000,100.000000000000,0.000000000000,'delivery man','disburse',20.000000000000,0.000000000000,'2026-04-17 09:53:44','2026-04-17 09:53:44',2,'seller','delivery man','cash_on_delivery','5868-6UdAC-1776401624',1);
/*!40000 ALTER TABLE `order_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  `customer_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_ref` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `init_order_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `edit_due_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `edit_return_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `total_tax_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `tax_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `bring_change_amount` decimal(18,12) DEFAULT '0.000000000000',
  `bring_change_amount_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT '0.00',
  `is_pause` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cause` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `discount_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount_bearer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inhouse',
  `shipping_responsibility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint NOT NULL DEFAULT '0',
  `shipping_cost` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `is_shipping_free` tinyint(1) NOT NULL DEFAULT '0',
  `order_group_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def-order-group',
  `verification_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verification_status` tinyint NOT NULL DEFAULT '0',
  `seller_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `delivery_man_id` bigint DEFAULT NULL,
  `deliveryman_assigned_at` timestamp NULL DEFAULT NULL,
  `deliveryman_charge` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `expected_delivery_date` date DEFAULT NULL,
  `order_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `billing_address` bigint unsigned DEFAULT NULL,
  `billing_address_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_type',
  `extra_discount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `extra_discount_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_and_earn_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `free_delivery_bearer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_service_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_party_delivery_tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edited_status` tinyint NOT NULL DEFAULT '0' COMMENT '0 = not edited, 1 = edited',
  PRIMARY KEY (`id`),
  KEY `idx_orders_seller_is_seller_id` (`seller_is`,`seller_id`),
  KEY `idx_orders_status_created_at` (`order_status`,`created_at`),
  KEY `idx_orders_customer_id_status` (`customer_id`,`order_status`),
  KEY `idx_orders_edited_due` (`edited_status`,`edit_due_amount`),
  KEY `idx_orders_edited_return` (`edited_status`,`edit_return_amount`),
  KEY `idx_orders_payment_method_seller_is` (`payment_method`,`seller_is`),
  KEY `idx_orders_seller_id_payment_status` (`seller_id`,`payment_status`),
  KEY `idx_orders_deliveryman_status` (`delivery_man_id`,`order_status`),
  KEY `idx_orders_created_at` (`created_at`),
  KEY `idx_orders_payment_status` (`payment_status`),
  KEY `idx_orders_order_type` (`order_type`),
  KEY `idx_orders_is_guest` (`is_guest`),
  KEY `idx_orders_coupon_code` (`coupon_code`),
  KEY `idx_orders_checked` (`checked`),
  KEY `idx_orders_transaction_ref` (`transaction_ref`),
  KEY `idx_orders_order_group_id` (`order_group_id`),
  KEY `idx_orders_shipping_responsibility` (`shipping_responsibility`)
) ENGINE=InnoDB AUTO_INCREMENT=100010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (100001,'2',0,'customer','unpaid','canceled','cash_on_delivery','',NULL,NULL,105.000000000000,105.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'1','2026-04-16 01:19:52','2026-04-16 01:35:54',0.000000000000,NULL,'0','inhouse','inhouse_shipping',2,5.000000000000,0,'3839-0BZ6c-1776284391','992543',0,1,'seller','{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',NULL,NULL,0.000000000000,NULL,'',1,'{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise',NULL,NULL,NULL,0),(100002,'2',0,'customer','unpaid','canceled','cash_on_delivery','',NULL,NULL,105.000000000000,105.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'1','2026-04-16 01:36:52','2026-04-17 09:35:23',0.000000000000,NULL,'0','inhouse','inhouse_shipping',2,5.000000000000,0,'7644-DhVpo-1776285411','354111',0,1,'seller','{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',NULL,NULL,0.000000000000,NULL,'',1,'{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise',NULL,NULL,NULL,0),(100003,'2',0,'customer','unpaid','processing','cash_on_delivery','',NULL,NULL,105.000000000000,105.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'1','2026-04-17 09:36:32','2026-04-17 09:51:57',0.000000000000,NULL,'0','inhouse','inhouse_shipping',2,5.000000000000,0,'2766-SmzdA-1776400591','512571',0,1,'seller','{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',NULL,NULL,0.000000000000,NULL,'',1,'{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise',NULL,NULL,NULL,0),(100004,'2',0,'customer','paid','delivered','cash_on_delivery','',NULL,NULL,120.000000000000,120.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'1','2026-04-17 09:48:51','2026-04-17 09:53:44',0.000000000000,NULL,'0','inhouse','sellerwise_shipping',9,20.000000000000,0,'5235-8zdPJ-1776401330','270724',0,1,'seller','{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',2,NULL,5.000000000000,'2026-04-18','',1,'{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise','self_delivery',NULL,NULL,0),(100005,'2',0,'customer','unpaid','confirmed','cash_on_delivery','',NULL,NULL,120.000000000000,120.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'1','2026-04-17 09:57:33','2026-04-17 10:00:57',0.000000000000,NULL,'0','inhouse','sellerwise_shipping',9,20.000000000000,0,'6562-CjorB-1776401852','635524',0,1,'seller','{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',2,NULL,5.000000000000,'2026-04-18','',1,'{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise','self_delivery',NULL,NULL,0),(100006,'2',0,'customer','unpaid','confirmed','cash_on_delivery','',NULL,NULL,120.000000000000,120.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'1','2026-04-17 10:04:20','2026-04-17 10:07:36',0.000000000000,NULL,'0','inhouse','sellerwise_shipping',9,20.000000000000,0,'4117-TBYVh-1776402259','978464',0,1,'seller','{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',2,NULL,0.000000000000,'2026-04-17','',1,'{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise','self_delivery',NULL,NULL,0),(100007,'2',0,'customer','unpaid','processing','cash_on_delivery','',NULL,NULL,120.000000000000,120.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'1','2026-04-17 10:09:08','2026-04-17 10:35:20',0.000000000000,NULL,'0','inhouse','sellerwise_shipping',9,20.000000000000,0,'7824-PbaAg-1776402547','150975',0,1,'seller','{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',2,NULL,0.000000000000,'2026-04-17','',1,'{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise','self_delivery',NULL,NULL,0),(100008,'2',0,'customer','unpaid','confirmed','cash_on_delivery','',NULL,NULL,120.000000000000,120.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'2','2026-04-17 10:58:30','2026-04-17 11:00:42',0.000000000000,NULL,'0','inhouse','sellerwise_shipping',9,20.000000000000,0,'7393-MHVih-1776405509','356053',0,1,'seller','{\"id\":2,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',2,'2026-04-17 11:00:11',5.000000000000,'2026-04-17',NULL,3,'{\"id\":3,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":true}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise','self_delivery',NULL,NULL,0),(100009,'2',0,'customer','unpaid','out_for_delivery','cash_on_delivery','',NULL,NULL,120.000000000000,120.000000000000,0.000000000000,0.000000000000,0.000000000000,'order_wise','exclude',0.000000000000,0.000000000000,'USD',0.00,'0',NULL,'1','2026-04-17 22:41:34','2026-04-17 22:45:37',0.000000000000,NULL,'0','inhouse','sellerwise_shipping',9,20.000000000000,0,'9242-QrsqL-1776447693','304656',0,1,'seller','{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}',2,NULL,0.000000000000,'2026-04-17','',1,'{\"id\":1,\"customer_id\":\"2\",\"is_guest\":false,\"contact_person_name\":\"Manzar\",\"email\":null,\"address_type\":\"home\",\"address\":\"Larkana, Pakistan\",\"city\":\"larkana\",\"zip\":\"77150\",\"phone\":\"+923163266622\",\"created_at\":\"2026-04-15T20:19:30.000000Z\",\"updated_at\":\"2026-04-15T20:19:30.000000Z\",\"state\":null,\"country\":\"Pakistan\",\"latitude\":\"27.5570496909107\",\"longitude\":\"68.20276156067848\",\"is_billing\":false}','default_type',0.000000000000,NULL,0.00,NULL,1,'order_wise','self_delivery',NULL,NULL,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `identity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`identity`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('4625090577','4941',0,0,NULL,NULL,'2026-04-21 03:48:34',NULL,'delivery_man',1);
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_requests`
--

DROP TABLE IF EXISTS `payment_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_requests` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `gateway_callback_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_hook` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failure_hook` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `external_redirect_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `attribute_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_requests`
--

LOCK TABLES `payment_requests` WRITE;
/*!40000 ALTER TABLE `payment_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytabs_invoices`
--

DROP TABLE IF EXISTS `paytabs_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paytabs_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_code` int unsigned NOT NULL,
  `pt_invoice_id` int unsigned DEFAULT NULL,
  `amount` decimal(21,12) DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` int unsigned DEFAULT NULL,
  `card_brand` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_first_six_digits` int unsigned DEFAULT NULL,
  `card_last_four_digits` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytabs_invoices`
--

LOCK TABLES `paytabs_invoices` WRITE;
/*!40000 ALTER TABLE `paytabs_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `paytabs_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_or_email_verifications`
--

DROP TABLE IF EXISTS `phone_or_email_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_or_email_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone_or_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_or_email_verifications`
--

LOCK TABLES `phone_or_email_verifications` WRITE;
/*!40000 ALTER TABLE `phone_or_email_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_or_email_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_compares`
--

DROP TABLE IF EXISTS `product_compares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_compares` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL COMMENT 'customer_id',
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_compares`
--

LOCK TABLES `product_compares` WRITE;
/*!40000 ALTER TABLE `product_compares` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_compares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_seos`
--

DROP TABLE IF EXISTS `product_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_seos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_seos`
--

LOCK TABLES `product_seos` WRITE;
/*!40000 ALTER TABLE `product_seos` DISABLE KEYS */;
INSERT INTO `product_seos` VALUES (1,1,'Vimly Women Blazer Suit',NULL,'','','','','0','0','-1','0','-1','0','large','2026-04-15-69df4bf791793.webp','2026-04-15 13:27:35','2026-04-15 13:27:35'),(2,2,'Tarjeta Pokemon Tcg Mega Dragonite Ex - 271/217','item demo demo','noindex','','','','0','0','0','0','0','0','large','2026-04-25-69ebecaabc263.png','2026-04-24 07:38:34','2026-04-25 03:28:50');
/*!40000 ALTER TABLE `product_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_stocks`
--

DROP TABLE IF EXISTS `product_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `qty` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_stocks`
--

LOCK TABLES `product_stocks` WRITE;
/*!40000 ALTER TABLE `product_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `added_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `shop_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `category_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_sub_category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_qty` int NOT NULL DEFAULT '1',
  `refundable` tinyint(1) NOT NULL DEFAULT '1',
  `digital_product_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_file_ready` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_file_ready_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `color_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `preview_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_file_storage_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `featured` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flash_deal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_provider` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variant_product` tinyint(1) NOT NULL DEFAULT '0',
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `choice_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wholesale_tiers` json DEFAULT NULL,
  `digital_product_file_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `digital_product_extensions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `unit_price` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `purchase_price` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `tax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `tax_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'exclude',
  `discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `discount_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_stock` int DEFAULT NULL,
  `minimum_order_qty` int NOT NULL DEFAULT '1',
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `featured_status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` tinyint(1) NOT NULL DEFAULT '0',
  `denied_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_cost` decimal(21,12) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `temp_shipping_cost` decimal(21,12) DEFAULT NULL,
  `is_shipping_cost_updated` tinyint(1) DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_products_added_by_user_id` (`added_by`,`user_id`),
  KEY `idx_products_added_by_request_status` (`added_by`,`request_status`),
  KEY `idx_products_category_id_status` (`category_id`,`status`),
  KEY `idx_products_sub_category_id_status` (`sub_category_id`,`status`),
  KEY `idx_products_sub_sub_category_id_status` (`sub_sub_category_id`,`status`),
  KEY `idx_products_brand_id_status` (`brand_id`,`status`),
  KEY `idx_products_added_by_product_type_user` (`added_by`,`product_type`,`user_id`),
  KEY `idx_products_slug` (`slug`),
  KEY `idx_products_current_stock` (`current_stock`),
  KEY `idx_products_created_at` (`created_at`),
  KEY `idx_products_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'seller',1,2,'Vimly Women Blazer Suit','vimly-women-blazer-suit-2U12iR','physical','[{\"id\":\"3\",\"position\":1},{\"id\":\"4\",\"position\":2}]','3','4',NULL,NULL,'pc',1,1,NULL,'',NULL,'[{\"image_name\":\"2026-04-15-69df4bf7573cc.webp\",\"storage\":\"public\"},{\"image_name\":\"2026-04-15-69df50e796f5c.webp\",\"storage\":\"public\"}]','[{\"color\":\"BC8F8F\",\"image_name\":\"2026-04-15-69df4bf7573cc.webp\",\"storage\":\"public\"},{\"color\":\"FFFAF0\",\"image_name\":\"2026-04-15-69df50e796f5c.webp\",\"storage\":\"public\"}]','2026-04-15-69df4bf77b3eb.webp','public','','public','0',NULL,'youtube',NULL,'[\"#BC8F8F\",\"#FFFAF0\"]',0,'null','[]','[{\"type\":\"RosyBrown\",\"price\":100,\"sku\":\"VWBS-RosyBrown\",\"qty\":30},{\"type\":\"FloralWhite\",\"price\":100,\"sku\":\"VWBS-FloralWhite\",\"qty\":30}]',NULL,'[]','[]',0,100.000000000000,0.000000000000,NULL,NULL,NULL,'0','flat',60,1,'<h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Product Description:</span></h3><h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.</span></h3><h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Specifications:</span></h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Material: Polyester blend for durability and comfort.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Fit: Slim fit, tailored design.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Sizes: Available in sizes S–XL.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Colors: Available in Black, Navy Blue, and Beige.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Closure: Single-button front with lapel collar.</span></li></ol><h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Key Features:</span></h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Sleek, slim-fit design for a polished, professional look.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Lightweight fabric that’s comfortable for all-day wear.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Versatile styling for both formal and semi-formal occasions.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Available in multiple colors to suit your style preferences.</span></li></ol><h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.</span></h3><p><br></p>',0,NULL,'2026-04-15 13:27:35','2026-04-20 19:03:08',1,1,'Vimly Women Blazer Suit',NULL,NULL,1,NULL,0.000000000000,0,NULL,NULL,'G6Z4Y1'),(2,'seller',2,3,'Tarjeta Pokemon Tcg Mega Dragonite Ex - 271/217','ititem-Z5kD5R','physical','[{\"id\":\"1\",\"position\":1}]','1',NULL,NULL,1,'pc',1,1,NULL,NULL,'public','[{\"image_name\":\"2026-04-25-69ebeea118c35.webp\",\"storage\":\"public\"}]','[]','2026-04-25-69ebecaacd3ed.webp','public','',NULL,NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',NULL,'[]','[]',0,899.000000000000,0.000000000000,NULL,NULL,NULL,'15','percent',100,1,'<p>1. Es carta foliada: Sí\r\n2. Cantidad de mazos: 1\r\n3. Nombre de la carta intercambiable: Mega Dragonite EX 271/217\r\n4. Año: 2026.\r\n5. Edición: 2025.\r\n6. Número de la carta intercambiable: 271/217.\r\n7. Tipo de rareza: illustration.\r\n8. Tipo de juego: trading card game.\r\n9. Idioma: inglés.\r\n10. Es carta foliada.\r\n11. Es holográfica.</p>',0,NULL,'2026-04-24 07:38:34','2026-04-25 04:08:33',1,1,'Tarjeta Pokemon Tcg Mega Dragonite Ex - 271/217','item demo demo',NULL,1,NULL,200.000000000000,0,NULL,NULL,'271217');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing_houses`
--

DROP TABLE IF EXISTS `publishing_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing_houses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing_houses`
--

LOCK TABLES `publishing_houses` WRITE;
/*!40000 ALTER TABLE `publishing_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `publishing_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recent_searches`
--

DROP TABLE IF EXISTS `recent_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recent_searches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_full_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent_searches`
--

LOCK TABLES `recent_searches` WRITE;
/*!40000 ALTER TABLE `recent_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `recent_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_customers`
--

DROP TABLE IF EXISTS `referral_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referral_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `refer_by` bigint NOT NULL,
  `ref_by_earning_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `customer_discount_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `customer_discount_amount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_discount_validity` int NOT NULL DEFAULT '0',
  `customer_discount_validity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_notify` tinyint(1) NOT NULL DEFAULT '0',
  `ordered_notify` tinyint(1) NOT NULL DEFAULT '0',
  `delivered_notify` tinyint(1) NOT NULL DEFAULT '0',
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `is_used_by_refer` tinyint(1) NOT NULL DEFAULT '0',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_customers`
--

LOCK TABLES `referral_customers` WRITE;
/*!40000 ALTER TABLE `referral_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `referral_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_requests`
--

DROP TABLE IF EXISTS `refund_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_details_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_count` tinyint NOT NULL DEFAULT '0',
  `denied_count` tinyint NOT NULL DEFAULT '0',
  `amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `product_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `refund_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rejected_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `change_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_requests`
--

LOCK TABLES `refund_requests` WRITE;
/*!40000 ALTER TABLE `refund_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_statuses`
--

DROP TABLE IF EXISTS `refund_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `refund_request_id` bigint unsigned DEFAULT NULL,
  `change_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_by_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_statuses`
--

LOCK TABLES `refund_statuses` WRITE;
/*!40000 ALTER TABLE `refund_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_transactions`
--

DROP TABLE IF EXISTS `refund_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned DEFAULT NULL,
  `payment_for` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` bigint unsigned DEFAULT NULL,
  `payment_receiver_id` bigint unsigned DEFAULT NULL,
  `paid_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `transaction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_details_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_transactions`
--

LOCK TABLES `refund_transactions` WRITE;
/*!40000 ALTER TABLE `refund_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restock_product_customers`
--

DROP TABLE IF EXISTS `restock_product_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restock_product_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `restock_product_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restock_product_customers`
--

LOCK TABLES `restock_product_customers` WRITE;
/*!40000 ALTER TABLE `restock_product_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `restock_product_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restock_products`
--

DROP TABLE IF EXISTS `restock_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restock_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restock_products`
--

LOCK TABLES `restock_products` WRITE;
/*!40000 ALTER TABLE `restock_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `restock_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_replies`
--

DROP TABLE IF EXISTS `review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int NOT NULL,
  `added_by_id` int DEFAULT NULL,
  `added_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'customer, seller, admin, deliveryman',
  `reply_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_replies`
--

LOCK TABLES `review_replies` WRITE;
/*!40000 ALTER TABLE `review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `customer_id` bigint NOT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `is_saved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robots_meta_contents`
--

DROP TABLE IF EXISTS `robots_meta_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robots_meta_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonicals_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robots_meta_contents`
--

LOCK TABLES `robots_meta_contents` WRITE;
/*!40000 ALTER TABLE `robots_meta_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `robots_meta_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_functions`
--

DROP TABLE IF EXISTS `search_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_functions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_for` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_functions`
--

LOCK TABLES `search_functions` WRITE;
/*!40000 ALTER TABLE `search_functions` DISABLE KEYS */;
INSERT INTO `search_functions` VALUES (1,'Dashboard','admin/dashboard','admin',NULL,NULL),(2,'Order All','admin/orders/list/all','admin',NULL,NULL),(3,'Order Pending','admin/orders/list/pending','admin',NULL,NULL),(4,'Order Processed','admin/orders/list/processed','admin',NULL,NULL),(5,'Order Delivered','admin/orders/list/delivered','admin',NULL,NULL),(6,'Order Returned','admin/orders/list/returned','admin',NULL,NULL),(7,'Order Failed','admin/orders/list/failed','admin',NULL,NULL),(8,'Brand Add','admin/brand/add-new','admin',NULL,NULL),(9,'Brand List','admin/brand/list','admin',NULL,NULL),(10,'Banner','admin/banner/list','admin',NULL,NULL),(11,'Category','admin/category/view','admin',NULL,NULL),(12,'Sub Category','admin/category/sub-category/view','admin',NULL,NULL),(13,'Sub sub category','admin/category/sub-sub-category/view','admin',NULL,NULL),(14,'Attribute','admin/attribute/view','admin',NULL,NULL),(15,'Product','admin/product/list','admin',NULL,NULL),(16,'Promotion','admin/coupon/add-new','admin',NULL,NULL),(17,'Custom Role','admin/custom-role/create','admin',NULL,NULL),(18,'Employee','admin/employee/add-new','admin',NULL,NULL),(19,'Seller','admin/sellers/seller-list','admin',NULL,NULL),(20,'Contacts','admin/contact/list','admin',NULL,NULL),(21,'Flash Deal','admin/deal/flash','admin',NULL,NULL),(22,'Deal of the day','admin/deal/day','admin',NULL,NULL),(23,'Language','admin/business-settings/language','admin',NULL,NULL),(24,'Mail','admin/business-settings/mail','admin',NULL,NULL),(25,'Shipping method','admin/business-settings/shipping-method/add','admin',NULL,NULL),(26,'Currency','admin/currency/view','admin',NULL,NULL),(27,'Payment method','admin/business-settings/payment-method','admin',NULL,NULL),(28,'SMS Gateway','admin/business-settings/sms-gateway','admin',NULL,NULL),(29,'Support Ticket','admin/support-ticket/view','admin',NULL,NULL),(30,'FAQ','admin/helpTopic/list','admin',NULL,NULL),(31,'About Us','admin/business-settings/about-us','admin',NULL,NULL),(32,'Terms and Conditions','admin/business-settings/terms-condition','admin',NULL,NULL),(33,'Web Config','admin/business-settings/web-config','admin',NULL,NULL);
/*!40000 ALTER TABLE `search_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_wallet_histories`
--

DROP TABLE IF EXISTS `seller_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_wallet_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `payment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_wallet_histories`
--

LOCK TABLES `seller_wallet_histories` WRITE;
/*!40000 ALTER TABLE `seller_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_wallets`
--

DROP TABLE IF EXISTS `seller_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `total_earning` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `withdrawn` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_given` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `pending_withdraw` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `delivery_charge_earned` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `collected_cash` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `total_tax_collected` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_wallets`
--

LOCK TABLES `seller_wallets` WRITE;
/*!40000 ALTER TABLE `seller_wallets` DISABLE KEYS */;
INSERT INTO `seller_wallets` VALUES (1,1,0.000000000000,0.000000000000,'2026-04-15 13:15:09','2026-04-17 09:53:44',0.000000000000,0.000000000000,20.000000000000,120.000000000000,0.000000000000),(2,2,0.000000000000,0.000000000000,'2026-04-19 01:07:55','2026-04-19 01:07:55',0.000000000000,0.000000000000,0.000000000000,0.000000000000,0.000000000000);
/*!40000 ALTER TABLE `seller_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sales_commission_percentage` decimal(21,12) DEFAULT NULL,
  `gst` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_status` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `free_delivery_status` int NOT NULL DEFAULT '0',
  `free_delivery_over_amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `stock_limit` int NOT NULL DEFAULT '0',
  `app_language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sellers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (1,'Seller','Test','+923163266699','2026-04-15-69df490d55dda.webp','seller@gmail.com','$2y$10$67uUbliNDp3vyJjbZPr5wemULzBQTOykl534Iq0OQXmDo2d1XCb42','approved','rULnRa2e9W1frlQ3DMrLqLJvfLBgN4GVKxJF5x2whQYGFz2jm4HxRVDq6yRR','2026-04-15 13:15:09','2026-04-16 01:35:26',NULL,NULL,NULL,NULL,'CYovxCysJ4r4vCXpiC9arIoDPyVPM7QSO0QUoQsP65YWWYerLV',NULL,NULL,'d4giWJmXRgW7S5PoyD7dTo:APA91bGx2j2Jmmvy7mcK-arXHSSjGgffk6OiOiX-41Uij5xV2JmtZbj_9cCKkV1XScRs0NxBFdi1hH3V6rgp5YMnP06pyPzcDrm9GL1RosvEFSrtWITx2RM',0,0.000000000000,0,0.000000000000,0,'en'),(2,'Oscar','Gamboa','+524423519673','2026-04-19-69e3e49b29895.webp','nnmstdmx@gmail.com','$2y$10$FZBSKyX7ySrL6KwBZ7ddiO/KbjSnlKtHL0tq0mHAdUG044reis87.','approved',NULL,'2026-04-19 01:07:55','2026-04-24 07:36:18',NULL,NULL,NULL,NULL,'Bds79Kx6aYd2oZn7D9sFt0ko3XSxfcX2tgxBjCaYpNt9p35Mo0',NULL,NULL,'f62oMKlcSK6hvAPLrpUVLW:APA91bGj1LFxDf_RsEX72dwRLxcqbSsX-9PxWp51iKslzzBI5ZIaZuIqBhYrDvN6KKZZnI3MRDOf0-vXV3AryiqTi_A-c8PaFDiZ6kc6z9CrR-TLLi1eZFc',0,0.000000000000,0,0.000000000000,0,'es');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta_info`
--

DROP TABLE IF EXISTS `seo_meta_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seo_meta_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seoable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seoable_id` bigint unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta_info`
--

LOCK TABLES `seo_meta_info` WRITE;
/*!40000 ALTER TABLE `seo_meta_info` DISABLE KEYS */;
INSERT INTO `seo_meta_info` VALUES (1,'App\\Models\\Category',1,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-14-69de1ad92cc43.webp','2026-04-14 16:45:45','2026-04-14 16:45:45'),(2,'App\\Models\\Category',2,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-18-69e332c76cae3.png','2026-04-14 16:46:16','2026-04-18 12:29:11'),(3,'App\\Models\\Category',3,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-18-69e332f1a2a59.png','2026-04-14 16:46:47','2026-04-18 12:29:53'),(4,'App\\Models\\Category',4,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0',NULL,'2026-04-15 13:29:14','2026-04-15 13:29:14'),(5,'App\\Models\\Category',5,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea796bb61e9.webp','2026-04-24 00:56:27','2026-04-24 00:56:27'),(6,'App\\Models\\Category',6,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea79c41f360.webp','2026-04-24 00:57:56','2026-04-24 00:57:56'),(7,'App\\Models\\Category',7,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea79d8c180c.webp','2026-04-24 00:58:16','2026-04-24 00:58:16'),(8,'App\\Models\\Category',8,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea79ee54f5f.webp','2026-04-24 00:58:38','2026-04-24 00:58:38'),(9,'App\\Models\\Category',9,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7a1533ecc.webp','2026-04-24 00:59:17','2026-04-24 00:59:17'),(10,'App\\Models\\Category',10,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7a35384e5.webp','2026-04-24 00:59:49','2026-04-24 00:59:49'),(11,'App\\Models\\Category',11,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7a503a18a.webp','2026-04-24 01:00:16','2026-04-24 01:00:16'),(12,'App\\Models\\Category',12,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7a7f9ceb2.webp','2026-04-24 01:01:03','2026-04-24 01:01:03'),(13,'App\\Models\\Brand',1,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7ac614200.webp','2026-04-24 01:02:14','2026-04-24 01:02:14'),(14,'App\\Models\\Brand',2,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b2110269.webp','2026-04-24 01:03:45','2026-04-24 01:03:45'),(15,'App\\Models\\Brand',3,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b2de1263.webp','2026-04-24 01:03:57','2026-04-24 01:03:57'),(16,'App\\Models\\Brand',4,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b3a23969.webp','2026-04-24 01:04:10','2026-04-24 01:04:10'),(17,'App\\Models\\Brand',5,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b4581f40.webp','2026-04-24 01:04:21','2026-04-24 01:04:21'),(18,'App\\Models\\Brand',6,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b5016006.webp','2026-04-24 01:04:32','2026-04-24 01:04:32'),(19,'App\\Models\\Brand',7,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b64a2708.webp','2026-04-24 01:04:52','2026-04-24 01:04:52'),(20,'App\\Models\\Brand',8,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b6f9c9ae.webp','2026-04-24 01:05:03','2026-04-24 01:05:03'),(21,'App\\Models\\Brand',9,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b7ee6a4c.webp','2026-04-24 01:05:18','2026-04-24 01:05:18'),(22,'App\\Models\\Brand',10,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7b8555b9a.webp','2026-04-24 01:05:25','2026-04-24 01:05:25'),(23,'App\\Models\\Brand',11,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7bbf6142f.webp','2026-04-24 01:06:23','2026-04-24 01:06:23'),(24,'App\\Models\\Brand',12,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7bd24e437.webp','2026-04-24 01:06:42','2026-04-24 01:06:42'),(25,'App\\Models\\Brand',13,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7bda041ae.webp','2026-04-24 01:06:50','2026-04-24 01:06:50'),(26,'App\\Models\\Brand',14,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7bed313be.webp','2026-04-24 01:07:09','2026-04-24 01:07:09'),(27,'App\\Models\\Brand',15,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7bfa4f87c.webp','2026-04-24 01:07:22','2026-04-24 01:07:22'),(28,'App\\Models\\Brand',16,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7c0c609cc.webp','2026-04-24 01:07:40','2026-04-24 01:07:40'),(29,'App\\Models\\Brand',17,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7c142d670.webp','2026-04-24 01:07:48','2026-04-24 01:07:48'),(30,'App\\Models\\Brand',18,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7c377065f.webp','2026-04-24 01:08:23','2026-04-24 01:08:23'),(31,'App\\Models\\Brand',19,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7c7dee2bf.webp','2026-04-24 01:09:33','2026-04-24 01:09:33'),(32,'App\\Models\\Brand',20,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7c886a701.webp','2026-04-24 01:09:44','2026-04-24 01:09:44'),(33,'App\\Models\\Brand',21,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7c9d3ad82.webp','2026-04-24 01:10:05','2026-04-24 01:10:05'),(34,'App\\Models\\Brand',22,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7ca8a25d0.webp','2026-04-24 01:10:16','2026-04-24 01:10:16'),(35,'App\\Models\\Brand',23,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7cb8480af.webp','2026-04-24 01:10:32','2026-04-24 01:10:32'),(36,'App\\Models\\Brand',24,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7cc1283da.webp','2026-04-24 01:10:41','2026-04-24 01:10:41'),(37,'App\\Models\\Brand',25,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7cce20649.webp','2026-04-24 01:10:54','2026-04-24 01:10:54'),(38,'App\\Models\\Brand',26,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ea7cdcdb73e.webp','2026-04-24 01:11:08','2026-04-24 01:11:08'),(39,'App\\Models\\Brand',27,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ead55e85571.webp','2026-04-24 07:28:46','2026-04-24 07:28:46'),(40,'App\\Models\\Brand',28,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ead570ce2af.webp','2026-04-24 07:29:04','2026-04-24 07:29:04'),(41,'App\\Models\\Brand',29,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ead59b783d6.webp','2026-04-24 07:29:47','2026-04-24 07:29:47'),(42,'App\\Models\\Brand',30,NULL,NULL,'noindex','','','','0','0','0','0','0','0','0','2026-04-24-69ead63c39e76.webp','2026-04-24 07:32:28','2026-04-24 07:32:28');
/*!40000 ALTER TABLE `seo_meta_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  `contact_person_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_billing` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
INSERT INTO `shipping_addresses` VALUES (1,'2',0,'Manzar',NULL,'home','Larkana, Pakistan','larkana','77150','+923163266622','2026-04-16 01:19:30','2026-04-16 01:19:30',NULL,'Pakistan','27.5570496909107','68.20276156067848',0),(2,'0',0,'Manzar',NULL,'home','Larkana, Pakistan','larkana','77150','+923163266622',NULL,NULL,NULL,'Pakistan','27.5570496909107','68.20276156067848',0),(3,'0',0,'Manzar',NULL,'home','Larkana, Pakistan','larkana','77150','+923163266622',NULL,NULL,NULL,'Pakistan','27.5570496909107','68.20276156067848',1);
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` bigint DEFAULT NULL,
  `creator_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `duration` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_methods`
--

LOCK TABLES `shipping_methods` WRITE;
/*!40000 ALTER TABLE `shipping_methods` DISABLE KEYS */;
INSERT INTO `shipping_methods` VALUES (2,1,'admin','Company Vehicle',5.000000000000,'2 Week',1,'2021-05-25 20:57:04','2021-05-25 20:57:04'),(9,1,'seller','Standered',20.000000000000,'3',1,'2026-04-17 09:47:47','2026-04-17 09:47:47');
/*!40000 ALTER TABLE `shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_types`
--

DROP TABLE IF EXISTS `shipping_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned DEFAULT NULL,
  `shipping_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_types`
--

LOCK TABLES `shipping_types` WRITE;
/*!40000 ALTER TABLE `shipping_types` DISABLE KEYS */;
INSERT INTO `shipping_types` VALUES (1,0,'order_wise','2026-04-14 16:15:39','2026-04-14 16:15:39');
/*!40000 ALTER TABLE `shipping_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_followers`
--

DROP TABLE IF EXISTS `shop_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_followers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'Customer ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_followers`
--

LOCK TABLES `shop_followers` WRITE;
/*!40000 ALTER TABLE `shop_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vendor' COMMENT 'vendor, admin',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `image_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `bottom_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_banner_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `offer_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_banner_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `vacation_start_date` datetime DEFAULT NULL,
  `vacation_end_date` datetime DEFAULT NULL,
  `vacation_duration_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacation_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacation_status` tinyint NOT NULL DEFAULT '0',
  `temporary_close` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `setup_guide` json DEFAULT NULL,
  `tax_identification_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_expire_date` date DEFAULT NULL,
  `tin_certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_certificate_storage_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `setup_guide_app` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_shops_seller_id_author_type` (`seller_id`,`author_type`),
  KEY `idx_shops_author_type` (`author_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,0,'admin','Rareverse','rareverse-9726','','000000000','2021-03-02-603df1634614f.png','public','','public','','public',NULL,NULL,'until_change','',0,0,'2025-08-12 06:45:54','2026-04-14 16:15:40','','public',NULL,NULL,NULL,NULL,'public',NULL),(2,1,'vendor','Shop','shop-nizzWw','Larkana','+923163266699','2026-04-15-69df490d8527c.webp','public','def.png','public',NULL,'public',NULL,NULL,NULL,NULL,0,0,'2026-04-15 13:15:09','2026-04-15 19:04:42','2026-04-15-69df490d9b0d4.webp','public',NULL,'123415','2026-12-03',NULL,NULL,'{\"shop_setup\": 0, \"order_setup\": 0, \"withdraw_setup\": 0, \"add_new_product\": 1, \"payment_information\": 0}'),(3,2,'vendor','Limitediton','en','Ingnacio Perez Sur 28, el carrizal, 7030, Queretaro','+524423519673','2026-04-19-69e3e49b62a1e.webp','public','def.webp',NULL,NULL,'public',NULL,NULL,NULL,NULL,0,0,'2026-04-19 01:07:55','2026-04-21 03:53:30','2026-04-19-69e3e49bbbe87.webp','public',NULL,'',NULL,NULL,NULL,'{\"shop_setup\": 0, \"order_setup\": 0, \"withdraw_setup\": 0, \"add_new_product\": 1, \"payment_information\": 0}');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_medias`
--

DROP TABLE IF EXISTS `social_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_medias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_medias`
--

LOCK TABLES `social_medias` WRITE;
/*!40000 ALTER TABLE `social_medias` DISABLE KEYS */;
INSERT INTO `social_medias` VALUES (1,'twitter','https://www.w3schools.com/howto/howto_css_table_responsive.asp','fa fa-twitter',1,1,'2020-12-31 21:18:03','2020-12-31 21:18:25'),(2,'linkedin','https://dev.6amtech.com/','fa fa-linkedin',1,1,'2021-02-27 16:23:01','2021-02-27 16:23:05'),(3,'google-plus','https://dev.6amtech.com/','fa fa-google-plus-square',1,1,'2021-02-27 16:23:30','2021-02-27 16:23:33'),(4,'pinterest','https://dev.6amtech.com/','fa fa-pinterest',1,1,'2021-02-27 16:24:14','2021-02-27 16:24:26'),(5,'instagram','https://dev.6amtech.com/','fa fa-instagram',1,1,'2021-02-27 16:24:36','2021-02-27 16:24:41'),(6,'facebook','facebook.com','fa fa-facebook',1,1,'2021-02-27 19:19:42','2021-06-11 17:41:59');
/*!40000 ALTER TABLE `social_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_credentials`
--

DROP TABLE IF EXISTS `soft_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soft_credentials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_credentials`
--

LOCK TABLES `soft_credentials` WRITE;
/*!40000 ALTER TABLE `soft_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `soft_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_clearance_products`
--

DROP TABLE IF EXISTS `stock_clearance_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_clearance_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `added_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int DEFAULT NULL,
  `setup_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `shop_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `discount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'percentage',
  `discount_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_clearance_products`
--

LOCK TABLES `stock_clearance_products` WRITE;
/*!40000 ALTER TABLE `stock_clearance_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_clearance_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_clearance_setups`
--

DROP TABLE IF EXISTS `stock_clearance_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_clearance_setups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `setup_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `shop_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `discount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'percentage',
  `discount_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `offer_active_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_active_range_start` time DEFAULT NULL,
  `offer_active_range_end` time DEFAULT NULL,
  `show_in_homepage` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_homepage_once` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_shop` tinyint(1) NOT NULL DEFAULT '1',
  `duration_start_date` timestamp NULL DEFAULT NULL,
  `duration_end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_clearance_setups`
--

LOCK TABLES `stock_clearance_setups` WRITE;
/*!40000 ALTER TABLE `stock_clearance_setups` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_clearance_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `storages_data_id_index` (`data_id`),
  KEY `storages_value_index` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (1,'App\\Models\\Seller','1','image','public','2026-04-15 13:15:09','2026-04-15 13:15:09'),(2,'App\\Models\\ProductSeo','1','image','public','2026-04-15 13:27:35','2026-04-15 13:27:35'),(3,'App\\Models\\DeliveryMan','1','image','public','2026-04-16 01:45:08','2026-04-16 01:45:08'),(4,'App\\Models\\DeliveryMan','2','image','public','2026-04-17 09:51:01','2026-04-17 09:51:01'),(5,'App\\Models\\Seller','2','image','public','2026-04-19 01:07:55','2026-04-19 01:07:55'),(6,'App\\Models\\DeliveryMan','3','image','public','2026-04-21 03:48:23','2026-04-21 03:48:23'),(7,'App\\Models\\ProductSeo','2','image','public','2026-04-25 03:28:50','2026-04-25 03:28:50');
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'mwnkrltn@immenseignite.info','2026-04-27 08:42:13','2026-04-27 08:42:13'),(2,'yeedhwyx@immenseignite.info','2026-04-27 08:46:42','2026-04-27 08:46:42');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_ticket_convs`
--

DROP TABLE IF EXISTS `support_ticket_convs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_ticket_convs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `support_ticket_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `customer_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `admin_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_ticket_convs`
--

LOCK TABLES `support_ticket_convs` WRITE;
/*!40000 ALTER TABLE `support_ticket_convs` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_ticket_convs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `subject` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'low',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_tickets`
--

LOCK TABLES `support_tickets` WRITE;
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_tax_setups`
--

DROP TABLE IF EXISTS `system_tax_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_tax_setups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'order_wise',
  `country_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_payer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'vendor',
  `tax_ids` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_included` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_tax_setups_country_code_index` (`country_code`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_tax_setups`
--

LOCK TABLES `system_tax_setups` WRITE;
/*!40000 ALTER TABLE `system_tax_setups` DISABLE KEYS */;
INSERT INTO `system_tax_setups` VALUES (1,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-14 16:34:30','2026-04-14 16:34:30'),(2,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-14 19:34:54','2026-04-14 19:34:54'),(3,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-15 13:18:14','2026-04-15 13:18:14'),(4,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-15 13:48:38','2026-04-15 13:48:38'),(5,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-15 14:59:21','2026-04-15 14:59:21'),(6,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-15 18:13:54','2026-04-15 18:13:54'),(7,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-15 18:59:22','2026-04-15 18:59:22'),(8,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-15 21:35:56','2026-04-15 21:35:56'),(9,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-16 00:54:57','2026-04-16 00:54:57'),(10,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-16 01:36:06','2026-04-16 01:36:06'),(11,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-17 09:35:23','2026-04-17 09:35:23'),(12,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-17 10:05:23','2026-04-17 10:05:23'),(13,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-17 10:57:24','2026-04-17 10:57:24'),(14,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-17 22:41:04','2026-04-17 22:41:04'),(15,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-18 07:52:11','2026-04-18 07:52:11'),(16,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-18 08:42:17','2026-04-18 08:42:17'),(17,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-18 12:15:14','2026-04-18 12:15:14'),(18,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-18 12:39:13','2026-04-18 12:39:13'),(19,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-18 14:56:34','2026-04-18 14:56:34'),(20,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-18 23:49:08','2026-04-18 23:49:08'),(21,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-19 00:21:53','2026-04-19 00:21:53'),(22,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-19 01:26:15','2026-04-19 01:26:15'),(23,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-19 09:42:10','2026-04-19 09:42:10'),(24,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-20 00:15:42','2026-04-20 00:15:42'),(25,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-20 18:53:52','2026-04-20 18:53:52'),(26,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-20 18:58:10','2026-04-20 18:58:10'),(27,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-20 19:02:35','2026-04-20 19:02:35'),(28,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-21 00:27:24','2026-04-21 00:27:24'),(29,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-21 05:49:15','2026-04-21 05:49:15'),(30,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-21 23:07:19','2026-04-21 23:07:19'),(31,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-24 00:54:20','2026-04-24 00:54:20'),(32,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-24 07:33:06','2026-04-24 07:33:06'),(33,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-25 03:14:19','2026-04-25 03:14:19'),(34,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-25 04:07:45','2026-04-25 04:07:45'),(35,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-25 06:10:27','2026-04-25 06:10:27'),(36,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-27 07:50:59','2026-04-27 07:50:59'),(37,'order_wise',NULL,'vendor',NULL,1,0,0,'2026-04-27 17:49:00','2026-04-27 17:49:00');
/*!40000 ALTER TABLE `system_tax_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_count` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_additional_setups`
--

DROP TABLE IF EXISTS `tax_additional_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_additional_setups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_tax_setup_id` bigint unsigned DEFAULT NULL,
  `tax_ids` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tax_additional_setups_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_additional_setups`
--

LOCK TABLES `tax_additional_setups` WRITE;
/*!40000 ALTER TABLE `tax_additional_setups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_additional_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxables`
--

DROP TABLE IF EXISTS `taxables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `taxable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxable_id` bigint unsigned NOT NULL,
  `tax_id` bigint unsigned NOT NULL,
  `system_tax_setup_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxables`
--

LOCK TABLES `taxables` WRITE;
/*!40000 ALTER TABLE `taxables` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` double(23,8) NOT NULL DEFAULT '0.00000000',
  `country_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taxes_country_code_index` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `payment_for` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` bigint DEFAULT NULL,
  `payment_receiver_id` bigint DEFAULT NULL,
  `paid_by` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_to` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` decimal(21,12) NOT NULL DEFAULT '0.000000000000',
  `transaction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_details_id` bigint unsigned DEFAULT NULL,
  UNIQUE KEY `transactions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `translationable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint unsigned NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `translations_translationable_id_index` (`translationable_id`),
  KEY `translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES ('App\\Models\\Category',1,'mx','name','Cartas TCG',1),('App\\Models\\Category',2,'mx','name','Juguetes',2),('App\\Models\\Category',3,'mx','name','Monedas y billetes',3),('App\\Models\\Product',1,'mx','name','Vimly Women Blazer Suit',4),('App\\Models\\Product',1,'mx','description','<h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Product Description:</span></h3><h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Exude confidence and professionalism with the Vimly Women Blazer Suit, designed for the modern woman. Made from high-quality fabric, this tailored blazer features a slim fit that flatters your silhouette, making it perfect for both work and formal events. Pair it with matching trousers or a skirt to create a chic, polished look. Comfortable, versatile, and stylish, this blazer is a must-have addition to your wardrobe.</span></h3><h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Specifications:</span></h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Material: Polyester blend for durability and comfort.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Fit: Slim fit, tailored design.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Sizes: Available in sizes S–XL.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Colors: Available in Black, Navy Blue, and Beige.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Closure: Single-button front with lapel collar.</span></li></ol><h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Key Features:</span></h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Sleek, slim-fit design for a polished, professional look.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Lightweight fabric that’s comfortable for all-day wear.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Versatile styling for both formal and semi-formal occasions.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">Available in multiple colors to suit your style preferences.</span></li></ol><h3><span style=\"background-color: rgb(255, 255, 255); color: rgb(34, 35, 36);\">The Vimly Women Blazer Suit is perfect for those who want to look sharp and stylish, whether at the office or a special event.</span></h3><p><br></p>',5),('App\\Models\\Category',5,'mx','name','Videojuegos',6),('App\\Models\\Category',6,'mx','name','Cómics',7),('App\\Models\\Category',7,'mx','name','Musica',8),('App\\Models\\Category',8,'mx','name','Peliculas',9),('App\\Models\\Category',9,'mx','name','Artículos de Lujo',10),('App\\Models\\Category',10,'mx','name','Arte',11),('App\\Models\\Category',11,'mx','name','Deportes',12),('App\\Models\\Category',12,'mx','name','Otros',13),('App\\Models\\Brand',1,'mx','name','Pokémon',14),('App\\Models\\Brand',2,'mx','name','Yu-Gi-Oh!',15),('App\\Models\\Brand',3,'mx','name','Magic: The Gathering',16),('App\\Models\\Brand',4,'mx','name','NBA',17),('App\\Models\\Brand',5,'mx','name','NFL',18),('App\\Models\\Brand',6,'mx','name','MLB',19),('App\\Models\\Brand',7,'mx','name','FIFA',20),('App\\Models\\Brand',8,'mx','name','Digimon',21),('App\\Models\\Brand',9,'mx','name','One Piece',22),('App\\Models\\Brand',10,'mx','name','Dragon Ball',23),('App\\Models\\Brand',11,'mx','name','Funko Pop',24),('App\\Models\\Brand',12,'mx','name','Marvel',25),('App\\Models\\Brand',13,'mx','name','DC',26),('App\\Models\\Brand',14,'mx','name','Hot Toys',27),('App\\Models\\Brand',15,'mx','name','LEGO',28),('App\\Models\\Brand',16,'mx','name','NES',29),('App\\Models\\Brand',17,'mx','name','SNES',30),('App\\Models\\Brand',18,'mx','name','Panini',31),('App\\Models\\Brand',19,'mx','name','Topps',32),('App\\Models\\Brand',20,'mx','name','Upper Deck',33),('App\\Models\\Brand',21,'mx','name','Bandai',34),('App\\Models\\Brand',22,'mx','name','Banpresto',35),('App\\Models\\Brand',23,'mx','name','Good Smile Company',36),('App\\Models\\Brand',24,'mx','name','McFarlane Toys',37),('App\\Models\\Brand',25,'mx','name','Hasbro',38),('App\\Models\\Brand',28,'mx','name','Mezco',39),('App\\Models\\Brand',29,'mx','name','Bandai Namco',40),('App\\Models\\Brand',30,'mx','name','Toei Animation',41),('App\\Models\\Product',2,'mx','name','Tarjeta Pokemon Tcg Mega Dragonite Ex - 271/217',42),('App\\Models\\Product',2,'mx','description','<p>1. Es carta foliada: Sí\r\n2. Cantidad de mazos: 1\r\n3. Nombre de la carta intercambiable: Mega Dragonite EX 271/217\r\n4. Año: 2026.\r\n5. Edición: 2025.\r\n6. Número de la carta intercambiable: 271/217.\r\n7. Tipo de rareza: illustration.\r\n8. Tipo de juego: trading card game.\r\n9. Idioma: inglés.\r\n10. Es carta foliada.\r\n11. Es holográfica.</p>',43);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street_address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `payment_card_last_four` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_card_brand` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_card_fawry_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login_medium` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT '0',
  `temporary_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `wallet_balance` decimal(18,12) DEFAULT NULL,
  `loyalty_point` decimal(18,4) DEFAULT '0.0000',
  `login_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `referral_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` int DEFAULT NULL,
  `app_language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'Walk-In Customer','Walk-In','Customer','000000000000','def.png','walking@customer.com',NULL,'',NULL,NULL,'2026-03-10 06:57:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,0,0,NULL,NULL,NULL,'en'),(2,'Manzar','Manzar','','+923163266622','def.png','manzarnazar3@gmail.com','2026-04-16 01:18:25','$2y$10$4WSh1LfGeIRRqX7sdPN4j.8wevviCzecEdQenWQhNZQr63xtEM32S',NULL,'2026-04-15 14:03:41','2026-04-20 19:04:08',NULL,NULL,NULL,NULL,NULL,NULL,'eZXC3kp3RbCoLCySEeS2KX:APA91bFa7r06-Ki2GpoWJ_I0Q5It3UfSqW6AGg8fdq7xv6PzGhSCIcU4do75LuRPKRlGhuhYXH6XsXRLr66ajyTnA4Bar20TaRP7ZjHI06s4-UG8soNIE84',1,NULL,NULL,NULL,'google','101671983951479399452',0,'iomJxFDrV4u6audbcMs0AyxPrXgekMiX1qmBHHMH',1,NULL,0.0000,0,0,NULL,'6DQGHR00KLJOYKPSH66B',NULL,'US'),(3,'Nnm Dev','Nnm','Dev','+524625090577','def.png','nnmstdmx@gmail.com',NULL,'$2y$10$InXoISxo2mmaDmAqxc/TPuyuk357VC.NpQ3ALJoaOQrfVsn2cEziG',NULL,'2026-04-24 07:34:31','2026-04-24 07:34:31',NULL,NULL,NULL,NULL,NULL,NULL,'dAaJVKr0RA2NP-IdzYZkqY:APA91bHTdYQRx6r5HcRSNejoAj6d-k86wkO4aqtq8x3ImTkgHezUkedJOmpUt2H5UZ_mH4sVQJjVVdxxQopVqWxL8tL80reoL910Jf4Dih8rXwhQGiiQibg',1,NULL,NULL,NULL,NULL,NULL,0,'sN2XE2qxXt4OHP5krpqyVlZ9kys8E1QyDID8WXUy',0,NULL,0.0000,0,0,NULL,'0K9IT7BPVW08QYAN3WU1',NULL,'en');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_registration_reasons`
--

DROP TABLE IF EXISTS `vendor_registration_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_registration_reasons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priority` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_registration_reasons`
--

LOCK TABLES `vendor_registration_reasons` WRITE;
/*!40000 ALTER TABLE `vendor_registration_reasons` DISABLE KEYS */;
INSERT INTO `vendor_registration_reasons` VALUES (1,'Millions of Users','Access a vast audience with millions of active users ready to buy your products.',1,1,NULL,NULL),(2,'Free Marketing','Benefit from our extensive, no-cost marketing efforts to boost your visibility and sales.',2,1,NULL,NULL),(3,'SEO Friendly','Enjoy enhanced search visibility with our SEO-friendly platform, driving more traffic to your listings.',3,1,NULL,NULL),(4,'24/7 Support','Get round-the-clock support from our dedicated team to resolve any issues and assist you anytime.',4,1,NULL,NULL),(5,'Easy Onboarding','Start selling quickly with our user-friendly onboarding process designed to get you up and running fast.',5,1,NULL,NULL);
/*!40000 ALTER TABLE `vendor_registration_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_withdraw_method_infos`
--

DROP TABLE IF EXISTS `vendor_withdraw_method_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_withdraw_method_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_method_id` bigint unsigned NOT NULL,
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_info` json DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_withdraw_method_infos`
--

LOCK TABLES `vendor_withdraw_method_infos` WRITE;
/*!40000 ALTER TABLE `vendor_withdraw_method_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_withdraw_method_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `transaction_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(21,12) NOT NULL,
  `debit` decimal(21,12) NOT NULL,
  `admin_bonus` decimal(21,12) NOT NULL,
  `balance` decimal(21,12) NOT NULL,
  `transaction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_transactions`
--

LOCK TABLES `wallet_transactions` WRITE;
/*!40000 ALTER TABLE `wallet_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wholesale_pricing`
--

DROP TABLE IF EXISTS `wholesale_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wholesale_pricing` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `min_qty` int unsigned NOT NULL,
  `max_qty` int unsigned DEFAULT NULL,
  `price` decimal(21,12) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wholesale_pricing_product_id_min_qty_index` (`product_id`,`min_qty`),
  CONSTRAINT `wholesale_pricing_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wholesale_pricing`
--

LOCK TABLES `wholesale_pricing` WRITE;
/*!40000 ALTER TABLE `wholesale_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `wholesale_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_requests`
--

DROP TABLE IF EXISTS `withdraw_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `withdrawal_method_id` bigint unsigned DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `transaction_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `request_method_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'system or vendor',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_requests`
--

LOCK TABLES `withdraw_requests` WRITE;
/*!40000 ALTER TABLE `withdraw_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawal_methods`
--

DROP TABLE IF EXISTS `withdrawal_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawal_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawal_methods`
--

LOCK TABLES `withdrawal_methods` WRITE;
/*!40000 ALTER TABLE `withdrawal_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawal_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-28 10:26:59
