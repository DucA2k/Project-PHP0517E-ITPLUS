-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2017 lúc 06:04 PM
-- Phiên bản máy phục vụ: 10.1.24-MariaDB
-- Phiên bản PHP: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', NULL, NULL),
(2, 'Laptop', NULL, NULL),
(3, 'Tivi', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs_laptops`
--

CREATE TABLE `configs_laptops` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `processor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hard_drive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_battery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ports` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slots` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs_laptops`
--

INSERT INTO `configs_laptops` (`id`, `product_id`, `processor`, `operating_system`, `memory`, `hard_drive`, `video_card`, `display`, `primary_battery`, `warranty`, `ports`, `slots`, `created_at`, `updated_at`) VALUES
(1, 5, '7th Generation Intel® Core™ i7-7700HQ Quad Core (6MB Cache, up to 3.8 GHz)', 'Windows® 10 Home Plus Single Language (EM) India Premium Partner Program English', '8GB, DDR4, 2400MHz ; up to 32GB (additional memory sold separately)', '1TB 5400 rpm Hybrid Hard Drive with 8GB Cache', 'NVIDIA® GeForce® GTX 1050 Ti with 4GB GDDR5 graphics memory', '15.6-inch FHD (1920 x 1080)Anti-Glare LED-Backlit Display', '74 Whr, 6-Cell Battery (Integrated)', '1Yr Premium Support: Onsite Service-Retail', '1 HDMI 2.0,\r\n3 USB 3.0 including 1 with PowerShare', '1 Noble lock slot,\r\n1 2-in-1 SD (UHS50) / MMC,\r\n1 RJ-45,\r\n1 Headphone/Mic', '2017-10-15 17:00:00', '2017-10-15 17:00:00'),
(2, 24, '7th Generation Intel® Core™ i5-7200U Processor (3MB Cache, up to 3.1 GHz)', 'Windows® 10 Home Plus Single Language (EM) India Premium Partner Program English', '8GB, 2400MHz, DDR4, up to 16GB (additional memory sold separately)', '2TB 5400 RPM SATA Hard Drive', 'AMD Radeon™ R7 M445 Graphics with 4G GDDR5 Graphics Memory', '15.6-inch FHD (1920 x 1080) Anti-glare LED-Backlit Display', '42WHr, 3-Cell Battery (Integrated)', '1Yr Ltd Hardware Warranty, InHome Service after Remote Diagnosis-Retail', '1 HDMI v1.4a\r\n2 USB 3.0\r\n1 USB 2.0\r\n1 Noble lock slot\r\n10/100 RJ-45 Ethernet Network\r\n\r\nMedia Card Reader\r\n1 SD card (SD, SDHC, SDXC)', '1 Noble lock slot,\r\n1 2-in-1 SD (UHS50) / MMC,\r\n1 ...', NULL, NULL),
(3, 25, '7th Generation Intel® Core™ i5-7200U Processor (3M Cache, up to 3.1 GHz)', 'Windows® 10 Home Plus Single Language (EM) India Premium Partner Program English', '8GB LPDDR3 1866MHz', '256GB PCIe Solid State Drive', 'Intel® HD Graphics 620', '13.3” FHD AG (1920 x 1080) InfinityEdge display, Silver', '60WHr Integrated Battery', '1Yr Premium Support: Onsite Service W/Accidental Damage -Retail', 'Ports\r\n2 USB 3.0 - 1 w/PowerShare\r\n1 SD card reader (SD, SDHC, SDXC)\r\n1 Headset jack \r\n1 Noble lock slot\r\n1 Thunderbolt™ 3 (2 lanes of PCI Express Gen 3) supports: Power in / charging, PowerShare, Thunderbolt 3 (40Gbps bi-directional), USB 3.1 Gen 2 (10Gb', 'Dual Channel LPDDR3 SDRAM (On Board)', NULL, NULL),
(4, 26, '8th Generation Intel® Core™ i5-8250U Processor (6M Cache, up to 3.4 GHz)', 'Windows® 10 Home Plus Single Language (EM) India Premium Partner Program English', '8GB LPDDR3 1866MHz', '256GB PCIe Solid State Drive', 'Intel® UHD Graphics', '13.3” FHD AG (1920 x 1080) InfinityEdge display, Silver machined aluminum', '60WHr Integrated Battery', '1Yr Premium Support:Onsite Service W/Accidental Damage-Retail', 'Ports\r\n2 USB 3.0 - 1 w/PowerShare\r\n1 SD card reader (SD, SDHC, SDXC)\r\n1 Headset jack \r\n1 Noble lock slot\r\n1 Thunderbolt™ 3 (2 lanes of PCI Express Gen 3) supports: Power in / charging, PowerShare, Thunderbolt 3 (40Gbps bi-directional), USB 3.1 Gen 2 (10Gb', 'Dual Channel LPDDR3 SDRAM (On Board)', NULL, NULL),
(5, 27, '7th Generation Intel® Core™ i7-7700HQ Quad Core (6MB Cache, up to 3.8 GHz)', 'Windows® 10 Home Plus Single Language (EM) India Premium Partner Program English', '8GB, DDR4, 2400MHz ; up to 32GB (additional memory sold separately)', '1TB 5400 rpm Hybrid Hard Drive with 8GB Cache', 'NVIDIA® GeForce® GTX 1050 Ti with 4GB GDDR5 graphics memory', '15.6-inch FHD (1920 x 1080)Anti-Glare LED-Backlit Display', '74 Whr, 6-Cell Battery (Integrated)', '1Yr Ltd Hardware Warranty, InHome Service after Remote Diagnosis-Retail', '1 HDMI 2.0\r\n3 USB 3.0 including 1 with PowerShare', '1 Noble lock slot,\r\n1 2-in-1 SD (UHS50) / MMC,\r\n1 ...', NULL, NULL),
(6, 28, '7th Generation Intel® Core™ i5-7200U Processor (3MB Cache, up to 3.1 GHz)', 'Windows® 10 Home Plus Single Language (EM) India Premium Partner Program English', '8GB, 2400MHz, DDR4, up to 16GB (additional memory sold separately)', '2TB 5400 RPM SATA Hard Drive', 'AMD Radeon™ R7 M445 Graphics with 4G GDDR5 Graphics Memory', '15.6-inch FHD (1920 x 1080) Anti-glare LED-Backlit Display', '42WHr, 3-Cell Battery (Integrated)', '1Yr Ltd Hardware Warranty, InHome Service after Remote Diagnosis-Retail', '1 HDMI v1.4a\r\n2 USB 3.0\r\n1 USB 2.0\r\n1 Noble lock slot\r\n10/100 RJ-45 Ethernet Network\r\n\r\nMedia Card Reader\r\n1 SD card (SD, SDHC, SDXC)', '1 Noble lock slot,\r\n1 2-in-1 SD (UHS50) / MMC,\r\n1 ...', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs_phones`
--

CREATE TABLE `configs_phones` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `network_connections` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tablet_connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sim_slots` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram_memory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expandable_memory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_capacity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen_resolution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs_phones`
--

INSERT INTO `configs_phones` (`id`, `product_id`, `condition`, `warranty_period`, `network_connections`, `tablet_connection`, `color`, `screen_size`, `model`, `operating_system_version`, `sim_slots`, `ram_memory`, `product_size`, `expandable_memory`, `phone_features`, `storage_capacity`, `screen_resolution`, `screen_type`, `core`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 'New', '12 months', '2G - GPRS', 'Smart Connector', 'White', '6.5', 'Apple Iphone 7', 'iOS 9', 'Single', '8GB', '15.8 x 7.8 x 0.7', 'No', 'Touchscreen', '128GB', '1080 x 1920', 'LED-backlit IPS LCD', '4', '	0.188', '2017-10-16 03:17:22', '2017-10-16 03:17:22'),
(3, 18, 'New', '6 months', '3G - GPRS', 'Smart Connector', 'Black', '6.5', 'Apple Iphone 7', 'iOS 10', 'Single', '8GB', '16 x 7.9 x 0.7', 'No', 'Touchscreen', '128GB', '1080 x 1920', 'LED-backlit IPS LCD', '4', '0.2', NULL, NULL),
(4, 19, 'New', '6 months', '2G - GPRS', 'Smart Connector', 'Pink', '6.5', 'Apple Iphone 6', 'iOS 9', 'Single', '4GB', '15 x 7.9 x 0.5', 'Yes', 'Touchscreen', '64GB', '1080 x 1820', 'LED-backlit IPS LCD', '3.5', '0.2', NULL, NULL),
(5, 20, 'New', '12 months', '3G - GPRS', 'Smart Connector', 'Gold', '6.5', 'Apple Iphone 6', 'iOS 10', 'Single', '16GB', '15 x 7.9 x 0.5', 'Yes', 'Touchscreen', '64GB', '1080 x 1820', 'LED-backlit IPS LCD', '3.5', '0.2', NULL, NULL),
(6, 21, 'New', '6 months', '2G - GPRS', 'Smart Connector', 'Black', '5.5', 'Apple Iphone 6S', 'iOS 10', 'Single', '4GB', '14 x 7.9 x 0.5', 'Yes', 'Touchscreen', '64GB', '1080 x 1700', 'LED-backlit IPS LCD', '3.5', '0.2', NULL, NULL),
(7, 22, 'New', '12 months', '2G - GPRS', 'Smart Connector', 'Red', '6.5', 'Apple Iphone 7', 'iOS 10', 'Single', '32GB', '15.8 x 7.8 x 0.7', 'Yes', 'Touchscreen', '64GB', '1080 x 1920', 'LED-backlit IPS LCD', '3.5', '0.2', NULL, NULL),
(8, 23, 'New', '12 months', '3G - GPRS', 'Smart Connector', 'Black', '6.5', 'Apple Iphone 6', 'iOS 9', 'Single', '4GB', '15 x 7.9 x 0.5', 'Yes', 'Touchscreen', '64GB', '1080 x 1920', 'LED-backlit IPS LCD', '3.5', '0.2', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs_tivis`
--

CREATE TABLE `configs_tivis` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `screen_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wifi_built_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speaker_system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hdmi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs_tivis`
--

INSERT INTO `configs_tivis` (`id`, `product_id`, `screen_size`, `resolution`, `processor`, `wifi_built_in`, `web_browser`, `speaker_system`, `hdmi`, `usb`, `weight`, `warranty`, `created_at`, `updated_at`) VALUES
(1, 6, '65\" (164cm)', '3840 x 2160', 'Quad-Core', 'Yes', 'Yes', '3 way 8 speaker (4 x Tweeters, 2 x Mid-range, 2 x Woofers)', 'Yes', 'Yes', '33.5kg', '1 Year Warranty - Parts and Labour', '2017-10-15 17:00:00', '2017-10-15 17:00:00'),
(3, 16, '55\" (138cm)', '3840 x 2160', 'Quad-Core', 'Yes (802.11ac)', 'Yes', '2 way 4 speaker (2 x High-Mid-range, 2 x Woofers)', 'Yes', 'Yes', '19.2kg', '1 Year Warranty - Parts and Labour', NULL, NULL),
(4, 17, '77 (195cm)', '3840 x 2160', 'Quad-Core', '	Yes (802.11ac)', 'Yes', '3 way 8 speaker (4 x Tweeters, 2 x Mid-range, 2 x Woofers)', 'Yes', 'Yes', '	Panel: 12.3kg Soundbar: 13.1kgWall Bracket: 5.0kg', '1 Year Warranty - Parts and Labour', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `name`, `email`, `phone`, `subject`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'admin', 'admin@gmail.com', '0123456789', 'abcdefg', 0, '2017-10-12 20:15:24', '2017-10-16 22:39:05'),
(2, 0, 'DucA', 'DucA@gmail.com', '987654321', '...........', 1, '2017-10-12 20:25:46', '2017-10-12 20:31:33'),
(3, 0, 'user2', 'user2@gmail.com', '35423132741534', 'test', 0, '2017-10-15 23:31:09', '2017-10-15 23:31:09'),
(4, 0, 'Hoang Minh Duc', 'admin@gmail.com', '0123456789', 'processed', 1, '2017-10-16 00:26:58', '2017-10-16 00:26:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_id`
--

CREATE TABLE `group_id` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'iphone-7.jpg', 1, NULL, NULL),
(2, 'laptop-dell-vostro.jpg', 1, NULL, NULL),
(3, 'Tivi-Toshiba-32-inch.jpg', 1, NULL, NULL),
(4, 'iPhone 7 32GB (Vàng Hồng).jpg', 4, NULL, NULL),
(5, 'iPhone 7 256GB (Đen bóng).jpg', 5, NULL, NULL),
(6, 'iphone_7.jpg', 6, NULL, NULL),
(7, 'iPhone 7 32GB (Vàng Hồng).jpg', 7, NULL, NULL),
(8, 'iPhone 7 256GB (Đen bóng).jpg', 8, NULL, NULL),
(9, 'iphone_7.jpg', 9, NULL, NULL),
(10, 'Internet Tivi LED Sony 32inch HD - Model KDL-32W600D.jpg', 10, NULL, NULL),
(11, 'Tivi LED Darling 32inch HD - Model 32HD955T2 (Đen).jpg', 11, NULL, NULL),
(12, 'Smart Tivi LED LG 43inch 4K UHD - Model 43UH610T (Đen).jpg', 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_send` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `content`, `channel`, `status`, `date_send`, `created_at`, `updated_at`) VALUES
(63, 'unknown', 'unknown@gmail.com', 'xin chao', 'd41d8cd98f00b204e9800998ecf8427ead921d60486366258809553a3db49a4a', 0, '2017-11-02', '2017-11-02 00:52:57', '2017-11-02 00:52:57'),
(64, 'unknown', 'unknown@gmail.com', 'hello', 'd41d8cd98f00b204e9800998ecf8427ead921d60486366258809553a3db49a4a', 0, '2017-11-02', '2017-11-02 00:53:26', '2017-11-02 00:53:26'),
(65, 'Hoang', 'hoangken@gmail.com', 'xin chao toi can duoc tu van', 'd41d8cd98f00b204e9800998ecf8427e5ca35f925a8fb53464c16c2beddb6b1f', 0, '2017-11-03', '2017-11-03 09:07:00', '2017-11-03 09:07:00');

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
(3, '2017_09_23_071239_create_products_table', 2),
(4, '2017_09_23_071634_create_categories_table', 3),
(5, '2017_09_23_071930_create_images_table', 4),
(6, '2017_09_23_072120_create_order_details_table', 5),
(7, '2017_09_23_072340_create_orders_table', 6),
(8, '2017_09_23_073006_add_column_group_id_to_table_users', 7),
(9, '2017_09_23_073147_create_group_id_table', 8),
(10, '2017_09_23_073813_create_slides_table', 9),
(11, '2017_09_23_074008_create_news_table', 10),
(13, '2017_09_23_074102_create_reviews_table', 11),
(14, '2017_09_23_080754_add_column_id_cauhinh_to_products', 12),
(15, '2017_09_24_051228_create_suggest_products', 13),
(16, '2017_09_26_092048_change_column_table_image', 14),
(17, '2017_09_26_092857_drop_coumlum_id_image_table_products', 15),
(18, '2017_09_26_120207_change_column_table_categories', 16),
(19, '2017_09_26_121928_change_column_table_images', 17),
(20, '2017_09_26_122123_change_column_table_news', 18),
(21, '2017_09_26_122408_change_comlumn_table_order_detais', 19),
(22, '2017_09_26_122722_change_column_table_products', 19),
(23, '2017_09_26_125113_insert_column_table_products', 20),
(24, '2017_09_27_030651_dropcolumn_price_discount_table_products', 21),
(25, '2017_09_27_163430_add_column_to_table_users', 22),
(27, '2017_09_28_124544_add_column_status_to_reviews_table', 23),
(28, '2017_10_01_120710_add_comlumn_status_table_reviews', 24),
(30, '2017_10_13_020740_update_column_reviews', 25),
(33, '2017_10_13_022022_create_table_contact', 26),
(34, '2017_10_14_080958_add_column_avatar_and_gender_to_table_users', 27),
(36, '2017_10_15_033613_add_column_link_into_products_table', 28),
(37, '2017_10_15_084703_add_user_id_into_orders_table', 29),
(38, '2017_10_15_132656_add_column_product_name_into_order_details', 30),
(47, '2017_10_16_062753_add_column_user_id_into_contacts', 31),
(49, '2017_10_16_080608_create_table_configs_phones', 32),
(51, '2017_10_16_104555_create_table_configs_laptop', 33),
(53, '2017_10_16_113650_create_table_configs_tivi', 34),
(55, '2017_10_16_120750_create_table_configs_camera', 35),
(56, '2017_10_18_134826_add_column_product_id_to_review', 36),
(57, '2017_10_19_152825_delete_column_status_in_review', 37),
(58, '2017_10_30_074159_create_table_chats', 38),
(59, '2017_10_30_134303_create_table_messages', 39),
(60, '2017_10_31_003348_add_column_email_into_messages_table', 40),
(61, '2017_10_27_052406_change_column_user_id_in_contact', 41),
(62, '2017_11_30_083437_add_column_thumbnail_into_news_table', 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `thumbnail`, `content`, `created_at`, `updated_at`) VALUES
(1, 'CHÀO MỪNG ĐẾN VỚI SHOPPE - NƠI MUA SẮM VÀ KINH DOANH LÝ TƯỞNG HÀNG ĐẦU VIỆT NAM', 'new1.jpg', 'Nơi mua sắm lý tưởng Với hàng trăm ngàn sản phẩm đa dạng thuộc những ngành hàng khác nhau từ sức khỏe và sắc đẹp, trang trí nhà cửa, thời trang, điện thoại và máy tính bảng đến hàng điện tử tiêu dùng và điện gia dụng, Shoppe sẽ đáp ứng tất cả nhu cầu mua sắm của bạn. Bên cạnh những sản phẩm đến từ các thương hiệu quốc tế và Việt Nam, bạn cũng có thể tìm thấy nhiều sản phẩm độc quyền chỉ có duy nhất tại Shoppe. Mua sắm dễ dàng và thuận tiện Không còn phải lo kẹt xe, đông đúc và xếp hàng dài chờ đợi! Giờ đây, bạn có thể mua sắm bất cứ khi nào, ở bất cứ đâu trên máy tính và điện thoại di động của mình. Với dịch vụ chuyển hàng nhanh chóng và đáng tin cậy, bạn chỉ cần ngồi thư giãn tại nhà và món hàng sẽ được giao đến tận nơi. Mua sắm an toàn và đảm bảo Hiểu được tầm quan trọng của việc mua sắm an toàn và đảm bảo, chúng tôi cung cấp cho khách hàng nhiều lựa chọn thanh toán an ninh bao gồm cả thanh toán khi nhận được hàng, nghĩa là bạn chỉ trả tiền khi đã nhận được món hàng của mình. Bảo đảm về chất lượng và tính xác thực: Tất cả các giao dịch trên Shoppe đều được đảm bảo là sản phẩm chính hãng, mới, không khiếm khuyết hay hư hỏng. Nếu không, bạn có thể hoàn trả.', NULL, NULL),
(2, 'DỄ DÀNG KINH DOANH TẠI SHOPPE.VN', 'new2.jpg', 'Tiếp cận hệ thống khách hàng lớn nhất khu vực Đông Nam Á và giải pháp bán hàng toàn diện.', NULL, NULL),
(3, 'DỊCH VỤ CHĂM SÓC KHÁCH HÀNG', 'new3.jpg', 'Đối với bất kỳ câu hỏi hoặc phản hồi của bạn, vui lòng liên hệ với dịch vụ khách hàng của chúng tôi tại đây. Chúng tôi sẽ cố gắng đáp ứng yêu cầu của bạn trong vòng 24 giờ.', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_order` date NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` bigint(20) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `email`, `address`, `date_order`, `payment`, `total`, `note`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Minh Hoàng', '01675460285', 'quynh4589@gmail.com', 'Đông Ngạc, Bắc Từ Liêm, Hà Nội', '2017-10-11', 'Tiền mặt', 42000000, 'Delivering', 8, '2017-10-01 03:33:10', '2017-10-18 20:46:45'),
(2, 'Hoang Minh Duc', '0971410197', 'duchoang11097@gmail.com', 'Đông Ngạc, Từ Liêm, Hà Nội', '2017-10-10', 'Tiền mặt', 60000000, 'Deliveried', 9, '2017-10-16 01:28:24', '2017-10-17 21:09:53'),
(14, 'Hoàng Minh Đức', '0123456789', 'duchoang11097@gmail.com', 'Nhật Tảo , Bắc Từ Liêm , Hà Nội', '2017-10-24', 'Tiền mặt', 131000000, 'Delivering', 9, '2017-10-24 01:18:33', '2017-10-24 01:18:33'),
(15, 'Nguyễn thị Ngọc Quỳnh', 'dkjcbjkd', 'suahsh@gmail.com', 'kdjckjdj', '2017-10-24', 'Tiền mặt', 223000000, 'Delivering', 0, '2017-10-24 02:09:08', '2017-10-24 02:09:08'),
(16, 'quynh', 'kjsacjkd', 'quynh4589@gmail.com', 'quynh4589@gmail.com', '2017-10-24', 'Tiền mặt', 223000000, 'Delivering', 0, '2017-10-24 02:16:01', '2017-10-24 02:16:01'),
(17, 'Nguyễn Minh Hoàng', '01675460285', 'quynh4589@gmail.com', 'Đông Ngạc, Bắc Từ Liêm, Hà Nội', '2017-10-24', 'Tiền mặt', 141000000, 'Delivering', 8, '2017-10-24 02:17:28', '2017-10-24 02:17:28'),
(18, 'Nguyễn Minh Hoàng', '01675460285', 'quynh4589@gmail.com', 'Đông Ngạc, Bắc Từ Liêm, Hà Nội', '2017-10-24', 'Tiền mặt', 141000000, 'Delivering', 8, '2017-10-24 02:18:24', '2017-10-24 02:18:24'),
(19, 'Nguyễn Minh Hoàng', '01675460285', 'quynh4589@gmail.com', 'Đông Ngạc, Bắc Từ Liêm, Hà Nội', '2017-11-08', 'Tiền mặt', 71000000, 'Delivering', 8, '2017-11-07 21:10:04', '2017-11-07 21:10:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Iphone 7', 1, 7000000.00, NULL, NULL),
(2, 1, 5, 'Laptop Dell ', 2, 30000000.00, NULL, NULL),
(3, 1, 6, 'Tivi Toshiba 32', 1, 20000000.00, NULL, NULL),
(4, 2, 25, 'New XPS 13 Laptop', 5, 20000000.00, '2017-10-03 10:15:13', '2017-10-03 10:15:13'),
(15, 14, 28, 'Dell XP 13', 1, 41000000.00, '2017-10-24 01:18:33', '2017-10-24 01:18:33'),
(16, 14, 27, 'Dell Inspiron 15 7567', 1, 50000000.00, '2017-10-24 01:18:33', '2017-10-24 01:18:33'),
(17, 14, 17, 'Smart Tivi LED LG 43inch 4K UHD - Model 43UH610T (Đen)', 1, 40000000.00, '2017-10-24 01:18:33', '2017-10-24 01:18:33'),
(21, 19, 1, 'Iphone 7', 2, 14000000.00, '2017-11-07 21:10:04', '2017-11-07 21:10:04'),
(22, 19, 19, 'Iphone 6 Pink', 1, 24000000.00, '2017-11-07 21:10:04', '2017-11-07 21:10:04'),
(23, 19, 20, 'Iphone 6 Gold', 1, 16000000.00, '2017-11-07 21:10:04', '2017-11-07 21:10:04'),
(24, 19, 18, 'Iphone-7(4)', 1, 17000000.00, '2017-11-07 21:10:04', '2017-11-07 21:10:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$qKN4MW8I0nCD.1NFDCE9lOxNzPgM9a3YbSe5ClBRqNMSJ4OFRfan2', '2017-10-14 07:20:09'),
('duchoang11097@gmail.com', '$2y$10$qpTllwJgpOzctAznfAWXC.dfdOKAZ8GPgIOyHcBaU7JnrKsEHVZ5C', '2017-10-19 03:30:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `config_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `discount`, `count`, `description`, `content`, `status`, `thumbnail`, `category_id`, `config_id`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 7', 'iphone-7', 7000000.00, 10, 100, 'Không còn jack cắm tai nghe truyền thống, thay vào đó tai tai nghe EarPod không dây hoặc kết nối thông quan đầu cắm Lightning. Dung lượng bộ nhớ được tăng đáng kể, bạn có thể sở hữu phiên bản lên đến 256GB. Ngoài những màu sắc quen thuộc, Apple đã giới thiệu đến người dùng phiên bản màu đen bóng (Jet Black) cực kỳ ấn tượng. Trọng lượng máy nhẹ hơn và màn hình sáng hơn cũng là một điểm đáng chú ý. Nhờ bỏ đi jack cắm tai nghe Apple đã có thể trang bị hệ thống loa kép với âm thanh stereo cực kỳ sống động. Apple đã loại bỏ nút Home vật lý thay bằng nút cảm ứng với công nghệ cảm ứng lực Force Touch độc đáo. Cuối cùng là pin “khủng” hơn, bộ xử lý mạnh hơn cũng như camera tốt hơn hỗ trợ quay video 4K.', '', 0, 'iphone-7.jpg', 1, 1, NULL, NULL),
(5, 'Dell 70087069', 'dell-70087069', 15000000.00, 0, 100, 'Laptop Dell Vostro 3559với màn mình to 15.6 inch thoải mái và chip Core i5 là một lựa chọn tốt cho bạn ở mức giá phổ thông.\n			Cấu hình đáp ứng đầy đủ nhu cầu\n			Dell Vostro 3559 được trang bị chíp core i5 lõi kép đời mới nhất Skylake 2016 (có năng lực vận hành cao hơn 30% so với đời 4, rất phù hợp cho những bạn thích cập nhật công nghệ), cùng khả năng tự động ép xung từ 2,2Ghz lên 2,8Ghz nhờ công nghệ Turbo Boost, bởi vậy laptop bạn cũng bền hơn trước.\n			Bạn cũng có thể chạy nhiều tác vụ một lúc, mở nhiều tab trên trình duyệt nhờ dung lượng Ram lớn 4GB với công nghệ chạy đa nhiệm DDR3 và hoàn toàn yên tâm bởi ổ cứng khá 500GB để lưu trữ nhiều tài liệu hơn, đủ chứa hình ảnh cá nhân, video hay ứng dụng.\n			Bạn dễ dàng kết nối từ laptop tới máy chiếu nhờ cổng VGA tiện ích. Bạn cũng có được sự linh động cực lớn khi phải sử dụng pin bởi thời gian cho phép bạn dùng mà không cần điện đến 4 tiếng khi lướt web, gõ văn bản.', NULL, 0, 'laptop-dell-vostro.jpg', 2, 2, NULL, NULL),
(6, 'Toshiba 32 inch 32L3750', 'toshiba-32-inch-32l3750', 20000000.00, 20, 100, 'Toshiba L3750VN là thế hệ tivi mới thuộc series L37 của Toshiba hướng đến thiết kế tối giản nhưng cao cấp và sang trọng. Tivi Toshiba L3750VN cho phép người dùng tận hưởng cảm xúc một cách trọn vẹn với công nghệ hình ảnh Essential PQ giúp tái tạo màu sắc rực rỡ, độ sáng hoàn hảo, độ tương phản chính xác cùng với khả năng tái hiện những hình ảnh chuyển động sắc nét. Bên cạnh đó, người xem sẽ được trải nghiệm chất lượng âm thanh trung thực nhất, nhờ vào hệ thống loa được thiết kế mới, kết hợp công nghệ âm thanh vòm DTS TruSurround mang đến trải nghiệm âm thanh không giới hạn. Ngoài ra, tivi còn đến với chuẩn kết nối MHL cho phép bạn xem mọi nội dung từ điện thoại trên một màn hình lớn, cổng kết nối này cũng kiêm luôn chức năng sạc cho điện thoại để bạn tận hưởng trọn vẹn những nội dung yêu thích mà không lo bị gián đoạn vì hết pin.\n\n			Đẳng cấp đỉnh cao của vẻ đẹp tối giản\n			Thiết kế Lounge Style Concept mang lại một trải nghiệm nghe nhìn thoải mái hơn trong một thiết kế tối giản. Thiết kế dựa trên không gian sống, tôn vinh sự tao nhã, thanh lịch, hòa hợp với từng đường nét của căn phòng bạn.\n\n			Màu sắc rực rỡ hơn bao giờ hết\n			Trải nghiệm trọn vẹn từng khoảnh khắc nhờ vào công nghệ tạo hình CEVO Engine của Toshiba. Công nghệ này sẽ phân tích và tinh chỉnh giúp tái tạo hình ảnh chi tiết hơn và sâu hơn, khiến cho mọi thứ từ màn ảnh tivi sẽ sống động và chân thật.', NULL, 0, 'Tivi-Toshiba-32-inch.jpg', 3, 3, NULL, NULL),
(16, 'Tivi LED Darling 32inch HD - Model 32HD955T2 (Đen)', 'tivi-led-darling-32inch-hd-model-32hd955t2-den', 50000000.00, 20, 100, NULL, NULL, 0, 'f016aee13a6605c284fd60d8343b42e2.jpg', 3, 3, '2017-10-16 21:30:51', '2017-10-16 21:30:51'),
(17, 'Smart Tivi LED LG 43inch 4K UHD - Model 43UH610T (Đen)', 'smart-tivi-led-lg-43inch-4k-uhd-model-43uh610t-den', 40000000.00, 30, 100, NULL, NULL, 0, '990c2a3a9646c9de2af65d3bff634bd8.jpg', 3, 3, '2017-10-16 21:32:52', '2017-10-16 21:32:52'),
(18, 'Iphone-7(4)', 'iphone-7-4', 17000000.00, 0, 50, NULL, NULL, 0, '117f115d348f8448298a567ed8d0326d.png', 1, 1, '2017-10-16 22:21:09', '2017-10-16 22:21:09'),
(19, 'Iphone 6 Pink', 'iphone-6-pink', 24000000.00, 0, 100, NULL, NULL, 0, 'ca1a32f1c55fe41283a78c41b907aaeb.jpg', 1, 1, '2017-10-18 05:27:01', '2017-10-18 05:27:01'),
(20, 'Iphone 6 Gold', 'iphone-6-gold', 16000000.00, 0, 50, NULL, NULL, 0, '18236d73b0675f894e6b1f5ce34e10cc.jpg', 1, 1, '2017-10-18 05:27:54', '2017-10-18 05:27:54'),
(21, 'Iphone 6S Black', 'iphone-6s-black', 18000000.00, 0, 100, NULL, NULL, 0, '7831d99ddcc18aba1c63d45f1ff5da84.jpg', 1, 1, '2017-10-18 05:28:30', '2017-10-18 05:28:30'),
(22, 'Iphone 7 Red', 'iphone-7-red', 24000000.00, 0, 50, NULL, NULL, 0, 'a46df074e98b3e5bad58c553ce42584d.jpg', 1, 1, '2017-10-18 05:29:03', '2017-10-18 05:29:03'),
(23, 'Iphone 6 Black', 'iphone-6-black', 18000000.00, 0, 50, NULL, NULL, 0, '723423fd3d2db679cbb00c8b894d1ae0.jpg', 1, 1, '2017-10-18 05:30:05', '2017-10-18 05:30:05'),
(24, 'acer aspire vx5-591g-54pd', 'acer-aspire-vx5-591g-54pd', 24000000.00, 0, 50, NULL, NULL, 0, 'ab809dcc622183c3c3586c09428fbdb3.jpg', 2, 2, '2017-10-18 06:05:03', '2017-10-18 06:05:03'),
(25, 'New XPS 13 Laptop', 'new-xps-13-laptop', 30000000.00, 0, 50, NULL, NULL, 0, 'b56b4d6781b3e9639372b26f93d3dcab.jpg', 2, 2, '2017-10-18 06:09:59', '2017-10-18 06:09:59'),
(26, 'Dell XPS 13 Laptop', 'dell-xps-13-laptop', 35000000.00, 0, 50, NULL, NULL, 0, 'f5cf90aa7fbc7e3942faf26f31ed4ce1.jpg', 2, 2, '2017-10-18 06:17:38', '2017-10-18 06:17:38'),
(27, 'Dell Inspiron 15 7567', 'dell-inspiron-15-7567', 50000000.00, 0, 50, NULL, NULL, 0, '94163cc585d12730fa16a4c762589397.jpg', 2, 2, '2017-10-18 06:22:05', '2017-10-18 06:22:05'),
(28, 'Dell XP 13', 'dell-xp-13', 41000000.00, 0, 50, NULL, NULL, 0, '49e7efbc427a716acfb4e7261b6601c5.jpg', 2, 2, '2017-10-18 06:23:04', '2017-10-18 06:23:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `summary`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'This product quality is good', 'aaaaaaaaaaaaaaa', NULL, '2017-10-12 07:18:39'),
(2, 1, '1', 'My review', 'bbbbbbbbbbb', NULL, '2017-10-12 07:18:35'),
(3, 8, '5', 'Summary', 'Review', '2017-10-19 08:29:08', '2017-10-19 08:29:08'),
(4, 8, '28', 'quynh4589@gmail.com', 'aaaaaaaaaaaa', '2017-10-25 02:30:30', '2017-10-25 02:30:30'),
(5, 8, '28', 'duchoang@gmail.com', 'bbbbbbbbbbbbbbbbbbbbbbbbbb', '2017-10-25 02:30:56', '2017-10-25 02:30:56'),
(6, 1, '28', 'admn@gmail.com', 'ok', '2017-10-25 02:34:00', '2017-10-25 02:34:00'),
(7, 1, '28', 'sá', 'aaa', '2017-10-25 02:36:45', '2017-10-25 02:36:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `title`, `image`, `description`, `discount`, `link`, `created_at`, `updated_at`) VALUES
(2, 'Ti vi', 'slide-2-image.jpg', 'Chỉ còn 10.000.000 VND', '30', '3', NULL, '2017-10-18 21:15:02'),
(3, 'Ti vi', 'slide-3-image.jpg', 'Chỉ còn 12.000.000 VND', '35', '3', NULL, '2017-10-17 21:24:52'),
(4, 'Dien thoai', 'iphone-7.jpg', 'Chỉ còn 13.754.000 VND', '20', '1', NULL, '2017-10-15 01:24:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suggest_products`
--

CREATE TABLE `suggest_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `suggest_product_id` int(11) NOT NULL,
  `redirect_to_product_id` int(11) NOT NULL,
  `number_redirect` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `suggest_products`
--

INSERT INTO `suggest_products` (`id`, `suggest_product_id`, `redirect_to_product_id`, `number_redirect`, `created_at`, `updated_at`) VALUES
(91, 16, 28, 1, '2017-11-07 20:54:29', '2017-11-07 20:54:29'),
(92, 28, 5, 3, '2017-11-07 20:55:53', '2017-11-29 19:42:48'),
(93, 5, 28, 1, '2017-11-07 20:56:11', '2017-11-07 20:56:11'),
(94, 28, 27, 3, '2017-11-07 20:58:58', '2017-11-29 19:42:48'),
(95, 27, 28, 2, '2017-11-07 20:59:10', '2017-11-30 01:20:29'),
(96, 5, 1, 1, '2017-11-07 21:04:05', '2017-11-07 21:04:05'),
(97, 1, 26, 5, '2017-11-07 21:06:30', '2017-11-29 20:20:08'),
(98, 26, 1, 1, '2017-11-07 21:06:32', '2017-11-07 21:06:32'),
(99, 1, 28, 5, '2017-11-07 21:11:04', '2017-11-29 20:20:08'),
(100, 28, 1, 3, '2017-11-07 21:11:08', '2017-11-29 19:42:48'),
(101, 28, 26, 3, '2017-11-27 21:04:27', '2017-11-29 19:42:48'),
(102, 1, 27, 1, '2017-11-30 00:59:53', '2017-11-30 00:59:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '3',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `email`, `password`, `dob`, `address`, `phone`, `avatar`, `group_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'male', 'admin@gmail.com', '$2y$10$JSvw2I.Ubj7zKvcE1D4/Ou3nnqCXm3HjQDWbD.9e/GaynKwFsEQyO', '2017-01-01', 'Hà Nội', '0123456789', '72dd3eedcc9dcf9ee3114020efd32bb8.png', 1, 'RGRjk2eFTsMO3XH34RhB4uGfMznfwP6cemTkWLq1g4TJeZQtWkECIfB9RNHL', '2017-09-28 18:13:33', '2017-10-14 08:35:26'),
(3, 'unknown', 'male', 'unknown@gmail.com', '$2y$10$XBaAljUQ1meyqJVfnmUa6ON5OSbEV5iJgl3f1XIbom04jtq4qoQ/a', '1997-09-11', 'Hà Nội', '0123456789', 'ed4020adefa4d8236d7fba343422e987.png', 2, 'U8F9yYobLJFqUyEhtWeiDqHh1qmOD6IVwTV51bsQEYpufhlFDkXvc234YBm3', '2017-10-02 20:30:32', '2017-10-16 00:41:55'),
(4, 'user1', 'male', 'user1@gmail.com', '$2y$10$ZYSCK/aEgdLuxtQjAc9k4eOQ8JA4XJ3Kj8pBdYKazKVW.4uGlWwA6', '1997-11-09', 'Hà Nội', '0123456789', '90b42cab4625069064b6ab3160bc43e5.png', 3, 'Wnc7uVZDSLQoTanIvrvyagfWs0z4nhIn2l5gSymtaKG9Fp4kVtl4Z6JYI26v', '2017-10-09 06:34:52', '2017-10-16 00:42:02'),
(7, 'user2', 'female', 'user2@gmail.com', '$2y$10$hW0Z7x1rPZ5o1zoNrWgKDeRvKrMdJeghmO3sUJsrUEslhXxzIDCZ2', '2012-12-12', 'TP HCM', '35423132741534', '5d95060c6939a848a68c1aa123becdce.jpg', 3, 'iGWJwjFbIhl5vHOmg0ZaDYciT2ihgpH9EkWy6ud3BkuaHhDdm13LnABBOB5T', '2017-10-14 02:56:43', '2017-10-14 06:52:14'),
(8, 'Nguyễn Minh Hoàng', 'male', 'quynh4589@gmail.com', '$2y$10$OTjuc3nwnKyanKIku5vhKOVtBtbz6Iy3uBmQZf3VbeJHUI/v7211.', '1997-07-06', 'Đông Ngạc, Bắc Từ Liêm, Hà Nội', '01675460285', 'no-avatar.png', 3, '7pAu3VoFRsbEXnKvHrQlETQBWKDK1ewIzztpPwCWYHprieiQ7pPtumGD4Pzp', '2017-10-15 07:02:59', '2017-10-16 22:50:03'),
(9, 'Hoàng Minh Đức', 'male', 'duchoang11097@gmail.com', '$2y$10$lBeP3VTJfEMl/5y7arxgruS3p3m.5Jn6GMOVG6JnEvcz2O3nA0hUW', '1997-07-07', 'Nhật Tảo , Bắc Từ Liêm , Hà Nội', '0123456789', 'no-avatar.png', 3, 'f1Dj5Wo8PBWfpcfBYGft5HgaD7BfV786PmnM1TAH4NtVT1iFPlBJ7YiSdojT', '2017-10-17 01:53:58', '2017-10-17 04:34:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `configs_laptops`
--
ALTER TABLE `configs_laptops`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `configs_phones`
--
ALTER TABLE `configs_phones`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `configs_tivis`
--
ALTER TABLE `configs_tivis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_id`
--
ALTER TABLE `group_id`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `suggest_products`
--
ALTER TABLE `suggest_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `configs_laptops`
--
ALTER TABLE `configs_laptops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `configs_phones`
--
ALTER TABLE `configs_phones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `configs_tivis`
--
ALTER TABLE `configs_tivis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `group_id`
--
ALTER TABLE `group_id`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `suggest_products`
--
ALTER TABLE `suggest_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
