-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: film
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinema` (
  `id` int DEFAULT NULL,
  `film_name` varchar(255) NOT NULL,
  `lich_chieu` varchar(255) DEFAULT NULL,
  `name_rap` varchar(255) DEFAULT NULL,
  `id_list` int NOT NULL,
  PRIMARY KEY (`id_list`),
  KEY `id` (`id`),
  CONSTRAINT `cinema_ibfk_1` FOREIGN KEY (`id`) REFERENCES `film_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (952,'NHỮNG KẺ THAO TÚNG','22:40 PM','CGV Lý Chính Thắng',301),(952,'NHỮNG KẺ THAO TÚNG','22:50 PM','CGV Liberty Citypoint',302),(952,'NHỮNG KẺ THAO TÚNG','22:50 PM','CGV Menas Mall (CGV CT Plaza)',303),(952,'NHỮNG KẺ THAO TÚNG','23:00 PM','CGV Sư Vạn Hạnh',304),(952,'NHỮNG KẺ THAO TÚNG','23:10 PM','CGV Pandora City',305),(952,'NHỮNG KẺ THAO TÚNG','23:35 PM','CGV Hoàng Văn Thụ',306),(953,'SISU - GIÀ GÂN BÁO THÙ','22:10 PM','CGV Saigonres Nguyễn Xí',307),(953,'SISU - GIÀ GÂN BÁO THÙ','22:45 PM','CGV Aeon Bình Tân',308),(953,'SISU - GIÀ GÂN BÁO THÙ','22:45 PM','CGV Vivo City',309),(953,'SISU - GIÀ GÂN BÁO THÙ','22:50 PM','CGV Vincom Center Landmark 81',310),(953,'SISU - GIÀ GÂN BÁO THÙ','23:00 PM','CGV Hoàng Văn Thụ',311),(953,'SISU - GIÀ GÂN BÁO THÙ','23:00 PM','CGV Sư Vạn Hạnh',312),(953,'SISU - GIÀ GÂN BÁO THÙ','23:00 PM','CGV Parkson Đồng Khởi',313),(953,'SISU - GIÀ GÂN BÁO THÙ','23:10 PM','CGV Aeon Tân Phú',314),(953,'SISU - GIÀ GÂN BÁO THÙ','23:15 PM','CGV Pandora City',315),(953,'SISU - GIÀ GÂN BÁO THÙ','23:20 PM','CGV Vincom Đồng Khởi',316),(953,'SISU - GIÀ GÂN BÁO THÙ','23:30 PM','CGV Hùng Vương Plaza',317),(953,'SISU - GIÀ GÂN BÁO THÙ','23:30 PM','CGV Lý Chính Thắng',318),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:00 PM','CGV Menas Mall (CGV CT Plaza)',319),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:40 PM','CGV Menas Mall (CGV CT Plaza)',320),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:00 PM','CGV Saigonres Nguyễn Xí',321),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:00 PM','CGV Sư Vạn Hạnh',322),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:30 PM','CGV Sư Vạn Hạnh',323),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:10 PM','CGV Vincom Gò Vấp',324),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:40 PM','CGV Vincom Gò Vấp',325),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','23:10 PM','CGV Vincom Gò Vấp',326),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:10 PM','CGV Thảo Điền Pearl',327),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:10 PM','CGV Aeon Tân Phú',328),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:40 PM','CGV Aeon Tân Phú',329),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:10 PM','CGV Hoàng Văn Thụ',330),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:50 PM','CGV Hoàng Văn Thụ',331),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:10 PM','CGV Pandora City',332),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:40 PM','CGV Pandora City',333),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:10 PM','CGV Lý Chính Thắng',334),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','23:10 PM','CGV Lý Chính Thắng',335),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:10 PM','CGV Giga Mall Thủ Đức',336),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','23:00 PM','CGV Giga Mall Thủ Đức',337),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:15 PM','CGV Vincom Đồng Khởi',338),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:45 PM','CGV Vincom Đồng Khởi',339),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:15 PM','CGV Vivo City',340),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:50 PM','CGV Vivo City',341),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:15 PM','CGV Aeon Bình Tân',342),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:55 PM','CGV Aeon Bình Tân',343),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:15 PM','CGV Crescent Mall',344),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:45 PM','CGV Crescent Mall',345),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','23:15 PM','CGV Crescent Mall',346),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:20 PM','CGV Pearl Plaza',347),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:20 PM','CGV Vincom Thủ Đức',348),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:30 PM','CGV Vincom Center Landmark 81',349),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:30 PM','CGV Parkson Đồng Khởi',350),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','22:50 PM','CGV Hùng Vương Plaza',351),(955,'VỆ BINH DẢI NGÂN HÀ 3','22:20 PM','CGV Hùng Vương Plaza',352),(955,'VỆ BINH DẢI NGÂN HÀ 3','23:00 PM','CGV Crescent Mall',353),(955,'VỆ BINH DẢI NGÂN HÀ 3','22:20 PM','CGV Pandora City',354),(955,'VỆ BINH DẢI NGÂN HÀ 3','22:50 PM','CGV Vincom Gò Vấp',355),(955,'VỆ BINH DẢI NGÂN HÀ 3','22:20 PM','CGV Parkson Đồng Khởi',356),(955,'VỆ BINH DẢI NGÂN HÀ 3','22:50 PM','CGV Lý Chính Thắng',357),(1012,'CON NHÓT MÓT CHỒNG','22:30 PM','CGV Vincom Thủ Đức',358),(1012,'CON NHÓT MÓT CHỒNG','22:50 PM','CGV Giga Mall Thủ Đức',359),(1012,'CON NHÓT MÓT CHỒNG','23:00 PM','CGV Aeon Tân Phú',360),(1012,'CON NHÓT MÓT CHỒNG','23:10 PM','CGV Vincom Đồng Khởi',361),(1013,'TÌNH NGƯỜI DUYÊN MA: NGOẠI TRUYỆN','22:55 PM','CGV Rice City',362),(1013,'TÌNH NGƯỜI DUYÊN MA: NGOẠI TRUYỆN','23:00 PM','CGV Trương Định Plaza',363),(1013,'TÌNH NGƯỜI DUYÊN MA: NGOẠI TRUYỆN','23:00 PM','CGV Vincom Ocean Park',364),(1013,'TÌNH NGƯỜI DUYÊN MA: NGOẠI TRUYỆN','23:05 PM','CGV Sun Grand Thụy Khuê',365),(1013,'TÌNH NGƯỜI DUYÊN MA: NGOẠI TRUYỆN','23:10 PM','CGV Sun Grand Lương Yên',366),(1013,'TÌNH NGƯỜI DUYÊN MA: NGOẠI TRUYỆN','23:25 PM','CGV Vincom Sky Lake Phạm Hùng',367),(1013,'TÌNH NGƯỜI DUYÊN MA: NGOẠI TRUYỆN','23:30 PM','CGV Vincom Royal City',368),(1016,'TRẠM TÀU MA','23:00 PM','CGV Liberty Citypoint',369),(1016,'TRẠM TÀU MA','23:15 PM','CGV Vincom Đồng Khởi',370),(1017,'MA LAI RÚT RUỘT','23:05 PM','CGV Aeon Bình Tân',371),(1018,'ĐẦU GẤU ĐỤNG ĐẦU ĐẤT','23:00 PM','CGV Vincom Center Bà Triệu',372),(1018,'ĐẦU GẤU ĐỤNG ĐẦU ĐẤT','23:00 PM','CGV Xuân Diệu',373),(1018,'ĐẦU GẤU ĐỤNG ĐẦU ĐẤT','23:40 PM','CGV Vincom Trần Duy Hưng',374),(1020,'KHẮC TINH CỦA QUỶ','23:05 PM','CGV Indochina Plaza Hà Nội',375);
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinema_seq`
--

DROP TABLE IF EXISTS `cinema_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinema_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema_seq`
--

LOCK TABLES `cinema_seq` WRITE;
/*!40000 ALTER TABLE `cinema_seq` DISABLE KEYS */;
INSERT INTO `cinema_seq` VALUES (450);
/*!40000 ALTER TABLE `cinema_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_detail`
--

DROP TABLE IF EXISTS `film_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_detail` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `link_image` varchar(255) DEFAULT NULL,
  `price` int DEFAULT '0',
  `category` varchar(255) DEFAULT NULL,
  `desciption` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_detail`
