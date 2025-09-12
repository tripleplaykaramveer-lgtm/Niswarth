-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2025 at 03:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `niswarthsewa`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_users`
--

CREATE TABLE `assigned_users` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `assign_user_id` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_users`
--

CREATE TABLE `assign_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `boking_perpes` text DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `advance_amount` int(11) DEFAULT NULL,
  `due_amount` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `vendor_user_id` int(11) DEFAULT NULL,
  `parent_date` date DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `property_id`, `booking_date`, `client_name`, `mobile_number`, `boking_perpes`, `total_amount`, `advance_amount`, `due_amount`, `user_id`, `vendor_user_id`, `parent_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 109, '2024-03-27', 'Rahul', 9636253338, 'Reception', 0, 0, 0, '259', 259, NULL, '1', '2024-03-24 13:03:31', '2024-03-24 13:03:31'),
(3, 110, '2024-03-29', 'Abhi', 5889657788, 'Testing', 55000, 5000, 50000, '261', 261, NULL, '1', '2024-03-28 06:10:48', '2024-03-30 06:07:19'),
(6, 109, '2024-03-27', 'Rah', 9636253333, NULL, 0, 0, 0, '259', 259, NULL, '1', '2024-04-01 15:06:21', '2024-04-01 15:06:21'),
(7, 131, '2024-04-19', 'Vimea', 9874563215, 'Home', 114, 56, 58, '279', 279, NULL, '1', '2024-04-02 10:39:01', '2024-04-02 10:39:01'),
(8, 131, '2024-04-25', 'Vimea', 9874563215, 'Home', 114, 56, 58, '279', 279, NULL, '1', '2024-04-02 11:16:21', '2024-04-02 11:16:21'),
(9, 139, '2024-04-20', 'Vikas khanna', 1472583690, 'Wedding', 300000, 100000, 200000, '285', 285, NULL, '1', '2024-04-02 12:43:53', '2024-04-02 12:43:53'),
(11, 121, '2024-05-10', 'Mukesh ji', 123456789, 'Shadi', 150000, 50000, 100000, '270', 270, NULL, '1', '2024-04-03 06:37:19', '2024-04-03 06:37:19'),
(12, 142, '2024-04-05', 'Vikas kumar', 9784258258, 'Birthday', 15000, 5000, 10000, '289', 289, NULL, '1', '2024-04-03 07:04:31', '2024-04-03 07:04:31'),
(13, 142, '2024-04-06', 'Yadav ji', 9639639630, 'Marriage', 45000, 25000, 20000, '289', 289, NULL, '1', '2024-04-03 07:05:12', '2024-04-03 07:05:12'),
(14, 121, '2024-05-28', 'Sandeep', 987654321, 'Shadi', 155000, 25000, 130000, '270', 270, NULL, '1', '2024-04-03 07:14:38', '2024-04-03 07:14:38'),
(15, 121, '2024-05-13', 'Akash', 8976543210, 'Marriage', 160000, 40000, 120000, '270', 270, NULL, '1', '2024-04-03 07:17:55', '2024-04-03 07:17:55'),
(16, 145, '2024-04-06', 'Yadav ji', 9829084382, 'Wedding', 45000, 25000, 20000, '292', 292, NULL, '1', '2024-04-03 11:35:41', '2024-04-03 11:35:41'),
(17, 145, '2024-04-06', 'Sharma ji', 9696969696, 'Birthday', 7, 5, 2, '292', 292, NULL, '1', '2024-04-03 11:47:37', '2024-04-03 11:47:37'),
(18, 146, '2024-04-26', 'Rishab', 8784949646, NULL, 0, 0, 0, '280', 280, NULL, '1', '2024-04-05 03:16:05', '2024-04-05 03:16:05'),
(19, 146, '2024-04-29', 'Akash', 5134646469, 'Testimg', 300000, 100000, 200000, '280', 280, NULL, '1', '2024-04-05 03:16:34', '2024-04-05 03:16:34'),
(20, 147, '2024-04-11', 'Box', 8956235689, 'Tree save', 60, 28, 32, '296', 296, NULL, '1', '2024-04-08 06:08:03', '2024-04-08 06:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_order` int(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '0 INactive 1Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `short_order`, `image`, `title`, `description`, `button_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'clothes/1757593643_7806.png', 'Main Cloths Category', 'Main Cloths Category', 'Cloths', '1', '2025-09-11 06:57:23', '2025-09-11 07:13:04'),
(2, 1, 'clothes/1757593659_7589.png', 'Second Cloth Category', 'Second Cloth Category', 'Cloth', '1', '2025-09-11 06:57:39', '2025-09-11 07:13:10'),
(3, 3, 'clothes/1757593678_8930.png', 'Third Cloth Category', 'Third Cloth Category', 'Cloth', '1', '2025-09-11 06:57:58', '2025-09-11 06:57:58'),
(4, 4, 'clothes/1757593699_7591.png', 'Fourth Cloth Category', 'Fourth Cloth Category', 'Cloth', '1', '2025-09-11 06:58:19', '2025-09-11 06:58:19'),
(5, 5, 'clothes/1757593721_2225.png', 'Fivth Cloth Category', 'Fivth Cloth Category', 'Cloth', '1', '2025-09-11 06:58:41', '2025-09-11 06:58:41'),
(6, 6, 'clothes/1757593745_1195.png', 'Sixth Cloth Category', 'Sixth Cloth Category', 'Cloth', '1', '2025-09-11 06:59:05', '2025-09-11 07:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `cloth_chailderncategorys`
--

CREATE TABLE `cloth_chailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cloth_subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cloth_minichailderncategorys`
--

CREATE TABLE `cloth_minichailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cloth_chailderncategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cloth_subcategorys`
--

CREATE TABLE `cloth_subcategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cloth_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `education_type_id` varchar(255) DEFAULT NULL,
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '0 = inactive 1 = active 2 = delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `image`, `title`, `description`, `button_text`, `sort_order`, `education_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'educations/1757586390_5017.jpg', 'First Education Category', 'Main Education', 'Donate', 2, NULL, '1', '2025-09-11 04:56:30', '2025-09-11 06:12:45'),
(2, 'educations/1757587994_1777.jpg', 'Second Education Cateogry', 'Second Education Cateogry', 'Second', 1, NULL, '1', '2025-09-11 05:23:14', '2025-09-11 06:12:52'),
(3, 'educations/1757589262_3513.JPG', 'Third Education Part', 'Third Education Part', 'Education', 3, NULL, '1', '2025-09-11 05:44:22', '2025-09-11 05:44:22'),
(4, 'educations/1757589286_9199.jpg', 'Fourth Education Category', 'Fourth', 'Fourth', 4, NULL, '1', '2025-09-11 05:44:46', '2025-09-11 05:44:46'),
(5, 'educations/1757589314_8501.jpg', 'Fivth Education Category', 'Fivth Education Category', 'Education', 5, NULL, '1', '2025-09-11 05:45:14', '2025-09-11 05:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `education_chailderncategorys`
--

CREATE TABLE `education_chailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `educationsubcategory_id` bigint(20) UNSIGNED NOT NULL,
  `short_order` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_chailderncategorys`
--

INSERT INTO `education_chailderncategorys` (`id`, `educationsubcategory_id`, `short_order`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1', 'First Child Category', '1', '2025-09-12 02:33:44', '2025-09-12 02:33:44', NULL),
(2, 1, '2', 'Second Child Category', '1', '2025-09-12 02:34:09', '2025-09-12 04:58:22', NULL),
(3, 1, '3', 'Third Child Category', '1', '2025-09-12 02:34:25', '2025-09-12 02:34:25', NULL),
(4, 1, '4', 'Fourth Child Category', '1', '2025-09-12 02:34:41', '2025-09-12 02:34:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_minichailderncategorys`
--

CREATE TABLE `education_minichailderncategorys` (
  `id` int(11) NOT NULL,
  `short_order` int(50) NOT NULL,
  `educationchailderncategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_minichailderncategorys`
--

INSERT INTO `education_minichailderncategorys` (`id`, `short_order`, `educationchailderncategory_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '\"First Mini Child Category\"', '1', '2025-09-12 02:38:39', '2025-09-12 12:15:25', NULL),
(2, 2, 1, '\"Second Mini Child Category\"', '1', '2025-09-12 02:39:14', '2025-09-12 10:31:45', NULL),
(3, 3, 1, '\"Third Mini Child Category\"', '1', '2025-09-12 02:39:34', '2025-09-12 10:31:47', NULL),
(4, 4, 1, '\"Fourth Mini Child Category\"', '1', '2025-09-12 02:39:51', '2025-09-12 10:31:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_subcategorys`
--

CREATE TABLE `education_subcategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `education_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `short_order` int(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_subcategorys`
--

INSERT INTO `education_subcategorys` (`id`, `education_id`, `name`, `title`, `status`, `short_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '\"First Sub Category\"', 'First Sub Category', '1', 1, '2025-09-11 06:06:33', '2025-09-11 06:06:33', NULL),
(2, 1, '\"Second Sub Catgory\"', 'Second Sub Catgory', '1', 2, '2025-09-11 06:06:49', '2025-09-11 06:06:49', NULL),
(3, 1, '\"Third Sub Education Category\"', 'Third Sub Education Category', '1', 3, '2025-09-11 06:07:15', '2025-09-11 06:07:15', NULL),
(4, 1, '\"Fourth Eduucation Sub Category\"', 'Fourth Eduucation Sub Category', '1', 4, '2025-09-11 06:07:34', '2025-09-11 06:07:34', NULL),
(5, 1, '\"Fivth Education Sub Category\"', 'Fivth Education Sub Category', '1', 1, '2025-09-11 06:07:58', '2025-09-12 02:44:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_waters`
--

CREATE TABLE `food_waters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_order` int(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_waters`
--

INSERT INTO `food_waters` (`id`, `short_order`, `image`, `title`, `description`, `button_text`, `created_at`, `updated_at`) VALUES
(1, 1, 'food-water/w0Xae6crDLtpnliRh4A2pJrTBfct5OMnuvBkrRcy.png', 'Food Main Category', 'Food Main Category', 'Food', '2025-09-11 06:31:37', '2025-09-11 06:50:13'),
(2, 2, 'food-water/hmvg0ozLLt9N4tLnfWBhRfRgxlFCUq8Crmub6XeC.png', 'Food Second Category', 'Food Second Category', 'Food', '2025-09-11 06:31:54', '2025-09-11 06:50:21'),
(3, 3, 'food-water/IrClmvN1v7pQFwav3laaAxFbPE5loyNmEJNTQEkF.png', 'Food Third Category', 'Food Third Category', 'Food', '2025-09-11 06:32:15', '2025-09-11 06:32:15'),
(4, 4, 'food-water/ymxUzZ1AA1Zi03kukGZsFdgRruhMQbANha8phkt0.png', 'Food Fourth Category', 'Food Fourth Category', 'Food', '2025-09-11 06:32:42', '2025-09-11 06:32:42'),
(5, 5, 'food-water/VxoZcAvXwRNfvSa7u8t1btbPP5tPleuAH0xG2pGu.png', 'Food Fivth Category', 'Food Fivth Category', 'Food', '2025-09-11 06:33:06', '2025-09-11 06:33:06'),
(6, 6, 'food-water/TQD09JRWRLyg3buVNiHcfNbSMQfbDZBBpw1ZXReA.png', 'Food Sixth Category', 'Food Sixth Category', 'Food', '2025-09-11 06:33:27', '2025-09-11 06:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `food_water_chailderncategorys`
--

CREATE TABLE `food_water_chailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_water_subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_water_minichailderncategorys`
--

CREATE TABLE `food_water_minichailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_water_chailderncategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_water_subcategorys`
--

CREATE TABLE `food_water_subcategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_water_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `property_id`, `created_at`, `updated_at`) VALUES
(31, 'gallery-1698318620-0.jpg', 32, '2023-10-26 11:10:20', '2023-10-26 11:10:20'),
(32, 'gallery-1698230464-0.jpg', 50, '2023-10-25 10:41:04', '2023-10-25 10:41:04'),
(33, 'gallery-1698409993-2.jpg', 37, '2023-10-27 12:33:13', '2023-10-27 12:33:13'),
(51, 'gallery-1698408225-1.jpg', 33, '2023-10-27 12:03:45', '2023-10-27 12:03:45'),
(52, 'gallery-1698408225-2.jpg', 34, '2023-10-27 12:03:45', '2023-10-27 12:03:45'),
(54, 'gallery-1698409586-0.jpg', 35, '2023-10-27 12:26:26', '2023-10-27 12:26:26'),
(57, 'gallery-1698409586-3.jpg', 36, '2023-10-27 12:26:26', '2023-10-27 12:26:26'),
(61, 'gallery-1698409635-3.jpg', 37, '2023-10-27 12:27:15', '2023-10-27 12:27:15'),
(70, 'gallery-1698410292-4.jpg', 38, '2023-10-27 12:38:12', '2023-10-27 12:38:12'),
(71, 'gallery-1698659288-0.jpg', 39, '2023-10-30 09:48:08', '2023-10-30 09:48:08'),
(72, 'gallery-1698659288-1.jpg', 39, '2023-10-30 09:48:08', '2023-10-30 09:48:08'),
(73, 'gallery-1698659288-2.jpg', 40, '2023-10-30 09:48:08', '2023-10-30 09:48:08'),
(74, 'gallery-1698659288-3.jpg', 41, '2023-10-30 09:48:08', '2023-10-30 09:48:08'),
(79, 'gallery-1698659373-0.jpg', 52, '2023-10-30 09:49:33', '2023-10-30 09:49:33'),
(80, 'gallery-1698659373-1.jpg', 42, '2023-10-30 09:49:33', '2023-10-30 09:49:33'),
(81, 'gallery-1698659373-2.jpg', 43, '2023-10-30 09:49:33', '2023-10-30 09:49:33'),
(83, 'gallery-1698665280-0.jpg', 45, '2023-10-30 11:28:00', '2023-10-30 11:28:00'),
(87, 'gallery-1698667481-1.jpg', 53, '2023-10-30 12:04:41', '2023-10-30 12:04:41'),
(88, 'gallery-1698667481-2.jpg', 44, '2023-10-30 12:04:41', '2023-10-30 12:04:41'),
(89, 'gallery-1698667481-3.jpg', 54, '2023-10-30 12:04:41', '2023-10-30 12:04:41'),
(90, 'gallery-1698672860-0.jpg', 46, '2023-10-30 13:34:20', '2023-10-30 13:34:20'),
(91, 'gallery-1698672860-1.jpg', 47, '2023-10-30 13:34:20', '2023-10-30 13:34:20'),
(92, 'gallery-1698672860-2.jpg', 48, '2023-10-30 13:34:20', '2023-10-30 13:34:20'),
(93, 'gallery-1698672860-3.jpg', 28, '2023-10-30 13:34:20', '2023-10-30 13:34:20'),
(94, 'gallery-1698931836-0.webp', 10, '2023-11-02 13:30:36', '2023-11-02 13:30:36'),
(95, 'gallery-1698932197-0.webp', 2, '2023-11-02 13:36:37', '2023-11-02 13:36:37'),
(103, 'gallery-1699019102-0.webp', 31, '2023-11-03 13:45:02', '2023-11-03 13:45:02'),
(104, 'gallery-1699019134-0.webp', 32, '2023-11-03 13:45:34', '2023-11-03 13:45:34'),
(105, 'gallery-1699019163-0.webp', 33, '2023-11-03 13:46:03', '2023-11-03 13:46:03'),
(106, 'gallery-1699019188-0.webp', 34, '2023-11-03 13:46:28', '2023-11-03 13:46:28'),
(108, 'gallery-1699019511-0.webp', 36, '2023-11-03 13:51:51', '2023-11-03 13:51:51'),
(109, 'gallery-1699019567-0.webp', 37, '2023-11-03 13:52:47', '2023-11-03 13:52:47'),
(110, 'gallery-1699019616-0.webp', 38, '2023-11-03 13:53:36', '2023-11-03 13:53:36'),
(111, 'gallery-1699019697-0.webp', 39, '2023-11-03 13:54:57', '2023-11-03 13:54:57'),
(112, 'gallery-1699078160-0.jpg', 40, '2023-11-04 06:09:20', '2023-11-04 06:09:20'),
(113, 'gallery-1699078160-1.jpg', 40, '2023-11-04 06:09:20', '2023-11-04 06:09:20'),
(114, 'gallery-1699078160-2.jpg', 40, '2023-11-04 06:09:20', '2023-11-04 06:09:20'),
(115, 'gallery-1699078160-3.jpg', 40, '2023-11-04 06:09:20', '2023-11-04 06:09:20'),
(117, 'gallery-1699085135-0.jpg', 42, '2023-11-04 08:05:35', '2023-11-04 08:05:35'),
(118, 'gallery-1699087522-0.jpg', 41, '2023-11-04 08:45:22', '2023-11-04 08:45:22'),
(153, 'gallery-1700461919-0.jpg', 45, '2023-11-20 06:31:59', '2023-11-20 06:31:59'),
(154, 'gallery-1701767891-0.jpg', 44, '2023-12-05 09:18:11', '2023-12-05 09:18:11'),
(155, 'gallery-1701767926-0.jpg', 35, '2023-12-05 09:18:46', '2023-12-05 09:18:46'),
(156, 'gallery-1701767926-1.jpg', 35, '2023-12-05 09:18:46', '2023-12-05 09:18:46'),
(157, 'gallery-1701767926-2.jpg', 35, '2023-12-05 09:18:46', '2023-12-05 09:18:46'),
(158, 'gallery-1701767926-3.jpg', 35, '2023-12-05 09:18:46', '2023-12-05 09:18:46'),
(159, 'gallery-1701767926-4.jpg', 35, '2023-12-05 09:18:46', '2023-12-05 09:18:46'),
(160, 'gallery-1703502053-0.png', 51, '2023-12-25 11:00:53', '2023-12-25 11:00:53'),
(161, 'gallery-1703588754-0.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(162, 'gallery-1703588754-1.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(163, 'gallery-1703588754-2.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(164, 'gallery-1703588754-3.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(165, 'gallery-1703588754-4.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(166, 'gallery-1703588754-5.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(167, 'gallery-1703588754-6.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(168, 'gallery-1703588754-7.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(169, 'gallery-1703588754-8.jpg', 52, '2023-12-26 11:05:54', '2023-12-26 11:05:54'),
(170, 'gallery-1703835095-0.jpg', 49, '2023-12-29 07:31:35', '2023-12-29 07:31:35'),
(236, 'gallery-1703922117-0.jpg', 56, '2023-12-30 07:41:57', '2023-12-30 07:41:57'),
(237, 'gallery-1703922117-1.jpg', 56, '2023-12-30 07:41:57', '2023-12-30 07:41:57'),
(239, 'gallery-1703922117-3.jpg', 56, '2023-12-30 07:41:57', '2023-12-30 07:41:57'),
(240, 'gallery-1703922117-4.jpg', 56, '2023-12-30 07:41:57', '2023-12-30 07:41:57'),
(241, 'gallery-1703922117-5.jpg', 56, '2023-12-30 07:41:57', '2023-12-30 07:41:57'),
(258, 'gallery-1704796347-0.jpg', 60, '2024-01-09 10:32:27', '2024-01-09 10:32:27'),
(259, 'gallery-1705159578-0.jpg', 62, '2024-01-13 15:26:18', '2024-01-13 15:26:18'),
(260, 'gallery-1705159578-1.jpg', 62, '2024-01-13 15:26:18', '2024-01-13 15:26:18'),
(261, 'gallery-1705159578-2.jpg', 62, '2024-01-13 15:26:18', '2024-01-13 15:26:18'),
(264, 'gallery-1707728283-0.png', 64, '2024-02-12 08:58:03', '2024-02-12 08:58:03'),
(265, 'gallery-1707728448-0.png', 65, '2024-02-12 09:00:48', '2024-02-12 09:00:48'),
(266, 'gallery-1709099586-0.jpg', 68, '2024-02-28 05:53:06', '2024-02-28 05:53:06'),
(267, 'gallery-1709099586-1.jpg', 68, '2024-02-28 05:53:06', '2024-02-28 05:53:06'),
(268, 'gallery-1709099586-2.jpg', 68, '2024-02-28 05:53:06', '2024-02-28 05:53:06'),
(269, 'gallery-1709099586-3.jpg', 68, '2024-02-28 05:53:06', '2024-02-28 05:53:06'),
(280, 'gallery-1709187138-0.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(281, 'gallery-1709187138-1.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(282, 'gallery-1709187138-2.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(283, 'gallery-1709187138-3.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(284, 'gallery-1709187138-4.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(285, 'gallery-1709187138-5.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(286, 'gallery-1709187138-6.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(287, 'gallery-1709187138-7.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(288, 'gallery-1709187138-8.jpg', 73, '2024-02-29 06:12:18', '2024-02-29 06:12:18'),
(289, 'gallery-1709296715-0.jpg', 92, '2024-03-01 12:38:35', '2024-03-01 12:38:35'),
(290, 'gallery-1709299098-0.jpg', 93, '2024-03-01 13:18:18', '2024-03-01 13:18:18'),
(293, 'gallery-1709368340-0.jpg', 99, '2024-03-02 08:32:20', '2024-03-02 08:32:20'),
(294, 'gallery-1709368340-1.jpg', 99, '2024-03-02 08:32:20', '2024-03-02 08:32:20'),
(295, 'gallery-1709554446-0.jpg', 101, '2024-03-04 12:14:06', '2024-03-04 12:14:06'),
(302, 'gallery-1709727146-0.jpg', 102, '2024-03-06 12:12:26', '2024-03-06 12:12:26'),
(303, 'gallery-1709727798-0.jpg', 103, '2024-03-06 12:23:18', '2024-03-06 12:23:18'),
(304, 'gallery-1709801031-0.jpg', 105, '2024-03-07 08:43:51', '2024-03-07 08:43:51'),
(305, 'gallery-1709801031-1.jpg', 105, '2024-03-07 08:43:51', '2024-03-07 08:43:51'),
(306, 'gallery-1709812297-0.png', 104, '2024-03-07 11:51:37', '2024-03-07 11:51:37'),
(307, 'gallery-1709812297-1.png', 104, '2024-03-07 11:51:37', '2024-03-07 11:51:37'),
(308, 'gallery-1709812297-2.png', 104, '2024-03-07 11:51:37', '2024-03-07 11:51:37'),
(309, 'gallery-1709812297-3.png', 104, '2024-03-07 11:51:37', '2024-03-07 11:51:37'),
(317, 'gallery-1710180875-0.png', 63, '2024-03-11 18:14:35', '2024-03-11 18:14:35'),
(318, 'gallery-1711622909-0.jpg', 111, '2024-03-28 10:48:29', '2024-03-28 10:48:29'),
(319, 'gallery-1711627915-0.jpg', 114, '2024-03-28 12:11:55', '2024-03-28 12:11:55'),
(320, 'gallery-1711633955-0.jpg', 118, '2024-03-28 13:52:35', '2024-03-28 13:52:35'),
(321, 'gallery-1711992657-0.jpg', 123, '2024-04-01 17:30:57', '2024-04-01 17:30:57'),
(322, 'gallery-1711992711-0.jpg', 124, '2024-04-01 17:31:51', '2024-04-01 17:31:51'),
(323, 'gallery-1711992711-1.jpg', 124, '2024-04-01 17:31:51', '2024-04-01 17:31:51'),
(324, 'gallery-1711992711-2.jpg', 124, '2024-04-01 17:31:51', '2024-04-01 17:31:51'),
(325, 'gallery-1712035027-0.jpg', 125, '2024-04-02 05:17:07', '2024-04-02 05:17:07'),
(327, 'gallery-1712061282-0.jpg', 138, '2024-04-02 12:34:42', '2024-04-02 12:34:42'),
(328, 'gallery-1712061761-0.jpg', 139, '2024-04-02 12:42:41', '2024-04-02 12:42:41'),
(330, 'gallery-1712126039-0.jpg', 140, '2024-04-03 06:33:59', '2024-04-03 06:33:59'),
(331, 'gallery-1712127558-0.jpg', 142, '2024-04-03 06:59:18', '2024-04-03 06:59:18'),
(335, 'gallery-1712286739-0.jpg', 146, '2024-04-05 03:12:19', '2024-04-05 03:12:19'),
(336, 'gallery-1712286739-1.jpg', 146, '2024-04-05 03:12:19', '2024-04-05 03:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_order` int(50) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '	0 = inactive 1 = active 2 = delete',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `short_order`, `image`, `title`, `description`, `button_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'medicine/1757591608_1985.png', 'Medicine Main Category', 'Medicine Main Category', 'Medicine', '1', '2025-09-11 06:23:28', '2025-09-11 06:28:44'),
(2, 1, 'medicine/1757591642_4481.png', 'Medicine Second Category', 'Medicine Second Category', 'Medicine', '1', '2025-09-11 06:24:02', '2025-09-11 06:28:53'),
(3, 3, 'medicine/1757591680_6362.png', 'Medicine Third Catgory', 'Medicine Third Catgory', 'Medicine', '1', '2025-09-11 06:24:40', '2025-09-11 06:24:40'),
(4, 4, 'medicine/1757591704_2614.png', 'Medicine Fourth Category', 'Medicine Fourth Category', 'Medicine', '1', '2025-09-11 06:25:04', '2025-09-11 06:25:04'),
(5, 5, 'medicine/1757591727_6463.png', 'Medicine Fivth Category', 'Medicine Fivth Category', 'Medicine', '1', '2025-09-11 06:25:27', '2025-09-11 06:25:27'),
(6, 6, 'medicine/1757591746_4858.png', 'Medicne Sixth Category', 'Medicne Sixth Category', 'Medicne', '1', '2025-09-11 06:25:46', '2025-09-11 06:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_chaildrencategorys`
--

CREATE TABLE `medicine_chaildrencategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medicinesubcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_minichaildrencategorys`
--

CREATE TABLE `medicine_minichaildrencategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medicinechaildrencategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_subcategorys`
--

CREATE TABLE `medicine_subcategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_order` int(50) NOT NULL,
  `medicine_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_subcategorys`
--

INSERT INTO `medicine_subcategorys` (`id`, `short_order`, `medicine_id`, `name`, `title`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '\"First Medicine Sub Category\"', 'First Medicine Sub Category', '1', '2025-09-12 07:00:30', '2025-09-12 07:00:30', NULL),
(2, 2, 1, '\"Second Medicine Sub Category\"', 'Second Medicine Sub Category', '1', '2025-09-12 07:00:46', '2025-09-12 07:00:46', NULL),
(3, 3, 1, '\"Third Medicine Sub Category\"', 'Third Medicine Sub Category', '1', '2025-09-12 07:02:53', '2025-09-12 07:02:53', NULL),
(4, 4, 1, '\"Fourth Medicine Sub Category\"', 'Fourth Medicine Sub Category', '1', '2025-09-12 07:03:22', '2025-09-12 07:15:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2025_08_15_110321_create_educationminichaild_table', 2),
(10, '2025_08_20_063524_create_medicine_subcategorys_table', 3),
(11, '2025_08_20_064515_create_medicine_chaildrencategorys_table', 3),
(12, '2025_08_20_064530_create_medicine_minichaildrencategorys_table', 4),
(13, '2025_08_20_071244_create_food_water_subcategorys_table', 5),
(14, '2025_08_20_071331_create_food_water_chailderncategorys_table', 5),
(15, '2025_08_20_071550_create_cloth_subcategorys_table', 6),
(16, '2025_08_20_071607_create_cloth_chailderncategorys_table', 6),
(17, '2025_08_20_071618_create_cloth_minichailderncategorys_table', 6),
(18, '2025_08_20_072239_create_tree_installation_subcategory_table', 6),
(19, '2025_08_20_072525_create_spiritual_subcategory_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00115fd52016c56b3d1f8abc384b5e018ea63b2246b2b00f8c48a8d9d2eb84d04affd63e4bc8af20', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:20:16', '2023-11-22 05:20:16', '2024-11-22 05:20:16'),
('004bce93db891ea3694718cfaa17a75ba99177d95e3dc413a3daab736dbbf0d864d118818a059342', 120, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:32:17', '2023-10-23 13:32:17', '2024-10-23 13:32:17'),
('00637f516788ea6b076d4927327fe24bcabd2c6a8645250b5ba71671ab9e13b71413060c4450c42c', 233, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 12:57:39', '2024-03-01 12:57:39', '2025-03-01 12:57:39'),
('006d71907427e87001ab3d675ce2f330e6441a0a3efe94cabcb6b661b0206512be10db4253de1db8', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:27:04', '2023-10-12 09:27:04', '2024-10-12 09:27:04'),
('0088272520177bb4076bed9595ef323ec34ef6819a600cfb0d017dc846be92af5010390b576444db', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-03 11:45:02', '2024-02-03 11:45:02', '2025-02-03 11:45:02'),
('0137321187d1779c6aa8a61b0f3ec3dcec37743e71831cfb4baa0fdcac6e5467798b07f3632ade44', 251, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-05 06:29:45', '2024-03-05 06:29:45', '2025-03-05 06:29:45'),
('0168f81b4b4d00c131681b2af511633220aa32094ce0c395c38b691e6919e0ac6b00fb8e93db9c93', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:05:04', '2023-10-07 06:05:04', '2024-10-07 06:05:04'),
('01906b794c090eef798402fca6cae88bc5e5644ac4ee94d84633e6fd4690877119f7415e3327deae', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-16 15:09:58', '2023-10-16 15:09:58', '2024-10-16 15:09:58'),
('019cf8aff848603307a3b8c631eb37a7e63857e182f472ce8b7a14628163036375d72dc4c7dd1a82', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 05:18:01', '2023-11-21 05:18:01', '2024-11-21 05:18:01'),
('01e9c9c819af035195963f16aa1e358560f8d176805206d350ec563470e527536c7d0e386cf44d5d', 52, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 00:13:41', '2023-10-03 00:13:41', '2024-10-03 05:43:41'),
('02db09190f8f3bb079de40e750bdc9b8aae57049076059d5ffa14d7cef975758549567d060217042', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 06:57:56', '2023-10-25 06:57:56', '2024-10-25 06:57:56'),
('02f9c820c52eb9e6fcd7b765bf893a40a8a773bfa6ef592d497847af58573574b29a2d2d9df7ac97', 125, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:40:03', '2023-10-23 13:40:03', '2024-10-23 13:40:03'),
('033399cd8b95d3adee777999c923c691d257586db7aa4efb0b13ac1277631a89efa1c3b9b2e51fd3', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 13:25:10', '2024-01-09 13:25:10', '2025-01-09 13:25:10'),
('034b13ff3e8653b8d84fbca343c5900fda110dc02f14df25149988bfca3da7ba90451af296398d52', 265, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-28 13:51:15', '2024-03-28 13:51:15', '2025-03-28 13:51:15'),
('041c967fa9a6d27b0a695da16278ea8f3ab2ef803b17df2cd54a064e90da68d3d3de534e940d74c0', 53, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 00:15:39', '2023-10-03 00:15:39', '2024-10-03 05:45:39'),
('042e247691ca92a78900319431d7a824cb49b5535bc2b88dc00c29338ef032bdf5b9e14cfdb46df6', 133, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-06 06:48:00', '2023-11-06 06:48:00', '2024-11-06 06:48:00'),
('049c8665788a0a6dccf15a6f3f0711b6d8a42ef98a49808d7ed7aaa86da5b7d092633d00389e9dbd', 124, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:36:43', '2023-10-23 13:36:43', '2024-10-23 13:36:43'),
('04dde8190545614a44818e1328f158c513c7f7bbac134104d7b417773113dd014f5d3143fde36973', 25, 3, 'mobile-otp', '[]', 0, '2023-09-22 02:44:58', '2023-09-22 02:44:58', '2024-09-22 08:14:58'),
('04e0a7531ae9cd3f2e9794f6ab580fae8aceeda2d78b2de2c8e49f6354b048be1796d5cf23987da0', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-26 03:33:24', '2023-11-26 03:33:24', '2024-11-26 03:33:24'),
('04fc2b61f3921fe7b1207b001990b51181ef690f974a9bb7ed52d9937e7018900025c19fa7f44bda', 295, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-07 05:35:52', '2024-04-07 05:35:52', '2025-04-07 05:35:52'),
('0506262e13a18ed561444185504880326e2588099e126067a927bf3f9cd4c85ef88a491e7147f2e0', 25, 3, 'token', '[]', 0, '2023-09-22 02:45:37', '2023-09-22 02:45:37', '2024-09-22 08:15:37'),
('05821d440fb277ae31c1887795de6eb0a7ebad0c490dac574a3fc072a71838857a6f4825139bac00', 276, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 06:46:29', '2024-04-02 06:46:29', '2025-04-02 06:46:29'),
('05f59052878ad1ea8ee2ab3ecf7a7a1e94698d687c1adc095757539b417e157a8a8185b22c2c5a7b', 213, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 11:25:51', '2024-02-29 11:25:51', '2025-03-01 11:25:51'),
('0679d8572a81d4fb4c43c9e1bd9e2a955766c1d2b7a84209c5331bfa70ca7cb565ba772009eb887d', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:22:41', '2023-10-06 06:22:41', '2024-10-06 06:22:41'),
('06b10c3fd63fab8f22e0b8a134f2d579c50ab645dea065a2667a992b38c3982d81725abdbf534fad', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:16:19', '2023-10-06 06:16:19', '2024-10-06 06:16:19'),
('0708f04c8032f0739fc2da15f2ff352111da5bfb9ba371a5d589cf6b044a8c2918015dabe0704a28', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-19 07:00:29', '2023-10-19 07:00:29', '2024-10-19 07:00:29'),
('073081dbc2505472c004eaab451dd3f77eece9d4da49877c825b7ad1b9820277275a8612b6446291', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-17 09:07:01', '2023-11-17 09:07:01', '2024-11-17 09:07:01'),
('08290183d9e5f523c88fec6518f1e0792e0ae52e3ed76d523322ed7b8669217d8a8d0376f15220b9', 297, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-09 09:23:08', '2024-04-09 09:23:08', '2025-04-09 09:23:08'),
('082d6cc5877275abbd6b6f3e1d1d51330f1ac24ca8473e7093d45d584e7a084038111de8fa30b628', 280, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-08 05:54:12', '2024-04-08 05:54:12', '2025-04-08 05:54:12'),
('08a4c63d6cc6dec8f9bc1b05d8762031a46e6d91118404c735835a76ac26e627f87f2d29e65e1065', 78, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 12:09:35', '2023-10-14 12:09:35', '2024-10-14 12:09:35'),
('08a6e8514aef64e43f36d2f3245d946d2354c0c103537398a27ade4f18c40632ad91e676c075f255', 43, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:45:19', '2023-10-02 05:45:19', '2024-10-02 11:15:19'),
('0900f2d4520901022ad080f402cf23d93eedb1738d1aec10465389192b1ee74a80ad1b4ba000861a', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:17:56', '2023-10-11 08:17:56', '2024-10-11 08:17:56'),
('0939460aff088d284741bc2ca0492e30ba389ffd0f3d16396fc97f8f1aa69f7dafef3a581efff32a', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 14:18:24', '2023-10-17 14:18:24', '2024-10-17 14:18:24'),
('094e88a84276faafa8ad3d078336532d8e11c229bd56d08fb4d080fbba7e1ed040c7be54dd640f58', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 09:06:03', '2023-10-11 09:06:03', '2024-10-11 09:06:03'),
('096d21f2b19e25c89f4d8f923c771b7dba2337499499d16821f608f910fdfe41d6534e426ca4f053', 182, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-28 11:24:12', '2024-01-28 11:24:12', '2025-01-28 11:24:12'),
('0971455d10fd0a7084ff61500fde7d00f0300758ea3c5a4815434d5fe76366f956fd3e8e2d0e93c4', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 12:15:28', '2023-11-22 12:15:28', '2024-11-22 12:15:28'),
('09b521fd48448f0d394c4a8a343983815c7b36396014683aec76ad955dfef7876ee658b274bdb100', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-09 07:49:48', '2023-11-09 07:49:48', '2024-11-09 07:49:48'),
('09ea4aae1b8f732ddb2bdd5a26f65aebd7236e930a246b3dab464b855ac30a8ebf170fa01897c0fa', 203, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 07:42:16', '2024-02-29 07:42:16', '2025-03-01 07:42:16'),
('0b08186f6dd86243f20ddfdf65e4afaf894b6a1bcffaa3b84e47829f5e91fc63026c92b9df370cf9', 278, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 08:46:47', '2024-04-02 08:46:47', '2025-04-02 08:46:47'),
('0b59d976406cd13368e09f58391f5a6d1bacefce0ab2959b238dedd251b89a31fff360dcf9c24fd6', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-18 05:48:33', '2023-10-18 05:48:33', '2024-10-18 05:48:33'),
('0b6be20e41481304857f23d0a01c67809bfc0d10da9e74b4d20dcc80fa4d5e3f04ffb15e5aacfce4', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-17 05:38:40', '2023-11-17 05:38:40', '2024-11-17 05:38:40'),
('0c13a63d63cf9a5fec893f4d185cba7f29dc0cc4602923f6fd025428332f3a3473658cd62dc9a469', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 05:01:27', '2023-10-09 05:01:27', '2024-10-09 05:01:27'),
('0c77d861444ed5d32d433b0e06865d59e79ca64a90c72b83a042e3eb779ca7e92e8fe11909c9b058', 25, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 03:37:49', '2023-09-22 03:37:49', '2024-09-22 09:07:49'),
('0c9657dd91380af4548eed07ddf1e4fad7d412e5d65810da5425606f2e68912018d5f608c47afc6f', 61, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 08:27:16', '2023-10-09 08:27:16', '2024-10-09 08:27:16'),
('0cf174a8848a962e6299ed90022f151f2929b5cd99a25e12a3addab3d6c1a1705cf23514514e34b6', 110, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 05:26:39', '2023-10-20 05:26:39', '2024-10-20 05:26:39'),
('0cfcce2bf0fd2917c31d38064eca7c828d5b3cd88d3e9090ab55fbeb8213c1b84e82b5999291ceac', 246, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 10:22:40', '2024-03-04 10:22:40', '2025-03-04 10:22:40'),
('0df791ce62ccce10e8171625ea9d02725108435fe19893bf982f7465916f7505217b4a14579d2a2b', 280, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 08:50:10', '2024-04-02 08:50:10', '2025-04-02 08:50:10'),
('0e4db2340490e1b320384ab52371121c33132f61a0169afc3fd5294be43314d827ba90ac71ccbe94', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:13:09', '2023-10-07 06:13:09', '2024-10-07 06:13:09'),
('0ee2ebba42f4c19f646b6fe2915ba41cc304064fffdee1b23f6ee5c76fb7c637c9797c80965e1c05', 179, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:32:29', '2024-01-09 12:32:29', '2025-01-09 12:32:29'),
('0ef47acc2794edf681e8683f520fba2c770b955206f774a97542b5e7c6f1795e26fecd1be821ad71', 65, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 10:10:59', '2023-10-09 10:10:59', '2024-10-09 10:10:59'),
('0f15fbbd07d287f193df815eb28175a0998dfc2a7513ad2832317949fca1b3468f3584573e345dd9', 132, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 09:41:18', '2023-11-04 09:41:18', '2024-11-04 09:41:18'),
('0fe62913d089f871b2ac4c4aa5fe6f5c1e266d19520ed4bcd45262e7779234b9e2420c203fd99bad', 179, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:37:56', '2024-01-09 12:37:56', '2025-01-09 12:37:56'),
('1045dcf517ac00f591e79162a63d16a615a5168b0a42178e943cc5f46fbe0127036c51e0e16194b3', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:27:48', '2023-10-11 08:27:48', '2024-10-11 08:27:48'),
('10eb59dc98a09804fc38f96ffe7af578847deb528228d11b5247ac8b985fd67be3ecbc89b7fd53f8', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:56:41', '2023-10-11 05:56:41', '2024-10-11 05:56:41'),
('117cce475fe67779f0da9b4cf8a3fc0d306eeeb93821d69809f4ad595fbf307ccb1f4b5ccda28cf2', 259, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-27 13:49:40', '2024-03-27 13:49:40', '2025-03-27 13:49:40'),
('123b2dc1bb4aac3f2cf9f2f043d62b0c1082eb4149520b88dabbc81243da190a0059210837dc9d0a', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:57:12', '2024-01-09 11:57:12', '2025-01-09 11:57:12'),
('12ca6edad24f0a9eda966c8951fba851780ec01e7e17d1870b9bce22fb98cf35dba6011748d49c68', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-06 07:30:41', '2024-02-06 07:30:41', '2025-02-06 07:30:41'),
('13644fb44df6aa14577667debb05e1893c7898b14ed9a52420cfdfc63d79bfae19e2f0e7dad6d398', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:02:26', '2024-01-09 12:02:26', '2025-01-09 12:02:26'),
('13693421fbb66c4e5cf31eb925a3787c40876af5edb3611c3ed954c8ab8021de2816ead7f917ccbd', 90, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 09:48:46', '2023-10-14 09:48:46', '2024-10-14 09:48:46'),
('13a9dbd3f128cea9d691cb0539d93f67cad1464ad347bd1f075a75867db942630e14869710e9ba87', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-09 05:05:30', '2023-11-09 05:05:30', '2024-11-09 05:05:30'),
('13eaebb9db47da8567f67e7955a1b0bf2647c91bfa953e370aef3143aea4408dc478259e3bedabe5', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 11:59:37', '2023-11-08 11:59:37', '2024-11-08 11:59:37'),
('1491dd1097e205d8d50ba70d395154a8a417b43f8897d7192e260f8d7c01dcc15d2e761a4f37e5fa', 206, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 09:35:33', '2024-02-29 09:35:33', '2025-03-01 09:35:33'),
('149933cc7a067b76d5eaa7053206ba7b5d5e5bbf96f5c70bdda9a2865ed4ca2cf8cc199758a5b876', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 08:26:45', '2023-10-12 08:26:45', '2024-10-12 08:26:45'),
('14bd47348350e533672227ac05a6889ac2150673fedced926dd0d04e563d156212721808bc7640cf', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-05 05:26:55', '2024-03-05 05:26:55', '2025-03-05 05:26:55'),
('14ebdeec073afd0ddbaa90105c061f27f6e8f38350c7db71f8b12cb34b648aeaeaf9824c6459a289', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:38:03', '2023-10-11 08:38:03', '2024-10-11 08:38:03'),
('150e79a3523d9274cf8c6d43c6596d54b126a136e86c67898f656a3fb149c932373d4c806cf70d7b', 259, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-26 07:51:50', '2024-03-26 07:51:50', '2025-03-26 07:51:50'),
('15679fd49e39f161219ec29d935638395235f413d2ebe0cabf222d60b879e2446cad1bf857a54e49', 124, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:39:01', '2023-10-23 13:39:01', '2024-10-23 13:39:01'),
('15878302aef53515ae8b83d986f504c043439a85ca7cb1d7bb1685687039fbd6aa1c9518225b79bc', 275, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 07:46:43', '2024-04-02 07:46:43', '2025-04-02 07:46:43'),
('15ee6e521f003fc99eaf166ef21664a200299b21c609074a3cb6ad68afe8d323262671df1b949949', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:48:33', '2023-10-06 06:48:33', '2024-10-06 06:48:33'),
('16bac9c012a31882edb740bd4ead476ccff0eb6b620bd9f152bd34cd99f964da82b1b6d2a8e6d169', 172, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-25 07:44:00', '2023-12-25 07:44:00', '2024-12-25 07:44:00'),
('173d29bc2acae2a61a9844025c55c0687ed00ef80fcc5566712eb3cad4ebeaeae803f6c1370f5058', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 10:55:29', '2023-10-12 10:55:29', '2024-10-12 10:55:29'),
('178a041a4fb74a2a514686919957222783f2b3e7d5df55d8f24293a5185ba6d0a7b7aec40b41d16f', 25, 3, 'token', '[]', 0, '2023-09-22 02:50:00', '2023-09-22 02:50:00', '2024-09-22 08:20:00'),
('17b9099e5c86ca674c394193bcacabcd616af645b2ad41a6859b54835c2d3ca543c8d916c6175962', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:56:02', '2023-10-06 06:56:02', '2024-10-06 06:56:02'),
('1818ef9bd3790ecee3b4ad1128c3debd6d4e96952df3265c16c8e085c3b0cf2ba527f68a44e494d9', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-06 11:49:25', '2024-02-06 11:49:25', '2025-02-06 11:49:25'),
('184eedbc9d2624feaec68e86674add0a375edc957f81342dcfd502349da8d55124acc7fea5708e8d', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:14:52', '2023-10-07 07:14:52', '2024-10-07 07:14:52'),
('1866e188b12953ecf365090fa52130baabd5b80c3aca06feda0ca48481c8550dfeef7cdf57ee1e63', 77, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 05:58:06', '2023-10-12 05:58:06', '2024-10-12 05:58:06'),
('1920c018de53993dde65c962a25db6e4c5c4b39560a00d459da66674eb47f6b481da8bbb30f060cd', 297, 5, 'Laravel8PassportAuth', '[]', 0, '2024-05-17 11:56:15', '2024-05-17 11:56:15', '2025-05-17 11:56:15'),
('193284a5af3415f5ac7fffb4cb1b4cf9941c7581896da1522baff482ef61f9bcb5e96d6b2946af44', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-03 14:08:01', '2024-02-03 14:08:01', '2025-02-03 14:08:01'),
('19908323e3786dec3cde2f01af9d105501088a092672ac7ad4ed4f60a4f40345a3b5589e3fa18d9b', 278, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 08:16:05', '2024-04-02 08:16:05', '2025-04-02 08:16:05'),
('19915f758dace59a3cb45cce05eb7c9ad39c29eee0b6372cd73df0e4facecd99b09c557c61151caa', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 14:21:41', '2023-11-21 14:21:41', '2024-11-21 14:21:41'),
('1a309dd7c5edb023f89d9f2414195559d93669cb29a15c81330922cdd0c14816854ffb59c746adba', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:24:48', '2023-10-23 13:24:48', '2024-10-23 13:24:48'),
('1a36f1a792bd3dec6783d903e386cc758b7bcfc6d6320ccde8542346532b4722ff8b4b29b7b859e0', 238, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 05:38:20', '2024-03-02 05:38:20', '2025-03-02 05:38:20'),
('1a99c9a453eb49a2c58581baa0b35cb9ac06cb3c00f17b50b0ff514aee0ca663212d03519e46a2b4', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 14:26:39', '2023-10-12 14:26:39', '2024-10-12 14:26:39'),
('1b68261cbe08e8a391565e361c04caf64d3bb00b6a0ff4e94e6bfed30dc9894099ec6aab1f6c498e', 179, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:31:16', '2024-01-09 12:31:16', '2025-01-09 12:31:16'),
('1b69f7c205a3408d184e030408a0edbb3f5704d1676339fdd8f4f9eefc46cf23855b5d6027ddb66d', 239, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 05:21:36', '2024-03-02 05:21:36', '2025-03-02 05:21:36'),
('1b8e11459ddcb9ba6832afc5f30d611f95f23be2e51965552fb33b53099a29000424182f0288f937', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 09:48:09', '2023-10-14 09:48:09', '2024-10-14 09:48:09'),
('1bfa6eda721bb8f2be3290a4cecdf52ce226b929269b13b677b2307807b4d04d8e3ed4b5d98300fb', 67, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:18:50', '2023-10-11 05:18:50', '2024-10-11 05:18:50'),
('1c01c8e3857be33d2d6e334ab99d67e4076ed61c81acbe2b7e0f6c91c7d0b5c829deeef5dcd7594e', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:48:48', '2024-01-09 11:48:48', '2025-01-09 11:48:48'),
('1cae3fe0e950b56eade9bab26ef75c65f0d5e1412d77870fc4eaa873f2af8155c4b1e8923eb5ca5d', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:20:08', '2023-10-11 08:20:08', '2024-10-11 08:20:08'),
('1d0b10ac0169ade0aa255c871f1ae903f1fbebd0f9bf827e9a2f2d925fcd31aa899b86c6abd85ae2', 206, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 09:31:09', '2024-02-29 09:31:09', '2025-03-01 09:31:09'),
('1d135e2962efd256fa3cb368d5caaa41317dc09dc109da92a341c6683f79cedf01d59ba4b63417d6', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:28:03', '2023-10-12 09:28:03', '2024-10-12 09:28:03'),
('1d16e774010794225218c0903a679e5022e6c4200d0d201de8a432ed5d5e5d277e5a08acd53cb434', 42, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-28 07:42:18', '2023-09-28 07:42:18', '2024-09-28 13:12:18'),
('1d86f2c16d83f091f78d87b7a76229d4f7e60bfe34d2d76ccdd381a14f3338eeb37e1fec7baed2a4', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 09:28:23', '2023-10-11 09:28:23', '2024-10-11 09:28:23'),
('1d890d0650cc0fa75ad7750d4f319d2c269562c5435d18dedce6fffde98b79b4ad67b2eaac2c55e6', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:33:16', '2023-11-22 05:33:16', '2024-11-22 05:33:16'),
('1df988eac8059a7bc83bf98724749f083684ab6cdbdecfb2a7775c50f9ee2d5617c08d523f4dba35', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:04:40', '2023-10-07 06:04:40', '2024-10-07 06:04:40'),
('1e46876f7ad03a13962155ed4aa75b960d15fed89eb1664262d788e642ee1e6f46b566baf7e2e05a', 98, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 05:44:54', '2023-10-14 05:44:54', '2024-10-14 05:44:54'),
('1e5b6cf9cbc2857371adf96dd813b3292303d577f80adbef28dc9dda4b2b7e1309a915f4e4ef160e', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:02:24', '2024-01-09 12:02:24', '2025-01-09 12:02:24'),
('1e72b1bdcbc031ee26feeac81ce51c590438b2e9430db5c3f4db34ea9562209e4586476c3ae36d35', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 05:59:46', '2023-10-06 05:59:46', '2024-10-06 05:59:46'),
('1f3cd4d2cfca08f626480702faa41910f8e63c1ca2586d1dbd6f93af2d0706ac161bd4c26fa8e1b8', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:27:49', '2023-10-23 13:27:49', '2024-10-23 13:27:49'),
('20c45da72f3cc5c9599186d056755e0ccc697d7ce44a89a621f3c4e8667a92edbcb319a89495c686', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 08:54:58', '2023-10-25 08:54:58', '2024-10-25 08:54:58'),
('2119ce4217f9a1de26e618e1f429e8ae98bf1fc865f5cf50be5d0fe4ccee5ab995ca5777bd819387', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 10:21:40', '2023-11-04 10:21:40', '2024-11-04 10:21:40'),
('213c3dfcc4adc7ae5a3fae4d3ccc6b3adc6c9619d79eabad69a0453f1509f52ab7e16f9dc94568bb', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 09:47:16', '2023-10-11 09:47:16', '2024-10-11 09:47:16'),
('214756ff64ad1f2e4b76cff05fe2da89ad5259c14c15d3326c6a93a09c92aa9907908409156d0d03', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-18 05:54:59', '2023-12-18 05:54:59', '2024-12-18 05:54:59'),
('216f543044e9f9b76e57147193fcf32b170bb1ce0a5524fcfa1d4e582ecb6f915d90847856aacee3', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:51:21', '2023-10-02 05:51:21', '2024-10-02 11:21:21'),
('21b06ab8ae659ee1ad3a9d0fab77ea44a23347fd93606171630f95d071e64280fbf02a7964b994df', 134, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 02:50:58', '2023-11-08 02:50:58', '2024-11-08 02:50:58'),
('21f9c61a829d92c8858abd02d4e7cda469fdce21399c73a06995d98a9c02d9fb426e8b04d354ebd1', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 04:44:53', '2023-10-14 04:44:53', '2024-10-14 04:44:53'),
('225b7c8de8c80e945e1e06dba9087521e7ad262405489521abf0867bb020318ef9bf2e8a51f0bfec', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:46:27', '2023-10-02 05:46:27', '2024-10-02 11:16:27'),
('229fd956d983d7b3e4bdcdda5c09fc63568b250dd885fb2f35802736e95a8111840d404043172863', 171, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-24 06:03:02', '2023-12-24 06:03:02', '2024-12-24 06:03:02'),
('22e954b197a5e5a12403c287f21d314ffcdc44aa5a7f2f6118196c983d4ee3f60f7af8c42f0a3021', 210, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 09:52:20', '2024-02-29 09:52:20', '2025-03-01 09:52:20'),
('2373fbdef4df689130c438519cedf82f2c36a976acd68c66b478ad941c48eed5623d7d42460fc651', 102, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 04:54:08', '2023-10-17 04:54:08', '2024-10-17 04:54:08'),
('23c0bc0b862a72518aaab61a7352c7cd15e38b247b7f5d4d1a0dafb88ea2381b9ebdac61cf6eca31', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 08:24:41', '2023-10-25 08:24:41', '2024-10-25 08:24:41'),
('245b937d777e882510c92d895cfb20b37f055ec048e60993fbb5b04cefc0acbb11ded701fff55784', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:35:38', '2024-01-09 11:35:38', '2025-01-09 11:35:38'),
('24843af48b516f780e99187e3df4e805dda4f403272b6d5aa0764cb82d3f9e47ca45055e665f915e', 170, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 08:02:24', '2024-04-02 08:02:24', '2025-04-02 08:02:24'),
('24e9d1bd270ea264a98aef8cbfd688470c300cfb909e143d08c7bcceac68f5b27281b3b9d9c18668', 28, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 07:14:10', '2023-09-22 07:14:10', '2024-09-22 12:44:10'),
('250aab342a0328cb1c8921e982ccfbf2ce98c083193ceaf1bf5599aac9d1c449d87055c0edc1dc42', 234, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 13:01:22', '2024-03-01 13:01:22', '2025-03-01 13:01:22'),
('25113b02be232e92fe4dba860cbdad7b17c8dbc9e8b45b1cf168136af596696bdf293c5d3150a3f9', 288, 5, 'Laravel8PassportAuth', '[]', 0, '2024-05-24 07:40:08', '2024-05-24 07:40:08', '2025-05-24 07:40:08'),
('2539b5e5a7249040dc61d8d252e188d861b9cd8efa74c2e9bf5e3f164d7083030cb27ef60bba3635', 292, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 11:25:42', '2024-04-03 11:25:42', '2025-04-03 11:25:42'),
('25549e07587fcef3859763f5a67e1778392039f7352af4de754447eb57ff1be018aa46786ad3795b', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:54:55', '2023-10-06 06:54:55', '2024-10-06 06:54:55'),
('25fc6823b6395aba9df5dcb2e60d70498be75593859dc6fd13c83003a13b53b921fb718d2d3806c6', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:10:08', '2023-10-07 06:10:08', '2024-10-07 06:10:08'),
('26071611d19c519682415cf193e5e516b27b15f31d69919718e4befe27c51c5ff8845475a84538a7', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:57:59', '2023-10-11 08:57:59', '2024-10-11 08:57:59'),
('261ea714496d905ce2c6e2c0fd229bc84083d9bb031112fd6f1f13d93ea5dae8a6387be222f6fe19', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:35:36', '2024-01-09 11:35:36', '2025-01-09 11:35:36'),
('2628d7a3886e468d48561d19f4e6c618ddc7e59505b9ee8e62ff2ad99d9996ab283956127f3d23cd', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:51:55', '2023-10-06 06:51:55', '2024-10-06 06:51:55'),
('266e7b19710e6302ba209587c218e0296f76108166aa1173a046277f766a3e41712b8c309b8bcee9', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:18:45', '2023-10-11 06:18:45', '2024-10-11 06:18:45'),
('270a2c007c491dd3c85762010ccf29d936c51c050e57468e9975d9d621e5fd835cccf1238c0b470d', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 06:37:35', '2024-02-29 06:37:35', '2025-03-01 06:37:35'),
('27240bf6af710cdf5e0799db6ee463d1a7acce322dd0eed96f6cf50af6f7af8334e69eedd2b1a2ef', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 05:48:44', '2023-10-25 05:48:44', '2024-10-25 05:48:44'),
('27ab32fca7cff844692d2eca4e1e57b133f1b49cda2e86c31fa5e48114c5dbd2023e93bbd036b9d4', 282, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 09:16:32', '2024-04-02 09:16:32', '2025-04-02 09:16:32'),
('27bfd667dfeec696616f95045ba38f36e8456e150c65c2eaff44c7403efa0d909762069f8388ce7b', 279, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 10:12:28', '2024-04-02 10:12:28', '2025-04-02 10:12:28'),
('28025e5b33bd0a0f40f7ec7b0c25db492297ed8e9fcd6223cae33f03975f2ca3248feffec2eebb86', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:26:14', '2023-10-23 13:26:14', '2024-10-23 13:26:14'),
('281b93f8116a5cec293af4bf889ce03e7463b7f10a80dd2c66996ce45eeab43fcf06e96118f49915', 267, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-29 05:16:33', '2024-03-29 05:16:33', '2025-03-29 05:16:33'),
('283e56d73308e2bf45169bd0e9ad18761128db197d64a4b4e47f04b35503a44a3af9e0a3b9fe0998', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:18:01', '2023-10-12 09:18:01', '2024-10-12 09:18:01'),
('285b6c0b4675dfee07740c86a53a88628b08147d2dafee5362f3b8e8eda8153af5b1d3e5aefc3f01', 57, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 05:17:13', '2023-10-09 05:17:13', '2024-10-09 05:17:13'),
('28b63f97f137685a24ca20904d98c09682afbabea4c72fed4da06f017546d76b2b3fed56a5008ca8', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:46:42', '2023-10-11 06:46:42', '2024-10-11 06:46:42'),
('2907f5be1e4e4984307a18fbf05418982977f57bcf7154cd8a3b697c66e90a997204d71ba0723f38', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:06:45', '2023-10-06 06:06:45', '2024-10-06 06:06:45'),
('29ab2c90caf9abd427e49284347b12a5c4cd974cc9163a6dd2a30de14f756073a056688df1b2a5f9', 240, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 05:33:59', '2024-03-02 05:33:59', '2025-03-02 05:33:59'),
('29d5284513b6e4a957f3351d5665eeef6afe760f847b876f34aa1852b50943348b9f3fd849090731', 279, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 11:33:37', '2024-04-02 11:33:37', '2025-04-02 11:33:37'),
('29ea0ef99d5f47bed8bac69626dff4fdaed1c2e64dab258495a8d8795b9e4b87f19ce8ebcc39d0b4', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 08:23:10', '2023-10-20 08:23:10', '2024-10-20 08:23:10'),
('2a23c1160eaaf6e8d793b7269b19c01cdd7f71ca56a96ac8bd90a5ca00375e95106023d53b6020e6', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 10:59:08', '2023-10-12 10:59:08', '2024-10-12 10:59:08'),
('2a51619f99dc16831f4bc9d158b223938fb0a7e0425cc0d004df0b83bba1d05c59906b9b526e1ace', 85, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 08:08:48', '2023-10-12 08:08:48', '2024-10-12 08:08:48'),
('2ab826617e7f9ccbb0c49c4722f549452cf278289864e4e24a454cdb33174291fef5e082b38954ee', 206, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 07:52:54', '2024-02-29 07:52:54', '2025-03-01 07:52:54'),
('2b13d29105dcb34380ddc08746b9bccb88bfdbe229832fb1b5d8a7b4741dcafd29786af8100ce2c9', 75, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 09:07:20', '2023-10-11 09:07:20', '2024-10-11 09:07:20'),
('2b1c39e82dd7c9ebb9b62d75dd89fab19e0e7af1ac012c9fc5b4500be406a8357c99933cbde4aac1', 243, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 06:40:25', '2024-03-02 06:40:25', '2025-03-02 06:40:25'),
('2b405717f09549c7c541b574922fb0a97c3d3ddf1cf2810110abd289182c0465909564f976793c56', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:06:22', '2023-10-07 06:06:22', '2024-10-07 06:06:22'),
('2b75c4f5dd787907f686a236b76f07ca97585e611786cea14e133ccdcb3a23d84cb47376e04cea92', 74, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 09:15:36', '2023-10-11 09:15:36', '2024-10-11 09:15:36'),
('2ba6bbe95e35bebd20b85c7fbe706c96832f44cd05f27efb12c9959bc9e6b49821d15a968b076e15', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-16 07:43:57', '2023-10-16 07:43:57', '2024-10-16 07:43:57'),
('2c0922176f9207b9a822476bb26ea877883b246fd15439162bcddf76058413d23c77c656a4b9e6ab', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 08:44:24', '2023-10-07 08:44:24', '2024-10-07 08:44:24'),
('2c31489c043541639c3c7547401870a4825cd10bc83100119935579c19b5f3cbf752435c03e662c7', 198, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-28 09:26:58', '2024-02-28 09:26:58', '2025-02-28 09:26:58'),
('2c424dbc45bc91d40a690ca6d4a9ca7de0a7ef95e69f8549672656c54b35c54650bf4c792ef8e61b', 108, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 11:33:44', '2023-10-17 11:33:44', '2024-10-17 11:33:44'),
('2c7c9c00daeaf4f25d37730f0b643b830cd492ce6e0cc177d299655bb9cb55807f5f06dfac771128', 153, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-06 04:27:21', '2023-12-06 04:27:21', '2024-12-06 04:27:21'),
('2ce9205f055e914eee8b2e169c08df903b0984136a8a19961bd71abf9571f7699107ffb526ad9df1', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:43:59', '2023-10-11 06:43:59', '2024-10-11 06:43:59'),
('2d6ef38c6ada868af90339ead5c1b9d083a870bbbb7d774fbd0872f3974099673b3b8c5fc6a16934', 247, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 06:36:56', '2024-04-03 06:36:56', '2025-04-03 06:36:56'),
('2e3e72d3aab843bf73b0dcb0faa7480e0bd2515c6940b5b1c6b0fbd60cac7326f50f3a75098b6125', 273, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-01 17:41:56', '2024-04-01 17:41:56', '2025-04-01 17:41:56'),
('2ed25871bd67abbaa00e6b9d126bb15fc51d8d233b7574de7fde5a18b0303502cc1f2ea0674e074e', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 00:02:34', '2023-10-03 00:02:34', '2024-10-03 05:32:34'),
('2f46b1d5ae706eae99ebcee29e9beb1c2e01f1af88966c500cfdd47eef17964991f6300b655c55d1', 277, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 07:02:02', '2024-04-02 07:02:02', '2025-04-02 07:02:02'),
('2f5fab5a077a5363f646278d68e5991b4225391fd8cee9ec0e6023a263c671b5e34f9b620867d712', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-18 07:55:22', '2023-10-18 07:55:22', '2024-10-18 07:55:22'),
('2fb3b3b398483feed96edeb9f3dfbcf593ba1e4b40d46e28fce59bba7d4c560604837fb440158e5a', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-02 10:00:10', '2023-12-02 10:00:10', '2024-12-02 10:00:10'),
('2fdd396620fde316ec13e339797cd346c8fbde84b837afdbeda3c59b54bbd7759993bb3d446bf1c1', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-06 11:59:40', '2024-02-06 11:59:40', '2025-02-06 11:59:40'),
('2fe48a3bca1027b995f58ced96a809c0c5e4a9955d3868939f8cda493dfd40229ab3a40d4ac62e71', 185, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-15 12:17:29', '2024-02-15 12:17:29', '2025-02-15 12:17:29'),
('3033738cd92d974a7b0b93861223d3d5b656c544dd568be3f9b6a01357c7e60354155c8fd396f914', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:28:19', '2023-10-07 07:28:19', '2024-10-07 07:28:19'),
('30c773adad89b07c211f02f63d3d92f884dc2f719129e5c2a416b6bdc89cd33d262d07fefdb5b46a', 279, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 10:09:06', '2024-04-02 10:09:06', '2025-04-02 10:09:06'),
('31379d6c7d18b67c40ec7ab373763b52864812ac26ac1a214c708d12c7d6ef93fdee884d9948ec69', 258, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-22 09:45:13', '2024-03-22 09:45:13', '2025-03-22 09:45:13'),
('3166fe5be3af0e43844df34d7340c84722d5adaf8b72f88498884ec11f5e9f88a1fb068bab5b3df9', 164, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-17 15:58:05', '2023-12-17 15:58:05', '2024-12-17 15:58:05'),
('3177226b129bec0e1b277d411b0e408411eb0486b927dd98a689fc2392628e63d921dd34b822d17f', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:35:35', '2024-01-09 11:35:35', '2025-01-09 11:35:35'),
('3184a9d198aca755a11a4c01fee6a10a9fbbc8d79c8d921645d758de9e4dae5315f067390f6bba7b', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 09:15:11', '2023-10-11 09:15:11', '2024-10-11 09:15:11'),
('319e88960620287a5fa76962e71f6c62929accf9ba7faf4a3010b5ef66a16582a000454de2538a3b', 37, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-27 01:52:02', '2023-09-27 01:52:02', '2024-09-27 07:22:02'),
('32c5f226a2cca72e58c38d9604e90597291ed40297a8c0d63461d4d4868ef2023b3017f851cbce76', 123, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:36:14', '2023-10-23 13:36:14', '2024-10-23 13:36:14'),
('334473a0d83bc4efb982277063134b5fb5cf701eafe481f2c407a947abf875e9d7b868a1402996de', 241, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 06:08:28', '2024-03-02 06:08:28', '2025-03-02 06:08:28'),
('334f32cb7546c550b82c070f7a4c46c7ef671ba1e0244234041c156c02f85382bbfd0424512ee5ca', 272, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-01 17:40:57', '2024-04-01 17:40:57', '2025-04-01 17:40:57'),
('34c615c1e436d222409a134f71e08067306de6f6bf4ab292cf530afb205cd971f877df24aff0230b', 203, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 07:29:56', '2024-02-29 07:29:56', '2025-03-01 07:29:56'),
('3548e8a81f85ba85f4060c3bf4be92e3bc7e5b8994f9de6a67627852b3dd8f80d287f8fb84897a74', 139, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 12:46:11', '2024-03-01 12:46:12', '2025-03-01 12:46:11'),
('35ce4ad090d6dc2dca8f5700996d444f0f57e85904445c206341d832341c10179910838995bf3ba4', 104, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 07:51:41', '2023-10-17 07:51:41', '2024-10-17 07:51:41'),
('3615437824a89aec169275b883778f1576a804e87dc748db49edf1774eae128ceb1c405563084da8', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:35:39', '2024-01-09 11:35:39', '2025-01-09 11:35:39'),
('361f12108ee8ac995bf73db050f2c80e004fdad4d96ef61d39065971bedfb5f103587f0cd7f60fbe', 280, 5, 'Laravel8PassportAuth', '[]', 0, '2024-06-12 06:56:25', '2024-06-12 06:56:25', '2025-06-12 06:56:25'),
('361fb876d55e5dfd4aa1e7d112eac8069e28cd19a63faa390d651427592bb67477da11eeacd2dba0', 270, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-01 15:42:05', '2024-04-01 15:42:05', '2025-04-01 15:42:05'),
('36e26279f4421d1d736add37af10dc4b6ffc59e429818d4d4770428e72a65a1a80500e13abbcd236', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 11:10:32', '2023-10-09 11:10:32', '2024-10-09 11:10:32'),
('373417c3bd40c83363c0579066c557109925897f0d49bc5fc60fe5eef8f8a8d58c25718433897852', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 13:28:24', '2023-10-12 13:28:24', '2024-10-12 13:28:24'),
('3746d41f40b82472aaf9d590b184fc54a1c444c0628b84b363c2c448394c6b00a51542894d1eb9be', 217, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 12:04:17', '2024-02-29 12:04:17', '2025-03-01 12:04:17'),
('37acc8be8a5cbfb911eefb75bb958d1368d626d19c1795686c88a470d03da38f519743f2920fe372', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-07 12:36:16', '2024-02-07 12:36:16', '2025-02-07 12:36:16'),
('37c389ed2ab4e1e1d86a66403809e48bc822606efb370a7c20ef5288df9aae3e5ec87ca3f390d4ba', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:39:25', '2024-01-09 11:39:25', '2025-01-09 11:39:25'),
('38fdaeb39b7ef84ab566bf9b6a4438eaab41c20de1f089557aec6d7c9104dff71468e21527e611b7', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 06:39:47', '2023-10-25 06:39:47', '2024-10-25 06:39:47'),
('3997ed590fb9d27dc1e3949ba0df85723e91dcb61038ed53f77550dffcdecf9e0b517e491c994b35', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 09:57:37', '2023-10-14 09:57:37', '2024-10-14 09:57:37'),
('39a1ca7f89e2ad10bb97c8910a02e1f5e32136bd54f9e08411dbb9abe9bc65ca4e521395b91559f3', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:33:34', '2023-10-11 08:33:34', '2024-10-11 08:33:34'),
('39e3a15fd1d5ff795438354371824c0f8154387d15ef2f5cf8ee5ea0bd5ca73c10a3ebafa284ea20', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 14:23:04', '2023-11-21 14:23:04', '2024-11-21 14:23:04'),
('3a02e445ce3d6e692c5f210c9ada38725b13b3352cb6347d3f0f7447326d462f0d915f26e47aa252', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-14 07:44:36', '2024-03-14 07:44:36', '2025-03-14 07:44:36'),
('3a0b9eb755b1026aa14782e8c23ac912f18f161d774bc04c28b882e44b7b2e808a23fd85b42ef4a6', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-19 07:50:25', '2024-01-19 07:50:25', '2025-01-19 07:50:25'),
('3a2ab34dd470d4f2b2bf9ebd98bb0dc73a19d42c385649a14fa2f77c1863959cdcff1b554b99f609', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:47:43', '2024-01-09 11:47:43', '2025-01-09 11:47:43'),
('3a6386a180cbf9deb6011f048403a44c3fd288d67b18f60288dbd7e26b1ac5c32d942cdf5e8b9dce', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:38:32', '2023-10-11 05:38:32', '2024-10-11 05:38:32'),
('3b9feef806c9291e3a8a8b3031af1e2ca06bc62f9761b47eb9f1b96e74889d5b78b7fffabded702c', 126, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:41:37', '2023-10-23 13:41:37', '2024-10-23 13:41:37'),
('3be8c02cc8ae585e3a6934a2c45e2a2827afd852c54560d714562b649caebfa252d1e323d88486d8', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:56:59', '2024-01-09 11:56:59', '2025-01-09 11:56:59'),
('3c1d8645e88da8e8c82b05f450f9533b130881929f9af9c28f49ea4988743e1103e0cf6052b4ff80', 118, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 06:48:18', '2023-11-22 06:48:18', '2024-11-22 06:48:18'),
('3c9740149cbaddc899b7aef93084582caa827cd655fc13a9ec740e16323931fb0c2c95e503a95815', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:47:51', '2024-01-09 11:47:51', '2025-01-09 11:47:51'),
('3d6e515976bcf459101aef0183402caa3996a006a329dfec6ffb08568594b76b9fd96514c8f0d08a', 277, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 07:56:43', '2024-04-02 07:56:43', '2025-04-02 07:56:43'),
('3deed5332d6d5ad8216016a3cd13425b435f199ddc20ab1eb253b91d852d3b3f3fb2b7a36563ea87', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:21:26', '2023-10-23 13:21:26', '2024-10-23 13:21:26'),
('3df4f30c2de23aba21d0a3a405c6b881986139009ac1da3b3845f33b99b94d8a5fd7dd0cbfb71117', 118, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 10:10:33', '2023-10-25 10:10:33', '2024-10-25 10:10:33'),
('3ead634652fa6921c34f30ba40fbb8c92b339ca3215953ba754f50773271864b88d5e000df897b9a', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:52:16', '2023-11-22 05:52:16', '2024-11-22 05:52:16'),
('3f459029a1faa9a8cadd9320b07ca66e134cfca7c4ca20c42ab526c0ff57cb5e3ebc5b629f913cbc', 231, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 11:45:54', '2024-03-01 11:45:54', '2025-03-01 11:45:54'),
('3f5329e60eafedfa72da4d075577bb34471102620e5d9d6e37ca74b360a4380fb5b4849e98b50e9a', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-20 12:03:30', '2023-11-20 12:03:30', '2024-11-20 12:03:30'),
('3f7d70019a4504fe533da3bf2239708154e71e771c13efaf945016ac7e9f381dd42b763443dd964c', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:34:31', '2024-01-09 11:34:31', '2025-01-09 11:34:31'),
('3ffc9b889b019cfe37503473223a6d1c971cdd953d2138695c96dc075a5bddbb27c0a28e64d476e1', 288, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 06:47:56', '2024-04-03 06:47:56', '2025-04-03 06:47:56'),
('4067513cf53a6fa2839c6f4840d4f47f8da5c64a9e441237687afab05ce3d6013ed2179382bd35d5', 162, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-15 07:25:54', '2023-12-15 07:25:54', '2024-12-15 07:25:54'),
('40ced9f933fe83b5d345d1f4d3ed6311b7b5e8d13331c4b08532b9c2a4a8ac7ee48997a23b401658', 131, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 06:37:02', '2023-11-04 06:37:02', '2024-11-04 06:37:02'),
('40ed9dceacdc263f5aef4bf853aa81c059da66700e5e00094b902d1ef3a8d779d0f7dd7f95f63071', 184, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-12 09:45:05', '2024-02-12 09:45:05', '2025-02-12 09:45:05'),
('41241a7f6671b48034a1c3bd229df24e96bdbe825f0fc30f420c9da95c03e03220ac496d7145fdd3', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-15 11:57:26', '2024-02-15 11:57:26', '2025-02-15 11:57:26'),
('412b087edee072048997f889c2d49d2b0008dce07980f638cd5a34d423042e795981ed04200afe05', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-10 05:09:23', '2023-10-10 05:09:23', '2024-10-10 05:09:23'),
('41f87dde800dce6e09e1d3dc774d77167ba0501a5089337e9a5429034637bd73dc5bcde036069afc', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:01:06', '2024-01-09 12:01:06', '2025-01-09 12:01:06'),
('42035407667441e40f778585f0ebda8754544c0299ab56509ea7777424010c0c525e1fa6f817ed95', 49, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 06:01:37', '2023-10-02 06:01:37', '2024-10-02 11:31:37'),
('42595466af165b8a14fe8bf93bb2c2c4453cefe6ddbe658f6bd91cd1d0f51a09f9d53dbf0213ac84', 276, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 06:51:47', '2024-04-02 06:51:47', '2025-04-02 06:51:47'),
('42a6286f7f1d11657cf6c6005e66c708c11b82e3a21454b3403f8704ae24c1c640981e8c82cf6b3d', 281, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 09:14:27', '2024-04-02 09:14:27', '2025-04-02 09:14:27'),
('433ce4f089b3aef8e97eb9d85233184165463c24984d14bdeb97e637b66e03a7047630db0d9fe90a', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-21 08:57:03', '2023-10-21 08:57:03', '2024-10-21 08:57:03'),
('43845b96be17296d4e83559f40899b37c43d9c46bae4f4f09dd3b0b6d750eeccfb826d6a49ab0b52', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:57:11', '2023-10-06 06:57:11', '2024-10-06 06:57:11'),
('4455891fe3d8f0c615171b272188c697b8416b6abe543efa25f8befca5fd4bc6a699ed2f69c7d490', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 05:03:49', '2023-11-21 05:03:49', '2024-11-21 05:03:49'),
('4470886cba9cb82db588c9579145862ba26c17557fb79899da248a6ea6fd5865adf16853f01a0e3c', 209, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 09:49:02', '2024-02-29 09:49:02', '2025-03-01 09:49:02'),
('4498b114bbe79e33d8c92d3c45135e4a551d264cadb4017c4e7c262fc849f78dda05bc6335b67a4a', 285, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 12:55:34', '2024-04-02 12:55:34', '2025-04-02 12:55:34'),
('4529f6314ca1d4313a0b723e9e43931143b501251be6fb95e1f459ece94bc3cc3a370fe36ad525a5', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-15 09:33:15', '2023-10-15 09:33:15', '2024-10-15 09:33:15'),
('456f2b1e38b198586dec2e08ead2f2991da343b53a603115c8452caf29eb9bfcf383880114b2f5d6', 45, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-05 12:57:22', '2023-10-05 12:57:22', '2024-10-05 12:57:22'),
('4587eff3529f5681adb0bda1fd73db55f246b5789f4dc382bc191216de91b788453ae792a008fc7b', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 11:43:02', '2023-11-21 11:43:02', '2024-11-21 11:43:02'),
('45da6b010fcd787d055b99c12b0f783f72dc526f2efc1c50b9ad80c53beb949c272348e5fff69170', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 10:57:41', '2023-10-12 10:57:41', '2024-10-12 10:57:41'),
('47c7a3cc3a7db97645ef1e1938581d904a09fa3cae1ac1b6f932730a9906465628d78ff345e20ac2', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 12:18:46', '2023-11-22 12:18:46', '2024-11-22 12:18:46'),
('47ecfdf12509381cdf41d005c2918e8a5d4b1c22adb2471ac2d8bdbee56a7b0ded2ebd8a20342705', 185, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-20 07:45:28', '2024-02-20 07:45:28', '2025-02-20 07:45:28'),
('47f5941c113be2161fd07932f3e6811e57ec2fedfe9780711f7985f15bfbce280c5526276eaa2d41', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:47:54', '2024-01-09 11:47:54', '2025-01-09 11:47:54'),
('48b470ca60629da991b2ab384a05724bf73227eb9c826a976b705799f5732c11d4eff2b0562b1d7d', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-26 10:42:33', '2024-01-26 10:42:33', '2025-01-26 10:42:33'),
('48bd6402f44b5a66c6159a375dc1d8092eefd4f5bd7bda8cf1c9a7b16b70e30983136e7d37ab8ab7', 83, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 07:05:21', '2023-10-12 07:05:21', '2024-10-12 07:05:21'),
('494752a065cc8d9187ad322335af5f7c36ccebab3c38eeeca36ae23438123c4ab5458f994aa78400', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:56:50', '2023-10-02 05:56:50', '2024-10-02 11:26:50'),
('496b71752f5b9e8c7c95ca15a949e7ac609e201e6a38ea520ea9225163c8749f53a70f3d0ef5cb7f', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-08 06:54:14', '2023-10-08 06:54:14', '2024-10-08 06:54:14'),
('49c7eb0909568374e080302d909a958498f4a6a4a77856eb745607c18f409f302e59d345c14fed5e', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-25 13:55:15', '2023-12-25 13:55:15', '2024-12-25 13:55:15'),
('49fc76b62e74f3dce88ba2fd9518d0039197e0ef684f466ef8c505622cd56c1f67265766f72c786c', 254, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 11:06:38', '2024-03-06 11:06:38', '2025-03-06 11:06:38'),
('4a5f12ed162a969d2ca4cc1dcf45dff54fa77b5004ea0348a82d69fb32ba9b930034d387254fe6cb', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:51:07', '2023-10-02 05:51:07', '2024-10-02 11:21:07'),
('4a7b47f999fe570adfd322847c409ecfdeeb2f4bc9f8101617c409b7876c3a3152ef6146147ea30a', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:22:40', '2023-10-07 07:22:40', '2024-10-07 07:22:40'),
('4ad90cff776d20eb0b3a59de7cc615b0be53fa4a2ceb5ca378d52b543fda9f1327e47054f988781f', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 13:29:26', '2024-02-29 13:29:26', '2025-03-01 13:29:26'),
('4add21faa03cf5412374e0f2808e5e973b65a066b04e76b181fb3b22e7778d9dbee7abd787a4cfee', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-12 02:46:23', '2024-01-12 02:46:23', '2025-01-12 02:46:23'),
('4bab4a7bed31217589841edf79318eef3ddbece9f059457e7974a7dbd5544d34f1134b2d6c0d15a5', 122, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:35:55', '2023-10-23 13:35:55', '2024-10-23 13:35:55'),
('4bac361c7a40861e15cb3bef62243dea781c6af5e7ca3abc075c000bf3080c11308e8a805735b206', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-13 09:33:54', '2023-10-13 09:33:54', '2024-10-13 09:33:54'),
('4bb195e84c3ba1e62b9d3d9716c6a73b82c9a474ca50d52482bdff1d6ab27b5a9f9fc84219540065', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 08:45:20', '2023-11-08 08:45:20', '2024-11-08 08:45:20'),
('4be997b424fa2e96cfeeda38d3588771e45af17b6027acaea498cfba59178dd4c62fac71be5214fe', 105, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-19 17:20:49', '2023-10-19 17:20:49', '2024-10-19 17:20:49'),
('4c4de9118f9ffba299e52251b009bdaf4d565636f1616126b9837b4f4e4acc1ebc1eaa18b07a8097', 215, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 11:31:38', '2024-02-29 11:31:38', '2025-03-01 11:31:38'),
('4c7a18438bad414b222297f5ed193a3ed10b1b87fd2ddae84cdd7519304ae09488fe7ac8e839d0cd', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 12:11:55', '2023-11-04 12:11:55', '2024-11-04 12:11:55'),
('4d1eb4a4f24d534b04bc9121d6124af2cf4e2bafe82b538a628352c419b486294779a2b5267d46f3', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-19 05:39:19', '2023-12-19 05:39:19', '2024-12-19 05:39:19'),
('4d9f3693a5032bf967f8ccfda1ef20430101f75c905dea75d0d4160ca81b64c903f16adcc4d7f19d', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:00:50', '2023-10-11 06:00:50', '2024-10-11 06:00:50'),
('4e287439d74a9596d66989003a67916bc28af82ba4e125764fa8374488707edcaa034a7ab1286c5c', 254, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 06:05:28', '2024-03-06 06:05:28', '2025-03-06 06:05:28'),
('4e920245e26f914c748f87b06b17a0e653f5cc8cfdb8378d7f9ba4c51b635ec8466c0f76086ac8cf', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-19 05:28:26', '2024-02-19 05:28:26', '2025-02-19 05:28:26'),
('4ecefb0841f6dd7da12903b9b0b6c49c1bfbc9c542afd4ad8d9fe94769c3017c4be41c6d036b1d2b', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:45:23', '2023-10-11 05:45:23', '2024-10-11 05:45:23'),
('4f07f0f690d6952bde3952be969f3f5c73ada77bc94dd91146246b0b44a9ddfd6e94f3ae8bc32167', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 06:54:24', '2023-10-25 06:54:24', '2024-10-25 06:54:24'),
('4f565570f5c26d1b05acaab861009ac8de168bf4fef73faadf002dccf70bbc7c3454748695287fe0', 236, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 13:16:55', '2024-03-01 13:16:55', '2025-03-01 13:16:55'),
('4fca2a18b99efdcaa77fbfddcb3f2a5d9f6e7ed752d142da590cab337e83aedf12056419c7f4cf6b', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:19:44', '2023-11-22 05:19:44', '2024-11-22 05:19:44'),
('4fd089d9bcf9c640d1013deb465e52643091be48768bde72b0cfcc96220e207be538137ebf613467', 45, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 05:10:23', '2023-10-06 05:10:23', '2024-10-06 05:10:23'),
('5055a0b0daff93e0b08326f8b286640fb83a89e16b4aa6d27a2106802a7311b02ac5176a67e08cf4', 28, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 07:10:00', '2023-09-22 07:10:00', '2024-09-22 12:40:00'),
('508be00f78fb43ed8f9cb34adda8c2c02231920f0684fac1d513b95be452b91be6d6abdc569f7e07', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:09:19', '2023-11-22 05:09:19', '2024-11-22 05:09:19'),
('50fc9ee280c432fc1351aeafcfd755c7abbfbacdab4902f1b05b7e7b79a36dc82788c520a91a335a', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:34:29', '2024-01-09 11:34:29', '2025-01-09 11:34:29'),
('5106bfd5b65d1e8e0bcfb6dd26dfe15b701a6c49e4867331741ce0e401e8c6875ef90468fd48efe9', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 11:31:55', '2023-11-21 11:31:55', '2024-11-21 11:31:55'),
('515a911aba1aa3a795c3419cfa869a854286b156dd13e84f0d82283503c45a61b44aac5f2948dae5', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:48:04', '2023-10-11 06:48:04', '2024-10-11 06:48:04'),
('51b1fc466d478a41cdaab38224670ed41af229eb2c58c406431a677df5e419c8f09f5df55c9c6e1c', 293, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 11:32:34', '2024-04-03 11:32:34', '2025-04-03 11:32:34'),
('51c22f8acd7bbcc8847b251a7546cd56c9a963237c51bf237c627ae93e7dd1565cb3ad01d9b07bd0', 233, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 12:50:05', '2024-03-01 12:50:05', '2025-03-01 12:50:05'),
('524363fdd160cb71185d82347d66610751be4cad50c8a24ee0bee3f3c4541695d73fd15795fdb68f', 162, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-12 09:39:18', '2024-02-12 09:39:18', '2025-02-12 09:39:18'),
('52691447f3950f8dd5b9a54e6d48083716f420220255d8224ecd4aab1ef5571ef88f7b9b04ccfd93', 25, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 03:52:31', '2023-09-22 03:52:31', '2024-09-22 09:22:31'),
('529764b99a361dda9589c90da3d6db6313dac32f667c9964db1ddbf48a8a8186cc0485561ce94164', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 05:02:50', '2023-10-12 05:02:50', '2024-10-12 05:02:50'),
('52e4d73cfc48cbb15e08b5a356af1a0bd1c987fd2f91f0737c0ec3c1cd7ed123605c8047e4e5cb41', 130, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 09:09:26', '2023-10-25 09:09:26', '2024-10-25 09:09:26'),
('52ee7a42ecfb25913afb0c265ec002d143a1b4f14b4a669346832d84eb787d835ef12103955513de', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:41:16', '2023-10-11 08:41:16', '2024-10-11 08:41:16'),
('5396b3f40be2c5b49d61727789a0262e02f05c26b5d0afb99d91945f075596b0b8f43a56e49eb23a', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-10 08:02:03', '2023-10-10 08:02:03', '2024-10-10 08:02:03');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('53ba18161ad8b4817e67b522ea56fdcba2d0173df11889e02078820ac8db6cc6ce77b37ad3bd90d7', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 11:19:19', '2023-11-21 11:19:19', '2024-11-21 11:19:19'),
('53e20162c43725d92ef67daadd674cdc41c5cef395cf06295fb11a4db972cb7c77293b66e29e6c60', 115, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 11:33:58', '2023-11-08 11:33:58', '2024-11-08 11:33:58'),
('540d3eae2acd9af7a911714e035e143e5e47bfff6bd9c81845db57361767b551e98128cfc9f88aaf', 25, 3, 'token', '[]', 0, '2023-09-22 02:50:20', '2023-09-22 02:50:20', '2024-09-22 08:20:20'),
('546f69e2f53a9ea6cdc53bcb7eff6ebfe0de59a413c8859acb1a699ed70db36b6960c805e614e5ca', 63, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 08:40:51', '2023-10-09 08:40:51', '2024-10-09 08:40:51'),
('547d48961ff98f914be797455d4b377725a8e0dfc58b6bf97b7e9a6d1cded32e05ebce60e9810435', 135, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 11:33:12', '2023-11-08 11:33:12', '2024-11-08 11:33:12'),
('54a5a69a09335582e8078309234f40453ac9d31244aecfe538bc86cf0c2c255025c636dcc176964a', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-15 11:53:55', '2024-02-15 11:53:55', '2025-02-15 11:53:55'),
('54d40d0a81bf6452d320c3e9978309225ace0ac95c05d54307b2bbeb569dbf9db58354c5d4358b5f', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-24 13:02:22', '2023-10-24 13:02:22', '2024-10-24 13:02:22'),
('54e0a53d51907542fcb5282a019bd06986c48f56c710ca17dcf78f0746bbba7fb01ccfd439b5cb75', 173, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-25 08:43:28', '2023-12-25 08:43:28', '2024-12-25 08:43:28'),
('552d0e78c9e2aeb5bcf0ac473745f9d1200b82fce2ded53905f0456e60f555e339bb3c6cee9c8b45', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:56:54', '2024-01-09 11:56:54', '2025-01-09 11:56:54'),
('55a106ef4413dcdb9222b87bad685364000f3f2afd354bf5dc95a7d6eff214ec766b934ed93d8a28', 162, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-20 15:22:59', '2024-03-20 15:22:59', '2025-03-20 15:22:59'),
('55ffee96b592f53d07b6371d936f5a56b9dbdb6389d6983f315d88faa29bbf1546013f89dfbfb7d6', 280, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-05 03:07:01', '2024-04-05 03:07:01', '2025-04-05 03:07:01'),
('5603741e240be46b5d7b00499755243f80c2af813cddcef48b7efec24f9c8d2928db2f8aa2f2be94', 250, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 11:43:16', '2024-03-04 11:43:16', '2025-03-04 11:43:16'),
('561ab4b06cc049db7104378c98110f414ba546c130f4926e655162edb79db1ea6dee3b42abfbcf77', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 12:21:53', '2024-03-06 12:21:53', '2025-03-06 12:21:53'),
('57172d729647b3135f170f30af4cde6a0c4af3e34a207f7f4817588f1f4e434e89373be48a0dc0be', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:57:22', '2024-01-09 11:57:22', '2025-01-09 11:57:22'),
('57f117fd16d3897cc6a5b2c96b20ac952582297403fce716e40c77b8ed4c53e1137065237478f6d8', 102, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-18 16:17:12', '2023-10-18 16:17:12', '2024-10-18 16:17:12'),
('586243b3b267f9f726b00d85236208b63b9555dd9851cf723422d6580eff5fff7b553dd0cd99edc6', 165, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-18 10:26:02', '2023-12-18 10:26:02', '2024-12-18 10:26:02'),
('58bb420deee2c6340e588d911259a26dbe1f46ef2b692b7d27e02c07a8e947e0ed196acba9ee3de2', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:36:00', '2023-10-12 09:36:00', '2024-10-12 09:36:00'),
('5975aaf79700115afbd42fb43a428660334f561fb57022f95fd5a1cc5f7bc09295fd792c45157c8c', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-29 06:26:06', '2024-03-29 06:26:06', '2025-03-29 06:26:06'),
('5989149ee877ca808dc34500ed4b41a2d91094b22be141c31d04232770f439ed856e7e95f7b243d1', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-25 11:51:35', '2023-11-25 11:51:35', '2024-11-25 11:51:35'),
('598db9d3923739e58555b885a5989af7a4510d7508d727380f010c8b49b218a4273f2122783bf2c9', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:35:55', '2024-01-09 11:35:55', '2025-01-09 11:35:55'),
('599c2214654a8c29cd32df78da3cf42753e7bce86583c0bbc299b005b7b4d508954632189603ff81', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:01:24', '2024-01-09 12:01:24', '2025-01-09 12:01:24'),
('59e799b3732fe389be377cbfbd86b80a2501b91501f1f79956d6e889197c018174c69c8e6f6658d3', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:31:01', '2023-11-22 05:31:01', '2024-11-22 05:31:01'),
('5a73018bf0e69c3ed0e865b9eed8b9e9d9c7fd218d13132c1f9ed10dfcf459ce1b1f00437c21b54c', 206, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 09:39:12', '2024-02-29 09:39:12', '2025-03-01 09:39:12'),
('5a8931da457bb01bdc2a654e8f3e988b54d5f1184d46ebe42d274d9d91d9488e4b4f742676a05dd3', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 10:18:29', '2023-10-25 10:18:29', '2024-10-25 10:18:29'),
('5aee3d824344ef8e081b7fec624b6abd8503ed8696d065a485977bfc0cd6a31af280e5d2f499a3b0', 241, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 06:11:53', '2024-03-02 06:11:53', '2025-03-02 06:11:53'),
('5b467e06a3e5b42a2552319b78401680f390a4c45f22bd206f0d5748e57d546a64727dcfcaad2556', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-13 05:31:17', '2023-10-13 05:31:17', '2024-10-13 05:31:17'),
('5b70bedb43831f23fe4c81430cb8dde9e78b8457c92ff731df4617a83d0d1efbdaa267192ad700f1', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-26 09:49:48', '2024-01-26 09:49:48', '2025-01-26 09:49:48'),
('5c2a5971789018be0cbe0fb6462e9f70290375ff5e1633c19029d3942eba5830004d92eadd6c41aa', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-07 11:07:48', '2024-02-07 11:07:48', '2025-02-07 11:07:48'),
('5c6f9ff0437ab78fe0410a7dfda4166bbb493c928439d3ffcc0120d0d1bfd0ffbd454e183f15804b', 289, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 10:28:02', '2024-04-03 10:28:02', '2025-04-03 10:28:02'),
('5c989b142d7a57ad29d3c882b772e9ae908beabb0097410819c55ff0f082502b50cd2c065b0476c1', 246, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 10:57:54', '2024-03-04 10:57:54', '2025-03-04 10:57:54'),
('5d3206ce72c0ebccc95e3772cc917f994ba5b70d9d577cbcd1bcc09d070d9b19e9c9153726679b94', 284, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 12:31:01', '2024-04-02 12:31:01', '2025-04-02 12:31:01'),
('5e11c55aa071fd770cd474285e81048fae29b810afab085a79baa57497047d1626da5fa79adcc3c1', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:12:19', '2023-10-07 07:12:19', '2024-10-07 07:12:19'),
('5e2564d57b2cc39735236376d6c16260b9e6d43cc35c69ffcf952b5862eb0df2aba3b2832f490892', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:15:42', '2023-10-07 07:15:42', '2024-10-07 07:15:42'),
('5e3b4e3c522c03cb26252ab844706e3dc041353598bf7201b65647d85651f7cc35736871bb535f48', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 06:49:51', '2023-11-22 06:49:51', '2024-11-22 06:49:51'),
('5e8b68a1ee9aac8512329e33b7931f994ddc58242499b1a008a091c53447db9a23cdebcd8a8521fb', 232, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 12:47:56', '2024-03-01 12:47:56', '2025-03-01 12:47:56'),
('5e9c5cbf0febb670c61a7ccffa3ef3d43239a6c17bc1a34c0bed3893a11b16afb2980f40b84221c2', 235, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 13:10:09', '2024-03-01 13:10:09', '2025-03-01 13:10:09'),
('5ea8002042de0c3036960ff1e3dca1be12d957578d9ff7b4e0b92fbd417e4f356c1689405f92ce2f', 61, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 08:37:58', '2023-10-09 08:37:58', '2024-10-09 08:37:58'),
('5fa3de6bf8a39ce0a019d8d91ea1eadb2c1dd448acfe57880fcedf2c7374cb6245d2aef56a9d0b03', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-11 18:11:23', '2024-03-11 18:11:23', '2025-03-11 18:11:23'),
('60100c79b3865c350d5e9157308a3e7a3ad47dc79caeebe0ebfe5d0be597506327b2d764169bbbfb', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 10:56:05', '2023-10-12 10:56:05', '2024-10-12 10:56:05'),
('602137a725028aad7b06c10adc1bb6399949404802a5707e84af69abcb96b2d2b05cbb71ae5c8a87', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 06:47:01', '2023-11-22 06:47:01', '2024-11-22 06:47:01'),
('6068d43d902e91d9f0dbd8930f993f1fe837f309bb4786bdf7b1ef83ee9c2b78831bf7fd2e91bfb4', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 14:50:04', '2023-11-21 14:50:04', '2024-11-21 14:50:04'),
('6092f9364930e88724913b4af31b497c52476c71b50ab0b2e7d37ae45d2147d3f2ad64a3b166bbbc', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-03 12:47:51', '2024-02-03 12:47:51', '2025-02-03 12:47:51'),
('616ad5d0b31072f19e1d8816eddd5fee5595f391786987a095f660d9f73c2d4866331e8ca65d88aa', 253, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 05:58:37', '2024-03-06 05:58:37', '2025-03-06 05:58:37'),
('62051c926ae3fea668113de832ab981bc0426ef3d192d6030622b04bdaca0797eac25cdfd0338164', 106, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 10:12:22', '2023-10-17 10:12:22', '2024-10-17 10:12:22'),
('62170803baa63db34049d9ab4cef20d4b1a9760dbd22de7cd9cb4890a227f970cbb799deac7940aa', 120, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:32:00', '2023-10-23 13:32:00', '2024-10-23 13:32:00'),
('63231a9104734a7f3b81ead8a21e637f13aed4f68621dede70c725aaf49a870bdeac70e23651c9c9', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 06:58:02', '2023-10-25 06:58:02', '2024-10-25 06:58:02'),
('6371a458ff118aa00c0c8b669826f0a959ba262b29ec71d1ce2a231862ce7487d894301d54cc0f5c', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:39:33', '2023-10-07 07:39:33', '2024-10-07 07:39:33'),
('63c47516a22795e953459a9aba0d459a1e80c937d13e69c147853d989bf1a79b13b363bfa5bc9e9d', 168, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-21 06:58:22', '2023-12-21 06:58:22', '2024-12-21 06:58:22'),
('63e7d101fcc91936c7cb14ed626ce79c4548e66fcba0edab992aaaa775052c1da1415005c5646ec7', 185, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-15 12:14:03', '2024-02-15 12:14:03', '2025-02-15 12:14:03'),
('6402d3ebda306f4806238a2ac2d0315a9d703c1f0ee1df2b1394f300585e73ed0a88600e8817237f', 101, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-16 15:04:39', '2023-10-16 15:04:39', '2024-10-16 15:04:39'),
('647ecbc2ad7ef1ed1c3c6e0d522a75476d6510d613e04fe724ab6d22fd84d346b75a3c3f18e2599e', 52, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:07:47', '2023-10-07 06:07:47', '2024-10-07 06:07:47'),
('649a0afa11444b091c5553c258661d2a71ca4bd0b31464e2278dc32129dbfd6f485f738855c3c04a', 105, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 12:58:09', '2023-10-17 12:58:09', '2024-10-17 12:58:09'),
('64cae462e1ad63994ac91367cec05591c24093c5c3b84d6a63c08104b6877fabe3d08a7e155fd3ae', 291, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 10:15:24', '2024-04-03 10:15:24', '2025-04-03 10:15:24'),
('65135e497eb345c8e5d09877104ae95c0aedb292d1212b6e8d1cdb086823ac8954172715a7edbc8e', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-03 10:23:04', '2024-02-03 10:23:04', '2025-02-03 10:23:04'),
('65227111657f9ff886c2e3ae37e78f912a6b5588033c8e583032517b3c97815c1dda314a12fe3de9', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-21 09:13:53', '2023-10-21 09:13:53', '2024-10-21 09:13:53'),
('652b7ac9238f550ff8dfdf81ba373abf2e0cdd283dabdfcbb348cb13e2bb4265e85a9cd253065990', 47, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 05:38:48', '2023-10-07 05:38:48', '2024-10-07 05:38:48'),
('6542407a1a81d3d6ae7555fbe6e71474174cc5de16f770d3124ccfb265df4a935d9361b501974858', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 10:33:27', '2024-01-09 10:33:27', '2025-01-09 10:33:27'),
('6559c3ec45b5652944d09617c102b752dff55109159ddea3c80776247a30c946d109f1c48ddd5565', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:23:13', '2023-11-22 05:23:13', '2024-11-22 05:23:13'),
('6599977bb05ac97871990fda0b64b8f96270349ea0ef140afe31f3654c5f26b7f66f76189372e4a0', 179, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:37:51', '2024-01-09 12:37:51', '2025-01-09 12:37:51'),
('670aa1324b5c3a3c4b350ed2c1cfdfe7101480138f039b8a854e3bf42dfb6d629c5a307f4fbbb813', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 14:39:49', '2023-10-11 14:39:49', '2024-10-11 14:39:49'),
('68c555a68e38c0848232e77f2fa4dc85d4546310d4237156e64345756b641aafc7cd031122940b54', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 05:41:48', '2023-10-20 05:41:48', '2024-10-20 05:41:48'),
('692ae568788726b661851e828f06ae43c6e1670a34009443aeb743e49849d5e24062eff945bba776', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:35:33', '2024-01-09 11:35:33', '2025-01-09 11:35:33'),
('6931e8adcde6548c9059c2f89ef2e93654781d0daed70955ee989aabe56db4dcb39828c5026ef0aa', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 11:55:06', '2023-11-22 11:55:06', '2024-11-22 11:55:06'),
('6966e548198766956b3df6648d993a8d1873fab401c5a0c23401091889bfc3d684e134b4e5e00968', 280, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-05 03:15:23', '2024-04-05 03:15:23', '2025-04-05 03:15:23'),
('6a7549e8d68ac8d447d5e80e10b44e43865ad9c9f1ad095ea26a34ef501dc4100d0a74dd0feb791c', 250, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 05:49:29', '2024-04-02 05:49:30', '2025-04-02 05:49:29'),
('6a77a17d14c3fc12a9544b67486adae64723074e3001f25e4bd7a300bd355fcf536d9a5052aa4b4e', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:39:37', '2023-10-06 06:39:37', '2024-10-06 06:39:37'),
('6bf77c09737580a692e51929c9f3ab1bd6a731ec21ff2334d645645a7bf3fb62d1327a976f76a3cf', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-15 07:15:29', '2023-12-15 07:15:29', '2024-12-15 07:15:29'),
('6c31d3b8779e8a4169f1a20f8565bb1f5fdde3f7c6ef0776de6141508d395f06a1430f639f30a4dc', 79, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 06:01:28', '2023-10-12 06:01:28', '2024-10-12 06:01:28'),
('6cb97b2c447861d131c3456de7a80b87454de55a813d75a359f9100b7e63f877e2c0353f8a4cb433', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 06:38:21', '2023-10-12 06:38:21', '2024-10-12 06:38:21'),
('6d1d7bae71cea210105242ae0d656845fa6b8464eeec7f85012b1197fc71695e810259653c5fc28d', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:50:54', '2023-10-02 05:50:54', '2024-10-02 11:20:54'),
('6d3feec59f6b8e3edd673fd97fb83333ce03f77b30fe5e37292c7ad4daefa37e4fe23378915a39a6', 28, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 07:13:45', '2023-09-22 07:13:46', '2024-09-22 12:43:45'),
('6de21cbffda01c113e92312cbb992248635a94e7b3230e72a637360e456e18413e8ac59b56c32798', 186, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-22 15:52:56', '2024-02-22 15:52:56', '2025-02-22 15:52:56'),
('6df44ea35d179223991463a50d87828e6ce645e16de8b1bef7783d75f2221f786e11da2ed83748c5', 49, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 05:52:58', '2023-10-07 05:52:58', '2024-10-07 05:52:58'),
('6dfe4f884955468cfbf190995acdd7ea65dd80ab46152ce403f6eecdbd9f8a9b8ec787ea3eb83fe5', 162, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-17 07:19:01', '2024-01-17 07:19:01', '2025-01-17 07:19:01'),
('6e0a98eea746aef397070f4a407df4961b79dae54c7bb15da5572dbfd28cf130d7780ab1ae7dedd6', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:25:03', '2023-10-12 09:25:03', '2024-10-12 09:25:03'),
('6e662220f97aa378b3269798d97cc7c9f15b2397162873fd646c9db1a013707373a46cf4fade1974', 279, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 08:48:10', '2024-04-02 08:48:10', '2025-04-02 08:48:10'),
('6f175b38d22fc78522293c0ce32f6fb51f5736d2143371e30989334854e8fbb5e5f39ba8ae494a33', 78, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 05:55:12', '2023-10-14 05:55:12', '2024-10-14 05:55:12'),
('6fa6ad657c5c0783e68f5550d93b73bda1c3b538f5dfecb07d4fd56406ca64b96fd010e06acb7e4e', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:52:43', '2023-10-11 05:52:43', '2024-10-11 05:52:43'),
('6ff17baaaccf5130aa75e577538765d065d6c55236d0e87a005360771b33febd5177588e61ef7163', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:10:26', '2023-10-07 06:10:26', '2024-10-07 06:10:26'),
('7145578be1ffad12b9e2dcfab20ad8c98e98fe560f1794fdc4ad03ac88ab84a5a631a280981e620f', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:57:03', '2024-01-09 11:57:03', '2025-01-09 11:57:03'),
('716f7d83605ee0ccfe39f0d8ad3a2306cc0ebda3640da204e40a8e4e326a70eff42e65caaec8154e', 246, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 10:09:09', '2024-03-04 10:09:09', '2025-03-04 10:09:09'),
('71ab986fe5b0893158cb411b05506a78982cd4f2dd711e7a06b395e39481b931b31497c780343828', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 04:54:27', '2023-11-22 04:54:27', '2024-11-22 04:54:27'),
('724195381651fc870469587648c6da92b1b6febf2a6e5162bf9f8b951c074ff71a352adb893141f0', 74, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 09:07:44', '2023-10-11 09:07:44', '2024-10-11 09:07:44'),
('72a197bee1b02e927bb18fcb6d9141ce24b3e5abe2528d9d303862288d5ec923ca2a32568b113e40', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 06:47:18', '2023-10-02 06:47:18', '2024-10-02 12:17:18'),
('72b14f5dcc1cef0f3c51f5f7ad211273a0d21abea03ef228900a1c63368a8a2133c1fdca2a2e0b4b', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 06:50:21', '2023-10-12 06:50:21', '2024-10-12 06:50:21'),
('72cdc68ca2ad3012b353c8a0ae883e0076deb10db22d68d05a99a947f3ad5920107339e9cbabebce', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 12:44:53', '2023-11-08 12:44:53', '2024-11-08 12:44:53'),
('72ed41c72e81ba1b14a613acd4f3ed065dc64f33594a475eb59e2ba903e9b21378f7f014fb44414f', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-13 11:01:56', '2023-10-13 11:01:56', '2024-10-13 11:01:56'),
('7347e73e67e488cb89f06295923285908781774046b1b58c04646b3139b587c54853d3661dac4637', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-28 10:36:11', '2024-03-28 10:36:11', '2025-03-28 10:36:11'),
('74050badaac23902fb2796fc047c8ac1121da3be6372d66b192eb4d442fd9111c0a1e09bf0f48518', 162, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-18 10:35:09', '2023-12-18 10:35:09', '2024-12-18 10:35:09'),
('7430807b375251e576f86f650d1560f95a2f1d744a358f45e620e2afda4f33e276740ee2371a1973', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 10:57:12', '2023-11-04 10:57:12', '2024-11-04 10:57:12'),
('749dd9219b5c54971c80365ff443d3e18217953d6509d142c7ea63c9b1a4b98311a847289805fdec', 88, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:23:30', '2023-10-12 09:23:30', '2024-10-12 09:23:30'),
('75186d5004ddceedc594d9979a3c31465648bac2e6f33ce5317ec07faaa9d359b690802c1e2e2c1b', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:06:00', '2023-10-07 06:06:00', '2024-10-07 06:06:00'),
('759f3adc906523ae303725ad8f0777180aea580fbe797257f97df3533777b6de5c61395ff77ec554', 287, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 06:42:21', '2024-04-03 06:42:21', '2025-04-03 06:42:21'),
('76a8e1f73d12fae99a3596d28a07750df7aec2f4d12c574eb41ac5ba2c65b179875f2a5e85e3eac9', 36, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-25 05:21:07', '2023-09-25 05:21:07', '2024-09-25 10:51:07'),
('76d66f1f1d57c55888457a384b65e0a5a43676eadb97ba48f86ed6b5f87a278ad89d26751a6bc272', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-26 03:50:38', '2023-11-26 03:50:38', '2024-11-26 03:50:38'),
('76f4e2d8ab204a300bc4626fc6dedb9cda058c85aa67461cd1fcb2bbf1d6504f2ef214e294dc9b6a', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:58:51', '2023-10-02 05:58:51', '2024-10-02 11:28:51'),
('77799358279e144f3e7dcd1d80972996b93daef908bfb20ade822f4d72c309c6ec23cb172cb1814d', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-20 11:14:54', '2023-11-20 11:14:54', '2024-11-20 11:14:54'),
('77ac1f8f7d7f5525b323fb4b530b73dcf79833f0cda16f60bc67f857a59263d7b77a757ee31e2a2c', 74, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 09:32:51', '2023-10-11 09:32:51', '2024-10-11 09:32:51'),
('77f679a6535859fa7821fb4f29e985ccf9826d39000dd56d9ba9ba7793592e06b12705f3fccbf274', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 10:00:54', '2023-11-08 10:00:54', '2024-11-08 10:00:54'),
('78690cbd6e1d0003b7eafb3dfc0bd82b806479a3b4240d3409748c1e7c1bb2ac79b147acdef0cb94', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-07 04:36:29', '2023-12-07 04:36:29', '2024-12-07 04:36:29'),
('788e8741bc7dde1cb191561e28414db4e681789ef689161d206deb12ffabbd69adbfa7fc81ba601e', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:25:15', '2023-10-11 06:25:15', '2024-10-11 06:25:15'),
('78c072a4a0b15365f57ea0deda373112dd7f3fdc5f747f47c4aa01ec5e23d12e6112b54728d3c9b9', 50, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 05:54:00', '2023-10-07 05:54:00', '2024-10-07 05:54:00'),
('78c27511fbde63f8a50bbcb33be7bfabeead3c98a8058866e718185a75538a57cbcc22153b58af81', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 10:29:45', '2023-10-12 10:29:45', '2024-10-12 10:29:45'),
('78cf7e7c7220caea6225a425520382ac4657b3cc29003b24f88203d5461db874c2ac33c6d52e477f', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:07:35', '2023-11-22 05:07:35', '2024-11-22 05:07:35'),
('798e5650ca7767ad3806cc1854d0cd9e602bea0c4940aec60bc9c0116765e95652243b466edc37dc', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:26:44', '2023-11-22 05:26:44', '2024-11-22 05:26:44'),
('7b11e6a73f31d12832f8b6e31120328d875bce1ef39ba0f518799048e6f15d2269c4be6403416966', 118, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:11:30', '2023-11-22 05:11:30', '2024-11-22 05:11:30'),
('7b3a0e1ca2264e7795c3f6807b6763906d4374eb3933092b9c1e9087a183669201ac7c5315931c4a', 120, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:29:32', '2023-10-23 13:29:32', '2024-10-23 13:29:32'),
('7b71f99b70023902e5004136aaaa7f8faf16684a3245830bcafe4da181284d27c86c6b8f7a93a930', 246, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 11:32:29', '2024-03-04 11:32:29', '2025-03-04 11:32:29'),
('7b965cc55cdf15f916b4793153b7d5024195a3230bc3ed24111b0533fbfb46ab6aa46b260a4dbedd', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:51:30', '2023-10-11 08:51:30', '2024-10-11 08:51:30'),
('7bf42b5a5e629b773adad7fe883eb2fba53d0c9b4ed6f579088de3e4a66c6d7ced2ac40fd60156ea', 77, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 05:18:44', '2023-10-12 05:18:44', '2024-10-12 05:18:44'),
('7c7013e95d9462b35513f7d2ad6c5ed4a06b3de87dd92755436bfedd5b2adcfcfdc097ab31ea8b75', 254, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 12:11:31', '2024-03-06 12:11:31', '2025-03-06 12:11:31'),
('7d0da2a7a70446e3b23a083e018decb8af84e975a219ecf5e18e4e35efc5e431b50b31b6c0e612f5', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 05:00:54', '2023-10-12 05:00:54', '2024-10-12 05:00:54'),
('7d1135ec9668bd42425644ad2dc3b427e7948d0f7aa4450097c57c35f84ee434d522e6ff7f8429bf', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 11:03:50', '2023-11-04 11:03:50', '2024-11-04 11:03:50'),
('7e0a5877615c48171e9fd8c5f72759a2126e1ffad78a51cca2424b0cc2694de60b9e8462f105f1c5', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 08:50:13', '2023-11-08 08:50:13', '2024-11-08 08:50:13'),
('7e70bdcc026636c6a9f183babdd1d6a016d34212157c315fc7eed78239af4f000d1dfff5467d6217', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:32:09', '2023-10-11 05:32:09', '2024-10-11 05:32:09'),
('7f7708e77978bc114d3813731393701c4bdf1b88a5a97177d92a9b5f8755318fd612d0a3a9a47ed2', 77, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 04:52:28', '2023-10-14 04:52:28', '2024-10-14 04:52:28'),
('801ddec16033d9ecd5ee02c6fe5ac338772573a07d51926a8307108df7a0548c0af87a43e2107764', 282, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 06:32:41', '2024-04-03 06:32:41', '2025-04-03 06:32:41'),
('80ce79f00785a157784f91a7daa581740c0c2c58bab3f5982fa5537d9c88cbb86daabc6e6089bc5b', 134, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 08:16:38', '2023-11-08 08:16:38', '2024-11-08 08:16:38'),
('81019d6c9d9d3ed73c680c4afd4669659ce303fff4c92d3424a2ac46f13f6803015fc0c50ee43d81', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-15 05:33:12', '2023-12-15 05:33:12', '2024-12-15 05:33:12'),
('810ba5a332a497320e4717cd09ae64791874f6d465e2ca99bd89fef3aa53f8c6347854e4362e23ba', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-20 13:37:13', '2023-11-20 13:37:13', '2024-11-20 13:37:13'),
('81c0e62113e2d511c8d59d0e5de093217f867fc9811b384e1aa929b356229b986974708ce8d2fb13', 255, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 12:23:33', '2024-03-06 12:23:33', '2025-03-06 12:23:33'),
('8254b7aa937db32dbdc453692154963a684db69d407bf83781382b795cda1ffb560a11c6c26a7930', 97, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 13:11:13', '2023-10-12 13:11:13', '2024-10-12 13:11:13'),
('82652b25090d8887f40cd597c6e37b723c637ce0f6cdea55f592f1916202f2a7047f9ae33b9ce916', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-08 11:23:11', '2024-02-08 11:23:11', '2025-02-08 11:23:11'),
('826ff51c8ea8fd380ae50dc90603d03c1223257fe565aa655ffed8aea1b79898de54852026b5cfe2', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 12:35:19', '2023-10-11 12:35:19', '2024-10-11 12:35:19'),
('830620f674c20f93537bcbc7e9e406ad93ef57d66e2289dca28fa24c18dd3df4653f090b79b73992', 118, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 06:30:43', '2023-10-25 06:30:43', '2024-10-25 06:30:43'),
('83299a50932247440b46be6566a193fa8d08313ca406c83d8d6936e99b0be9a96aee3074d43cd07b', 68, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:00:23', '2023-10-11 08:00:23', '2024-10-11 08:00:23'),
('833b492469c2d478267ddcbf5431049fc1162156a548079bf8a33237bf3283db415c3aca9e833b39', 99, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 09:49:15', '2023-10-14 09:49:15', '2024-10-14 09:49:15'),
('83e9f8c45e2991fc238cf6ac34c1a8f99d86324566dd56826b532953a300ab4b6629889b9a0d29c4', 102, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 07:57:57', '2023-10-20 07:57:57', '2024-10-20 07:57:57'),
('842014ffe0d361d72fc689df5b100c857f20a5ccb3f4caa1e3f35da0dd0ceb020adc50acb788ebe6', 294, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-05 03:18:56', '2024-04-05 03:18:56', '2025-04-05 03:18:56'),
('8432be2d5052784cacdf259d583e6be832d3438d3b232b100d84ee64d33cba743c791be07839c7e7', 254, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 11:57:35', '2024-03-06 11:57:35', '2025-03-06 11:57:35'),
('8470d038a7be8c8c6d2a8b84f9ec093e1403f4810f006d87e5599355901801e3b64340a70aad336b', 74, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 10:24:51', '2023-10-11 10:24:51', '2024-10-11 10:24:51'),
('84ca285debbd3afaaccfc810de95a41e73ce2307d73bef628c97fd53ccaabad53fac37100a3e1ad2', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 12:42:14', '2023-10-07 12:42:14', '2024-10-07 12:42:14'),
('85fffafe87cfb40f67c81336ebf5538f5bcbf9e354fb157026f9e45ca29276e2998562a66c7f3d72', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 14:08:33', '2024-02-29 14:08:33', '2025-03-01 14:08:33'),
('86536fa5f1c4e93f7f0123630a3d783c145eeecc2a5f508568b25252c40f46ac7cb1f270c6992fae', 195, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-28 09:24:57', '2024-02-28 09:24:57', '2025-02-28 09:24:57'),
('868e4e76a3d6af389a6e5f7227fadcdefc29928cb028c2cbdcc577906bdccdc5a168542bd300907f', 105, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 10:03:17', '2023-10-17 10:03:17', '2024-10-17 10:03:17'),
('86bde2e361fa1bbc134891ead4f906d26f4261d9a32730aa8b888574eab6d12d4bb9b5a84ead521d', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:51:06', '2024-01-09 12:51:06', '2025-01-09 12:51:06'),
('877707acf5e5fd4f2f923d5b9fac314dbe5f6c0ff94593d54d211be3ce75bf9e87e750cc58d5ee20', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-18 13:17:05', '2023-10-18 13:17:05', '2024-10-18 13:17:05'),
('885cdd17b58b0782483877882251fe09f2d6a7c92deb472ef3e8700faf64c45e8d601053bfed2644', 244, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 06:44:55', '2024-03-02 06:44:55', '2025-03-02 06:44:55'),
('888cd89afba1db7fe32427613fd499138e4895140dacf55d07d5b9125f3b68c14acb51859f6b70c0', 115, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-30 13:44:09', '2023-10-30 13:44:09', '2024-10-30 13:44:09'),
('88b5ebb382b50d8c2db7686ac7e95a8bb8b3d40dbbb5a8997952804e94c11871e5c05905751d6b1a', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 14:55:02', '2023-11-21 14:55:02', '2024-11-21 14:55:02'),
('88bf42cbd8f2eba385c8b88632a2071d876ed9cb1c8a3d2d1380f850dfe4c7b870eb92953bf889bf', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-24 05:29:59', '2023-10-24 05:29:59', '2024-10-24 05:29:59'),
('88ea89894e99c498a8bd46aa8394fc06f660ada7af116dd06181936005fbb84a8a14985328abe49c', 298, 5, 'Laravel8PassportAuth', '[]', 0, '2024-06-14 05:27:48', '2024-06-14 05:27:48', '2025-06-14 05:27:48'),
('896e3d0c810040ed2a1763f41f3d644163a29a0ae81f8dbd9be8fa16f15a0c6236cd6378c328c144', 285, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 12:56:19', '2024-04-02 12:56:20', '2025-04-02 12:56:19'),
('89e3b8e381688ffdd727072205072a0148fc38998e8df566a2a62c95aae95a891cb120fc93f0f1f8', 122, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:35:16', '2023-10-23 13:35:16', '2024-10-23 13:35:16'),
('8a9dfc2b51984cfb46db2637397032550ca7c3c185be77da79fd30f1cbf122298be3703c7a43bc3d', 280, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-04 13:07:46', '2024-04-04 13:07:46', '2025-04-04 13:07:46'),
('8aa1aeb3d58b1691ad21d8509955d286162495ce46b408e676d9163fae5ff8105d6411b24c92cb3c', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 04:57:57', '2023-11-22 04:57:57', '2024-11-22 04:57:57'),
('8ac8cac88fdbf30bbd1868aa34b0f33b6505a92c20e4988c4637e176be22877be8ed2d855316321e', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:02:51', '2023-10-11 06:02:51', '2024-10-11 06:02:51'),
('8af4429274a4e4d440db22c9fcbad2b2498e75eed1665dc958876b02317776edb0157a6341c20c6d', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 06:54:06', '2024-03-04 06:54:06', '2025-03-04 06:54:06'),
('8b1d873e9eee0b2254a80c27ec83445a4a1076fd33fe45f893a5b77126edf0649a7ab57e62c7282e', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-29 06:43:44', '2024-03-29 06:43:44', '2025-03-29 06:43:44'),
('8ccab945787a5d625112a549654965797c90bfc441b705aa0b1a3e6106b28a84eee336c7f855154a', 25, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 03:36:20', '2023-09-22 03:36:20', '2024-09-22 09:06:20'),
('8cfda90318394b870a6e63f9143cc193224f81463a9c26aeae4cb630285f7dd74eb5683e9c95ca3c', 290, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 07:30:59', '2024-04-03 07:30:59', '2025-04-03 07:30:59'),
('8d5fa8a5084cd2fe983058913a0337dbff88e813dd6d3886f7e0790320ade11229d704c0f2bcf2a6', 277, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 06:59:31', '2024-04-02 06:59:31', '2025-04-02 06:59:31'),
('8d7faf6008733e08d621a17dfb42809389440c458e3861912a6a52b7c9a79cef93133e80b4bd5f69', 245, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 06:49:10', '2024-03-02 06:49:10', '2025-03-02 06:49:10'),
('8df372a8bcf0c2d150dd7a3352d8197085e7af7c74bd4fde638b72cca754a15b8f0f2e8d725a748f', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-15 07:18:01', '2023-12-15 07:18:01', '2024-12-15 07:18:01'),
('8df4ae3dede9c69fdae6718756e472978d5b9a1acd27da2d978cd200a5e38850bb796b61ad43c4fa', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 14:05:53', '2024-02-29 14:05:53', '2025-03-01 14:05:53'),
('8e13a7085d3b65fabaabaf97b1900ea7fef67f6309413d6783469813031af7eedbf19ce3d431eccf', 55, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 01:00:11', '2023-10-03 01:00:11', '2024-10-03 06:30:11'),
('8e156af04ea8de8a0629c1644d6843607c9b38dc809e0694ea04c49189d9f00bd1124fbc3933749b', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 11:23:36', '2023-10-12 11:23:36', '2024-10-12 11:23:36'),
('8e3217f4e0da9b3f021e54941499ed5b7a167d182a25258d7e9dcdaff27e1e19f533740bd3dd3141', 290, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 08:35:30', '2024-04-03 08:35:30', '2025-04-03 08:35:30'),
('8e5e4817675ac4869382f4d4f04a302e7998e430da263b3455e3dfdfd4f4eecb485956992cf823ed', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:23:01', '2023-10-23 13:23:01', '2024-10-23 13:23:01'),
('8ec25acf8a6cd051268ffb485095f2a760d005749e97457e25e5f26912321bfa7ffd24a6d45356a5', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 12:39:59', '2023-10-07 12:39:59', '2024-10-07 12:39:59'),
('8ef44117654e1681085c7d8825c4281d65fb06dfd5af62a07d4a3f64d0ad327acf7ad3af861835d1', 246, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 09:22:46', '2024-03-04 09:22:46', '2025-03-04 09:22:46'),
('8f24b29e1747acd76faca794695289114dfbe533d8fe0b2170f96b73e6b8e0038548f928cadb3074', 271, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-01 17:33:25', '2024-04-01 17:33:25', '2025-04-01 17:33:25'),
('8f6cf509eeb42049bb86d65b4f76d0e92955948671b82baccdd7a09d25e973849bce91d6750a1285', 112, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 07:37:13', '2023-10-20 07:37:13', '2024-10-20 07:37:13'),
('8f9b60d91cfa3fc815bb2e621b49a71bd450df1f12a28a35226d6675de0322c9cb91e0a3ebc15dbd', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 12:35:42', '2024-02-29 12:35:42', '2025-03-01 12:35:42'),
('900332c47123ab8def756672c27e456998a40a3922a3183db3641291cc4ce0fbf8b437cbfc05a746', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:28:58', '2023-10-07 07:28:58', '2024-10-07 07:28:58'),
('905e974c8c8dcc3549fe4053e8347015d43ac7d4e3e49d0eb06f695eedcfdeee1c49fe5912bc3a0a', 285, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 12:41:07', '2024-04-02 12:41:07', '2025-04-02 12:41:07'),
('906531090c086a693ac637f94f945827cca7226c02098213d5accb32ca2e00182fdf82bf303f4e81', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-27 07:03:21', '2024-01-27 07:03:21', '2025-01-27 07:03:21'),
('912c8d4056e328fbbf009534cd8812a0c86f1ef7b787fe0b1b94178b40a1090ab75f4422cf79aff0', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:23:09', '2023-11-22 05:23:09', '2024-11-22 05:23:09'),
('917993ddce49ced3cf31305d83b9cf8b2c37992ef31c2061f032cd36fc54fc8abf2654b0f426dc99', 162, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-29 07:36:58', '2023-12-29 07:36:58', '2024-12-29 07:36:58'),
('91952aa677e29c7f9189e44ecc90b7a9d4ed628fc39649f3766f432a59fc7b8d408cdfd8934a67a4', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:25:46', '2023-10-07 07:25:46', '2024-10-07 07:25:46'),
('91eb83035958a047f9cbdd373731fd51cd591dcf4fc1094bf2432a78a9da77841a0aa55cf0a1bfa1', 79, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 06:12:24', '2023-10-12 06:12:24', '2024-10-12 06:12:24'),
('926bc1416e97736e657054ec1810bf79da4a54c14589c3f4f11d74573451b2a5472813fdfe80129c', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 04:51:13', '2023-11-22 04:51:13', '2024-11-22 04:51:13'),
('92bdf3903ce98b61dcf2cc7da9a9d8c8ac8ed967f4fbe14b09ed09dc2ad31a361e1ae12befbfa251', 251, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 05:55:39', '2024-03-06 05:55:39', '2025-03-06 05:55:39'),
('93089e594e1e15c19d1ab47006a006900e4884e1b8c7bb7a57a825f0032cc76ca8252fb0ed469f22', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-09 06:13:09', '2023-12-09 06:13:09', '2024-12-09 06:13:09'),
('933d1febdc1b3ac0c3fe62c62dcd07d979a8e67389eb6e80621b95d4945c6ce92651cdcb5a4f2772', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-27 09:25:43', '2024-01-27 09:25:43', '2025-01-27 09:25:43'),
('934004d388f7d114f6255cfc1274182033e49646bef63e4d62f7a735398b0fce151b2be4383686c7', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 12:46:49', '2023-10-07 12:46:49', '2024-10-07 12:46:49'),
('936bc5c1e17e064362ee716623b692daad518fa6e87f2644c5b1d43f368a8a7ca99bfdce76397069', 163, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-16 13:28:27', '2023-12-16 13:28:27', '2024-12-16 13:28:27'),
('939b397e90193c884402e1fd5b8df09967273b910efa900d46400ab874831a940f11a9cf40c1251d', 25, 3, 'token', '[]', 0, '2023-09-22 02:45:33', '2023-09-22 02:45:33', '2024-09-22 08:15:33'),
('93d1f65cc0758cf20f49079509575cadb5a364475885351b67475a81bba57434eb64d131dda772cc', 96, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 13:06:24', '2023-10-12 13:06:24', '2024-10-12 13:06:24'),
('942a3d2863e6300119df498bf8bb15b8e52b1993662e59fff6a3b1bd723ab2cb311d802f31b828e8', 134, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 08:44:48', '2023-11-08 08:44:48', '2024-11-08 08:44:48'),
('944ffc309ff4349d7f5e5f42bc154c6ebfb418f73a94bd9fe013e7b063ffe6218bd5b926698d23cc', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-17 16:04:24', '2023-11-17 16:04:24', '2024-11-17 16:04:24'),
('9514d979496d47e346176c075c915a1d864c9da7cdc45f5af1aea36a7332972272c658d9f1adb628', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-26 11:07:08', '2024-01-26 11:07:08', '2025-01-26 11:07:08'),
('95a1a1238d95474e72f5ec987e6e2932cf5b3c3d05c7ee28a56ff6f12961c6b6f7821044cd18813d', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 09:55:24', '2023-11-04 09:55:24', '2024-11-04 09:55:24'),
('962551dc6562799e98a6cc1cdc961370646fabaad17189ef66c085289ec95cc0f90f17109f4c4182', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-04 05:08:28', '2024-01-04 05:08:29', '2025-01-04 05:08:28'),
('9667c55ffba17095ef7dc75611ff2fe94fc1591b0ae0af7189cce216e87e983324539f075aeaccea', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:35:31', '2024-01-09 11:35:31', '2025-01-09 11:35:31'),
('969929ace0aabf1e0fcca1f5bf1197ea22a284ca23904b3bd2a0634edd981cec992a3151023b807e', 46, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:24:36', '2023-10-06 06:24:36', '2024-10-06 06:24:36'),
('9710abbee704b3b5ef17effb885c76330e201515313ddf152d0707c163dcde151b003fe79abe01ef', 47, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 05:43:33', '2023-10-07 05:43:33', '2024-10-07 05:43:33'),
('97aaccf936d86dea3149d82af45b854a6b4651b2859a10f237d9d29391e843389d2f358be919ac59', 276, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 06:28:49', '2024-04-02 06:28:49', '2025-04-02 06:28:49'),
('983a17db8a52dbb577d906b145060e878c62de889065944a94cdf70e0e3c22100da81a4746af2434', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:41:04', '2023-10-11 06:41:04', '2024-10-11 06:41:04'),
('9885944e93f8cf5e0e47a0d21a2d57ae0956cacea3126902ee12a0f69d10297378e332f3d9fc10ee', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:16:54', '2023-10-11 05:16:54', '2024-10-11 05:16:54'),
('99a666fb061d4453ba53cd163a2969d81804a401ec1a5b9b564f5e87c0d8efbfe291344c6681af3e', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-26 12:35:14', '2024-01-26 12:35:14', '2025-01-26 12:35:14'),
('99ae7e27cf3b69369a2d6c58d36a545e25f8b47a9d491c331fc4df728f8bdfd858327d1e287e4bc6', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-21 09:01:19', '2023-10-21 09:01:19', '2024-10-21 09:01:19'),
('99f8ae66905b8fccd9a17258bdcb3815ed6f29e02e2521ff824f8dba133d6e94034d218fbc73edeb', 78, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 05:21:52', '2023-10-12 05:21:52', '2024-10-12 05:21:52'),
('9ac8be454adf9ade8277f5c3a4c5c5e847adf5358bd51c82f78ba1b7ff719a133e8d71318a044de8', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 10:32:59', '2024-01-09 10:32:59', '2025-01-09 10:32:59'),
('9b1e77ccd6e54da2a025daafc3affff8fab136401d1db0e98d898c5ecba48694f1baae318e648028', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 10:15:41', '2023-10-25 10:15:41', '2024-10-25 10:15:41'),
('9b9c6484bc2ce8eeff3071c877352bcf6eace682fd59a12107328b10b9154a8ed220c597bb489fb7', 50, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 06:02:19', '2023-10-02 06:02:19', '2024-10-02 11:32:19'),
('9ba706f83a102091030f621b9a72d4077e4d6dca237418d075b5e2174a69cd5c8d41ca119872d666', 176, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-19 05:45:48', '2024-02-19 05:45:48', '2025-02-19 05:45:48'),
('9c47cdfbeac7557d28a1ad61b848be91b527dc54340db06a050e54a56d03135cfa16ef900bebcfe4', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 08:06:01', '2023-10-17 08:06:01', '2024-10-17 08:06:01'),
('9c8841d59d6dae0f6014d39acf9c4df8f2447660a85c055854e84429dfc9471a6bc1135984ef6fa4', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:12:29', '2023-10-06 06:12:29', '2024-10-06 06:12:29'),
('9cf190201ff2ab795a41d2c147333d16031f7152595efdccf27a1a1f1d1633728835ab75bf2a3ff4', 247, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 11:45:48', '2024-03-04 11:45:48', '2025-03-04 11:45:48'),
('9d73b7af9ee90887d1d6899674b90cd8e78308f5beac7b00db103d0443c99854a1b088a63ead76cd', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 09:04:52', '2023-11-08 09:04:52', '2024-11-08 09:04:52'),
('9daa8bd0d719c2fdc4b95faf43d445a50f2d49a8d717f8463e7aa9d6f125ec101218c29d226f2ff6', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 10:15:11', '2023-10-25 10:15:11', '2024-10-25 10:15:11'),
('9ee10bbc523e248ce8c87c1e289272bd040c40b2ded0bd47325d7358275c560d1ae261de0b430bd4', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-10 05:32:24', '2024-02-10 05:32:24', '2025-02-10 05:32:24'),
('9f6d57e3230e726ed5aa300a592c7724006d2dc050c62410accbc2c5a22791ae4b5ca915d23ac743', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:51:25', '2023-10-12 09:51:25', '2024-10-12 09:51:25'),
('9f85845343d6ccb677a2511abbd3b6a4778677d5a640870cecb0b8338e28daf42063fa04f73fb233', 56, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 13:04:57', '2023-10-07 13:04:57', '2024-10-07 13:04:57'),
('9fa23fd6125809f075c1d2022f487623203025b080a4bca3510221d3266593daeb702b514ed2b20f', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-06 07:48:30', '2023-11-06 07:48:30', '2024-11-06 07:48:30'),
('a03b6d9e9bc006c818d1728508a607ce86397d812f484b96d715dc4c1c7b5991238bbe3590d5b55f', 61, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 08:35:10', '2023-10-09 08:35:10', '2024-10-09 08:35:10'),
('a0a2529031e42f8f2a4e3bfee70f5d0fce1c945f44023322ac9a2c5af98b5758c573616fff20dcfe', 174, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-26 10:55:15', '2023-12-26 10:55:15', '2024-12-26 10:55:15'),
('a0f9b58340e51b5c881e202c856387f5ef803ec2a90726063cd768772d9fd8fb06c7a5194f81fc5d', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:01:37', '2023-10-06 06:01:37', '2024-10-06 06:01:37'),
('a17cdcf696f4106f1ace5a45a8c5afd870cd71f601a062377159b1c938bbd9f08af95e1329979d99', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:20:33', '2023-10-07 06:20:33', '2024-10-07 06:20:33'),
('a1a73ed37aac7f5931f88984361983a898453a6976f044cbc3ae71d97d02f5857f9034205b22d2e7', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-29 12:29:09', '2023-12-29 12:29:09', '2024-12-29 12:29:09'),
('a1d87d5aa14bd2624374ed0ec7f4a356cd6c7dbf8c81ccb4de6ac4c570abb67e49f332e6538ffda7', 204, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 07:43:44', '2024-02-29 07:43:44', '2025-03-01 07:43:44'),
('a1ed7e24032ac058bf6b2400009c99d8b8dcc88bbb4a0c1a75171e9be9e30b41c57dc13e288ff799', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 09:10:37', '2023-10-25 09:10:37', '2024-10-25 09:10:37'),
('a209e1283115de41e50228df68b3436e2385435a6859d1f482a16f9c4642aa20e61b484d8392b2d9', 49, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:59:55', '2023-10-02 05:59:55', '2024-10-02 11:29:55'),
('a2434d6f233cc6e3898a467a507f243b8a8f99a28c603fd9eb1e793ced980e378b7fb94f5da086ee', 277, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 07:04:56', '2024-04-02 07:04:56', '2025-04-02 07:04:56'),
('a30d7c7c30e40adc77242b92d06426f970169b881a348aa44a718d5f9308da589eb1f84d6466001a', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-15 07:36:26', '2023-12-15 07:36:26', '2024-12-15 07:36:26'),
('a360ce87a482e8f57c8f303ea51409637d00dd828f2c23f7b6e0fb2213dd2d45dfc70390d3b80eae', 237, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 13:22:20', '2024-03-01 13:22:20', '2025-03-01 13:22:20'),
('a3d228d42ac9f5276859e7f4bd1704b892a517cf32db4e2873fe73acc728c4f82ab1f4b714a2352c', 115, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 10:22:37', '2023-10-25 10:22:37', '2024-10-25 10:22:37'),
('a3e7bac86619e27a903cd868f5237b275b0945e1c0fb47c344d1dafe550d281f815487ff3f4a1775', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:09:15', '2023-10-07 06:09:15', '2024-10-07 06:09:15'),
('a4782c03044cb4464d85f45fbd22754c9370e350556289aa9534fa82174f03db09fbda74f47d01c0', 246, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 06:53:51', '2024-03-02 06:53:51', '2025-03-02 06:53:51'),
('a547c0a041fe7d6b8cd144c4f0348c90806f5723cd9290dba083231d3f5fab1bd5205070356617c3', 137, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-09 10:34:24', '2023-11-09 10:34:24', '2024-11-09 10:34:24'),
('a616fd16840066d31c407a9d291058a2693fb6dcceeeefe461d34e781dd32d43c4d339d0c588069a', 198, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 06:09:20', '2024-02-29 06:09:20', '2025-03-01 06:09:20'),
('a63320cf2b8b65694cbeb18f01947efb7314840183e201d05cb45608db20f8c38953f488af9794d4', 77, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-13 10:12:13', '2023-10-13 10:12:13', '2024-10-13 10:12:13'),
('a6623cb8769776492fb674fb26eacb9a6fe024750ebc56c7870968fe8e8ddad0a1e8a19750e3e0e2', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-03 10:22:17', '2024-02-03 10:22:17', '2025-02-03 10:22:17'),
('a6c1a60a8c4849fe95de81292b43576eec090ade9e90ce2da1347ac761ffdadfd292769ba54304b7', 185, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-15 11:59:13', '2024-02-15 11:59:13', '2025-02-15 11:59:13'),
('a72378171a27787f1009ff75548da1df885efb00d5c6cebb9280fda9092d95165b0cb1974adddb7b', 282, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 05:23:10', '2024-04-03 05:23:10', '2025-04-03 05:23:10'),
('a72b49140d0b74a61dd3fa060df52e7bc0ecc492c46ad7a69745ace87b06a4f2c15065efcde49146', 107, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 10:16:57', '2023-10-17 10:16:57', '2024-10-17 10:16:57'),
('a788075472c6aa961d8fab9efecad2376bab2ad477ffbfaef77c9992f23be79d6ee3702745d7cf11', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-04 13:44:24', '2023-12-04 13:44:24', '2024-12-04 13:44:24'),
('a7a2d3b8920c42e65b370dc72b16aa60422713ca23503a4f84614daae546ee57a0fb95bb59009799', 285, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 13:03:58', '2024-04-02 13:03:58', '2025-04-02 13:03:58'),
('a85b7aade9d5f700a66a91836f87efeb69f52e246c1738b1cc8ff5e21002c43fd4a855ee9cc6f803', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 07:39:28', '2023-10-25 07:39:28', '2024-10-25 07:39:28'),
('a88807b25c981df2c2e987e5e9bd443c014d22eccfbe71457ede445538c464dfa46d91505541a424', 61, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 08:27:36', '2023-10-09 08:27:36', '2024-10-09 08:27:36'),
('a8b0eb534d3f8e17e7da81a9f96fd238816a103782030e0a63ff811ef9419363ae668a2be9daa4b1', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 05:45:26', '2023-10-09 05:45:26', '2024-10-09 05:45:26'),
('a8f1896fb2c90661bdd70a23d8e8dd8c223e610a4913ae350f8645a157ed69746328519f0daab6b6', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 05:12:10', '2023-10-25 05:12:10', '2024-10-25 05:12:10'),
('a91d16eae31df3ed0988a8f29e2dccc4c6c92604023fed9bf161e04d3a678597a358906736ea41eb', 120, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:32:14', '2023-10-23 13:32:14', '2024-10-23 13:32:14'),
('a9371e61e62c0584e133329575c3e08ec5ae01edb40d44d21a96dfbb44eae6dd8c46ec18659c5de0', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:15:25', '2024-01-09 11:15:25', '2025-01-09 11:15:25'),
('a9aab40bdd292c85a8ff4b2acef4b9f34afea840a36dbb9ab1d2b3cd8484424b014c8186e25bc253', 77, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-13 11:02:26', '2023-10-13 11:02:26', '2024-10-13 11:02:26'),
('a9f8527e36f783ea2be4714874dd240d56ba89f4358681fd2dce35f1ad1c1cd076be6d35d5f9c386', 136, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-09 06:53:34', '2023-11-09 06:53:34', '2024-11-09 06:53:34'),
('aa029436790378ea3772a7870d11361d784be8977e64eebc72fa120ecbb21925d297b0512086a3a0', 116, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-30 13:45:48', '2023-10-30 13:45:48', '2024-10-30 13:45:48'),
('aabf1e86eb63070a4aa4c2ad41266fb5052dacda232d40c7779b6e956a4d8e5e1d0b8a7648ad05fc', 133, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 13:08:48', '2023-11-04 13:08:48', '2024-11-04 13:08:48'),
('ab854081b60b1a7db01f053e636eb84d8705f96d1ad676217132c8129e32d1d94fd9e50f5a4cd488', 227, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 09:03:38', '2024-03-01 09:03:38', '2025-03-01 09:03:38'),
('abfc012619c786b628a9d123a362c7e4d866135177fabe56aac5dd57bf9f360f15b5302c1ee6c9cb', 179, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:31:32', '2024-01-09 12:31:32', '2025-01-09 12:31:32'),
('ac5d19b0bb97c8861e2a6a04583aed7cb111e8692946f7fb9c1b192cb4fe24bae98eec356c6730ce', 103, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 07:48:24', '2023-10-17 07:48:24', '2024-10-17 07:48:24'),
('ac837387e2a4dcd90d5da7edcf5d9cbaeec258eb01ab3efd76b529623b1d0f997d30a96dd25d8f3f', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 05:16:52', '2023-10-09 05:16:52', '2024-10-09 05:16:52'),
('ac9c09397558869d37426a8a2a39acb3f247da4575cdcb80d7500016f115c42cf7efa5b734929dcb', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:23:33', '2023-10-06 06:23:33', '2024-10-06 06:23:33'),
('acfedccad053b27c2463fbfef899ea9157759974be2b59722d278698a083526820735f8f1f836586', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-04 13:11:50', '2023-12-04 13:11:50', '2024-12-04 13:11:50'),
('ad2f5b1037f06c51963e1b54491d94e634221c86d56f41078d9756a9f8f8abad7f90845aaa1f3a87', 77, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 04:45:28', '2023-10-14 04:45:28', '2024-10-14 04:45:28'),
('ad3debe8659a9b1d98426a39c82d8c5b0ba6d2eea62c0705a67812c778e5710c98f496a97fddd44e', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-05 06:39:05', '2024-01-05 06:39:05', '2025-01-05 06:39:05'),
('ad5550cb127a482c413572648c1d3a31563ac25e90fb83accb6fa866183a08796effea6f2a82e30f', 261, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-28 06:07:45', '2024-03-28 06:07:45', '2025-03-28 06:07:45'),
('ad781b1f205c1e3b215d008c5c2c035e48e5f9414c3e67f5eff73f87f769c0d748b0117ad7a83cb8', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:57:25', '2023-10-02 05:57:25', '2024-10-02 11:27:25'),
('ad91fb22bdf6a9bfcc360ccf2aae995fe74568c34b8be1e923a99ec3a2d24ee000ae0e2a319d41d8', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-22 12:02:39', '2024-03-22 12:02:40', '2025-03-22 12:02:39'),
('adac15da07668921f02b25f0708737ac96a2b2a8fe2c4c507cd0d64cee64d2a3ea1a49cfd3c7163d', 71, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:29:50', '2023-10-11 08:29:50', '2024-10-11 08:29:50'),
('adae7551bcb7089a8638596a2b5708be96e77bcfc942455702f432e2dbe32a1b609fffab08d42387', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 12:13:28', '2023-11-04 12:13:28', '2024-11-04 12:13:28'),
('adde7f6367196e5c5ceaf63a4db776a173c63725b5144c0906f5faf12f8d76583172039181fbd76f', 275, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 05:31:31', '2024-04-02 05:31:31', '2025-04-02 05:31:31'),
('ae318784438eaff34bf1b1a001039b572bd72ec04f7b9de40af919b21448037793c5cf7684078e31', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-25 10:33:15', '2023-11-25 10:33:15', '2024-11-25 10:33:15'),
('aece5d866fc7b34c02d5d0cf110ab81f5376b390cc7fba5f72ed0aa21c3b1988d732c463d31c2cd7', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:27:46', '2023-10-23 13:27:46', '2024-10-23 13:27:46'),
('af95b203f5cf9960ef106557eb1a6e8ae0a1565bf3d4582d43bab4c3f2c62d9c27b12d0382e11c6d', 179, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:38:04', '2024-01-09 12:38:04', '2025-01-09 12:38:04'),
('afc2fe9feb44b3c2ccbf04115eba3567ddda7d5570a16bac2bf19bf7e9f4879b89c6f08a7392cd39', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-15 07:33:10', '2023-12-15 07:33:10', '2024-12-15 07:33:10');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('afeb31c3046ee52258875c4a53134a09f1e618ca1c33e25b6988419baf96759cc6727fbfab7c0322', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-27 08:07:32', '2024-01-27 08:07:32', '2025-01-27 08:07:32'),
('b06d338b230d1b3ef304c01da33fb9c80e832f9b1f0aef1a3c394efe77165b5c4833ac734fb50f49', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-11 18:12:53', '2024-03-11 18:12:53', '2025-03-11 18:12:53'),
('b08a728c15273345131a228fd31808b017f5b67aa839d7080b1f6807d6fc83ad1b1df16b57b0d4ff', 208, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 09:45:19', '2024-02-29 09:45:19', '2025-03-01 09:45:19'),
('b0cc96edc466990ae970e200312e649465c60cd0cb01e1b39d2ef80724ca0cddfc1f454b27364129', 176, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-20 08:18:53', '2024-02-20 08:18:53', '2025-02-20 08:18:53'),
('b1587f865390be3a6370eb8b080c193a55fd09d3b2e7eeb7b155e0ffd25e9c545954493c51843659', 106, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 10:53:42', '2023-10-17 10:53:42', '2024-10-17 10:53:42'),
('b16b9abf7f02542ef06a213b9a0d4c7accdeab2cd9705d35be08b38eee8c0c78478736d91c7b0308', 176, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-29 08:27:10', '2023-12-29 08:27:10', '2024-12-29 08:27:10'),
('b2b1d46dec32c46bbbc052bc3bb99fb8ba287f1c0547ffd7971dd4cf1d1ca8266d2569f3d9a575d5', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-21 03:44:54', '2023-12-21 03:44:55', '2024-12-21 03:44:54'),
('b2c722d7c363148015a4eb07ec4c84e1ed0c4164bfe6c6177567cb56f0400e2161707c76a2dd63e4', 257, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-22 09:44:32', '2024-03-22 09:44:32', '2025-03-22 09:44:32'),
('b3648df982ce75ca4a1f4664893e2afc39c5216fa6c0b938b09f8d10558a7eab7ba2ef584f61fcef', 162, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-06 12:02:58', '2024-01-06 12:02:58', '2025-01-06 12:02:58'),
('b40172c752de387a40dcc2c223ca7a9ba2eeeaf7190dc3079da9ee1f5b2c774c3205267f06ae9b0c', 235, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 13:08:46', '2024-03-01 13:08:46', '2025-03-01 13:08:46'),
('b43b8d43b9f02c65fbc64ab8b54ef7836c9ac42af2664da04710484b19db80437696599adebb0d98', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 12:25:19', '2023-10-17 12:25:20', '2024-10-17 12:25:19'),
('b44bd060d8eff1016ceeac0089ce282b7fe97943df8ebed0914ed5d141d3268398ff124ef4167b16', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-16 07:57:40', '2023-11-16 07:57:40', '2024-11-16 07:57:40'),
('b4bcfa46d827a0cb18f9c6e1dcaf5c1ab9e8bba16376fc34b641602a6f28fa8ba87740606389e855', 176, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-29 11:09:43', '2023-12-29 11:09:43', '2024-12-29 11:09:43'),
('b4e010bbb1a4979dc443b11ef99d60d43ebfd0562482b87b2c91bb5d49802ee94035aad2371b7c0c', 291, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 11:23:03', '2024-04-03 11:23:03', '2025-04-03 11:23:03'),
('b4f073c3b69600510c324e28514ed48f4303a53e155ad8f399c7aa393556054108706bc4fde58d5d', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-16 05:15:53', '2023-10-16 05:15:53', '2024-10-16 05:15:53'),
('b4f5cb06fb3beba7c3787b394e55261e4ab304aab47fe67a1b94b39c0a04c405930fdfce0611f70d', 29, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 07:21:09', '2023-09-22 07:21:09', '2024-09-22 12:51:09'),
('b5414b0b2bc4202b8193c9153781c39ab9eec83e6075c004379ea53d1b625b3959219151d18a9951', 78, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-13 11:53:26', '2023-10-13 11:53:26', '2024-10-13 11:53:26'),
('b586d6db6689ea2ed583e2a12036700d7837eac9203f89d16a460ce45a7a530d581458d864da863a', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 04:54:52', '2023-11-22 04:54:52', '2024-11-22 04:54:52'),
('b67d4f45b27c0961830f0c4fa2de606aadcf37268f3b712333296b6c09e6fe4f02dca598bdac999b', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-26 09:25:06', '2024-01-26 09:25:06', '2025-01-26 09:25:06'),
('b7080cc1cf18f2e04f0e72db5efeb67621ce64faf46897f47c23023d61b305da862477b644dc7076', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-17 11:16:10', '2023-11-17 11:16:10', '2024-11-17 11:16:10'),
('b73eb18b8f8295036fa23d91d39b26f011080de36921efc86929f94b1cb49394472bc4247a20737c', 286, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 06:26:39', '2024-04-03 06:26:39', '2025-04-03 06:26:39'),
('b74102b6c29c612d4567af1365737cdbebadedb7a43e45bab04866565b3def207748a9b8eb133133', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:34:59', '2023-10-06 06:34:59', '2024-10-06 06:34:59'),
('b7e9d542c5943dd2b56a642a9415e2954ff6c7e882414444530bcad88c848d3bf8f39642c270ff96', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:23:46', '2023-10-11 05:23:46', '2024-10-11 05:23:46'),
('b82442eff7a3964f6e449171d7e5ce5926f50de22a63c5dad82694346e652415fca94c0a657112fb', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 12:24:31', '2023-11-04 12:24:31', '2024-11-04 12:24:31'),
('b83404cceed948d939a1c744f92be7736341ca12198930b1d3a7263c7cde0f2e829d85f2b45a29cc', 179, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:37:44', '2024-01-09 12:37:44', '2025-01-09 12:37:44'),
('b8747ce4fb8fca1665866d2f914fc929e127e82c1e2a6a6472e1c81a9818a373fadaf803a397ded4', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:47:53', '2024-01-09 11:47:53', '2025-01-09 11:47:53'),
('b88519b5deac1f5b824d7d806b4befd01f9e5237264785d4a9f2f7a2d856fd8ccea5850f30476b53', 89, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:33:31', '2023-10-12 09:33:31', '2024-10-12 09:33:31'),
('b88c293eda875f06bf87986e0c2a8fde609cb87bc2fd5d28632a303c255fa1318fa77ab9ce9ef0c3', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-30 13:41:39', '2023-10-30 13:41:39', '2024-10-30 13:41:39'),
('b898b37310d7d941b77c8bd51809634f52629738f5f31a69ba6cc42fd24133beb7150cb118de5cad', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-19 14:02:40', '2023-10-19 14:02:40', '2024-10-19 14:02:40'),
('b9acadd3035d87cbda4f2791be1fa54636729ab6ee8dcb0b48bc2a115eade346a34a830513e47f49', 142, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 09:56:42', '2023-11-21 09:56:42', '2024-11-21 09:56:42'),
('ba1fe524d321dbd053a3cdfe76efe97babb66f1272b2e46b2730c8f03abba7aa327e06c42c85443b', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:16:17', '2023-10-11 08:16:17', '2024-10-11 08:16:17'),
('ba257340f3e7863dce52c2863bf653d7fbf84c4905d4243d78f1cb65738db3fa33126a286ca5695b', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 05:53:11', '2024-03-06 05:53:11', '2025-03-06 05:53:11'),
('ba2cef4c4abdf2c5111334886c8fae51508f64e6d5bc2d5e98524a3505d6eee4369655f605531cf8', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-08 15:28:52', '2024-02-08 15:28:52', '2025-02-08 15:28:52'),
('ba7c8e9f9722839dee7816644853c0b10dfcdd2bfa65971fb980b6d118514168e32259e8cd395e34', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 06:10:48', '2023-10-14 06:10:48', '2024-10-14 06:10:48'),
('ba96a73014158a9c67b437902f50e56e074189078c0af8e9fb7e82e016a18662cc60d7300106628b', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 05:24:48', '2023-10-20 05:24:48', '2024-10-20 05:24:48'),
('babdb8fea4ed8ede00bf859cbbe60af335c1046d6b756bde34418186daa7d8a83d67f43c1ec3f28a', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:24:46', '2023-10-23 13:24:46', '2024-10-23 13:24:46'),
('bbd0b0ec085294ec57b82834d58ac8bd9c89bd96d0a0a222d1b2a569596ab1dc83a15a1f855e38e6', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 14:54:15', '2023-10-23 14:54:15', '2024-10-23 14:54:15'),
('bbd697a0e8eae1753cd8728eb5838b34f1d4b40686b165a3211279b0ad982fce96434657745b00c4', 67, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:35:04', '2023-10-11 06:35:04', '2024-10-11 06:35:04'),
('bc55bcf351f5bd6c6e5a681c58978c58c5dad15bfd56bc774088a9e1e9d1021e872200ed29384e94', 52, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:08:13', '2023-10-07 06:08:13', '2024-10-07 06:08:13'),
('bc97bb646844f5fd76653f993dc5b69cf531fb53735f6e2a60fa3ba4ac117cf5fb379058c1d77a89', 238, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 06:26:33', '2024-03-02 06:26:33', '2025-03-02 06:26:33'),
('bc9883a580bb36eaaa7060495659eeb3c759aa3915153e3f135cf39439346cdb59ae6b5240d97739', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 12:11:53', '2023-11-08 12:11:53', '2024-11-08 12:11:53'),
('bce721b0578650216a26ee26823603c211dc21c8f0c269c46236ab7827b855997afb0aedbf31ac86', 204, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 07:39:10', '2024-02-29 07:39:10', '2025-03-01 07:39:10'),
('bd1d62e194d8046d724b3170a67eed983982b7d9427badd1ed23824243c94d3676d8c211dbb371cb', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:01:22', '2024-01-09 12:01:22', '2025-01-09 12:01:22'),
('bd727c1b83bbd14fe58afbec12ee27d1027cf3464dbc2b7c03630ab284a45602281a2359d0072d55', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:26:50', '2023-10-06 06:26:50', '2024-10-06 06:26:50'),
('be9d34539670f1b9265f2600f5378bcacd19a8f45097da15328955e30ac4ef77e51abd4ed2a9c9e4', 254, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 12:04:30', '2024-03-06 12:04:30', '2025-03-06 12:04:30'),
('be9d630d9a7b33355f70f265ab905c869bce24faa6ba53d8590cc601f833486dd67176c802023a6e', 246, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 11:41:09', '2024-03-04 11:41:09', '2025-03-04 11:41:09'),
('bf1f06d57e952d5efa3343b40a77c61e3f6f70928c2c5fc6b814b943b183af7f49b3ea21f6b819be', 77, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-13 09:33:10', '2023-10-13 09:33:10', '2024-10-13 09:33:10'),
('bf7511481ce3ec3db6bee07b5eb88bfe9014c77b34dcac99ae82bb982b8972896b7c13711d5fd688', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 09:34:20', '2023-10-25 09:34:20', '2024-10-25 09:34:20'),
('bfa273b69fc186ca4da65cdf00b532202a5e4708f88b8d989999883176b2760490ca7b51a79ed390', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:35:56', '2024-01-09 11:35:56', '2025-01-09 11:35:56'),
('c0418ffd633e82cbf62d24392b0c1473247c86aaab5a19e47d460189372a34eb17af9e24887786bc', 52, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:10:33', '2023-10-07 06:10:33', '2024-10-07 06:10:33'),
('c09647a211a46b214e11303c31feaeb10ac2cbd1f9768268648e2455bcd171bede696555969db8db', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:02:28', '2024-01-09 12:02:28', '2025-01-09 12:02:28'),
('c0b0a5a040ba68251b6865096646af4434fd2577baf7278fc4a6cbc0ce314b5fdcb68016abca6aff', 261, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-28 05:58:35', '2024-03-28 05:58:35', '2025-03-28 05:58:35'),
('c0ced65ee0795b06fa54d57f1f866990f69c7d5b4352e796d3c06d542b43cc398547f37cf456f184', 203, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 07:50:09', '2024-02-29 07:50:09', '2025-03-01 07:50:09'),
('c116626a0e25d71609f0bd883e319380a625271696f352737891484725a5db4833a3d214ebb900bb', 39, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-27 03:27:06', '2023-09-27 03:27:06', '2024-09-27 08:57:06'),
('c1d9b5a0b52779af5f567ba4ae6f7388f3b67d63aa188ccc48bd9ea344822c9adf70dbf2fbf1e926', 176, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-07 05:30:17', '2024-02-07 05:30:17', '2025-02-07 05:30:17'),
('c219662aae157d4b6ab0708deb01d20fe1d30e7afc7664bec58caea10b49b30953c8f79d8f4fa405', 246, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 11:00:13', '2024-03-04 11:00:13', '2025-03-04 11:00:13'),
('c32d6269c16ee9aa61d678437fec208136b307109ccd0a2b81c15b6e98c88a63a895f06c565bbf37', 185, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-15 12:12:11', '2024-02-15 12:12:11', '2025-02-15 12:12:11'),
('c333a0e622fdbc9d201f7ca07bf17e705c7d82d9d5db9dde35ca607290908a5f0aee7f65d7fc98a8', 176, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-29 08:06:54', '2023-12-29 08:06:54', '2024-12-29 08:06:54'),
('c34d0bc705d79b8f3fe41e9ced730cf5164cfa714b3a409e454f992f91520e4b49be2bf0280fc49d', 187, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 13:15:53', '2024-02-29 13:15:53', '2025-03-01 13:15:53'),
('c35f6e0d54d608b575f80e9b01dff01d76def17e0db2f2bb642a0c1801e3493204880330afef9903', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:00:59', '2024-01-09 12:00:59', '2025-01-09 12:00:59'),
('c3ae04996dafbb6f93d64b6587d97edb5d5d5affff19e43c058ad78ada7bfc86398f56b9ff5f9f69', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:29:20', '2023-10-11 05:29:20', '2024-10-11 05:29:20'),
('c3b741fe5a4bb103c0f33b368d41c203360a526351d14820130b46878c6341685151d1ca9c24a6f7', 281, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 09:01:53', '2024-04-02 09:01:53', '2025-04-02 09:01:53'),
('c3d38fe6379c60c5243ce50139f8596f72399b2f3e3dddccff4f0c722a71a5ad9ba167ca9d81fca3', 200, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-28 09:46:05', '2024-02-28 09:46:05', '2025-02-28 09:46:05'),
('c4764fc77023f8ce89872da7feac378fee0f77f59a52d5668f062e85bc76ec3b9abbc73cb4ca5f24', 185, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-20 06:45:42', '2024-02-20 06:45:42', '2025-02-20 06:45:42'),
('c566a8462445acd10bb8c453ddadf0380dd415a034249622ce7845aff6ebb91b28c59fa23e3111f2', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 16:41:44', '2023-10-23 16:41:44', '2024-10-23 16:41:44'),
('c57a1df858c0980571204a00227e236dfcf93d33d2c869d70e95bd601a9fe0c6068308d23bfa7b3d', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-09 10:29:05', '2023-11-09 10:29:05', '2024-11-09 10:29:05'),
('c64f1f06c84c42ca8e65e8cf0f1a9b5daed5b7cba4bcb65b99a93a344a21e8ce9babbcd7898c1076', 121, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:33:21', '2023-10-23 13:33:21', '2024-10-23 13:33:21'),
('c68b487a9509c9f41eb8753935e6c840be1cacea22bc652706d4f732f24e04514d98a9d259dce94e', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 12:20:15', '2024-03-01 12:20:15', '2025-03-01 12:20:15'),
('c6a2bbd671e5921f25a49ba03fec6d117d84a86e56f5e8859c16b964efc7ebdde59287aefb9c1603', 43, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 04:31:09', '2023-10-02 04:31:09', '2024-10-02 10:01:09'),
('c705db98ce0de22eab3332ff43b1339b8adb17b0d9c5f1e93450d5ae0bfacd47050c4ef70f23f1cf', 237, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 20:30:40', '2024-03-01 20:30:40', '2025-03-01 20:30:40'),
('c714744ca7e5505da98212925a30c9205513452ea3cf50a5fc60503ba4174308e63c621616eb5308', 84, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 07:09:48', '2023-10-12 07:09:48', '2024-10-12 07:09:48'),
('c7263c20b818a2f0e65c093162963ab8fa26510b8da6765900511eba652a32ead199c7e5d99fc030', 274, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 05:28:39', '2024-04-02 05:28:39', '2025-04-02 05:28:39'),
('c73e47dc5620f8e7e12173d3d16c5326b13cc73b6466bdcfd4b98c41951e606ef3b4aa9d7d9002fb', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-10 13:48:10', '2023-10-10 13:48:10', '2024-10-10 13:48:10'),
('c8db226194703a625974312e488a5df4d3ffb190fe8b3d5f2aac72cb9c33e79f6b3b33097afd073c', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 06:36:41', '2023-10-25 06:36:42', '2024-10-25 06:36:41'),
('c8f45d82184732853dbb2c2c2f8bcdf974c63ec4afbc6d68862c46d595791e690d58aa9a4baab817', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-19 05:38:17', '2023-10-19 05:38:17', '2024-10-19 05:38:17'),
('c8f9087aed1fa41915e400d5fb4a958d5b6537334ae4cf2c1345ff893bb33dceebb4a1d8e72c421a', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:39:23', '2024-01-09 11:39:23', '2025-01-09 11:39:23'),
('c915672a789c2b97fa99d8762a51cdd8c397d60b6c680e1a487013d54a62c6131b877a73052f467c', 91, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:49:46', '2023-10-12 09:49:46', '2024-10-12 09:49:46'),
('c93ce534565a4043192eb712856a2168c95a33fe60a9553a5b832ef353f9889e2f5c7554896dbca3', 282, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 13:01:35', '2024-04-02 13:01:35', '2025-04-02 13:01:35'),
('c9600dec21b82ba2a004c51f68419ab8c60b60fb32f3b2c0761d7eaa990e09573b3140e7a12a6acb', 42, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-28 02:45:07', '2023-09-28 02:45:07', '2024-09-28 08:15:07'),
('c99b5aa984b48841ad2b55fc76023c127f008c1b2640550543885d8fecdfc1482e709edba3c70d1c', 55, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 00:58:08', '2023-10-03 00:58:08', '2024-10-03 06:28:08'),
('ca141790e9a05d243ea43362ed952219a87f336610000325d77972e81185c4a0fe03400a6f4ccc02', 247, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 06:54:49', '2024-03-02 06:54:49', '2025-03-02 06:54:49'),
('ca1af4ff627af2a7136ca63ce9a7c7aa13b2446168d64f1027b6e02d8ac944973564ee226113bd7c', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:01:40', '2024-01-09 12:01:40', '2025-01-09 12:01:40'),
('ca1b977ed82a501be80de5cf98cfad6dd83e213932751a10c57ea5b9dfe6a07eaef6938dca9926c6', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-04 09:52:44', '2023-11-04 09:52:44', '2024-11-04 09:52:44'),
('ca74730435fd88c14cfe82b545013db2830c64374459a84115d94fbb198f58e6536fd00ad4df4062', 52, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 00:31:25', '2023-10-03 00:31:25', '2024-10-03 06:01:25'),
('cb2b57f95297c6ce37b478d8b50ed2832942a337d838403ce994e6daddf31947ba85fca9fe304663', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:31:54', '2023-10-07 07:31:54', '2024-10-07 07:31:54'),
('cb6ca7b029d44ae4e19038e2ae2a982ee03f7ceee794a9d16166e2abb30c03014f1e36aacc031491', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:08:55', '2023-10-06 06:08:55', '2024-10-06 06:08:55'),
('cc059a8c327350291dcf0c7f4ccbfd56137289a7fe2f1ac334198997b3dbaead8097a5e7b2669fb9', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 11:59:15', '2023-11-22 11:59:15', '2024-11-22 11:59:15'),
('cc72ac5f3d5d09037555f0a086973ab0a7e34f97d5c5c2caed96dd3a74ed11622fa85557551ec5fa', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 07:03:01', '2024-02-29 07:03:01', '2025-03-01 07:03:01'),
('cc736bb78012d02d8bc8349a4fa272f6203f93fcf944daaea258accfaf28405fe0442506f2e50a55', 232, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-01 12:34:36', '2024-03-01 12:34:36', '2025-03-01 12:34:36'),
('ccfae2f777951f3ca24772a226a86489d7f6fba6ad2b9d5c89faa0c0d7a019a4c222a8048a89ba0c', 101, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 05:06:30', '2023-10-17 05:06:30', '2024-10-17 05:06:30'),
('cd64a769bc4a662f9f71b0cf111da9fd79b7102f9c24fb495014b521b6b089174223df33647e308a', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-03 13:24:08', '2024-02-03 13:24:08', '2025-02-03 13:24:08'),
('cd8fa7a5b5f2d7b0a986b56efb2d5b8baabe2d5bb1ce5ea9c5fd168903fc8f860f96c600ec9fbbc5', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:16:49', '2023-10-12 09:16:49', '2024-10-12 09:16:49'),
('cdaaae6081503d6605ff7b5dc5631043be9520c73969494e6a3dd37e49fdb38b73d5bf80f1bbb9db', 163, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-13 05:31:09', '2024-01-13 05:31:09', '2025-01-13 05:31:09'),
('ceb416e6dc5e9da0d1c4490adce6a165087a0ee038ffe89120c3f2426e4a389e6091c798c83dd53b', 69, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:18:16', '2023-10-11 08:18:16', '2024-10-11 08:18:16'),
('cec85876f4d74e291ae021b042803301652794fad9dc19bb136efb17a6a885b9d5f00f9efec08637', 36, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-25 05:19:17', '2023-09-25 05:19:17', '2024-09-25 10:49:17'),
('cf3b50ccfd4e925dc17282617454260eb9ab9d0f5ff634e0dfed63c50084c8f703a97434525ee68e', 238, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-02 05:18:16', '2024-03-02 05:18:16', '2025-03-02 05:18:16'),
('cf460647323bbad495fe94b1bbd523b4a5bad3109c1fc4b4fe4f4e52447f6e463fc7034cb4f318f2', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-05 03:14:32', '2024-04-05 03:14:32', '2025-04-05 03:14:32'),
('cf876b11164185302a5d54aaee395ac42aa841cc6f477d2d6b0767c917ebfc96ade7b8ac733e1924', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 07:33:53', '2023-10-12 07:33:53', '2024-10-12 07:33:53'),
('d092b971d91f7b47dc6f06a54e52b6d556a0aa0c26237e902d79de7160240e3a0af4c95a320985a7', 162, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-13 11:54:41', '2024-02-13 11:54:41', '2025-02-13 11:54:41'),
('d09b3c1c9b585ed48afa771ff4f2c915706e323959c85cca0f427af3dad4ee4f64fc1eea896ea590', 283, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 11:37:11', '2024-04-02 11:37:11', '2025-04-02 11:37:11'),
('d0b5f79ebe71b72819a5d660949bcf13dbf5822a804dbb77567c34e2386af908a1d96f1f0c91b657', 49, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 06:01:26', '2023-10-02 06:01:27', '2024-10-02 11:31:26'),
('d0cc91c2d8420a8a9e92c0c6e213d5516bf92dbb8518832e62969b846b15aa479588a91773d6f8be', 253, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 11:57:09', '2024-03-06 11:57:09', '2025-03-06 11:57:09'),
('d0cdef85f6ed229910e4226374e3ae5ccec74341ec71ba08a3787eacd5ffd9467c6c403120f9f6d7', 100, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 11:00:52', '2023-10-14 11:00:52', '2024-10-14 11:00:52'),
('d0f73867c3dc0459e4741080cf7b36d46e5da2c539764d1f226426eb6021f54cf362e3f2250e86a1', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:56:51', '2024-01-09 11:56:51', '2025-01-09 11:56:51'),
('d27fe641506eefdf554b4c23f75134d3b77e1e695835e960f756f70ca5f89545a284227d5c066a52', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 09:40:02', '2023-10-25 09:40:02', '2024-10-25 09:40:02'),
('d3c7e41319c20f9d237525812d19226fcd02a13b72d8162e23ea938cbbfd645f1a86502f7fcb8cee', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-19 12:16:10', '2023-10-19 12:16:10', '2024-10-19 12:16:10'),
('d462b414cbcf2e9410937a06fed403d5948609fcde0378ca3927935ff0f0623627762cfa30d00545', 51, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 06:09:30', '2023-10-07 06:09:30', '2024-10-07 06:09:30'),
('d53fd9b83224734a3a7450b73291bbd71c6cc565333de465e22324d890016cd16132af599a2b1dbe', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-07 11:48:23', '2024-02-07 11:48:23', '2025-02-07 11:48:23'),
('d541cfa220bbbe0e270b33d0dfa411758ece25ab6df1038a701a393c9d86900134a63bdbd6f2843f', 166, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-19 05:31:34', '2023-12-19 05:31:34', '2024-12-19 05:31:34'),
('d6636e856cca03d45e382caec50c645ffd0ab166a54cbcaa8b8a3e315a634bcc787bf839a1d87897', 289, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 06:57:46', '2024-04-03 06:57:46', '2025-04-03 06:57:46'),
('d6ebf970befe31ee39fe81baad30f7148162ba1a356dc533c2ed0398e816f88f5de3daab174d08c3', 134, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-08 08:14:11', '2023-11-08 08:14:11', '2024-11-08 08:14:11'),
('d6f3f5f657d8fd6f45bcd417dd02d9dd1d546d814b0642bbc66476d3dce676caeff558f30879bbd4', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-05 09:15:41', '2024-02-05 09:15:41', '2025-02-05 09:15:41'),
('d722793662c0acdb0f4d19c32dc202783893d81bc66557fd37211149e634ec3ca1ef5161e6618a6d', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-13 03:14:54', '2024-03-13 03:14:54', '2025-03-13 03:14:54'),
('d7f80bf5ef749520d399f2f27a5e6ca0798bf8f22db2c7bfce04dfbae780906939fed41586b0ccf8', 105, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 08:01:37', '2023-10-20 08:01:37', '2024-10-20 08:01:37'),
('d86e8d7a1a911a85ae2bfc5f84f040c3ab65a443f4e54616dc8493b70a3c342a5f743cecc23dd62a', 28, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 07:13:02', '2023-09-22 07:13:02', '2024-09-22 12:43:02'),
('d876de809d41465b73e3986f0de0ff951f202e9336029cf8c316cdc324c4a07c25c044f9385ad463', 118, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-22 07:47:28', '2023-10-22 07:47:28', '2024-10-22 07:47:28'),
('d917eeb9cdb40c313e8d4754b49a99f90f445e11ec52c9ead0c548630a96ce71d64fcc80077618e5', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:32:52', '2023-10-11 06:32:52', '2024-10-11 06:32:52'),
('d94644688fce999c8427db4028f36aafdf6bc92f2645265a2eb74f15b5410edcd4eadac542d6a349', 62, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 08:36:50', '2023-10-09 08:36:50', '2024-10-09 08:36:50'),
('d9d522e9129646ad9b417ea1f455c63cbbec1973d8df1a2a201f139172ec0f8c2441daeac3875f50', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-27 08:53:29', '2024-01-27 08:53:29', '2025-01-27 08:53:29'),
('d9ef6e39ac412546fb1baec2220d361b5c97e123412be234fde944d6261ebbf5f046524089cd3502', 186, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-17 09:13:08', '2024-02-17 09:13:08', '2025-02-17 09:13:08'),
('da0f3a8d0b556e062333f18169e5cb8ee4725e928c37672896be072e5aee82245b42ef958cc26564', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-21 08:29:13', '2023-10-21 08:29:13', '2024-10-21 08:29:13'),
('da9c122c009f2306741d2f0fd348baaafeffc8cfecb1c86619040f36eb0943b171c1ba39986da5a5', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-28 03:31:15', '2024-01-28 03:31:15', '2025-01-28 03:31:15'),
('db09b931b2efe1e2c31248910b1ba166c851ff03ded66e97243dc419068128f4b1774e14ee8421ed', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-16 14:20:48', '2023-11-16 14:20:48', '2024-11-16 14:20:48'),
('db0bc89b35f88f6c00bb2c7cc3dd722d1d22119e1aebb0650829a3e4a7020c1d30adfde42b50c5c9', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 10:14:24', '2023-10-25 10:14:24', '2024-10-25 10:14:24'),
('dbad3cef1a979bd694f70c4495df672686a33184f031626ea56522d237e439fe3b4d6a2ee43efb6f', 187, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-28 05:36:58', '2024-02-28 05:36:58', '2025-02-28 05:36:58'),
('dc27c017eec7fbbd1d0fbedbe7c5d8bcd097d87d72298b8e8d6fab237ec53b7231f767cbe09b6529', 284, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 12:39:21', '2024-04-02 12:39:21', '2025-04-02 12:39:21'),
('dc38ee4a40347965d67195212e396b8b8817e45478019facc1d014f1eaa78e9d36aee1c07e2ae25b', 177, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:50:54', '2024-01-09 11:50:54', '2025-01-09 11:50:54'),
('dc6a49300e114fefea0ffc14638e48b866e7086ee4618e985139de379ab6dbe0778f915ba87cd41d', 78, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 07:36:37', '2023-10-17 07:36:37', '2024-10-17 07:36:37'),
('dd5a917edc4a7cde3af144055b07937e7e8ff32f8b800fbf0c41f9e750934237a675c4edb528ff76', 220, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 12:51:02', '2024-02-29 12:51:02', '2025-03-01 12:51:02'),
('dd717a9dc7d830f6c7571ab4b59b7b047180be1e123f8fefeefa755196fd02f7bc82482a4907ef19', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:38:04', '2023-10-12 09:38:04', '2024-10-12 09:38:04'),
('dd740013d1f5ed23461a652de3fccfa5257ee0b61cae8c4924f15d3cc017f4c792b4a6a346b712f0', 109, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-19 05:46:16', '2023-10-19 05:46:16', '2024-10-19 05:46:16'),
('ddcbc42a0529ed3e368a146aa903573515fecd609c52e65494826e55e37c0fc0bc5455585745fbb6', 81, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 08:03:09', '2023-10-17 08:03:09', '2024-10-17 08:03:09'),
('dde7b4938b43b53665fef3df12f6ac548ca963aabbad6d391240c82acaa5420d9d23cc9cf6e391bb', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-06 04:28:58', '2023-12-06 04:28:58', '2024-12-06 04:28:58'),
('de8c8d8c929e47dad5917c8ddb443498be19a5c994038af5a78edd5c494736290c2666152855accb', 28, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 07:11:33', '2023-09-22 07:11:33', '2024-09-22 12:41:33'),
('dec611f01a4c1d226985e6c46d4a1ae9832737348060922844375815554513691d0fcc7f4b48088c', 92, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 09:50:57', '2023-10-12 09:50:57', '2024-10-12 09:50:57'),
('dec70ae54b448b9723ddc167cd63e92767c3120153d610c6d2442796a773399723dc01782564d753', 52, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 00:03:36', '2023-10-03 00:03:36', '2024-10-03 05:33:36'),
('df191df8fe67cef3c3e081fee79f16c6540eec4807c452163d5e0d9afbff75f2553726ae87a3acc2', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 11:58:27', '2023-11-22 11:58:27', '2024-11-22 11:58:27'),
('dfbeea43a2fe5be3248a73c5a3d79d357fdc93cb42b3957d65fc1dfd3ee945de3c4d8799367717e7', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 04:44:20', '2023-11-22 04:44:20', '2024-11-22 04:44:20'),
('dfe68e16f14f5fc405e2e41720d87fb43378a8358eead8b00a05a22d3f2c13a8fb273f368fa23a33', 110, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-19 06:31:54', '2023-10-19 06:31:54', '2024-10-19 06:31:54'),
('e029dba0a0f9aa2c5993afb53a20d31e7100f1cb9bd0bd40bee82acdc695903cc22ad7991d8bdc99', 178, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-05 05:59:29', '2024-03-05 05:59:29', '2025-03-05 05:59:29'),
('e04dd146d89f859a8166ccf298bdebac7938204f223497a744b3a2fd460b3c688612ca3dbde45ccb', 180, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-17 06:55:36', '2024-01-17 06:55:36', '2025-01-17 06:55:36'),
('e0cffead1da3acddc0f4052a38f8065e928b07f7b02622b6deba43e4f1123f54c801bf5c8be26b11', 67, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:14:53', '2023-10-11 08:14:53', '2024-10-11 08:14:53'),
('e0d2ab9445aaad320b7e0f0ed3dbc1d71df5c3f32844af9644d21d679ecf26d93949f7c2ff777173', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:47:50', '2024-01-09 11:47:50', '2025-01-09 11:47:50'),
('e194335e79c20c77fa1241a04eacb08dd56476affad6cb142fc3095548885dbb4afb55b94be95d92', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 10:38:42', '2023-10-12 10:38:42', '2024-10-12 10:38:42'),
('e1f7f8c03a473710479847ee8e51bce246de4c629d98c639dfce21c688db8c05c978fcf3cfa68fab', 56, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 01:06:48', '2023-10-03 01:06:48', '2024-10-03 06:36:48'),
('e2144f1112dbf4da2d01052c5eed201467071899c15e87acef5ca85eaf3e16e82e2047165133b776', 259, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-22 11:06:14', '2024-03-22 11:06:14', '2025-03-22 11:06:14'),
('e250e377110067541ed7c3fa239e9ae1246fcc3faa40aa1e0a4335f31c7ecdbab1a8d44dd43a20e5', 70, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:21:11', '2023-10-11 08:21:11', '2024-10-11 08:21:11'),
('e29fd0f34d5ef7f11369dc7ed8036ebc5ca6f1d903ec7d7798708eb408318b89e523b9972787309f', 199, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-29 05:56:19', '2024-02-29 05:56:19', '2025-03-01 05:56:19'),
('e309cb9a54e53469b26f8a103326da0fc85fa527df345f70fd352b9dbf53534d7c366997d272c501', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-09 06:55:44', '2023-11-09 06:55:44', '2024-11-09 06:55:44'),
('e38628f23a2c628a3627dc833f933dddb3efb112bfece51a232822487926237c99fa2174ab116908', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:20:17', '2023-10-11 05:20:17', '2024-10-11 05:20:17'),
('e397ba8e1ae16d899fb81fbf417224688427fe02146091d8ba8378a03b4a12bc352a4a01615b29e8', 40, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-27 03:52:25', '2023-09-27 03:52:25', '2024-09-27 09:22:25'),
('e55343d58de450b93c74cc09395d1bfbe00f876dc90f9fc34b093151b0eb7edf2ab2f9a6d5e9bbaa', 269, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-01 15:28:20', '2024-04-01 15:28:20', '2025-04-01 15:28:20'),
('e6085e8307a9723fecd5e71202300192c2d723660a8cc90d8bda9dfd9e49530597ae797b17c6d1db', 285, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 12:57:40', '2024-04-02 12:57:40', '2025-04-02 12:57:40'),
('e67da1088d256b25352b5739029571f27602c0f18aa162a2ca233b1b77947742415fe4f0389a9367', 38, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-27 03:24:41', '2023-09-27 03:24:41', '2024-09-27 08:54:41'),
('e69614bbb8af7665710d8e2ae51aa1cd49b7d822780083d2693e02508bf7b9485f8960e138fd2bf1', 25, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-22 03:37:09', '2023-09-22 03:37:09', '2024-09-22 09:07:09'),
('e6de263635c6456b5a2a6e2ed135dc60d56ff07de662d511f305abe21fe1efbe7b6798bc667ada84', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:50:17', '2023-10-11 05:50:17', '2024-10-11 05:50:17'),
('e6e1a071326e0fb42dcd3bdc1b352c3b0809bfaf671782222ee651ade449bf864c7b25a5cc6049ed', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:47:18', '2023-10-11 05:47:18', '2024-10-11 05:47:18'),
('e75cdafec03ca3fed5b3c36dcfad75881318b5971504f752d0d61e0b163ac03f3b4b64ef1c5573bb', 116, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-21 09:18:02', '2023-10-21 09:18:02', '2024-10-21 09:18:02'),
('e788fd21a9fad630049c72eef981be2045fb4a812223d9ae972057f4ffa97d943f84d898962205ec', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 12:10:45', '2023-11-22 12:10:45', '2024-11-22 12:10:45'),
('e7cd4e8e01c666388b77b460e9e408832294aae95b1ab90ce7c4d2b283635d6fee0eecdb820ba628', 250, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 05:59:49', '2024-04-02 05:59:49', '2025-04-02 05:59:49'),
('e7dc6d4308f8a0741930bc83f7bd424c66051edc4a605fadf587b756311ff5d8561fde9469c9ebd0', 176, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-06 11:40:17', '2024-02-06 11:40:17', '2025-02-06 11:40:17'),
('e8439967e180326e89da66a1c6387487758f627a30ae2450067a100a2b923207c2e8906be6efad3f', 111, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 06:43:12', '2023-10-20 06:43:12', '2024-10-20 06:43:12'),
('e85712a28fb33d3b2641bf71c7f4b03085aa3078a3ad3d0678a0852c1bc181800777ee982b2f5563', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 07:59:29', '2023-10-12 07:59:29', '2024-10-12 07:59:29'),
('e86d348580ed1e66940493422197dde36e78ecf8abe45ee6759aba3c77c1d62a4826421e865edcb9', 53, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-03 00:15:44', '2023-10-03 00:15:44', '2024-10-03 05:45:44'),
('e88846d3b322878fa28fa00ad53446b9596c2108b7cb99e4b47e8daf7dae4f1c9553647a241cf56c', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:30:47', '2023-10-06 06:30:47', '2024-10-06 06:30:47'),
('ea0890232ba4ee531ad3c296a4defbf3c3adcf4f8268dbc56b63317495fc5fee525fff358ea4456c', 113, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-21 07:17:26', '2023-10-21 07:17:26', '2024-10-21 07:17:26'),
('ea3d369bbc3c3d368c90a1dabc75bc6940a37a3389b5b833e21088858b2f7332d412a1cca55f4ded', 288, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-03 11:34:52', '2024-04-03 11:34:52', '2025-04-03 11:34:52'),
('ea8fa92116d5517f4efe798611cf9387b3efb3968bfa7a43fd7d4deb106bbc574aa48916ce9ff522', 61, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-09 08:42:06', '2023-10-09 08:42:06', '2024-10-09 08:42:06'),
('eab1ca1ac28714ae014097cc2bfaccd1646cae73975c168ec1dbaea1d84c0901806b4228dd3e47dc', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 05:21:58', '2023-10-12 05:21:58', '2024-10-12 05:21:58'),
('eb70be5b8e4f1ccd3f1216d4b777e29ed84c714b1c6230020f79a38102161b7b5779bb5b5684575c', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-08 07:11:40', '2023-10-08 07:11:40', '2024-10-08 07:11:40'),
('eb941e0c6cb267d8102ed267a3b8532436356127091772b77acbe51e44880be0b0339955d3f94ae8', 181, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-03 06:05:50', '2024-02-03 06:05:50', '2025-02-03 06:05:50'),
('ebd89b0f101632b4a09d9da890ad7d6bf68c8df10f0b685f1f97bd6c499edf6d0cc8901630ef8b65', 274, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 05:27:13', '2024-04-02 05:27:13', '2025-04-02 05:27:13'),
('ec21e1fb85cb11c1af8734aac184d1b893e7d230efcb003216afa6549ca02843b776446ffb028de3', 80, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 06:46:30', '2023-10-12 06:46:30', '2024-10-12 06:46:30'),
('ec38616471b374ef2507224b92bab8d8a8eb34d72799e5e880b6b14b31058cdd0dc4101fb224db6b', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:34:32', '2023-10-11 05:34:32', '2024-10-11 05:34:32'),
('ec7c85d1130cbe33909e12c7692f441f8fb0427952f80056f32ae4773e95189b949103c77a25692f', 79, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 09:47:47', '2023-10-14 09:47:47', '2024-10-14 09:47:47'),
('ecc6c4d32bbb1236e6353352acbbc8a66668a707a9fae24eed456699bbe3527c18c580e777912b71', 121, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:34:54', '2023-10-23 13:34:54', '2024-10-23 13:34:54'),
('ed2373994abc831aae0db4503e752a56e2222046f07f81532aff4bee915602c956e689f91434bf51', 104, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-17 10:03:49', '2023-10-17 10:03:49', '2024-10-17 10:03:49'),
('ed497b445e9845b1e143bfe3fc28bdb1177902775f62b10d978333b9402a16ee5317a19ebaf7d843', 276, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 06:44:33', '2024-04-02 06:44:33', '2025-04-02 06:44:33'),
('ed8bd03d6f6da3ed371a20d9a461981fd1e33a0cdd240e19ceabacba7f4dc08f1be7555f5a994dbc', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 12:17:38', '2023-11-22 12:17:38', '2024-11-22 12:17:38'),
('ed8e4b166f351d0e106fa773560ae157a3af55ed31dc0e6d59a73eaea669e9187c3caa689df2ee13', 105, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-18 16:24:03', '2023-10-18 16:24:03', '2024-10-18 16:24:03'),
('edbe5e9bceaff520b16cb910866c3ef1b4ae8efa6e5ba3c7fdf6bf75bdeb3077e0bdc48a8c37ef74', 78, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-13 05:00:53', '2023-10-13 05:00:53', '2024-10-13 05:00:53'),
('eddb3bd6d40560cfceb8dc68b3ee5e2e1e85dcbbe4c192046f87fde8b5c17ae12b556e1f38e54cce', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-22 05:19:39', '2023-11-22 05:19:39', '2024-11-22 05:19:39'),
('ee539a5fd83e36feed4c3543c72843406c83dc9c63e17fe3e2f0e13abb558c1cc0b4c41546beeef0', 115, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-21 09:05:44', '2023-10-21 09:05:44', '2024-10-21 09:05:44'),
('ee6d4f7ea9bc37ce5a3a0042c6ce1698824ba2d68ad8197b36a9de75b71acf69f4e99920ebb7bbce', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-02 05:47:13', '2023-10-02 05:47:13', '2024-10-02 11:17:13'),
('ee98e06e3646ca91f5a7c7c80c9da89d9a4896a6c455720dad7d3e7bcd73192fcd7ef5d998d9f6a7', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 08:19:01', '2023-10-07 08:19:01', '2024-10-07 08:19:01'),
('eec5210db0b363578d49443485791a6080088489886a7dc0d7c2c4723b8523a9aaec2d8916a7b685', 150, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-04 13:14:02', '2023-12-04 13:14:02', '2024-12-04 13:14:02'),
('eef842d54b0c45b07fbcd06485492273a3cbdfb6b5cebe9167e16b979ffc39efe682861bd77122f9', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:27:36', '2023-10-07 07:27:36', '2024-10-07 07:27:36'),
('ef1b75a9ea6ea4897e4a02782aa02e0efd3cc17f8b3e1067c6a6b7b543e6d540173935fa3b8c60ce', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-09 05:14:28', '2023-11-09 05:14:28', '2024-11-09 05:14:28'),
('ef6ce8ce7a1dff7cd1e38505d5fa1eed9abfb13a60ef2701ed45724ae0c5cad7da0197e4f4dd965c', 48, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 05:52:15', '2023-10-07 05:52:15', '2024-10-07 05:52:15'),
('ef74691280b9147cbc0589e5c4e3899b832f54a4ec95680f6e48025ec5409004be8f26929fafca79', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 08:36:53', '2023-10-11 08:36:53', '2024-10-11 08:36:53'),
('efaf3597ac976bfc688f189d69eb37ce33a1becbbdf66359f528b2f906b902dc37af4a8f9909f3b9', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:37:37', '2023-10-06 06:37:37', '2024-10-06 06:37:37'),
('efff3e24ef17fc2539a3b2f0eb8963b9b547631c2d13333978c3ab2f9360be9bbb4ade7a28c6482e', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-20 11:09:50', '2023-11-20 11:09:50', '2024-11-20 11:09:50'),
('f0453f234354d1d6c8e6e9b56b0eaedee038121da580f20bd8ba3ff7f8ed65d53d556bae7a19c793', 129, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-25 09:05:15', '2024-01-25 09:05:15', '2025-01-25 09:05:15'),
('f160252ce656ad7afda75e38afa1e6f2128bdbb285db517e322c7fba15f497ae86f4b2123d2e20fd', 102, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-18 16:23:45', '2023-10-18 16:23:45', '2024-10-18 16:23:45'),
('f28ca7504ef3704997ca942be688cbbb69f9a72ecbf17f831ccf0017e1f50930dc3da73882bd9333', 77, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 05:22:17', '2023-10-14 05:22:17', '2024-10-14 05:22:17'),
('f2e38c1f53b5c5772391735aa13927e69ccbd9480e85defdd16ccfa66df687d65387f670512908a2', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:24:57', '2023-10-23 13:24:57', '2024-10-23 13:24:57'),
('f30162823b30dd083da9de2109af7c8594b36b6b7a48b9e27faf0819ee7359f07510b8767ad58345', 291, 5, 'Laravel8PassportAuth', '[]', 0, '2024-05-17 11:47:11', '2024-05-17 11:47:11', '2025-05-17 11:47:11'),
('f33827bf1f4395cbbfc1bf9dd58ffe652e596733307cafa6eaf1716fa18d44cd4c74c60163a21c3c', 179, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 12:37:46', '2024-01-09 12:37:47', '2025-01-09 12:37:46'),
('f3539a38d2beded9a141f9353f584ffa56c301a74c9402a1b233168c9a54b1e2346651c843b39cd6', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 06:52:40', '2023-10-11 06:52:40', '2024-10-11 06:52:40'),
('f3cb880e655df1dc9e37c216ba022ec4273025a9a9d312bd7b3f99de66f1572c539d1f91420137a3', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-12 07:01:21', '2023-10-12 07:01:21', '2024-10-12 07:01:21'),
('f3f869dd43e3c416bc55c5ef53cdd4fb2ff60fdfa9f06e954186d87a340a49edf8030cd1bc860c42', 266, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-29 05:11:53', '2024-03-29 05:11:53', '2025-03-29 05:11:53'),
('f41003e810cc8bad55593312994bbce3ed51d20d38160bb736fbe114a236e856efa86c4b07805c15', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:22:51', '2023-10-23 13:22:51', '2024-10-23 13:22:51'),
('f59bac98c844a93ce3b8ba4acb861a7747ed05b189353434f0dbcd54e23e26b7f131e913be186642', 251, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-04 12:08:30', '2024-03-04 12:08:30', '2025-03-04 12:08:30'),
('f60e95dd2871a671e968aa18464cb1ad6d9287d398cf70fe1543ff6040971aafa6f1c92719991ffd', 278, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-02 08:47:22', '2024-04-02 08:47:22', '2025-04-02 08:47:22'),
('f74a178c142581f1ac4ebd7f710d63a5584d711cfb261ab4a7756184afa8c1b848eb82feea1e42db', 42, 5, 'Laravel8PassportAuth', '[]', 0, '2023-09-28 07:42:22', '2023-09-28 07:42:22', '2024-09-28 13:12:22'),
('f7564fd609db958ade95c9b2884c4779786707ef1e540c7cc9daf8aafd6ba5eac35f264b28554051', 140, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-20 11:08:08', '2023-11-20 11:08:08', '2024-11-20 11:08:08'),
('f79281bfaef1e84f173a4a3604c323b41b847c6fb250b010fdba55a6f988e24a7c88a73ade665c45', 76, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-14 05:11:22', '2023-10-14 05:11:22', '2024-10-14 05:11:22'),
('f808a6b374c10d845b14db9632c7b7dbe28f0bfd8445b119718d5edb5d70b01c02408e94f7e3523e', 247, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-06 08:08:43', '2024-03-06 08:08:43', '2025-03-06 08:08:43'),
('f90eff3a1e83e958ccfb6b1dc89a21753655fcc0866471d5c8acd087cf813dc70f7f68104e40df50', 66, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-11 05:55:51', '2023-10-11 05:55:51', '2024-10-11 05:55:51'),
('f94cd2e959727063a609dc27244f7556063d96d752038cdf3a9e469bb31619fcd552b218d63aaed1', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:33:42', '2024-01-09 11:33:42', '2025-01-09 11:33:42'),
('f9f86e6b03c3f977fbf9400dc371a9d2129f5f60a2e03be56bc358c2dd438260ffa23f8f56807c9e', 256, 5, 'Laravel8PassportAuth', '[]', 0, '2024-03-07 08:42:39', '2024-03-07 08:42:39', '2025-03-07 08:42:39'),
('fa2b69942af0603b92efd7c9e529b88e6454999db073c63309478f5812b3e4e20b9342862bea942a', 114, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-06 07:51:15', '2023-11-06 07:51:15', '2024-11-06 07:51:15'),
('fac1c691a253084f234a4ed5137d777806a34045c464fa9f9f0b6cab2ccaec4fc24071b5f3865e48', 82, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-20 05:38:10', '2023-10-20 05:38:10', '2024-10-20 05:38:10'),
('fb49695bee4f45d23c1e3d83ba908e789c4427a96c7bdc77c7ef389b293385e9df2a707c958813f2', 176, 5, 'Laravel8PassportAuth', '[]', 0, '2024-02-20 08:19:39', '2024-02-20 08:19:39', '2025-02-20 08:19:39'),
('fbb2c3e61ef7ce718ee5231f25067f614efdf9012afece5af1214733421e466321e59f9590859eb8', 170, 5, 'Laravel8PassportAuth', '[]', 0, '2023-12-23 12:15:50', '2023-12-23 12:15:50', '2024-12-23 12:15:50'),
('fc0f648771671f0a994fe267a0678d98c55d89053e1165cee7beb89c58e6720360118a748a273280', 296, 5, 'Laravel8PassportAuth', '[]', 0, '2024-04-08 06:01:33', '2024-04-08 06:01:33', '2025-04-08 06:01:33'),
('fcde50d0d2b3256f7077e43a39b2f299d8b9dd5ee2ea4a1ffbdcbb4d41e667d0588188a63f68ac70', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-07 07:38:54', '2023-10-07 07:38:55', '2024-10-07 07:38:54'),
('fd1f1b91aed40bf1500d08357e945893b1583f04fe6c91e7e1f2b596dab45fd0268e660ce30684c5', 138, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-18 13:16:23', '2023-11-18 13:16:23', '2024-11-18 13:16:23'),
('fe60d307ce893563ed7d7d8e21472fe5c2ee62f2a52d131aee30273f0a0ae4af87a5116d38624c4d', 128, 5, 'Laravel8PassportAuth', '[]', 0, '2023-11-21 15:02:56', '2023-11-21 15:02:56', '2024-11-21 15:02:56'),
('fec2c298d1e010712738655518eb215714aec4fcb423eaa7675f97991556349621b0b22335c979f5', 167, 5, 'Laravel8PassportAuth', '[]', 0, '2024-01-09 11:47:48', '2024-01-09 11:47:48', '2025-01-09 11:47:48'),
('ff26cca412ef9f1c41d272b7e9492ec10ddada3f7b5d4ebeac752c14adb1e87c8cd056bba2d69029', 127, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-25 10:02:10', '2023-10-25 10:02:10', '2024-10-25 10:02:10'),
('ff5cfa9afd0c814338ceb7858e5cdde186094d208e42908369ef536b2742f8d82de146da5c6d7f01', 33, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-06 06:36:03', '2023-10-06 06:36:03', '2024-10-06 06:36:03'),
('ff9f73dd38e44e73c23e9a89a90a204ce0710901733e193e879103401f3f6d1662415adf040820c4', 291, 5, 'Laravel8PassportAuth', '[]', 0, '2024-05-17 11:52:52', '2024-05-17 11:52:52', '2025-05-17 11:52:52'),
('ffb405f794468070c586d7d8c077b218d3f3067372eef22034655a9e94c3798793d20f0c30fcad03', 117, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-22 04:00:17', '2023-10-22 04:00:17', '2024-10-22 04:00:17'),
('ffb7f41fce4f17008f4c9d5bfb391f3762b15f8cdcd7d3b53f9bfcedc07bbb5adf8ba968a32aaa81', 119, 5, 'Laravel8PassportAuth', '[]', 0, '2023-10-23 13:26:18', '2023-10-23 13:26:18', '2024-10-23 13:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'EPxSSV36LHCmRceejFEBxR68rpJVzmk6PbgdqYGR', NULL, 'http://localhost', 1, 0, 0, '2023-09-14 04:00:51', '2023-09-14 04:00:51'),
(2, NULL, 'Laravel Password Grant Client', '7vbhLPqoawi6ilJtFEyuKVbdTJk3FD1NzDrVsYTt', 'users', 'http://localhost', 0, 1, 0, '2023-09-14 04:00:51', '2023-09-14 04:00:51'),
(3, NULL, 'Laravel Personal Access Client', 'PaWyEjb9UdyhKTH1jRqqG09IW6kiBx37pBMoqGYs', NULL, 'http://localhost', 1, 0, 0, '2023-09-14 04:01:25', '2023-09-14 04:01:25'),
(4, NULL, 'Laravel Password Grant Client', 'WQ32N9QA6XP0qkhYPeQ51Bs5YiUFcgGg9jIJsqNr', 'users', 'http://localhost', 0, 1, 0, '2023-09-14 04:01:25', '2023-09-14 04:01:25'),
(5, NULL, 'user', 'prNMq1G3tnWJtEi4p7ps1edHE6CCWL41AZ2jaXwl', NULL, 'http://localhost', 1, 0, 0, '2023-09-22 02:59:22', '2023-09-22 02:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-09-14 04:00:51', '2023-09-14 04:00:51'),
(2, 3, '2023-09-14 04:01:25', '2023-09-14 04:01:25'),
(3, 5, '2023-09-22 02:59:22', '2023-09-22 02:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` int(11) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp_verifications`
--

INSERT INTO `otp_verifications` (`id`, `mobile_number`, `otp`, `created_at`, `updated_at`) VALUES
(59, 9352398200, '668196', '2024-04-01 15:41:47', '2024-04-01 15:41:47'),
(80, 8209953693, '724077', '2024-04-02 08:02:09', '2024-04-02 08:02:09'),
(120, 7023524371, '390816', '2024-04-03 06:39:22', '2024-04-03 06:39:22'),
(126, 7357166546, '744551', '2024-04-03 07:29:51', '2024-04-03 07:29:51'),
(137, 9793570333, '994661', '2024-04-03 11:18:41', '2024-04-03 11:18:41'),
(149, 7878237510, '207807', '2024-04-05 03:11:25', '2024-04-05 03:11:25'),
(154, 8441099365, '123456', '2024-04-05 03:18:53', '2024-04-05 03:18:53'),
(155, 9636253338, '630928', '2024-04-07 05:35:29', '2024-04-07 05:35:29'),
(162, 7976352482, '234957', '2024-04-08 06:01:05', '2024-04-08 06:01:05'),
(172, 9783570333, '893562', '2024-05-17 11:56:01', '2024-05-17 11:56:01'),
(173, 9521145057, '897914', '2024-05-24 07:39:52', '2024-05-24 07:39:52'),
(175, 7014660763, '123456', '2024-06-12 06:56:20', '2024-06-12 06:56:20'),
(176, 9351707716, '560407', '2024-06-14 05:27:33', '2024-06-14 05:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `parent_bookings`
--

CREATE TABLE `parent_bookings` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `booking_date` date NOT NULL,
  `property_id` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_bookings`
--

INSERT INTO `parent_bookings` (`id`, `booking_id`, `booking_date`, `property_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-03-27', 109, '1', '2024-03-24 13:03:31', '2024-03-24 13:03:31'),
(3, 3, '2024-03-29', 110, '1', '2024-03-28 06:10:48', '2024-03-28 06:10:48'),
(4, 3, '2024-03-30', 110, '1', '2024-03-28 06:10:48', '2024-03-28 06:10:48'),
(9, 6, '2024-03-27', 109, '1', '2024-04-01 15:06:21', '2024-04-01 15:06:21'),
(13, 8, '2024-04-25', 131, '1', '2024-04-02 11:16:21', '2024-04-02 11:16:21'),
(15, 9, '2024-04-21', 139, '1', '2024-04-02 12:43:53', '2024-04-02 12:43:53'),
(17, 11, '2024-05-10', 121, '1', '2024-04-03 06:37:19', '2024-04-03 06:37:19'),
(18, 12, '2024-04-05', 142, '1', '2024-04-03 07:04:31', '2024-04-03 07:04:31'),
(19, 13, '2024-04-06', 142, '1', '2024-04-03 07:05:12', '2024-04-03 07:05:12'),
(20, 13, '2024-04-07', 142, '1', '2024-04-03 07:05:12', '2024-04-03 07:05:12'),
(21, 14, '2024-05-28', 121, '1', '2024-04-03 07:14:38', '2024-04-03 07:14:38'),
(22, 15, '2024-05-13', 121, '1', '2024-04-03 07:17:55', '2024-04-03 07:17:55'),
(23, 15, '2024-05-14', 121, '1', '2024-04-03 07:17:55', '2024-04-03 07:17:55'),
(24, 15, '2024-05-15', 121, '1', '2024-04-03 07:17:55', '2024-04-03 07:17:55'),
(25, 16, '2024-04-06', 145, '1', '2024-04-03 11:35:41', '2024-04-03 11:35:41'),
(26, 16, '2024-04-07', 145, '1', '2024-04-03 11:35:41', '2024-04-03 11:35:41'),
(27, 16, '2024-04-08', 145, '1', '2024-04-03 11:35:41', '2024-04-03 11:35:41'),
(28, 17, '2024-04-06', 145, '1', '2024-04-03 11:47:37', '2024-04-03 11:47:37'),
(29, 17, '2024-04-07', 145, '1', '2024-04-03 11:47:37', '2024-04-03 11:47:37'),
(30, 18, '2024-04-26', 146, '1', '2024-04-05 03:16:05', '2024-04-05 03:16:05'),
(31, 18, '2024-04-27', 146, '1', '2024-04-05 03:16:05', '2024-04-05 03:16:05'),
(32, 19, '2024-04-29', 146, '1', '2024-04-05 03:16:34', '2024-04-05 03:16:34'),
(33, 19, '2024-04-30', 146, '1', '2024-04-05 03:16:34', '2024-04-05 03:16:34'),
(34, 20, '2024-04-11', 147, '1', '2024-04-08 06:08:03', '2024-04-08 06:08:03'),
(35, 20, '2024-04-13', 147, '1', '2024-04-08 06:08:03', '2024-04-08 06:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `email` text DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `amenity` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `landmark` text DEFAULT NULL,
  `vanue_type` int(11) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `food_type` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `dining_capacity` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `featured` enum('1','0') NOT NULL DEFAULT '0',
  `latitude` text DEFAULT NULL,
  `longitude` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `whatshapp_number` bigint(20) DEFAULT NULL,
  `ac_room` varchar(255) DEFAULT NULL,
  `non_ac_room` varchar(255) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `title`, `email`, `mobile_number`, `capacity`, `price`, `amenity`, `location`, `address`, `city`, `landmark`, `vanue_type`, `room`, `food_type`, `description`, `dining_capacity`, `pincode`, `state`, `rating`, `featured`, `latitude`, `longitude`, `user_id`, `whatshapp_number`, `ac_room`, `non_ac_room`, `added_by`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(51, 'Siyaram Marriage Garden', NULL, 8209953693, 150, NULL, NULL, 'jaipu', '200ft By Pass, Jan Path, near DG Farm, Jhotwara, Jaipur, Rajasthan 302012, India', 'Jaipur', 'Khirni phatak', 2, NULL, 'Veg', NULL, '2500', 302012, 'Rajasthan', NULL, '1', '26.9394573', '75.73062019999999', 170, 8209953693, '10', '0', NULL, 'siyaram-marriage-garden', '1', '2023-12-25 11:00:53', '2023-12-25 11:02:12'),
(52, 'The Grand Mantaram', NULL, 9351558929, 700, NULL, NULL, 'jaipu', 'Aara machine Maan baag jaisingh purae Khor, XP3J+2HQ, Pratap Nagar, Ashok Nagar, Jhotwara, Jaipur, Rajasthan 302032, India', 'Jaipur', 'Near kalwar road', 4, NULL, 'Veg', NULL, '1000', 302032, 'Rajasthan', NULL, '0', '26.9525756', '75.7314846', 174, 9351558929, '10', '0', NULL, 'the-grand-mantaram', '1', '2023-12-26 10:58:16', '2023-12-26 11:05:54'),
(121, 'Shri Ram', NULL, 9352398200, 100, NULL, NULL, 'jaipu', 'D-2, Kardhani Govindpura, Govindpura, Jhotwara, Jaipur, Rajasthan 302012, India', 'Jaipur', NULL, 2, NULL, 'Both', NULL, '200', 302012, 'Rajasthan', NULL, '1', '26.9559388', '75.7096019', 270, 9352398200, '0', '0', NULL, 'shri-ram', '1', '2024-04-01 15:53:51', '2024-04-03 06:29:41'),
(147, 'Calender Test', NULL, 9638527415, 53, NULL, NULL, 'jaipu', '23, Central Spine Rd, Sector 2, Central Spine, Vidyadhar Nagar, Jaipur, Rajasthan 302039, India', 'Jaipur', 'Hill', 4, NULL, 'Both', NULL, '63', 302039, 'Rajasthan', NULL, '0', '26.9571502', '75.77811609999999', 296, 8965237412, '50', '20', NULL, 'calender-test', '1', '2024-04-08 06:06:22', '2024-04-08 06:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `ratting` double NOT NULL,
  `feedback` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `property_id`, `ratting`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 131, 41, 3, 'Testing', '2023-10-21 08:38:37', '2023-10-21 08:38:37'),
(2, 131, 41, 4, 'Test', '2023-10-21 08:40:46', '2023-10-21 08:40:46'),
(3, 116, 3, 3, 'Test', '2023-10-21 09:26:30', '2023-10-21 09:26:30'),
(4, 116, 5, 5, 'Test', '2023-10-21 09:27:23', '2023-10-21 09:27:23'),
(5, 116, 4, 5, 'Test', '2023-10-21 09:27:49', '2023-10-21 09:27:49'),
(6, 114, 32, 3, 'Dgg', '2023-11-08 10:44:34', '2023-11-08 10:44:34'),
(7, 114, 39, 5, 'Test', '2023-11-22 06:48:52', '2023-11-22 06:48:52'),
(8, 114, 43, 2, 'Hi', '2023-12-05 12:01:41', '2023-12-05 12:01:41'),
(9, 129, 44, 5, 'Test', '2023-12-21 03:46:58', '2023-12-21 03:46:58'),
(10, 174, 52, 4, 'Excellent venue', '2023-12-26 11:07:15', '2023-12-26 11:07:15'),
(11, 176, 56, 4, 'Good', '2023-12-29 08:24:49', '2023-12-29 08:24:49'),
(12, 129, 50, 3, 'Test', '2024-01-04 05:12:25', '2024-01-04 05:12:25'),
(13, 129, 52, 3, 'Test', '2024-03-28 10:36:32', '2024-03-28 10:36:37'),
(14, 129, 109, 4, 'Test', '2024-03-28 10:36:59', '2024-03-28 10:36:59'),
(15, 129, 110, 2, 'Tes', '2024-03-28 10:46:05', '2024-03-28 10:46:05'),
(16, 280, 146, 5, 'Test', '2024-04-05 03:10:38', '2024-04-05 03:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(500) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` text DEFAULT NULL,
  `logo_header` text DEFAULT NULL,
  `logo_footer` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `fb_link` varchar(500) DEFAULT NULL,
  `insta_link` varchar(500) DEFAULT NULL,
  `linked_link` varchar(500) DEFAULT NULL,
  `youtube_link` varchar(500) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `meta_title`, `meta_keyword`, `meta_description`, `meta_image`, `logo_header`, `logo_footer`, `favicon`, `email`, `mobile`, `address`, `fb_link`, `insta_link`, `linked_link`, `youtube_link`, `radius`, `created_at`, `updated_at`) VALUES
(1, 'Good Venue', 'Good Venue', 'Good Venue', 'Good Venue', '1699450053654b8cc59026b.png', '1700298994655880f2401b6.png', '1699450053654b8cc59014d.png', '1701520608656b24e08f7ab.png', 'GoodVenue@gmail.com', '+91 70146 60763', 'Rajasthan, India', 'https://www.facebook.com/thewebpino/', 'https://www.instagram.com/thewebpino/', 'https://in.linkedin.com/company/webpino', NULL, 50, '2022-02-09 01:40:29', '2024-03-28 08:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `spirituals`
--

CREATE TABLE `spirituals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_order` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '0 Inactive 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spirituals`
--

INSERT INTO `spirituals` (`id`, `short_order`, `image`, `title`, `description`, `button_text`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'spiritual/1757595615_7037.png', 'Main Spiritual Category', 'Main Spiritual Category', 'Spiritual', '1', '2025-09-11 07:30:15', '2025-09-11 07:30:15'),
(2, '', 'spiritual/1757595637_5215.png', 'Second Spiritual  Category', 'Second Spiritual  Category', 'Spiritual', '1', '2025-09-11 07:30:37', '2025-09-11 07:30:37'),
(3, '', 'spiritual/1757595656_6849.png', 'Third Spiritual Category', 'Third Spiritual Category', 'Spiritual', '1', '2025-09-11 07:30:56', '2025-09-11 07:30:56'),
(4, '', 'spiritual/1757595672_9877.png', 'Fourth Spiritual Category', 'Fourth Spiritual Category', 'Spiritual', '1', '2025-09-11 07:31:12', '2025-09-11 07:31:12'),
(5, '', 'spiritual/1757595701_2975.png', 'Fivth Spiritual Category', 'Fivth Spiritual Category', 'Spiritual', '1', '2025-09-11 07:31:41', '2025-09-11 07:31:41'),
(6, '', 'spiritual/1757595724_6501.png', 'Sixth Spiritual  Category', 'Sixth Spiritual  Category', 'Spiritual', '1', '2025-09-11 07:32:04', '2025-09-11 07:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `spiritual_chailderncategorys`
--

CREATE TABLE `spiritual_chailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `spiritual_subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spiritual_minichailderncategorys`
--

CREATE TABLE `spiritual_minichailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `spiritual_chaildrencategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spiritual_subcategorys`
--

CREATE TABLE `spiritual_subcategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `spiritual_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree_installations`
--

CREATE TABLE `tree_installations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_order` int(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '0 Inactive 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tree_installations`
--

INSERT INTO `tree_installations` (`id`, `short_order`, `image`, `title`, `description`, `button_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'treeinstallations/1757594807_1257.jpg', 'Tree Installation First', 'Tree Installation First', 'Installation', '1', '2025-09-11 07:16:47', '2025-09-11 07:16:47'),
(2, 1, 'treeinstallations/1757594822_6271.jpg', 'Tree Installation  Second', 'Tree Installation  Second', 'Installation', '1', '2025-09-11 07:17:02', '2025-09-11 07:17:02'),
(3, 3, 'treeinstallations/1757594837_2453.jpg', 'Tree Installation Third', 'Tree Installation Third', 'Installation', '1', '2025-09-11 07:17:17', '2025-09-11 07:17:17'),
(4, 4, 'treeinstallations/1757594870_9782.jpg', 'Tree Installation  Fourth', 'Tree Installation  Fourth', 'Installation', '1', '2025-09-11 07:17:50', '2025-09-11 07:17:50'),
(5, 5, 'treeinstallations/1757594889_5541.jpg', 'Tree Installation  Fivth', 'Tree Installation  Fivth', 'Installation', '1', '2025-09-11 07:18:09', '2025-09-11 07:18:09'),
(6, 6, 'treeinstallations/1757594903_9201.jpg', 'Tree Installation  Sixth', 'Tree Installation  Sixth', 'Installation', '1', '2025-09-11 07:18:23', '2025-09-11 07:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `tree_installation_chailderncategorys`
--

CREATE TABLE `tree_installation_chailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tree_installation_subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree_installation_minichailderncategorys`
--

CREATE TABLE `tree_installation_minichailderncategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tree_installation_chaildrencategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree_installation_subcategorys`
--

CREATE TABLE `tree_installation_subcategorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tree_installation_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `role` int(11) NOT NULL DEFAULT 0,
  `assign_user` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `is_verified` int(11) DEFAULT 1,
  `device_user_token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile_number`, `status`, `role`, `assign_user`, `image`, `is_verified`, `device_user_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'webpino', 'admin@gmail.com', '$2y$10$/wVDBdmvawSsZ1vIa3MAkOLSVFvOOBTmgRtZqPH/A0pPvLB5iIQcu', 1234567890, '1', 1, 0, NULL, 1, NULL, '2023-09-08 08:09:51', '2023-09-11 07:41:05', NULL),
(114, 'Aditya Sharma', NULL, '$2y$10$EIweNO1yuxdG4GK9XsKK6.mM.tZruYe5WmXM6NtAS3ErZ9X0RW8Cq', 9950726060, '1', 2, NULL, 'gallery-1700114105.jpg', 1, 'cVQhLZ-2QFSPSbmmRnH2b-:APA91bGATh9VBgRzfHDuqtF_GlgPpPOmCUvHeE0JGv_G23nT8G2PfDZsoyIVbyzrHhb11xhgGsxSBf6_b4Ug_z0-Klf0iWfhfz-wU786NLqXJnhfJqqVjIvP6NyTlHH0eQSQUZnZ-LM-', '2023-10-21 08:29:13', '2023-12-15 07:36:26', NULL),
(115, 'Harshit ji', NULL, '$2y$10$EIweNO1yuxdG4GK9XsKK6.mM.tZruYe5WmXM6NtAS3ErZ9X0RW8Cq', 9680046983, '1', 3, 114, NULL, 1, 'exwWgWR8SauWW0i6TpkeSc:APA91bELNK1Np66OEXQ0K1UTihZUhJWhnCh7J2ZHjeJPxx-n-r5P-ULptXI0AMFLJE0PsPxjIauPZOLKZHjsN1Zmxla0_8WZtmvgXbwaDLsPRG6JSi07YCTLkmtjvKlyVdHfeDQ8SHkx', '2023-10-21 09:03:49', '2023-11-08 11:33:58', NULL),
(116, 'Vinod', 'Vinod@gmail.com', '$2y$10$D/7tZMICOLCz.BS2/R6DCOdojxzVaXFJlpKdOyqTaly2KMUCL5inS', 7023524371, '1', 3, 114, 'gallery-1697880279.jpg', 1, 'd-ywD5kjSdqlTVojt56LWf:APA91bGBeWbAHv21U8RGNIkv1msLnTLiiNo0KbRbcMfC5W5gaRjjZHVxQAbWuaPf5L7q5EtaSegC77UgpqzyL7VrFLVMb0IgcrDFt85kp2HxJjmxNc_glhYC4UWgkB79j69VWa8FvNJ5', '2023-10-21 09:16:03', '2023-10-30 13:45:48', NULL),
(118, NULL, NULL, '$2y$10$NmG.y9X80ZLGRUHTvqQKGOxD4jwFF9YzbJy3Ioef9HODb5HEGiIUK', 7014660777, '1', 0, NULL, NULL, 0, 'ddfnbWXIS-uBmhN6npCQf-:APA91bGw8CyXUeRzYskRyEctfvV2k3cTwHuBkAO6dQnNXXpAgf4apeUkFkcUz4hOXXGp33ffrfQjlstCVNw2VelLOuWkNgiOvodcWIMhpqLWdEHCU9AUyo5DVGsoQVMXkeqy1Q3hpD9L', '2023-10-22 07:47:28', '2023-11-22 06:48:18', NULL),
(119, NULL, NULL, '$2y$10$796XRveUAtQOJq7p5HoGKO/6DYB096JacaR6Kz.DAHgEHN4YBmt6u', 9950728888, '1', 0, NULL, NULL, 0, 'yutfgdsviykujthdfvcyufgdvuiythrdfgs', '2023-10-23 13:22:51', '2023-10-23 13:27:49', NULL),
(120, NULL, NULL, '$2y$10$troRoB1GYqrY3pkFPvcEceN4i7VC7J0Cv6CMaMFB5O6dVdII5.FrG', 9950725555, '1', 0, NULL, NULL, 0, 'yutfgd', '2023-10-23 13:29:32', '2023-10-23 13:32:17', NULL),
(121, NULL, NULL, '$2y$10$79FvV9lPbTWqmsXg5luWm.HtFWoxNDbN.U9Pqdh8m/PAMAJkCZFV6', 9950725511, '1', 0, NULL, NULL, 0, 'yutfgdcdscsdcsdc', '2023-10-23 13:33:21', '2023-10-23 13:34:54', NULL),
(122, NULL, NULL, '$2y$10$WyKX/ZccTDxC7Jk.PQ0c/OfroV5dEBlaV5mtnlAXrhGL02AkDq.ga', 9950725577, '1', 0, NULL, NULL, 0, 'yutfgdcdscsdcsdc', '2023-10-23 13:35:16', '2023-10-23 13:35:55', NULL),
(123, NULL, NULL, '$2y$10$YpZwyHbep2dvo80R2OQKCuNQf4yk3sB50m272SNGM5EtjOfM9iUj.', 9950725544, '1', 0, NULL, NULL, 0, 'yutfgdcdscsdcsdc', '2023-10-23 13:36:14', '2023-10-23 13:36:14', NULL),
(124, NULL, NULL, '$2y$10$julo07ypcvNlFEd.r.xZyupbSSWr9MMgdZduE6n62eUFeJas5TKHy', 9950725533, '1', 0, NULL, NULL, 0, 'yutfgdcdscsdcsdc', '2023-10-23 13:36:43', '2023-10-23 13:39:01', NULL),
(125, NULL, NULL, '$2y$10$qclSJKKywqlopBm6wC2NQOdfUmmTJvCxskCh.//9xf.yyLvKfT4Ei', 9950725521, '1', 0, NULL, NULL, 0, NULL, '2023-10-23 13:40:03', '2023-10-23 13:40:03', NULL),
(126, NULL, NULL, '$2y$10$j0FEXqRgjl.29sz4oFH9eOZGx.VFwERMyPGAb26Z.Jms23cHMZttC', 9950725565, '1', 0, NULL, NULL, 0, 'yutfgdcdscsdcsdc', '2023-10-23 13:41:37', '2023-10-23 13:41:37', NULL),
(127, 'Good Venues122', NULL, '$2y$10$4mV9J3qHYAdg2SurzVB6JeJcMf/8I6Yfut7rfR3LJ92I6/m69ZGVW', 9351707711, '1', 0, NULL, 'gallery-1699092555.jpg', 0, 'dPSx66B0RQGhu8fZBzr5kJ:APA91bGcL6jgaXM6nCuQoUsh1CozDU0S1RwL9ToxwafN2LXDgBQFJc1MJXGzMvaq23B_u4xx1i6djcCLH_J2Y7i7bsO9ToAuJxfAQ6tMwPW4fmhnS_b_ritvc_IsAq-3OgBSYpeElRMp', '2023-10-23 14:54:15', '2023-11-09 05:05:30', NULL),
(128, 'Good Venue User', NULL, '$2y$10$YDj4NThetBq/q0ytDE1ehutuTpG4M.gMVdVPlX8jBHQOzLiPnG6tq', 9351707717, '1', 0, NULL, 'gallery-1699091616.jpg', 0, 'ecVXYvNFTLKw_yXfDAG4-_:APA91bHejXgpkhXzQeKpOYZMZu-ggneVt_hVIng_kKvHpjakRRTCkk7lLfky6qn7odIWplCT-IqsQrhNLLSG2jLE_jmpy9m4RFSMTSvBrlKxaVRUq4gvAkKtJ1d9nGwVgd61_nzFKnCb', '2023-10-24 05:29:59', '2023-11-22 12:18:46', NULL),
(130, NULL, NULL, '$2y$10$X/3eQG8frTNelmYJ6p8xT.dPbkMw80RxtkzaVAFfLTtf7rfw3u.De', 9636258524, '1', 0, NULL, NULL, 0, NULL, '2023-10-25 09:09:26', '2023-10-25 09:09:26', NULL),
(131, 'Good Venue User', 'A@b.v', '$2y$10$ZFD1CmeW7nRUdN5q0FZysuAhyNJ3GTX44Nu0OYlDN6FVn8bfD4fB6', 1134567895, '1', 2, NULL, 'gallery-1699081940.jpg', 1, 'eApkJMpyQamqVKbcaf5WQj:APA91bHosj5uQM5uuRLYh_xupt0iDEXxOskh2Lfck6FeTzCT9jzCNQJILmGfhnCekxFJqwbS8rnfmn3vbni2q3GpdaRdxhinBr3Kg4DcdijicqpqUNsQKUFxbPdpxyL_doVCA1TFLQ4x', '2023-11-04 06:37:02', '2023-11-04 09:35:09', NULL),
(132, NULL, NULL, '$2y$10$4OweKP9FH0bVFbwPK2voC.QNplNld02o8YzQjDAGgLMhJ1F04FYz.', 7896542255, '1', 0, NULL, NULL, 0, 'eavm1SRSQLCgeS68VyWxkp:APA91bFYW0cOOBLwmTUdOUi-przkTsWza3xR_NymDxy1xw8Vmp0kBHE_n1H2YKoBquOUYSRZajs5pVZMJ4_t1POVMMQpc4tal4FwD5iOul3Lg4vZDesjTYIIPBYTpCwCzgZ7OdU_tF8Q', '2023-11-04 09:41:18', '2023-11-04 09:41:18', NULL),
(133, NULL, NULL, '$2y$10$0s5MnT9JDL9xqdQBmXP7QOsM0e1tTJZyf5BmYjV0AkdFIuoP46SOy', 9950727564, '1', 0, NULL, NULL, 0, NULL, '2023-11-04 13:08:48', '2023-11-06 06:48:00', NULL),
(134, NULL, NULL, '$2y$10$QE47UdzlQdeXCpqY1Af9gepX.wBuSHlXCXuMMoRMDkFi9guawZbkG', 7014660766, '1', 0, NULL, NULL, 0, 'fO6cqexpQNOkGohcs1jd8o:APA91bHpi7ZikYELMDXLv2hm38ZImsBAEODp1_yQ9qcSXbR-ySE0CkPdeR0RxswPOJwYjn3eQnqZoC-hYDe-p8Jik64evQ6YhtfugG9AuT_rRfRYAY5_OI6NIexGclh1ji7QMOEfRdUh', '2023-11-08 02:50:58', '2023-11-08 08:44:48', NULL),
(135, NULL, NULL, '$2y$10$.V2bhTXohzVv0LiVLwxCLue6ub6yhtu7QZVbW6RUAqMXrGCFGbxla', 9850726060, '1', 0, NULL, NULL, 0, 'exwWgWR8SauWW0i6TpkeSc:APA91bELNK1Np66OEXQ0K1UTihZUhJWhnCh7J2ZHjeJPxx-n-r5P-ULptXI0AMFLJE0PsPxjIauPZOLKZHjsN1Zmxla0_8WZtmvgXbwaDLsPRG6JSi07YCTLkmtjvKlyVdHfeDQ8SHkx', '2023-11-08 11:33:12', '2023-11-08 11:33:12', NULL),
(136, NULL, NULL, '$2y$10$GFyIYUJaKFA3ENtpja6Fle84ML9PCUFW2zJu1HxSwkDZamaSMsT1y', 5566778899, '1', 0, NULL, NULL, 0, 'fuoEIsIRSVGtdAF7Lnd1Bv:APA91bEKgw8BCqKqHmPVLzRbE4JehLe0slMsPpjDvslSFqqLpJ0Ywn3zpPtGtDtNUUfTQ2rFFYnfCi_latSDButnQ0t59eD2yv-T4YKJtOugbLYgXCVwIeJ_z0nR7PpFh8YAJ56_fqIs', '2023-11-09 06:53:34', '2023-11-09 06:53:34', NULL),
(137, NULL, NULL, '$2y$10$iOaKKWJkvo2Zs6jmk1cuMux9fnk3aWX/LksNDi2eSW4MMdpFvU/pK', 9685232526, '1', 0, NULL, NULL, 0, NULL, '2023-11-09 10:34:24', '2023-11-09 10:34:24', NULL),
(138, NULL, NULL, '$2y$10$09UYkm9hwqusg1LiqragIO5//Ts3UDPvQVWmPA668b.4XQl1wuOSC', 8619587541, '1', 0, NULL, NULL, 0, NULL, '2023-11-18 13:16:23', '2023-11-18 13:16:23', NULL),
(140, NULL, NULL, '$2y$10$LmCcoCnCNoPaTARyRgUtduYP64G/tGYclImfRGjnunRR9Qp5MZsQG', 9639386854, '1', 0, NULL, NULL, 0, 'eYGYtJr1S4Ova-fNPnIdI-:APA91bGFKPpspjjBWgV-_-o9u-GARGqrH4cVQ6JzDuMcncNM6okChiwcufuT7A6uK3SR59g4gXmZ9SVjLB_QEh6CEpUEGCVsYYW_KTCys_II2ab26ScLIeYeqaHA8pSmQQzG5cojv1nr', '2023-11-20 11:08:08', '2023-11-20 11:08:08', NULL),
(141, 'Np', NULL, '$2y$10$PlW2O/B93gYArGs7ukenlOQww/gbIvZf44UVJyNt9hj9X/3iZh8Hy', 4215367890, '0', 3, 114, NULL, 1, NULL, '2023-11-20 11:30:24', '2023-11-20 11:30:41', NULL),
(142, NULL, NULL, '$2y$10$Q8rNjg8Q8IepbjvE6kSnneb0wmKRao8iFFCBB4rqpTMqXN/.AAbCS', 7014660076, '1', 0, NULL, NULL, 0, NULL, '2023-11-21 09:56:42', '2023-11-21 09:56:42', NULL),
(143, NULL, NULL, '$2y$10$a6iCFC5qWhSf1SUORZnZeuQd8oGKnHuUJXEPBZIHUUk0Z8LOv8Vq2', 9638527413, '1', 0, NULL, NULL, 0, NULL, '2023-12-04 08:27:42', '2023-12-04 08:27:42', NULL),
(144, NULL, NULL, '$2y$10$AW7CWLwK97BwdF.GnnokOuz468wB0skkRl5uOqLNs9pC4sF9gfsNW', 5555555555, '1', 0, NULL, NULL, 0, NULL, '2023-12-04 08:28:37', '2023-12-04 08:28:37', NULL),
(145, NULL, NULL, '$2y$10$yCJKEJowr9.7Car6QMifzeXml42ipfXzlDLSzpWGduW/Yicsb3apu', 2222222222, '1', 0, NULL, NULL, 1, NULL, '2023-12-04 09:00:18', '2023-12-04 09:00:18', NULL),
(146, NULL, NULL, '$2y$10$UMbc9oLKrLTh6Iiugu42uOOlDHc7O7lOBc3EI/8iHM27w3/xY8c3u', 2222233333, '1', 0, NULL, NULL, 0, NULL, '2023-12-04 10:17:33', '2023-12-04 10:17:33', NULL),
(147, NULL, NULL, '$2y$10$Km2gI.LAtxa8VBX21lcFYuZ0Dek1.m307gr.C3FrwxedLf5sTFRwK', 2323232323, '1', 0, NULL, NULL, 0, NULL, '2023-12-04 10:35:26', '2023-12-04 10:35:26', NULL),
(148, NULL, NULL, '$2y$10$MYDZW9razolMZ1.BuA.6Euja1lrCLVZqKKMpCn1jvdIksPzrk7nPO', 9090909090, '1', 0, NULL, NULL, 0, NULL, '2023-12-04 13:08:51', '2023-12-04 13:08:51', NULL),
(149, NULL, NULL, '$2y$10$qkwwuoQ.93XOZAvpuUQC8OUNS0utR50tjnXlyPevLVPugkCI5PTRa', 7777777777, '1', 0, NULL, NULL, 0, NULL, '2023-12-04 13:12:06', '2023-12-04 13:12:06', NULL),
(150, NULL, NULL, '$2y$10$l.UiATjDE26jjYpDTRNjKuvlJb5uHpy3XCChrg8hZbYVa.YHXg/S6', 1918708698, '1', 2, NULL, NULL, 1, 'cDBFYTnfS72ZTMqrHt4CWC:APA91bEER9UazShm_PHDzEon1KdaE-VZqQzz84yeT2if-yJCRAuxqn5ZNwSiZzWGIC-Hudhr9RkJ9mgfngGxW_LUg_cZl-CxF9KUdACYsgJx3GYPHrhXPS8bpUXMfKYED3hdzhaC5MGQ', '2023-12-04 13:14:02', '2024-03-28 06:18:11', NULL),
(151, NULL, NULL, '$2y$10$O3fu8g.tu0eY8/R3Ws5bFOj0a.XpnovAn71pPikFx.DLrypN982pS', 7474747474, '1', 0, NULL, NULL, NULL, NULL, '2023-12-04 13:54:58', '2023-12-04 13:54:58', NULL),
(152, NULL, NULL, '$2y$10$Wbs8aoI25JGwjzYrYikq9eA.9AwaiFJjnVW56hNgSThSnF5mwM0tu', 976096754, '1', 0, NULL, NULL, NULL, NULL, '2023-12-04 13:55:21', '2023-12-04 13:55:21', NULL),
(153, NULL, NULL, '$2y$10$qUgKJkTIX5peMbVQWvHfFuk6.5cBBW1pVf3CgtiDD2zZ068433yn6', 9507726060, '1', 0, NULL, NULL, 0, 'eCq7EQIARKab4QY98-NCr4:APA91bHjrCadWfcMHcXLiusJlbP4dkwMUxBuANtVdVE78AF7EIWK3YJ7xuE5fpD-D8Du1qWjKS1Xg7bu7mHZA0xaCHeAOlmeVphv-mXujg29kEKwwOimOmJooSUkoqKF2kwh2FmjfeWY', '2023-12-06 04:27:21', '2023-12-06 04:27:21', NULL),
(154, NULL, NULL, '$2y$10$Uq.V6StCqFrpiWJhEyVAqeQvMA/t41iHGT3ulFQPWD/MXY8cC7bZW', 5454545454, '1', 0, NULL, NULL, NULL, NULL, '2023-12-06 05:42:37', '2023-12-06 05:42:37', NULL),
(155, NULL, NULL, '$2y$10$jFlQsxQLFkgLOPSVcc4p8udXJptHTiXiDneJoUhMxWvAmGzhJs1Mm', 9090808070, '1', 0, NULL, NULL, NULL, NULL, '2023-12-06 12:13:58', '2023-12-06 12:13:58', NULL),
(156, NULL, NULL, '$2y$10$5sVmHCBgu6Xbtx/B.EG6xOnIKVpctFl.Pr5lxYeK46W8tLkDDQGY6', 2323454566, '1', 0, NULL, NULL, NULL, NULL, '2023-12-06 12:49:51', '2023-12-06 12:49:51', NULL),
(157, NULL, NULL, '$2y$10$uzBpx0A9bvJJZEU0yGf2GORTsWgehYP1Z3EoKG5kcDlDrVJ1TcLj.', 3232323232, '1', 0, NULL, NULL, NULL, NULL, '2023-12-06 13:18:24', '2023-12-06 13:18:24', NULL),
(158, NULL, NULL, '$2y$10$e8yfw2z1qtqpsorc0/k2X.z19udF87d.Y/VugLVmlNSCk3XSkrc7C', 1010101011, '1', 0, NULL, NULL, NULL, NULL, '2023-12-06 13:35:46', '2023-12-06 13:35:46', NULL),
(159, NULL, NULL, '$2y$10$xMsNIa6ZZkkdYclvJ5rbEebIVx4n5gRKSu/BBbd84iGh0F9PN75K6', 9799316106, '1', 0, NULL, NULL, NULL, NULL, '2023-12-06 15:14:22', '2023-12-06 15:14:22', NULL),
(160, NULL, NULL, '$2y$10$brqHaWyP8WvxC9PklCIVxeyWf2tkPapyR9921kuSdooEKLdqZz4qa', 9799316161, '1', 0, NULL, NULL, NULL, NULL, '2023-12-06 15:39:22', '2023-12-06 15:39:22', NULL),
(161, NULL, NULL, '$2y$10$ZBxVeKpAr1A5144JSfbAUel0VU0An0PU7TYfCCO/d37vzd1Hvb1wm', 3079129637, '1', 0, NULL, NULL, NULL, NULL, '2023-12-09 11:11:56', '2023-12-09 11:11:56', NULL),
(163, NULL, NULL, '$2y$10$UW1J1HIP4FXnQAN6tWBHvOV0sEZdZ0CwVpUiDlBHO4z5tzQksTlh2', 8824552764, '1', 0, NULL, NULL, 0, 'fshdFqBQQvi6a9shGRPDFS:APA91bH73uU4ah7M0IpoXytAajtR4UZDgSSLd4tP8X70L7Qr66g0jKz-6dh9iznc1Zc14BTF6wYVwrUwMTeWouTHUVMklkZD7XflXuJ48yZDiqV0yp3DI78zVLRroh9bO3HHjY7NOdRb', '2023-12-16 13:28:27', '2024-01-18 12:34:16', NULL),
(164, NULL, NULL, '$2y$10$i5Oj0D42vjsjBFX4eAyn1ugzNQaiwPMN1e2AViz0PRY7n3euABzcq', 9873419359, '1', 0, NULL, NULL, 0, 'dLhw0p-vR1qXPporezqbGy:APA91bEyQ8T8fbnOg-DfrZ_XaXpVI2HR8HLTk7__22O5R2nwlY2GkvlxICeU9cdRD_Hns3sgImiwBXzTEQQZDRv6ILS_rx3jDgqVITErUJry57uRg6HFy3Piric-fLqLssYzrDZ0i26Z', '2023-12-17 15:58:05', '2023-12-17 15:58:05', NULL),
(165, NULL, NULL, '$2y$10$td1lEzoh8St30EPodibQdOBICwIiQEHR6XyPasppIQCAHlEDk/moa', 8209512296, '1', 0, NULL, NULL, 0, 'cFS0h9E_SGaCBvfHVL_6Cg:APA91bE0GZX3A3SG-7e9Aj79IU0pnx5NQdydxX_Pp3VNCI1zrbF8TY-dSkLMWhaJg366vNofk8Bh17oc6aWmlyUW199I4hC3clBaFOHeOsY0mZF53UAClFqdQEiU2RbTg9Ph7vs2Z1_p', '2023-12-18 10:26:02', '2023-12-18 10:26:02', NULL),
(166, NULL, NULL, '$2y$10$R3pH8Uz7.wm7.tfee2GXd.EwwEVdNDRGe/YWkGOo5qIisDm0eD/06', 8209457336, '1', 2, NULL, NULL, 1, 'dCeZOELKRIedh4tfoFijOf:APA91bFQbK66SwbJRXnYL_YzNp8jPPabVP-lCOqzr_ZxrIaKx_U7hUE7DfDI-ALXCx6nRTTypY9ZJ71jCiQm0wEAb40FTRMvEU17GrrmBJHB6Et2JTUhwajY2et-TI-sALAVeBYwP6NT', '2023-12-19 05:31:34', '2023-12-19 16:41:45', NULL),
(168, NULL, NULL, '$2y$10$fSIYUfox47KhaVqTCdOii.oV5ginE7d2dPVpuMPnjBS7PrHxzszSK', 7568080550, '1', 0, NULL, NULL, 0, 'cJTQf3xSR4akRnbHB1nHSh:APA91bHPg07fUH8sZpyTKNWNlpSrZEir7JkW0w_8o6fSHfNTzlEJn9nY-zE3xi8O1AQdgkNPzz6709C7g_8pYvct2g_v8kGY3XyoGF-PDLCdGN_OpqiRsSWaNmTv21gTS2q54UXZDT4r', '2023-12-21 06:58:22', '2023-12-21 06:58:22', NULL),
(170, NULL, NULL, '$2y$10$aLM7HfzwjL5kk0pckAwMC.qo00ASKzCKs9pWxnCaP0CTjOcMZbaqm', 8209953693, '1', 2, NULL, NULL, 1, 'fB2eanjzsEsTv4MnrHAR1A:APA91bEgjfDDdPgJvjiCfWAGc3iD7WuTeFcQpA2U4pQE6FiUEzdEYWqyP5aExw6oU2HCQT2ccb9N-QwAE0Jiv_GPXmdQWzlXgdSzZ5gBaBm6F9Z9Qa9S0iXHwvA4lcWIRw-WxX223UY-', '2023-12-23 12:15:50', '2024-04-02 08:02:24', NULL),
(171, NULL, NULL, '$2y$10$w1iPW4MGa8zSkaHw.zB00.b/jqnts2EPn38y9zleVg9NzpZOQI7Oi', 9314138002, '1', 0, NULL, NULL, 0, 'cOS7aUiDS-CUHzNDukKbtB:APA91bGhsuP4tPgYRGGMiDLK0tLpJAksj8G60drZ37jpv9du7U5n0cxLzDnx9Uii64TCQVDVv7qfIc4-9FRwS9LQzFE23SkmhnyVgmOuq7Ve-VsJYlTB1CfRSLj3BfGPrFpZvOxExuUJ', '2023-12-24 06:03:02', '2023-12-24 06:03:02', NULL),
(172, NULL, NULL, '$2y$10$.J5zfFrJPWE7aIcrihwgHuNbHDOVIULiVxPPSL66S0u0VSA3iTGpW', 9982319081, '1', 0, NULL, NULL, 0, 'c1wJ3Vz0RhGZr3e9PrQasH:APA91bGnDz10UJJBsMFe79DvOe0AixO-jy8VFIs0bE0oPTcF_uslY9Ip0c9Ws05fF-u1MovDRDBQhAF5eOyVrGLxwW9IZO98P2Lg1dNvFkhpc44kRh5MNnrdAWe5AmMPolkIhWMB4IYM', '2023-12-25 07:44:00', '2023-12-25 07:44:00', NULL),
(173, NULL, NULL, '$2y$10$bee9G8WjkRfPybFQRVowY.bbWHbM1bXpKwtGcHlrMNtWBXjlZXjI.', 7742031157, '1', 0, NULL, NULL, 0, 'cOTNqmWxRsaccVUm19uaiU:APA91bFtOIOuJZgtaM38n4HZ0cMI-mNx26lXeYITck1pJDXzt84RHiq7Z0_GLPRWPLQ_Z4mDncKXTD9EW9-mkN-uAjcfBGE-sxko-_JQbObGW6MH3X5UWptCSeTTagPgU0Yy6o-h7vzX', '2023-12-25 08:43:28', '2023-12-25 08:43:28', NULL),
(174, NULL, NULL, '$2y$10$KgjljANOtC4O0xxFjVpdF.auTTk6bX77ZZLMITAARjnC/G9KZfD0u', 9351558929, '1', 2, NULL, NULL, 1, 'e3GfwmlURzy7FFCI1T0siQ:APA91bFyMd9KX0VZAPivP63uq77NnIcgIS3kcbeoMg7pnyy6PR0Y2ELIqJ2MpyO_qZpW5s_18PLruof-yxc5r2RFoTeXXJHG20WoGVEGBCSPlLAiLR1KnKXqdCWzTa6NRSB6Op9Wfubn', '2023-12-26 10:55:15', '2023-12-26 10:59:31', NULL),
(175, NULL, NULL, '$2y$10$zY5oqMPM.tUB20hwa0B8uO2Wu7.cxdNhMJes2QS6Smm.JsYGExyqS', 4567675434, '1', 0, NULL, NULL, NULL, NULL, '2023-12-28 11:48:40', '2023-12-28 11:48:40', NULL),
(179, NULL, NULL, '$2y$10$JnED7fER.i24ADFeuv0PU.9gLeE8CyDq1y7.tQwLBLo.BGa4kOLj.', 7357169549, '1', 3, 115, NULL, 1, NULL, '2024-01-09 12:31:16', '2024-01-09 12:38:04', NULL),
(180, NULL, NULL, '$2y$10$DbOjmxSgeJOe7rDQmrrLyugiNB8mqZo1I/3i8aTJMXGaXfDxySJz.', 7597598239, '1', 0, NULL, NULL, 0, 'dK5-VcLqSMyqmDW5OusjGs:APA91bFpgul-MJhAtL4eYcnluLSwAWPLgU5so3HFAnNyW3lfyGVp_TGeDBiDiqvV__CLdGAH7Jafpws-jFEq_pQtoIj1elg0ut82jjffhC8vJlCEHkkaPLi0aLSPWbF3fkKM7ok2ydFz', '2024-01-17 06:55:36', '2024-01-19 05:48:15', NULL),
(182, NULL, NULL, '$2y$10$dhzqu6lwKO8xCmXNhebM8OseIn0O95k/Ocb305Fxfjyg3sQjkaR8y', 9782631351, '1', 0, NULL, NULL, 0, NULL, '2024-01-28 11:24:12', '2024-01-28 11:24:12', NULL),
(247, NULL, NULL, '$2y$10$zK1o9/O6vVTPrbl2rhC/Nuz5RcLyeIq8KDwidpdWX4TsBP/49MC.O', 9521145057, '1', 2, NULL, NULL, 1, 'fcb2jBFJT6mA46yJG7cJop:APA91bFC-JucjiU6rAY0NL7NoTh5zaK_pkK1oCogtSpSB7k2FveiaRxCue_sanS2FZTsaDAPruWfQDUaNcNUNF3UT2_qj9CiqNBd1KYukVScY6tFalKkYSUeVJwuIXbmbrQ46MR58QOM', '2024-03-02 06:54:49', '2024-04-03 06:46:17', '2024-04-03 06:46:17'),
(250, NULL, NULL, '$2y$10$iWau2479iTpOan2/5RXjbe2w26AAS3s1p4lheNu2h2jIZdfYnkdbG', 9351707716, '1', 2, NULL, NULL, 0, 'dADk_Ye-SUagz77qR96-fE:APA91bE0o7jmsz5hsx5FZ-hzGOtebrz_eyfTBQNee-KBoFykjXbF4oR13slYSBI7skvVuSdGojePr4yW3PX-xvFVhgmk1rVxPUINesgqaFZItJ6Fmr1-rvJ-pC_cBmdeygt3bCqhBRVM', '2024-03-04 11:43:16', '2024-04-02 06:00:01', '2024-04-02 06:00:01'),
(253, NULL, NULL, '$2y$10$DbU42DpXkSA4U5hTJrpcvOIooGWassZvaIknX1cIYy.Z4Fc1EKp/2', 9783570333, '0', 2, NULL, NULL, 1, 'fMFvEu3LRT6KpgS65-5x6O:APA91bGIE61B0GwNIW9BYiEoarwviHNHDqRdtCwtvN78rkkaZFHAwfWly4NnMXBLqL2MAKRC7a3Gr-NwfDRHUX8KtkxGhdgTH4eKgpQNrIZB7AG95l6MZoZKiQxNKncJJVvK8hlhctVF', '2024-03-06 05:58:37', '2024-04-02 05:18:14', '2024-04-02 05:18:14'),
(258, NULL, NULL, '$2y$10$ISm1aif8SVDMGX4.dIoYrO6msl/t5X8/oj.p6SEd5Mo.G1.N4iA3G', 9468788649, '1', 0, NULL, NULL, 0, 'ecYNPkTZt0ZAv9JyeFraKS:APA91bFUQIV77II7PaZYIPOcz26gzrWF50fJtoW0rbGe0uVqZkLNxFivFp2NKBDL5iuAKOy-wVvnOwvMPOgb2ghzE57jTV32Boaw52j9QPd6lmXZE4vbqoQL71cpaeOxjMIrsN1pW9AR', '2024-03-22 09:45:13', '2024-03-22 09:45:13', NULL),
(259, 'Sandeep', NULL, '$2y$10$bu6nOGcTF3U1Q8At/M2dI.HuJF55WfdVMUd7aTHiZPp8Ei7Z9vA4m', 9352398200, '0', 2, NULL, 'gallery-1711547429.jpg', 1, 'dRCaBAPQQS69zFXKzRL1Kw:APA91bFi3wD8yXak4jVwM8yhx9h0mMS94XtDmfZyJRv9B_ghL0PuSdnl7dJEfaaOUoIv3A4zlMGeXnNif0niR0EpOJ7X9l-HwfnTLUD_x_7fX09zMiZFAFpLewFaw0MgObOowsCaqDLw', '2024-03-22 11:06:14', '2024-04-01 15:11:09', '2024-04-01 15:11:09'),
(261, NULL, NULL, '$2y$10$df4cfLO2YgRdVMZ7GslxK.kCKzS4ih8kFIuCWmBKleX/Kw9CX.uKC', 7878237510, '1', 2, NULL, NULL, 1, 'c0oZRYhNS42aFtDCVtRakK:APA91bH_IQCTio2X27x2UuD10NAhxNaGojGCEDmXACd_ZG1yer8YuRfBvCwZJMUI-GyRSXbZsElIrxPf0wFknLBwkGgN0myNq6wA61VHsCp1c8TSjT8gy0SVPbIYuduOPXbv09UHTuuq', '2024-03-28 05:58:35', '2024-03-28 06:17:54', NULL),
(265, NULL, NULL, '$2y$10$v78g5wHrjq7mVpXGd0KwEeADtMZld0cRvbvTE8x3l5oqTfX1G5tDS', 7357169546, '1', 2, NULL, NULL, 0, 'eoiUYAByT5W7Voyz-T7fSY:APA91bGskkTziQmy2ofb4QYB4mxEyNqRaLQgyhKMTA7FTrrsmahDLbOv7_xIoVZcyT9YzDvZ269_lxLvskYNsZgV68_FrzPSvJ1ubELyWaYfLwAGfBCIF4A7Jem8jmsL0Qs4oqwW9r1h', '2024-03-28 13:51:15', '2024-03-29 05:10:40', '2024-03-29 05:10:40'),
(266, NULL, NULL, '$2y$10$uKht/YtylM6ehXkrhcIeYuWKNGBc8Fk9NPAqnuqP87J9L415HTk16', 7357169546, '1', 2, NULL, NULL, 0, 'eoiUYAByT5W7Voyz-T7fSY:APA91bGskkTziQmy2ofb4QYB4mxEyNqRaLQgyhKMTA7FTrrsmahDLbOv7_xIoVZcyT9YzDvZ269_lxLvskYNsZgV68_FrzPSvJ1ubELyWaYfLwAGfBCIF4A7Jem8jmsL0Qs4oqwW9r1h', '2024-03-29 05:11:53', '2024-03-29 05:15:56', '2024-03-29 05:15:56'),
(267, NULL, NULL, '$2y$10$tgQa.xCvvNhZ93WlLXMo4eBW5gYUbLqDDjBbTTRXiNzmIxbhlnN9G', 7357169546, '1', 2, NULL, NULL, 0, 'eoiUYAByT5W7Voyz-T7fSY:APA91bGskkTziQmy2ofb4QYB4mxEyNqRaLQgyhKMTA7FTrrsmahDLbOv7_xIoVZcyT9YzDvZ269_lxLvskYNsZgV68_FrzPSvJ1ubELyWaYfLwAGfBCIF4A7Jem8jmsL0Qs4oqwW9r1h', '2024-03-29 05:16:33', '2024-03-29 08:55:38', '2024-03-29 08:55:38'),
(269, NULL, NULL, '$2y$10$6.DugFZe4p.DGXIjybw/MejyzS3/wg9z50bmUp.jmEPMbRD9js1PW', 9636253338, '1', 0, NULL, NULL, 0, 'ecYNPkTZt0ZAv9JyeFraKS:APA91bFUQIV77II7PaZYIPOcz26gzrWF50fJtoW0rbGe0uVqZkLNxFivFp2NKBDL5iuAKOy-wVvnOwvMPOgb2ghzE57jTV32Boaw52j9QPd6lmXZE4vbqoQL71cpaeOxjMIrsN1pW9AR', '2024-04-01 15:28:20', '2024-04-01 15:28:28', '2024-04-01 15:28:28'),
(270, NULL, NULL, '$2y$10$Gfh/P97MF/56W0oEqGjnD.vOJNGRCDjIb5oT3CRqEq.fZnE/yqaKe', 9352398200, '1', 2, NULL, NULL, 0, 'dRCaBAPQQS69zFXKzRL1Kw:APA91bFi3wD8yXak4jVwM8yhx9h0mMS94XtDmfZyJRv9B_ghL0PuSdnl7dJEfaaOUoIv3A4zlMGeXnNif0niR0EpOJ7X9l-HwfnTLUD_x_7fX09zMiZFAFpLewFaw0MgObOowsCaqDLw', '2024-04-01 15:42:05', '2024-04-01 15:53:51', NULL),
(274, NULL, NULL, '$2y$10$cqTCAJyPwtm6/Di3nuJ3RuZYPJUvXmOYbdpOG1zp2oHPe5yMdp.Bm', 7357169546, '1', 2, NULL, NULL, 0, 'eoiUYAByT5W7Voyz-T7fSY:APA91bGskkTziQmy2ofb4QYB4mxEyNqRaLQgyhKMTA7FTrrsmahDLbOv7_xIoVZcyT9YzDvZ269_lxLvskYNsZgV68_FrzPSvJ1ubELyWaYfLwAGfBCIF4A7Jem8jmsL0Qs4oqwW9r1h', '2024-04-02 05:27:13', '2024-04-02 05:30:39', '2024-04-02 05:30:39'),
(275, NULL, NULL, '$2y$10$apQXJIV3dY.Q0IwJB1g75uvapjzrafhrSGbgek4p6Rm4DQ10OXaCK', 7357169546, '1', 2, NULL, NULL, 0, 'dADk_Ye-SUagz77qR96-fE:APA91bE0o7jmsz5hsx5FZ-hzGOtebrz_eyfTBQNee-KBoFykjXbF4oR13slYSBI7skvVuSdGojePr4yW3PX-xvFVhgmk1rVxPUINesgqaFZItJ6Fmr1-rvJ-pC_cBmdeygt3bCqhBRVM', '2024-04-02 05:31:31', '2024-04-02 07:48:16', '2024-04-02 07:48:16'),
(276, NULL, NULL, '$2y$10$G5frWzYMBc8Y.ZLprqMXe.joyXcWZU5jgiH7KbnSAbBebw7Z.uj0.', 9351707716, '1', 2, NULL, NULL, 0, 'dADk_Ye-SUagz77qR96-fE:APA91bE0o7jmsz5hsx5FZ-hzGOtebrz_eyfTBQNee-KBoFykjXbF4oR13slYSBI7skvVuSdGojePr4yW3PX-xvFVhgmk1rVxPUINesgqaFZItJ6Fmr1-rvJ-pC_cBmdeygt3bCqhBRVM', '2024-04-02 06:28:49', '2024-04-02 06:52:39', '2024-04-02 06:52:39'),
(277, NULL, NULL, '$2y$10$NOEN8zY4HC4ZgNpel4mu4uX.lE89eGH2YKAYibVuO46PcEF0INQv.', 9351707716, '1', 2, NULL, NULL, 0, 'dADk_Ye-SUagz77qR96-fE:APA91bE0o7jmsz5hsx5FZ-hzGOtebrz_eyfTBQNee-KBoFykjXbF4oR13slYSBI7skvVuSdGojePr4yW3PX-xvFVhgmk1rVxPUINesgqaFZItJ6Fmr1-rvJ-pC_cBmdeygt3bCqhBRVM', '2024-04-02 06:59:31', '2024-04-02 08:47:15', '2024-04-02 08:47:15'),
(278, NULL, NULL, '$2y$10$Jfx9vfB.ccHzUBF5w1KZMeBX8ZD/Qb7tZN8k743QvU7SLnUehMavC', 7014660763, '1', 0, NULL, NULL, 0, 'd1gIvdMHik4binsYHjwxk6:APA91bHeIwYmWU4jn-v8OrMcTgRWInB_bRpB2qH4dd5NIgf9F3VnroiqfXxDf3KFpC5mXyhxh9AC34MXvFRxZ63Qq76Jyyn0xTeltwqq3AmYfyJEqh1NgDNC9zcIbfxfrfm_OMgRzuYh', '2024-04-02 08:16:05', '2024-04-02 08:48:18', '2024-04-02 08:48:18'),
(279, NULL, NULL, '$2y$10$iXQDo8G8/PxpCkVv.FPcoO02mpxTBXt9OOodDgqI3gEjrzw4FTsDa', 9351707716, '1', 2, NULL, NULL, 0, 'dADk_Ye-SUagz77qR96-fE:APA91bE0o7jmsz5hsx5FZ-hzGOtebrz_eyfTBQNee-KBoFykjXbF4oR13slYSBI7skvVuSdGojePr4yW3PX-xvFVhgmk1rVxPUINesgqaFZItJ6Fmr1-rvJ-pC_cBmdeygt3bCqhBRVM', '2024-04-02 08:48:10', '2024-04-02 11:35:06', '2024-04-02 11:35:06'),
(280, NULL, NULL, '$2y$10$GPVpoaDiLKbkV4NXE6GKN.4WB8OtAz.3DJ2xImRybWBiCcYW0WIJa', 7014660763, '1', 2, NULL, NULL, 0, 'cQKx1xjU504KoQrs7rWyoS:APA91bEc5HGyWgi6Z1A_3o6TEh7xee0iGePfdRqBhKMY8P3yEe4NSV9waMCw30yrY3QMBPnDnpFET2k7rXEbAv3ZkuWaeF0lIp3HKUwbn7pA0MTgtF58Kw17pIH4c-SR68xBareSaru4', '2024-04-02 08:50:10', '2024-06-12 06:56:24', NULL),
(281, NULL, NULL, '$2y$10$Wi3iM3/gu0Y1zsU0Q3t8Xed8oSBdPbr0OojXlnbhsShXzPD0QNDuS', 7357169546, '1', 2, NULL, NULL, 0, 'eoiUYAByT5W7Voyz-T7fSY:APA91bGskkTziQmy2ofb4QYB4mxEyNqRaLQgyhKMTA7FTrrsmahDLbOv7_xIoVZcyT9YzDvZ269_lxLvskYNsZgV68_FrzPSvJ1ubELyWaYfLwAGfBCIF4A7Jem8jmsL0Qs4oqwW9r1h', '2024-04-02 09:01:53', '2024-04-02 09:14:37', '2024-04-02 09:14:37'),
(282, NULL, NULL, '$2y$10$8FM6wxrR7p57nx.qyRzzEeu.ZF.WrXxSB9heQ12Tnt2UHG.ctbfiW', 7357169546, '1', 2, NULL, NULL, 0, 'fOLMjSZpRIm5OXp0ZPVEuS:APA91bFTtoWtWRAWkFRA8BuMq6hSI9zofO0DD2Tsj4DHHXrzHis6WKxn5OE4QuHZNe3O-2U34c62OD41mOuUSUPTXkpI2_NQHqp3Qr8ixk7y2x3abQapXFeAgsGD3zcSSsTe4cWVLb5b', '2024-04-02 09:16:32', '2024-04-03 06:33:04', '2024-04-03 06:33:04'),
(283, NULL, NULL, '$2y$10$LA6ms36GG260YIJjt6Ws6uivt0kmjTQLg8BwXW9FepUktN5zJyTea', 9351707716, '1', 0, NULL, NULL, 0, 'dADk_Ye-SUagz77qR96-fE:APA91bE0o7jmsz5hsx5FZ-hzGOtebrz_eyfTBQNee-KBoFykjXbF4oR13slYSBI7skvVuSdGojePr4yW3PX-xvFVhgmk1rVxPUINesgqaFZItJ6Fmr1-rvJ-pC_cBmdeygt3bCqhBRVM', '2024-04-02 11:37:11', '2024-04-03 11:27:00', '2024-04-03 11:27:00'),
(284, NULL, NULL, '$2y$10$lq92BI4lVqesCPnwrQe53egDdB7M3b7ZM2HObKX.ga39ebfIqEWp.', 9783570333, '1', 2, NULL, NULL, 0, 'dhiym6FTQCyj-tw55Vx3CK:APA91bGWJMhQ4Xz6pGZ7Zi371RjxgjfxPgPvskSOoc_1KlyoNMF0ZzLubzqBQHk0xdOpl8fWeLIJmPeL9DXqkxdjESdev7xHKPFbwAZFuXXKyN85G0H4bsKKXmEFnecqRiOCgzL-WUon', '2024-04-02 12:31:01', '2024-04-02 12:39:35', '2024-04-02 12:39:35'),
(285, NULL, NULL, '$2y$10$vizj.ETmcdPgu47hzMq/tObitEcBIBIYDqXgEwfIF7wrNoI.YOwtu', 9783570333, '1', 2, NULL, NULL, 0, 'dhiym6FTQCyj-tw55Vx3CK:APA91bGWJMhQ4Xz6pGZ7Zi371RjxgjfxPgPvskSOoc_1KlyoNMF0ZzLubzqBQHk0xdOpl8fWeLIJmPeL9DXqkxdjESdev7xHKPFbwAZFuXXKyN85G0H4bsKKXmEFnecqRiOCgzL-WUon', '2024-04-02 12:41:07', '2024-04-02 13:04:29', '2024-04-02 13:04:29'),
(286, NULL, NULL, '$2y$10$HKY7Fj7FFtXe0/L4juhDw.UGEY7HuETDcHley4YbdeefI3lgekzb.', 9783570333, '0', 2, NULL, NULL, 0, 'dhiym6FTQCyj-tw55Vx3CK:APA91bGWJMhQ4Xz6pGZ7Zi371RjxgjfxPgPvskSOoc_1KlyoNMF0ZzLubzqBQHk0xdOpl8fWeLIJmPeL9DXqkxdjESdev7xHKPFbwAZFuXXKyN85G0H4bsKKXmEFnecqRiOCgzL-WUon', '2024-04-03 06:26:39', '2024-04-03 06:51:11', '2024-04-03 06:51:11'),
(288, NULL, NULL, '$2y$10$ljLxkYj3kvCvMUaaTqpfHuP0U4Vt13S78U1Hs8Jx2ahFHeXXGlU/2', 9521145057, '1', 0, NULL, NULL, 0, 'eotOY_gsRkW4Ym_P67XFDz:APA91bGRFfwFJCviI-RDdGOk8jjsqyCDhc-Hl6KwPgal17VjN_JO7l2inpLPbQ1oa8nGb27b55N7DA2SAoHW5_vFDx_MWd2iChZiNMcm4AijNBasF6dc5eh8p7zVFvlVkX8tDz_-Wxh6', '2024-04-03 06:47:56', '2024-05-24 07:40:08', NULL),
(289, NULL, NULL, '$2y$10$9OZW/k/Wv8seZVZnBqmK4ei0z8QDxvtGutXFUzRk9iZdMJrsz9VaO', 9783570333, '1', 2, NULL, NULL, 0, 'dhiym6FTQCyj-tw55Vx3CK:APA91bGWJMhQ4Xz6pGZ7Zi371RjxgjfxPgPvskSOoc_1KlyoNMF0ZzLubzqBQHk0xdOpl8fWeLIJmPeL9DXqkxdjESdev7xHKPFbwAZFuXXKyN85G0H4bsKKXmEFnecqRiOCgzL-WUon', '2024-04-03 06:57:46', '2024-04-03 10:29:32', '2024-04-03 10:29:32'),
(290, NULL, NULL, '$2y$10$.IJHQI8AwU4hUkA9IgbCHuzVPa/U9478S9RjXsrF/Yuk1E2HDS7hm', 7357169546, '1', 2, NULL, NULL, 0, 'fOLMjSZpRIm5OXp0ZPVEuS:APA91bFTtoWtWRAWkFRA8BuMq6hSI9zofO0DD2Tsj4DHHXrzHis6WKxn5OE4QuHZNe3O-2U34c62OD41mOuUSUPTXkpI2_NQHqp3Qr8ixk7y2x3abQapXFeAgsGD3zcSSsTe4cWVLb5b', '2024-04-03 07:30:59', '2024-04-03 10:14:11', '2024-04-03 10:14:11'),
(291, NULL, NULL, '$2y$10$o7SpGi9Q0bS/8xh8z9uzeepz688wgeExBcWJMXhZDorSc1qrHQXae', 7357169546, '1', 0, NULL, NULL, 0, 'fcPsHia7SLqHBxyeSOIT8r:APA91bHuWPQRrTiWJdu7hTikyqHn0YJCqs_THdZ6x9fEzOEkEKIdGgAYNH2pWYvgRdAQi7G86CCk_SPlB6Q8daCwbPTT0iKqpCD7hp9wqlryB0HVBgwhjQbQoCCEMfO84bquz6nAaZR2', '2024-04-03 10:15:24', '2024-05-17 11:52:52', NULL),
(292, NULL, NULL, '$2y$10$fzRU/cdQT8LjQB6baA3/QORHeDvIOh/gdnogyoD3CYPQ72gA6Ezc.', 9783570333, '1', 2, NULL, NULL, 0, 'cEVXn_KcRWGaTd56FBVqKm:APA91bGOGLr54o5XjvEEfeFMCOA5YJNCJipHfN4ppFjwh65GOsrqnMDqsgZURjuTMcfsviaqNSbdNHvSuE8VJ7ecks-A_HmG1NH5KgJUsNY4S_2lNJgV_cDODiWg8r7ET88hcwPrruKe', '2024-04-03 11:25:42', '2024-04-03 11:52:21', '2024-04-03 11:52:21'),
(294, 'Assign vendor adi', NULL, '$2y$10$e5q1Ww9TSBQva9JJUREDSuuNIqAUA.sryi7i7ozUAUDP65myrfgmC', 8441099365, '1', 3, 280, NULL, 1, 'cQKx1xjU504KoQrs7rWyoS:APA91bEc5HGyWgi6Z1A_3o6TEh7xee0iGePfdRqBhKMY8P3yEe4NSV9waMCw30yrY3QMBPnDnpFET2k7rXEbAv3ZkuWaeF0lIp3HKUwbn7pA0MTgtF58Kw17pIH4c-SR68xBareSaru4', '2024-04-05 03:18:36', '2024-04-05 03:18:56', NULL),
(295, NULL, NULL, '$2y$10$w/BOzgdkxGz8Rh5HYuVpmeOaOyxUikPs0KAddBcfe1ayXqJrHSQgq', 9636253338, '1', 0, NULL, NULL, 0, 'ecYNPkTZt0ZAv9JyeFraKS:APA91bFUQIV77II7PaZYIPOcz26gzrWF50fJtoW0rbGe0uVqZkLNxFivFp2NKBDL5iuAKOy-wVvnOwvMPOgb2ghzE57jTV32Boaw52j9QPd6lmXZE4vbqoQL71cpaeOxjMIrsN1pW9AR', '2024-04-07 05:35:52', '2024-04-07 05:35:52', NULL),
(296, NULL, NULL, '$2y$10$MmDWH7dlQh8nojcaEjO//u9esHYUelbtOYRc4gbXh3EId8bKQkzCi', 7976352482, '1', 2, NULL, NULL, 0, 'dADk_Ye-SUagz77qR96-fE:APA91bE0o7jmsz5hsx5FZ-hzGOtebrz_eyfTBQNee-KBoFykjXbF4oR13slYSBI7skvVuSdGojePr4yW3PX-xvFVhgmk1rVxPUINesgqaFZItJ6Fmr1-rvJ-pC_cBmdeygt3bCqhBRVM', '2024-04-08 06:01:32', '2024-04-08 06:06:22', NULL),
(297, NULL, NULL, '$2y$10$/hsJgFPsioxeGxhXAifRd.j1AuXx0Tat5CsLeLZRgTWHDHFbi.m4O', 9783570333, '1', 0, NULL, NULL, 0, 'dIgmK0a8SkKnO2UamVycbA:APA91bGHsCZYv0o_KEm-O-Q5VFF2zgVL7tb2Q4jexE76mxiEz7FaAbaYAWZHbGnOulxdXOgJsjrdqbAcnz8CrmR69a5gGzP8BgbgFZO7fX_GX6m2jhUuu8WQQVroMma6M8hDdyJDt4Qp', '2024-04-09 09:23:08', '2024-05-17 11:56:15', NULL),
(298, NULL, NULL, '$2y$10$DyT8Xme3XsNlVtqZEXFsdeJyv6VIVj4oTRT/4ymO/q1Xwjzywktxa', 9351707716, '1', 0, NULL, NULL, 0, 'eRhbCG9JQFaI2qc2s1EpAe:APA91bHkh41FN-w8LufR2BnLd2Q-JVMmEIeAbdTFA9W47VPxXdDIi_hDC287oyGdJm2Wz0ADE3vRI3Huhm2MxKFh8U_t5X-4Me5eREw2m6sPvoJQRQt5vQnyKGjHr4ZjF0-28jXQsTjV', '2024-06-14 05:27:48', '2024-06-14 05:27:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venue_types`
--

CREATE TABLE `venue_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue_types`
--

INSERT INTO `venue_types` (`id`, `name`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hotel', '1', '1', '2023-10-14 10:20:50', '2023-10-14 10:30:20'),
(2, 'Garden', '1', '1', '2023-10-14 10:21:01', '2023-10-14 10:30:22'),
(3, 'Hotel With Garden', '1', '1', '2023-10-14 10:21:16', '2023-10-14 10:40:19'),
(4, 'Banquet Hall', '1', '1', '2023-10-14 10:21:27', '2023-10-14 10:40:22'),
(5, '5 Star Hotel', '1', '1', '2023-10-14 10:21:41', '2023-10-14 11:04:27'),
(6, 'Lawn/Farmhouse', '1', '1', '2023-10-14 10:21:53', '2023-10-14 11:04:29'),
(7, 'Heritage Property', '1', '1', '2023-10-14 10:22:02', '2023-10-16 12:55:37'),
(8, 'Resort', '1', '1', '2023-10-14 10:22:10', '2023-10-14 11:04:25'),
(9, 'Restaurant/Lounge Bar', '1', '1', '2023-10-14 10:22:20', '2023-10-14 10:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, '280', 52, '2024-04-05 03:14:04', '2024-04-05 03:14:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_users`
--
ALTER TABLE `assigned_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_users`
--
ALTER TABLE `assign_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cloth_chailderncategorys`
--
ALTER TABLE `cloth_chailderncategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cloth_chailderncategorys_cloth_subcategory_id_foreign` (`cloth_subcategory_id`);

--
-- Indexes for table `cloth_minichailderncategorys`
--
ALTER TABLE `cloth_minichailderncategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `med_mini_cat_cloth_chail_fk` (`cloth_chailderncategory_id`);

--
-- Indexes for table `cloth_subcategorys`
--
ALTER TABLE `cloth_subcategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cloth_subcategorys_cloth_id_foreign` (`cloth_id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_chailderncategorys`
--
ALTER TABLE `education_chailderncategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educationminichaild_educationchaild_id_foreign` (`educationsubcategory_id`);

--
-- Indexes for table `education_minichailderncategorys`
--
ALTER TABLE `education_minichailderncategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_subcategorys`
--
ALTER TABLE `education_subcategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food_waters`
--
ALTER TABLE `food_waters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_water_chailderncategorys`
--
ALTER TABLE `food_water_chailderncategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_water_chailderncategorys_food_water_subcategory_id_foreign` (`food_water_subcategory_id`);

--
-- Indexes for table `food_water_minichailderncategorys`
--
ALTER TABLE `food_water_minichailderncategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_water_subcategorys`
--
ALTER TABLE `food_water_subcategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_water_subcategorys_food_water_id_foreign` (`food_water_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_chaildrencategorys`
--
ALTER TABLE `medicine_chaildrencategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_chaildrencategorys_medicinesubcategory_id_foreign` (`medicinesubcategory_id`);

--
-- Indexes for table `medicine_minichaildrencategorys`
--
ALTER TABLE `medicine_minichaildrencategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `med_mini_cat_med_childcat_fk` (`medicinechaildrencategory_id`);

--
-- Indexes for table `medicine_subcategorys`
--
ALTER TABLE `medicine_subcategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_subcategorys_medicine_id_foreign` (`medicine_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_bookings`
--
ALTER TABLE `parent_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spirituals`
--
ALTER TABLE `spirituals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spiritual_chailderncategorys`
--
ALTER TABLE `spiritual_chailderncategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spiritual_minichailderncategorys`
--
ALTER TABLE `spiritual_minichailderncategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spiritual_subcategorys`
--
ALTER TABLE `spiritual_subcategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spiritual_subcategory_spiritual_id_foreign` (`spiritual_id`);

--
-- Indexes for table `tree_installations`
--
ALTER TABLE `tree_installations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tree_installation_chailderncategorys`
--
ALTER TABLE `tree_installation_chailderncategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tree_installation_minichailderncategorys`
--
ALTER TABLE `tree_installation_minichailderncategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tree_installation_subcategorys`
--
ALTER TABLE `tree_installation_subcategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tree_installation_subcategory_tree_installation_id_foreign` (`tree_installation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_types`
--
ALTER TABLE `venue_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_users`
--
ALTER TABLE `assigned_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_users`
--
ALTER TABLE `assign_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cloth_chailderncategorys`
--
ALTER TABLE `cloth_chailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cloth_minichailderncategorys`
--
ALTER TABLE `cloth_minichailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cloth_subcategorys`
--
ALTER TABLE `cloth_subcategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `education_chailderncategorys`
--
ALTER TABLE `education_chailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `education_minichailderncategorys`
--
ALTER TABLE `education_minichailderncategorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `education_subcategorys`
--
ALTER TABLE `education_subcategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_waters`
--
ALTER TABLE `food_waters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `food_water_chailderncategorys`
--
ALTER TABLE `food_water_chailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_water_minichailderncategorys`
--
ALTER TABLE `food_water_minichailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_water_subcategorys`
--
ALTER TABLE `food_water_subcategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medicine_chaildrencategorys`
--
ALTER TABLE `medicine_chaildrencategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_minichaildrencategorys`
--
ALTER TABLE `medicine_minichaildrencategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_subcategorys`
--
ALTER TABLE `medicine_subcategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `parent_bookings`
--
ALTER TABLE `parent_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spirituals`
--
ALTER TABLE `spirituals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `spiritual_chailderncategorys`
--
ALTER TABLE `spiritual_chailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spiritual_minichailderncategorys`
--
ALTER TABLE `spiritual_minichailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spiritual_subcategorys`
--
ALTER TABLE `spiritual_subcategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree_installations`
--
ALTER TABLE `tree_installations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tree_installation_chailderncategorys`
--
ALTER TABLE `tree_installation_chailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree_installation_minichailderncategorys`
--
ALTER TABLE `tree_installation_minichailderncategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree_installation_subcategorys`
--
ALTER TABLE `tree_installation_subcategorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `venue_types`
--
ALTER TABLE `venue_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cloth_chailderncategorys`
--
ALTER TABLE `cloth_chailderncategorys`
  ADD CONSTRAINT `cloth_chailderncategorys_cloth_subcategory_id_foreign` FOREIGN KEY (`cloth_subcategory_id`) REFERENCES `cloth_subcategorys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cloth_minichailderncategorys`
--
ALTER TABLE `cloth_minichailderncategorys`
  ADD CONSTRAINT `med_mini_cat_cloth_chail_fk` FOREIGN KEY (`cloth_chailderncategory_id`) REFERENCES `cloth_chailderncategorys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cloth_subcategorys`
--
ALTER TABLE `cloth_subcategorys`
  ADD CONSTRAINT `cloth_subcategorys_cloth_id_foreign` FOREIGN KEY (`cloth_id`) REFERENCES `clothes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `education_chailderncategorys`
--
ALTER TABLE `education_chailderncategorys`
  ADD CONSTRAINT `educationminichaild_educationchaild_id_foreign` FOREIGN KEY (`educationsubcategory_id`) REFERENCES `education_subcategorys` (`id`);

--
-- Constraints for table `food_water_chailderncategorys`
--
ALTER TABLE `food_water_chailderncategorys`
  ADD CONSTRAINT `food_water_chailderncategorys_food_water_subcategory_id_foreign` FOREIGN KEY (`food_water_subcategory_id`) REFERENCES `food_water_subcategorys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `food_water_subcategorys`
--
ALTER TABLE `food_water_subcategorys`
  ADD CONSTRAINT `food_water_subcategorys_food_water_id_foreign` FOREIGN KEY (`food_water_id`) REFERENCES `food_waters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medicine_chaildrencategorys`
--
ALTER TABLE `medicine_chaildrencategorys`
  ADD CONSTRAINT `medicine_chaildrencategorys_medicinesubcategory_id_foreign` FOREIGN KEY (`medicinesubcategory_id`) REFERENCES `medicine_subcategorys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medicine_minichaildrencategorys`
--
ALTER TABLE `medicine_minichaildrencategorys`
  ADD CONSTRAINT `med_mini_cat_med_childcat_fk` FOREIGN KEY (`medicinechaildrencategory_id`) REFERENCES `medicine_chaildrencategorys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medicine_subcategorys`
--
ALTER TABLE `medicine_subcategorys`
  ADD CONSTRAINT `medicine_subcategorys_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spiritual_subcategorys`
--
ALTER TABLE `spiritual_subcategorys`
  ADD CONSTRAINT `spiritual_subcategory_spiritual_id_foreign` FOREIGN KEY (`spiritual_id`) REFERENCES `spirituals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tree_installation_subcategorys`
--
ALTER TABLE `tree_installation_subcategorys`
  ADD CONSTRAINT `tree_installation_subcategory_tree_installation_id_foreign` FOREIGN KEY (`tree_installation_id`) REFERENCES `tree_installations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
