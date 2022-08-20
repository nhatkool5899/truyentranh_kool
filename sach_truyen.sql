-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2022 lúc 02:42 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sach_truyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` int(11) NOT NULL,
  `chapter` int(11) NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) DEFAULT 0,
  `hienthi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `truyen_id`, `chapter`, `tieude`, `tomtat`, `noidung`, `views`, `hienthi`, `created_at`, `updated_at`) VALUES
(1, 7, 0, 'Chapter 1- Khởi đầu', 'Sở phong tỉnh dậy ở một ngôi làng nhỏ', 'Sở phong tỉnh dậy ở một ngôi làng nhỏ, được một gia đình nhận nuôi', 0, 0, '2022-07-12 19:40:56', '2022-07-12 19:40:56'),
(2, 6, 0, 'Chapter 2', 'sơ nhập giang hồ', 'con đường đầu tiên sở phong gia nhập tu hành', 0, 0, '2022-07-12 20:13:22', '2022-07-12 20:18:04'),
(3, 12, 1, 'Khởi đầu', '123456', '<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 2\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/002.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 3\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/003.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 4\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/004.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 5\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/005.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 6\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/006.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 7\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/007.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 8\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/008.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 9\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/009.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 10\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/010.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 11\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/011.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 12\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/012.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 376 - Trang 13\" src=\"http://i333.ntcdntempv3.com/data/images/4409/872956/013.jpg?data=net\" /></p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:72.625px; top:42px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 0, 0, '2022-07-18 05:08:10', '2022-07-18 21:05:45'),
(4, 12, 2, 'Võ hồn phế vật', 'võ hồn', '<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 1\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/001.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 2\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/002.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 3\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/003.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 4\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/004.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 5\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/005.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 6\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/006.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 7\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/007.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 8\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/008.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 9\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/009.jpg?data=net\" /></p>\n\n<p><img alt=\"Đấu Phá Thương Khung chap 377 - Trang 10\" src=\"http://i333.ntcdntempv3.com/data/images/4409/875150/010.jpg?data=net\" /></p>', 0, 0, '2022-07-18 05:12:37', '2022-07-18 21:04:06'),
(5, 12, 3, 'Chông gai', 'chông gai', '<p><img alt=\"Đấu Phá Thương Khung chap 360 - Trang 7\" src=\"http://i226.ntcdntempv26.com/data/images/4409/809199/007.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 360 - Trang 8\" src=\"http://i226.ntcdntempv26.com/data/images/4409/809199/008.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 360 - Trang 9\" src=\"http://i226.ntcdntempv26.com/data/images/4409/809199/009.jpg?data=net\" /></p>\r\n\r\n<p><img alt=\"Đấu Phá Thương Khung chap 360 - Trang 10\" src=\"http://i226.ntcdntempv26.com/data/images/4409/809199/010.jpg?data=net\" /></p>', 0, 0, '2022-07-20 05:46:43', '2022-07-20 05:46:43'),
(6, 13, 1, 'Khởi đầu', 'Khởi đầu', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_001_1658254233.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_002_1658254234.jpg?data=3q\" /></p>', 0, 0, '2022-08-03 23:57:14', '2022-08-03 23:57:14'),
(8, 13, 2, 'Nghiệt ngã', 'nghiệt ngã', '<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_002_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_003_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_004_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_005_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_006_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_007_1658254234.jpg?data=3q\" /></p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:41.7031px; top:38px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 0, 0, '2022-08-04 00:13:27', '2022-08-04 00:13:27'),
(9, 13, 3, 'Truy sát', 'aaaa', '<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_008_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_009_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_010_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_011_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 12\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_012_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 13\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_013_1658254234.jpg?data=3q\" /></p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:41.7031px; top:41px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 0, 0, '2022-08-04 00:16:32', '2022-08-04 00:16:32'),
(10, 13, 4, 'Chông gai', 'aaa', '<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_008_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_009_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_010_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_011_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 12\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_012_1658254234.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Siêu Phàm Tiến Hóa chapter 62 - Trang 13\" src=\"https://storage.anhvip.xyz/image_comics/4807/544458/img_013_1658254234.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 00:16:43', '2022-08-04 00:16:43'),
(11, 11, 1, 'Chapter 1', 'chapter1', '<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_001_1659270918.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_002_1659270918.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_003_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_004_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_005_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_006_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_007_1659270919.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 01:59:39', '2022-08-04 01:59:39'),
(12, 11, 2, 'Chapter 2', 'chap2', '<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_008_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_009_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_010_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_011_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 12\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_012_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 13\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_013_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 14\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_014_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 15\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_015_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 16\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_016_1659270919.jpg?data=3q\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 18\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_018_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 19\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_019_1659270920.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:00:55', '2022-08-04 02:00:55'),
(13, 11, 3, 'Chapter 3', 'chap3', '<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 20\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_020_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 21\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_021_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 22\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_022_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 23\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_023_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 24\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_024_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 25\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_025_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 26\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_026_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 27\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_027_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 28\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_028_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 29\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_029_1659270920.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:01:35', '2022-08-04 02:01:35'),
(14, 11, 4, 'Chapter 4', 'chap4', '<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 30\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_030_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 31\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_031_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 32\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_032_1659270920.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 33\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_033_1659270921.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 34\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_034_1659270921.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 35\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_035_1659270921.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 36\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_036_1659270921.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chiến Hồn Tuyệt Thế chapter 438 - Trang 37\" src=\"https://storage.anhvip.xyz/image_comics/6132/518980/img_037_1659270921.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:02:18', '2022-08-04 02:02:18'),
(15, 10, 1, 'Chapter 1', 'chap 1', '<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_002_1659539106.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_003_1659539106.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_004_1659539106.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_005_1659539107.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_006_1659539107.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_007_1659539107.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:02:58', '2022-08-04 02:02:58'),
(16, 10, 2, 'Chapter 2', 'cccc', '<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_007_1659539107.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_008_1659539108.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_009_1659539108.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_010_1659539108.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_011_1659539109.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 12\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_012_1659539109.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:03:40', '2022-08-04 02:03:40'),
(17, 10, 3, 'Chapter 3', 'aaa', '<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 12\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_012_1659539109.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 13\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_013_1659539110.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 14\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_014_1659539110.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 15\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_015_1659539111.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 16\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_016_1659539111.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 17\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_017_1659539111.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 18\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_018_1659539112.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:04:17', '2022-08-04 02:04:17'),
(18, 10, 4, 'Chapter 4', 'aaaa', '<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 19\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_019_1659539112.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 20\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_020_1659539113.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 21\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_021_1659539113.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 22\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_022_1659539113.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 23\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_023_1659539114.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Chưởng Môn Khiêm Tốn Chút chapter 69 - Trang 24\" src=\"https://storage.anhvip.xyz/image_comics/6338/560750/img_024_1659539114.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:04:58', '2022-08-04 02:04:58'),
(19, 9, 1, 'Chapter 1', 'aaaa', '<p><img alt=\"Toàn Chức Pháp Sư chapter 903 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/842/559959/img_001_1659459012.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:08:06', '2022-08-04 02:08:06'),
(20, 9, 2, 'Chapter 2', 'aaa', '<p><img alt=\"Toàn Chức Pháp Sư chapter 903 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/842/559959/img_001_1659459012.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Toàn Chức Pháp Sư chapter 903 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/842/559959/img_002_1659459014.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:09:12', '2022-08-04 02:09:12'),
(21, 9, 3, 'Chapter 3', 'aaa', '<p><img alt=\"Toàn Chức Pháp Sư chapter 903 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/842/559959/img_002_1659459014.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Toàn Chức Pháp Sư chapter 903 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/842/559959/img_003_1659459017.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:10:43', '2022-08-04 02:10:43'),
(22, 8, 1, 'Chapter 1', 'sss', '<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_001_1657899828.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_002_1657899831.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_003_1657899834.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_004_1657899837.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_005_1657899840.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:12:15', '2022-08-04 02:12:15'),
(23, 8, 3, 'Chapter 3', 'aaa', '<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_006_1657899842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_007_1657899845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_008_1657899848.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_009_1657899850.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_010_1657899853.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:12:54', '2022-08-04 02:12:54'),
(24, 8, 4, 'Chapter 4', '123', '<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_011_1657899856.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 12\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_012_1657899859.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 13\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_013_1657899863.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 14\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_014_1657899865.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Động Càn Khôn chapter 183 - Trang 15\" src=\"https://storage.anhvip.xyz/image_comics/89/541682/img_015_1657899868.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:13:15', '2022-08-04 02:13:15'),
(25, 3, 1, 'Chapter 1', '132', '<p><img alt=\"Đảo Hải Tặc chapter 1054 - Trang 17\" src=\"https://storage.anhvip.xyz/image_comics/77/543371/img_017_1658501568.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đảo Hải Tặc chapter 1054 - Trang 18\" src=\"https://storage.anhvip.xyz/image_comics/77/543371/img_018_1658501568.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:14:20', '2022-08-04 02:14:20'),
(26, 3, 2, 'Chapter 2', '2', '<p><img alt=\"Đảo Hải Tặc chapter 1053 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/77/525513/img_008_1655428945.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đảo Hải Tặc chapter 1053 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/77/525513/img_009_1655428945.jpg?data=3q\" /></p>', 0, 0, '2022-08-04 02:15:00', '2022-08-04 02:15:00'),
(27, 19, 1, 'Chapter 1', 'chap1', '<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_001_1659463844.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_002_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_003_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_004_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_005_1659463846.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_006_1659463846.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_007_1659463846.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:49:18', '2022-08-05 02:49:18'),
(28, 19, 2, 'Chapter 2', 'aaa', '<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_001_1659463844.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_002_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_003_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_004_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_005_1659463846.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_006_1659463846.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_007_1659463846.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:49:29', '2022-08-05 02:49:29'),
(29, 19, 3, 'Chapter 3', 'aaa', '<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_001_1659463844.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_002_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_003_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_004_1659463845.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_005_1659463846.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_006_1659463846.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Hệt Như Hàn Quang Gặp Nắng Gắt chapter 310 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/109/559978/img_007_1659463846.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:49:39', '2022-08-05 02:49:39'),
(30, 18, 1, 'Chapter 1', 'qqqq', '<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_002_1659348634.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_003_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_004_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_005_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_006_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_007_1659348638.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_008_1659348638.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:50:37', '2022-08-05 02:50:37'),
(31, 18, 2, 'Chapter 2', 'aaaa', '<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_002_1659348634.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_003_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_004_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_005_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_006_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_007_1659348638.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_008_1659348638.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:50:49', '2022-08-05 02:50:49'),
(32, 18, 3, 'Chapter 3', 'aaaaaa', '<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_002_1659348634.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_003_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_004_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_005_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_006_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_007_1659348638.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_008_1659348638.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:51:00', '2022-08-05 02:51:00'),
(33, 17, 1, 'Chapter 1', 'aaaa', '<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_002_1659348634.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_003_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_004_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_005_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_006_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_007_1659348638.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_008_1659348638.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:51:09', '2022-08-05 02:51:09'),
(34, 17, 3, 'Chapter 3', 'aaaa', '<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_002_1659348634.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_003_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_004_1659348635.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_005_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_006_1659348637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_007_1659348638.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đệ Nhất Ở Rể chapter 152.2 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/3689/558322/img_008_1659348638.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:51:19', '2022-08-05 02:51:19'),
(35, 16, 1, 'Chapter 1', 'aaaa', '<p><img alt=\"Ta Chẳng Qua Là Một Đại La Kim Tiên chapter 261 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/559/562277/img_001_1659628407.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Ta Chẳng Qua Là Một Đại La Kim Tiên chapter 261 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/559/562277/img_002_1659628408.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:52:04', '2022-08-05 02:52:04'),
(36, 16, 2, 'Chapter 2', 'aaaa', '<p><img alt=\"Ta Chẳng Qua Là Một Đại La Kim Tiên chapter 261 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/559/562277/img_001_1659628407.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Ta Chẳng Qua Là Một Đại La Kim Tiên chapter 261 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/559/562277/img_002_1659628408.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:52:14', '2022-08-05 02:52:14'),
(37, 16, 3, 'Chapter 3', 'aaaa', '<p><img alt=\"Ta Chẳng Qua Là Một Đại La Kim Tiên chapter 261 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/559/562277/img_001_1659628407.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Ta Chẳng Qua Là Một Đại La Kim Tiên chapter 261 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/559/562277/img_002_1659628408.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:52:25', '2022-08-05 02:52:25'),
(38, 15, 1, 'Chapter 1', 'aaa', '<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_002_1659683571.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_003_1659683574.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_004_1659683578.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_005_1659683582.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_006_1659683586.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_007_1659683589.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_008_1659683594.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_009_1659683598.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_010_1659683601.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_011_1659683605.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 12\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_012_1659683608.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 13\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_013_1659683612.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 14\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_014_1659683616.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:52:57', '2022-08-05 02:52:57'),
(39, 15, 2, 'Chapter 2', 'aaaaa', '<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 15\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_015_1659683620.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 16\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_016_1659683624.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 17\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_017_1659683627.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 18\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_018_1659683631.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 19\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_019_1659683634.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 20\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_020_1659683637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 21\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_021_1659683641.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 22\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_022_1659683646.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 23\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_023_1659683650.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 24\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_024_1659683653.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:53:18', '2022-08-05 02:53:18'),
(40, 15, 3, 'Chapter 3a', 'aaaa', '<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 15\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_015_1659683620.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 16\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_016_1659683624.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 17\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_017_1659683627.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 18\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_018_1659683631.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 19\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_019_1659683634.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 20\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_020_1659683637.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 21\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_021_1659683641.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 22\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_022_1659683646.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 23\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_023_1659683650.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Thần Hồn Võ Đế chapter 227 - Trang 24\" src=\"https://storage.anhvip.xyz/image_comics/882/562864/img_024_1659683653.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:53:34', '2022-08-05 02:53:34'),
(41, 14, 1, 'Chapter 1', 'aaaa', '<p><img alt=\"Thiết Lập Ác Nữ Của Tôi Sụp Đổ Rồi chapter 19 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/10864/563019/img_002_1659688235.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:54:06', '2022-08-05 02:54:06'),
(42, 14, 2, 'Chapter 2', 'aa', '<p><img alt=\"Thiết Lập Ác Nữ Của Tôi Sụp Đổ Rồi chapter 19 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/10864/563019/img_002_1659688235.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:54:25', '2022-08-05 02:54:25'),
(43, 14, 3, 'Chapter 3', 'aaaa', '<p><img alt=\"Thiết Lập Ác Nữ Của Tôi Sụp Đổ Rồi chapter 19 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/10864/563019/img_002_1659688235.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:54:39', '2022-08-05 02:54:39'),
(44, 19, 4, 'Chapter 4', 'aaa', '<p><img alt=\"Thiết Lập Ác Nữ Của Tôi Sụp Đổ Rồi chapter 19 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/10864/563019/img_002_1659688235.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:57:03', '2022-08-05 02:57:03'),
(45, 17, 2, 'Chapter 2', 'aaa', '<p><img alt=\"Thiết Lập Ác Nữ Của Tôi Sụp Đổ Rồi chapter 19 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/10864/563019/img_002_1659688235.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:57:40', '2022-08-05 02:57:40'),
(46, 3, 3, 'Chapter 3', 'aaaa', '<p><img alt=\"Thiết Lập Ác Nữ Của Tôi Sụp Đổ Rồi chapter 19 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/10864/563019/img_002_1659688235.jpg?data=3q\" /></p>', 0, 0, '2022-08-05 02:58:09', '2022-08-05 02:58:09'),
(47, 25, 1, 'Chapter 1', 'Chapter1', '<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_002_1660297841.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_003_1660297841.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_004_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_005_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_006_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_007_1660297843.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:41:48', '2022-08-15 02:41:48'),
(48, 25, 2, 'Chapter 2', 'chap2', '<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_002_1660297841.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_003_1660297841.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_004_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_005_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_006_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_007_1660297843.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:41:59', '2022-08-15 02:41:59'),
(49, 25, 3, 'Chapter 3', 'aaa', '<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_002_1660297841.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_003_1660297841.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_004_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_005_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_006_1660297842.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đấu La Đại Lục chapter 331.5 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1218/570948/img_007_1660297843.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:42:08', '2022-08-15 02:42:08'),
(50, 24, 1, 'Chapter 1', 'aa', '<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_001_1660294212.jpg?data=3q\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_002_1660294215.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_003_1660294218.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_004_1660294221.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_005_1660294224.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_006_1660294227.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_007_1660294230.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:42:42', '2022-08-15 02:42:42'),
(51, 24, 2, 'Chapter 2', 'aaa', '<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_001_1660294212.jpg?data=3q\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_002_1660294215.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_003_1660294218.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_004_1660294221.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_005_1660294224.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_006_1660294227.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_007_1660294230.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:42:53', '2022-08-15 02:42:53'),
(52, 24, 3, 'Chapter 3', 'aaaa', '<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_001_1660294212.jpg?data=3q\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_002_1660294215.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_003_1660294218.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_004_1660294221.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_005_1660294224.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_006_1660294227.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tiên Đế Qui Lai chapter 335 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/502/570902/img_007_1660294230.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:43:04', '2022-08-15 02:43:04'),
(53, 23, 1, 'Chapter 1', 'aa', '<p><img alt=\"Tôi Được Năm Đại Lão Chiều Chuộng Hết Nấc V1 chapter 31 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/9336/489602/img_002_1649613044.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tôi Được Năm Đại Lão Chiều Chuộng Hết Nấc V1 chapter 31 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/9336/489602/img_003_1649613044.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:43:54', '2022-08-15 02:43:54'),
(54, 23, 2, 'Chapter 2', 'aaaa', '<p><img alt=\"Tôi Được Năm Đại Lão Chiều Chuộng Hết Nấc V1 chapter 31 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/9336/489602/img_002_1649613044.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tôi Được Năm Đại Lão Chiều Chuộng Hết Nấc V1 chapter 31 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/9336/489602/img_003_1649613044.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:44:09', '2022-08-15 02:44:09');
INSERT INTO `chapter` (`id`, `truyen_id`, `chapter`, `tieude`, `tomtat`, `noidung`, `views`, `hienthi`, `created_at`, `updated_at`) VALUES
(55, 23, 3, 'Chapter 3', 'aaaa', '<p><img alt=\"Tôi Được Năm Đại Lão Chiều Chuộng Hết Nấc V1 chapter 31 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/9336/489602/img_002_1649613044.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tôi Được Năm Đại Lão Chiều Chuộng Hết Nấc V1 chapter 31 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/9336/489602/img_003_1649613044.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:44:20', '2022-08-15 02:44:20'),
(56, 22, 1, 'Chapter 1', 'aaa', '<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_004_1660295424.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_005_1660295427.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_006_1660295430.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_007_1660295433.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_008_1660295437.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_009_1660295440.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:45:03', '2022-08-15 02:45:03'),
(57, 22, 2, 'Chapter 2', 'aaaa', '<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_004_1660295424.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_005_1660295427.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_006_1660295430.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_007_1660295433.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_008_1660295437.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_009_1660295440.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:45:14', '2022-08-15 02:45:14'),
(58, 22, 3, 'Chapter 3', 'aaaa', '<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_004_1660295424.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_005_1660295427.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_006_1660295430.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_007_1660295433.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_008_1660295437.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_009_1660295440.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:45:23', '2022-08-15 02:45:23'),
(59, 21, 1, 'Chapter 1', 'aaaa', '<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_004_1660295424.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_005_1660295427.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_006_1660295430.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_007_1660295433.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_008_1660295437.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Lãng Tiên Kỳ Đàm chapter 78 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/1092/570916/img_009_1660295440.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:45:36', '2022-08-15 02:45:36'),
(60, 21, 2, 'Chapter 2', 'aaaa', '<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_003_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_004_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_005_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_006_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_007_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_008_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_009_1649187696.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_010_1649187696.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_011_1649187696.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:46:27', '2022-08-15 02:46:27'),
(61, 21, 3, 'Chapter 3', 'aaa', '<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_003_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_004_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_005_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_006_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_007_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_008_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_009_1649187696.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_010_1649187696.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_011_1649187696.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:46:58', '2022-08-15 02:46:58'),
(62, 21, 4, 'Chapter 4', 'aaa', '<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_003_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_004_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_005_1649187694.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_006_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_007_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 8\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_008_1649187695.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 9\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_009_1649187696.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 10\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_010_1649187696.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Đồ Đệ Nhà Ta Lại Quải Rồi chapter 268 - Trang 11\" src=\"https://storage.anhvip.xyz/image_comics/429/486693/img_011_1649187696.jpg?data=3q\" /></p>', 0, 0, '2022-08-15 02:47:07', '2022-08-15 02:47:07'),
(63, 26, 1, 'Chapter 1', '1231346', '<p><img alt=\"Harry Potter Và Căn Phòng Bí Mật chapter 1 - Trang 1\" src=\"https://media2.anhvip.xyz/image_comics/2666/195467/img_001_1640697494.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Harry Potter Và Căn Phòng Bí Mật chapter 1 - Trang 2\" src=\"https://media2.anhvip.xyz/image_comics/2666/195467/img_002_1640697495.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 00:28:54', '2022-08-16 00:28:54'),
(64, 26, 2, 'Chapter 2', 'ádasdasdasd', '<p><img alt=\"Harry Potter Và Căn Phòng Bí Mật chapter 1 - Trang 3\" src=\"https://media2.anhvip.xyz/image_comics/2666/195467/img_003_1640697495.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Harry Potter Và Căn Phòng Bí Mật chapter 1 - Trang 4\" src=\"https://media2.anhvip.xyz/image_comics/2666/195467/img_004_1640697496.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 00:29:19', '2022-08-16 00:29:19'),
(65, 26, 3, 'Chapter 3', 'aaaaa', '<p><img alt=\"Harry Potter Và Căn Phòng Bí Mật chapter 1 - Trang 3\" src=\"https://media2.anhvip.xyz/image_comics/2666/195467/img_003_1640697495.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Harry Potter Và Căn Phòng Bí Mật chapter 1 - Trang 4\" src=\"https://media2.anhvip.xyz/image_comics/2666/195467/img_004_1640697496.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 00:29:43', '2022-08-16 00:29:43'),
(66, 5, 1, 'Chapter 1', 'aaaa', '<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_001_1660645529.jpg?data=3q\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_002_1660645529.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_003_1660645529.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 07:16:34', '2022-08-16 07:16:34'),
(67, 6, 1, 'Chapter 1', 'aaaa', '<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_001_1660645529.jpg?data=3q\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_002_1660645529.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_003_1660645529.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 07:20:44', '2022-08-16 07:20:44'),
(68, 6, 2, 'Chapter 2', 'aaaaa', '<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_004_1660645530.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_005_1660645530.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Võ Luyện Đỉnh Phong chapter 2506 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/442/574519/img_006_1660645530.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 07:21:31', '2022-08-16 07:21:31'),
(69, 7, 1, 'Chapter 1', 'aaaa', '<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_002_1660648811.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_003_1660648812.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_004_1660648813.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_005_1660648814.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_006_1660648815.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_007_1660648816.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 07:24:09', '2022-08-16 07:24:09'),
(70, 7, 2, 'Chapter 2', 'aaaaaa', '<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_002_1660648811.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_003_1660648812.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_004_1660648813.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_005_1660648814.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_006_1660648815.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Tu La Võ Thần chapter 638 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/1291/574586/img_007_1660648816.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 07:24:22', '2022-08-16 07:24:22'),
(71, 5, 2, 'Chapter 2', 'aaa', '<p><img alt=\"Độc Bộ Tiêu Dao chapter 411 - Trang 1\" src=\"https://storage.anhvip.xyz/image_comics/492/571810/img_001_1660369813.jpg?data=3q\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Độc Bộ Tiêu Dao chapter 411 - Trang 2\" src=\"https://storage.anhvip.xyz/image_comics/492/571810/img_002_1660369817.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Độc Bộ Tiêu Dao chapter 411 - Trang 3\" src=\"https://storage.anhvip.xyz/image_comics/492/571810/img_003_1660369821.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Độc Bộ Tiêu Dao chapter 411 - Trang 4\" src=\"https://storage.anhvip.xyz/image_comics/492/571810/img_004_1660369824.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 07:28:04', '2022-08-16 07:28:04'),
(72, 5, 3, 'Chapter 3', 'aaaa', '<p><img alt=\"Độc Bộ Tiêu Dao chapter 411 - Trang 5\" src=\"https://storage.anhvip.xyz/image_comics/492/571810/img_005_1660369829.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Độc Bộ Tiêu Dao chapter 411 - Trang 6\" src=\"https://storage.anhvip.xyz/image_comics/492/571810/img_006_1660369833.jpg?data=3q\" /></p>\r\n\r\n<p><img alt=\"Độc Bộ Tiêu Dao chapter 411 - Trang 7\" src=\"https://storage.anhvip.xyz/image_comics/492/571810/img_007_1660369836.jpg?data=3q\" /></p>', 0, 0, '2022-08-16 07:28:23', '2022-08-16 07:28:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `slug_danhmuc` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `slug_danhmuc`, `mota`, `hienthi`, `created_at`, `updated_at`) VALUES
(5, 'truyện anime', 'truyen-anime', 'truyện anime', 1, '2022-07-12 19:10:53', '2022-07-12 19:10:53'),
(6, 'truyện phiêu lưu', 'truyen-phieu-luu', 'truyện phiêu lưu', 0, '2022-07-12 19:28:23', '2022-07-12 19:28:23'),
(7, 'Hành Động', 'hanh-dong', 'hành động', 0, '2022-07-15 20:36:16', '2022-07-15 20:36:16'),
(8, 'Cổ đại', 'co-dai', 'Cổ đại', 0, '2022-07-15 20:36:49', '2022-07-15 20:36:49'),
(9, 'Đam Mỹ', 'dam-my', 'đam mỹ', 0, '2022-07-15 20:36:57', '2022-07-15 20:36:57'),
(10, 'Ngôn tình', 'ngon-tinh', 'ngôn tình', 0, '2022-07-15 20:37:15', '2022-07-15 20:37:15'),
(11, 'Xuyên Không', 'xuyen-khong', 'xuyên không', 0, '2022-07-15 20:37:26', '2022-07-15 20:37:26'),
(12, 'Nam Chính Bá Đạo', 'nam-chinh-ba-dao', 'nam chính', 0, '2022-07-15 20:38:37', '2022-07-15 20:38:37'),
(13, 'Tu tiên', 'tu-tien', 'tu tiên', 0, '2022-08-12 03:06:10', '2022-08-12 03:06:10'),
(14, 'Luyện cấp', 'luyen-cap', 'luyện cấp', 0, '2022-08-12 03:06:19', '2022-08-12 03:06:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_12_030059_create_truyen', 2),
(6, '2022_07_13_015004_create_chapter', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'nhat@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'admin1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoctheloai`
--

CREATE TABLE `thuoctheloai` (
  `id` int(11) NOT NULL,
  `truyen_id` int(11) NOT NULL,
  `danhmuc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thuoctheloai`
--

INSERT INTO `thuoctheloai` (`id`, `truyen_id`, `danhmuc_id`) VALUES
(25, 3, 5),
(24, 3, 6),
(23, 3, 7),
(29, 5, 6),
(28, 5, 11),
(27, 5, 12),
(26, 5, 14),
(35, 6, 5),
(34, 6, 6),
(33, 6, 7),
(32, 6, 12),
(31, 6, 13),
(30, 6, 14),
(40, 7, 5),
(39, 7, 7),
(38, 7, 12),
(37, 7, 13),
(36, 7, 14),
(44, 8, 7),
(43, 8, 12),
(42, 8, 13),
(41, 8, 14),
(47, 9, 7),
(46, 9, 10),
(45, 9, 12),
(52, 10, 8),
(51, 10, 10),
(50, 10, 11),
(49, 10, 13),
(48, 10, 14),
(6, 19, 10),
(5, 19, 11),
(4, 19, 12),
(3, 20, 7),
(2, 20, 11),
(1, 20, 12),
(9, 21, 7),
(8, 21, 8),
(7, 21, 12),
(12, 22, 7),
(11, 22, 10),
(10, 22, 12),
(14, 23, 8),
(13, 23, 12),
(16, 24, 13),
(15, 24, 14),
(20, 25, 10),
(19, 25, 11),
(18, 25, 13),
(17, 25, 14),
(22, 26, 6),
(21, 26, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

CREATE TABLE `truyen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tentruyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_truyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tukhoa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tacgia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `tinhtrang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) DEFAULT 0,
  `status` int(2) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `tentruyen`, `slug_truyen`, `tukhoa`, `tacgia`, `tomtat`, `hinhanh`, `danhmuc_id`, `tinhtrang`, `views`, `status`, `hienthi`, `created_at`, `updated_at`) VALUES
(3, 'One picece', 'one-picece', 'truyện tranh, truyện trắng đen, nam chính bá đạo', 'Oda', 'aaaa', 'dao-hai-tac-73.jpg', 5, 'đang tiến hành', 12300, 2, 0, '2022-07-11 22:23:23', '2022-08-16 14:11:30'),
(5, 'Độc bộ tiêu dao', 'doc-bo-tieu-dao', 'truyện tranh, truyện màu, nam chính bá đạo', 'đang cập nhật', 'câu chuyện về Diệp Vũ', 'doc-bo-tieu-dao-28.jpg', 6, 'đang tiến hành', 600, 2, 1, '2022-07-12 19:11:18', '2022-08-16 14:28:23'),
(6, 'Võ luyện đỉnh phong', 'vo-luyen-dinh-phong', 'truyên tranh,kiếm hiệp', 'đang cập nhật', 'cuộc du hành vũ trụ bao la của Dương Khai', 'vo-luyen-dinh-phong-22.jpg', 5, 'đã xong', 12500, 2, 1, '2022-07-12 19:13:05', '2022-08-16 14:21:31'),
(7, 'Tu la võ thần', 'tu-la-vo-than', 'truyện tranh, truyện màu, nam chính bá đạo', 'đang cập nhật', 'kể về cuộc đời của Sở Phong', 'tu-la-vo-than-51.jpg', 5, 'đã xong', 950, 3, 0, '2022-07-12 19:14:13', '2022-08-16 14:24:22'),
(8, 'Võ động càn khôn', 'vo-dong-can-khon', 'truyện tranh, truyện màu, nam chính bá đạo', 'đang cập nhật', 'võ động càn khôn', 'vo-dong-can-khon-31.jpg', 7, 'đã hoàn thành', 1560, 3, 0, '2022-07-17 19:45:19', '2022-08-16 14:14:41'),
(9, 'Toàn chức pháp sư', 'toan-chuc-phap-su', 'truyện tranh, truyện màu, nam chính bá đạo', 'đang cập nhật', 'toàn chức pháp sư', 'toan-chuc-phap-su-19.jpg', 7, 'đã hoàn thành', 6500, 1, 0, '2022-07-17 19:45:50', '2022-08-16 14:15:05'),
(10, 'Chưởng môn khiêm tốn chút', 'chuong-mon-khiem-ton-chut', 'truyện tranh', 'đang cập nhật', 'chưởng môn', 'chuong-mon-khiem-ton-chut-69.jpg', 8, 'đang tiến hành', 7120, 1, 0, '2022-07-17 19:46:10', '2022-08-16 14:15:23'),
(11, 'Chiến hồn tuyệt thế', 'chien-hon-tuyet-the', 'truyện tranh, truyện màu, nam chính bá đạo', 'đang cập nhật', 'chiến hồn', 'chien-hon-tuyet-the-24.jpg', 7, 'đang tiến hành', 1230, 0, 0, '2022-07-17 19:47:10', '2022-07-17 19:47:10'),
(12, 'Đấu phá thương khung', 'dau-pha-thuong-khung', 'truyện tranh, truyện màu, nam chính bá đạo', 'đang cập nhật', 'đấu phá thương khung', 'dau-pha-thuong-khung-73.jpg', 12, 'đang tiến hành', 2450, 2, 0, '2022-07-18 03:30:10', '2022-08-04 14:15:27'),
(13, 'Siêu phàm tiến hóa', 'sieu-pham-tien-hoa', 'truyên tranh', 'đang cập nhật', 'aaaaa', 'sieu-pham-tien-hoa-60.jpg', 7, 'đang tiến hành', 1250, 0, 0, '2022-07-20 13:01:37', '2022-08-05 10:12:54'),
(14, 'Thiết lập ác nữ của tôi sụp đổ rồi', 'thiet-lap-ac-nu-cua-toi-sup-do-roi', 'truyên tranh', 'đang cập nhật', 'THIẾT LẬP ÁC NỮ CỦA TÔI SỤP ĐỔ RỒI', 'thiet-lap-ac-nu-cua-toi-sup-do-roi-51.jpg', 10, 'đang tiến hành', 1100, 2, 0, '2022-08-05 09:42:11', '2022-08-05 10:12:40'),
(15, 'Thần hồn võ đễ', 'than-hon-vo-de', 'truyên tranh', 'đang cập nhật', 'aaaaaa', 'than-hon-vo-de-22.jpg', 12, 'đang tiến hành', 2600, 1, 0, '2022-08-05 09:44:02', '2022-08-05 02:44:02'),
(16, 'Ta là đại la kim tiên', 'ta-la-dai-la-kim-tien', 'truyện tranh, truyện màu, nam chính bá đạo', 'đang cập nhật', 'TA CHẲNG QUA LÀ MỘT ĐẠI LA KIM TIÊN', 'ta-chang-qua-la-mot-dai-la-kim-tien-79.jpg', 12, 'đang tiến hành', 200, 0, 0, '2022-08-05 09:44:33', '2022-08-05 10:12:17'),
(17, 'Tôn thượng', 'ton-thuong', 'truyện tranh', 'đang cập nhật', 'TÔN THƯỢNG', 'ton-thuong-3.jpg', 12, 'đang tiến hành', 4500, 0, 0, '2022-08-05 09:45:41', '2022-08-05 10:11:56'),
(18, 'Đệ nhất ở rể', 'de-nhat-o-re', 'truyên tranh', 'đang cập nhật', 'ĐỆ NHẤT NGƯỜI Ở RỂ', 'de-nhat-nguoi-o-re-39.jpg', 12, 'đang tiến hành', 6000, 2, 0, '2022-08-05 09:46:29', '2022-08-05 10:11:46'),
(19, 'Hệt như hàn quang nắng gắt', 'het-nhu-han-quang-nang-gat', 'truyện tranh, truyện màu, nam chính bá đạo', 'đang cập nhật', 'HỆT NHƯ HÀN QUANG GẶP NẮNG GẮT', 'het-nhu-han-quang-gap-nang-gat-74.jpg', 1, 'đang tiến hành', 4500, 0, 0, '2022-08-05 09:47:16', '2022-08-09 14:45:30'),
(20, 'Ông xã kết hôn thử', 'ong-xa-ket-hon-thu', 'truyện online, tiên hiệp', 'đang cập nhật', 'aaa', 'ong-xa-ket-hon-thu-manh-them-chut-nua-di-3384-50.jpg', 7, 'đang tiến hành', 4100, 0, 0, '2022-08-09 14:41:53', '2022-08-09 07:41:53'),
(21, 'Đồ đệ nhà ta lại quái rồi', 'do-de-nha-ta-lai-quai-roi', 'truyện online, tiên hiệp, luyện cấp', 'đang cập nhật', 'aaaaa', 'do-de-nha-ta-lai-quai-roi-44.jpg', 7, 'đang tiến hành', 2300, 1, 0, '2022-08-12 09:57:02', '2022-08-12 02:57:02'),
(22, 'Lăng tiên kỳ đàm', 'lang-tien-ky-dam', 'truyện online, tiên hiệp, tu tiên', 'đang cập nhật', 'aaaa', 'lang-tien-ky-dam-84.jpg', 7, 'đang tiến hành', 1230, 2, 0, '2022-08-12 09:58:02', '2022-08-12 02:58:02'),
(23, 'Tôi được năm đại lão chiều chuộng hết nấc', 'toi-duoc-nam-dai-lao-chieu-chuong-het-nac', 'truyện online, tiên hiệp', 'đang cập nhật', 'aaaaaaa', 'toi-duoc-nam-dai-lao-chieu-chuong-het-na-8283-71.jpg', 8, 'đang tiến hành', 7840, 1, 0, '2022-08-12 09:59:36', '2022-08-12 02:59:36'),
(24, 'Tiên đế qui lai', 'tien-de-qui-lai', 'tu tiên, luyện cấp', 'đang cập nhật', '111111', 'tien-de-qui-lai-12.jpg', 1, 'đang tiến hành', 2200, 3, 0, '2022-08-12 10:07:45', '2022-08-12 03:07:45'),
(25, 'Đấu la đại lục', 'dau-la-dai-luc', 'luyện cấp, truyện online, xuyên không', 'đang cập nhật', 'aaaa', 'dau-la-dai-luc-99.jpg', 1, 'đang tiến hành', 1200, 2, 0, '2022-08-12 10:09:27', '2022-08-12 03:09:27'),
(26, 'Harry Potter', 'harry-potter', 'truyên tranh, phép thuật, phiêu lưu', 'đang cập nhật', 'aaaaa', 'harry-potter-04.jpg', 6, 'đang tiến hành', 0, 2, 0, '2022-08-16 07:28:18', '2022-08-16 00:28:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Minh Nhật', 'nhat@gmail.com', NULL, '$2y$10$KCsFsWCpg2ut.h//xlpBmuU6BMs9H0481.j0GlBmrQGmn4ean7aN6', NULL, '2022-06-28 02:40:49', '2022-06-28 02:40:49'),
(2, 'Minh Nhật', 'nhat1@gmail.com', NULL, '$2y$10$e7N0SGkYz04/gAYQdV1a4eD.X8XoxcRWaPSaGEelzHA4paQUfF8kO', NULL, '2022-06-28 21:55:05', '2022-06-28 21:55:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truyen_id` (`truyen_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `thuoctheloai`
--
ALTER TABLE `thuoctheloai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truyen_id` (`truyen_id`,`danhmuc_id`);

--
-- Chỉ mục cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thuoctheloai`
--
ALTER TABLE `thuoctheloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