--

LOCK TABLES `film_detail` WRITE;
/*!40000 ALTER TABLE `film_detail` DISABLE KEYS */;
INSERT INTO `film_detail` VALUES (952,'NHỮNG KẺ THAO TÚNG','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/p/o/poster_nktt_4.jpg',0,'  Bí ẩn, Hành Động, Hồi hộp',''),(953,'SISU - GIÀ GÂN BÁO THÙ','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/p/o/poster-50x70cm-1.jpg',0,'  Hành Động',''),(954,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/l/m/lm6_2x3_layout.jpg',0,'  Hài, Hành Động, Hồi hộp, Tâm Lý',''),(955,'VỆ BINH DẢI NGÂN HÀ 3','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/3/5/350x495_1.png',0,'  Hành Động, Phiêu Lưu, Thần thoại',''),(1002,'NHỮNG KẺ THAO TÚNG','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/p/o/poster_nktt_4.jpg',0,'  Bí ẩn, Hành Động, Hồi hộp',''),(1003,'SISU - GIÀ GÂN BÁO THÙ','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/p/o/poster-50x70cm-1.jpg',0,'  Hành Động',''),(1004,'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/l/m/lm6_2x3_layout.jpg',0,'  Hài, Hành Động, Hồi hộp, Tâm Lý',''),(1005,'VỆ BINH DẢI NGÂN HÀ 3','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/3/5/350x495_1.png',0,'  Hành Động, Phiêu Lưu, Thần thoại',''),(1006,'QUÁI VẬT ĐEN','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/7/0/700x1000_5_.jpg',0,'  Hành Động, Hồi hộp',''),(1007,'CƠN THỊNH NỘ TỪ CÕI ÂM','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/t/h/the_accursed.c_n_th_nh_n_t_c_i_m_-_payoff_poster_-_kc_12.05.2023_1_.jpg',0,'  Bí ẩn, Hồi hộp, Kinh Dị',''),(1008,'REBOUND BẬT BẢNG','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/8/0/800x1000_1_.jpg',0,'  Tâm Lý',''),(1009,'CÔ BÉ CỨU HỎA','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/f/i/fireheart_main-poster_sneak-show_1_.jpg',0,'  Hoạt Hình',''),(1010,'PHI VỤ NỬA ĐÊM (CHIẾU LẠI)','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/l/a/late_shift_-_700x1000.jpg',0,'  Hành Động, Tội phạm',''),(1011,'CHEBI: GẤU TAI TO ĐÁNG YÊU','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/p/o/poster_gttdy_1.jpg',0,'  Gia đình',''),(1012,'CON NHÓT MÓT CHỒNG','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/7/0/700x1000_2_.jpg',0,'  Hài, Tâm Lý',''),(1013,'TÌNH NGƯỜI DUYÊN MA: NGOẠI TRUYỆN','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/7/0/700x1000-tid-noi.jpg',0,'  Hài, Kinh Dị, Tình cảm',''),(1014,'MÈO SIÊU QUẬY Ở VIỆN BẢO TÀNG','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/p/o/poster_payoff_cats_in_the_museum.jpg',0,'  Hài, Hoạt Hình, Phiêu Lưu',''),(1015,'NGỤC TỐI & RỒNG: DANH DỰ CỦA KẺ TRỘM','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/7/0/700x1000___2.jpg',0,'  Hành Động, Phiêu Lưu, Thần thoại',''),(1016,'TRẠM TÀU MA','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/g/h/ghost-station_main_fin_viethoa.jpg',0,'  Kinh Dị',''),(1017,'MA LAI RÚT RUỘT','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/7/0/700x1000_4_.jpg',0,'  Kinh Dị',''),(1018,'ĐẦU GẤU ĐỤNG ĐẦU ĐẤT','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/b/e/bear-main-poster-printing.jpg',0,'  Hài, Hành Động',''),(1019,'KHẾ ƯỚC','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/p/o/poster_payoff_khe_uoc_12.jpg',0,'  Hành Động, Hồi hộp, Tội phạm',''),(1020,'KHẮC TINH CỦA QUỶ','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/p/o/pope_sexorcist_poster_h_m_ng_c.jpg',0,'  Kinh Dị',''),(1021,'CHUYỆN TÔI VÀ MA QUỶ THÀNH NGƯỜI MỘT NHÀ','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/t/e/teaser_poster_1-marry-my-dead-body.jpg',0,'  Bí ẩn, Hài, Hành Động',''),(1022,'PHIM ANH EM SUPER MARIO','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/s/u/super_mario_bros._payoff_poster.jpg',0,'  Hài, Hoạt Hình, Phiêu Lưu',''),(1023,'PHIM CÚ ÚP RỔ ĐẦU TIÊN','https://www.cgv.vn/media/catalog/product/cache/1/thumbnail/190x260/2e2b8cd282892c71872b9e67d2cb5039/t/h/the_first_slam_dunk_-_key_visual_1_.jpg',0,'  Hài, Hoạt Hình','');
/*!40000 ALTER TABLE `film_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_detail_seq`
--

DROP TABLE IF EXISTS `film_detail_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_detail_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_detail_seq`
--

LOCK TABLES `film_detail_seq` WRITE;
/*!40000 ALTER TABLE `film_detail_seq` DISABLE KEYS */;
INSERT INTO `film_detail_seq` VALUES (1101);
/*!40000 ALTER TABLE `film_detail_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` varchar(255) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `role_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16  8:07:42
