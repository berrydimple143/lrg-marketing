-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2021 at 02:24 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jstat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `aid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jstat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `aid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'present',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'present', 5, '2021-09-01 08:05:05', '2021-09-01 08:05:05'),
(2, 'present', 3, '2021-09-01 08:05:59', '2021-09-01 08:05:59'),
(3, 'present', 2, '2021-09-01 08:06:01', '2021-09-01 08:06:01'),
(4, 'present', 5, '2021-09-02 02:35:59', '2021-09-02 02:35:59'),
(5, 'present', 5, '2021-09-02 02:42:37', '2021-09-02 02:42:37'),
(6, 'present', 3, '2021-09-02 02:46:13', '2021-09-02 02:46:13'),
(7, 'present', 3, '2021-09-02 03:40:18', '2021-09-02 03:40:18'),
(8, 'present', 2, '2021-09-02 03:54:47', '2021-09-02 03:54:47'),
(9, 'present', 3, '2021-09-02 06:48:53', '2021-09-02 06:48:53'),
(10, 'present', 3, '2021-09-02 06:52:16', '2021-09-02 06:52:16'),
(11, 'present', 5, '2021-09-02 06:54:55', '2021-09-02 06:54:55'),
(12, 'present', 5, '2021-09-03 02:30:23', '2021-09-03 02:30:23'),
(13, 'present', 2, '2021-09-03 02:32:30', '2021-09-03 02:32:30'),
(14, 'present', 5, '2021-09-04 01:44:34', '2021-09-04 01:44:34'),
(15, 'present', 2, '2021-09-04 01:59:05', '2021-09-04 01:59:05'),
(16, 'present', 1, '2021-09-04 03:20:15', '2021-09-04 03:20:15'),
(17, 'present', 2, '2021-09-04 04:33:39', '2021-09-04 04:33:39'),
(18, 'present', 1, '2021-09-04 06:10:52', '2021-09-04 06:10:52'),
(19, 'present', 3, '2021-09-04 07:35:04', '2021-09-04 07:35:04'),
(20, 'present', 2, '2021-09-04 08:10:15', '2021-09-04 08:10:15'),
(21, 'present', 5, '2021-09-04 08:23:45', '2021-09-04 08:23:45'),
(22, 'present', 3, '2021-09-04 08:24:21', '2021-09-04 08:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `closed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `callback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'yes',
  `mailback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'yes',
  `appointment` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `caller`, `notes`, `task_id`, `created_at`, `updated_at`, `name`, `email`, `mobile`, `position`, `closed`, `callback`, `mailback`, `appointment`) VALUES
(2, 'Machine', 'Callback', 778, '2021-08-25 03:36:08', '2021-08-25 03:36:08', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(3, 'Human', 'Email And Callback for Follow up', 763, '2021-08-25 04:02:47', '2021-08-25 04:02:47', 'Tom', 'inquiries@cityparkmotel.com.au', '02 6921 4301', 'Realyst', 'no', 'yes', 'yes', NULL),
(4, 'Human', 'Not Interested', 761, '2021-08-25 04:06:34', '2021-08-25 04:06:34', 'Kelly', NULL, '0419445110', 'Receptionist', 'no', 'yes', 'yes', NULL),
(5, 'Machine', 'Answering Machine Need to be follow up', 760, '2021-08-25 04:08:25', '2021-08-25 04:08:25', NULL, 'pavilion.res@mantra.com.au', '(02) 6921 6411', NULL, 'no', 'yes', 'yes', NULL),
(6, 'Machine', 'Not Interested Need to be callback', 758, '2021-08-25 04:10:57', '2021-08-25 04:10:57', NULL, 'INFO@GARDENCITYWAGGA.COM.AU', '(02) 6921 3646', NULL, 'no', 'yes', 'yes', NULL),
(7, 'Machine', 'Callback Tomorrow 08/25/21 @ any time', 764, '2021-08-25 04:14:29', '2021-08-25 04:14:29', NULL, 'info@intlhotelwagga.com.au', '(02) 6971 7007', NULL, 'no', 'yes', 'yes', NULL),
(8, 'Machine', 'Answering Machine Need to be follow up', 765, '2021-08-25 04:16:21', '2021-08-25 04:16:21', NULL, 'info@chimcheroo.com.au', '0418 457 859', NULL, 'no', 'yes', 'yes', NULL),
(9, 'Machine', 'Not Interested', 766, '2021-08-25 04:18:33', '2021-08-25 04:18:33', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(10, 'Human', 'Not Interested', 761, '2021-08-25 04:20:17', '2021-08-25 04:20:17', 'Kelly', NULL, '0419445110', NULL, 'yes', 'yes', 'yes', NULL),
(11, 'Machine', 'VOICE MESSAGE', 767, '2021-08-25 04:23:19', '2021-08-25 04:23:19', NULL, 'admin@prestigecleaningwagga.com.au', '0428 487 093', NULL, 'no', 'yes', 'yes', NULL),
(12, 'No Answer', 'No Answer Need To get A call back', 768, '2021-08-25 04:27:38', '2021-08-25 04:27:38', NULL, NULL, '0466 973 954', NULL, 'no', 'yes', 'yes', NULL),
(13, 'Machine', 'Not Interested', 769, '2021-08-25 04:28:51', '2021-08-25 04:28:51', NULL, NULL, '(02) 6921 6121', NULL, 'yes', 'yes', 'yes', NULL),
(14, 'Machine', 'VOICE MESSAGE Need to Get Follow Up', 771, '2021-08-25 04:34:48', '2021-08-25 04:34:48', NULL, NULL, '02 6921 5726', NULL, 'no', 'yes', 'yes', NULL),
(15, 'Human', 'Got Email Need to be Follow up', 772, '2021-08-25 05:20:53', '2021-08-25 05:20:53', NULL, 'jbhifiwagawaga@jbhifi.com.au', '(02) 6932 8700', NULL, 'no', 'yes', 'yes', NULL),
(18, 'Human', 'Email and Need to be follow up', 756, '2021-08-25 05:53:00', '2021-08-25 05:53:00', NULL, 'derricksautomotive@gmail.com', '(02) 6925 2055', NULL, 'no', 'yes', 'yes', NULL),
(19, 'Machine', 'voice mail', 783, '2021-08-25 06:14:47', '2021-08-25 06:14:47', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(20, 'Machine', 'Voice mail', 785, '2021-08-25 06:18:41', '2021-08-25 06:18:41', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(21, 'Machine', 'Voice mail', 784, '2021-08-25 06:19:18', '2021-08-25 06:19:18', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(22, 'Human', 'Not interested', 786, '2021-08-25 06:21:29', '2021-08-25 06:21:29', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(23, 'Human', 'Not Interested', 787, '2021-08-25 06:25:03', '2021-08-25 06:25:03', NULL, 'info@gse.net.au', NULL, NULL, 'yes', 'yes', 'yes', NULL),
(24, 'Machine', 'Voice Mail Need to Be Follow up', 788, '2021-08-25 06:26:31', '2021-08-25 06:26:31', NULL, NULL, '0418 692 555', NULL, 'no', 'yes', 'yes', NULL),
(25, 'Machine', 'Voice Mail Need to be Follow up', 790, '2021-08-25 06:27:54', '2021-08-25 06:27:54', NULL, NULL, '0438 279 126', NULL, 'no', 'yes', 'yes', NULL),
(26, 'Human', 'Not Interested', 793, '2021-08-25 06:51:19', '2021-08-25 06:51:19', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(27, 'Human', 'Not Interested', 796, '2021-08-25 06:58:08', '2021-08-25 06:58:08', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(28, 'Human', 'they will call us back in this number 0422685524\r\nand to sir garry hill number  0423450493', 838, '2021-08-26 03:29:04', '2021-08-26 03:29:04', 'leah', NULL, NULL, 'personeel incharge', 'no', 'yes', 'yes', NULL),
(29, 'Human', 'not interested', 839, '2021-08-26 03:31:34', '2021-08-26 03:31:34', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(30, 'Machine', 'call back', 843, '2021-08-26 03:48:20', '2021-08-26 03:48:20', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(31, 'Machine', 'call back', 842, '2021-08-26 03:50:55', '2021-08-26 03:50:55', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(32, 'Machine', 'callback voice mail', 844, '2021-08-26 03:53:04', '2021-08-26 03:53:04', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(33, 'Human', 'not interested', 841, '2021-08-26 03:54:31', '2021-08-26 03:54:31', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(34, 'Human', 'not interested', 840, '2021-08-26 03:57:19', '2021-08-26 03:57:19', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(35, 'Human', 'not interested', 837, '2021-08-26 03:59:23', '2021-08-26 03:59:23', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(36, 'Human', 'not interested', 836, '2021-08-26 04:00:51', '2021-08-26 04:00:51', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(37, 'Human', 'callback tomorrow @12noon', 835, '2021-08-26 04:03:22', '2021-08-26 04:03:22', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(38, 'Machine', 'voice mail', 845, '2021-08-26 04:10:42', '2021-08-26 04:10:42', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(39, 'Machine', 'voice mail', 846, '2021-08-26 04:12:38', '2021-08-26 04:12:38', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(40, 'Machine', 'voice mail', 834, '2021-08-26 04:27:13', '2021-08-26 04:27:13', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(41, 'Machine', 'voice mail - lockdown-', 848, '2021-08-26 05:31:41', '2021-08-26 05:31:41', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(42, 'Machine', 'voicemail', 849, '2021-08-26 05:33:35', '2021-08-26 05:33:35', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(43, 'Human', 'not available', 850, '2021-08-26 05:36:36', '2021-08-26 05:36:36', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(44, 'Human', 'not available busy', 833, '2021-08-26 05:38:17', '2021-08-26 05:38:17', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(45, 'Human', 'busy - for callback-', 832, '2021-08-26 05:41:22', '2021-08-26 05:41:22', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(46, 'Human', 'busy - call us back-', 831, '2021-08-26 05:46:06', '2021-08-26 05:46:06', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(47, 'Human', 'send email\r\nmanager not available', 830, '2021-08-26 05:51:47', '2021-08-26 05:51:47', 'Sharon', NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(48, 'Machine', 'voicemail', 853, '2021-08-26 05:56:33', '2021-08-26 05:56:33', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(49, 'Human', 'manager not available on leave', 855, '2021-08-26 05:58:58', '2021-08-26 05:58:58', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(50, 'Human', 'not interested', 854, '2021-08-26 06:02:57', '2021-08-26 06:02:57', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(51, 'Human', 'not available\r\n- leave messagge-', 856, '2021-08-26 06:07:20', '2021-08-26 06:07:20', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(52, 'Human', 'not interested', 858, '2021-08-26 06:15:53', '2021-08-26 06:15:53', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(53, 'Human', 'not interested', 859, '2021-08-26 06:19:42', '2021-08-26 06:19:42', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(54, 'No Answer', 'no answer', 857, '2021-08-26 06:22:36', '2021-08-26 06:22:36', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(55, 'Machine', 'voice mail', 860, '2021-08-26 06:25:45', '2021-08-26 06:25:45', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(56, 'Human', 'email\r\ncall us back', 852, '2021-08-26 06:31:36', '2021-08-26 06:31:36', 'Angela', NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(57, 'Machine', 'voicemail', 865, '2021-08-26 06:42:03', '2021-08-26 06:42:03', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(58, 'Machine', 'voice mail', 866, '2021-08-26 06:47:58', '2021-08-26 06:47:58', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(59, 'No Answer', 'no answer', 867, '2021-08-26 06:57:20', '2021-08-26 06:57:20', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(60, 'Human', 'not interested', 864, '2021-08-26 06:59:22', '2021-08-26 06:59:22', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(61, 'Machine', 'voicemail', 868, '2021-08-26 07:01:13', '2021-08-26 07:01:13', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(62, 'Human', 'not interested', 869, '2021-08-26 07:02:25', '2021-08-26 07:02:25', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(63, 'No Answer', 'no answer not connected', 863, '2021-08-26 07:03:48', '2021-08-26 07:03:48', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(64, 'Machine', 'voice mail', 871, '2021-08-26 07:06:26', '2021-08-26 07:06:26', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(65, 'Machine', 'voicemail', 872, '2021-08-26 07:09:09', '2021-08-26 07:09:09', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(66, 'Human', 'not interested', 873, '2021-08-26 07:12:05', '2021-08-26 07:12:05', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(67, 'No Answer', 'no answer', 870, '2021-08-26 07:14:50', '2021-08-26 07:14:50', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(68, 'Machine', 'voice mail', 862, '2021-08-26 07:17:41', '2021-08-26 07:17:41', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(69, 'Machine', 'voice mail', 874, '2021-08-27 03:34:37', '2021-08-27 03:34:37', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(70, 'Human', 'not interested', 875, '2021-08-27 03:36:38', '2021-08-27 03:36:38', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(71, 'Machine', 'no answer', 876, '2021-08-27 03:38:29', '2021-08-27 03:38:29', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(72, 'Human', 'call back @2pm', 829, '2021-08-27 03:42:22', '2021-08-27 03:42:22', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(73, 'Human', 'call back 2pm', 828, '2021-08-27 03:53:57', '2021-08-27 03:53:57', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(74, 'Machine', 'voice mail', 877, '2021-08-27 06:02:28', '2021-08-27 06:02:28', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(75, 'Human', 'call back', 878, '2021-08-27 06:15:14', '2021-08-27 06:15:14', 'jess', NULL, NULL, 'receptionist', 'no', 'yes', 'yes', NULL),
(76, 'Human', 'not interested', 879, '2021-08-27 06:17:50', '2021-08-27 06:17:50', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL),
(77, 'Machine', 'no answer', 880, '2021-08-27 06:19:38', '2021-08-27 06:30:10', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(78, 'Human', 'they call us back', 881, '2021-08-27 06:47:33', '2021-08-27 06:47:33', 'jack', NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(79, 'Machine', 'voicemail', 882, '2021-08-27 06:52:33', '2021-08-27 06:52:33', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(80, 'Human', 'email', 883, '2021-08-27 06:56:50', '2021-08-27 06:56:50', 'owner', NULL, NULL, 'owner', 'no', 'no', 'yes', NULL),
(81, 'No Answer', 'no answer', 884, '2021-08-27 06:58:23', '2021-08-27 06:58:23', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(82, 'Machine', 'voicemail', 885, '2021-08-27 07:00:49', '2021-08-27 07:00:49', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(83, 'Human', 'not interested', 886, '2021-08-27 07:07:25', '2021-08-27 07:07:25', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(84, 'Human', 'us callback', 887, '2021-08-27 07:41:33', '2021-08-27 07:41:33', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(86, 'No Answer', 'no answer', 889, '2021-08-27 07:50:01', '2021-08-27 07:50:01', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(87, 'Machine', 'voicemail', 890, '2021-08-27 07:51:58', '2021-08-27 07:51:58', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(88, 'Machine', NULL, 861, '2021-08-27 07:54:58', '2021-08-27 07:54:58', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(93, 'Machine', 'voice mail', 888, '2021-08-28 02:44:27', '2021-08-28 02:44:27', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL),
(94, 'Human', 'not interested', 916, '2021-08-28 03:14:24', '2021-08-28 03:14:24', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL),
(95, 'Human', 'email', 915, '2021-08-28 03:25:23', '2021-08-28 03:25:23', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(96, 'Human', NULL, 914, '2021-08-28 03:27:38', '2021-08-28 03:27:38', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(97, 'Human', NULL, 913, '2021-08-28 03:30:43', '2021-08-28 03:30:43', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(98, 'Machine', 'voice mail', 912, '2021-08-28 03:33:54', '2021-08-28 03:33:54', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', NULL),
(99, 'Human', 'email', 911, '2021-08-28 03:44:42', '2021-08-28 03:44:42', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(100, 'Human', 'not interested', 924, '2021-08-28 03:47:43', '2021-08-28 03:47:43', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(101, 'Machine', 'voicemail', 891, '2021-08-28 03:51:26', '2021-08-28 03:51:26', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(102, 'Human', 'not interested', 892, '2021-08-28 03:53:42', '2021-08-28 03:53:42', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(103, 'Human', 'not interested', 893, '2021-08-28 03:55:21', '2021-08-28 03:55:21', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(104, 'Human', 'callback today 08/27/21', 894, '2021-08-28 04:01:06', '2021-08-28 04:01:06', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-08-27 08:00:00'),
(106, 'Human', 'send email', 895, '2021-08-28 04:07:05', '2021-08-28 04:07:05', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(107, 'Machine', NULL, 827, '2021-08-28 04:08:26', '2021-08-28 04:08:26', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(108, 'No Answer', 'no answer', 897, '2021-08-28 04:08:52', '2021-08-28 04:08:52', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(109, 'Machine', 'number disconnected', 896, '2021-08-28 04:09:48', '2021-08-28 04:09:48', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(110, 'Human', 'not interested', 898, '2021-08-28 04:12:01', '2021-08-28 04:12:01', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(111, 'Human', 'callback', 899, '2021-08-28 04:15:57', '2021-08-28 04:15:57', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-08-27 08:00:00'),
(112, 'Human', 'email', 825, '2021-08-28 04:19:28', '2021-08-28 04:19:28', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(113, 'Human', 'call back', 900, '2021-08-28 04:29:58', '2021-08-28 04:29:58', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(114, 'Human', 'not interested', 901, '2021-08-28 05:33:41', '2021-08-28 05:33:41', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(115, 'Machine', 'not interested', 902, '2021-08-28 05:35:19', '2021-08-28 05:35:19', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(116, 'Human', 'not interested', 903, '2021-08-28 05:38:00', '2021-08-28 05:38:00', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(117, 'Human', 'Not interested', 812, '2021-08-28 05:42:23', '2021-08-28 05:42:23', NULL, NULL, NULL, NULL, 'yes', 'no', 'no', '2021-08-27 08:00:00'),
(118, 'Human', 'Email', 910, '2021-08-28 05:48:08', '2021-08-28 05:48:08', 'David Shaw', 'admin@lpsww.nsw.edu.au', '02 6923 8100', 'Admin', 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(119, 'Human', 'email', 910, '2021-08-28 05:51:01', '2021-08-28 05:51:01', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(120, 'Machine', 'voice mail', 907, '2021-08-28 05:55:13', '2021-08-28 05:55:13', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(121, 'Machine', 'voicemail', 917, '2021-08-28 06:01:13', '2021-08-28 06:01:13', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(122, 'Machine', 'not interested', 918, '2021-08-28 07:10:52', '2021-08-28 07:10:52', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(123, 'No Answer', 'no connected', 919, '2021-08-28 07:13:08', '2021-08-28 07:13:08', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(124, 'Machine', 'voicemail', 920, '2021-08-28 07:16:48', '2021-08-28 07:16:48', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(125, 'Human', 'callback', 921, '2021-08-28 07:20:51', '2021-08-28 07:20:51', 'Rebecca', NULL, '(02) 6921 2886', NULL, 'no', 'yes', 'yes', '2021-08-30 08:00:00'),
(126, 'No Answer', 'no answer', 922, '2021-08-28 07:23:16', '2021-08-28 07:23:16', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-27 08:00:00'),
(127, 'Human', 'callback', 923, '2021-08-28 07:25:46', '2021-08-28 07:25:46', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-08-30 08:00:00'),
(128, 'Human', NULL, 927, '2021-08-28 07:29:54', '2021-08-28 07:29:54', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-08-30 08:00:00'),
(129, 'Machine', 'leave a message', 776, '2021-08-28 07:30:13', '2021-08-28 07:30:13', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-08-27 08:00:00'),
(130, 'Human', 'not interested', 929, '2021-08-28 07:33:32', '2021-08-28 07:33:32', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-27 08:00:00'),
(131, 'Human', 'not interested', 947, '2021-08-31 02:34:20', '2021-08-31 02:34:20', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(132, 'Human', 'not interested', 946, '2021-08-31 02:39:40', '2021-08-31 02:39:40', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(133, 'Human', 'not interested', 944, '2021-08-31 02:50:49', '2021-08-31 02:50:49', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(134, 'Human', 'call back', 925, '2021-08-31 03:33:16', '2021-08-31 03:33:16', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(135, 'No Answer', 'no answer', 948, '2021-08-31 03:35:50', '2021-08-31 03:35:50', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(136, 'Machine', 'no answer', 949, '2021-08-31 03:37:43', '2021-08-31 03:37:43', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(137, 'Machine', 'no answer', 950, '2021-08-31 03:40:03', '2021-08-31 03:40:03', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(138, 'Human', 'call back', 951, '2021-08-31 03:46:49', '2021-08-31 03:58:40', 'Dario', 'piecarol@grill.com.au', '04 1348 6668', 'Manager', 'no', 'yes', 'yes', '2021-09-01 08:00:00'),
(139, 'Machine', 'not availabale', 952, '2021-08-31 03:48:42', '2021-08-31 03:48:42', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(140, 'Machine', 'voice mail', 953, '2021-08-31 03:51:44', '2021-08-31 03:51:44', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(141, 'Human', 'email', 954, '2021-08-31 03:58:11', '2021-08-31 04:31:46', 'Dario', 'dmc@knightriverina.com.au', 'Diana', 'Manager', 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(142, 'Human', 'busy', 974, '2021-08-31 04:52:11', '2021-08-31 04:52:11', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(143, 'Machine', 'leave a message', 972, '2021-08-31 04:55:03', '2021-08-31 04:55:03', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(144, 'Human', 'Email and Callback', 955, '2021-08-31 04:55:36', '2021-08-31 05:09:00', 'Aron', 'admin@waggaworkwear.com.au', '(02) 6925 2699', 'Manager', 'no', 'no', 'yes', '2021-09-06 08:00:00'),
(145, 'No Answer', NULL, 971, '2021-08-31 04:57:39', '2021-08-31 04:57:39', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(146, 'No Answer', NULL, 970, '2021-08-31 04:59:12', '2021-08-31 04:59:12', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(147, 'No Answer', NULL, 969, '2021-08-31 05:00:45', '2021-08-31 05:00:45', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(148, 'Human', 'email,  us call back', 956, '2021-08-31 05:02:20', '2021-08-31 05:24:20', 'Kylie', 'podiatry@activefootclinic.com.au', '(02) 6925 8637', 'Manager', 'no', 'no', 'yes', '2021-09-06 08:00:00'),
(149, 'Machine', 'leave a message', 968, '2021-08-31 05:02:24', '2021-08-31 05:02:24', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(150, 'Machine', 'call back', 975, '2021-08-31 05:08:11', '2021-08-31 05:08:11', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(151, 'Machine', 'leave a message', 967, '2021-08-31 05:14:21', '2021-08-31 05:14:21', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(152, 'Machine', 'call back', 976, '2021-08-31 05:14:58', '2021-08-31 05:46:52', NULL, NULL, '(02) 6921 9427', NULL, 'no', 'yes', 'yes', '2021-09-06 08:00:00'),
(153, 'Human', 'not interested', 966, '2021-08-31 05:16:37', '2021-08-31 05:16:37', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(154, 'Machine', 'leave a message', 965, '2021-08-31 05:30:02', '2021-08-31 05:30:02', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(155, 'No Answer', NULL, 964, '2021-08-31 05:32:19', '2021-08-31 05:32:19', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(156, 'No Answer', NULL, 963, '2021-08-31 05:34:18', '2021-08-31 05:34:18', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(157, 'Machine', 'leave a message', 962, '2021-08-31 05:46:12', '2021-08-31 05:46:12', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(158, 'No Answer', 'no answer', 977, '2021-08-31 05:58:57', '2021-08-31 05:58:57', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(159, 'Human', NULL, 978, '2021-08-31 06:08:59', '2021-08-31 06:08:59', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-08-30 08:00:00'),
(160, 'Machine', NULL, 961, '2021-08-31 06:22:25', '2021-08-31 06:22:25', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(161, 'Human', 'Call Ryan', 737, '2021-08-31 06:23:14', '2021-08-31 06:23:14', 'Ryan', NULL, '03 9799 5777', 'Branch Manager', 'no', 'yes', 'no', '2021-09-06 08:00:00'),
(162, 'Machine', NULL, 987, '2021-08-31 06:35:27', '2021-08-31 06:35:27', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(163, 'Machine', 'voice mail', 979, '2021-08-31 06:36:32', '2021-08-31 06:36:32', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(164, 'No Answer', 'disconnected', 980, '2021-08-31 06:37:32', '2021-08-31 06:37:32', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(165, 'No Answer', 'no answer', 981, '2021-08-31 06:38:55', '2021-08-31 06:38:55', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(166, 'No Answer', 'no answer', 982, '2021-08-31 06:42:36', '2021-08-31 06:42:36', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(167, 'Human', 'not interested', 986, '2021-08-31 06:42:41', '2021-08-31 06:42:41', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(168, 'Machine', 'voicemail', 983, '2021-08-31 06:46:51', '2021-08-31 06:46:51', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(169, 'Machine', 'no answer / voice mail', 984, '2021-08-31 06:49:44', '2021-08-31 06:50:08', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-09-06 08:00:00'),
(170, 'No Answer', 'disconnected', 988, '2021-08-31 06:51:19', '2021-08-31 06:51:19', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-30 08:00:00'),
(171, 'Human', 'call back', 985, '2021-08-31 06:55:02', '2021-08-31 06:55:02', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-08-30 08:00:00'),
(172, 'Human', 'busy', 989, '2021-08-31 06:57:19', '2021-08-31 06:57:19', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-08-30 08:00:00'),
(173, 'Human', 'call back / email', 990, '2021-08-31 07:04:12', '2021-08-31 07:08:28', NULL, 'wagga@unitedfasteners.com.au', '02 9131 3333', NULL, 'no', 'yes', 'yes', '2021-09-06 08:00:00'),
(174, 'Machine', 'voicemail', 991, '2021-08-31 07:10:58', '2021-08-31 07:10:58', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(175, 'Machine', 'voicemail', 992, '2021-08-31 07:13:11', '2021-08-31 07:13:11', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-30 08:00:00'),
(176, 'Human', 'Follow Up Call Next Week', 996, '2021-09-01 02:46:09', '2021-09-01 03:03:52', NULL, NULL, NULL, NULL, 'no', 'yes', 'no', '2021-09-07 08:00:00'),
(177, 'Human', 'email', 995, '2021-09-01 02:56:37', '2021-09-01 02:56:37', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(178, 'Human', 'not interested', 994, '2021-09-01 03:01:27', '2021-09-01 03:01:27', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(179, 'Human', 'email', 1000, '2021-09-01 03:10:22', '2021-09-01 03:10:22', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(180, 'No Answer', 'not interested', 1002, '2021-09-01 03:14:50', '2021-09-01 03:14:50', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(181, 'No Answer', NULL, 1003, '2021-09-01 03:16:56', '2021-09-01 03:16:56', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(182, 'Human', 'not interested', 999, '2021-09-01 03:20:02', '2021-09-01 03:20:02', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(183, 'No Answer', NULL, 1009, '2021-09-01 03:39:20', '2021-09-01 03:39:20', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(184, 'Machine', 'leave a message', 1012, '2021-09-01 03:49:13', '2021-09-01 03:49:13', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(185, 'No Answer', NULL, 1013, '2021-09-01 04:45:57', '2021-09-01 04:45:57', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(186, 'No Answer', NULL, 1011, '2021-09-01 04:48:46', '2021-09-01 04:48:46', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(187, 'Human', 'not interested', 1014, '2021-09-01 04:52:19', '2021-09-01 04:52:19', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(188, 'No Answer', NULL, 1016, '2021-09-01 05:01:34', '2021-09-01 05:01:34', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(189, 'Machine', 'leave a message', 1015, '2021-09-01 05:03:29', '2021-09-01 05:03:29', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(190, 'Machine', 'answering machine', 1010, '2021-09-01 05:06:42', '2021-09-01 05:06:42', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(191, 'Human', 'not interested', 1008, '2021-09-01 05:08:51', '2021-09-01 05:08:51', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(192, 'Human', 'not interested', 1017, '2021-09-01 05:10:43', '2021-09-01 05:10:43', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(193, 'Machine', 'Answering machine', 1020, '2021-09-01 05:46:00', '2021-09-01 05:46:00', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(194, 'Machine', 'answering machine', 1022, '2021-09-01 05:50:10', '2021-09-01 05:50:10', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(195, 'Machine', NULL, 1024, '2021-09-01 05:53:02', '2021-09-01 05:53:02', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(196, 'Machine', NULL, 1023, '2021-09-01 05:53:17', '2021-09-01 05:53:17', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(197, 'No Answer', NULL, 1021, '2021-09-01 05:54:28', '2021-09-01 05:54:28', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(198, 'Machine', NULL, 1025, '2021-09-01 05:57:35', '2021-09-01 05:57:35', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(199, 'Human', 'email', 1027, '2021-09-01 06:02:16', '2021-09-01 06:02:16', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(200, 'Human', 'not interested', 1030, '2021-09-01 06:43:52', '2021-09-01 06:44:13', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(201, 'Machine', 'leave a message', 1029, '2021-09-01 06:47:25', '2021-09-01 06:47:25', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(202, 'Human', 'Not interested', 1034, '2021-09-01 06:53:18', '2021-09-01 06:53:18', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(203, 'Machine', 'leave a message', 1039, '2021-09-01 06:58:46', '2021-09-01 06:58:46', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(204, 'Human', 'not interested', 1038, '2021-09-01 07:03:53', '2021-09-01 07:03:53', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(205, 'Machine', '\'the number you have dial is notnot connected\'', 1036, '2021-09-01 07:18:26', '2021-09-01 07:18:26', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(206, 'Machine', 'leave a message', 1035, '2021-09-01 07:24:34', '2021-09-01 07:24:34', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(207, 'Machine', NULL, 1033, '2021-09-01 07:26:03', '2021-09-01 07:26:03', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(208, 'Human', 'Language Barrier', 1032, '2021-09-01 07:28:03', '2021-09-01 07:28:03', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(209, 'Machine', 'leave a message', 1031, '2021-09-01 07:38:26', '2021-09-01 07:38:26', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-08-31 08:00:00'),
(210, 'Human', 'not interested', 1042, '2021-09-01 07:41:56', '2021-09-01 07:41:56', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-08-31 08:00:00'),
(211, 'Human', 'Not interested', 1041, '2021-09-02 02:51:58', '2021-09-02 02:51:58', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(212, 'Human', 'call back tomorrow', 1040, '2021-09-02 03:09:57', '2021-09-02 03:09:57', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-02 08:00:00'),
(213, 'Human', 'not interested', 1043, '2021-09-02 04:06:23', '2021-09-02 04:06:23', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(214, 'Machine', 'not attended', 1044, '2021-09-02 04:16:09', '2021-09-02 04:16:09', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(215, 'Human', 'not interested', 1050, '2021-09-02 04:51:45', '2021-09-02 04:51:45', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(216, 'Human', 'hung up the call', 1049, '2021-09-02 04:53:29', '2021-09-02 04:53:29', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(217, 'Machine', 'leave a message', 1051, '2021-09-02 04:56:02', '2021-09-02 04:56:02', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(218, 'Machine', 'leave a message', 1053, '2021-09-02 05:01:03', '2021-09-02 05:01:03', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(219, 'Human', 'not interested', 1052, '2021-09-02 05:13:22', '2021-09-02 05:13:22', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(220, 'Human', 'not interested', 1048, '2021-09-02 05:15:10', '2021-09-02 05:15:10', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(221, 'Human', 'leave a message', 1047, '2021-09-02 05:27:24', '2021-09-02 05:27:24', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(222, 'Human', 'hung up the call', 1046, '2021-09-02 05:34:05', '2021-09-02 05:34:05', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(223, 'Human', 'not interested', 1045, '2021-09-02 05:35:25', '2021-09-02 05:35:25', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(224, 'Human', 'not interested', 1062, '2021-09-02 05:42:25', '2021-09-02 05:42:25', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(225, 'Human', 'hung up call', 1064, '2021-09-02 05:49:02', '2021-09-02 05:49:02', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(226, 'Machine', 'leave a message', 1063, '2021-09-02 05:51:07', '2021-09-02 05:51:07', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(227, 'Human', 'email', 1061, '2021-09-02 05:54:35', '2021-09-02 06:29:39', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(228, 'Human', 'email', 1060, '2021-09-02 06:02:41', '2021-09-02 06:02:41', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(229, 'No Answer', 'online', 1059, '2021-09-02 06:03:38', '2021-09-02 06:03:38', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(230, 'Human', 'not interseted', 1058, '2021-09-02 06:05:42', '2021-09-02 06:05:42', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(231, 'Machine', 'not connected', 1057, '2021-09-02 06:06:37', '2021-09-02 06:06:37', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(232, 'Machine', 'leave a message', 1056, '2021-09-02 06:08:19', '2021-09-02 06:08:19', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(233, 'Human', 'hung up the call', 1055, '2021-09-02 06:32:39', '2021-09-02 06:32:39', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(234, 'Machine', 'leave a message', 1054, '2021-09-02 06:34:53', '2021-09-02 06:34:53', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(235, 'Human', 'not interested', 1074, '2021-09-02 06:38:34', '2021-09-02 06:38:34', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(236, 'Human', 'hung up the call', 1073, '2021-09-02 06:50:37', '2021-09-02 06:50:37', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(237, 'Machine', 'leave a message', 1072, '2021-09-02 07:01:21', '2021-09-02 07:01:21', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(238, 'Human', 'not interested', 1071, '2021-09-02 07:03:31', '2021-09-02 07:03:31', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(239, 'No Answer', 'offline', 1070, '2021-09-02 07:04:39', '2021-09-02 07:04:39', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(240, 'Human', 'hung up the call', 1069, '2021-09-02 07:06:00', '2021-09-02 07:06:00', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(241, 'No Answer', 'offline', 1068, '2021-09-02 07:14:47', '2021-09-02 07:14:47', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(242, 'Human', 'hung up the call', 1067, '2021-09-02 07:17:52', '2021-09-02 07:17:52', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(243, 'Machine', 'leave a message', 1066, '2021-09-02 07:24:55', '2021-09-02 07:24:55', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(244, 'Machine', 'leave a message', 1083, '2021-09-02 07:28:13', '2021-09-02 07:28:13', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(245, 'Human', 'not interested', 1082, '2021-09-02 07:33:01', '2021-09-02 07:33:01', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(246, 'Machine', NULL, 1081, '2021-09-02 07:36:11', '2021-09-02 07:36:11', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-01 08:00:00'),
(247, 'Human', 'hung up the call', 1087, '2021-09-02 07:50:22', '2021-09-02 07:50:22', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-01 08:00:00'),
(248, 'Machine', 'voicemail', 1084, '2021-09-04 03:35:07', '2021-09-04 03:35:07', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00'),
(249, 'Human', 'not interested', 1111, '2021-09-04 03:38:51', '2021-09-04 03:38:51', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00'),
(250, 'Human', NULL, 1110, '2021-09-04 03:42:46', '2021-09-04 03:42:46', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', '2021-09-03 08:00:00'),
(251, 'Machine', NULL, 1109, '2021-09-04 03:45:26', '2021-09-04 03:45:26', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-03 08:00:00'),
(252, 'Machine', 'follow up', 1108, '2021-09-04 06:11:23', '2021-09-04 06:11:23', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00'),
(253, 'Human', 'not interested', 1107, '2021-09-04 06:14:56', '2021-09-04 06:14:56', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-03 08:00:00'),
(254, 'Machine', 'not interested', 1106, '2021-09-04 06:17:24', '2021-09-04 06:17:24', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-03 08:00:00'),
(255, 'Machine', 'voice mail', 1105, '2021-09-04 06:20:27', '2021-09-04 06:20:27', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00'),
(256, 'Human', 'not interested', 1104, '2021-09-04 06:22:16', '2021-09-04 06:22:16', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', '2021-09-03 08:00:00'),
(257, 'Human', 'not interested', 1103, '2021-09-04 06:23:45', '2021-09-04 06:23:45', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00'),
(258, 'Machine', 'voice mail', 1102, '2021-09-04 06:27:17', '2021-09-04 06:27:17', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00'),
(259, 'Machine', 'voice mail', 1101, '2021-09-04 06:30:58', '2021-09-04 06:30:58', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00'),
(260, 'Human', 'email', 1100, '2021-09-04 06:32:47', '2021-09-04 06:32:47', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00'),
(261, 'Machine', 'not interested', 1099, '2021-09-04 06:34:41', '2021-09-04 06:34:41', NULL, NULL, NULL, NULL, 'no', 'no', 'yes', '2021-09-03 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Local Resident',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'free',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `business_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jstat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `aid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `invoice_date` timestamp NULL DEFAULT NULL,
  `payer_id` bigint(20) DEFAULT NULL,
  `payee_id` bigint(20) DEFAULT NULL,
  `balance_due` decimal(8,2) DEFAULT 0.00,
  `amount_paid` decimal(8,2) DEFAULT 0.00,
  `amount_enclosed` decimal(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cost` decimal(8,2) DEFAULT 0.00,
  `quantity` int(11) DEFAULT 0,
  `sub_total` decimal(8,2) DEFAULT 0.00,
  `invoice_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_27_143751_create_articles_table', 1),
(5, '2021_07_27_143816_create_advertisements_table', 1),
(6, '2021_07_27_143830_create_events_table', 1),
(7, '2021_07_30_071031_add_jstat_to_advertisements_table', 1),
(8, '2021_07_30_071402_add_jstat_to_articles_table', 1),
(9, '2021_07_30_071556_add_jstat_to_events_table', 1),
(10, '2021_07_30_114112_add_aid_to_advertisements_table', 1),
(11, '2021_07_30_114202_add_aid_to_articles_table', 1),
(12, '2021_07_30_114232_add_aid_to_events_table', 1),
(13, '2021_07_30_144346_add_affid_to_users_table', 1),
(14, '2021_08_04_145209_create_clients_table', 1),
(15, '2021_08_06_041737_create_partners_table', 1),
(16, '2021_08_08_094018_add_dates_to_partners_table', 1),
(17, '2021_08_10_115829_create_tasks_table', 1),
(18, '2021_08_16_131504_create_items_table', 2),
(19, '2021_08_16_135027_create_payers_table', 2),
(20, '2021_08_16_135039_create_payees_table', 2),
(21, '2021_08_16_181937_create_invoices_table', 2),
(25, '2021_08_23_224720_create_calls_table', 3),
(26, '2021_08_24_180147_add_details_to_calls_table', 4),
(27, '2021_08_26_223639_add_callbacks_to_calls_table', 5),
(28, '2021_08_27_183008_add_appointment_to_calls_table', 6),
(29, '2021_08_31_193001_create_attendances_table', 7),
(30, '2021_08_31_215716_add_dircat_to_tasks_table', 8),
(31, '2021_09_03_194845_add_town_to_tasks_table', 9),
(33, '2021_09_03_225510_add_details_to_clients_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_share` decimal(8,2) NOT NULL DEFAULT 0.00,
  `company_agent_share` decimal(8,2) NOT NULL DEFAULT 0.00,
  `company_affiliate_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_contracted` timestamp NULL DEFAULT NULL,
  `date_terminated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `company_name`, `company_share`, `company_agent_share`, `company_affiliate_id`, `created_at`, `updated_at`, `date_contracted`, `date_terminated`) VALUES
(1, 'LRG', '900.00', '400.00', 'LRG-ID', '2021-08-11 19:48:13', '2021-08-11 19:48:13', '2021-07-19 19:48:13', '2022-01-20 19:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payees`
--

CREATE TABLE `payees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payers`
--

CREATE TABLE `payers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payers`
--

INSERT INTO `payers` (`id`, `company_name`, `owner`, `address`, `postcode`, `country`, `tax_id`, `created_at`, `updated_at`) VALUES
(1, 'LRG Solutions', 'Noreen Tambiac', 'Prk. 11 Brgy. Lubogan, Toril, Davao City', '8000', 'Philippines', '265-193-535', '2021-08-19 03:48:38', '2021-08-19 03:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `strategy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `partner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `aid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `transaction` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `directory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `address`, `email`, `phone`, `mobile`, `website`, `strategy`, `response`, `status`, `partner`, `aid`, `transaction`, `created_at`, `updated_at`, `directory`, `category`, `town`) VALUES
(1, 'Porthole Records', '85 Commercial Road, Port Adelaide', 'contact@portholerecords.com', '(08) 8241 0155', '', 'https://portholerecords.com/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:19:05', '2021-08-12 04:19:56', '', '', ''),
(2, 'Umart', '225 South Road, Ridleyton', 'corporate@umart.com.au', '617 3369 3928', '', 'https://www.umart.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-12 04:21:54', '2021-08-12 06:06:45', '', '', ''),
(3, 'Hanamura Japanese Restaurant', '185 The Parade, Norwood', 'norwood@hanamura.com.au', '0405 728 676', '', 'https://hanamura.com.au/norwood/about-us/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:24:32', '2021-08-12 04:24:32', '', '', ''),
(4, 'Electrical White Goods Centre', '121 Grand Junction Road, Rosewater', 'electricalwhitegoods@yahoo.com.au', '(08) 8447 1688', '', 'https://www.electricalwhitegoods.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:27:56', '2021-08-12 04:27:56', '', '', ''),
(5, 'Bar Torino', '158 Hutt Street, Adelaide', 'hello@bartorino.com.au', '(08) 8155 6010', '', 'https://www.bartorino.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:29:22', '2021-08-12 04:29:22', '', '', ''),
(6, 'Bridal Fusion by Mascia', 'SHOP 5/1 Payneham Road, College Park', 'contact@bridalfusionbymascia.com.au', '(08) 8276 7189', '', 'http://www.bridalfusionbymascia.com.au/', 'Email', 'no', '', '', '1', 1, '2021-08-12 04:29:27', '2021-08-12 04:29:27', '', '', ''),
(7, 'Wish Hair & Body', '49 Sandison Terrace, Glenelg North', 'info@wishhairandbody.com.au', '(08) 8294 3114', '', 'https://www.wishhairandbody.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:31:01', '2021-08-12 04:31:01', '', '', ''),
(8, 'Bio-Mechanics Cycles & Repairs', '260 Waymouth Street, Adelaide', 'info@bmcr.com.au', '(08) 8410 9499', '', 'www.bmcr.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 04:31:52', '2021-08-12 04:31:52', '', '', ''),
(9, 'Star Car Wash - Westfield Marion', 'Westfield, 297 Diagonal Road, Oaklands Park', 'oosman@starcarwash.com.au', '(08) 8296 8387', '', 'https://www.starcarwash.com.au/centres/westfield-marion/?utm_source=google&utm_medium=organic&utm_campaign=gmb-listing', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:32:54', '2021-08-12 04:32:54', '', '', ''),
(10, 'Furniture By The Sea', '131/135 Semaphore Road, Exeter', 'furnbysea@hotmail.com', '(08) 8242 2277', '', 'www.furniturebythesea.com', 'Email', 'no', '', '', '1', 1, '2021-08-12 04:34:27', '2021-08-12 04:34:27', '', '', ''),
(11, 'Warrin Mining & Construction Equipment PTY LTD', '881 Main North Road, Pooraka', 'awallis@warrinmining.com.au', '61 8 8262 5322', '', 'https://warrinmining.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:40:30', '2021-08-12 04:40:30', '', '', ''),
(12, 'Tutt bryant Equipment', '908 Main North Road, Mawson Lakes', 'adelaide@tuttbryanthire.com.au', '(08) 8162 0900', '', 'https://tuttbryant.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:42:24', '2021-08-12 04:42:24', '', '', ''),
(13, 'First Things First Coffee', '316 Salisbury Highway Salisbury Downs 5108', NULL, '08 8258 4810', '', 'http://www.firstthingfirstcoffee.com.au', 'Social Media', 'no', '', '', '1', 1, '2021-08-12 04:44:25', '2021-08-12 04:44:25', '', '', ''),
(14, 'Adelaide Sany', '910 Main North Road Mawson Lakes SA 5095', 'sales@adelaidesany.com.au', '(08) 8122 5540', '', 'https://adelaideheavymachinery.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:45:57', '2021-08-12 04:45:57', '', '', ''),
(15, 'Dirtbags Australia', '25 Main North Rd, Medindie SA 5081', 'adelaide@dirtbagsaustralia.com.au', '08 8344 6889', '', 'www.dirtbagbaggers.com', 'Email', 'no', '', '', '1', 1, '2021-08-12 04:47:02', '2021-08-12 04:47:02', '', '', ''),
(16, 'SA Tractors', '12/160 Churchill Road North, Cavan', 'sales@satractors.com.au', '(08) 8349 7500', '', 'http://www.satractors.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:47:20', '2021-08-12 04:47:20', '', '', ''),
(17, 'Ditch Witch Cea', '260 Cormack Road, Wingfield', NULL, '(08) 8260 7911', '', 'https://www.cea.net.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:48:53', '2021-08-12 04:48:53', '', '', ''),
(18, 'The Bike Factory', '174 Gouger Street, Adelaide', 'bikefact@esc.net.au', '(08) 8231 2301', '', 'www.thebikefactory.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 04:49:49', '2021-08-12 04:49:49', '', '', ''),
(19, 'ACEquipment', '9 Senna Road, Wingfield', 'admin@acequipment.com.au', '(08) 8359 5700', '', 'https://www.acequipment.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:50:16', '2021-08-12 04:50:16', '', '', ''),
(20, 'JCB CEA', '260 Cormack Rd Wingfield SA 5013', NULL, '1300 522 232', '', 'https://www.jcbcea.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:53:09', '2021-08-12 04:53:09', '', '', ''),
(21, 'Peter Stevens Motorcycles', '221 Franklin Street, Adelaide', NULL, '08 3 8340 9495', '', 'www.peterstevens.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 04:55:13', '2021-08-12 04:55:13', '', '', ''),
(22, '1300StarPickets SA', '519 Grand Junction Road, Wingfield', 'info@1300starpickets.com.au', '1300 782 774', '', 'https://www.1300starpickets.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:56:10', '2021-08-12 04:56:10', '', '', ''),
(23, 'CaterWorks', '14 Pope Street, Beverley', 'info@caterworks.com.au', '(08) 7230 0811', '', 'https://caterworks.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:57:16', '2021-08-12 04:57:16', '', '', ''),
(24, 'Reid Bikes', '230 Pulteney Street, Adelaide', 'reidbikesphilippines@gmail.com', '(08) 8227 0011', '', 'www.reidcycles.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 04:58:44', '2021-08-12 04:58:44', '', '', ''),
(25, 'Parchem Construction Supplies', '4 Jeanes Street, Beverley', NULL, '(08) 8241 6000', '', 'https://www.parchem.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 04:58:49', '2021-08-12 04:58:49', '', '', ''),
(26, 'ITEC (Industrial Truck & Equipment Co)', '65 Manton Street, Hindmarsh', 'sales@industrialtruck.com.au', '(08) 8340 4111', '', 'https://www.industrialtruck.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:00:04', '2021-08-12 05:00:04', '', '', ''),
(27, 'Hey Bikes', 'Shop 2/353 Anzac Highway, Plympton', 'info@heybikes.com.au', '+61452232453', '', 'www.heybikes.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 05:28:03', '2021-08-12 05:28:03', '', '', ''),
(28, 'City Shelving', '43 Port Road, Thebarton', 'sales@cityshelving.com.au', '(08) 8345 1266', '', 'https://cityshelving.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:29:39', '2021-08-12 05:29:39', '', '', ''),
(29, 'Bicycle Centre Mitcham', '21-23 Belair Road, Kingswood', 'info@bicycle-centre.com.au', '(08) 8271 0692', '', 'www.bicycle-centre.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 05:29:44', '2021-08-12 05:29:44', '', '', ''),
(30, 'AdMerch', '9-11 Grove Avenue, Marleston', 'enquiries@admerch.com.au', '1300 237 467', '', 'https://admerch.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:31:10', '2021-08-12 05:31:10', '', '', ''),
(31, 'Giant Adelaide', 'Tenancy 2-3/53-67 Hindmarsh Square, Adelaide', 'adelaide@giantcycliingworld.com.au', '+61882235978', '', 'www.giantadelaide.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 05:31:43', '2021-08-12 05:31:43', '', '', ''),
(32, 'The Highlander Hotel', '647 North East Road, Gilles Plains', 'admin@highlanderhotel.com.au', '(08) 8261 5288', '', 'https://www.highlanderhotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:32:51', '2021-08-12 05:32:51', '', '', ''),
(33, 'Mawson Lakes Hotel & Function Centre', '10 Main Street, Mawson Lakes', 'reception@mawsonlakeshotel.com.au', '(08) 8360 3500', '', 'http://www.mawsonlakeshotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:34:21', '2021-08-12 05:34:21', '', '', ''),
(34, 'Walkers Arms Hotel', '36 North East Road, Walkerville', NULL, '(08) 8344 8022', '', 'http://walkersarms.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:36:50', '2021-08-12 05:36:50', '', '', ''),
(35, 'Majestic Old Lion Apartments', '9 Jerningham Street, North Adelaide', 'ola@majestichotels.com.au', '1800 779 919', '', 'https://majesticoldlionapartments.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:38:05', '2021-08-12 05:38:05', '', '', ''),
(36, 'Enfield Hotel', '184 Hampstead Road, Clearview', NULL, '(08) 8262 3944', '', 'https://www.enfieldhotel.com.au/?utm_source=google_yext&utm_medium=organic&utm_campaign=book-a-table', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:42:33', '2021-08-12 05:42:33', '', '', ''),
(37, 'Cycle Closet Adelaide', 'hop 2/122 Pirie St Door entry on, Hyde Street, Adelaide', 'sa.info@cyclecloset.com', '(08) 7226 1994', '', 'https://cyclecloset.com/', 'Email', 'no', '', '', '1', 1, '2021-08-12 05:43:33', '2021-08-12 05:43:33', '', '', ''),
(38, 'The Fire Station Inn', '80 Tynte Street, North Adelaide', 'res@adelaideheritage.com', '(08) 8267 2020', '', 'https://www.adelaideheritage.com/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:43:52', '2021-08-12 05:43:52', '', '', ''),
(39, 'Adelaide Inn', '160 O\'Connell Street, North Adelaide', 'reception@adelaideinn.com.au', '(08) 8267 5066', '', 'https://adelaideinn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:45:19', '2021-08-12 05:45:19', '', '', ''),
(40, 'Quality Inn O\'Connell', '197-199 O\'Connell Street, North Adelaid', 'reservations@oconnellin.com.au', '(08) 8239 0766', '', 'https://www.oconnellinn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:46:28', '2021-08-12 05:46:28', '', '', ''),
(41, 'Oval Hotel', 'King William Road, North Adelaide', 'enquiries@ovalhotel.com.au', '(08) 8368 9900', '', 'https://www.ovalhotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:47:58', '2021-08-12 05:47:58', '', '', ''),
(42, 'InterContinental Adelaide, an IHG Hotel', 'North Terrace, Adelaide', 'reservations.adelaide@ihg.com', '(08) 8238 2400', '', 'https://www.ihg.com/intercontinental/hotels/us/en/adelaide/adlha/hoteldetail?cm_mmc=GoogleMaps-_-IC-_-AU-_-ADLHA', 'Email', 'no', '', '', '2', 1, '2021-08-12 05:50:02', '2021-08-12 05:50:02', '', '', ''),
(43, 'Eos by SkyCity', 'Festival Drive, Station Road, Adelaide', 'info@eosbyskycity.com.au', '(08) 7077 3588', '', 'https://skycityadelaide.com.au/hotel/eos-by-skycity/', 'Email', 'yes', '', '', '2', 1, '2021-08-12 05:53:55', '2021-08-12 06:05:52', '', '', ''),
(44, 'Treadly Bike Shop', '23 Mattingley Lane, Norwood', 'info@treadlybikeshop.com.au', '(08) 8232 0158', '', 'www.treadlybikeshop.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 05:57:22', '2021-08-12 05:57:22', '', '', ''),
(45, 'Mayfair Hotel', '45 King William Street, Adelaide', 'stay@mayfairhotel.com.au', '(08) 8210 8888', '', 'https://www.mayfairhotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 06:00:11', '2021-08-12 06:00:11', '', '', ''),
(46, 'Adelaide Riviera Hotel', '31-34 North Terrace, Adelaide', 'reservations.adelaide@ihg.com', '(08) 8212 1700', '', 'https://www.adelaideriviera.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-12 06:03:53', '2021-08-12 06:03:53', '', '', ''),
(47, 'Mantra Hindmarsh Square Adelaide', '55/67 Hindmarsh Square, Adelaide', 'hindmarsh.res@mantra.com.au', '1300 092 872', '', 'https://all.accor.com/hotel/B3M5/index.en.shtml?utm_campaign=seo+maps&utm_medium=seo+maps&utm_source=google+Maps', 'Email', 'no', '', '', '2', 1, '2021-08-12 06:11:55', '2021-08-12 06:11:55', '', '', ''),
(48, 'Pullman Adelaide', '16 Hindmarsh Square, Adelaide', 'hb217-gm@accor.com', '(08) 8206 8888', '', 'https://all.accor.com/hotel/B217/index.en.shtml?utm_campaign=seo+maps&utm_medium=seo+maps&utm_source=google+Maps', 'Email', 'no', '', '', '2', 1, '2021-08-12 06:17:00', '2021-08-12 06:17:00', '', '', ''),
(49, 'Bicycle Express', '138 The Parade, Norwood', 'enquiries@bicycleexpress.com.au', '(08) 8431 5711', '', 'http://www.bicycleexpress.com.au/', 'Email', 'no', '', '', '1', 1, '2021-08-12 06:20:09', '2021-08-12 06:20:09', '', '', ''),
(50, 'Quest on Franklin', '74 Franklin Street, Adelaide', NULL, '(08) 8113 7500', '', 'https://www.questapartments.com.au/properties/sa/adelaide/quest-on-franklin/overview?utm_source=GoogleMyBusiness&utm_medium=organic&utm_campaign=questonfranklin', 'Email', 'no', '', '', '2', 1, '2021-08-12 06:21:56', '2021-08-12 06:21:56', '', '', ''),
(51, 'International Cycle Centre', '70 Payneham Road, Stepney', 'peter@internationalcycles.com.au', '(08) 8362 2609', '', 'www.facebook.com', 'Email', 'no', '', '', '1', 1, '2021-08-12 06:51:23', '2021-08-12 06:51:23', '', '', ''),
(52, '99 Bikes College Park', '107 North Terrace, College Park', 'help@99bikes.com.au', '(08) 8133 4859', '', 'www.99bikes.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-12 07:07:20', '2021-08-12 07:07:20', '', '', ''),
(53, 'Hilton Adelaide', '233 Victoria Square, Adelaid', NULL, '(08) 8217 2000', '', 'https://www.hilton.com/en/hotels/adlhitw-hilton-adelaide/?WT.mc_id=zELWAKN0APAC1HI2DMH3LocalSearch4DGGenericx6ADLHITW', 'Email', 'no', '', '', '2', 1, '2021-08-12 07:27:48', '2021-08-12 07:27:48', '', '', ''),
(54, 'Avani Adelaide Residences', '176 Franklin Street, Adelaide', 'adelaide@avanihotels.com.au', '1300 167 655', '', 'https://www.avanihotels.com/en/adelaide?utm_source=GoogleMyBusiness&utm_medium=GMB&utm_term=AdelaideResidences&utm_content=Home&utm_campaign=Google_GMB', 'Email', 'no', '', '', '2', 1, '2021-08-12 07:33:36', '2021-08-12 07:33:36', '', '', ''),
(55, 'Mile End Hotel', '30 Henley Beach Road, Mile End', 'info@mileendhotel.com.au', '(08) 8443 4756', '', 'https://www.mileendhotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 02:55:34', '2021-08-13 02:55:34', '', '', ''),
(56, 'Crowne Plaza Adelaide, an IHG Hotel', '27 Frome Street, Adelaide', NULL, '(08) 7077 2222', '', 'https://www.ihg.com/crowneplaza/hotels/us/en/adelaide/adlad/hoteldetail?cm_mmc=GoogleMaps-_-CP-_-AU-_-ADLAD', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:03:35', '2021-08-13 03:03:35', '', '', ''),
(57, 'Rydges South Park Adelaide', '1 South Terrace, Adelaide SA 5000', 'Reservations_RydgesSouthparkAdelaide@evt.com', '(08) 8216 0300', '', 'https://www.rydges.com/accommodation/adelaide-sa/adelaide-cbd/?utm_source=google&utm_medium=organic&utm_campaign=gmb', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:10:42', '2021-08-13 03:10:42', '', '', ''),
(58, 'The Terrace Hotel Adelaide', '208 South Terrace, Adelaide', NULL, '(08) 8223 2800', '', 'https://www.rydges.com/accommodation/adelaide-sa/the-terrace-hotel/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:13:46', '2021-08-13 03:13:46', '', '', ''),
(59, 'Arkaba Hotel', '150 Glen Osmond Rd, Fullarton SA 5063', 'reception@arkabahotel.com.au', '61 (08) 8338 1100', '', 'https://www.arkabahotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:17:08', '2021-08-13 03:17:08', '', '', ''),
(60, 'North Adelaide Boutique Stays Accommodation', '190-194 Gover Street, North Adelaide', 'reception@nabsa.com.au', '(08) 8267 2500', '', 'https://nabsa.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:22:14', '2021-08-13 03:22:14', '', '', ''),
(61, 'Windsor Meats', '61/63 Duthy Street, Malvern', NULL, '(08) 8272 9777', '', 'https://www.windsormeats.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:30:53', '2021-08-13 03:30:53', '', '', ''),
(62, 'Unley Meat Wholesalers', '14 Duthy Street, Unley', NULL, '(08) 8271 5431', '', 'https://www.unleymeatwholesalers.com/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:36:19', '2021-08-13 03:36:19', '', '', ''),
(63, 'Feast @ Unley', 'Unley Shopping Centre, 21/22 Unley Road, Unley', NULL, '(08) 8271 7286', '', 'http://feastfinefoods.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:40:13', '2021-08-13 03:40:13', '', '', ''),
(64, 'Goodwood Quality Meats', '121 Goodwood Road, Goodwood', NULL, '(08) 8271 4183', '', 'https://www.goodwoodqualitymeats.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:42:36', '2021-08-13 03:42:36', '', '', ''),
(65, 'Day2day Butcher', '44/60 Gouger Street, Adelaide', 'DAY2DAY_BUTCHER@HOTMAIL.COM', '0402 929 082', '', 'https://www.facebook.com/day2day12/?_rdc=1&_rdr', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:45:27', '2021-08-13 03:45:27', '', '', ''),
(66, 'O’Connells', 'GR47-49/44-60 Gouger Street, Adelaide', NULL, '(08) 8203 7494', '', 'https://adelaidecentralmarket.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:48:11', '2021-08-13 03:48:11', '', '', ''),
(67, 'Specialty Foods', '8A West Thebarton Road, Thebarton', 'enquiry@specialtyfoods.com.au', '(08) 8443 5444', '', 'https://www.specialtyfoods.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:51:07', '2021-08-13 03:51:07', '', '', ''),
(68, 'Palmdale Village Meat, Poultry and Seafood', '81 O\'Connell Street, North Adelaide', 'meattoplease@gmail.com', '(08) 8267 5498', '', 'https://palmdalemeats.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 03:53:26', '2021-08-13 03:53:26', '', '', ''),
(69, 'My Local Butcher', 'shop 2/62 Prospect Road, Prospect', NULL, '(08) 8269 2566', '', 'https://www.instagram.com/mylocalbutcher/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:00:51', '2021-08-13 04:00:51', '', '', ''),
(70, 'SA Gourmet Meats', 'Walkerville Shopping Centre, 100 Walkerville Terrace, Walkerville', 'info@sagourmetmeats.com.au', '(08) 8269 3465', '', 'https://sagourmetmeats.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:05:08', '2021-08-13 04:05:08', '', '', ''),
(71, 'Bruce\'s Meats & Poultry Options- Stepney', 'Shop 7 114 Payneham rd The avenues, Stepney', NULL, '(08) 8362 7185', '', 'https://www.brucesmeatstepney.com/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:08:06', '2021-08-13 04:08:06', '', '', ''),
(72, 'Leabrook Quality Meats', '9/457 Glynburn Road, Leabrook', NULL, '(08) 8331 3514', '', 'https://leabrook-quality-meats.business.site/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:10:06', '2021-08-13 04:10:06', '', '', ''),
(73, 'Don Giovanni\'s Meat Store Wattle Park', 'shop 6/470 Kensington Rd, Wattle Park SA 5066, Australia', 'admin@dongiovannimeats.com', '(08) 8431 6665', '', 'https://www.dongiovannimeats.com/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:11:39', '2021-08-13 04:11:39', '', '', ''),
(74, 'Marino meat and food store', '217 Regency Road, Croydon Park', 'info@marinomeats.com.au', '(08) 8340 3536', '', 'http://www.marinomeats.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:14:07', '2021-08-13 04:14:07', '', '', ''),
(75, 'GO9 Convenience and Grocery (Halal)', '654 South Road, Glandore', 'tigerptyltd@gmail.com', '(08) 7225 0531', '', 'https://www.facebook.com/notinusedanymore/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:21:13', '2021-08-13 04:21:13', '', '', ''),
(76, 'Indian Supermart', '1/184-188 Henley Beach Road, Torrensville', NULL, '0402 722 885', '', 'https://onlore.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:22:51', '2021-08-13 04:22:51', '', '', ''),
(77, 'Romeo\'s IGA Food Hall Brooklyn Park', '289 Henley Beach Road, Brooklyn Park', NULL, '(08) 8443 8154', '', 'https://www.iga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:25:39', '2021-08-13 04:25:39', '', '', ''),
(78, 'Guruji Grocery Store', '88 Grange Road, Welland', NULL, '0403 067 658', '', 'https://guruji-grocery-store.business.site/?utm_source=gmb&utm_medium=referral', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:27:43', '2021-08-13 04:27:43', '', '', ''),
(79, 'Indian Store', 'Shop 15, Northpark Shopping Centre, 264 Main North Road, Prospect', 'info@groceriesandmore.com.au', '0451 111 160', '', 'https://groceriesandmore.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:32:20', '2021-08-13 04:32:20', '', '', ''),
(80, 'Annapurna Indian Supermarket', '219 Montague Road, Ingle Farm', NULL, '(08) 8396 7407', '', 'https://www.vendhq.com/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:35:23', '2021-08-13 04:35:23', '', '', ''),
(81, 'C&O Supermarket', '87/93 Grand Junction Road, Rosewater', 'candopinoygoods@gmail.com', '61 404 934 291', '', 'https://m.facebook.com/CandOPinoyGoodsAustralia/', 'Email', 'no', '', '', '2', 1, '2021-08-13 04:42:43', '2021-08-13 04:42:43', '', '', ''),
(82, 'Heavy Petal', '222 Prospect Rd, Prospect SA 5082', 'heavypetal21@gmail.com', '(08) 8340 2903', '', 'http://heavypetal.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 05:54:29', '2021-08-13 05:54:29', '', '', ''),
(83, 'Flowers by Melinda', '284 Port Road, Hindmarsh', NULL, '(08) 8346 9246', '', 'https://www.flowerdeliveryhindmarsh.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 05:55:58', '2021-08-13 05:55:58', '', '', ''),
(84, 'Blossom Box Co', '2/112 Prospect Road, Prospect', 'hello@blossomboxco.com.au', '(08) 7226 5567', '', 'https://www.blossomboxco.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 05:57:44', '2021-08-13 05:57:44', '', '', ''),
(85, 'AA Kathys Flower House', '27 Cuming Street, Mile End', NULL, '(08) 8352 4735', '', 'http://www.kathysflowerhouse.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 05:58:56', '2021-08-13 05:58:56', '', '', ''),
(86, 'Flowers Everywhere', '151 Richmond Road, Richmond', 'sales@flowerseverywhere.com.au', '(08) 8443 9974', '', 'https://www.flowerseverywhere.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:01:02', '2021-08-13 06:01:02', '', '', ''),
(87, 'Tynte Flowers', '124 O\'Connell St, North Adelaide SA 5006', 'studio@tynte.com', '61 8 8340 0300', '', 'https://www.tynte.com/', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:02:58', '2021-08-13 06:02:58', '', '', ''),
(88, 'The Flower Nook', 'Shop 8, Topham Mall, 54 Waymouth Street, Adelaide', 'info@theflowernook.com.au', '0426 716 665', '', 'theflowernook.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:05:12', '2021-08-13 06:05:12', '', '', ''),
(89, 'Flower Depo', 'Rundle Mall, Adelaide, South Australia 5000', 'info@flowerdepo.com.au', NULL, '', 'http://www.flowerdepo.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:12:49', '2021-08-13 06:12:49', '', '', ''),
(90, 'Alyssiums on Pirie : Same Day Flower Deliveries Adelaide', 'Alyssiums on Pirie : Same Day Flower Deliveries Adelaide', 'sales@alyssiums.com', '08) 8223 4033', '', 'https://www.alyssiums.com/', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:15:48', '2021-08-13 06:15:48', '', '', ''),
(91, 'East End Flower Market', '83 Halifax Street, Adelaide', 'hello@eastendflowermarket.com.au', '(08) 8225 6477', '', 'https://eastendflowermarket.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:17:54', '2021-08-13 06:17:54', '', '', ''),
(92, 'Chill Flowers', '5/31 North East Road, Collinswood, Adelaide', 'orders@chillflowers.com.au', '(08) 8344 7229', '', 'https://chillflowers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:20:38', '2021-08-13 06:20:38', '', '', ''),
(93, 'Portrush Flowers', '50 Lower, Portrush Road, Marden', NULL, '(08) 7225 7539', '', 'https://portrushflowers.com/', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:23:14', '2021-08-13 06:23:14', '', '', ''),
(94, 'Marden Florist', 'Shop 5A, Marden Shopping Centre, Portrush Road, Marden', NULL, '(08) 8362 5211', '', 'https://www.mardenflowerdelivery.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-13 06:25:01', '2021-08-13 06:25:01', '', '', ''),
(95, 'Motorcycle Revolution', '949 South Road, Melrose Park', 'sales@motorcyclerevolution.com.au', '(08) 8371 4448', '', 'www.motorcyclerevolution.com.a', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:29:43', '2021-08-13 06:29:43', '', '', ''),
(96, 'Bike Kings', '674 South Road, Glandore', 'sales@bikekings.com.au', '(08) 7225 1398', '', 'www.facebook.com/bikekingsadl', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:31:17', '2021-08-13 06:31:17', '', '', ''),
(97, 'K & M Motorcycles', '10 Deacon Avenue, Richmond', 'sales@kmmotorcycles.com.au', '(08) 8234 1090', '', 'www.kmmotorcycles.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:32:46', '2021-08-13 06:32:46', '', '', ''),
(98, 'Adelaide Motorcycle Centre', '29/31 Magill Road, Stepney', 'info@adelaidemc.com.au', '(08) 8130 0700', '', 'www.adelaidemc.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:34:44', '2021-08-13 06:34:44', '', '', ''),
(99, 'GC Motorcycles', '122 Main North Road, Prospect', 'gcmotorcycles@dontslipgrip.com', '(08) 8344 7888', '', 'www.gcmotorcycles.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:36:48', '2021-08-13 06:36:48', '', '', ''),
(100, 'Level 1 Cycle Spares', '187 Main North Road, Nailsworth', 'level1@brentonsmechanical.com.au', '(08) 8269 1082', '', 'www.level1cyclespares.com', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:38:23', '2021-08-13 06:38:23', '', '', ''),
(101, 'Marcellina Enfield', 'Shop 1/362 Main North Road, Enfield', 'orders@marcellina.com.au', '(08) 8359 7500', '', 'marcellina.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:46:33', '2021-08-13 06:46:33', '', '', ''),
(102, 'AMX Superstores Blair Athol', '356 Main North Road, Blair Athol', 'online@amxsuperstores.com.au', '(08) 8359 8970', '', 'www.amxsuperstores.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:47:49', '2021-08-13 06:47:49', '', '', ''),
(103, 'Beachside Restaurant', '5 West Beach Road, West Beach', 'enquiries@beachside.net.au', '(08) 8235 1991', '', 'www.beachside.net.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:49:09', '2021-08-13 06:49:09', '', '', ''),
(104, 'Angel Thai Restaurant', '5/34 Henley Beach Road, Mile End', 'its.angelthai@gmail.com', '0450 678 279', '', 'itsangelthai.wixsite.com', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:50:20', '2021-08-13 06:50:20', '', '', ''),
(105, 'Hoosegow Charcoal Restaurant', '419 Magill Road, Saint Morris', 'hello@hoosegow.com.au', '(08) 8332 6599', '', 'www.hoosegow.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:51:31', '2021-08-13 06:51:31', '', '', ''),
(106, 'Foodwood', '152 Goodwood Road, Goodwood', 'hello@foodwood.net.au', '(08) 8271 9676', '', 'foodwood.net.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:53:06', '2021-08-13 06:53:06', '', '', ''),
(107, 'Herringbone Restaurant', '72-74 Halifax Street, Adelaide', 'hello@herringbonerestaurant.com.au', '0428 926 977', '', 'www.herringbonerestaurant.com.', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:54:21', '2021-08-13 06:54:21', '', '', ''),
(108, 'Chianti', '160 Hutt Street, Adelaide', 'chianti@chianti.net.au', '(08) 8232 7955', '', 'www.chianti.net.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:57:25', '2021-08-13 06:57:25', '', '', ''),
(109, 'Culshaw\'s Restaurant', '55 Frome Street, Adelaide', 'mrghres@majestichotels.com.au', '(08) 8100 4495', '', 'majesticroofgardenhotel.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:58:36', '2021-08-13 06:58:36', '', '', ''),
(110, 'Jack & Jill\'s Bar and Restaurant', '121 Pirie Street, Adelaide', 'Drinks@jackandjills.com.au', '(08) 8317 5045', '', 'jackandjills.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 06:59:48', '2021-08-13 06:59:48', '', '', ''),
(111, 'Osteria Oggi', '76 Pirie Street, Adelaide', 'eat@osteriaoggi.com.au', '(08) 8359 2525', '', 'osteriaoggi.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 07:00:58', '2021-08-13 07:00:58', '', '', ''),
(112, 'Parlamento', '140 North Terrace, Adelaide', 'info@parlamento.com.au', '(08) 8231 3987', '', 'www.parlamento.com.au', 'Email', 'yes', '', '', '1', 1, '2021-08-13 07:02:08', '2021-08-13 07:39:31', '', '', ''),
(113, 'Marrakech Restaurant', '91 O\'Connell Street, North Adelaide', 'marrakech@post.com', '(08) 8361 9696', '', 'www.marrakechrestaurant.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 07:03:22', '2021-08-13 07:03:22', '', '', ''),
(114, 'Indii Flavours', '114 O\'Connell Street, North Adelaide', 'indiiflavours@gmail.com', '(08) 8164 5566', '', 'www.indiiflavours.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-13 07:04:44', '2021-08-13 07:04:44', '', '', ''),
(115, 'Zaks Tapas, Restaurant and Bar', '39A Rundle Street, Kent Town', 'info@zakstapas.com', '(08) 8330 1178', '', 'www.zakstapas.com', 'Email', 'no', '', '', '1', 1, '2021-08-13 07:06:00', '2021-08-13 07:06:00', '', '', ''),
(116, 'Flowers by Definition', '114 Payneham Road, Stepney', NULL, '(08) 8362 7398', '', 'https://www.flowersbydefinition.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:17:59', '2021-08-14 03:17:59', '', '', ''),
(117, 'Lily Of The Valley Flowers', '62 Barracks Road, Hope Valley', NULL, '(08) 8264 4943', '', 'https://lilyofthevalleyflowers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:20:17', '2021-08-14 03:20:17', '', '', ''),
(118, 'DF Flowers', 'Shop 2/827 Lower North East Road, Dernancourt', NULL, '0425 758 884', '', 'https://www.dernancourtflowerdelivery.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:22:11', '2021-08-14 03:22:11', '', '', ''),
(119, 'Garden Fresh Flowers', '38 Warren Road Para Vista, Adelaide', 'contact@gardenfreshflowers.com.au', '08 8395 1355', '', 'https://www.gardenfreshflowers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:24:42', '2021-08-14 03:24:42', '', '', ''),
(120, 'Indy Rose Flowers', '3/436 Henley Beach Road, Lockleys', 'info@indyroseflowers.com.au', '(08) 8443 7998', '', 'https://www.indyroseflowers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:27:20', '2021-08-14 03:27:20', '', '', ''),
(121, 'Hayley\'s Flower Shop & Balloons', '598 Regency Road, Broadview', 'admin@hayleysflowershop.com.au', '0424 157 726', '', 'https://www.hayleysflowershop.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:31:26', '2021-08-14 03:31:26', '', '', ''),
(122, 'Embellish Flowers and Plant bar - Florist Adelaide-Same day delivery florist -cbd', '360 Main North Road, Blair Athol, Adelaide South Australia', 'embellish@embellish.com.au', '08 82126588', '', 'https://www.embellish.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:34:30', '2021-08-14 03:34:30', '', '', ''),
(123, 'Little Love Co Florist', '33 Kensington Road, Norwood', 'info@littleloveco.net.au', '(08) 8363 7443', '', 'https://littleloveco.net.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:36:58', '2021-08-14 03:36:58', '', '', ''),
(124, 'The Flower Parade', '151A The Parade, Norwood', 'info@theflowerweb.com.au', '(08) 8333 2940', '', 'https://www.theflowerweb.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:39:13', '2021-08-14 03:39:13', '', '', ''),
(125, 'Pretty Petals', '127a Goodwood Road, Goodwood, SA, 5034', 'sales@prettypetals.com.au', '(08) 8272-7778', '', 'https://prettypetals.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:40:56', '2021-08-14 03:40:56', '', '', ''),
(127, 'Lily West', '303 Grange Rd,  Findon SA 5023 (Located in Metropolitan Fresh, Findon)', 'info@lilywest.com.au', '(08) 8355 2928', '', 'https://www.lilywest.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:45:11', '2021-08-14 03:45:11', '', '', ''),
(128, 'Centennial Florist and Gift Baskets', '653 Goodwood Road Panorama SA 5041', NULL, '(08) 8374 1715', '', 'https://www.centennialflorist.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:49:35', '2021-08-14 03:49:35', '', '', ''),
(129, 'Edwardstown FlorEdwardstown Floristsists', 'California Court, 7/56-58 Daws Road, Edwardstown', NULL, '(08) 8276 9091', '', 'https://www.edwardstownflowerdelivery.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 03:51:24', '2021-08-14 03:51:24', '', '', ''),
(130, 'La-Z-Boy', '165 Richmond Road, Richmond', 'tanunda@wohlers.com.au', '85633494', '', 'www.wohlers.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 03:54:55', '2021-08-14 03:54:55', '', '', ''),
(131, 'APM Property Maintenance', '2 Sleaford Road, Windsor Gardens', 'alby@apmmaintenance.com.au', '(08) 8266 3311', '', 'https://apmmaintenance.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:02:12', '2021-08-14 04:02:12', '', '', ''),
(132, 'Tech-Dry SA - Salt Damp Specialist', '244 Payneham Road, Payneham', NULL, '(08) 8132 1166', '', 'https://stopsaltdamp.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:04:42', '2021-08-14 04:04:42', '', '', ''),
(133, 'Trilogy Projects - Home Renovation Adelaide, Bathroom, Kitchen, Laundry Renovation', '122 Portrush Road, Payneham', 'info@trilogyprojects.com.au', '0459 218 772', '', 'https://trilogyprojects.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:06:44', '2021-08-14 04:06:44', '', '', ''),
(134, 'Australian Furniture Warehouse', '80 Grove Avenue, Marleston', 'enquiries@afwarehouse.com.au', '1300 251 607', '', 'www.australianfurniturewarehou', 'Email', 'no', '', '', '3', 1, '2021-08-14 04:07:04', '2021-08-14 04:07:04', '', '', ''),
(135, 'Ted\'s Cameras', '212 Rundle Street, Adelaide', NULL, '(08) 8223 3449', '', 'https://www.teds.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-14 04:11:59', '2021-08-17 02:06:03', '', '', ''),
(136, 'Photoco Camera House', '44-60 Gouger Street, Adelaide', NULL, '(08) 8231 5632', '', 'https://www.camerahouse.com.au/store/adelaide---central-market', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:15:22', '2021-08-14 04:15:22', '', '', ''),
(137, 'FURNITURE DESIGN AUSTRALIA', '35 Anzac Highway, Ashford', 'info@furnituredesignaustralia.com.au', '(08) 8371 5000', '', 'www.furnituredesignaustralia.c', 'Email', 'no', '', '', '3', 1, '2021-08-14 04:16:25', '2021-08-14 04:16:25', '', '', ''),
(138, 'Wills Plumbing And Property Maintenance Pty Ltd', 'Malvern', 'info@willsplumbingadelaide.com.au', '0484 600 095', '', 'https://willsplumbingadelaide.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:18:46', '2021-08-14 04:18:46', '', '', ''),
(139, 'Legoe Property Maintenance', '11 Frederick Street, Unley SA 5061', 'Sam@LegoePropertyMaintenance.com.au', '0417 806 846', '', 'http://legoepropertymaintenance.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:36:21', '2021-08-14 04:36:21', '', '', ''),
(140, 'Camera House - Central Market', 'WR5/44-60 Gouger Street, Adelaide', NULL, '133-686', '', 'https://www.camerahouse.com.au/?subdomain=adelaide.camerahouse.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:40:36', '2021-08-14 04:40:36', '', '', ''),
(141, 'BE Building Services Pty Ltd - Insurance Repair Specialist', '383 Goodwood Rd Westbourne Park, SA 5041', 'mail@bebuilding.com.au', '(08) 8373 5707', '', 'https://bebuilding.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:43:32', '2021-08-14 04:43:32', '', '', ''),
(142, 'Brilliant SA: Kitchen, Bathrooms & Home Renovations', '8/715 South Road, Black Forest', NULL, '(08) 8297 2122', '', 'https://www.brilliantsa.com.au/?utm_source=Google%20My%20Business%20(GMB)&utm_medium=Organic&utm_campaign=Google%20My%20Business%20(GMB)', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:45:52', '2021-08-14 04:45:52', '', '', ''),
(143, 'Adelaide Home Improvements PTY Ltd.', '26-28 Surrey Road Keswick SA 5035', 'enquiry@adelaidehomeimprovements.com.au', '(08) 8297 2088', '', 'https://adelaidehomeimprovements.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:48:09', '2021-08-14 04:48:09', '', '', ''),
(144, 'G-Force Building & Consulting', '24 Deacon Avenue, Richmond', 'info@gforcebc.com.au', '(08) 7225 5775', '', 'https://gforcebc.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:51:03', '2021-08-14 04:51:03', '', '', ''),
(145, 'Fast Fix Property Maintenance', '28 Ansett Ave Netley SA 5037 Australia', NULL, '0433 125 710', '', 'https://fast-fix-property-maintenance.business.site/#details', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:52:51', '2021-08-14 04:52:51', '', '', ''),
(146, 'V.I.P. Home Services', 'Unit 2/277-281 Sir Donald Bradman Drive, Cowandilla', 'info@viphomeservices.com', '13 26 13', '', 'https://www.viphomeservices.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:55:01', '2021-08-14 04:55:01', '', '', ''),
(147, 'UD', '106 Unley Road, Unley', 'info@mrbookcases.com.au', '(08) 8271 2126', '', 'www.mrbookcases.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 04:55:15', '2021-08-14 04:55:15', '', '', ''),
(148, 'EcoUrbane Building Group', '7 Filsell Street, Thebarton', 'mark@ecourbane.com.au', '0414 912 367', '', 'https://www.ecourbane.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:56:26', '2021-08-14 04:56:26', '', '', ''),
(149, 'Bathroom Renovation Solutions', '1 Franklin Avenue, Flinders Park', NULL, '0438 606 213', '', 'https://bathroomrenovationsolutions.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 04:58:33', '2021-08-14 04:58:33', '', '', ''),
(150, 'Salon Fletcher', 'Shop 7/129-141 Findon Road, Findon', 'salonfletcher@gmail.com', '(08) 8243 0512', '', 'http://www.salonfletcher.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:01:20', '2021-08-14 05:01:20', '', '', ''),
(151, 'Sala Nail and Beauty Salon', '29 Durham Terrace, Ferryden Park', NULL, '0415 399 001', '', 'https://sala-beautysalon.business.site/?utm_source=gmb&utm_medium=referral', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:02:22', '2021-08-14 05:02:22', '', '', ''),
(152, 'Early Settler Adelaide', '207 &, 215 Grote Street, Adelaide', 'info@earlysettler.com.au', '(08) 8205 0000', '', 'www.earlysettler.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-14 05:02:22', '2021-08-17 02:08:16', '', '', ''),
(153, 'E & Co. Hair Studio', '56 Glen Osmond Road, Adelaide', 'book@eandcohair.com.au', '0451 828 009', '', 'https://www.eandcohair.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:03:52', '2021-08-14 05:03:52', '', '', ''),
(154, 'LK Salon Nails & Beauty', '98 Wright Street, Adelaide', 'lksalonnailsandbeauty@gmail.com', '(08) 7073 0990', '', 'https://www.lksalonnailsandbeauty.com.au/services-1', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:07:45', '2021-08-14 05:07:45', '', '', ''),
(155, 'Elysian Salon Spa', 'Arcade, Shop 40/112 Grenfell Street, Adelaide', NULL, '(08) 8223 5272', '', 'https://www.aveda.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:09:40', '2021-08-14 05:09:40', '', '', ''),
(156, 'Tu Salon Hair & Nails', 'Adelaide Central plaza, 201B/120-122 Rundle Mall, Adelaide', NULL, '(08) 8223 4128', '', 'https://www.adelaidecentralplaza.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:11:29', '2021-08-14 05:11:29', '', '', ''),
(157, 'Madame Josephine - Hair & Beauty Salon', '19 Gilbert Place, Adelaide', 'MADAMEJOSEPHINE@MADAMEJOSEPHINE.COM.AU', '(08) 8231 3945', '', 'https://madamejosephine.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:13:18', '2021-08-14 05:13:18', '', '', ''),
(158, 'Dazzling Hair and Beauty', '3/60 North East Road, Walkerville', NULL, '0425 757 766', '', 'https://www.dazzlinghairandbeauty.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:15:46', '2021-08-14 05:15:46', '', '', ''),
(159, 'Salon Grace', '2/38 Hallett Road, Stonyfell', 'heythere@salongrace.com.au', '0426 570 808', '', 'https://salongrace.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:17:43', '2021-08-14 05:17:43', '', '', ''),
(160, 'Hunt Furniture', '12 Logan Street, Adelaide', 'max@huntfurniture.com.au', '0422 995 004', '', '0422 995 004', 'Email', 'no', '', '', '3', 1, '2021-08-14 05:18:37', '2021-08-14 05:18:37', '', '', ''),
(161, 'Polished Beauty - Skin, Body & Nails', '2/3 544 B26, Hazelwood Park', NULL, '(08) 8332 1521', '', 'https://www.polishedbeauty.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:18:54', '2021-08-14 05:18:54', '', '', ''),
(162, 'Marro\'s Hair & Beauty', '13/171 Glynburn Road, Firle', NULL, '(08) 8364 2190', '', 'https://www.marroshairandbeauty.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:25:35', '2021-08-14 05:25:35', '', '', ''),
(163, 'Salon 2001', '272 Montacute Rd Rostrevor SA 5073 Australia', NULL, '0422 564 576', '', 'https://salon-2001-hair-salon.business.site/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:27:29', '2021-08-14 05:27:29', '', '', ''),
(164, 'Salon Hair Care', '139 Sherriffs Road, Reynella', 'enquiries@salonhaircare.com.au', '(08) 8322 6652', '', 'https://www.salonhaircare.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:29:52', '2021-08-14 05:29:52', '', '', ''),
(165, 'The Shoe Kings', 'Kiosk SK17 Elizabeth City Shopping Centre, 50 Elizabeth Way, Elizabeth', 'accounts@shoekings.com.au', '0426 034 939', '', 'http://www.shoekings.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:33:14', '2021-08-14 05:33:14', '', '', ''),
(166, 'Mister Minit Ingle Farm', 'Shop 1K05 Ingle Farm S/C Cnr Walkleys Road and Montagues Road, Ingle Farm', 'info@minit.com.au', NULL, '', 'https://misterminit.co/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:35:51', '2021-08-14 05:35:51', '', '', ''),
(167, 'Nordic Design Furniture', '43 Magill Road, Stepney', 'enquiries@nordicdesign.com.au', '(08) 8362 2424', '', 'www.nordicdesign.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 05:40:22', '2021-08-14 05:40:22', '', '', ''),
(168, 'Firle Shoe Repairs & Giftwares', '15/171 Glynburn Road, Firle', NULL, '(08) 8364 4001', '', 'https://www.yelp.com.au/biz/firle-shoe-repairs-and-giftware-firle', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:41:35', '2021-08-14 05:41:35', '', '', ''),
(169, 'Unley Shoe Repairs & Giftware', '190 Unley Road, Unley', NULL, '(08) 8271 2254', '', 'https://unleyshoerepairs.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:43:25', '2021-08-14 05:43:25', '', '', ''),
(170, 'A Class Shoe Repairs', '30 Grote Street, Adelaide', 'info@spanoorthopedicfootwear.com', '(08) 8231 6722', '', 'https://www.spanoorthopedicfootwear.com/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:45:55', '2021-08-14 05:45:55', '', '', ''),
(171, 'Pfitzner Furniture', '33/35 The Parade, Norwood', 'info@pfitzner.com.au', '(08) 8363 5144', '', 'pfitzner.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 05:49:15', '2021-08-14 05:49:15', '', '', ''),
(172, 'State Shoe Repairs', '447/465 Tapleys Hill Road, Fulham Gardens', NULL, '08 835 35 356', '', 'https://stateshoerepairs.weebly.com/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:51:59', '2021-08-14 05:51:59', '', '', ''),
(173, 'Federico and Sons Shoe Repairs', 'Shop 1/129 Findon Road, Findon', NULL, '(08) 8347 4826', '', 'https://www.federicoandsons.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-14 05:53:58', '2021-08-14 05:53:58', '', '', ''),
(174, 'Living By Design', '41 Kensington Road, Norwood', 'info@livingbydesign.net.au', '(08) 8399 1250', '', 'www.livingbydesign.net.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 06:13:03', '2021-08-14 06:13:03', '', '', ''),
(175, 'Wedding Whispers', '647 Lower North East Road, Paradise', 'sales@weddingwhispers.com.au', '(08) 8365 5613', '', 'weddingwhispers.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 06:31:18', '2021-08-14 06:31:18', '', '', ''),
(176, 'Cinderella Bridal', '482 Payneham Road, Glynde', 'info@cinderella.com.au', '(08) 7226 5883', '', 'www.cinderellabridal.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 06:37:16', '2021-08-14 06:37:16', '', '', ''),
(177, 'Adelaide Bridal Emporium', '172 Payneham Road, Evandale', 'bridal@adelaidebridalemporium.com.au', '(08) 8362 2291', '', 'adelaidebridalemporium.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 06:46:15', '2021-08-14 06:46:15', '', '', ''),
(178, 'couture+love+madness', '1/260 The Parade, Norwood', 'info@couturelovemadness.com.au', '0413 926 171', '', 'couturelovemadness.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 06:57:27', '2021-08-14 06:57:27', '', '', ''),
(179, 'Jenny & Gerry\'s Bridal Centre', '54-58 Payneham Road, Stepney', 'info@jennyandgerrysbridal.com.au', '(08) 8362 0149', '', 'jennyandgerrysbridal.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 07:04:47', '2021-08-14 07:04:47', '', '', ''),
(180, 'Montaigo', '102 Prospect Road, Prospect', 'glenelg@montaigo.com', '0416 711 863', '', 'montaigo.com', 'Email', 'no', '', '', '3', 1, '2021-08-14 07:19:10', '2021-08-14 07:38:24', '', '', ''),
(181, 'Dessini Style Boutique', '192 Henley Beach Road, Torrensville', 'enquiries@dessinistyleboutique.com.au', '0481 786 716', '', 'www.dessinistyleboutique.com.a', 'Email', 'no', '', '', '3', 1, '2021-08-14 07:27:03', '2021-08-14 07:38:04', '', '', ''),
(182, 'Rapsimo - Bridal & Wedding Dresses Adelaide', '72 King William Road, Goodwood', 'ann@rapsimo.com.au', '(08) 8373 1173', '', 'www.rapsimo.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 07:34:33', '2021-08-14 07:37:52', '', '', ''),
(183, 'Livia Loren Collection', '280A Unley Road, Hyde Park', 'livialoren@hotmail.com', '0405 188 088', '', 'livialoren.wixsite.com', 'Email', 'no', '', '', '3', 1, '2021-08-14 07:42:40', '2021-08-14 07:42:40', '', '', ''),
(184, 'After Dark Boutique', '432 Fullarton Road, Myrtle Bank', 'info@afterdark.com.au', '(08) 8379 6913', '', 'www.afterdark.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-14 07:47:53', '2021-08-14 07:47:53', '', '', ''),
(185, 'Whyld Coffee', '77 Gloucester Street, Prospect', 'hello@whyld.com.au', '49 9232 984', '', 'whyld.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 02:21:40', '2021-08-17 02:21:40', '', '', ''),
(186, 'FIX. Specialty Coffee', '27 Torrens Street, College Park', 'fix.specialtycoffee@gmail.com', NULL, '', 'https://instagram.com/fix.specialtycoffee/', 'Email', 'no', '', '', '3', 1, '2021-08-17 02:37:26', '2021-08-17 02:37:26', '', '', ''),
(187, 'Blackwood Boot & Shoe Repairs', '2/370 Shepherds Hill Road Blackwood SA 5051 Australia', NULL, '(08) 8278 7110', '', 'https://blackwood-boot-shoe-repairs-shoe-repair-shop.business.site/', 'Email', 'no', '', '', '2', 1, '2021-08-17 02:42:47', '2021-08-17 02:42:47', '', '', ''),
(188, 'Glenelg Shoe Repairs', '2/1-5 Sussex Street, Glenelg', NULL, '(08) 8294 3229', '', 'http://www.glenelgshoerepairs.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 02:44:26', '2021-08-17 02:44:26', '', '', ''),
(189, 'Central Market Keys & Shoes', 'Central Market Arcade Victoria Square Arcade Adelaide SA 5000 Australia', NULL, '0451 121 853', '', 'https://central-market-keys-shoes.business.site/#details', 'Email', 'no', '', '', '2', 1, '2021-08-17 02:47:20', '2021-08-17 02:47:20', '', '', ''),
(190, 'Classic Shoe Repairs', '7a Grenfell Street, Adelaide South Australia 5000, Australia', 'contact@classicshoerepairs.com.au', '08 8212 4816', '', 'https://classicshoerepairs.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 02:48:39', '2021-08-17 02:48:39', '', '', ''),
(191, 'Kookai', '8-14 Hall Street Hawthorn East, VICTORIA, AUSTRALIA 3123', NULL, '61 03 8290 0500', '', 'https://www.kookai.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-17 02:53:08', '2021-08-17 02:55:01', '', '', ''),
(192, 'Cue Marion Myer', 'Myer, Level 2, 297 Diagonal Road, Oaklands Park', 'info@cue.cc', '(08) 6179 6363', '', 'https://www.cue.com/Customer-Info', 'Email', 'no', '', '', '2', 1, '2021-08-17 02:55:57', '2021-08-17 02:55:57', '', '', ''),
(193, 'Forever New', 'Shop 1110 Westfield, 297 Diagonal Road, Oaklands Park', NULL, '(08) 8296 4763', '', 'https://www.forevernew.com.au/?utm_source=localmaps&utm_medium=organic&utm_campaign=marion', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:05:01', '2021-08-17 03:05:01', '', '', ''),
(194, 'e10 espresso', '146 Richmond Road, Marleston', 'e10espresso@gmail.com', '(08) 8443 7282', '', 'e10espresso@gmail.com', 'Email', 'no', '', '', '3', 1, '2021-08-17 03:06:03', '2021-08-17 03:06:03', '', '', ''),
(195, 'The Special Size Co.', '461 Brighton Road, Brighton', NULL, '61 08 8296 3895', '', 'https://specialsize.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:06:56', '2021-08-17 03:06:56', '', '', ''),
(196, 'Portmans', 'Shop 22 & 23 Burnside S C, 447 Portrush Road, Glenside', NULL, '(08) 8317 5955', '', 'https://www.portmans.com.au/shop/en/portmans?utm_source=google&utm_medium=organic&utm_campaign=google_business', 'Email', 'yes', '', '', '2', 1, '2021-08-17 03:16:42', '2021-08-17 03:20:53', '', '', ''),
(197, 'Phat Coffee', '207 Hindley Street, Adelaide', 'catering@phatkitchen.com.au', '(08) 8231 6324', '', 'www.phatkitchen.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 03:20:02', '2021-08-17 03:20:02', '', '', ''),
(198, 'Chic Maxi Dresses', 'Second Avenue, Saint Morris', 'chicmaxidresses@bigpond.com', '0421 337 784', '', 'https://www.chicmaxidresses.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:20:05', '2021-08-17 03:20:05', '', '', ''),
(199, 'Showies Boutique', 'Regent Arcade, 17-18/101 - 109 Rundle Mall, Adelaide', NULL, '(08) 8232 5171', '', 'https://www.showiesboutique.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:23:57', '2021-08-17 03:23:57', '', '', ''),
(200, 'Copycat Evening Wear,Formals, Wedding\'s', 'Lower Ground, 43/45 Rundle Mall, Adelaide', 'copycatmall@optusnet.com.au', '(08) 8221 5900', '', 'https://copycatfashion.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:26:24', '2021-08-17 03:26:24', '', '', ''),
(201, 'Ally Fashion', 'Myer Centre Adelaide, Shop 101/22 Rundle Mall, Adelaide', 'allyinfo@allyfashion.com', '(08) 8486 1017', '', 'https://allyfashion.com/', 'Email', 'yes', '', '', '2', 1, '2021-08-17 03:27:56', '2021-08-17 03:30:34', '', '', ''),
(202, 'Elementary Coffee', '9-17 Young Street, Adelaide', 'info@elementarycoffee.com.au', '0450 066 216', '', 'www.elementarycoffee.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 03:32:46', '2021-08-17 03:32:46', '', '', ''),
(203, 'Cue', 'Shop 235a, Level 1, Westfield West Lakes Mall, 111 West Lakes Boulevard, West Lakes', 'info@cue.cc', '(08) 8355 5014', '', 'https://www.cue.com/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:34:43', '2021-08-17 03:34:43', '', '', ''),
(204, 'Discount Party Supplies', '59-63 Moore Road, Reynella', 'sales@discountpartysupplies.com.au', '1300 858 704', '', 'https://www.discountpartysupplies.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:40:10', '2021-08-17 03:40:10', '', '', ''),
(205, 'Exchange Specialty Coffee', '12/18 Vardon Avenue, Adelaide', 'hello@exchangecoffee.com.au', '0415 966 225', '', 'exchangecoffee.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 03:40:27', '2021-08-17 03:40:27', '', '', ''),
(206, 'Party Shop 24/7', '449 Brighton Road, Brighton', 'info@partyshop247.com.au', '(08) 8296 4999', '', 'https://partyshop247.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:44:57', '2021-08-17 03:44:57', '', '', '');
INSERT INTO `tasks` (`id`, `name`, `address`, `email`, `phone`, `mobile`, `website`, `strategy`, `response`, `status`, `partner`, `aid`, `transaction`, `created_at`, `updated_at`, `directory`, `category`, `town`) VALUES
(207, 'S.A. Party Supplies', 'S.A Party Supplies 63 Boothby St Panorama Sa 5041', 'sales@sapartysupplies.com.au', '(08) 8299 0333', '', 'https://www.sapartysupplies.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:46:13', '2021-08-17 03:46:13', '', '', ''),
(208, 'Budget Party Hire', '264 Richmond Road, Marleston', 'charlie@budgetpartyhire.com.au', '(08) 8294 0225', '', 'https://www.budgetpartyhire.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:48:18', '2021-08-17 03:48:18', '', '', ''),
(209, 'Puff and Pop (By appointment only)', '357A Tapleys Hill Road, Seaton', 'hello@puffandpop.com.au', '0455 150 879', '', 'https://www.puffandpop.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:50:01', '2021-08-17 03:50:01', '', '', ''),
(210, 'Starlight Christmas & Party Superstore', '294 Grange Road, Flinders Park', NULL, '(08) 8354 0545', '', 'https://www.starlightsuperstore.com.au/index.php?route=information/contact/success', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:52:15', '2021-08-17 03:52:15', '', '', ''),
(211, 'Spotlight Albert Park', '978 Port Road, Albert Park', NULL, '(08) 7421 3937', '', 'https://www.spotlightstores.com/store/south-australia/albert-park/s124', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:54:49', '2021-08-17 03:54:49', '', '', ''),
(212, 'The Baby Shower Emporium', '83A Unley Road, Parkside', NULL, '0413 028 362', '', 'https://www.thebabyshoweremporium.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 03:57:36', '2021-08-17 03:57:36', '', '', ''),
(213, 'Adelaide Costume Shop', '129 Wright Street, Adelaide', 'info@adelaidecostumeshop.com.au', '(08) 8231 4231', '', 'https://www.adelaidecostumeshop.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:00:21', '2021-08-17 04:00:21', '', '', ''),
(214, 'Garden-R - Garden Maintenance & Landscaping', '6/20 Hartland Avenue, Black Forest', 'office@garden-r.com.au', '426 124 440', '', 'www.garden-r.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 04:01:26', '2021-08-17 04:01:26', '', '', ''),
(215, 'Spotlight Trinity Gardens', '214/216 Portrush Road, Trinity Gardens', NULL, '(08) 8131 2800', '', 'https://www.spotlightstores.com/store/south-australia/trinity-gardens/s025', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:02:37', '2021-08-17 04:02:37', '', '', ''),
(216, 'Party World (appointment only)', '29 Barnett Avenue, Glynde', NULL, '0412 836 917', '', 'http://www.party-world.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:05:46', '2021-08-17 04:05:46', '', '', ''),
(217, 'The Party Super Store Adelaide (Helium Balloons Supplies Shop', '128 Main North Road, Prospect', 'prospect@thepartysuperstore.com.au', '0468 443 394', '', 'https://www.thepartysuperstore.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:07:20', '2021-08-17 04:07:20', '', '', ''),
(218, 'Balloons and More', '412 North East Road, Windsor Gardens', 'enquiries@balloonsandmore.com.au', '(08) 8266 5049', '', 'https://balloonsandmore.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:09:57', '2021-08-17 04:09:57', '', '', ''),
(219, 'superior gardens', 'Linden Park', 'dave@superiorgardens.com.au', 'Linden Park', '', 'superiorgardens.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 04:10:24', '2021-08-17 04:10:24', '', '', ''),
(220, 'Mad Parties Supplies - Balloons & Partyware', '1/28 Bridge Road, Pooraka', 'contactus@ritepartyhire.com.au', '(08) 8162 9888', '', 'https://madpartiessupplies.com/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:11:34', '2021-08-17 04:11:34', '', '', ''),
(221, 'Mount Lofty House Adelaide Hills', '1 Mawson Drive, Crafers', 'stay@mtloftyhouse.com.au', '(08) 8339 6777', '', 'www.mtloftyhouse.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 04:13:23', '2021-08-17 04:13:23', '', '', ''),
(222, 'First Choice Liquor Market Unley', 'Corner Unley Road And, Clifton Street, Malvern', NULL, '(08) 8286 2108', '', 'https://www.firstchoiceliquor.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:13:59', '2021-08-17 04:13:59', '', '', ''),
(223, 'Sip\'n Save', '1 Kensington Road, Norwood', NULL, '(08) 8331 0411', '', 'https://sipnsave.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-17 04:19:26', '2021-08-17 04:41:28', '', '', ''),
(224, 'Serenity Water Gardens', '220 North East Road, Klemzig', 'info@serenitywatergardens.com.au', '(08) 7225 0331', '', 'www.serenitywatergardens.com.a', 'Email', 'no', '', '', '3', 1, '2021-08-17 04:21:10', '2021-08-17 04:21:10', '', '', ''),
(225, 'BWS Rundle Mall', '80-88 Rundle Mall, Adelaide', 'media@edg.com.au', '(08) 8314 5444', '', 'https://store.bws.com.au/storelocator/sa-adelaide-5077?utm_source=google&utm_medium=maps&utm_campaign=google-maps-places', 'Email', 'yes', '', '', '2', 1, '2021-08-17 04:21:15', '2021-08-17 04:40:29', '', '', ''),
(226, 'Parade Cellars', 'Shop 15 Norwood Place, 161-175 The Parade, Norwood, SA, 5067, Australia', NULL, '(08) 8332 0317', '', 'https://paradecellars.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:22:43', '2021-08-17 04:22:43', '', '', ''),
(227, 'First Choice Liquor Market Hindmarsh', '348 Port Road, Hindmarsh', NULL, '(08) 8249 5400', '', 'https://www.firstchoiceliquor.com.au/stores/sa/hindmarsh?utm_source=localmaps&utm_medium=organic&utm_campaign=Hindmarsh', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:23:48', '2021-08-17 04:23:48', '', '', ''),
(228, 'Cellarbrations', '101 Churchill Road, Prospect', NULL, '(08) 8269 2266', '', 'https://www.cellarbrations.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:42:40', '2021-08-17 04:42:40', '', '', ''),
(229, 'Liquorland', 'Greenacres Shopping Centre, 132 Muller Road, Greenacres', NULL, '(08) 8286 2102', '', 'https://www.liquorland.com.au/stores/sa/greenacres?utm_source=localmaps&utm_medium=organic&utm_campaign=greenacres', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:44:36', '2021-08-17 04:44:36', '', '', ''),
(230, 'BWS Tea Tree Plaza', '984 North East Road, Modbury', NULL, '(08) 8215 6950', '', 'https://store.bws.com.au/storelocator/sa-modbury-5054?utm_source=google&utm_medium=maps&utm_campaign=google-maps-places', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:46:28', '2021-08-17 04:46:28', '', '', ''),
(231, 'BWS Mawson Lakes', '9/15 Main Street, Mawson Lakes', NULL, '(08) 8215 6953', '', 'https://store.bws.com.au/storelocator/sa-mawson-lakes-5074?utm_source=google&utm_medium=maps&utm_campaign=google-maps-places', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:47:26', '2021-08-17 04:47:26', '', '', ''),
(232, 'Adelaide Caravan Park', 'aspenholidayparks.com.au', 'marketing@aspengroup.com.au', '(08) 8363 1566', '', 'aspenholidayparks.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 04:47:43', '2021-08-17 04:47:43', '', '', ''),
(233, 'Liquorland Golden Grove', 'The Golden Way (cnr Grove Way), Golden Grove', NULL, '(08) 8251 5631', '', 'https://www.liquorland.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:48:56', '2021-08-17 04:48:56', '', '', ''),
(234, 'Liquorland Waterloo Drive', '138 Waterloo Corner Road, Paralowie', NULL, '(08) 8286 2112', '', 'https://www.liquorland.com.au/stores/sa/waterloo%20drive?utm_source=localmaps&utm_medium=organic&utm_campaign=waterloo%20drive', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:50:21', '2021-08-17 04:50:21', '', '', ''),
(235, 'Liquorland Elizabeth', 'North Mall, 50 Elizabeth Way, Elizabeth', NULL, '(08) 8286 2126', '', 'https://www.liquorland.com.au/stores/sa/elizabeth?utm_source=localmaps&utm_medium=organic&utm_campaign=Elizabeth', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:51:08', '2021-08-17 04:51:08', '', '', ''),
(236, 'ADS', '2A Cardiff Court, Cavan', 'sales@adelaidedirectstationers.com.au', '(08) 8164 5700', '', 'www.adelaidedirectstationers.c', 'Email', 'no', '', '', '3', 1, '2021-08-17 04:51:42', '2021-08-17 04:51:42', '', '', ''),
(237, 'Liquorland Smithfield', '600 Main North Road, Smithfield', NULL, '(08) 8968 3302', '', 'https://www.liquorland.com.au/stores/sa/munno%20para?utm_source=localmaps&utm_medium=organic&utm_campaign=munno%20para', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:52:22', '2021-08-17 04:52:22', '', '', ''),
(238, 'BIG4 West Beach Parks', '1 Military Road, West Beach', 'big4@westbeachparks.com.au', '(08) 8355 7320', '', 'westbeachparks.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 04:54:31', '2021-08-17 04:54:31', '', '', ''),
(239, 'PFD Food Services', '46-58 Ashwin Parade, Torrensville', NULL, '46-58 Ashwin Parade, Torrensville', '', 'https://www.pfdfoods.com.au/contact', 'Email', 'no', '', '', '2', 1, '2021-08-17 04:58:07', '2021-08-17 04:58:07', '', '', ''),
(240, 'Adelaide Direct Stationers', '2A Cardiff Court, Cavan SA 5094 Australia', 'info@adelaidedirectstationers.com.au', NULL, '', 'https://www.adelaidedirectstationers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 05:00:35', '2021-08-17 05:00:35', '', '', ''),
(241, 'Educational Aids (Australia) Pty Ltd', '430 Montague Road, Modbury North', 'sales@edaids.com.au', '(08) 8264 8882', '', 'www.edaids.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 05:05:14', '2021-08-17 05:05:14', '', '', ''),
(242, 'Oaks Glenelg Liberty Suites', '25-29 Colley Terrace, Glenelg', 'reservations@theoaksgroup.com.au', '1300 721 801', '', 'www.oakshotels.com', 'Email', 'no', '', '', '1', 1, '2021-08-17 05:10:06', '2021-08-17 05:10:06', '', '', ''),
(243, 'Brighton Beach Retreat', '3 Old Beach Road, Brighton', 'relax@brightonbeachretreat.com.au', '0400 039 447', '', 'www.brightonbeachretreat.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 05:16:38', '2021-08-17 05:16:38', '', '', ''),
(244, 'Seelect Educational Supplies', '2/880 South Road, Edwardstown', 'seeyousoon@seelect.com.au', '(08) 8297 9111', '', 'www.seelect.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 05:17:34', '2021-08-17 05:17:34', '', '', ''),
(245, 'The Paper Bahn Office National', '135 Richmond Road, Richmond', 'sales@paperexpress.com.au', '(08) 7226 1944', '', 'www.paperexpress.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 05:23:01', '2021-08-17 05:23:01', '', '', ''),
(246, 'C Coffee', '260 Curtis Road, Munno Para', 'guestservices@ccscoffee.com', '+1 504-831-1449', '', 'www.ccscoffee.com', 'Email', 'no', '', '', '1', 1, '2021-08-17 05:30:28', '2021-08-17 05:30:28', '', '', ''),
(247, 'South Australian Science Teachers Association', '249 Henley Beach Road, Torrensville', 'office@sasta.asn.au', '(08) 8354 0006', '', 'www.sasta.asn.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 05:31:05', '2021-08-17 05:31:05', '', '', ''),
(248, 'Herrimans Office National', '59 Manton Street, Hindmarsh', 'stationery@herrimans.com.au', '(08) 8346 9222', '', 'www.officenational.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 05:34:43', '2021-08-17 05:34:43', '', '', ''),
(249, 'The Coffee Barun Espresso Bar', '132a Tolley Road, Saint Agnes', 'info@thecoffeebarun.com.au', '0407 780 134', '', 'www.thecoffeebarun.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 05:34:48', '2021-08-17 05:34:48', '', '', ''),
(250, 'GR Phones', '3/285 Anzac Highway, Plympton', 'info@grphones.com.au', '(08) 8342 0008', '', 'www.grphones.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 05:48:42', '2021-08-17 05:48:42', '', '', ''),
(251, 'Jetfit Functional Fitness Centre', '22 Hooke Road, Edinburgh North', 'jetfit84@hotmail.com', '0421 424 437', '', 'www.jetfitfunctional.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 05:52:24', '2021-08-17 05:52:24', '', '', ''),
(252, 'Minimax Harbour Town SA', 't37/727 Tapleys Hill Road, Adelaide', 'info@minimax.com.au', '(08) 8355 4514', '', 'www.minimax.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 05:53:05', '2021-08-17 05:53:05', '', '', ''),
(253, 'Anytime Fitness', 'Shop B/164 Henley Beach Road, Mile End', 'mileend@anytimefitness.com.au', '(08) 8351 9069', '', 'www.anytimefitness.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 06:00:17', '2021-08-17 06:00:17', '', '', ''),
(254, 'EB Games Mt Barker', 'Mount Barker Shopping Centre, Shop 35, McLaren Street, Mount Barker', NULL, '(08) 8391 4126', '', 'https://www.ebgames.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:01:02', '2021-08-17 06:01:02', '', '', ''),
(255, 'JB Hi-Fi City - Adelaide', '50 Rundle Mall, Adelaide', NULL, '(08) 8225 4100', '', 'https://www.jbhifi.com.au/pages/city-adelaide?utm_source=localmaps&utm_medium=organic&utm_campaign=city-adelaide', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:03:17', '2021-08-17 06:03:17', '', '', ''),
(256, 'New Life Fitness', '131-133 Grange Road, Beverley', 'enquiries@newlifefitnesscentre.com', '(08) 8346 3633', '', 'www.newlifefitnesscentre.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 06:04:57', '2021-08-17 06:04:57', '', '', ''),
(257, 'Shiels Jewellers', 'Shop 2032 Westfield Marion, Diagonal Road, Oaklands Park', NULL, '(08) 8377 0544', '', 'https://www.shiels.com.au/marion', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:05:35', '2021-08-17 06:05:35', '', '', ''),
(258, 'Shiels Jewellers West Beach', 'Harbour Town Adelaide, 50/727 Tapleys Hill Road, West Beach', NULL, '(08) 8235 1560', '', 'https://www.shiels.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:06:57', '2021-08-17 06:06:57', '', '', ''),
(259, 'Pandora', 'BURNSIDE VILLAGE, Shop 124, 447 Portrush Road, Glenside', NULL, '(08) 8338 1966', '', 'https://au.pandora.net/en', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:08:32', '2021-08-17 06:08:32', '', '', ''),
(260, 'Gerard McCabe - Jewellers Adelaide Arcade', 'Adelaide Arcade, 2 Grenfell Street, Adelaide', NULL, '(08) 8232 1000', '', 'https://www.gerardmccabe.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:09:55', '2021-08-17 06:09:55', '', '', ''),
(261, 'PowerHouse Fitness Gym', '76 Churchill Road, Prospect', 'powerhousefitnessgym76@gmail.com', NULL, '', 'www.powerhousefitnessgym.com', 'Email', 'no', '', '', '1', 1, '2021-08-17 06:12:02', '2021-08-17 06:12:02', '', '', ''),
(262, 'Michael Hill Rundle Mall', '75 Rundle Mall, Adelaide', NULL, '(08) 8223 2253', '', 'https://www.michaelhill.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:12:15', '2021-08-17 06:12:15', '', '', ''),
(263, 'Grahams Jewellers', 'Shop R05 Street Level Myer Centre, Rundle Mall, Adelaide', NULL, '(08) 8410 1113', '', 'https://www.grahamsjewellers.com.au/myer-centre', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:14:08', '2021-08-17 06:14:08', '', '', ''),
(264, 'Tiffany & Co.', '210 North Terrace, Adelaide', NULL, '1800 731 131', '', 'https://www.tiffany.com.au/customer-service/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:17:55', '2021-08-17 06:17:55', '', '', ''),
(265, 'SA Gold Diggers Warradale', '3/241-243 Diagonal Road, Warradale', 'sagdph@optusnet.com.au', '(08) 8298 4802', '', 'https://www.sagolddiggerswarradale.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:21:05', '2021-08-17 06:21:05', '', '', ''),
(266, 'Oro China Jewelry', '1st Level, North Wing SM City Cebu, Cebu City', 'contact@orochinajewelry.com', '(032) 416 0029', '', 'orochinajewelry.com', 'Email', 'no', '', '', '3', 1, '2021-08-17 06:21:11', '2021-08-17 06:21:11', '', '', ''),
(267, 'Your World Fitness 24/7', '27-29 Young Street, Adelaide', 'gm@yourworldfitness.com.au', '(08) 8211 6570', '', 'www.yourworldfitness.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 06:22:38', '2021-08-17 06:22:38', '', '', ''),
(268, 'AAA Unley Road Pawnbrokers & Secondhand Dealers', '149 Unley Road, Unley', NULL, '(08) 8373 3177', '', 'https://www.unleypawn.com/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:23:31', '2021-08-17 06:23:31', '', '', ''),
(269, 'Autocash', '131 Holbrooks Rd underdale, Adelaide', 'info@autocash.net.au', '(08) 8352 3122', '', 'https://autocash.net.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:24:39', '2021-08-17 06:24:39', '', '', ''),
(270, 'KING PAWN ADELAIDE PAWNBROKER', '304A King William Street, Adelaide', 'ben@kingpawn.com.au', '0414 919 595', '', 'https://www.kingpawn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:26:36', '2021-08-17 06:26:36', '', '', ''),
(271, 'Adelaide Pawn shop', 'Level 4, Suite 23/55 Gawler Place, Adelaide', 'contact@adelaidepawnshop.com.au', '(08) 8123 0999', '', 'https://adelaidepawnshop.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:28:29', '2021-08-17 06:28:29', '', '', ''),
(272, 'City Cash Pawnbrokers Adelaide CBD', '28A Bank Street, Adelaide', NULL, '(08) 8221 6683', '', 'https://citycashpawnbrokers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:30:52', '2021-08-17 06:30:52', '', '', ''),
(273, 'Pawnbrokers World', '88 The Parade, Norwood', 'info@pawnbrokersworld.com.au', '(08) 8362 0922', '', 'https://pawnbrokersworld.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:32:02', '2021-08-17 06:32:02', '', '', ''),
(274, 'Cash Converters', '312-313 North East Rd, Hampstead Gardens SA 5086', 'HampsteadGardensSA@cashconverters.com', '61 8 8369 1588', '', 'https://www.cashconverters.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:37:18', '2021-08-17 06:37:18', '', '', ''),
(275, 'Cash Converters Ingle Farm', 'Shop 1027 Ingle Farm Shopping Centre, Ingle Farm SA 5098', 'IngleFarmSA@cashconverters.com', '61 8 8225 4313', '', 'https://www.cashconverters.com.au/store-locator/inglefarmsa', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:38:53', '2021-08-17 06:38:53', '', '', ''),
(276, 'Iron Industry Gym', 'Basement/120-128 Gouger Street, Adelaide', 'admin@ironindustrygym.com.au', '0410 588 880', '', 'ironindustrygym.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 06:48:17', '2021-08-17 06:48:17', '', '', ''),
(277, 'CASHSTREAM FINANCIAL', '1700 Main North Road, Salisbury', NULL, '(08) 8283 0467', '', 'https://cashstreamfinancial.com/', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:51:59', '2021-08-17 06:51:59', '', '', ''),
(278, 'Zap Fitness 24/7 Adelaide CBD', '41 Currie Street, Adelaide', 'membership@zapfitness.com.au', '1300 927 348', '', 'www.zapfitness.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 06:54:20', '2021-08-17 06:54:20', '', '', ''),
(279, 'Mastro Training', '81 King William Street, Adelaide', 'hello@mastrotraining.com.au', '0431 678 722', '', 'mastrotraining.com', 'Email', 'no', '', '', '1', 1, '2021-08-17 06:58:46', '2021-08-17 06:58:46', '', '', ''),
(280, 'Car Hire - Autorent', '31A Sherriffs Road, Lonsdale', 'support@autorent.top', NULL, '', 'https://autorent.top/car-rental/australia-adelaide?utm_campaign=%20adelaide8&utm_medium=%20adelaide96&utm_source=map', 'Email', 'no', '', '', '2', 1, '2021-08-17 06:59:48', '2021-08-17 06:59:48', '', '', ''),
(281, 'Snap Fitness', '100 Pirie Street, Adelaide', 'memberservice@snapfitness.com.au', '0488 807 627', '', 'snapfitness.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 07:03:16', '2021-08-17 07:03:16', '', '', ''),
(282, 'Total Tools Wingfield', '1/513 Grand Junction Road, Wingfield', 'enquiries@totaltools.com.au', '(08) 8161 1900', '', 'www.totaltools.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 07:04:54', '2021-08-17 07:04:54', '', '', ''),
(283, 'Revolution Health Clubs', '3/75A Angas Street, Adelaide', 'scott@revolutionhealthclubs.com.au', '0402 372 687', '', 'www.revolutionhealthclubs.com.', 'Email', 'no', '', '', '1', 1, '2021-08-17 07:08:20', '2021-08-17 07:08:20', '', '', ''),
(284, 'Impact Tools', 'Unit 2/115 Hayward Avenue, Torrensville', 'sales@impacttools.com.au', '1300 103 104', '', 'www.impacttools.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-17 07:22:20', '2021-08-17 07:22:20', '', '', ''),
(285, 'The Fitness Hub', 'Level 5 Union House, Victoria Drive, Adelaide', 'sports@adelaide.edu.au', '(08) 8313 6999', '', 'adelaideunisport.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 07:32:10', '2021-08-17 07:32:10', '', '', ''),
(286, 'Soul 365', '26 Elizabeth Street, Adelaide', 'hello@soul365.com.au', '0432 433 306', '', 'www.soul365.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 07:39:56', '2021-08-17 07:39:56', '', '', ''),
(287, 'Pitmans Motorcycles', '420 Main North Road, Blair Athol', 'sales@pitmans.com.au', '(08) 8260 9200', '', 'www.pitmans.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-17 07:44:51', '2021-08-17 07:44:51', '', '', ''),
(288, 'Thrifty Car & Truck Rental Adelaide', '28/30 Hindley Street, Shop/7 Millers Court, Adelaide', 'John.Macgowan@mynrma.com.au', '(08) 8410 8977', '', 'https://www.thrifty.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 02:43:56', '2021-08-18 02:43:56', '', '', ''),
(289, 'Ace Rental Cars Adelaide Airport', '74 Blyth Street, Adelaide', NULL, '1800 620 408', '', 'https://www.acerentalcars.com.au/locations/adelaide-airport/?utm_source=google&utm_medium=local&utm_campaign=gmb_listing&utm_content=adelaide_airport', 'Email', 'no', '', '', '2', 1, '2021-08-18 02:45:30', '2021-08-18 02:45:30', '', '', ''),
(290, 'Budget Car & Truck Rental Adelaide City', '274 North Terrace, Adelaide', NULL, '(08) 8418 7300', '', 'https://www.budget.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 02:47:31', '2021-08-18 02:47:31', '', '', ''),
(291, 'Avis Car Rental Adelaide', '136 North Terrace, Adelaide', NULL, '13 63 33', '', 'https://www.avis.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 02:48:55', '2021-08-18 02:48:55', '', '', ''),
(292, 'Excel Network Rent a Car', '18 Main Terrace, Richmond', 'info@excelrentacar.com.au', '(08) 8234 1666', '', 'https://www.excelrentacar.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 02:52:07', '2021-08-18 02:52:07', '', '', ''),
(293, 'Koala Car Rentals', '41 Sir Donald Bradman Drive, Adelaide', 'sales@koalarentals.com.au', '(08) 8352 7299', '', 'http://www.koalarentals.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 02:53:36', '2021-08-18 02:53:36', '', '', ''),
(294, 'Enterprise Rent-A-Car', '1 James Schofield Drive, Adelaide Airport', NULL, '(08) 8234 4822', '', 'https://www.enterpriserentacar.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 02:56:00', '2021-08-18 02:56:00', '', '', ''),
(295, 'Flowers by Marisa', '10/73-75 John Street, Salisbury', 'flowersbymarisa@gmail.com', '(08) 8285 9500', '', 'salisburyflowershop.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 02:56:21', '2021-08-18 02:56:21', '', '', ''),
(296, 'Redspot Car Rentals', 'Andy Thomas Circuit, Adelaide Airport', 'customer.service@ehiglobal.com.au', '1300 66 88 10', '', 'https://www.redspot.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-18 02:59:22', '2021-08-18 03:00:21', '', '', ''),
(297, 'Hertz Car Rental Adelaide Airport', 'Terminal Car Parking Building, Sir Donald Bradman Drive, Adelaide Airport', 'hcmclaimsau@hertz.com', '(08) 8424 9190', '', 'https://www.hertz.com.au/rentacar/customersupport/index.jsp?targetPage=contactUsTypeSelectionView.jsp&utm_source=google&utm_medium=local&utm_campaign=gmb_listing&utm_content=adelaide%20airport', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:03:21', '2021-08-18 03:03:21', '', '', ''),
(298, 'Enterprise Car & Truck Rental', '153-161 Grange Road, Beverley', NULL, '(08) 8268 1025', '', 'https://www.enterpriserentacar.com.au/en_US/help/contact.html', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:05:10', '2021-08-18 03:05:10', '', '', ''),
(299, 'Access Rent A Car', '464 Port Road, West Hindmarsh', 'info@accessrentacar.com', '(08) 8340 0400', '', 'https://www.accessrentacar.com/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:07:54', '2021-08-18 03:07:54', '', '', ''),
(300, 'Embellish Flowers and Plant', '356/360 Main North Road, Blair Athol', 'embellish@embellish.com.au', '(08) 8212 6588', '', 'www.embellish.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 03:14:17', '2021-08-18 03:14:17', '', '', ''),
(301, 'ADT Security', 'Unit 2/5-7 Stephen Street, Melrose Park', NULL, '13 12 38', '', 'https://www.adtsecurity.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:14:48', '2021-08-18 03:14:48', '', '', ''),
(302, 'Safehands Security Services', 'Unit 2/537 Cross Road, Plympton', 'operations@sfhservices.com.au', '0422 147 364', '', 'https://www.safehandssecurityservices.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:23:14', '2021-08-18 03:23:14', '', '', ''),
(303, 'QBD Books Elizabeth', ':	Shop 88, Elizabeth Shopping Centre, 50 Elizabeth Way, Elizabeth', 'marketing@qbd.com.au', '(08) 8486 1000', '', 'www.qbd.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 03:25:05', '2021-08-18 03:25:05', '', '', ''),
(304, 'ISS Facility Service', 'Unit D/225-233 Marion Road, Marleston', 'enquiries@au.issworld.com', '(08) 8354 8988', '', 'https://www.au.issworld.com/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:27:21', '2021-08-18 03:27:21', '', '', ''),
(305, 'Professionals Richmond', '152 Marion Road, West Richmond', NULL, '(08) 8352 3444', '', 'https://richmondprofessionals.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-18 03:30:24', '2021-08-18 03:41:02', '', '', ''),
(306, 'QBD Books Tea Tree Plaza', 'Shop 234/976 North East Road, Modbury', 'marketing@qbd.com.au', '(08) 7160 0017', '', 'marketing@qbd.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 03:32:38', '2021-08-18 03:32:38', '', '', ''),
(307, 'Window Shield Australia', '14A Henley Beach Road, Mile End', 'info@windowshield.com.au', '(08) 8350 9711', '', 'https://windowshield.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:37:22', '2021-08-18 03:37:22', '', '', ''),
(308, 'MSS Security', '166 Grote Street, Adelaide', 'media@msssecurity.com.au', '(08) 8400 6800', '', 'https://msssecurity.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:42:34', '2021-08-18 03:42:34', '', '', ''),
(309, 'RSEA Safety Elizabeth', 'Tenancy 4/1 Philip Highway, Elizabeth', 'customerservice@rsea.com.au', '(08) 8393 5800', '', 'www.rsea.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 03:43:11', '2021-08-18 03:43:11', '', '', ''),
(310, 'McGees Property', 'Level 10/60 Waymouth Street, Adelaide', NULL, '(08) 8414 7800', '', 'https://www.adl.mcgees.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:44:22', '2021-08-18 03:44:22', '', '', ''),
(311, 'NPB Security - Adelaide - South Australia', 'Level 3/97 Pirie Street, Adelaide', 'info@npbsecurity.com', '(08) 8119 0966', '', 'https://www.npbsecurity.com/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:45:45', '2021-08-18 03:45:45', '', '', ''),
(312, 'Wilson Security Adelaide', 'Level 2/144 North Terrace, Adelaide', NULL, '1300 945 766', '', 'https://www.wilsonsecurity.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-18 03:48:17', '2021-08-18 04:08:48', '', '', ''),
(313, 'Professionals Prospect - Real Estate Agents and Property Management', '186 Prospect Road, Prospect', NULL, '(08) 8269 5333', '', 'https://prospectprofessionals.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 03:49:27', '2021-08-18 03:49:27', '', '', ''),
(314, 'Southern Cross Protection', 'Unit 1/36 Tikalara Street, Regency Park', NULL, '1300 136 102', '', 'https://sxprotection.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:10:52', '2021-08-18 04:10:52', '', '', ''),
(315, 'Fitness 33', '57 Byron Place, Adelaide', 'steve@fitness33.com.au', '(08) 8231 0203', '', 'www.fitness33.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 04:11:39', '2021-08-18 04:11:39', '', '', ''),
(316, 'My Money House', '38 North East Road, Walkerville', 'admin@mymoneyhouse.com.au', '1300 870 838', '', 'https://www.mymoneyhouse.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:12:37', '2021-08-18 04:12:37', '', '', ''),
(317, 'WILLIAMS Real Estate', '60 Kensington Road, Rose Park', NULL, '(08) 8203 1200', '', 'https://www.williamsproperty.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:14:39', '2021-08-18 04:14:39', '', '', ''),
(318, 'Satori Women\'s Health Club', '80A Unley Road, Unley', 'fitness@swhc.com.au', '(08) 8299 9701', '', 'adelaidewomensfitness.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 04:16:19', '2021-08-18 04:16:19', '', '', ''),
(319, 'Marshall SA Real Estate', '314 Portrush Road, Kensington', NULL, '(08) 8332 4555', '', 'https://www.marshallsa.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:17:46', '2021-08-18 04:17:46', '', '', ''),
(320, 'Maxima', 'Shop 4/136 The Parade, Norwood', NULL, '1300 629 462', '', 'https://maxima.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:20:19', '2021-08-18 04:20:19', '', '', ''),
(321, 'X-Road Fitness', '375 Cross Road, Edwardstown', 'XROADFITNESS@GMAIL.COM', '(08) 8371 2600', '', 'www.xroadfitness.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 04:21:28', '2021-08-18 04:21:28', '', '', ''),
(322, 'SASH Security Services', '68A Lurline Avenue, Gilles Plains', 'services.sashsec@gmail.com', '0405 541 268', '', 'https://www.sashsecurity.org/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:22:03', '2021-08-18 04:22:03', '', '', ''),
(323, 'Southland Supply Group Regency Park, SA', '6/8 Pambula Street, Regency Park', 'webstore@southland.com.au', '(08) 7009 4930', '', 'www.southland.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 04:22:41', '2021-08-18 04:22:41', '', '', ''),
(324, 'Securitas', '10 Watervale Drive, Green Fields', NULL, '(08) 7285 6300', '', 'https://www.securitas-australia.com.au/contact-us/offices-in-australia/adelaide/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:23:44', '2021-08-18 04:23:44', '', '', ''),
(325, 'Lin Andrews Real Estate Pty Ltd', '28 Commercial Road, Salisbury', 'linandrews@linandrews.com.au', '(08) 8283 1777', '', 'https://linandrews.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:24:40', '2021-08-18 04:24:40', '', '', ''),
(326, 'Titanium Security Australia Pty Ltd', '14 Bayer Road, Elizabeth South', NULL, '1300 800 667', '', 'https://titaniumsecurity.net/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:26:49', '2021-08-18 04:26:49', '', '', ''),
(327, 'The Fitness Temple', 'Roxy Centre, 80 Anzac Highway, Everard Park', 'info@thejunglebody.com', '0402 289 870', '', 'linktr.ee/thefitnesstemple', 'Email', 'no', '', '', '1', 1, '2021-08-18 04:27:55', '2021-08-18 04:27:55', '', '', ''),
(328, 'Bendigo Bank', '695 Burbridge Road, West Beach', NULL, '(08) 8235 0208', '', 'https://www.bendigobank.com.au/branch/sa/community-bank-west-beach-districts/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:28:38', '2021-08-18 04:28:38', '', '', ''),
(329, 'Safety Supplies SA', '15 Sherriffs Road, Lonsdale', 'sales@safetysuppliessa.com.au', '(08) 8387 8660', '', 'www.safetysuppliessa.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 04:28:40', '2021-08-18 04:28:40', '', '', ''),
(330, 'Unity Bank', '65 Saint Vincent Street, Port Adelaide', 'mail@unitybank.com.au', '1300 36 2000', '', 'https://www.unitybank.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:30:12', '2021-08-18 04:30:12', '', '', ''),
(331, 'Plus Fitness 24/7 Marleston', '150 Richmond Road, Marleston', 'marleston@plusfitness.com.au', '(08) 8352 8444', '', 'www.plusfitness.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 04:30:25', '2021-08-18 04:30:25', '', '', ''),
(332, 'Delphi Bank', '2/137/139 Henley Beach Road, Torrensville', NULL, '(08) 8152 8200', '', 'https://www.delphibank.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:32:06', '2021-08-18 04:32:06', '', '', ''),
(333, 'Kennards Hire Salisbury', '1730 Main North Road, Salisbury', 'info@kennards.com.au', '(08) 8406 8900', '', 'www.kennards.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 04:33:29', '2021-08-18 04:33:29', '', '', ''),
(334, 'PEAK 24 FITNESS AND PT', '149-151 Marion Road, Richmond', 'info@peak24.com.au', '0438 732 524', '', 'peak24.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 04:34:12', '2021-08-18 04:34:12', '', '', ''),
(335, 'Bank of Sydney Mile End Branch', '149 Henley Beach Road, Mile End', NULL, '(08) 8159 8000', '', 'https://www.banksyd.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-18 04:34:39', '2021-08-18 04:50:23', '', '', ''),
(336, 'Commonwealth Bank Torrensville Branch', '158 Henley Beach Road, Torrensville', NULL, '(08) 8352 5944', '', 'https://www.commbank.com.au/personal/locate-us/sa/torrensville/065124.html', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:35:58', '2021-08-18 04:35:58', '', '', ''),
(337, 'Snap Fitness 24/7 Hilton', '121-123 Sir Donald Bradman Drive, Hilton', 'hilton@snapfitness.com.au', '0402 402 627', '', 'www.snapfitness.com', 'Email', 'yes', '', '', '1', 1, '2021-08-18 04:37:14', '2021-08-20 04:47:39', '', '', ''),
(338, 'BankSA Branch Gouger St', '71-75 Gouger Street, Adelaide', NULL, '13 13 76', '', 'https://www.banksa.com.au/home', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:37:56', '2021-08-18 04:37:56', '', '', ''),
(339, 'Pets Domain', 'Gawler Park Shopping Centre, 485 Main North Road, Evanston', 'admin@petsdomain.com.au', '(08) 8522 7146', '', 'petsdomain.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 04:41:36', '2021-08-18 04:41:36', '', '', ''),
(340, 'Bank of China', 'Level 8/1 King William Street, Adelaide', NULL, '(08) 8210 8988', '', 'https://www.bankofchina.com/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:42:15', '2021-08-18 04:42:15', '', '', ''),
(341, 'Bank Australia', '102 Gawler Place, Adelaide', NULL, '13 28 88', '', 'https://www.bankaust.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:44:53', '2021-08-18 04:44:53', '', '', ''),
(342, 'Adelaide Bank', '80 Grenfell Street, Adelaide', NULL, '(08) 8300 6000', '', 'https://www.adelaidebank.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:46:07', '2021-08-18 04:46:07', '', '', ''),
(343, 'PETstock', 'Shop 3/600 Main North Road, Smithfield', 'customerservice@petstock.com.au', '(08) 8155 6060', '', 'www.petstock.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-18 04:46:49', '2021-08-18 06:40:36', '', '', ''),
(344, 'Beyond Bank', 'Pelican Plaza, shop 15/1007 North East Road, Ridgehaven', NULL, '(08) 8241 3800', '', 'https://www.beyondbank.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:49:15', '2021-08-18 04:49:15', '', '', ''),
(345, 'Autopro Aberfoyle Park', '3/33 Sandpiper Crescent, Aberfoyle Park', 'sales@aberfoylepark.autopro.com.au', '(08) 8270 7344', '', 'https://www.autopro.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:53:00', '2021-08-18 04:53:00', '', '', ''),
(346, 'Supercheap Auto Darlington', '1495 Main South Road, Darlington', NULL, '(08) 8358 3566', '', 'https://www.supercheapauto.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-18 04:55:51', '2021-08-18 04:57:30', '', '', ''),
(347, 'Norwood Parade Auto Spares', '54 The Parade, Norwood', 'derek@derek.com.au', '(08) 8363 4183', '', 'http://www.derek.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 04:56:32', '2021-08-18 04:56:32', '', '', ''),
(348, 'Burson Auto Parts', '102 King William Street, Kent Town', NULL, '(08) 8362 1188', '', 'https://www.burson.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:00:19', '2021-08-18 05:00:19', '', '', ''),
(349, 'Autobarn Churchill', 'Shop 2, Churchchill Centre 2, 252 Churchill Road, Kilburn', 'sales@churchill.autobarn.com.au', '(08) 8269 5577', '', 'https://autobarn.com.au/ab/store/51CH', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:05:04', '2021-08-18 05:05:04', '', '', ''),
(350, 'Bliss Events', '37b Manton Street, Hindmarsh', 'info@blissevents.net.au', '0412 627 945', '', 'www.blissevents.net.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:15:44', '2021-08-18 05:15:44', '', '', ''),
(351, 'Autopro Enfield', '406 Main North Road, Blair Athol', NULL, '(08) 8262 8338', '', 'https://www.autopro.com.au/contacts', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:18:51', '2021-08-18 05:18:51', '', '', ''),
(352, 'ASV Euro Car Parts', '30 Cavan Road, Dry Creek', 'sales@asv.com.au', '(08) 7002 5095', '', 'https://www.asv.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:20:36', '2021-08-18 05:20:36', '', '', ''),
(353, 'White Marquee Event Hire', 'Richmond Road, Marleston', 'sales@whitemarquee.com.au', '(08) 7231 0435', '', 'www.whitemarquee.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:22:22', '2021-08-18 05:22:22', '', '', ''),
(354, 'Repco', '947 North East Road, Modbury', 'online@repco.com.au', '(08) 8395 4722', '', 'https://www.repco.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:23:00', '2021-08-18 05:23:00', '', '', ''),
(355, 'Auto One Clovercrest', '1/92 Kelly Road, Modbury', 'sales@autooneonline.com.au', '(08) 8395 3200', '', 'https://www.autoone.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:25:05', '2021-08-18 05:25:05', '', '', ''),
(356, 'SARA Store', '10 Gum Avenue, Dry Creek', 'enquiries@sarastore.com.au', '(08) 8244 5533', '', 'www.sarastore.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 05:25:43', '2021-08-18 05:25:43', '', '', ''),
(357, 'Total Auto Parts', '5/7 Ween Road, Pooraka', 'sales@sasuspension.com.au', '(08) 8359 6777', '', 'http://www.sasuspension.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:26:50', '2021-08-18 05:26:50', '', '', ''),
(358, 'Australian Hiring Company', '3 Price Street, Melrose Park', 'andrew@australian-hiring.com.au', '(08) 8276 2250', '', 'www.australian-hiring.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:26:52', '2021-08-18 05:26:52', '', '', ''),
(359, 'SA Auto Spares', '1383 Main North Road, Para Hills West', 'info@saautospares.com.au', '(08) 8250 3030', '', 'https://www.saautospares.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:28:39', '2021-08-18 05:28:39', '', '', ''),
(360, 'Bullet Race Engineering', '14/18 Dundee Avenue, Holden Hill', 'info@bulletraceengineering.com', '(08) 8261 8813', '', 'www.bulletraceengineering.com', 'Email', 'no', '', '', '1', 1, '2021-08-18 05:29:17', '2021-08-18 05:29:17', '', '', ''),
(361, 'My Car Part', '4/386 Martins Road, Green Fields', 'hello@mycarpart.com.au', '0481 823 500', '', 'https://mycarpart.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:30:04', '2021-08-18 05:30:04', '', '', ''),
(362, 'Just Little Car Spares', '18-20 Barndioota Road, Salisbury Plain', 'littlecars@bigpond.com', '(08) 8281 5877', '', 'https://www.justlittlecarspares.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:31:26', '2021-08-18 05:31:26', '', '', ''),
(363, 'Salisbury Auto Parts', '178 Commercial Road, Salisbury', 'sales@salisburyautoparts.com.au', '(08) 8281 8281', '', 'https://salisburyautoparts.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:33:28', '2021-08-18 05:33:28', '', '', ''),
(364, 'Splodge & Groove', '10B Forest Avenue, Rostrevor', 'info@splodge.com.au', '0401 316 655', '', 'www.splodge.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:33:55', '2021-08-18 05:33:55', '', '', ''),
(365, 'Autobarn Elizabeth', '19 Gillingham Road, Elizabeth', 'sales@salisburyautoparts.com.au', '(08) 8287 5777', '', 'https://autobarn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:36:10', '2021-08-18 05:36:10', '', '', ''),
(366, 'Autobarn 🚗', '2/621-623 North East Road, Gilles Plains', 'sales@gillesplains.autobarn.com.au', '(08) 8261 0000', '', 'www.autobarn.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 05:37:09', '2021-08-18 05:37:09', '', '', ''),
(367, 'Sprint Auto Parts', '5 Railway Terrace, Nuriootpa', NULL, '(08) 8562 1222', '', 'https://www.autopro.com.au/sprint-auto-parts', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:37:53', '2021-08-18 05:37:53', '', '', ''),
(368, 'Fairmont Homes', '19 Fullarton Road, Kent Town', 'hello@fairmonthomes.com.au', '(08) 8112 3112', '', 'www.fairmonthomes.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:39:01', '2021-08-18 05:39:01', '', '', ''),
(369, 'Salt & Pepper Catering', '1079 Old Sturt Highway, Berri', 'saltpepa@bigpond.net.au', '(08) 8582 4775', '', 'http://www.saltandpeppercatering.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:39:14', '2021-08-18 05:39:14', '', '', ''),
(370, 'Chief Catering', '12 Rose Crescent, McLaren Flat', 'enquiries@chiefcatering.com.au', '0412 730 874', '', 'https://www.chiefcatering.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:40:46', '2021-08-18 05:40:46', '', '', ''),
(371, 'Let\'s Eat Catering', '11 Aldenhoven Road, Lonsdale', NULL, '(08) 8382 2477', '', 'http://www.letseatcatering.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:43:05', '2021-08-18 05:43:05', '', '', ''),
(372, 'Dine Catering', 'Unit 2/17 Byre Avenue, Somerton Park', 'glen@dinecatering.com.au', '0407 790 565', '', 'https://www.dinecatering.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:43:49', '2021-08-18 05:43:49', '', '', ''),
(373, 'Adelaide Oval', 'War Memorial Drive, North Adelaide', 'enquiries@adelaideoval.com.au', '(08) 8211 1100', '', 'www.adelaideoval.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:44:09', '2021-08-18 05:44:09', '', '', ''),
(374, 'Little Adelaide Catering Company', '12 Gumbowie Avenue, Edwardstown', NULL, '0459 487 084', '', 'http://www.lacatering.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:46:23', '2021-08-18 05:46:23', '', '', ''),
(375, 'Hash Print Digital', '2 King William Street, Adelaide', 'sales@hashprint.com.au', '(08) 7073 2945', '', 'hashprint.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:47:52', '2021-08-18 05:47:52', '', '', ''),
(376, 'Plenty Catering Co-catering Adelaide', '4/900 South Road, Edwardstown', 'greatfood@plentycateringco.com', '(08) 8371 0505', '', 'https://www.plentycateringco.com/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:48:35', '2021-08-18 05:48:35', '', '', ''),
(377, 'Grazing Platters', '44 Browning Avenue, Plympton Park', NULL, '0417 836 909', '', 'http://www.grazingplatters.com.au/contact.html', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:49:55', '2021-08-18 05:49:55', '', '', ''),
(378, 'Stir It Up Catering', '37 Maxwell Terrace, Glenelg', NULL, '0417 867 453', '', 'https://stiritupcatering.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:51:38', '2021-08-18 05:51:38', '', '', ''),
(379, 'Mindshift Escape Rooms Adelaide', 'ground floor 246/248 Pulteney Street, Adelaide', 'enquiries@mindshiftescaperooms.com.au', '(08) 8232 8208', '', 'mindshiftescaperooms.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:52:05', '2021-08-18 05:52:05', '', '', ''),
(380, 'Cargo Catering Co.', '37b Goodwood Road, Wayville', 'hello@cargocateringco.com', '(08) 7073 5805', '', 'https://www.cargocateringco.com/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:53:52', '2021-08-18 05:53:52', '', '', ''),
(381, 'Oranaise Catering Adelaide', 'Westpac House, Level 24/91 King William Street, Adelaide', 'Support@oranaise.com.au', '0423 614 463', '', 'https://www.oranaise.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-18 05:55:14', '2021-08-18 05:55:14', '', '', ''),
(382, 'Keito Events', '265-267 Halifax Street, Adelaide', 'events@keito.com.au', '(08) 7089 6465', '', 'www.keito.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 05:58:19', '2021-08-18 05:58:19', '', '', ''),
(383, 'Sunnybrae Estate Function Centre', '1 Naweena Road, Regency Park', 'events@sunnybrae.com.au', '(08) 8346 8806', '', 'sunnybrae.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 06:22:55', '2021-08-18 06:22:55', '', '', ''),
(384, 'Donato Reception Centre', '62 Humphries Terrace, Kilkenny', 'info@donatorc.com.au', '(08) 8347 3440', '', 'www.donatorc.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 06:29:47', '2021-08-18 06:29:47', '', '', ''),
(385, 'Fly By Fun', '1 Days Road, Croydon Park', 'bookings@flybyfun.com.au', '1800 359 293', '', 'flybyfun.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 06:38:26', '2021-08-18 06:38:26', '', '', ''),
(386, 'Modern Party', '16-20 Alfred Avenue, Beverley', 'info@modernparty.com.au', '(08) 8351 9901', '', 'www.modernpartyhireadelaide.co', 'Email', 'no', '', '', '3', 1, '2021-08-18 06:46:43', '2021-08-18 06:46:43', '', '', ''),
(387, 'Middleton Events', '4 Kincaid Road, Henley Beach South', 'john@middletonevents.com', '0400 416 991', '', 'www.middletonevents.com', 'Email', 'no', '', '', '3', 1, '2021-08-18 06:49:41', '2021-08-18 06:49:41', '', '', ''),
(388, 'Unley', '170 Unley Road, Unley', 'customersupport@target.com.au', '(08) 8291 3700', '', 'www.target.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 06:50:09', '2021-08-18 06:50:09', '', '', ''),
(389, 'Adult Bliss', '1-2/397 -399 Glen Osmond Road, Glen Osmond', 'customercare@adultblisserotica.com.au', '(08) 8338 6347', '', 'www.adultblisserotica.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:01:26', '2021-08-18 07:01:26', '', '', ''),
(390, 'San Giorgio La Molara Community Centre', '11 Henry Street, Payneham', 'sangiorgesi@bigpond.com', '(08) 8336 6600', '', 'sangiorgiolamolaraclub.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 07:02:25', '2021-08-18 07:02:25', '', '', ''),
(391, 'Osmond Terrace Function Centre', '97 The Parade, Norwood', 'norwood.hotel@alhgroup.com.au', '(08) 8431 1822', '', 'www.thenorwood.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 07:05:34', '2021-08-18 07:05:34', '', '', ''),
(392, 'Club X', '348 King William Street, Adelaide', 'customer@clubx.com.au', '(08) 8212 3134', '', 'www.clubx.com.au', 'Email', 'yes', '', '', '1', 1, '2021-08-18 07:06:24', '2021-08-20 04:39:06', '', '', ''),
(393, 'Ayers House', '288 North Terrace, Adelaide', 'info@ayershouse.com.au', '(08) 8224 0666', '', 'ayershouse.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 07:11:20', '2021-08-18 07:11:20', '', '', ''),
(394, 'Golf World', '120 West Terrace, Adelaide', NULL, '(08) 8211 8005', '', 'www.golfworld.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:11:57', '2021-08-18 07:11:57', '', '', ''),
(395, 'Sanctuary Catering & Events', '1 Plane Tree Drive, Adelaide', 'events@sanctuaryadelaidezoo.com.au', '(08) 8230 1313', '', 'www.sanctuaryadelaidezoo.com.a', 'Email', 'no', '', '', '3', 1, '2021-08-18 07:16:12', '2021-08-18 07:16:12', '', '', ''),
(396, 'Minimax City Cross', 'Shop 36/37 Rundle Mall, Adelaide', NULL, '(08) 8212 4322', '', 'https://www.minimax.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:17:06', '2021-08-18 07:17:06', '', '', ''),
(397, 'BeBe\'s - Function, Party & Wedding Venue - Adelaid', '41 Gray Street, Adelaide', 'orders@marcellina.com.au', '(08) 8212 0567', '', 'www.bebesroom.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-18 07:25:10', '2021-08-18 07:25:10', '', '', ''),
(398, 'Fisher Firearms Wholesale PTY Ltd.', '20 Magill Road, Norwood', NULL, '(08) 8362 8977', '', 'www.fisherfirearms.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:25:41', '2021-08-18 07:25:41', '', '', ''),
(399, 'Yamaha Retro Spares', '2/108 Regency Road, Ferryden Park', NULL, '(08) 8340 1970', '', 'yamaharetrospares.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:28:51', '2021-08-18 07:28:51', '', '', ''),
(400, 'Strandbags', 'Munno Para Shopping City Shop, 75/600 Main North Road, Smithfield', NULL, '(08) 8254 6431', '', 'www.strandbags.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:39:51', '2021-08-18 07:39:51', '', '', ''),
(401, 'Paddy Pallin', '228 Rundle Street, Adelaide', 'perth@paddypallin.com.au', '(08) 8232 3155', '', 'www.paddypallin.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:43:25', '2021-08-18 07:43:25', '', '', ''),
(402, 'Details Handbags', '9/155 King William Road, Unley', 'Info@detailshandbags.com', '0466 833 918', '', 'www.detailshandbags.com', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:46:51', '2021-08-18 07:46:51', '', '', ''),
(403, 'The Luggage Place Sales and Repairs Adelaide', 'U2/142-144 Richmond Road, Marleston', 'info@theluggageplace.com.au', '(08) 8231 4884', '', 'www.luggageplace.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-18 07:52:02', '2021-08-18 07:52:02', '', '', ''),
(404, 'Taylor & Holmes', '60 London Road, Mile End South', NULL, '(08) 8354 1716', '', 'https://www.taylorandholmes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:06:30', '2021-08-19 02:06:30', '', '', ''),
(405, 'Cozy Shoes', '3/239 Main North Road, Sefton Park', NULL, '(08) 7070 3040', '', 'www.cozyshoes.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 02:07:46', '2021-08-19 02:07:46', '', '', ''),
(406, 'Rustic Gourmet', '471 B26, Tusmore', 'info@rusticgourmet.com.au', '(08) 7120 2013', '', 'http://www.rusticgourmet.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:08:31', '2021-08-19 02:08:31', '', '', ''),
(407, 'Ian\'s Shoes Clearance Store', '59 Prospect Road, Prospect', 'sales@iansshoes.com.au', '(08) 8269 3028', '', 'www.iansshoes.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 02:10:51', '2021-08-19 02:10:51', '', '', ''),
(408, 'Norwood Catering Services', '79-81 Kensington Road, Norwood', 'info@norwoodcateringservices.com', '(08) 8333 3332', '', 'https://www.norwoodcateringservices.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:11:27', '2021-08-19 02:11:27', '', '', ''),
(409, 'Hello Sarnie', '147 Pirie Street, Adelaide', 'catering@hellosarnie.com.au', NULL, '', 'https://www.hellosarnie.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:12:36', '2021-08-19 02:12:36', '', '', ''),
(410, 'Indulgence Food Design Pty Ltd', '11 Union Street, Stepney', 'events@indulgencefood.com.au', '(08) 8362 6002', '', 'https://www.indulgencefood.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:14:39', '2021-08-19 02:14:39', '', '', ''),
(411, 'Shoe Central', '480 Payneham Road, Glynde', 'info@shoecentral.net.au', '(08) 8337 4025', '', '(08) 8337 4025', 'Email', 'no', '', '', '3', 1, '2021-08-19 02:15:12', '2021-08-19 02:15:12', '', '', ''),
(412, 'Food Man Chew', '184 Payneham Road, Evandale', 'mick@foodmanchew.com.au', '0421 958 566', '', 'https://www.foodmanchew.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:16:06', '2021-08-19 02:16:06', '', '', ''),
(413, 'Jo Mercer', '154B The Parade, Norwood', 'hello@jomercer.com.au', '(08) 8133 9916', '', 'www.jomercer.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-19 02:18:00', '2021-08-19 02:28:02', '', '', ''),
(414, 'Bakery on O\'Connell', '128-130 O\'Connell Street, North Adelaide', NULL, '(08) 8361 7377', '', 'http://www.bakeryonoconnell.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:18:56', '2021-08-19 02:18:56', '', '', ''),
(415, 'CARŌCLUB', 'Red Shed Lane, Bowden', NULL, '0423 254 424', '', 'https://www.caroclub.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:20:23', '2021-08-19 02:20:23', '', '', '');
INSERT INTO `tasks` (`id`, `name`, `address`, `email`, `phone`, `mobile`, `website`, `strategy`, `response`, `status`, `partner`, `aid`, `transaction`, `created_at`, `updated_at`, `directory`, `category`, `town`) VALUES
(416, 'Adelaide Classic Caterers', '5 Bacon Street, Hindmarsh', 'enquiry@classiccaterers.com.au', '(08) 8340 1288', '', 'https://www.classiccaterers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:22:03', '2021-08-19 02:22:03', '', '', ''),
(417, 'Coast to Coast the Golden Roast Adelaide', '40 Crittenden Road, Findon', 'canberra@goldenroast.com.au', '02 6242 9700', '', 'https://goldenroast.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:23:23', '2021-08-19 02:23:23', '', '', ''),
(418, 'Tony Bianco Burnside', 'Shop 202, Level/1 Portrush Road, Glenside', 'enquiries@tonybianco.com', '(08) 6364 0125', '', 'www.tonybianco.com', 'Email', 'no', '', '', '3', 1, '2021-08-19 02:23:32', '2021-08-19 02:23:32', '', '', ''),
(419, 'The Caterers', '47 Lansdowne Terrace, Vale Park', 'thecatererorders@internode.on.net', '(08) 8342 3550', '', 'https://adelaidecaterershop.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:25:00', '2021-08-19 02:25:00', '', '', ''),
(420, 'Orlando Catering', '7 Benjamin Street, Newton', 'info@orlandocatering.com.au', '0422 021 957', '', 'https://orlandocatering.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:26:24', '2021-08-19 02:26:24', '', '', ''),
(421, 'Kerry\'s Crafty Cards and Cuts', '10/7 Wiland Street, Mount Barker', NULL, '0407 971 049', '', 'https://kerryscraftycardsandcuts.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:28:46', '2021-08-19 02:28:46', '', '', ''),
(422, 'kikki.K Marion', 'Westfield Marion, 1094/297 Diagonal Road, Oaklands Park', NULL, '(08) 8127 4026', '', 'https://www.kikki-k.com/au', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:30:25', '2021-08-19 02:30:25', '', '', ''),
(423, 'TYPO', 'Shop 2018/297 Diagonal Road, Oaklands Park', 'pr@cottonon.com.au', '(08) 8377 5940', '', 'https://cottonon.com/AU/typo-home/typo-shop-all/', 'Email', 'yes', '', '', '2', 1, '2021-08-19 02:33:03', '2021-08-19 02:36:36', '', '', ''),
(424, 'Shouz - Women\'s Shoes in Burnside', 'Shop 32 Burnside Village, 447 Portrush Road, Glenside', 'hello@shouz.com.au', '(08) 7078 6192', '', 'www.shouz.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 02:33:57', '2021-08-19 02:33:57', '', '', ''),
(425, 'Smiggle', 'Shop 2062/297 Diagonal Road, Oaklands Park', NULL, '(08) 8298 4728', '', 'https://help.smiggle.com.au/hc/en-au?return_to=%2Fhc%2Frequests', 'Email', 'yes', '', '', '2', 1, '2021-08-19 02:35:28', '2021-08-19 02:36:31', '', '', ''),
(426, 'Earth Greetings', '4/22/24 Bennet Avenue, Melrose Park', NULL, '(08) 8277 2001', '', 'https://www.earthgreetings.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:38:39', '2021-08-19 02:38:39', '', '', ''),
(427, 'Art To Art- Brooklyn Park', '374 Sir Donald Bradman Drive, Brooklyn Park', NULL, '(08) 8353 4261', '', 'http://www.arttoart.net/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:40:57', '2021-08-19 02:40:57', '', '', ''),
(428, 'Lana Lang Shoes', '62-72 Gouger Street, Adelaide', 'shop@lanalang.com.au', '0424 197 898', '', 'www.lanalang.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 02:42:35', '2021-08-19 02:42:35', '', '', ''),
(429, 'Port Art Supplies', '83 Commercial Road, Port Adelaide', 'sales@portartsupplies.com.au', '(08) 8241 0059', '', 'http://www.portartsupplies.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:44:26', '2021-08-19 02:44:26', '', '', ''),
(430, 'Typo Tea Tree', 'Tea Tree Plaza, Shop 241, 976 North East Road, Modbury', NULL, '(08) 8265 4390', '', 'https://cottonon.com/AU/typo-home', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:47:33', '2021-08-19 02:47:33', '', '', ''),
(431, 'Mobil', '345 Mount Barker Road, Aldgate', 'aucustomercare@exxonmobil.com', '(08) 8464 0679', '', 'https://www.mobil.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:49:39', '2021-08-19 02:49:39', '', '', ''),
(432, 'bp', '3 Main Street, Crafers', NULL, '(08) 8419 4677', '', 'https://map.bp.com/en-AU/AU/gas-station/crafers/bp-crafers/9125', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:50:42', '2021-08-19 02:50:42', '', '', ''),
(433, 'Shell', '110 Yorktown Road, Elizabeth Park', NULL, '61 8 8255 6565', '', 'https://find.shell.com/au/fuel/AU_M274-coles-express-elizabeth-park', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:51:52', '2021-08-19 02:51:52', '', '', ''),
(434, 'Umart Online Croydon', 'Adelaide city', 'support@umart.com.au', '+61 7 3369 3928', '', 'www.umart.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-19 02:54:08', '2021-08-19 03:06:32', '', '', ''),
(435, 'O\'Brien® AutoGlass Marion', '951 Marion Road, Mitchell Park', 'enquiries@obrien.com.au', '1800 815 016', '', 'https://www.obrien.com.au/locations/vehicle-glass/obrien-autoglass-marion?utm_source=gmb&utm_medium=branch-pages&y_source=1_MzgzMTkyMy03MTUtbG9jYXRpb24uZ29vZ2xlX3dlYnNpdGVfb3ZlcnJpZGU%3D', 'Email', 'no', '', '', '2', 1, '2021-08-19 02:55:33', '2021-08-19 02:55:33', '', '', ''),
(436, 'Glenelg Glass', 'Glenelg Glass 76 Brighton Road Glenelg East SA 5045', 'sales@glenelg-glass.com.au', '08 8295 3464', '', 'http://www.glenelg-glass.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:02:58', '2021-08-19 03:02:58', '', '', ''),
(437, 'Instant Windscreens Edwardstown - Repairs & Tinting', '943 South Road, Melrose Park', NULL, '132 444', '', 'https://www.instantwindscreens.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:04:57', '2021-08-19 03:04:57', '', '', ''),
(438, 'Ezy Fix Windscreens Adelaide', 'Unit 4/29-31 Aldridge Terrace, Marleston', NULL, '1800 399 349', '', 'https://www.ezyfixwindscreens.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:06:38', '2021-08-19 03:06:38', '', '', ''),
(439, 'B and M Glass', 'B and M Glass Address:	82 Charles Street, Unley', 'enquiries@bandmglass.com.au', '(08) 8271 0111', '', 'https://www.bandmglass.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:08:30', '2021-08-19 03:08:30', '', '', ''),
(440, 'Unley Glass', '23 Oxford Terrace, Unley', 'unleyglass1@gmail.com', '(08) 8373 4710', '', 'http://www.unleyglass.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:10:43', '2021-08-19 03:10:43', '', '', ''),
(441, 'Crane Glass Pty Ltd.', '38 Allinga Avenue, Glenside', 'ian@craneglass.com.au', '0418 819 991', '', 'https://craneglass.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:11:38', '2021-08-19 03:11:38', '', '', ''),
(442, 'CellPhone Care', '41 Curbur Avenue, Pooraka', 'care.cellphone@gmail.com', '0416 268 076', '', 'www.cellphonecare.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 03:12:42', '2021-08-19 03:12:42', '', '', ''),
(443, 'BB Autoglass', 'Victoria Square, Adelaide', NULL, '0413 919 130', '', 'https://www.bbautoglass.net/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:13:23', '2021-08-19 03:13:23', '', '', ''),
(444, 'The Glass Emporium', '34 Phillips Street, Thebarton', 'glassemp@adam.com.au', '(08) 8234 7922', '', 'https://www.theglassemporium.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:15:23', '2021-08-19 03:15:23', '', '', ''),
(445, 'Instant Windscreens Prospect - Repairs & Tinting', '120 Main North Road, Prospect', NULL, '13 24 44', '', 'https://www.instantwindscreens.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:17:50', '2021-08-19 03:17:50', '', '', ''),
(446, 'Delta Glass & Splashbacks', '715 Lower North East Road, Paradise', 'deltaglass@bigpond.com', '(08) 8365 3065', '', 'https://deltaglassandsplashbacks.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:19:08', '2021-08-19 03:19:08', '', '', ''),
(447, 'Seaton Glass', 'Unit 1/15 Frederick Road, Royal Park', 'info@seatonglass.com.au', '(08) 8341 2355', '', 'https://seatonglass.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:20:14', '2021-08-19 03:20:14', '', '', ''),
(448, 'Hartley Glass', '3 Staite Street, Wingfield', 'info@hartleyglass.com.au', '1300 260 026', '', 'https://www.hartleyglass.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:21:49', '2021-08-19 03:21:49', '', '', ''),
(449, 'All Areas Glass & Glazing', 'shop 8/16-18 Research Road, Pooraka', 'allareas@internode.on.net', '0408 727 020', '', 'https://www.allareasglass.com/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:23:08', '2021-08-19 03:23:08', '', '', ''),
(450, 'Northern Suburbs Glass Service PTY LTD', '3/83 Stanbel Road, Salisbury Plain', 'admin@northernsuburbsglass.net.au', '(08) 8285 1209', '', 'http://www.northernsuburbsglass.net.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:24:57', '2021-08-19 03:24:57', '', '', ''),
(451, 'Mt Barker Windscreens', '23 Morphett Street, Mount Barker', 'cooltintmtbarker@bigpond.com', '(08) 8398 2422', '', 'https://www.mtbarkerwindscreens.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:29:13', '2021-08-19 03:29:13', '', '', ''),
(452, 'South Adelaide Glass', '2/38 Chapman Road, Hackham', NULL, '(08) 8326 5116', '', 'https://www.southadelaideglass.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:32:27', '2021-08-19 03:32:27', '', '', ''),
(453, 'DYU Australia Electric Bikes', '102/2-6 Goodall Parade, Mawson Lakes', 'sales@dyuaus.com.au', '0482 723 842', '', 'dyuaus.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 03:33:21', '2021-08-19 03:33:21', '', '', ''),
(454, 'Glass Plus', '1/211 Aldinga Beach Road, Aldinga Beach', NULL, '(08) 8556 6878', '', 'http://www.glassplussa.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:34:24', '2021-08-19 03:34:24', '', '', ''),
(455, 'Instant Windscreens Christies Beach - Repairs & Tinting', '132 Beach Rd Christies Beach SA 5165 Australia', NULL, '(08) 8307 2555', '', 'https://instant-windscreens-and-tinting.business.site/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:35:59', '2021-08-19 03:35:59', '', '', ''),
(456, 'The Window Doctor', 'u6/1 Donegal Road, Lonsdale', NULL, '(08) 8377 1027', '', 'https://windowrepairsadelaide.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:38:28', '2021-08-19 03:38:28', '', '', ''),
(457, 'Scootaround Sales & Hire', '581 Tapleys Hill Road, Fulham', NULL, '(08) 8353 2888', '', 'www.scootaround.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 03:38:41', '2021-08-19 03:38:41', '', '', ''),
(458, 'Southern Glass & Glazing Adelaide PTY LTD', '18/65 O’Sullivan Beach Rd, Lonsdale SA 5160', 'glass@southernglass.com.au', '08 8312 4275', '', 'https://www.southernglass.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:40:11', '2021-08-19 03:40:11', '', '', ''),
(459, 'Port Adelaide Eyewear', 'Port Mall, Shop 6/176 Saint Vincent Street, Port Adelaide', NULL, '(08) 8241 0717', '', 'www.portadelaideeyewear.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 03:41:27', '2021-08-19 03:41:27', '', '', ''),
(460, 'Scooters Adelaide', '72 Everard Avenue, Keswick', 'info@motobility.com.au', '0416 206 135', '', 'www.blueskyhealthcare.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 03:43:22', '2021-08-19 03:43:22', '', '', ''),
(461, 'The Ottoman Grill', '168C Jetty Road, Glenelg', NULL, '(08) 83509874', '', 'https://theottomangrill.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:44:36', '2021-08-19 03:44:36', '', '', ''),
(462, 'The Optical Superstore', '111, Shop 243, Westfield West Lakes, West Lakes Boulevard, West Lakes', 'feedback@opticalsuperstore.com.au', '(08) 8356 5309', '', 'opticalsuperstore.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 03:45:41', '2021-08-19 03:45:41', '', '', ''),
(463, 'Ispa Kebab', 'Harbourtown Outlet Centre, 727 Tapleys Hill Road, West Beach', NULL, '83530671', '', 'https://ispakebab.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:45:59', '2021-08-19 03:45:59', '', '', ''),
(464, 'Saray Kebab House', '1/178 Henley Beach Road, Torrensville', NULL, '(08) 8352 2621', '', 'https://saray-kebab.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:47:23', '2021-08-19 03:47:23', '', '', ''),
(465, 'Le Riad Restaurant', '314 Pulteney Street, Adelaide', 'info@leriadrestaurant.com.au', '(08) 8223 6111', '', 'http://www.leriadrestaurant.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:48:53', '2021-08-19 03:48:53', '', '', ''),
(466, 'Adelaide Classic Pools | Swimming', 'Saint Agnes', 'info@adelaideclassicpools.com.au', '0417 878 358', '', 'www.adelaideclassicpools.com.a', 'Email', 'no', '', '', '3', 1, '2021-08-19 03:49:48', '2021-08-19 03:49:48', '', '', ''),
(467, 'Munooshi Cafe', '36 East Terrace, Adelaide', 'bookings@munooshi.com', '(08) 8223 5595', '', 'http://www.munooshi.com/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:49:56', '2021-08-19 03:49:56', '', '', ''),
(468, 'Sheesha Lounge Plus', '74-78 Hindley Street, Adelaide', 'hi@sheeshaloughe.com.au', '(08) 8231 0888', '', 'https://sheeshalounge.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:51:10', '2021-08-19 03:51:10', '', '', ''),
(469, 'Oakley Adelaide Harbourtown Vault', 'Shop T71 HARBOURTOWN, 727 Tapleys Hill Road, West Beach', 'customercare@oakley.com.au', '(08) 8235 1113', '', 'www.oakley.com/en-au', 'Email', 'no', '', '', '1', 1, '2021-08-19 03:52:00', '2021-08-19 03:52:00', '', '', ''),
(470, 'Paragon Swim Centre', '97-99 Smart Road, Modbury', 'paragonswim@gmail.com', '(08) 8396 6978', '', 'www.paragonswim.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 03:52:33', '2021-08-19 03:52:33', '', '', ''),
(471, 'Almina\'s on Prospect', '140 Prospect Road, Prospect', 'info@alminas.com.au', '(08) 7226 0709', '', 'https://alminas.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:53:54', '2021-08-19 03:53:54', '', '', ''),
(472, 'Kebab and Pizza Bar', '331 Prospect Road, Blair Athol', NULL, '(08) 8162 5863', '', 'https://kebabandpizzabar.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:55:06', '2021-08-19 03:55:06', '', '', ''),
(473, 'GEORGE & MATILDA EYECARE', 'Shop 22, Adelaide Arcade, Adelaide', NULL, '(08) 8232 9604', '', 'georgeandmatilda.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 03:55:47', '2021-08-19 03:55:47', '', '', ''),
(474, 'Yiros Central Port Adelaide', '21/200-220 Commercial Road, Port Adelaide', NULL, '08 7225 6655', '', 'https://www.portadelaideplaza.com.au/stores/yiros-central', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:56:39', '2021-08-19 03:56:39', '', '', ''),
(475, 'Bodrum Kahve', '120 Semaphore Road, Semaphore', NULL, '(08) 7073 7733', '', 'https://bodrum-kahve.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:57:46', '2021-08-19 03:57:46', '', '', ''),
(476, 'Lenz Eyewear & Eyecare', 'Shop 7/155 King William Road, Unley', NULL, '(08) 8373 5662', '', 'www.lenzeyewear.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 03:58:46', '2021-08-19 03:58:46', '', '', ''),
(477, 'Korea Restaurant', '133 Goodwood Road Goodwood SA 5034 Australia', NULL, '(08) 8272 0066', '', 'https://korea-restaurant.business.site/?utm_source=gmb&utm_medium=referral', 'Email', 'no', '', '', '2', 1, '2021-08-19 03:59:41', '2021-08-19 03:59:41', '', '', ''),
(478, 'Chef Kim Korean Restaurant', '4 Linden Avenue, Hazelwood Park', 'chefkim.restaurant@gmail.com', '(08) 8338 7831', '', 'http://www.chefkim.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:01:08', '2021-08-19 04:01:08', '', '', ''),
(479, 'Gunbae Chicken & Beer', '11-29 Union Street, Adelaide', 'info@gunbae.com.au', '(08) 8223 2953', '', 'https://www.gunbae.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:02:54', '2021-08-19 04:02:54', '', '', ''),
(480, 'Plus 82 Pocha', 'shop 3/25 Grenfell Street, Adelaide', 'info@plus82pocha.com', '(08) 8212 8274', '', 'https://www.plus82group.com/pocha/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:04:51', '2021-08-19 04:04:51', '', '', ''),
(481, 'Bailey Nelson', '154 Rundle Mall, Adelaide', 'rundlemall@baileynelson.com.au', '(08) 8227 1864', '', 'baileynelson.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 04:05:23', '2021-08-19 04:05:23', '', '', ''),
(482, 'Great River Korean BBQ Restaurant', '103 Gouger Street, Adelaide', 'info@greatriverkoreanbbq.com.au', '0452 107 772', '', 'https://www.greatriverkoreanbbq.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:06:44', '2021-08-19 04:06:44', '', '', ''),
(483, 'Busan Baby', '272 Morphett Street, Adelaide', 'info.busanbaby@gmail.com', '(08) 8221 5660', '', 'https://www.busanbaby.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:07:39', '2021-08-19 04:07:39', '', '', ''),
(484, 'Don Don Korean BBQ', '184 Hindley Street, Adelaide', 'contact@dondonkoreanbbq.com.au', '(08) 8212 5557', '', 'http://dondonkoreanbbq.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:12:10', '2021-08-19 04:12:10', '', '', ''),
(485, 'Golding Wines', '52 Western Branch Road, Lobethal', 'sales@goldingwines.com.au', '(08) 8189 4500', '', 'www.goldingwines.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 04:12:25', '2021-08-19 04:12:25', '', '', ''),
(486, 'Yangtze Chinese Restaurant', '227 Main Road, Blackwood', NULL, '61 8 8278 7325', '', 'http://yangtze-chinese.edan.io/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:13:35', '2021-08-19 04:13:35', '', '', ''),
(487, 'LIM\'S Chinese Restaurant Glenelg', '1/8 Partridge Street, Glenelg', NULL, '(08) 8295 1183', '', 'https://business.google.com/website/lims-chinese-restaurant-glenelg', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:14:28', '2021-08-19 04:14:28', '', '', ''),
(488, 'Shanghai Garden Restaurant', '485 Marion Road, South Plympton', NULL, '(08) 8297 8588', '', 'https://shanghaigarden.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:15:58', '2021-08-19 04:15:58', '', '', ''),
(489, 'Pagoda Chinese Restaurant', '189 Glen Osmond Rd Frewville SA 5063', NULL, '(08)8379 6248', '', 'https://pagodachineserestaurant.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:16:50', '2021-08-19 04:16:50', '', '', ''),
(490, 'Amadio Wines', '461 Payneham Road, Felixstow', 'sales@amadiowines.com', '(08) 8365 5988', '', 'www.amadiowines.com', 'Email', 'no', '', '', '3', 1, '2021-08-19 04:17:15', '2021-08-19 04:17:15', '', '', ''),
(491, 'Oriental House Chinese & Thai Cuisine', 'Shop4/205 Glynburn Road, Firle', NULL, '61 452 280 085', '', 'https://www.orientalhouse.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:17:58', '2021-08-19 04:17:58', '', '', ''),
(492, 'Ying Chow Chinese Restaurant', '114 Gouger St Adelaide SA 5000 Australia', NULL, '(08) 8211 7998', '', 'https://business.google.com/website/ying-chow-chinese-restaurant#details', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:19:58', '2021-08-19 04:19:58', '', '', ''),
(493, 'Little Canton Chinese Restaurant', '173 Henley Beach Road, Mile End', NULL, '(08) 8354 2886', '', 'https://www.littlecanton.com.au/menu', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:21:17', '2021-08-19 04:21:17', '', '', ''),
(494, 'Riot Wine Co', '59 Torrens Road, Brompton', 'info@riotwineco.com.au', '(08) 8448 9902', '', 'riotwineco.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 04:21:58', '2021-08-19 04:21:58', '', '', ''),
(495, 'Cathay Court Chinese Restaurant', '331 Henley Beach Road, Brooklyn Par', NULL, '(08) 8352 5844', '', 'https://cathay-court-chinese-takeaway.square.site/', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:22:26', '2021-08-19 04:22:26', '', '', ''),
(496, 'Golden Lakes Chinese Family Restaurant', '8/1 Bartley Terrace, West Lakes Shore', NULL, '(08) 8449 9388', '', 'https://www.goldenlakechinese.net.au/menu', 'Email', 'no', '', '', '2', 1, '2021-08-19 04:23:37', '2021-08-19 04:23:37', '', '', ''),
(497, 'Black Forest OPTICAL', '904 South Road, Edwardstown', NULL, '(08) 8351 2378', '', 'blackforestoptical.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 04:29:59', '2021-08-19 04:29:59', '', '', ''),
(498, 'National Wine Centre of Australia', 'Corner of Hackney Rd &, Botanic Street, Adelaide', 'nwc.info@adelaide.edu.au', '(08) 8313 3355', '', 'nationalwinecentre.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 04:32:39', '2021-08-19 04:32:39', '', '', ''),
(499, 'Eyes & Vision', '600 Main North Road, Smithfield  Adelaide', NULL, '(08) 8284 1445', '', 'eyesandvision.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 05:15:19', '2021-08-19 05:15:19', '', '', ''),
(500, 'Harley Eye Clinic', '63 Palmer Place, North Adelaide', 'recep.he@internode.on.net', '(08) 8267 6544', '', 'www.harleyeyeclinic.com', 'Email', 'no', '', '', '1', 1, '2021-08-19 06:20:10', '2021-08-19 06:20:10', '', '', ''),
(501, 'Alleve Eye Clinic', '49 Stephen Terrace, Saint Peters', 'bookings@alleveeyeclinic.com.au', '(08) 7225 9798', '', 'www.alleveeyeclinic.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 06:24:35', '2021-08-19 06:24:35', '', '', ''),
(502, 'Positive Optics', '105 King William Street, Kent Town', 'admin@positiveoptics.com.au', '1800 960 018', '', 'positiveoptics.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 06:28:25', '2021-08-19 06:28:25', '', '', ''),
(503, 'Suree\'s Thai Kitchen', '330 Unley Road, Hyde Park', NULL, '(08) 8373 1133', '', 'http://sureesthaikitchen.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:35:29', '2021-08-19 06:35:29', '', '', ''),
(504, 'Laser Vision SA', '169 Pirie Street, Adelaide', 'hello@laservisionsa.com.au', '(08) 8359 2422', '', 'laservisionsa.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 06:37:13', '2021-08-19 06:37:13', '', '', ''),
(505, 'Aharn Thai Restaurant', '19-21 Duthy Street, Malvern', NULL, '(08) 8272 0465', '', 'https://www.aharnthairestaurant.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:38:56', '2021-08-19 06:38:56', '', '', ''),
(506, 'T BAR TEA', 'u5/65 Stephens Avenue, Torrensville', 'info@tbar.com.au', '(08) 8354 4885', '', 'www.tbar.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 06:39:37', '2021-08-19 06:39:37', '', '', ''),
(507, 'Thailand Restaurant', '56A King William Road, Goodwood', NULL, '(08) 8271 1159', '', 'http://thailandthairestaurant.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:39:51', '2021-08-19 06:39:51', '', '', ''),
(508, 'Silk & Spice Thai Restaurant', '211 Henley Beach Road Torrensville South Australia 5031 Australia', NULL, '0406 968 368', '', 'http://silkspicethairestaurant.com/?utm_source=gmb&utm_medium=referral#details', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:40:48', '2021-08-19 06:40:48', '', '', ''),
(509, 'Innovative Eye Care Adelaide', '60 Hutt Street, Adelaide', 'help@innovativeeyecare.com.au', '(08) 8231 9341', '', 'www.innovativeeyecare.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 06:42:59', '2021-08-19 06:42:59', '', '', ''),
(510, 'T Thai Cuisine', '196 Henley Beach Road, Torrensville South Australia 5031,', NULL, '(08) 70737726', '', 'https://tthaicuisine.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:43:07', '2021-08-19 06:43:07', '', '', ''),
(511, 'Yum Yai Thai Kitchen', '1/172 Henley Beach Road, Torrensville', NULL, '61 8 8152 0404', '', 'https://www.yumyaithaikitchen.com/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:45:03', '2021-08-19 06:45:03', '', '', ''),
(512, 'PunThai Restaurant', '80A Prospect Road, Prospect', NULL, '(08) 7226 1919', '', 'http://punthairestaurant.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:46:53', '2021-08-19 06:46:53', '', '', ''),
(513, 'Adelaide Eye & Laser Centre', '215 Greenhill Road, Eastwood', 'aelc@aelc.com.au', '(08) 8274 7000', '', 'www.aelc.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 06:47:49', '2021-08-19 06:47:49', '', '', ''),
(514, 'Passion Food (Patumma Thai Cuisine)', '299A Payneham Road, Royston Park', NULL, '61 8 8362 7003', '', 'https://www.passionfoodthaicuisine.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:48:46', '2021-08-19 06:48:46', '', '', ''),
(515, 'Star of Siam', '67 Gouger Street, Adelaide', 'starofsiamadelaide@gmail.com', '08 8231 3527', '', 'https://www.starofsiam-adelaide.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:51:38', '2021-08-19 06:51:38', '', '', ''),
(516, 'Nu Thai Restaurant', '228 Morphett Street, Adelaide South Australia 5000, Australia', 'info@nuthai.com.au', '08 8410 2288', '', 'https://nuthai.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:53:17', '2021-08-19 06:53:17', '', '', ''),
(517, 'VON Thai', '264 Flinders Street, Adelaide', 'info@vonthai.com.au', '(08) 7081 5878', '', 'https://www.vonthai.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:54:59', '2021-08-19 06:54:59', '', '', ''),
(518, 'Soi38 Regional Thai Restaurant', '74 Pirie Street, Adelaide', 'eat@soi38.com.au', '(08) 8223 5472', '', 'https://www.soi38.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:56:23', '2021-08-19 06:56:23', '', '', ''),
(519, 'Michael Hill Elizabeth', '50 Elizabeth Way, Elizabeth', 'online@michaelhill.com.au', '(08) 8287 6321', '', 'www.michaelhill.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 06:56:35', '2021-08-19 06:56:35', '', '', ''),
(520, '8020bk', '36 Blyth Street, Adelaide', '8020bk@gmail.com', '(08) 8221 6703', '', 'https://8020bk.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 06:57:42', '2021-08-19 06:57:42', '', '', ''),
(521, 'Prouds the Jewellers Ingle Farm', 'SH 2006, Ingle Farm S/C Cnr Walkleys & Montague Rds, Ingle Farm', 'customer.service@prouds.biz', '(08) 8263 9676', '', 'www.prouds.com.au', 'Email', 'yes', '', '', '1', 1, '2021-08-19 07:00:48', '2021-08-20 04:43:17', '', '', ''),
(522, 'Skysies Cakes', '18 Gonis Circuit, Evanston Gardens', 'skye@skysiescakes.com.au', '0431 279 817', '', 'www.skysiescakes.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 07:05:01', '2021-08-19 07:05:01', '', '', ''),
(523, 'Thai by 3 Monkeys', '33 O\'Connell Street, Adelaide N', NULL, '(08) 8267 3188', '', 'http://www.thaimonkeys.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-19 07:05:43', '2021-08-19 07:09:59', '', '', ''),
(524, 'Michael Hill Tea Tree Plaza', 'Westfield Shopping Town Tea Tree Plaza, 164/976 North East Road, Modbury', 'online@michaelhill.com.au', '(08) 8396 3389', '', 'https://www.michaelhill.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 07:08:17', '2021-08-19 07:08:17', '', '', ''),
(525, 'Prouds the Jewellers Kilkenny', 'Shop 55/470 Torrens Road, Kilkenny', 'customer.service@prouds.biz', '(08) 8244 4793', '', 'https://www.prouds.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 07:11:31', '2021-08-19 07:11:31', '', '', ''),
(526, 'Prouds the Jewellers West Lakes', 'SH 216, Westfield, 111 West Lakes Boulevard, West Lakes', NULL, '(08) 8356 9030', '', 'www.prouds.com.aus', 'Email', 'no', '', '', '1', 1, '2021-08-19 07:14:55', '2021-08-19 07:14:55', '', '', ''),
(527, 'St Peters Lutheran School', '71 Cumming Street, Blackwood', NULL, '(08) 8278 0800', '', 'https://www.stpeterslutheran.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 07:15:48', '2021-08-19 07:15:48', '', '', ''),
(528, 'Design Me A Cake', 'Croydon, Adelaide', 'info@designmeacake.com.au', '0423 101 298', '', 'www.designmeacake.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 07:16:12', '2021-08-19 07:16:12', '', '', ''),
(529, 'Sunrise Christian School, Marion', '286 Sturt Rd, Marion SA 5043', 'info.marion@sunrise.sa.edu.au', '08 8465 6004', '', 'https://sunrise.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 07:17:21', '2021-08-19 07:17:21', '', '', ''),
(530, 'Adelaide Engagement Rings Specialists - Pure Envy Jewellery - By Appointment', '175 Gilles Street, Adelaide', NULL, '(08) 8231 9995', '', 'www.pureenvy.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 07:17:47', '2021-08-19 07:17:47', '', '', ''),
(531, 'Christ the King School', '126 Dunrobin Road, Warradale', 'info@christking.catholic.edu.au', '(08) 8198 3100', '', 'https://www.christking.catholic.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 07:19:03', '2021-08-19 07:19:03', '', '', ''),
(532, 'Mercedes College', '540 Fullarton Road, Springfield', 'mercedes@mercedes.catholic.edu.au', '(08) 8372 3200', '', 'https://www.mercedes.catholic.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 07:21:00', '2021-08-19 07:21:00', '', '', ''),
(534, 'Emmaus Christian College - South Plympton Campus', '7 Lynton Avenue, South Plympton', 'enquiries@emmauscc.sa.edu.au', '(08) 8292 3888', '', 'https://www.emmauscc.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 07:23:49', '2021-08-19 07:23:49', '', '', ''),
(535, 'Prouds the Jewellers Castle Plaza', 'SH 49, Castle Plaza S, C/992 South Road, Edwardstown', 'customer.service@prouds.biz', '(08) 8277 9350', '', 'https://www.prouds.com.aus', 'Email', 'yes', '', '', '1', 1, '2021-08-19 07:24:28', '2021-08-20 04:44:01', '', '', ''),
(536, 'Walford Anglican School For Girls', '316 Unley Road, Hyde Park', 'maintenance@walford.asn.au', '(08) 8272 6555', '', 'https://www.walford.net.au/', 'Email', 'no', '', '', '2', 1, '2021-08-19 07:25:27', '2021-08-19 07:25:27', '', '', ''),
(537, 'Sugar & Spice Cakes', '190 Goodwood Road, Millswood', 'info@sugarandspicecakes.com.au', '(08) 8172 1078', '', 'www.sugarandspicecakes.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 07:25:49', '2021-08-19 07:25:49', '', '', ''),
(538, 'Gentle Touch Orthodontics - Clear Aligners & Braces Adelaide', '31 Post Parade, Saint Clair', NULL, '(08) 8243 2500', '', 'gentletouchortho.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 07:30:52', '2021-08-19 07:30:52', '', '', ''),
(539, 'The Cake Hut', '2A/985 South Road, Melrose Park', 'info@thecakehut.com.au', '(08) 8123 2678', '', 'www.thecakehut.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-19 07:31:41', '2021-08-19 07:31:41', '', '', ''),
(540, 'The Orthodontic Place - Braces, Invisalign', '334 Port Road, Hindmarsh', 'smile@theorthodonticplace.com.au', '(08) 8362 6000', '', 'www.theorthodonticplace.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-19 07:33:31', '2021-08-19 07:33:31', '', '', ''),
(541, 'North Adelaide Orthodontics', '12/183 Tynte Street, North Adelaide', 'naortho8@gmail.com', '(08) 8267 1117', '', 'www.northadelaideorthodontics.', 'Email', 'no', '', '', '1', 1, '2021-08-19 07:37:28', '2021-08-19 07:37:28', '', '', ''),
(542, 'Cornish Painting', '26 MacKay Court, Greenwith', 'cornish44@live.com.au', '0412 236 041', '', 'www.cornishpaintinganddecorati', 'Email', 'no', '', '', '3', 1, '2021-08-19 07:42:26', '2021-08-19 07:42:26', '', '', ''),
(543, 'Adelaide Painting ptyltd', '11 40 Iveleary Avenue, Salisbury East', NULL, '0411 131 582', '', 'hameedhussaini68.wixsite.com', 'Email', 'no', '', '', '3', 1, '2021-08-19 07:50:43', '2021-08-19 07:50:43', '', '', ''),
(544, 'Glynde Mitre 10', '8 Glynburn Road, Hectorville', 'mightyhelpful@glyndemitre10.com.au', '(08) 8337 2344', '', 'www.glyndemitre10.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-20 02:59:45', '2021-08-20 02:59:45', '', '', ''),
(545, 'Pilgrim School', '2-8 Campus Drive, Aberfoyle Park', 'pilgrim@pilgrim.sa.edu.au', '(08) 8270 3033', '', 'https://www.pilgrim.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:09:26', '2021-08-20 03:09:26', '', '', ''),
(546, 'Association of Independent Schools of South Australia', '128 Greenhill Road Unley 5061 South Australia', 'office@ais.sa.edu.au', '08 8179 1400', '', 'https://www.ais.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:17:32', '2021-08-20 03:17:32', '', '', ''),
(547, 'St. Patrick\'s Special School', '13 Warwick Avenue, Dulwich', 'info@stpats.catholic.edu.au', '(08) 8332 1555', '', 'https://www.stpats.catholic.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:20:34', '2021-08-20 03:20:34', '', '', ''),
(548, 'Pulteney Grammar School', '190 South Terrace ADELAIDE SA 5000', NULL, '(08) 8216 5555', '', 'http://www.pulteney.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:26:32', '2021-08-20 03:26:32', '', '', ''),
(549, 'Randall\'s Hardware', '440 Prospect Road, Kilburn', 'the_randalls@bigpond.com', '(08) 8262 6939', '', 'www.randallshardware.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-20 03:27:58', '2021-08-20 03:27:58', '', '', ''),
(550, 'Adelaide International School', 'Level 4/127 Rundle Mall, Adelaide', 'info@ais.edu.au', '61 8 8123 1786', '', 'https://www.ais.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:30:12', '2021-08-20 03:30:12', '', '', ''),
(551, 'St Mary\'s College Adelaide', '253 Franklin Street Adelaide, South Australia 5000', 'enquiries@stmarys.sa.edu.au', '61 8 8216 5700', '', 'https://www.stmarys.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:34:20', '2021-08-20 03:34:20', '', '', ''),
(552, 'carwashcafe55@gmail.com', '22-26 Main North Road, Prospect', 'carwashcafe55@gmail.com', '(08) 7225 0193', '', 'www.aquacarwash.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-20 03:36:06', '2021-08-20 03:36:06', '', '', ''),
(553, 'St George College', '75 Rose Street, Mile End', NULL, '(08) 8159 8100', '', 'https://sgc.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:36:40', '2021-08-20 03:36:40', '', '', ''),
(554, 'Brooklyn Park Private Kindergarten and Child Care', '21 Lipsett Terrace, Brooklyn Park, SA 5032', 'brooklynparkkindergarten@gmail.com', '08 8152 0436', '', 'https://www.brooklynparkkindergarten.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:39:37', '2021-08-20 03:39:37', '', '', ''),
(556, 'Immaculate Heart of Mary Primary School', '95 East Street, Brompton', 'info@ihm.catholic.edu.au', '08) 8115 7600', '', 'https://www.ihm.catholic.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:44:35', '2021-08-20 03:44:35', '', '', ''),
(557, 'Banner Mitre 10 Glenelg', '599 Anzac Highway, Glenelg', 'marketing@bannermitre10.com.au', '(08) 8294 8344', '', 'www.bannerhardware.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-20 03:45:12', '2021-08-20 03:50:16', '', '', ''),
(558, 'Wilderness School', '30 Hawkers Road, Medindie South Australia 5081', 'info@wilderness.com.au', '61 8 8344 6688', '', 'https://www.wilderness.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:46:54', '2021-08-20 03:46:54', '', '', ''),
(559, 'Mirror Image Car Wash', '410 Payneham Road, Glynde', NULL, '0400 691 335', '', 'www.mirrorimagecarwash.com.au', 'Email', 'yes', '', '', '1', 1, '2021-08-20 03:47:10', '2021-08-20 07:22:39', '', '', ''),
(560, 'Prescott College', '2 Koonga Ave, Prospect SA 5082', 'info@prescottcollege.sa.edu.au', '08 8269 1655', '', 'https://www.prescottcollege.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:49:21', '2021-08-20 03:49:21', '', '', ''),
(561, 'St Andrew\'s School', '22 Smith Street, Walkerville', NULL, '(08) 8168 5555', '', 'https://www.standrews.sa.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:51:07', '2021-08-20 03:51:07', '', '', ''),
(562, 'Happy Wash', '87-91 Portrush Road, Evandale', NULL, '(08) 8132 1727', '', 'www.ontherun.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-20 03:55:56', '2021-08-20 03:55:56', '', '', ''),
(563, 'Rosary School', '15 Gladstone Road, Prospect', 'info@rosary.catholic.edu.au', '(08) 8343 5700', '', 'http://www.rosary.catholic.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 03:58:22', '2021-08-20 03:58:22', '', '', ''),
(564, 'The PaintBox', '100A Mount Barker Road, Hahndorf', 'mail@thepaintbox.com.au', '(08) 8388 7776', '', 'https://www.thepaintbox.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 04:13:59', '2021-08-20 04:13:59', '', '', ''),
(565, 'Jets Craft Shop', '6 Young Street, Blackwood SA 5051', NULL, '61 423 378 747', '', 'https://www.jetscraftshop.com/', 'Email', 'no', '', '', '2', 1, '2021-08-20 04:18:22', '2021-08-20 04:18:22', '', '', ''),
(566, 'Spotlight Melrose Park', 'Corner South &, Kegworth Road, Melrose Park', NULL, '(08) 7425 2100', '', 'https://www.spotlightstores.com/', 'Email', 'no', '', '', '2', 1, '2021-08-20 04:21:31', '2021-08-20 04:21:31', '', '', ''),
(567, 'Gift Quest Craft Suppliers', '37a Wright Street, Edwardstown', 'giftquest@iinet.net.au', '0409 699 952', '', 'https://www.giftquest.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 04:26:20', '2021-08-20 04:26:20', '', '', ''),
(568, 'Bare Salon For Men and Women', '9B/104 Walkerville Terrace, Walkerville', 'enquiries@baresalon.net', '(08) 8363 9889', '', 'www.baresalon.net', 'Email', 'no', '', '', '3', 1, '2021-08-20 04:40:27', '2021-08-20 04:40:27', '', '', ''),
(569, 'Duthy Street Art Supplies', '6 Duthy Street, Unley', 'art@duthystreetartsupplies.com.au', '(08) 8373 3314', '', 'https://www.duthystreetartsupplies.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 04:46:20', '2021-08-20 04:46:20', '', '', ''),
(570, 'Art To Art - Eastwood', 'Adelaide, 69 Glen Osmond Road, Eastwood', NULL, '(08) 8271 8444', '', 'https://www.arttoart.net/', 'Email', 'no', '', '', '2', 1, '2021-08-20 04:50:28', '2021-08-20 04:50:28', '', '', ''),
(571, 'Zippy\'s Carwash', '200 Main North Road, Prospect', NULL, '(08) 8342 6966', '', 'www.zippyscarwash.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-20 04:50:45', '2021-08-20 04:50:45', '', '', ''),
(572, 'Camelot Studio', '159 Marion Road, Richmond', NULL, '(08) 8443 8133', '', 'https://www.yelp.com.au/biz/camelot-studio-richmond-2', 'Email', 'no', '', '', '2', 1, '2021-08-20 04:52:52', '2021-08-20 04:52:52', '', '', ''),
(573, 'Lincraft', 'Shop 9, Regency Plaza, 269 Main North_Rd, Sefton Park', 'customers@lincraft.com.au', '(08) 8269 5944', '', 'https://www.lincraft.com.au/store/regency-plaza', 'Email', 'no', '', '', '2', 1, '2021-08-20 05:12:14', '2021-08-20 05:12:14', '', '', ''),
(574, 'Paper Flourish', 'Unit 27/16-28 Research Road, Pooraka', 'enquiries@paperflourish.com.au', '(08) 8262 2571', '', 'https://www.paperflourish.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 05:17:17', '2021-08-20 05:17:17', '', '', ''),
(575, 'Persian Art Treasure', 'Shop 14A Market Plaza, 66 Gouger Street, Adelaide', NULL, '0410 133 656', '', 'https://www.patpersia.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:03:59', '2021-08-20 07:03:59', '', '', ''),
(576, 'Better World Arts', '34a King William Street Adelaide 5000 South Australia Australia', NULL, '(08) 7225 7047', '', 'https://betterworldarts.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:05:46', '2021-08-20 07:05:46', '', '', ''),
(577, 'Eckersley\'s Art & Craft', '18 King William Street, Adelaide', NULL, '(08) 8223 4155', '', 'https://www.eckersleys.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:09:40', '2021-08-20 07:09:40', '', '', ''),
(578, 'Total Look Hair & Beauty', '89 Sixth Avenue, Saint Peters', 'admin@totallook.com.au', '(08) 8363 2022', '', 'www.totallook.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-20 07:11:21', '2021-08-20 07:11:21', '', '', ''),
(579, 'Touch n Glow Hand Car Wash', '6/2 Ashwin Parade, Torrensville', 'touchnglow@outlook.com', '(08) 7999 9550', '', 'https://www.facebook.com', 'Email', 'no', '', '', '1', 1, '2021-08-20 07:16:42', '2021-08-20 07:16:42', '', '', ''),
(580, 'Bunnings Edwardstown', '1028-1042 South Road, Edwardstown', 'Edwardstown@bunnings.com.au', '(08) 8299 2700', '', 'https://www.bunnings.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:22:50', '2021-08-20 07:22:50', '', '', ''),
(581, 'Barrow & Bench Mitre 10', '321 Unley Road, Malvern', NULL, '(08) 8272 8566', '', 'https://www.mitre10.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:26:08', '2021-08-20 07:26:08', '', '', ''),
(582, 'Tom\'s Car Wash', '151 Sir Donald Bradman Drive, Hilton', 'tomscarwash@bigpond.com.au', '(08) 8234 1650', '', 'www.facebook.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-20 07:28:39', '2021-08-20 07:28:39', '', '', ''),
(583, 'Browse In & Save', '276 Richmond Road, Marleston', NULL, '(08) 8352 5418', '', 'https://browsein.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:34:45', '2021-08-20 07:34:45', '', '', ''),
(584, 'Unique Beauty Care', '55 The Parade West, Kent Town', 'info@uniquebeautycare.com.au', '0450 132 513', '', 'uniquebeautycare.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-20 07:35:12', '2021-08-20 07:35:59', '', '', ''),
(585, 'BCF (Boating Camping Fishing) Richmond', '340 South Road, Richmond', NULL, '(08) 8352 3533', '', 'https://www.bcf.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:36:26', '2021-08-20 07:36:26', '', '', ''),
(586, 'The Perfect shine hand car wash & Detailing', '328 South Road, Richmond', 'perfectshine328@gmail.com', '0403 989 050', '', 'perfectshinecarwash.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-20 07:36:35', '2021-08-20 07:36:35', '', '', ''),
(587, 'Bunnings Mile End', '108 Railway Terrace, Mile End', 'MileEnd@bunnings.com.au', '(08) 8405 0700', '', 'https://www.bunnings.com.au/stores/sa/mile-end?utm_source=google&utm_medium=places&utm_content=bunnings-mile-end&utm_campaign=googleplaces', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:39:40', '2021-08-20 07:39:40', '', '', ''),
(588, 'Beauty Secrets', 'Shop 4/200 The Parade, Norwood', 'info@beautysecretsnorwood.com.au', '(08) 8364 2602', '', 'www.beautysecretsnorwood.com.a', 'Email', 'no', '', '', '3', 1, '2021-08-20 07:43:54', '2021-08-20 07:43:54', '', '', ''),
(589, 'Kwik Kopy Adelaide', '1/185 Victoria Square Cnr Franklin and, King William Street, Adelaide', 'mail@adelaide.kwikkopy.com.au', '(08) 8211 8200', '', 'https://www.kwikkopy.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:44:06', '2021-08-20 07:44:06', '', '', ''),
(590, 'Splash Car Wash & Detailing', '395 Glen Osmond Road, Glen Osmond', NULL, '(08) 8379 7700', '', 'www.splashcarwash.com.au', 'Social Media', 'no', '', '', '1', 1, '2021-08-20 07:50:42', '2021-08-20 07:50:42', '', '', ''),
(591, 'Pure The Essence of Nature', '254 Unley Road, Hyde Park', 'pureatthemetro@bigpond.com', '(08) 8373 6300', '', 'www.puretheessenceofnature.com', 'Email', 'no', '', '', '3', 1, '2021-08-20 07:52:29', '2021-08-20 07:52:29', '', '', ''),
(592, 'Bunnings Kent Town', '66 Rundle Street  KENT TOWN SA 5067', 'KentTown@bunnings.com.au', '61 8 8132 9300', '', 'https://www.bunnings.com.au/stores/sa/kent-town?utm_source=google&utm_medium=places&utm_content=bunnings-kent-town&utm_campaign=googleplaces', 'Email', 'no', '', '', '2', 1, '2021-08-20 07:53:30', '2021-08-20 07:53:30', '', '', ''),
(593, 'Il Barbiere', 'Shop 2/401 Grange Road, Findon', 'luke@ilbarbiere.com.au', '(08) 8356 1611', '', 'www.ilbarbiere.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-20 08:02:21', '2021-08-20 08:03:31', '', '', ''),
(594, 'Mugshot Barber', '2 Africaine Avenue, Lightsview', 'eddiehoulihan@live.com.au', '0400 447 788', '', 'mugshotbarber.com', 'Email', 'no', '', '', '3', 1, '2021-08-20 08:08:38', '2021-08-20 08:08:38', '', '', ''),
(595, 'Supercheap Auto Thebarton', '69 Port Road, Thebarton', NULL, '(08) 8354 0666', '', 'https://www.supercheapauto.com.au/stores/details?sid=sca-thebarton&utm_source=google&utm_medium=organic&utm_campaign=thebarton', 'Email', 'no', '', '', '2', 1, '2021-08-21 01:55:26', '2021-08-21 01:55:26', '', '', ''),
(596, 'Johns Print Centre', '21-23 Provident Avenue, Glynde', NULL, '(08) 8365 2033', '', 'https://johnsprintcentre.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 02:02:07', '2021-08-21 02:02:07', '', '', ''),
(597, 'Printibly', '3/4 Hewer Street, Hampstead Gardens', 'hello@printibly.com.au', NULL, '', 'https://www.printibly.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-21 02:04:30', '2021-08-21 02:04:30', '', '', ''),
(598, 'Flexible Graphics Studio', '411 North East Road, Hillcrest 5086', 'sales@g88.com.au', '(08) 8261 0527', '', 'http://www.g88.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 02:08:25', '2021-08-21 02:08:25', '', '', ''),
(599, 'Zeal 3D Printing Services', 'Unit 6/7 Wicklow Street, Northfield', 'info@zeal3dprinting.com.au', '61 1300 719 729', '', 'https://www.zeal3dprinting.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-21 02:11:23', '2021-08-24 02:27:53', '', '', ''),
(600, 'Digicard', '1129 Grand Junction Road, Hope Valley', 'michael@digicardprinting.com.au', '0401 678 676', '', 'http://www.digicardprinting.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 02:15:02', '2021-08-21 02:15:02', '', '', ''),
(601, 'Trendy Hair Barber', '654 Port Road, Beverley', 'wavycurlyhair1@gmail.com', '0431 634 129', '', 'wavycurlyhair.com', 'Email', 'no', '', '', '3', 1, '2021-08-21 02:15:58', '2021-08-21 02:15:58', '', '', ''),
(602, 'Kooka Digital & Offset Printing', '37 Reservoir Road, Hope Valley', 'info@kookaprinting.com', '0493 122 366', '', 'https://www.kookaprinting.com/', 'Email', 'no', '', '', '2', 1, '2021-08-21 02:17:45', '2021-08-21 02:17:45', '', '', ''),
(603, 'Barber Society', 'Shop 7/1 Payneham Road, College Park', NULL, '(08) 8362 9235', '', 'www.barbersociety.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 02:30:35', '2021-08-21 02:30:35', '', '', ''),
(604, 'GoodTimes Barbershop Adelaide', '124 Goodwood Road, Goodwood', 'goodtimesadl@gmail.com', NULL, '', 'goodtimesbarbershop.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 02:36:03', '2021-08-21 02:36:03', '', '', ''),
(605, 'Born Barbers Collective', '512A Cross Road, Glandore', 'bornbarberscollective@gmail.com', '(08) 8297 0813', '', 'www.com.adelaide', 'Email', 'no', '', '', '3', 1, '2021-08-21 02:42:41', '2021-08-21 02:42:41', '', '', ''),
(606, 'Smart Print (SA) Pty Ltd', '163 Smart Road, Saint Agnes', NULL, '(08) 8265 5007', '', 'https://www.smartprintsa.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-21 02:55:58', '2021-08-21 02:55:58', '', '', ''),
(607, 'Flipside Print', '1/1257 North East Road, Ridgehaven', 'steve@flipsideprint.com.au', '(08) 8395 7476', '', 'https://www.flipsideprint.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 02:58:16', '2021-08-21 02:58:16', '', '', ''),
(608, 'KJ Barbers', 'Shop 2/44-52 Hawson Avenue, North Plympton', 'contact@kjbarbers.com.au', '(08) 8246 3197', '', 'kjbarbers.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-21 02:58:48', '2021-08-21 03:25:04', '', '', ''),
(609, 'K D Master Bespoke Suit Adelaide', '5/2 Fife Street, Klemzig', 'info@kdmaster.com.au', '1300 537 848', '', 'www.kdmaster.com.au', 'Email', 'yes', '', '', '1', 1, '2021-08-21 03:04:57', '2021-08-21 04:04:09', '', '', ''),
(610, 'Para Print', '99 Research Road, Pooraka', 'sales@paraprint.com.au', '(08) 8349 7569', '', 'https://www.paraprint.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 03:06:52', '2021-08-21 03:06:52', '', '', ''),
(611, 'Just Guys Mens Hairdresser', '18/68 Grenfell Street, Adelaide', NULL, '(08) 8224 0740', '', 'www.justguysmenshairdresser.co', 'Email', 'no', '', '', '3', 1, '2021-08-21 03:07:20', '2021-08-21 03:07:20', '', '', ''),
(612, '3D Printing Solutions', '1 / 1265 Main North Road, Para Hills West,    SA   5096', 'sale@3dprintingsolutions.com.au', '08 8463-1209', '', 'https://www.3dprintingsolutions.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 03:09:58', '2021-08-21 03:09:58', '', '', ''),
(613, 'DELUCA Tailors', '92 Phillis Street, Maylands', 'luke@delucatailors.com', '0458 537 837', '', 'www.delucatailors.com', 'Email', 'no', '', '', '1', 1, '2021-08-21 03:10:42', '2021-08-21 03:10:42', '', '', ''),
(614, 'Cut Snake Barber Shop', '146 Gawler Place, Adelaide', 'admin@cutsnakebarbershop.com.au', '(08) 8223 1052', '', 'www.facebook.com/cutsnakecbd', 'Email', 'no', '', '', '3', 1, '2021-08-21 03:12:09', '2021-08-21 03:12:09', '', '', ''),
(615, 'Cartridge Universe Gawler', '69 Murray Street, Gawler', 'sales@cartu.com.au', '(08) 8523 5441', '', 'https://www.cartu.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 03:14:17', '2021-08-21 03:14:17', '', '', ''),
(616, 'Cartridge World Gawler', '116 Murray Street, Gawler', NULL, '(08) 8522 7500', '', 'https://www.cartridgeworld.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 03:17:55', '2021-08-21 03:17:55', '', '', ''),
(617, 'The Tailor\'s Room - Open by appointment', '174 Magill Road, Norwood', 'info@thetailorsroom.com.au', '0412 041 207', '', 'www.thetailorsroom.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 03:18:03', '2021-08-21 03:18:03', '', '', ''),
(618, 'TechnoSource Australia', '8 Barker Avenue, Tea Tree Gully', NULL, '(08) 7084 0347', '', 'https://www.technosource.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 03:22:20', '2021-08-21 03:22:20', '', '', ''),
(619, 'Paint Supplies', 'Corner of W Lakes Blvd &, Philips Crescent, Hendon', 'save@paintsupplies.com.au', '(08) 8347 7171', '', 'www.paintsupplies.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 03:24:42', '2021-08-21 03:24:42', '', '', ''),
(620, 'Ignition for Men', '54-58 Payneham Road, Stepney Adelaide', NULL, '(08) 8362 9980', '', 'ignitionformen.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 03:26:54', '2021-08-21 03:26:54', '', '', ''),
(621, 'Visy Technology Systems', '2/9 Sharp Court, Mawson Lakes', NULL, '1800 634 569', '', 'https://www.visy.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 03:27:28', '2021-08-21 03:27:28', '', '', ''),
(622, 'Amari Visual Solutions', '14b Belfree Drive, Green Fields', 'nswsales@amarivisual.com.au', '(08) 7477 8400', '', 'https://www.amarivisual.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-21 03:29:37', '2021-08-21 03:29:37', '', '', ''),
(623, 'Adelaide Stationers and Printing', 'Shop 5/113 Days Road, Croydon Park', 'adelaidestationers@gmail.com', '(08) 8346 3169', '', 'https://www.adelaidestationers.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-21 03:32:04', '2021-08-21 03:33:06', '', '', ''),
(624, 'Oscar Hunt', '9 The Parade, Norwood', NULL, '(08) 7130 0185', '', 'www.oscarhunt.com', 'Email', 'no', '', '', '1', 1, '2021-08-21 03:33:56', '2021-08-21 03:33:56', '', '', ''),
(625, 'The Enchanted Palace - Children\'s Disco Parties', '218 Prospect Road, Prospect', 'info@enchantedpalace.com.au', '0403 505 015', '', 'enchantedpalace.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 03:40:15', '2021-08-21 03:40:15', '', '', ''),
(626, 'InStitchu, Adelaide', '92/96 Flinders Street, Adelaide', 'contact@institchu.com', '(08) 8470 0361', '', 'www.institchu.com', 'Email', 'yes', '', '', '1', 1, '2021-08-21 03:45:39', '2021-08-21 04:20:29', '', '', ''),
(627, 'Tailors of Distinction | Alterations service in Adelaide', '223-225 Unley Road, Malvern', NULL, '(08) 8373 5658', '', 'www.tailorsofdistinction.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 03:52:30', '2021-08-21 03:52:30', '', '', ''),
(628, 'Mint On Moseley', 'Level 1/8-10 Jetty Road, Glenelg', 'info@mintonmoseley.com', '0415 618 809', '', 'mintonmoseley.com', 'Email', 'no', '', '', '3', 1, '2021-08-21 03:52:50', '2021-08-21 03:52:50', '', '', '');
INSERT INTO `tasks` (`id`, `name`, `address`, `email`, `phone`, `mobile`, `website`, `strategy`, `response`, `status`, `partner`, `aid`, `transaction`, `created_at`, `updated_at`, `directory`, `category`, `town`) VALUES
(629, 'Gymnastics Birthday Parties', 'Koorana Gymnastics Club Corner of Rosedale Avenue and, Oaklands Road, Morphettville', 'info@gymnasticsbirthdayparties.com', '+61 400 629 196', '', 'www.gymnasticsbirthdayparties.', 'Email', 'no', '', '', '3', 1, '2021-08-21 04:01:18', '2021-08-21 04:01:18', '', '', ''),
(630, 'SA Tailors and Drapers', 'Shop 4/5 87 Goodwood Road, Goodwood', NULL, '(08) 8271 6050', '', 'www.satailorsanddrapers.com', 'Email', 'no', '', '', '1', 1, '2021-08-21 04:01:47', '2021-08-21 04:01:47', '', '', ''),
(631, 'Nutrition Warehouse Prospect', '308 Main North Road, Prospect', 'info@nutritionwarehouse.com.au', '(08) 8269 3467', '', 'www.nutritionwarehouse.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 04:29:30', '2021-08-21 04:29:30', '', '', ''),
(632, 'SA Print Supplies', '25 Hythe Street, Ridleyton', NULL, '(08) 8340 8465', '', 'https://saprintsupplies.com/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:30:05', '2021-08-21 04:30:05', '', '', ''),
(633, 'Officeworks Croydon', '449-459 Port Road, Croydon', NULL, '(08) 8245 5600', '', 'https://www.officeworks.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:32:21', '2021-08-21 04:32:21', '', '', ''),
(634, 'Supplement Mart Prospect', '80 Main North Road, Prospect', 'sales@supplementmart.com.au', '(08) 8344 2112', '', 'www.supplementmart.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 04:35:32', '2021-08-21 04:35:32', '', '', ''),
(635, 'QLM Label Makers - Adelaide', '4/110 Ward Street, North Adelaide', NULL, '1300 792 782', '', 'https://qlm.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:37:00', '2021-08-21 04:37:00', '', '', ''),
(636, 'CSG Limited | Adelaide', '65 Nelson Street, Stepney', NULL, '1800 985 445', '', 'https://www-fbau.fujifilm.com/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:39:02', '2021-08-21 04:39:02', '', '', ''),
(637, 'MassiveJoes Dernancourt', '832-840 Lower North East Road, Dernancourt', 'sales@massivejoes.com', '(08) 7111 4100', '', 'www.massivejoes.com', 'Email', 'no', '', '', '3', 1, '2021-08-21 04:42:59', '2021-08-21 04:42:59', '', '', ''),
(638, 'Graphic Arts Supplies', '77 King William Street Kent Town SA 5067', 'info@graphicarts.com.au', '(08) 8363 4466', '', 'https://www.graphicarts.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:43:28', '2021-08-21 04:43:28', '', '', ''),
(639, 'Body Bliss Massage', 'shop 2/99A Prospect Road, Prospect', NULL, '0448 349 562', '', 'bodyblissmassageprospect.com', 'Email', 'no', '', '', '1', 1, '2021-08-21 04:46:35', '2021-08-21 04:46:35', '', '', ''),
(640, 'BBC Digital', '102 Fullarton Road, Norwood', NULL, '(08) 8139 2999', '', 'https://www.bbcdigital.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:46:57', '2021-08-21 04:46:57', '', '', ''),
(641, 'Plotter City Adelaide - Large Format Printers', 'Westpac House, Level 30, 91 King William Street, Adelaide', NULL, '1300 264 186', '', 'https://www.plottercity.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:49:41', '2021-08-21 04:49:41', '', '', ''),
(642, 'You Choose Managed Print Services', '3 Maple Avenue Forestville South Australia 5035', 'admin@dmp.com.au', '1300 795 221', '', 'http://www.dmp.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:52:34', '2021-08-21 04:52:34', '', '', ''),
(643, 'The Printer Clinic', 'Unit 5, 198 Greenhill Road, Eastwood SA 5063', NULL, '(08) 8351 1100', '', 'https://www.theprinterclinic.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:53:33', '2021-08-21 04:53:33', '', '', ''),
(644, 'SC Body Therapy', '67 Payneham Road, College Park', 'scott@bodytherapy.com.au', '0414 498 405', '', 'www.scbodytherapy.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 04:54:11', '2021-08-21 04:54:11', '', '', ''),
(645, 'Ricoh - Adelaide', '40-44 Glen Osmond Road, Parkside', NULL, '13 74 26', '', 'https://www.ricoh.com.au/?utm_source=google&utm_medium=gmb&utm_campaign=local_visibility&utm_term=google-my-business-website&utm_content=ricoh-adelaide', 'Email', 'no', '', '', '2', 1, '2021-08-21 04:56:04', '2021-08-21 04:56:04', '', '', ''),
(646, 'Body Bliss Massage and Day Spa', '227 The Parade, Norwood', NULL, '0404 877 091', '', 'www.bodyblissmassageanddayspa.', 'Email', 'yes', '', '', '1', 1, '2021-08-21 04:58:17', '2021-08-21 05:30:59', '', '', ''),
(647, 'Aish Solutions', '134 Glen Osmond Road, Parkside', NULL, '(08) 7071 3411', '', 'https://www.aish.com.au/', 'Email', 'yes', '', '', '2', 1, '2021-08-21 04:58:44', '2021-08-21 06:00:01', '', '', ''),
(648, 'MassiveJoes Brickworks', 'Brickworks Marketplace, Shop 21 Ashwin Parade, Hindmarsh', 'sales@massivejoes.com', '(08) 7080 1681', '', 'massivejoes.com', 'Email', 'no', '', '', '3', 1, '2021-08-21 05:08:15', '2021-08-21 05:08:15', '', '', ''),
(649, 'Body Sense Massage School', '2 Flinders Street, Adelaide', NULL, '1300 910 821', '', 'bodysensemassageschool.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 05:10:21', '2021-08-21 05:10:21', '', '', ''),
(650, 'Lawn mowing services', '7 Kathryn Drive, Morphett Vale', NULL, '0437 932 116', '', 'https://hutchys-lawn-mowing-and-rubbish-removal.business.site/?utm_source=gmb&utm_medium=referral', 'Email', 'no', '', '', '2', 1, '2021-08-21 05:12:00', '2021-08-21 05:12:00', '', '', ''),
(651, 'Jim\'s Mowing', 'Woodcroft', NULL, '13 15 46', '', 'https://sa.jimsmowing.net/about/meet-our-franchisees/adelaide/city-onkaparinga/woodcroft/', 'Email', 'no', '', '', '2', 1, '2021-08-21 05:13:14', '2021-08-21 05:13:14', '', '', ''),
(652, 'Premium Gardens', '26 Banksia Road, Aberfoyle Park', NULL, '0437 072 904', '', 'https://www.premiumgardens.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 05:14:19', '2021-08-21 05:14:19', '', '', ''),
(653, 'Chiang Mai House of Massage - Thai Massage', 'Shop G53/45 Grenfell Street, Adelaide', 'info@chiangmaihouse.com.au', '0455 337 272', '', 'chiangmaihouse.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 05:15:56', '2021-08-21 05:15:56', '', '', ''),
(654, 'Supplement Warfare', '6/41-51 David Terrace, Woodville Park', 'supplementwarfare@gmail.com', '(08) 8345 3967', '', 'www.supplementwarfare.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 05:16:50', '2021-08-21 05:16:50', '', '', ''),
(655, 'Asara Thai Massage', '117 West Terrace, Adelaide', NULL, '0422 883 052', '', 'www.asarathaimassage.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 05:20:44', '2021-08-21 05:20:44', '', '', ''),
(656, 'Elite Supps Harbour Town', 'Shop T73 Harbour Town Shopping Centre 727 Tapleys Hill Road Adelaide', 'enquiries@elitesupps.com.au', '(08) 8356 3809', '', 'www.elitesupps.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 05:22:16', '2021-08-21 05:22:16', '', '', ''),
(657, 'Dad And Jerry\'s Mower Mart', '533 Brighton Road, Brighton', NULL, '(08) 8377 3566', '', 'https://www.mowermart.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 05:26:36', '2021-08-21 05:26:36', '', '', ''),
(658, 'Adelaide Thai Massage', '887 South Road, Clarence Gardens', NULL, '0402 858 313', '', 'adelaide-thai-massage.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 05:28:25', '2021-08-21 05:28:25', '', '', ''),
(659, 'Nutrition Warehouse Mitchell Park', 'Shop 16/941-945 Marion Road, Mitchell Park', 'info@nutritionwarehouse.com.au', '(08) 8298 4183', '', 'www.nutritionwarehouse.com.au adelaide', 'Email', 'no', '', '', '3', 1, '2021-08-21 05:33:24', '2021-08-21 05:33:24', '', '', ''),
(660, 'Relax Original Thai Massage', '329/331 Henley Beach Road, Brooklyn Park', 'customercare@yellow.com.au', '0415 943 401', '', 'www.whereis.com', 'Email', 'no', '', '', '1', 1, '2021-08-21 05:37:35', '2021-08-21 05:37:35', '', '', ''),
(661, 'FPV XR Car Club of SA inc Mustang And Sports', '246 Fosters Road, Oakden', 'info@fpvxrclub.com.au', '0458 371 575', '', 'www.fpvxrclub.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 05:47:09', '2021-08-21 05:47:09', '', '', ''),
(662, 'Cooks Plus Home and Hospitality', '1/1 Lawrence Hargrave Way, Parafield', 'sales@cooksplus.com.au', '(08) 8258 8871', '', 'cooksplus.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 05:55:03', '2021-08-21 05:55:03', '', '', ''),
(663, 'Mr Clip', '497 Lower North East Road, Felixstow', 'admin@mrclip.com.au', '(08) 8365 8000', '', 'https://www.mrclip.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 05:55:46', '2021-08-21 05:55:46', '', '', ''),
(664, 'Mow It All + Gardening', '1 Prospect Road, Prospect', NULL, '0424 130 535', '', 'http://mowitallgardening.com/', 'Email', 'no', '', '', '2', 1, '2021-08-21 05:56:31', '2021-08-21 05:56:31', '', '', ''),
(665, 'Adelaide Lawn Mower Centre', 'Adelaide Lawn Mower Centre Address:	439 Churchill Road, Kilburn', 'info@adelmowers.com.au', '(08) 8349 5720', '', 'https://www.adelaidelawnmowercentre.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 05:58:27', '2021-08-21 05:58:27', '', '', ''),
(666, 'Minimax Norwood', '222 The Parade, Norwood', NULL, '(08) 7099 8639', '', 'hhtps://www.minimax.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 06:00:49', '2021-08-21 06:00:49', '', '', ''),
(667, 'Stanford Mowers', '590 Main North Road, Gepps Cross', 'info@stanfordmowers.com.au', '(08) 8349 8111', '', 'https://www.stanfordmowers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:02:58', '2021-08-21 06:02:58', '', '', ''),
(668, 'Mowers Plus Salisbury', '91 Frost Road Salisbury South SA 5106', NULL, '08 8250 5666', '', 'https://www.mowers-plus-sailsbury.stihl-dealer.com.au/en-au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:04:02', '2021-08-21 06:04:02', '', '', ''),
(669, 'Straight From the Crate by House & Garden Burnside', '2A Sydney Street, Glenside', NULL, '08 7071 0945', '', 'www.housegarden.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 06:05:27', '2021-08-21 06:05:27', '', '', ''),
(670, 'Golden Grove Screens', 'shop 8/16-18 Research Road, Pooraka ADELAIDE', 'allareas@internode.on.net', NULL, '', 'www.allareasglass.com', 'Email', 'no', '', '', '3', 1, '2021-08-21 06:06:36', '2021-08-21 06:06:36', '', '', ''),
(671, 'Azura Home Loans', '3 Hyde Place, Christies Beach', 'pamela@azura.net.au', '(08) 8384 1993', '', 'https://www.azura.net.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:13:47', '2021-08-21 06:13:47', '', '', ''),
(672, 'Globe Importers', '423 Magill Road, Saint Morris', 'sales@globeimporters.com.au', '(08) 8364 2488', '', 'www.globeimporters.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 06:15:20', '2021-08-21 06:15:20', '', '', ''),
(673, 'SportsPower Golden Grove', 'The Golden Way, Golden Grove', 'customerservice@sportspower.com.au', '(08) 8251 3908', '', 'sportspower.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 06:37:51', '2021-08-21 06:37:51', '', '', ''),
(674, 'Fitness Warehouse Parafield', '2 Commercial estate Main North Road, Parafield', 'inquiries@fitnesswarehouse.com.au', '(08) 8182 6800', '', 'www.fitnesswarehouse.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 06:43:48', '2021-08-21 06:43:48', '', '', ''),
(675, 'rebel Gepps Cross', '750 Main North Road, Gepps Cross', 'orders@rebelsport.com.au', '(08) 8465 0009', '', 'www.rebelsport.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 06:51:49', '2021-08-21 06:51:49', '', '', ''),
(676, 'National Finance', '1130 South Road, Clovelly Park', NULL, '(08) 7099 4976', '', 'http://nationalfinance.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:52:10', '2021-08-21 06:52:10', '', '', ''),
(677, 'Loans For People With Bad Credit', '4/962 South Road, Edwardstown', NULL, '1300 769 384', '', 'https://www.loansforpeoplewithbadcredit.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:53:02', '2021-08-21 06:53:02', '', '', ''),
(678, 'Loan SA', '1 King William Road, Unley', 'info@tslcapital.com.au', '(08) 8410 2055', '', 'https://www.tslcapital.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:54:43', '2021-08-21 06:54:43', '', '', ''),
(679, 'Loans Direct', 'Suite V237, 1A/400 King William Street, Adelaide', 'team@loansdirect.com.au', '(08) 7100 1054', '', 'http://www.loansdirect.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:56:59', '2021-08-21 06:56:59', '', '', ''),
(680, 'Greatrex Australia', '630 Port Road, Beverley', 'websales@greatrex.com.au', '(08) 8445 7077', '', 'www.greatrex.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-21 06:58:12', '2021-08-21 06:58:12', '', '', ''),
(681, 'Munibox', 'Level 5/333 King William Street, Adelaide', NULL, '(08) 7120 8500', '', 'https://www.munibox.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:58:25', '2021-08-21 06:58:25', '', '', ''),
(682, 'Capital Finance', 'Level 2/97 King William Street, Adelaide', NULL, '1300 300 309', '', 'https://www.capitalfinance.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 06:59:35', '2021-08-21 06:59:35', '', '', ''),
(683, 'Caveat Loans Australia', '1/14 North East Road, Walkerville', 'info@caveatloansaustralia.com.au', '(08) 8344 9508', '', 'http://www.caveatloansaustralia.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 07:01:16', '2021-08-21 07:01:16', '', '', ''),
(684, 'LoanCo', 'Suite 5, Level 1/166-168 Grange Road, Flinders Park', NULL, '(08) 8241 5215', '', 'https://loanco.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 07:02:08', '2021-08-21 07:02:08', '', '', ''),
(685, 'Loans & Mortgage Systems', '405 Torrens Road, Kilkenny', 'domenicalepro@internode.on.net', '(08) 8445 6633', '', 'http://www.loansandmortgagesystems.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 07:04:56', '2021-08-21 07:04:56', '', '', ''),
(686, 'Lending Tree SA', '28B Waninga Drive, Holden Hill', 'info@lendingtreesa.com.au', '0410 466 106', '', 'http://www.lendingtreesa.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-21 07:06:49', '2021-08-21 07:06:49', '', '', ''),
(687, 'rebel Newton', '81 Newton Road, Newton', 'orders@rebelsport.com.au', '(08) 7088 3910', '', 'www.rebelsport.com.au adelaide', 'Email', 'no', '', '', '3', 1, '2021-08-21 07:07:29', '2021-08-21 07:07:29', '', '', ''),
(688, 'Star Laundromat', '180 Grange Road, Flinders Park', NULL, '(08) 7132 0933', '', 'starlaundromat.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:10:37', '2021-08-21 07:10:37', '', '', ''),
(689, 'South Pacific Laundry (Adelaide)', '59/63 Stephens Avenue, Torrensville', NULL, '(08) 8443 8878', '', 'www.splaundry.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:14:34', '2021-08-21 07:14:34', '', '', ''),
(690, 'Supawash', '175 Henley Beach Road, Mile End', 'supawash@optusnet.com.au', '(08) 8352 1813', '', 'www.supawash.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:18:38', '2021-08-21 07:18:38', '', '', ''),
(691, 'Prime Laundromat Kurralta Park', 'Unit 5/41-47 Mortimer Street, Kurralta Park', 'primelaundromats@gmail.com', NULL, '', 'www.primelaundromats.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:23:38', '2021-08-21 07:23:38', '', '', ''),
(692, 'Ezy Wash & Dry Laundromat (St Morris)', '343 Magill Road, Saint Morris', 'magill@ezywashlaundromat.com.au', '0451 012 353', '', 'www.ezywashlaundromat.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:30:34', '2021-08-21 07:30:34', '', '', ''),
(693, 'Adelaide Laundromats (Glynde)', '2/474 Payneham Road, Glynde', 'support@AdelaideLaundromats.com.au', '0402 144 566', '', 'www.adelaidelaundromats.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:35:30', '2021-08-21 07:35:30', '', '', ''),
(694, 'Melbourne Street Laundromat', '80 Melbourne Street, North Adelaide', 'melbourne.st.laundromat@gmail.com', '(08) 7127 4854', '', 'https://www.facebook.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:40:41', '2021-08-21 07:40:41', '', '', ''),
(695, 'Eve Dry Cleaners Adelaide', '6/8 Walter Street, North Adelaide', NULL, '(08) 8267 1200', '', 'www.evedrycleanersadelaide.com', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:45:38', '2021-08-21 07:45:38', '', '', ''),
(696, 'Jigs Laundry Services', '142 North Terrace, Adelaide', 'shop@servicelivework.com', '(08) 8231 5759', '', 'www.jigslaundryservices.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 07:53:15', '2021-08-21 07:53:15', '', '', ''),
(697, 'Mazzucchelli\'s', '71 Rundle Mall, Adelaide', NULL, '(08) 8303 6700', '', 'www.mazzucchellis.com.au', 'Email', 'no', '', '', '1', 1, '2021-08-21 08:02:55', '2021-08-21 08:02:55', '', '', ''),
(698, 'Paint Makeup School', '14 Rosetta Street, West Croydon', 'info@paintmakeupschool.com', '0412 770 718', '', 'www.paintmakeupschool.com', 'Email', 'no', '', '', '3', 1, '2021-08-24 02:30:20', '2021-08-24 02:30:20', '', '', ''),
(699, 'Unveil The Beauty', '28 Burwood Avenue, Nailsworth', 'info@unveilthebeauty.com.au', '0402 317 265', '', 'www.unveilthebeauty.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 02:34:57', '2021-08-24 02:34:57', '', '', ''),
(700, 'Face Agency Makeup Academy', '122/124 Payneham Road, Stepney', 'nicole@faceagency.com.au', '(08) 8362 4244', '', 'www.faceagency.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 02:40:47', '2021-08-24 02:40:47', '', '', ''),
(701, 'Alycia Emma', '22 The Parade, Norwood', 'enquiries.alyciaemma@gmail.com', '0405 796 675', '', 'alyciaemma.com', 'Email', 'no', '', '', '3', 1, '2021-08-24 02:45:48', '2021-08-24 02:45:48', '', '', ''),
(702, 'Loan Avenue', '78 Richmond Road, Keswick', 'enquiries@loanave.com.au', '1300 56 26 28', '', 'https://www.loanave.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 02:47:50', '2021-08-24 02:47:50', '', '', ''),
(703, 'Funding Options Pty Ltd', '1 King William Road, Unley, SA 5061', 'info@fundingoptions.com.au', '(08) 7089 6611', '', 'https://www.fundingoptions.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 02:49:33', '2021-08-24 02:49:33', '', '', ''),
(704, 'Chloe Ellouise', '33 Kensington Rd Upstairs, Norwood', 'info@chloeellouise.com.au', '0452 476 884', '', 'www.chloeellouise.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 02:51:09', '2021-08-24 02:51:09', '', '', ''),
(705, 'The Loans Processor', '35 North Terrace Hackney SA 5069', 'info@theloansprocessor.com.au', '08 8271-6666', '', 'https://www.theloansprocessor.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 02:52:19', '2021-08-24 02:52:19', '', '', ''),
(706, 'Adelaide Lending Services', 'Ground Floor/237 Hutt Street, Adelaide', 'admin@adlend.com.au', '08 8232 0811', '', 'http://www.adelaidelendingservices.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 02:54:26', '2021-08-24 02:54:26', '', '', ''),
(707, 'Jemma Millar MUA', '2 Harris Street, North Plympton', 'jemma.millar@hotmail.com', NULL, '', 'www.jemmamillarmakeupartist.co', 'Email', 'no', '', '', '3', 1, '2021-08-24 02:56:27', '2021-08-24 02:56:27', '', '', ''),
(708, 'Sweet Look', '10 Carlisle Road, Westbourne Park', 'lilynguyendh@gmail.com', '0448 959 736', '', 'sweetlook.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 03:10:14', '2021-08-24 03:10:14', '', '', ''),
(709, 'Sylvana Make Up', '250 Flinders Street, Adelaide', NULL, '0414 709 013', '', 'www.sylvanamakeup.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 03:20:25', '2021-08-24 03:20:25', '', '', ''),
(710, 'Nicola Burgess Makeup', 'Level 1/190 Hutt Street, Adelaide', 'nicolaburgess8@gmail.com', '0450 185 110', '', 'www.nicolaburgessmakeup.com', 'Email', 'no', '', '', '3', 1, '2021-08-24 03:33:10', '2021-08-24 03:33:10', '', '', ''),
(711, 'The Loan Inspector', '26 Gilles Street ADELAIDE SA 5000', NULL, '0412 953 905', '', 'http://www.loaninspector.com.au/contact/', 'Email', 'no', '', '', '2', 1, '2021-08-24 03:44:57', '2021-08-24 03:44:57', '', '', ''),
(712, 'The Speckled Hen Wagga', '82 Thorne Street, Wagga Wagga', 'thespeckledhen@gmail.com', '0499 782 723', '', 'thespeckledhenwagga.com', 'Email', 'no', '', '', '3', 1, '2021-08-24 04:15:01', '2021-08-24 04:15:01', '', '', ''),
(713, 'Indian Rasoi', 'Unit 10/44 - 66 Fernleigh Road, Mount Austin', NULL, '(02) 6925 7336', '', 'https://www.indianrasoiwagga.com/', 'Email', 'no', '', '', '2', 1, '2021-08-24 04:17:08', '2021-08-24 04:17:08', '', '', ''),
(714, 'Dom\'s Pizza Parlour', '2/44-66 Fernleigh Road, Mount Austin', NULL, '(02) 6925 4441', '', 'https://www.domspizzawagga.com.au/menu', 'Email', 'no', '', '', '2', 1, '2021-08-24 04:18:20', '2021-08-24 04:18:20', '', '', ''),
(715, 'Belair Pizza & Pasta', '345 Edward Street, Wagga Wagga', NULL, '(02) 6925 7788', '', 'https://www.belairpizzapasta.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 04:19:30', '2021-08-24 04:19:30', '', '', ''),
(716, 'The Roundabout Restaurant', '82 Tarcutta st Wagga Wagga, NSW 2650', 'stay@charlessturt.com.au', '(02) 69 23 4170', '', 'https://www.theroundaboutrestaurant.com/', 'Email', 'no', '', '', '2', 1, '2021-08-24 04:21:50', '2021-08-24 04:21:50', '', '', ''),
(717, 'Tarcoola Turf', 'www.tarcoolaturf.com.au', 'admin@tarcoolaturf.com.au', '(02) 6921 5403', '', 'www.tarcoolaturf.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 04:37:49', '2021-08-24 04:37:49', '', '', ''),
(718, 'Il Corso Italian Restaurant', '16-18 Baylis St Wagga Wagga NSW 2650 Australia.', NULL, '(02) 6921-9133', '', 'https://ilcorso.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 04:46:31', '2021-08-24 04:46:31', '', '', ''),
(719, 'Buildpro - Wagga Wagga', '180 Hammond Avenue, Wagga Wagga', 'waggasales@buildpro.com.au', '(02) 6939 7999', '', 'www.buildpro.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 04:46:43', '2021-08-24 04:46:43', '', '', ''),
(720, 'COUNTRY CURRY & KEBAB', 'City Centre, 47 Baylis Street, Wagga Wagga', NULL, '0458 877 436', '', 'https://www.countrycurrykebab.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 04:47:15', '2021-08-24 04:47:15', '', '', ''),
(721, 'The Oakroom Kitchen & Bar', '70 Morgan Street, Wagga Wagga', 'stay@townhousewagga.com', '61 2 6921 4337', '', 'https://www.townhousewagga.com/', 'Email', 'no', '', '', '2', 1, '2021-08-24 04:49:44', '2021-08-24 04:49:44', '', '', ''),
(722, 'Invermay Lane Brasserie', '6/56 Forsyth St Wagga Wagga NSW 2650 Australia', NULL, '0448 494 016', '', 'https://www.invermay-lane-brasserie.business.site/?utm_source=gmb&utm_medium=referral', 'Email', 'no', '', '', '2', 1, '2021-08-24 04:51:08', '2021-08-24 04:51:08', '', '', ''),
(723, 'Greater Grass Installations', '196 Edward Street, Wagga Wagga', 'greatergrass@bigpond.com', '(02) 6925 9303', '', 'www.greatergrass.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 04:55:41', '2021-08-24 04:55:41', '', '', ''),
(724, 'Schnitz Wagga Wagga', '62A Forsyth Street, Wagga Wagga', NULL, '(02) 5924 5214', '', 'https://www.schnitz.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:00:18', '2021-08-24 05:00:18', '', '', ''),
(725, 'Yatai Sushi', '14/135-143 Baylis Street, Wagga Wagga', NULL, '(02) 6971 8221', '', 'http://www.yataisushi.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:01:20', '2021-08-24 05:01:20', '', '', ''),
(726, 'CAVE Restaurant & Bar', '96 Fitzmaurice Street  Wagga Wagga  NSW 2650', NULL, '0269 216 508', '', 'https://www.cavebbq.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:06:59', '2021-08-24 05:06:59', '', '', ''),
(727, 'Thaigga', '107 Fitzmaurice St, Wagga Wagga, New South Wales, Australia 2650', 'info@thaigga.com.au', '(02) 6971 7371', '', 'https://www.thaigga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:20:40', '2021-08-24 05:20:40', '', '', ''),
(728, 'EMBARK Landscape Design and Construction', '74 Bourke Street, Turvey Park', 'embarkldc@gmail.com', '0431 293 040', '', 'www.embarklandscapes.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 05:23:13', '2021-08-24 05:23:13', '', '', ''),
(729, 'Our Mobile Car Detailer', '8 Beltana Avenue, Mount Austin', NULL, '0411 620 771', '', 'https://www.ourmobilecardetailer.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:27:52', '2021-08-24 05:27:52', '', '', ''),
(730, 'Auto Image Centre', '11 Nagle Street, East Wagga Wagga', 'enquiries@localsearch.com.au', '(02) 6971 0670', '', 'https://www.localsearch.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:30:21', '2021-08-24 05:30:21', '', '', ''),
(731, 'Autobarn Opposite Lock Wagga Wagga', '42 Hammond Avenue, Wagga Wagga', 'sales@waggawagga.autobarn.com.au', '(02) 6931 9455', '', 'https://www.autobarn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:32:58', '2021-08-24 05:32:58', '', '', ''),
(732, 'Repco Wagga Wagga', 'Shop 11, Homebase Shopping Centre, 9 Hammond Avenue, East Wagga Wagga', 'online@repco.com.au', '(02) 6921 2855', '', 'https://www.repco.com.au/en/store/Repco_Wagga-Wagga', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:37:10', '2021-08-24 05:37:10', '', '', ''),
(733, 'Supercheap Auto Wagga Wagga', '43-45 BERRY STREET Wagga Wagga', NULL, '02 6921 6922', '', 'https://www.supercheapauto.com.au/stores/details?sid=sca-wagga-wagga&utm_source=google&utm_medium=organic&utm_campaign=waggawagga', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:38:19', '2021-08-24 05:38:19', '', '', ''),
(734, 'Punjab Mobile Auto Service and Car Wash', '99 Forsyth St Wagga Wagga NSW 2650 Australia', NULL, '0481 101 484', '', 'https://singh-mobile-auto-care.business.site/?utm_source=gmb&utm_medium=referral#details', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:39:31', '2021-08-24 05:39:31', '', '', ''),
(735, 'Acropolis Computer Services', '1 Garru Place, Glenfield Park', 'bill@acropolis.com.au', '(02) 6971 1368', '', 'acropolis.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 05:46:33', '2021-08-24 05:46:33', '', '', ''),
(736, 'Custom Car Care Wagga', '6/73 Dobney Ave, Wagga Wagga NSW, 2650', 'info@customcarcarewagga.com.au', '0269254741', '', 'https://www.customcarcarewagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:47:27', '2021-08-24 05:47:27', '', '', ''),
(737, 'Auto One Wagga Wagga', '1-3 Pearson Street Wagga Wagga NSW, 2650', NULL, '02 6926 0888', '', 'https://www.autoone.com.au/store-information?Storename=Auto%20One%20Wagga%20Wagga', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:48:46', '2021-08-24 05:48:46', '', '', ''),
(738, 'Shell Coles Express Wagga Wagga', '353-355 Edward Street, Wagga Wagga', NULL, '(02) 7909 0922', '', 'https://www.coles.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:51:34', '2021-08-24 05:51:34', '', '', ''),
(739, 'Bakers Detailing', '359 Edward Street, Wagga Wagga New South Wales 2650, Australia', NULL, '0404 365 233', '', 'https://www.bakersdetailing.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 05:53:20', '2021-08-24 05:53:20', '', '', ''),
(740, 'Hines Computer Repairs', '18 Karoom Drive, Wagga Wagga', 'hinescomputerrepairs@gmail.com', '0448 765 831', '', 'sites.google.com', 'Email', 'no', '', '', '3', 1, '2021-08-24 05:54:31', '2021-08-24 05:54:31', '', '', ''),
(741, 'Red Steer Hotel Motel', '6 OLD BOMEN RD CARTWRIGHTS HILL NSW 2650', 'OFFICE@REDSTEERHOTEL.COM', '(02) 6921 1344', '', 'https://www.redsteerhotel.com/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:04:50', '2021-08-24 06:04:50', '', '', ''),
(742, 'Tech Clinic', '22 Stirling Boulevard, Tatton', 'info@techclinic.com.au', '0420 947 423', '', 'techclinic.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 06:05:38', '2021-08-24 06:05:38', '', '', ''),
(743, 'Palm & Pawn Motor Inn & Tavern', '68 Hampden Avenue North Wagga Wagga NSW, 2650', 'info@palmandpawn.com.au', '(02) 69216688', '', 'https://www.palmandpawn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:08:27', '2021-08-24 06:08:27', '', '', ''),
(744, 'Graham\'s Computers', '15 Tinga Crescent, Kooringal', 'grahamscomputers@gmail.com', '0468 312 481', '', 'www.grahamscomputers.net', 'Email', 'no', '', '', '3', 1, '2021-08-24 06:10:00', '2021-08-24 06:10:00', '', '', ''),
(745, 'Allonville Motel', '3691-3705 Sturt Hwy GumlyGumly NSW 2652', 'info@allonville.com.au', '02 6922 7269', '', 'https://www.allonville.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:10:31', '2021-08-24 06:10:31', '', '', ''),
(746, 'iRanga Tech', '3 Banks Avenue, Kooringal', 'danny@irangatech.com.au', '0423 619 331', '', 'www.irangatech.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 06:18:55', '2021-08-24 06:18:55', '', '', ''),
(747, 'Australian Homestead Motor Lodge', '3791 Sturt Highway (Gumly Gumly) Wagga Wagga, NSW 2652', 'info@australianhomestead.com.au', '(02) 6922 7256', '', 'https://www.australianhomestead.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:24:56', '2021-08-24 06:24:56', '', '', ''),
(748, 'Quality Inn Carriage House', '7 Eunony Bridge Road, East Wagga Wagga', NULL, '(02) 6922 7374', '', 'https://www.choicehotels.com/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:26:07', '2021-08-24 06:26:07', '', '', ''),
(749, 'Golfview Motor Inn', 'McNickle Road, Moorong', 'admin@golfviewwagga.com.au', '(02) 6931 1633', '', 'https://www.golfviewwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:28:48', '2021-08-24 06:28:48', '', '', ''),
(750, 'Quality Hotel Rules Club Wagga', '188 Fernleigh Road NSW 2650 Wagga Wagga Australia', 'hotel@rulesclubwagga.com', '61 2 6931 2000', '', 'https://www.qualityhotelrulesclubwagga.com/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:33:16', '2021-08-24 06:33:16', '', '', ''),
(751, 'Best Western Ambassador Motor Inn', '313/315 Edward Street, Wagga Wagga', 'info@ambassadorinn.com.au', '02 6925 7722', '', 'https://www.ambassadorinn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:45:50', '2021-08-24 06:45:50', '', '', ''),
(752, 'Comfort Inn Heritage Wagga', '248 Edward Street, Wagga Wagga', NULL, '(02) 6921 4099', '', 'https://www.choicehotels.com/new-south-wales/wagga-wagga/comfort-inn-hotels/au882?mc=llgoxxapnbn', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:49:57', '2021-08-24 06:49:57', '', '', ''),
(753, 'Turning Heads Hairdressing', '29 Morgan Street, Wagga Wagga', NULL, '(02) 6921 2809', '', 'www.turningheadshairdressing.c', 'Email', 'no', '', '', '1', 1, '2021-08-24 06:51:34', '2021-08-24 06:51:34', '', '', ''),
(754, 'William Farrer Hotel', 'Edward St & Peter St, 1 Peter Street, Wagga Wagga', 'info@williamfarrerhotel.com.au', '(02) 6921 3631', '', 'https://www.williamfarrerhotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-24 06:52:40', '2021-08-24 06:52:40', '', '', ''),
(755, 'Lake Village Auto Port', '2/95 Copland Street, East Wagga Wagga', 'lakevillageauto@bigpond.com', '(02) 6931 0674', '', 'www.lakevillageauto.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 06:55:41', '2021-08-24 06:55:41', '', '', ''),
(756, 'Derricks Automotive Repairs', '27b Dobney Avenue, Ashmont', 'derricksautomotive@gmail.com', '(02) 6925 2055', '', 'www.localsearch.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-24 07:07:20', '2021-08-24 07:07:20', '', '', ''),
(757, 'Townhouse Hotel Wagga', '70 Morgan Street, Wagga Wagga, NSW, 2650', 'stay@townhousewagga.com', '(02) 6921 4337', '', 'https://townhousewagga.com/', 'Email', 'no', '', '', '2', 1, '2021-08-24 07:10:11', '2021-08-24 07:10:11', '', '', ''),
(758, 'Garden City Motor Inn', '2 Day Street, Wagga Wagga', 'INFO@GARDENCITYWAGGA.COM.AU', '(02) 6921 3646', '', 'https://www.gardencitymotorinn.com/', 'Email', 'no', '', '', '2', 1, '2021-08-24 07:17:24', '2021-08-24 07:17:24', '', '', ''),
(759, 'Mercure Wagga Wagga', '1 Morgan St P O Box 2537 2650 WAGGA WAGGA AUSTRALIA', NULL, '61269397200', '', 'https://www.all.accor.com', 'Email', 'no', '', '', '2', 1, '2021-08-24 07:22:17', '2021-08-24 07:22:17', '', '', ''),
(760, 'Mantra Pavilion Hotel Wagga Wagga', '22-30 Kincaid Street, Wagga Wagga', 'pavilion.res@mantra.com.au', '(02) 6921 6411', '', 'https://www.pavilionhotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 01:56:18', '2021-08-25 01:56:18', '', '', ''),
(761, 'The Manhattan Wagga', '214 Baylis Street, Wagga Wagga', NULL, '0419445110', '', 'https://www.themanhattanwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:00:57', '2021-08-25 02:00:57', '', '', ''),
(762, 'The Club Motel and Apartments', '73 Morgan Street, Wagga Wagga', 'stay@clubmotel.com.au', '(02) 6921 6966', '', 'https://www.clubmotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:03:49', '2021-08-25 02:03:49', '', '', ''),
(763, 'City Park Motel & Apartments', '1 Tarcutta Street Wagga Wagga NSW 2650', 'inquiries@cityparkmotel.com.au', '02 6921 4301', '', 'https://www.cityparkmotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:07:10', '2021-08-25 02:07:10', '', '', ''),
(764, 'International Hotel Wagga Wagga', 'Corner of Sturt Hwy &, Lake Albert Road, Wagga Wagga', 'info@intlhotelwagga.com.au', '(02) 6971 7007', '', 'https://www.intlhotelwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:09:21', '2021-08-25 02:09:21', '', '', ''),
(765, 'Chim Cheroo Wood Heating Installations & Cleaning Services', '32 Featherwood Road, Springvale', 'info@chimcheroo.com.au', '0418 457 859', '', 'https://www.chimcheroo.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:18:05', '2021-08-25 02:18:05', '', '', ''),
(766, 'Wagga All Clean', '8 Nethereby Place, Bourkelands', NULL, '0419 429 246', '', 'https://www.waggaallclean.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:20:20', '2021-08-25 02:20:20', '', '', ''),
(767, 'Prestige Cleaning Wagga', '2/43 Lake Albert Rd, Kooringal, NSW, Australia', 'admin@prestigecleaningwagga.com.au', '0428 487 093', '', 'https://www.prestigecleaningwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:22:32', '2021-08-25 02:22:32', '', '', ''),
(768, 'Top Job Cleaning Services', '220 lake albert road Wagga wagga NSW 2650 Australia', NULL, '0466 973 954', '', 'http://www.topjobcleaningservices.com', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:23:46', '2021-08-25 02:23:46', '', '', ''),
(769, 'Poolwerx', '9/140 Hammond Avenue, East Wagga Wagga', NULL, '(02) 6921 6121', '', 'https://www.poolwerx.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:25:35', '2021-08-25 02:25:35', '', '', ''),
(770, '000 Plumbing Services Australia Pty Ltd', '25 Copland Street, Wagga Wagga', 'admin@000plumbing.com', '1300 874 750', '', 'https://www.000plumbing.com/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:31:14', '2021-08-25 02:31:14', '', '', ''),
(771, 'Godfreys Wagga Wagga', 'Unit 7, Homebase, 7-23 Hammond Avenue, Wagga Wagga', NULL, '(02) 6921 5726', '', 'https://www.godfreys.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:33:49', '2021-08-25 02:33:49', '', '', ''),
(772, 'JB Hi-Fi Wagga Wagga', '75 Morgan Street, Wagga Wagga', NULL, '(02) 6932 8700', '', 'https://www.jbhifi.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 02:35:01', '2021-08-25 02:35:01', '', '', ''),
(773, 'Spotlight Wagga Wagga', 'Tenancy 2/143 Hammond Avenue, Wagga Wagga', NULL, '(02) 5976 1997', '', 'https://www.spotlightstores.com/store/new-south-wales/wagga-wagga/s123', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:21:34', '2021-08-25 03:21:34', '', '', ''),
(774, 'The Appliance Man', '132 Hammond Avenue, East Wagga Wagga', NULL, '(02) 6921 7477', '', 'http://www.theapplianceman.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:22:55', '2021-08-25 03:22:55', '', '', ''),
(775, 'Country Appliance Spares', '2/10 Kooringal Road, East Wagga Wagga', NULL, '(02) 6921 1288', '', 'https://www.countryappliancespares.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:23:57', '2021-08-25 03:23:57', '', '', ''),
(776, 'Quick Fix Appliances', '71 Copland Street, East Wagga Wagga', NULL, '(02) 6931 4123', '', 'https://www.quickfixappliances.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:25:06', '2021-08-25 03:25:06', '', '', ''),
(777, 'Harvey Norman Wagga Wagga', '7-23 Hammond Avenue, East Wagga Wagga', NULL, '(02) 6933 7000', '', 'https://www.stores.harveynorman.com.au/harvey-norman-wagga-wagga-nsw', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:26:18', '2021-08-25 03:26:18', '', '', ''),
(778, 'Joyce Mayne', 'Berry Street, Wagga Wagga', NULL, '(02) 6921 3366', '', 'https://www.stores.joycemayne.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:31:31', '2021-08-25 03:31:31', '', '', ''),
(779, 'Kitchen Antics', '87 Baylis Street, Wagga Wagga', NULL, '(02) 6931 7767', '', 'https://kitchenantics.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:32:50', '2021-08-25 03:32:50', '', '', ''),
(780, 'Shaver Shop Wagga Wagga', 'Shop 34A/87 Baylis Street, Wagga Wagga', 'waggawagga@shavershop.net.au', '(02) 5908 1305', '', 'https://www.shavershop.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:44:20', '2021-08-25 03:44:20', '', '', ''),
(781, 'Harris Scarfe Wagga Wagga', '92-96 Baylis Street, Wagga Wagga', NULL, '(02) 6931 9866', '', 'https://www.harrisscarfe.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:45:30', '2021-08-25 03:45:30', '', '', ''),
(782, 'Myer Wagga Wagga (Click & Collect Only)', '233 Baylis Street, Wagga Wagga', NULL, '(02) 8015 6591', '', 'https://www.myer.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 03:47:30', '2021-08-25 03:47:30', '', '', ''),
(783, 'Carlo\'s Cafe', '1/195 Morgan Street, Wagga Wagga', 'hello@carloswagga.com.au', '(02) 6921 4636', '', 'carloswagga.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-25 04:13:52', '2021-08-25 04:13:52', '', '', ''),
(784, 'Gloria Jean\'s Coffees Wagga Wagga', '2/345 Edward Street, Wagga Wagga', 'gjcmarketing@gloriajeanscoffees.com.au', '(02) 6925 7306', '', 'www.gloriajeanscoffees.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-25 04:25:52', '2021-08-25 04:25:52', '', '', ''),
(785, 'Baylis Grind', '2/47-53 Baylis Street, Wagga Wagga', 'baylisgrind@hotmail.com', '(02) 6921 2181', '', 'www.facebook.com/BaylisGrind', 'Email', 'no', '', '', '3', 1, '2021-08-25 04:33:40', '2021-08-25 04:33:40', '', '', ''),
(786, 'Pick Me Flowers and Gifts', 'Shop 1/30 Sale Street, Orange', 'pickmeflowersandgifts@gmail.com', '(02) 5353 1205', '', 'pickmeflowersandgifts.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-25 05:26:01', '2021-08-25 05:26:01', '', '', ''),
(787, 'Great Southern Electrical', '32 Bomen Road, Bomen', 'info@gse.net.au', '(02) 6931 7699', '', 'www.gse.net.au', 'Email', 'no', '', '', '2', 1, '2021-08-25 05:33:10', '2021-08-25 05:33:10', '', '', ''),
(788, 'Russell Taber Electrical & Solar Wagga', '19 Olearia Place, Lake Albert', NULL, '0418 692 555', '', 'www.rustaberelectrical.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-25 05:39:22', '2021-08-25 05:39:22', '', '', ''),
(789, 'Flower Talk', '248 Baylis St, Wagga Wagga NSW 2650', 'ent4224a@interfloraflorist.com.au', '0269719021', '', 'https://www.flowertalk.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 06:06:45', '2021-08-25 06:06:45', '', '', ''),
(790, 'Harmers Electrical Wagga Wagga', '4 Glandore Street, Bourkelands', NULL, '0438 279 126', '', 'https://www.electricianwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 06:09:57', '2021-08-25 06:09:57', '', '', ''),
(791, 'Des Mullins Electrical', '530 Kooringal Road, Kooringal', 'nick@desmullinselectrical.com.au', '0412 982 199', '', 'https://www.desmullinselectrical.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 06:20:22', '2021-08-25 06:20:22', '', '', ''),
(792, 'Wagga Electrical', '83 Byrnes Road, Wagga Wagga', 'rkrause@electric.com.au', '(02) 6921 1168', '', 'https://www.electric.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 06:23:45', '2021-08-25 06:23:45', '', '', ''),
(793, 'Little Triffids Flowers', 'North Wagga Wagga, NSW, Australia 2650', 'hello@littletriffids.com.au', '0424291634', '', 'https://littletriffids.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 06:36:42', '2021-08-25 06:36:42', '', '', ''),
(794, 'JRC Electrical Services', '238 Hammond Avenue Wagga Wagga NSW 2650', NULL, '(02) 6921 6903  JRC-ELECTRICAL-REBRAND-FA1-01', '', 'http://www.jrcelectrical.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 06:40:24', '2021-08-25 06:40:24', '', '', ''),
(795, 'Redfox Electrical Contractors', '3 Hovell Street, East Wagga Wagga', 'admin@redfoxelectrical.com.au', '0439 262 056', '', 'https://www.redfoxelectrical.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-25 06:42:17', '2021-08-25 06:42:17', '', '', ''),
(796, 'Scooter Flowers', '11 Gurwood St, Wagga Wagga NSW 2650', NULL, '0269211822', '', 'https://scooterflowers.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 06:50:40', '2021-08-25 06:50:40', '', '', ''),
(797, 'D&S Taber Electrical & Solar', '2/32 Kooringal Road, Wagga Wagga', 'office@dstaberelectrical.com.au', '(02) 6921 2447', '', 'https://www.dstaberwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 06:52:32', '2021-08-25 06:52:32', '', '', ''),
(798, 'Southcity Florist', 'K 2 Southcity Shopping Centre, 1-7 Tanda Place, Glenfield Park NSW 2650', 'flower@efloristwagga.com.au', '0269314562', '', 'https://efloristwagga.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 07:08:58', '2021-08-25 07:08:58', '', '', ''),
(799, 'RIC Electrics', '6 Nesbitt Street, Wagga Wagga', 'ric@ric.com.au', '(02) 6926 9000', '', 'https://www.ric.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 07:14:04', '2021-08-25 07:14:04', '', '', ''),
(800, 'Freckles Flowers', 'Shop 3/ 189 Morgan St, Wagga Wagga NSW 2650', 'katrina@frecklesflowers.com.au', '0269219316', '', 'https://frecklesflowers.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 07:15:00', '2021-08-25 07:15:00', '', '', ''),
(801, 'Sarah\'s Flowers', 'Shop 3 189 Morgan St, Wagga Wagga NSW 2650', 'sales@sarahsflowers.com.au', '0259632603', '', 'http://www.sarahsfloristwaggawagga.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 07:20:39', '2021-08-25 07:20:39', '', '', ''),
(802, 'Zac Robinson Electrical', '1/71 Copland Street, East Wagga Wagga', NULL, '0427 143 141', '', 'https://www.zacrobinsonelectrical.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 07:30:09', '2021-08-25 07:30:09', '', '', ''),
(803, 'All Aspects Electrical', '5/81 Copland Street, Wagga Wagga', 'info@allaspectselectrical.com.au', '0432 737 373', '', 'http://www.allaspectselectrical.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 07:32:36', '2021-08-25 07:32:36', '', '', ''),
(804, 'CRS Plumbing', 'Wagga Wagga NSW 2650', 'craig@crsplumbing.com.au', '0407410914', '', 'https://www.crsplumbing.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 07:36:02', '2021-08-25 07:36:02', '', '', ''),
(805, 'Scooters Plumbing', 'Plumbers & Gas Fitters - Wagga Wagga, NSW 2650', NULL, '0434041183', '', 'https://scootersplumbing.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 07:42:35', '2021-08-25 07:42:35', '', '', ''),
(806, 'AC Electrics', '4/28 Nagle Street, East Wagga Wagga', NULL, '(02) 6971 9933', '', 'https://www.acelectrics.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 07:44:27', '2021-08-25 07:44:27', '', '', ''),
(807, 'Jhe Electrical', '17 Copland Street, Kooringal', 'james@jheelectrical.com.au', '0422 149 430', '', 'https://www.jheelectrical.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-25 07:51:00', '2021-08-25 07:51:00', '', '', ''),
(808, 'Golden Gas & Plumbing Pty Ltd', '17 Tarcoola Rd, Wagga Wagga NSW 2650', NULL, '0428332212', '', 'https://goldengas.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 07:51:00', '2021-08-25 07:51:00', '', '', ''),
(809, 'Powers Plumbing & Insulation', '7 Bye St, Wagga Wagga NSW 2650', NULL, '0269321888', '', 'https://powersinsulation.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 07:58:48', '2021-08-25 07:58:48', '', '', ''),
(810, 'Jim Jenkins Plumbing', '39A Plumpton Rd, Lake Albert NSW 2650, Australia', NULL, '0412219785', '', 'https://www.jimjenkinsplumbing.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-25 08:07:21', '2021-08-25 08:07:21', '', '', ''),
(811, 'Laser Electrical Wagga Wagga', '58 Chaston Street, Wagga Wagga', 'waggawagga@laserelectrical.com.au', '(02) 6925 7013', '', 'http://www.laserelectrical.com.au/m/Electrician-Wagga-Wagga', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:31:32', '2021-08-26 01:31:32', '', '', ''),
(812, 'Crockers Auto Electrical Service', '66 Chaston Street, Wagga Wagga', NULL, '(02) 6925 4758', '', 'https://www.crockers-auto-electrical-service.business.site/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:32:31', '2021-08-26 01:32:31', '', '', ''),
(813, 'LED Riverina Electrical', '350 Edward Street, Wagga Wagga', 'damian@ledelec.com.au', '0413 007 570', '', 'https://www.ledriverinaelectrical.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:35:22', '2021-08-26 01:35:22', '', '', ''),
(814, 'Hibbard Electrics', '1/32 Morrow Street, Wagga Wagga', 'admin@hibbardelectrics.com.au', '(02) 6931 3140', '', 'https://www.hibbardelectrics.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:37:45', '2021-08-26 01:37:45', '', '', ''),
(815, 'Kooringal Veterinary Hospital', '2 Kimberley Drive, Tatton', NULL, '(02) 69 225 375', '', 'https://www.vetwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:45:09', '2021-08-26 01:45:09', '', '', ''),
(816, 'Lake Road Veterinary Hospital', '327 Lake Albert Road, Wagga Wagga', NULL, '(02) 6922 4659', '', 'https://www.lakerdvet.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:46:11', '2021-08-26 01:46:11', '', '', ''),
(817, 'PETstock Wagga Wagga', '129 Hammond Avenue, Wagga Wagga', NULL, '(02) 6971 0665', '', 'https://www.petstock.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:47:32', '2021-08-26 01:47:32', '', '', ''),
(818, 'Wagga Wagga Veterinary Hospital', '132 Urana Street, Turvey Park', 'waggavet@waggavet.com.au', '(02) 6926 0900', '', 'https://www.waggavet.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:49:43', '2021-08-26 01:49:43', '', '', ''),
(819, 'Riverina Equine Veterinary Services', '273 Oura Road, North Wagga Wagga', 'info@riverinaequinevet.com.au', '0422 154 301', '', 'https://www.riverinaequinevet.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:52:19', '2021-08-26 01:52:19', '', '', ''),
(820, 'Moorong Veterinary Clinic', '3 Moorong Street, Wagga Wagga', 'admin@moorongvet.com.au', '(02) 6921 3462', '', 'https://www.moorongveterinaryclinic.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:55:31', '2021-08-26 01:55:31', '', '', ''),
(821, 'School of Animal and Veterinary Sciences', 'Albert Pugsley Place, Charles Sturt University', NULL, '02 6933 2510', '', 'https://science-health.csu.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:58:15', '2021-08-26 01:58:15', '', '', ''),
(822, 'Veterinary Diagnostic Laboratory', 'Charles Sturt University', NULL, '(02) 6933 2000', '', 'https://www.csu.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 01:59:56', '2021-08-26 01:59:56', '', '', ''),
(823, 'Marketplace Dental Centre', '295 Lake Albert Road WAGGA WAGGA NSW 2650', NULL, '02 6922 6855', '', 'http://www.familydoctor.com.au/wagga/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:04:06', '2021-08-26 02:04:06', '', '', ''),
(824, 'Bright Smiles Dental Surgery', '53 Heath Street  Turvey Park, NSW, 2650', NULL, '02 6925 4536', '', 'https://www.brightsmileswagga.com/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:05:07', '2021-08-26 02:05:07', '', '', ''),
(825, 'iSmile Dental Clinic', '316 Edward Street Wagga Wagga NSW 2650', 'info@ismiledentalclinic.com.au', '(02) 6925 5511', '', 'https://www.ismiledentalclinic.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:08:23', '2021-08-26 02:08:23', '', '', ''),
(826, 'Go Dental', '34 Peter Street, Wagga Wagga', 'godental@dentegrity.com.au', '(02) 6921 3120', '', 'https://www.godentalwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:12:20', '2021-08-26 02:12:20', '', '', ''),
(827, 'Morgan Street Dental Centre - Dentist Wagga', 'Suite 1/2/185 Morgan Street, Wagga Wagga', NULL, '(02) 6921 9500', '', 'https://msdcwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:13:10', '2021-08-26 02:13:10', '', '', ''),
(828, 'Kincaid Medical & Dental Centre', '166 Kincaid Street, Wagga Wagga', NULL, '(02) 6971 0811', '', 'https://kincaidmedicalanddentalcentre.com/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:14:28', '2021-08-26 02:14:28', '', '', ''),
(829, 'Marketplace Dental Centre | General Dentist Wagga', 'Wagga Wagga Market Place, 87 Baylis Street, Wagga Wagga', NULL, '(02) 6971 8764', '', 'https://marketplacedental.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:15:30', '2021-08-26 02:15:30', '', '', ''),
(830, 'Coates Dental', '73 Berry Street, Wagga Wagga', 'coates.dental@outlook.com', '(02) 6921 3368', '', 'https://www.coatesdentalwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:17:06', '2021-08-26 02:17:06', '', '', ''),
(831, 'Wild Dental - Tom Shumack', '69 Tompson Street, Wagga Wagga', 'hello@shumackdental.com.au', '(02) 6921 2333', '', 'https://www.shumackdental.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:19:02', '2021-08-26 02:19:02', '', '', ''),
(832, 'Best St Dental - Dentist | Orthodontist | Teeth Whitening Wagga', '122 Best Street Wagga Wagga, NSW 2650', NULL, '(02) 6921 5799', '', 'https://beststdental.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:20:11', '2021-08-26 02:20:11', '', '', ''),
(833, 'Dr Mary-Anne Slater Dental Practice', '24 The Esplanade, Wagga Wagga', 'dentalwagga@gmail.com', '(02) 6921 6035', '', 'https://www.mslaterdental.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:22:01', '2021-08-26 02:22:01', '', '', ''),
(834, 'Wagga Family Dentist', '193 Tarcutta Street, Wagga Wagga', NULL, '(02) 6921 4222', '', 'https://www.waggafamilydentist.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:23:15', '2021-08-26 02:23:15', '', '', ''),
(835, 'Green Apple Dentistry', '9 Sturt Street, Wagga Wagga', NULL, '(02) 6921 6488', '', 'https://www.greenappledentistry.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 02:24:21', '2021-08-26 02:24:21', '', '', ''),
(836, 'Ahern\'s Plumbing Service', 'Wagga City', 'craig@crsplumbing.com.au', '0417676064', '', 'https://www.crsplumbing.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 02:32:48', '2021-08-26 02:32:48', '', '', ''),
(837, 'Dunn\'s Plumbing Service', 'Wagga Wagga City', 'brock@dunnsplumbing.com.au', '0427386699', '', 'https://dunnsplumbing.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 02:44:16', '2021-08-26 02:44:16', '', '', '');
INSERT INTO `tasks` (`id`, `name`, `address`, `email`, `phone`, `mobile`, `website`, `strategy`, `response`, `status`, `partner`, `aid`, `transaction`, `created_at`, `updated_at`, `directory`, `category`, `town`) VALUES
(838, 'Laser Plumbing Wagga Wagga', '265/385 Edward St, Wagga Wagga NSW 2650, Australia', 'waggawagga@laserplumbing.com.au', '0269257378', '', 'http://www.laserplumbing.com.au', 'Email', 'yes', '', '', '3', 1, '2021-08-26 02:53:48', '2021-08-26 03:38:15', '', '', ''),
(839, 'AIC Plumbing', '5 Garru Pl, Glenfield Park NSW 2650', 'aaron@aicplumbing.com.au', '0407299951', '', 'http://www.aicplumbing.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 03:28:27', '2021-08-26 03:28:27', '', '', ''),
(840, 'Flexit Gym 24/7', 'Unit 12/140 Hammond Avenue, Wagga Wagga', 'admin@flexit.net.au', '(02) 6921 1110', '', 'http://www.flexitgym247.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 03:33:58', '2021-08-26 03:33:58', '', '', ''),
(841, 'CrossFit Morph', '23 Nagle Street, East Wagga Wagga', 'info@crossfitmorph.com.au', '0409 161 764', '', 'https://www.crossfitmorph.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-26 03:36:36', '2021-08-26 03:36:36', '', '', ''),
(842, 'CrossFit Victus', '3/17-25 Lake Albert Road, Wagga Wagga', NULL, '0410 575 205', '', 'https://www.crossfitvictus.com', 'Email', 'no', '', '', '2', 1, '2021-08-26 03:37:32', '2021-08-26 03:37:32', '', '', ''),
(843, 'Macarthur Gas Pty Ltd', '11 Lawson St, East Wagga Wagga NSW 2650', 'admin@macarthurgas.com.au', '0287863800', '', 'https://www.macarthurgas.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 03:37:46', '2021-08-26 03:37:46', '', '', ''),
(844, 'F45 Training Wagga Wagga', '80 Fitzmaurice Street, Wagga', 'waggawagga@f45training.com.au', '0409 698 813', '', 'https://www.f45training.com.au/waggawagga/home', 'Email', 'no', '', '', '2', 1, '2021-08-26 03:48:30', '2021-08-26 03:48:30', '', '', ''),
(845, '12RND Fitness Wagga Wagga', '21-25 Forsyth Street, Wagga Wagga', 'waggawagga@12round.com', '0458 501 990', '', 'https://www.12rnd.com.au/gym/WaggaWagga', 'Email', 'no', '', '', '2', 1, '2021-08-26 04:03:17', '2021-08-26 04:03:17', '', '', ''),
(846, 'Workout Wagga Gym', '50 Morgan Street, Wagga Wagga', 'sales@workoutwagga.com.au', '(02) 6921 5777', '', 'https://www.workoutwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 04:07:38', '2021-08-26 04:07:38', '', '', ''),
(847, 'HIIT Republic Wagga Wagga', '2 Baylis Street, Wagga Wagga', 'info@hiitrepublic.com.au', NULL, '', 'https://www.hiitrepublic.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 04:20:38', '2021-08-26 04:20:38', '', '', ''),
(848, 'Crown Custom Computers', '60 Baylis St, Wagga Wagga NSW 2650', 'crown.computers@outlook.com', '0269717008', '', 'https://www.crowncomputers.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-26 04:24:28', '2021-08-26 04:24:28', '', '', ''),
(849, 'BUNKR', 'Unit 6 & 7/53-55 Fernleigh Road, Turvey Park', 'info@bunkrgym.com', '0411 825 216', '', 'https://www.bunkrgym.com/', 'Email', 'no', '', '', '2', 1, '2021-08-26 04:29:39', '2021-08-26 04:29:39', '', '', ''),
(850, 'Computer DenCity', '11 Berry St, Wagga Wagga NSW 2650', NULL, '0269216866', '', 'https://www.thinktechnology.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 04:35:49', '2021-08-26 04:35:49', '', '', ''),
(851, 'In Motion Fitness', '133 Fernleigh Road, Glenfield Park', NULL, '0429 952 140', '', 'https://www.in-motion-fitness.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 05:47:16', '2021-08-26 05:47:16', '', '', ''),
(852, 'Mechanical World', '362 Edward St, Wagga Wagga NSW 2650', 'joshua@mechanicalworld.com.au', '0259425012', '', 'https://www.mechanicalworld.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 05:49:11', '2021-08-26 05:49:11', '', '', ''),
(853, 'Pure PT Fitness Studio', 'Unit 3/16 Mortimer Place, Wagga Wagga', 'pureptfitness@gmail.com', '0407 262 772', '', 'https://www.pureptfitness.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 05:50:09', '2021-08-26 05:50:09', '', '', ''),
(854, 'Chronicle: CrossFit and Athlete Development Centre', 'unit 1/57 Chaston Street, Wagga Wagga', 'chronicleadc@gmail.com', '0406 022 008', '', 'https://www.chronicleadc.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 05:53:05', '2021-08-26 05:53:05', '', '', ''),
(855, 'G & M Cochrane & Sons', '1a Dobney Ave, Wagga Wagga NSW 2650', 'riv4wd@bigpond.net.au', '0269253605', '', 'https://gmcochraneandsons.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 05:54:08', '2021-08-26 05:54:08', '', '', ''),
(856, 'Barklem Automotive & Exhausts', '62 Chaston St, Wagga Wagga NSW 2650', 'admin@barklemauto.com.au', '0269250755', '', 'https://www.barklemautomotive.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 06:00:13', '2021-08-26 06:00:13', '', '', ''),
(857, 'Empire 24hr Gym', '2/34-36 Pearson Street, Wagga Wagga', 'empiregym24@gmail.com', '02 6925 7369', '', 'https://www.empire24hrgym.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 06:05:03', '2021-08-26 06:05:03', '', '', ''),
(858, 'Ultratune', '42 Pearson St, Wagga Wagga NSW 2650', 'ultraso@ultratune.com.au', '0269253188', '', 'https://www.ultratune.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 06:05:45', '2021-08-26 06:05:45', '', '', ''),
(859, 'Fox Mobile Mechanic', 'Wagga Wagga NSW', 'info@foxmobilemechanic.com.au', '0406888369', '', 'https://www.foxmobilemechanic.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-26 06:15:16', '2021-08-26 06:15:16', '', '', ''),
(860, 'O\'Reilly Truck Repairs', '2 Schiller St, Wagga Wagga NSW 2650', 'admin@oreillytrucks.com.au', '0413476790', '', 'https://www.oreillytruckrepairs.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 06:22:04', '2021-08-26 06:22:04', '', '', ''),
(861, 'CrossFit Wagga', '43a Pearson Street, Wagga Wagga', NULL, '0423 493 465', '', 'https://www.cfwagga.com/', 'Email', 'no', '', '', '2', 1, '2021-08-26 06:24:01', '2021-08-26 06:24:01', '', '', ''),
(862, 'The Ironclad Barber', '50 Amaroo Street, Wagga Wagga', NULL, '0488 227 027', '', 'http://www.theironcladbarber.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 06:31:40', '2021-08-26 06:31:40', '', '', ''),
(863, 'Ally Barba', 'Kooringal', NULL, '0438 561 304', '', 'https://www.ally-barba.business.site/', 'Email', 'no', '', '', '2', 1, '2021-08-26 06:32:41', '2021-08-26 06:32:41', '', '', ''),
(864, 'Pallister Automotive', 'Wagga', 'webmaster@pallisterauto.com.au', '0419971857', '', 'http://www.pallisterauto.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-26 06:33:07', '2021-08-26 06:33:07', '', '', ''),
(865, 'HairPop Man Turvey Park', '44-66 Fernleigh Rd Mount Austin NSW 2650 Australia', NULL, '(02) 6925 5410', '', 'http://www.hairpopbarbershopturveypark.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 06:33:27', '2021-08-26 06:33:27', '', '', ''),
(866, 'Lulu & Kit Haircutters', '31 Fitzmaurice Street, Wagga Wagga', 'luluandkit7@icloud.com', '(02) 6925 9119', '', 'https://www.luluandkit.com/', 'Email', 'no', '', '', '2', 1, '2021-08-26 06:40:34', '2021-08-26 06:40:34', '', '', ''),
(867, 'Big Barber', '135 Baylis Street, Wagga Wagga', NULL, '(02) 6921 3809', '', 'https://www.bigbarberdelux.com/state/wagga-wagga/', 'Email', 'no', '', '', '2', 1, '2021-08-26 06:42:24', '2021-08-26 06:42:24', '', '', ''),
(868, 'Hairpop Man Baylis st', '76 Baylis St Wagga Wagga NSW 2650 Australia', NULL, '(02) 6921 3918', '', 'https://hairpopbarbershop.com/', 'Email', 'no', '', '', '2', 1, '2021-08-26 06:58:44', '2021-08-26 06:58:44', '', '', ''),
(869, 'Sirona Beauty', '27-31 Forsyth St, Wagga Wagga NSW 2650', NULL, '02 6971 8371', '', 'https://www.sironabeauty.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 07:01:11', '2021-08-26 07:01:11', '', '', ''),
(870, 'Beauty Worx', '4/56 Forsyth Street, Wagga Wagga', NULL, '(02) 6921 8751', '', 'http://www.beautyworxwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 07:02:36', '2021-08-26 07:02:36', '', '', ''),
(871, 'Ginger&Curls Hair Studio', '2/64 Forsyth Street Wagga Wagga NSW 2650 Australia', NULL, '(02) 6957 3421', '', 'https://gingercurls-hair-studio.business.site/', 'Email', 'no', '', '', '2', 1, '2021-08-26 07:03:27', '2021-08-26 07:03:27', '', '', ''),
(872, 'Irvin Day Hair & Beauty Excellence', '82 Forsyth Street, Wagga Wagga', 'hello@irvindayhair.com.au', '(02) 6921 6692', '', 'https://www.irvindayhair.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-26 07:05:18', '2021-08-26 07:05:18', '', '', ''),
(873, 'Jet Hair By Jennie', 'Australian Arcade, Suite 35, Level 2/54 Fitzmaurice Street, Wagga Wagga', NULL, '0418 254 914', '', 'https://www.jethairbyjennie.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 07:06:57', '2021-08-26 07:06:57', '', '', ''),
(874, 'The Style Bar Wagga', 'Shop 6, 84-86 Fitzmaurice St (Shop faces Gurwood St, near Cnr of Fitzmaurice St) Wagga Wagga NSW 2650', 'style@thestylebarwagga.com.au', '02 6971 0658', '', 'http://www.thestylebarwagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-26 07:20:59', '2021-08-26 07:20:59', '', '', ''),
(875, 'Batkin & Damme Smash Repairs', '3 Cheshire Street, Wagga Wagga NSW 2650', 'admin@bdsmash.net', '0269256156', '', 'https://www.bdsmash.net', 'Email', 'no', '', '', '3', 1, '2021-08-27 03:00:09', '2021-08-27 03:00:09', '', '', ''),
(876, 'Jed\'s Heavy Vehicle Maintenance', '3/ 385 Edward St, Wagga Wagga NSW 2650', 'admin@jhvm.com.au', '0269251773', '', 'https://www.jhvm.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-27 03:09:47', '2021-08-27 03:09:47', '', '', ''),
(877, 'Uneke Lounge', '140 Fitzmaurice St, Wagga Wagga NSW 2650', 'info@unekelounge.com.au', '0269258143', '', 'https://www.unekelounge.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-27 03:40:30', '2021-08-27 03:40:30', '', '', ''),
(878, 'Hogs Breath Cafe', '180 Baylis St, Wagga Wagga NSW 2650', 'bosshog@hogsbreath.com.au', '0269717333', '', 'https://www.hogsbreath.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-27 03:46:55', '2021-08-27 03:46:55', '', '', ''),
(879, 'Pearl City Chinese Restaurant', 'Dobbs St and Kincaid Street, Wagga Wagga NSW 2650', 'theclub@waggarsl.com.au', '0269237214', '', 'https://www.facebook.com/pearlchineserestaurantwagga', 'Email', 'no', '', '', '3', 1, '2021-08-27 04:11:10', '2021-08-27 04:11:10', '', '', ''),
(880, 'Giuseppe\'s Restaurant & Bar Wagga Wagga', '31 Kincaid St, Wagga Wagga NSW 2650', 'info@giuseppes.com.au', '0269218800', '', 'http://www.giuseppes.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-27 04:17:48', '2021-08-27 04:17:48', '', '', ''),
(881, 'Thirsty Crow Brewery', 'Kincaid St, Wagga Wagga NSW 2650', 'info@thirstycrow.com.au', '0269217470', '', 'https://www.thirstycrow.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-27 04:31:31', '2021-08-27 04:31:31', '', '', ''),
(882, 'Brown Fox Salon', '79 Fox St, Wagga Wagga NSW 2650', 'brownfoxsalon@gmail.com', '0401568401', '', 'https://www.facebook.com/brownfoxsalon', 'Email', 'no', '', '', '3', 1, '2021-08-27 05:49:40', '2021-08-27 05:49:40', '', '', ''),
(883, 'Ball&Chain Barber Co', 'Boorooma, NSW 2650', 'samantha.waters@yahoo.com.au', '0421232477', '', 'https://ballandchainbarberco.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-27 05:57:55', '2021-08-27 05:57:55', '', '', ''),
(884, 'Riverina Salon Supplies', '132 Fitzmaurice St, Wagga Wagga NSW 2650', 'riverinahairandbeautysupplies@gmail.com', '0269214072', '', 'https://www.facebook.com/riverinasalonsupplies', 'Email', 'no', '', '', '3', 1, '2021-08-27 06:06:48', '2021-08-27 06:06:48', '', '', ''),
(885, 'Union Club Hotel', '122 Baylis St, Wagga Wagga NSW 2650', NULL, '0269212236', '', 'https://unionhotelwagga.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-27 06:23:05', '2021-08-27 06:23:05', '', '', ''),
(886, 'Blooms The Chemist', 'Wagga Wagga Marketplace Shop 61 Forsyth St, Wagga Wagga NSW 2650', 'help@blooms.net.au', '0269212101', '', 'https://www.bloomsthechemist.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-27 06:47:18', '2021-08-27 06:47:18', '', '', ''),
(887, 'Michael O\'Reilly Pharmacy', '67 Baylis St, Wagga Wagga NSW 2650', 'pharmacy@morchemist.com.au', '0269213315', '', 'https://www.oreillypharmacy.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-27 07:00:06', '2021-08-27 07:00:06', '', '', ''),
(888, 'Actrol', '57 Dobney Ave, Ashmont NSW 2650', 'enquiries@actrol.com.au', '0259426070', '', 'https://www.actrol.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-27 07:21:31', '2021-08-27 07:21:31', '', '', ''),
(889, 'Beach Avenue Wholesalers Pty Ltd', '38-42 Ordish Rd, Dandenong South VIC 3175', 'gerhard.patzold@baw.com.au', '0387911400', '', 'https://www.baw.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-27 07:41:41', '2021-08-27 07:41:41', '', '', ''),
(890, 'MW Wine Auctions', '125 Cambridge St, Collingwood VIC 3066', 'info@mwwines.com.au', '0432068164', '', 'https://www.mwwineauctions.com', 'Email', 'no', '', '', '3', 1, '2021-08-27 07:49:30', '2021-08-27 07:49:30', '', '', ''),
(891, 'Italian Wine Connection', 'Lara, VIC 3212', 'info@italianwineconnection.com.au', '0410296588', '', 'https://www.italianwineconnection.com.au/', 'Email', 'no', '', '', '3', 1, '2021-08-27 07:57:15', '2021-08-27 07:57:15', '', '', ''),
(892, 'Beauty and Health Focus beauty spa salon wagga', '18 Copland Street, Wagga Wagga', 'info@beautyandhealthfocus.com.au', '0408 259 336', '', 'https://www.beautyandhealthfocus.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 01:25:54', '2021-08-28 01:25:54', '', '', ''),
(893, 'Belisi Farmstay Cottages', '1103 Oura Road, Wagga Wagga, NSW, 2650', 'info@belisi.com.au', '0421 277 717', '', 'https://www.belisi.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 01:36:02', '2021-08-28 01:36:02', '', '', ''),
(894, 'BIG4 Wagga Wagga Holiday Park', '93 Hammond Avenue, East Wagga Wagga', 'holiday@big4wagga.com.au', '(02) 6921 4287', '', 'https://www.big4wagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 01:39:35', '2021-08-28 01:39:35', '', '', ''),
(895, 'Best Western Plus Bolton on The Park', '59/63 Tarcutta Street, Wagga Wagga', 'reception@boltononthepark.com.au', '(02) 6921 6222', '', 'https://www.boltononthepark.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 01:42:09', '2021-08-28 01:42:09', '', '', ''),
(896, 'Cotton On Kids', 'Wagga Wagga', NULL, '(02) 6921 6617', '', 'https://www.cottonon.com/AU/cottononkids/', 'Email', 'no', '', '', '2', 1, '2021-08-28 01:44:59', '2021-08-28 01:44:59', '', '', ''),
(897, 'Jay Jays', 'Shop 32 Stuart Mall, 33 Baylis Street, Wagga Wagga', NULL, '(02) 6925 8537', '', 'https://www.jayjays.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 01:51:36', '2021-08-28 01:51:36', '', '', ''),
(898, 'FOX and CO HOTELS', '44 Kincaid Street, Wagga Wagga', 'office@foxandcohotels.com.au', '(02) 5908 1321', '', 'http://www.foxandcohotels.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 01:54:33', '2021-08-28 01:54:33', '', '', ''),
(899, 'Robyn\'s Beauty On The Go', '92 Fitzmaurice St, Wagga Wagga NSW 2650', 'robynsbeauty17@bigpond.com', '0428505352', '', 'http://www.robynsbeauty.com.au', 'Email', 'no', '', '', '3', 1, '2021-08-28 02:06:30', '2021-08-28 02:06:30', '', '', ''),
(900, 'Riverina Health Psychology', '4 Baylis Street, Wagga Wagga', NULL, '(02) 6921 4053', '', 'http://www.rivpsych.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:20:21', '2021-08-28 02:20:21', '', '', ''),
(901, 'Murrumbidgee Primary Health Network', '1/185 Morgan Street, Wagga Wagga', NULL, '(02) 6923 3100', '', 'https://www.mphn.org.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:26:51', '2021-08-28 02:26:51', '', '', ''),
(902, 'Wagga Wagga Base Hospital', '260 Edward Street Wagga Wagga NSW 2650', NULL, '(02) 5943 1000', '', 'https://www.service.nsw.gov.au/nswgovdirectory/wagga-wagga-health-service', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:27:41', '2021-08-28 02:27:41', '', '', ''),
(903, 'Riverina Orthopaedics', '9 Gormly Avenue  /  PO Box 6008 Wagga Wagga NSW 2650', 'admin@rivortho.com.au', '02 6925 2070', '', 'https://www.riverinaorthopaedics.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:29:39', '2021-08-28 02:29:39', '', '', ''),
(904, 'Calvary Riverina Hospital Surgicentre', '329 Edward Street, Wagga Wagga', NULL, '(02) 6925 4700', '', 'https://www.calvarycare.org.au/riverina-private-hospital/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:32:09', '2021-08-28 02:32:09', '', '', ''),
(905, 'Regional Imaging', '36 Hardy Avenue, Wagga Wagga', NULL, '(02) 6932 1300', '', 'https://www.i-med.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:33:36', '2021-08-28 02:33:36', '', '', ''),
(906, 'Dr. Rehana Lulania (Specialist Obs & Gyn)', 'P.O. Box 2233 Wagga Wagga, NSW 2650', 'mail@rehanalulania.com.au', '(02) 6925 7512', '', 'https://www.rehanalulania.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:36:27', '2021-08-28 02:36:27', '', '', ''),
(907, 'The Riverina Anglican College', 'Farrer Road, Wagga Wagga', 'office@trac.nsw.edu.au', '02 6933 1811', '', 'http://www.trac.nsw.edu.au', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:41:09', '2021-08-28 02:41:09', '', '', ''),
(908, 'Mater Dei Primary School', '63 Gregadoo Road WAGGA WAGGA', 'mdp-info@ww.catholic.edu.au', '(02) 6926 2060', '', 'http://www.web.mdpww.catholic.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:46:02', '2021-08-28 02:46:02', '', '', ''),
(909, 'Mater Dei Catholic College', 'Plunkett Drive, Lake Albert', NULL, '(02) 6923 8300', '', 'https://www.web.mdccww.catholic.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:47:24', '2021-08-28 02:47:24', '', '', ''),
(910, 'Lutheran School Wagga Wagga', 'Address  Tamar Drive, Wagga Wagga NSW 2650', 'admin@lpsww.nsw.edu.au', '02 6923 8100', '', 'https://www.lpsww.nsw.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:49:13', '2021-08-28 02:49:13', '', '', ''),
(911, 'Mount Austin High School', 'Leavenworth Drive, Tolland', NULL, '(02) 6925 2801', '', 'https://www.web1.mtaustin-h.schools.nsw.edu.au/moodle/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:50:45', '2021-08-28 02:50:45', '', '', ''),
(912, 'OneSchool Global Wagga Wagga Campus', '35 Bruce Street, Wagga Wagga', NULL, '(02) 6931 4555', '', 'https://www.oneschoolglobal.com/campus/australia/wagga-wagga/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:52:11', '2021-08-28 02:52:11', '', '', ''),
(913, 'Sacred Heart CatholicPrimary School', 'Lake Albert Road, Kooringal', 'shk-info@ww.catholic.edu.au', '(02) 6922 6900', '', 'http://www.web.shkww.catholic.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:56:13', '2021-08-28 02:56:13', '', '', ''),
(914, 'Sturt Public School', 'White Avenue, Wagga Wagga', 'sturt-p.school@det.nsw.edu.au', '(02) 6922 5087', '', 'http://www.sturt-p.schools.nsw.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 02:58:30', '2021-08-28 02:58:30', '', '', ''),
(915, 'Wagga Wagga Christian College', '401 Kooringal Road, Kooringal', 'online_enquiry@wwcc.nsw.edu.au', '(02) 6923 8888', '', 'https://www.wwcc.nsw.edu.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:00:30', '2021-08-28 03:00:30', '', '', ''),
(916, 'Turvey Park Public School', '25/31 Halloran Street, Turvey Park', 'turveypark-p.school@det.nsw.edu.au', '(02) 6925 2589', '', 'https://www.turveypark-p.schools.nsw.gov.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:10:12', '2021-08-28 03:10:12', '', '', ''),
(917, 'JDC Lawyers', '89 Balmoral Crescent, Lake Albert', 'john@jdclawyers.com.au', '0439 626 319', '', 'https://www.jdclawyers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:20:59', '2021-08-28 03:20:59', '', '', ''),
(918, 'Saggers Law', '18A Chaston Street, Wagga Wagga', NULL, '(02) 6971 0336', '', 'https://www.saggerslaw.com/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:25:37', '2021-08-28 03:25:37', '', '', ''),
(919, 'RSG Lawyers Wagga Wagga', '53 Tompson Street, Wagga Wagga', 'admin@rsglaw.com.au', '(02) 6921 7758', '', 'https://www.rsglaw.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:27:11', '2021-08-28 03:27:11', '', '', ''),
(920, 'Regional Business Lawyers', 'Suite 8/152 Fitzmaurice Street, Wagga Wagga', 'gryan@regionalbusinesslaw.com.au', '0429 380 398', '', 'https://www.regionalbusinesslaw.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:31:17', '2021-08-28 03:31:17', '', '', ''),
(921, 'Denniston & Day', '89 Fitzmaurice Street, Wagga Wagga', NULL, '(02) 6921 2886', '', 'https://www.dennistonday.com/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:32:02', '2021-08-28 03:32:02', '', '', ''),
(922, 'Barron Law', '88 Fitzmaurice Street, Wagga Wagga', 'dave@barronlaw.com.au', '(02) 6971 0335', '', 'http://www.barronlaw.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:32:58', '2021-08-28 03:32:58', '', '', ''),
(923, 'Commins Hendriks Solicitors', '23 Gurwood Street, Wagga Wagga', NULL, '(02) 6933 6900', '', 'https://www.comminshendriks.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:33:43', '2021-08-28 03:33:43', '', '', ''),
(924, 'Debbie Flynn and Associates', '35A Gurwood Street Wagga Wagga NSW 2650', 'reception@debbieflynn.com.au', '(02) 6921 1060', '', 'https://www.debbieflynn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 03:38:28', '2021-08-28 03:38:28', '', '', ''),
(925, 'Bower Wood Lawyers', '57 Gurwood Street, Wagga Wagga', 'contact@bowerwood.com.au', '(02) 6936 6940', '', 'https://www.bowerwood.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 04:00:39', '2021-08-28 04:00:39', '', '', ''),
(926, 'Kent McRae Lawyers', '39-41 Trail Street, Wagga Wagga', NULL, '(02) 6931 0600', '', 'https://www.kentmcrae.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 04:20:50', '2021-08-28 04:20:50', '', '', ''),
(927, 'Spring Kidz Early Learning Centre', '10 Burrundulla Road, Bourkelands', 'info@springkidz.com.au', '(02) 6922 5474', '', 'https://www.springkidz.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 04:26:15', '2021-08-28 04:26:15', '', '', ''),
(928, 'Goodstart Early Learning Wagga Wagga - Lake Albert Road', '270/274 Lake Albert Road, Wagga Wagga', 'media@goodstart.org.au', NULL, '', 'https://www.goodstart.org.au/centres/wagga-wagga-lake-albert-road?utm_source=googleplaces&utm_medium=organic&utm_campaign=Goodstart_Early_Learning_Wagga_Wagga_-_Lake_Albert_Road&utm_content=1800222543', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:22:31', '2021-08-28 05:22:31', '', '', ''),
(929, 'Riverina Kids Early Learning Centre', '64 Lingiari Drive, Lloyd', 'info@riverinakidselc.com.au', '(02) 5925 5455', '', 'https://www.riverinakidselc.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:24:41', '2021-08-28 05:24:41', '', '', ''),
(930, 'Town & Country Childrens Centre', '509 Kooringal Road, East Wagga Wagga', 'townandcountrycc@bigpond.com', '(02) 6922 6785', '', 'https://www.townandcountrycc.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:26:38', '2021-08-28 05:26:38', '', '', ''),
(931, 'PE4K Childcare Ashmont', '117 Ashmont Avenue, Wagga Wagga', 'ashmont@pe4k.com.au', '(02) 6971 2111', '', 'https://www.pe4k.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:28:47', '2021-08-28 05:28:47', '', '', ''),
(932, 'KU Kookaburra Preschool', '82 Coleman Street, Wagga Wagga', NULL, '(02) 6925 2669', '', 'https://www.ku.com.au/childcare/centres/kukookaburra?utm_source=google&utm_medium=organic&utm_campaign=Google%20My%20Business%20Page', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:30:19', '2021-08-28 05:30:19', '', '', ''),
(933, 'Possums Playground Occasional Child Care Centre', '7 Forsyth Street, Wagga Wagga, NSW 2650', 'possumsplayground@bigpond.com', '02 6921 6808', '', 'https://www.possumschildcare.org.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:32:28', '2021-08-28 05:32:28', '', '', ''),
(934, 'Saint Luke’s Preschool', '6-12 Church Street Wagga Wagga NSW 2650', 'office@waggaanglican.org.au', '02 6921 2574', '', 'https://www.waggaanglican.org.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:34:26', '2021-08-28 05:34:26', '', '', ''),
(935, 'Shaw Street Children’s Centre', '6 Kent Crescent, Wagga Wagga', NULL, '(02) 6921 2044', '', 'https://www.shawstreetchildrenscentre.org/', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:35:22', '2021-08-28 05:35:22', '', '', ''),
(936, 'Milestones Early Learning Wagga Wagga', '58 Evans Street, Wagga Wagga, NSW, 2650', NULL, '(02) 6921 1686', '', 'https://www.waggawagga.milestones.com.au/?utm_source=google&utm_medium=local', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:36:20', '2021-08-28 05:36:20', '', '', ''),
(937, 'Angel\'s Paradise Adaptive Montessori - Wagga', '33 Cootamundra Boulevard Gobbagombalin  NSW 2650', 'wagga@angelsparadise.com.au', '02 6932 0146', '', 'https://www.angelsparadise.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:39:08', '2021-08-28 05:39:08', '', '', ''),
(938, 'Remedial Physical Solutions', 'Lake Village Shopping centre, Shop 14, Lake Albert Shopping Centre, 39 Gregory Crescent, Lake Albert', NULL, '0417 370 977', '', 'https://www.remedialphysicalsolutions.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 05:58:55', '2021-08-28 05:58:55', '', '', ''),
(939, 'Natural Health and Healing Centre', '1 Karoom Drive, Glenfield Park', 'nhnhc@hotmail.com', '(02) 6971 2402', '', 'https://www.nhnhc.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 06:00:32', '2021-08-28 06:00:32', '', '', ''),
(940, 'Massage Wagga Wagga', '66/70 Coleman Street, Wagga Wagga', NULL, '0418 422 329', '', 'http://www.massagewaggawagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 06:02:23', '2021-08-28 06:02:23', '', '', ''),
(941, 'Tui Thai Massage & Spa', '158 Morgan Street, Wagga Wagga', NULL, '0434 475 239', '', 'https://wwwtuimassage.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-28 06:03:48', '2021-08-28 06:03:48', '', '', ''),
(942, 'Ella Baché Wagga', '82 Forsyth Street Wagga Wagga NSW 2650', 'ellabachewagga@gmail.com', '(02) 6921 7888', '', 'https://www.ellabache.com.au/pages/waggawagga', 'Email', 'no', '', '', '2', 1, '2021-08-28 06:07:32', '2021-08-28 06:07:32', '', '', ''),
(943, 'One fine day thai massage', '192 Baylis Street Wagga Wagga NSW 2650 Australia', NULL, '(02) 5908 3148', '', 'https://www.onefinedaythaimassage.business.site/', 'Email', 'no', '', '', '2', 1, '2021-08-28 06:08:53', '2021-08-28 06:08:53', '', '', ''),
(944, 'Golden Roast Wagga Wagga', 'Rhonda & Mark Parr 109 Balleroo Cres Wagga Wagga NSW 2650 Australia', 'wagga@goldenroast.com.au', '(02) 6971 2036', '', 'https://www.goldenroast.com.au/region/waggawagga', 'Email', 'no', '', '', '2', 1, '2021-08-28 07:28:45', '2021-08-28 07:28:45', '', '', ''),
(945, 'Wagga’s Woodfired Wagon', 'Leavenworth Drive, Mount Austin', 'INFO@WOODFIREDWAGON.COM.AU', '0450 797 751', '', 'https://www.woodfiredwagon.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 07:30:27', '2021-08-28 07:30:27', '', '', ''),
(946, 'South West Catering Care', '4 Norton Street, Wagga Wagga', NULL, '02 6931 7200', '', 'https://www.cateringcare.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 07:31:24', '2021-08-28 07:31:24', '', '', ''),
(947, 'Wagga Catering Equipment Sales', '34 Pearson Street, Wagga Wagga', 'info@waggacatering.com.au', '(02) 6925 1115', '', 'http://www.waggacatering.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-28 07:33:27', '2021-08-28 07:33:27', '', '', ''),
(948, 'Red Rooster', '345 Edward Street  Wagga Wagga  2650, NSW', NULL, '(02) 7923 5748', '', 'https://www.redrooster.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 02:32:28', '2021-08-31 02:32:28', '', '', ''),
(949, 'Caterworld NSW', '195 Morgan Street, Wagga Wagga', NULL, '(02) 6921 4430', '', 'https://www.yellowpages.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 02:39:06', '2021-08-31 02:39:06', '', '', ''),
(950, 'Zambrero Wagga Wagga', 'Shop 3/69 Baylis Street, Wagga Wagga', NULL, '(02) 6971 7746', '', 'https://www.zambrero.com.au/?utm_source=google&utm_medium=organic&utm_campaign=gmb-listing', 'Email', 'no', '', '', '2', 1, '2021-08-31 02:40:38', '2021-08-31 02:40:38', '', '', ''),
(951, 'Grill\'d Wagga Wagga', 'Market Place, Shop 1/87 Baylis Street, Wagga Wagga', NULL, '(02) 6971 8338', '', 'https://www.grilld.com.au/restaurants/new-south-wales/wagga-wagga/wagga-wagga#GoogleLocal', 'Email', 'no', '', '', '2', 1, '2021-08-31 02:41:28', '2021-08-31 02:41:28', '', '', ''),
(952, 'Melba\'s Bakehouse & Eatery', '214 Baylis Street  Wagga Wagga 2650', NULL, '0439 736 019', '', 'https://www.melbasbakehouse.com/', 'Email', 'no', '', '', '2', 1, '2021-08-31 02:42:45', '2021-08-31 02:42:45', '', '', ''),
(953, 'Harans Patisserie', '32 Fitzmaurice Street, Wagga Wagga', NULL, '(02) 6931 7777', '', 'https://haranspatisserie.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:25:52', '2021-08-31 03:25:52', '', '', ''),
(954, 'Knights Deli', '183 Fitzmaurice Street, Wagga Wagga', NULL, '(02) 6921 3725', '', 'https://www.knightsriverina.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:27:57', '2021-08-31 03:27:57', '', '', ''),
(955, 'Wagga Workwear', '383 Edward Street, Wagga Wagga', NULL, '(02) 6925 2699', '', 'https://www.waggaworkwear.com.au/Default.asp', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:34:50', '2021-08-31 03:34:50', '', '', ''),
(956, 'Active Foot Clinic Podiatry', '135 Edward Street, Wagga Wagga', NULL, '(02) 6925 8637', '', 'https://activefootclinic.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:35:36', '2021-08-31 03:35:36', '', '', ''),
(957, 'rebel Wagga Wagga', '29 Baylis Street, Wagga Wagga', NULL, '(02) 6971 8542', '', 'https://www.rebelsport.com.au/stores/details?sid=rebel-wagga-wagga', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:36:30', '2021-08-31 03:36:30', '', '', ''),
(958, 'R.M.Williams Wagga Wagga', '65 Baylis Street, Wagga Wagga', NULL, '(02) 6921 0788', '', 'https://www.rmwilliams.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:37:56', '2021-08-31 03:37:56', '', '', ''),
(959, 'worklocker wagga', '68 Baylis Street, Wagga Wagga', NULL, '(02) 6921 3575', '', 'https://www.worklocker.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:38:27', '2021-08-31 03:38:27', '', '', ''),
(960, 'Payless Shoes', 'Wagga Wagga Market Place, Shop 37/87 Baylis Street, Wagga Wagga', NULL, '(02) 6971 9562', '', 'https://www.paylessshoes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:39:30', '2021-08-31 03:39:30', '', '', ''),
(961, 'Skechers Wagga Wagga', 'Market Place, Shop T65/87 Baylis Street, Wagga Wagga', NULL, '(02) 6061 1087', '', 'https://www.skechers.com.au/?utm_source=google&utm_medium=organic&utm_campaign=local', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:40:06', '2021-08-31 03:40:06', '', '', ''),
(962, 'Tarocash Wagga Wagga', 'Marketplace, Shop 30A/87 Baylis Street, Wagga Wagga', NULL, '(02) 7923 5688', '', 'https://www.tarocash.com.au/au/?utm_source=google&utm_medium=organic&utm_campaign=gmb', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:40:39', '2021-08-31 03:40:39', '', '', ''),
(963, 'Evans Shoes Wagga', '81 Baylis Street, Wagga Wagga', NULL, '(02) 6971 8611', '', 'https://www.evansshoes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:41:24', '2021-08-31 03:41:24', '', '', ''),
(964, 'The Athlete\'s Foot', 'Shop 5/109 Baylis Street, Wagga Wagga', NULL, '(02) 6921 8222', '', 'https://www.theathletesfoot.com.au/?utm_source=google&utm_medium=organic&utm_campaign=local', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:42:00', '2021-08-31 03:42:00', '', '', ''),
(965, 'Ninja & Jhi', '120 Baylis Street, Wagga Wagga', NULL, '(02) 6931 9896', '', 'https://www.ninjaandjhi.com/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:42:36', '2021-08-31 03:42:36', '', '', ''),
(966, 'All Things Country Wagga Wagga', '128 Baylis Street, Wagga Wagga', NULL, '(02) 6921 3991', '', 'https://allthingscountrynsw.com/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:43:11', '2021-08-31 03:43:11', '', '', ''),
(967, 'Spendless Shoes', 'Shop 39 / A/135-143 Baylis Street, Wagga Wagga', NULL, '(02) 6921 7862', '', 'https://www.spendless.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:43:59', '2021-08-31 03:43:59', '', '', ''),
(968, 'Witchery Wagga Wagga', '153 Baylis Street, Wagga Wagga', NULL, '(02) 6931 0073', '', 'https://www.witchery.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:45:17', '2021-08-31 03:45:17', '', '', ''),
(969, 'Booted Out', 'Suite A/189 Baylis Street, Wagga Wagga', NULL, '(02) 6921 0766', '', 'https://www.bootedout.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:46:12', '2021-08-31 03:46:12', '', '', ''),
(970, 'Joan\'s Shoes', '195 Baylis Street, Wagga Wagga', NULL, '(02) 6921 7575', '', 'https://www.joansshoes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 03:46:47', '2021-08-31 03:46:47', '', '', ''),
(971, 'Blowes Clothing', '66 Baylis Street, Wagga Wagga', NULL, '(02) 5908 4295', '', 'https://www.blowesclothing.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 04:42:06', '2021-08-31 04:42:06', '', '', ''),
(972, 'Cobbler rd - Shoe Repairs', '78 Baylis Street, Wagga Wagga', NULL, '(02) 6921 2882', '', 'https://cobblerrd.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 04:42:59', '2021-08-31 04:42:59', '', '', ''),
(974, 'BIG W Wagga Wagga', 'Morgan St &, Berry Street, Wagga Wagga', NULL, '(02) 6932 5100', '', 'https://www.bigw.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 04:48:47', '2021-08-31 04:48:47', '', '', ''),
(975, 'Adairs Wagga Wagga - Call & Collect Only', 'The Strand, Shop 2/109 Baylis Street, Wagga Wagga', NULL, '(02) 5963 2620', '', 'https://www.adairs.com.au/?utm_source=GMB&utm_medium=organic&utm_campaign=adairs-wagga-wagga', 'Email', 'no', '', '', '2', 1, '2021-08-31 04:55:17', '2021-08-31 04:55:17', '', '', ''),
(976, 'The Reject Shop', 'Shop 1, Wagga Wagga Marketplace, 109 Bayliss Street  Wagga Wagga NSW 2650', NULL, '(02) 6921 9427', '', 'https://www.rejectshop.com.au/stores?q=2242', 'Email', 'no', '', '', '2', 1, '2021-08-31 04:57:26', '2021-08-31 04:57:26', '', '', ''),
(977, 'Kathmandu', '110 Baylis Street, Wagga Wagga', 'support@kathmandu.com.au', '(02) 6971 9500', '', 'https://www.kathmandu.com.au/?utm_source=google&utm_medium=organic&utm_campaign=gmb&utm_content=291', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:00:30', '2021-08-31 05:00:30', '', '', ''),
(978, 'Aussie Disposals Wagga Wagga', '2/153 Baylis Street, Wagga Wagga', NULL, '(02) 6921 6300', '', 'http://www.aussiedisposals.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:19:22', '2021-08-31 05:19:22', '', '', ''),
(979, 'ISHKA Wagga Wagga', '158 Baylis Street, Wagga Wagga', NULL, '(02) 6925 8850', '', 'https://ishka.com.au/password?customer_posted=true', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:25:11', '2021-08-31 05:25:11', '', '', ''),
(980, 'Best&Less Wagga Wagga', '170 Baylis Street, Wagga Wagga', NULL, '(02) 6921 1092', '', 'https://www.bestandless.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:26:31', '2021-08-31 05:26:31', '', '', ''),
(981, 'Confetti Emporium', '194 Baylis Street Wagga Wagga NSW 2650', 'confettiwagga@bigpond.com', '02 6971 9208', '', 'https://www.confettiemporium.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:28:21', '2021-08-31 05:28:21', '', '', ''),
(982, 'CoolDrive Auto Parts - Wagga Wagga', '1/95 Copland Street, East Wagga Wagga', 'admin@cooldrive.com.au', '(02) 6925 2600', '', 'http://www.ishop.cooldrive.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:41:30', '2021-08-31 05:41:30', '', '', ''),
(983, 'Vintage Racing Services', '66 Hammond Avenue, Wagga Wagga', NULL, '0412 694 408', '', 'http://www.vintageracingservices.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:45:35', '2021-08-31 05:45:35', '', '', ''),
(984, 'TJM Wagga Wagga , Riverina 4WD Wagga Wagga', '1 Dobney Avenue, Wagga Wagga NSW 2650', 'rodney@riverina4wd.com.au', '02 6925 4770', '', 'https://www.riverina4wd.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:51:32', '2021-08-31 05:51:32', '', '', ''),
(985, 'Noel\'s Auto Parts / Noel Comerford\'s Auto Parts Wagga Wagga', '366 Edward Street, Wagga Wagga NSW 2650', 'shane@noelsautoparts.com.au', '02 6925 3777', '', 'http://www.noelsautoparts.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:56:21', '2021-08-31 05:56:21', '', '', ''),
(986, 'Pedders Suspension Wagga Wagga', '1/42 Pearson Street, Wagga Wagga', 'albury@pedders.com.au', '(02) 6925 0655', '', 'https://www.pedders.com.au/store/au/nsw/', 'Email', 'no', '', '', '2', 1, '2021-08-31 05:58:22', '2021-08-31 05:58:22', '', '', ''),
(987, 'Car & Truck Service & Parts Wagga Motors', '65 Chaston Street, Wagga Wagga', NULL, '(02) 6933 0100', '', 'https://www.waggamotors.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 06:09:45', '2021-08-31 06:09:45', '', '', ''),
(988, 'Ashdown-Ingram Wagga Wagga', '1/12 Mortimer Place, Wagga Wagga', NULL, '(02) 6925 526', '', 'https://www.ashdown-ingram.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 06:17:17', '2021-08-31 06:17:17', '', '', ''),
(989, 'Bromac Engineering Supplies', '142 Hammond Avenue, Wagga Wagga', 'sales@bromacengineering.com.au', '(02) 6931 8500', '', 'https://www.bromacengineeringsupplies.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 06:38:24', '2021-08-31 06:38:24', '', '', ''),
(990, 'United Fasteners Wagga Wagga', '3 Ball Place Unit 2 Wagga Wagga NSW 2650', 'wagga@unitedfasteners.com.au', '02 9131 3333', '', 'https://www.unitedfasteners.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-31 06:42:28', '2021-08-31 06:42:28', '', '', ''),
(991, 'Viewco', '11 Jones Street, East Wagga Wagga', 'service@viewcoglass.com', '02 6921 5288', '', 'https://www.viewco.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-31 06:48:11', '2021-08-31 06:48:11', '', '', ''),
(992, 'Beaumont Tiles', '44 Hammond Avenue, Wagga Wagga', 'wagga1@tile.com.au', '(02) 6931 9500', '', 'https://www.beaumont-tiles.com.au/wagga-wagga', 'Email', 'no', '', '', '2', 1, '2021-08-31 06:59:25', '2021-08-31 06:59:25', '', '', ''),
(993, 'Reece Plumbing', '8 Nagle Street, East Wagga Wagga', NULL, '(02) 6937 9910', '', 'https://www.reece.com.au', 'Email', 'no', '', '', '2', 1, '2021-08-31 07:00:15', '2021-08-31 07:00:15', '', '', ''),
(994, 'Jaycar Electronics', 'Unit 2/31-35 Hammond Avenue, East Wagga Wagga', NULL, '(02) 6931 9333', '', 'https://www.jaycar.com.au/', 'Email', 'no', '', '', '2', 1, '2021-08-31 07:01:26', '2021-08-31 07:01:26', '', '', ''),
(995, 'Fantastic Furniture (Click & Collect Only)', '7-23 Hammond Avenue, , Wagga Wagga, New South Wales, 2650', NULL, '0269218199', '', 'https://www.fantasticfurniture.com.au/store-finder/store/Wagga%20Wagga?utm_source=gmb&utm_medium=organic&utm_campaign=east%20wagga_&utm_content=', 'Email', 'no', '', '', '2', 1, '2021-08-31 07:07:22', '2021-08-31 07:07:22', '', '', ''),
(996, 'Gasweld Tools', '75 Copland Street, East Wagga Wagga', NULL, '(02) 6931 9415', '', 'https://www.gasweld.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 02:39:38', '2021-09-01 02:39:38', '', '', ''),
(997, 'Riverina Safes & Locks', '13 Berry Street, Wagga Wagga', 'info@riverinasafesandlocks.com.au', '(02) 6921 3517', '', 'https://www.safesandlocks.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 02:46:05', '2021-09-01 02:46:05', '', '', ''),
(998, 'Hudson Home Timber & Hardware', '20-26 Chaston Street, Wagga Wagga', NULL, '(02) 6933 0200', '', 'https://www.homehardware.com.au/stores/wagga-wagga-riverina-co-operative-society-351437', 'Email', 'no', '', '', '2', 1, '2021-09-01 02:51:24', '2021-09-01 02:51:24', '', '', ''),
(999, 'Konnect Fastening Systems', '9 Dobney Avenue, Wagga Wagga', 'support@konnectshop.com', '(02) 6925 6700', '', 'https://www.konnectfasteningsystems.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 02:53:48', '2021-09-01 02:53:48', '', '', ''),
(1000, 'Haymes Paint Shop Wagga Wagga', '18A Dobney Avenue, Wagga Wagga', NULL, '(02) 5971 1220', '', 'https://www.haymespaint.com.au/store/haymes-paint-shop-Wagga-Wagga', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:02:37', '2021-09-01 03:02:37', '', '', ''),
(1001, 'Brands Building & Industrial Supplies', '13 Mortimer Place  Wagga Wagga   NSW 2650', 'salesG@BRANDSbis.com.au', '02 6925 5966', '', 'https://www.brandsbis.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:11:04', '2021-09-01 03:11:04', '', '', ''),
(1002, 'Dahlsens Wagga Wagga', '55 Dobney Avenue, Ashmont', NULL, '(02) 5942 8500', '', 'https://www.dahlsens.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:12:32', '2021-09-01 03:12:32', '', '', ''),
(1003, 'AllGlass Wagga', '133 Fernleigh Rd, Wagga Wagga', 'sales@allglasswagga.com.au', '02 6931 4477', '', 'https://www.allglasswagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:14:36', '2021-09-01 03:14:36', '', '', ''),
(1004, 'Wagga Wagga Boat Club', 'Plumpton Road, Wagga Wagga', 'waggawaggaboatclub@bigpond.com', '02) 6926 2300', '', 'https://www.waggawaggaboatclub.com', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:25:03', '2021-09-01 03:25:03', '', '', ''),
(1005, 'Golden Recipes', 'Edward Street, Wagga Wagga NSW 2650', NULL, '(02) 6925 2586', '', 'https://www.goldenrecipes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:27:34', '2021-09-01 03:27:34', '', '', ''),
(1006, 'Kung Fu Dumplings', '10 Gurwood Street, Wagga Wagga', NULL, '(02) 5908 3699', '', 'https://kungfudumplings.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:29:22', '2021-09-01 03:29:22', '', '', ''),
(1007, 'Tammy\'s Thai Kitchen', 'Kooringal Mall, 269 Lake Albert Road, Kooringal', 'info@tammysthaikitchen.com.au', '6921 3004', '', 'https://tammysthaikitchen.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:32:28', '2021-09-01 03:32:28', '', '', ''),
(1008, 'Roll VIET cafe and restaurant', '1/123 Baylis Street Wagga Wagga NSW 2650 Australia', NULL, '0451 102 610', '', 'https://www.roll-viet-cafe-and-restaurant.business.site', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:34:10', '2021-09-01 03:34:10', '', '', ''),
(1009, 'Namaste Wagga Wagga', '5/345  Edward St, Wagga Wagga, 2650 NSW', NULL, '02 6900 1269', '', 'https://www.namastewaggawagga.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:35:24', '2021-09-01 03:35:24', '', '', ''),
(1010, 'Fitz Cafe', '84 – 86 Fitzmaurice St, Wagga Wagga NSW 2650', NULL, '0259 083 436', '', 'https://www.fitzcafe.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:41:05', '2021-09-01 03:41:05', '', '', ''),
(1011, 'Giuseppe\'s Restaurant & Bar', '31 Kincaid St, Wagga Wagga', NULL, '(02) 6921 8800', '', 'http://www.giuseppes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:42:16', '2021-09-01 03:42:16', '', '', ''),
(1012, 'Magpies Nest Restaurant', 'Cnr Old Narrandera & Pine Gully Roads Wagga Wagga NSW', 'hello@magpiesnestwagga.com', '(02) 6933 1523', '', 'https://www.magpiesnestwagga.com', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:45:07', '2021-09-01 03:45:07', '', '', ''),
(1013, 'Sushia Wagga Wagga', '12 Rider Boulevard Rhodes NSW 2138', 'info@sushia.com.au', '0412 043 441', '', 'http://www.sushia.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 03:57:27', '2021-09-01 03:57:27', '', '', ''),
(1014, 'Muffin Break Wagga Wagga', '135 Baylis Street, Wagga Wagga, NSW 2650', NULL, '(02) 6971 8986', '', 'https://muffinbreak.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 04:49:26', '2021-09-01 04:49:26', '', '', ''),
(1015, 'Hog\'s Breath Cafe Wagga Wagga', '180 Baylis Street, Wagga Wagga', NULL, '(02) 6971 7333', '', 'https://www.hogsbreath.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 04:51:36', '2021-09-01 04:51:36', '', '', ''),
(1016, 'Duke of Kent Hotel', '125 Fitzmaurice Street, Wagga Wagga', NULL, '(02) 6921 3231', '', 'https://thedukehotel.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 04:55:37', '2021-09-01 04:55:37', '', '', ''),
(1017, 'Okami (Wagga Wagga) - Japanese All You Can Eat', '174 Fitzmaurice Street, Wagga Wagga', NULL, '(02) 6921 8558', '', 'https://www.okamirestaurant.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:07:27', '2021-09-01 05:07:27', '', '', ''),
(1018, 'Burgess Earthmoving', '147 Hammond Avenue, Wagga Wagga NSW 2650', NULL, '(02) 69211750', '', 'http://www.burgessearth.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:38:48', '2021-09-01 05:38:48', '', '', ''),
(1019, 'Craig Stewart Electrical', '100 Hammond Avenue, East Wagga Wagga', 'admin@craigstewartelectrical.com.au', '(02) 6971 8200', '', 'https://www.craigstewartelectrical.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:41:00', '2021-09-01 05:41:00', '', '', ''),
(1020, 'Narellan Pools Riverina', '86 Hammond Avenue, Wagga Wagga', NULL, '(02) 6921 8108', '', 'https://www.narellanpools.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:43:23', '2021-09-01 05:43:23', '', '', ''),
(1021, 'Care Mechanical Services', '15 Jones Street, East Wagga Wagga', 'enquiries@localsearch.com.au', '(02) 6971 9004', '', 'https://www.localsearch.com.au/profile/care-mechanical-services/wagga-wagga-nsw/DWhX?utm_source=google&utm_medium=organic&utm_campaign=gmb-website-button', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:46:03', '2021-09-01 05:46:03', '', '', ''),
(1022, 'Kane\'s Construction Services', '10 Colong Place, Kooringal', NULL, '0427 127 699', '', 'https://kanes-construction-services.business.site/', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:48:04', '2021-09-01 05:48:04', '', '', ''),
(1023, 'Wayne Carter Homes', '23 Morundah Street, Wagga Wagga', 'info@waynecarterhomes.com.au', '02 69 223 56', '', 'https://www.waynecarterhomes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:50:06', '2021-09-01 05:50:06', '', '', ''),
(1024, 'Troy Raulston Constructions', '3/70 Travers Street, Wagga Wagga', 'info@trhomeswagga.com.au', '0437 891 147', '', 'https://www.trhomeswagga.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:51:33', '2021-09-01 05:51:33', '', '', ''),
(1025, 'Kennedy Bros Earthmoving', '2/17 Dobney Avenue, Wagga Wagga', 'kennbros@bigpond.com', '(02) 6925 7001', '', 'https://www.kennedybros.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:53:22', '2021-09-01 05:53:22', '', '', ''),
(1026, 'Powers Insulation & Plumbing', '7 Bye Street, Wagga Wagga', NULL, '(02) 6932 1888', '', 'http://www.powersinsulation.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:56:13', '2021-09-01 05:56:13', '', '', ''),
(1027, 'Harrison & Higgins Airconditioning', '3 Rabaul Place, Wagga Wagga', NULL, '(02) 6925 3844', '', 'https://www.harrisonandhiggins.com/', 'Email', 'no', '', '', '2', 1, '2021-09-01 05:57:00', '2021-09-01 05:57:00', '', '', ''),
(1028, 'Des Damme Fencing', '161 Fernleigh Road, Glenfield Park', NULL, '(02) 6931 6565', '', 'https://www.desdammefencing.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:03:25', '2021-09-01 06:03:25', '', '', ''),
(1029, 'Fulton Hogan', '4 Webb Street, Wagga Wagga', NULL, '0419 208 256', '', 'https://www.fultonhogan.com/', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:28:46', '2021-09-01 06:28:46', 'Trade And Service', 'Contractor', ''),
(1030, 'Phil Whicker', '7 Gunn Drive, Estella', NULL, '0422 176 605', '', 'https://philwhicker.com/', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:40:40', '2021-09-01 06:40:40', 'Trade And Service', 'Contractor', ''),
(1031, 'Flick Pest Control Wagga Wagga', '8 Riedell Street, Wagga Wagga', NULL, '(02) 5616 0203', '', 'https://www.flick.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:44:13', '2021-09-01 06:44:13', 'Trade And Service', 'pest control service', ''),
(1032, 'Scientific Pest Management', 'Suite 4/66-70 Coleman Street, Wagga Wagga', NULL, '0423 205 150', '', 'https://scientificpest.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:45:22', '2021-09-01 06:45:22', 'Trade And Service', 'pest control service', ''),
(1033, 'All Clear Group | Building and Pest Inspections', '49 Dobney Avenue, Wagga Wagga', 'info@allcleargroup.com.au', '02 6925 5225', '', 'https://allcleargroup.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:47:28', '2021-09-01 06:47:28', 'Trade And Service', 'pest control service', ''),
(1034, 'Avante Guard Pest Control', '80 Jack Avenue, Mount Austin', 'sales@avanteguard.com.au', '0427 954 425', '', 'https://www.avanteguard.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:49:18', '2021-09-01 06:49:18', 'Trade And Service', 'pest control service', ''),
(1035, 'Terminate Pest Control', '96 Kaloona Drive, Bourkelands', 'terminateptyltd@bigpond.com', '0413 993 245', '', 'https://www.terminatepestcontrol.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:51:18', '2021-09-01 06:51:18', 'Trade And Service', 'pest control service', ''),
(1036, 'Termitrust Pest Control Wagga Wagga', '16 Kalmia Place, Wagga Wagga', NULL, '(02) 6922 3088', '', 'https://www.termitrust.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:52:02', '2021-09-01 06:52:02', 'Trade And Service', 'pest control service', ''),
(1038, 'Above the Rest Pest Solutions', 'Silverwood Road, Wagga Wagga', NULL, '0474 121 007', '', 'https://www.atrpestsolutions.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:54:05', '2021-09-01 06:54:05', 'Trade And Service', 'pest control service', ''),
(1039, 'Advanced Pest Management Riverina', '5 Rowe Street, Wagga Wagga', NULL, '0427 482 562', '', 'https://www.pestcontrolwagga.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 06:55:03', '2021-09-01 06:55:03', 'Trade And Service', 'pest control service', ''),
(1040, 'Crestia Carpets by Andersens', '180 Hammond Avenue, East Wagga Wagga', NULL, '(02) 6921 2652', '', 'https://www.andersens.com.au/stores/wagga/', 'Email', 'no', '', '', '2', 1, '2021-09-01 07:24:41', '2021-09-01 07:24:41', 'Trade And Service', 'carpet cleaning service', ''),
(1041, 'Wagga Rug Wash', '9 Railway Street, Wagga Wagga', 'waggarugwash@westnet.com.au', '0458 693 600', '', 'http://www.waggarugwash.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-01 07:31:19', '2021-09-01 07:31:19', 'Trade And Service', 'carpet cleaning service', ''),
(1042, 'Steamatic Wagga Wagga', '36 Gormly Avenue, Wagga Wagga', 'contracts@steamatic.com.au', '(03) 9587 6333', '', 'https://www.steamatic.com.au/locations/wagga-wagga-riverina-district/?utm_source=google&utm_medium=organic&utm_campaign=Map%2Fwagga-wagga', 'Email', 'no', '', '', '2', 1, '2021-09-01 07:34:58', '2021-09-01 07:34:58', 'Trade And Service', 'carpet cleaning service', '');
INSERT INTO `tasks` (`id`, `name`, `address`, `email`, `phone`, `mobile`, `website`, `strategy`, `response`, `status`, `partner`, `aid`, `transaction`, `created_at`, `updated_at`, `directory`, `category`, `town`) VALUES
(1043, 'Elite Cleaning', '97 Fitzmaurice Street, Wagga Wagga', 'eliteserviceswagga@hotmail.com', '0408 223 719', '', 'https://www.elitecleaningwagga.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:04:02', '2021-09-02 04:04:02', 'Trade And Service', 'carpet cleaning service', ''),
(1044, 'SeaStone Carpet Cleaning Services - Best Carpet Cleaning Company Wagga Wagga', 'Unit 4/51 Kincaid Street, Wagga Wagga', 'info@seastonecarpetcleaningservice.com.au', '0492 351 739', '', 'https://www.seastonecarpetcleaningservice.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:05:17', '2021-09-02 04:05:17', 'Trade And Service', 'carpet cleaning service', ''),
(1045, 'Ladex Construction Group', '35 Bomen Road, Bomen', 'admin@ladex.com.au', '(02) 6925 8477', '', 'https://www.ladex.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:08:35', '2021-09-02 04:08:35', 'Trade And Service', 'Residential Contractors', ''),
(1046, 'Ben Jones Constructions', '12 Kalmia Place, Springvale', NULL, '0418 448 204', '', 'https://www.benjonesconstructions.com', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:09:35', '2021-09-02 04:09:35', 'Trade And Service', 'Residential Contractors', ''),
(1047, 'Structure Building Services Pty Ltd -Keogh Craig', '72 Jack Avenue, Mount Austin', NULL, '0417 443 403', '', 'https://www.hotondo.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:11:12', '2021-09-02 04:11:12', 'Trade And Service', 'Residential Contractors', ''),
(1048, 'Stephen Lawrence Constructions', '5041, Wagga Wagga NSW 2650', 'stephen@slconstruction.com.au', '02 6921 7705', '', 'http://www.slconstruction.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:13:20', '2021-09-02 04:13:20', 'Trade And Service', 'Residential Contractors', ''),
(1049, 'Proline Painting', '46 Pearson Street, Wagga Wagga', 'tim@prolinepainting.com.au', '0418 204 628', '', 'http://www.prolinepainting.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:17:53', '2021-09-02 04:17:53', 'Trade And Service', 'Residential Contractors', ''),
(1050, 'John Swaysland Painting Pty Ltd', '3/199 Morgan Street, Wagga Wagga', 'jswaypaint@bigpond.com', '(02) 6921 4850', '', 'https://www.swayslandpaint.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:20:54', '2021-09-02 04:20:54', 'Trade And Service', 'Residential Contractors', ''),
(1051, 'Roberson Construction', 'Wagga Wagga Market Place, 87 Baylis Street, Wagga Wagga1', 'hello@robersons.com.au', '0459 290 792', '', 'https://www.robersonconstruction.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:53:06', '2021-09-02 04:53:06', 'Trade And Service', 'Residential Contractors', ''),
(1052, 'MJM Consulting Engineers', '37 Johnston Street, Wagga Wagga', 'admin@mjm-solutions.com', '(02) 6921 8333', '', 'http://www.mjm-solutions.com', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:54:47', '2021-09-02 04:54:47', 'Trade And Service', 'Residential Contractors', ''),
(1053, 'Maslin Homes', '116 Fitzmaurice Street, Wagga Wagga', 'sales@maslinhomes.com.au', '(02) 6931 9939', '', 'http://www.maslinhomes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 04:58:00', '2021-09-02 04:58:00', 'Trade And Service', 'Residential Contractors', ''),
(1054, 'GPG Architecture and Design', '68A Plumpton Road, Wagga Wagga', NULL, '(02) 6926 5665', '', 'http://www.gpgarchitecture.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:01:59', '2021-09-02 05:01:59', 'Trade And Service', 'Architects', ''),
(1055, 'Icono Building Design', 'Shop 30 Kooringal Mall Lake Albert Rd, East Wagga Wagga', NULL, '(02) 6922 6388', '', 'https://www.icono.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:02:55', '2021-09-02 05:02:55', 'Trade And Service', 'Architects', ''),
(1056, 'Creative Outdoors & More', '1/161 Fernleigh Road, Glenfield Park', NULL, '(02) 6936 0253', '', 'https://www.creativeoutdoorsandmore.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:18:57', '2021-09-02 05:18:57', 'Trade And Service', 'Architects', ''),
(1057, 'Riverina Building Design', '7 Coleman Street, Turvey Park', NULL, '0457 490 338', '', 'http://www.riverinabuildingdesign.com/', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:22:46', '2021-09-02 05:22:46', 'Trade And Service', 'Architects', ''),
(1058, 'FinalDraft', '231 Edward Street, Wagga Wagga', 'finaldraft31@gmail.com', '(02) 6923 0316', '', 'http://www.finaldraft-design.com', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:24:28', '2021-09-02 05:24:28', 'Trade And Service', 'Architects', ''),
(1059, 'Hurst Homes', '1/37 Morgan Street, Wagga Wagga', NULL, '(02) 6921 9988', '', 'https://www.hursthomes.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:25:14', '2021-09-02 05:25:14', 'Trade And Service', 'Architects', ''),
(1060, 'GHD', '161/169 Baylis Street, Wagga Wagga', NULL, '(02) 6923 7400', '', 'https://www.ghd.com/en-au/index.aspx', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:26:25', '2021-09-02 05:26:25', 'Trade And Service', 'Architects', ''),
(1061, 'EnviroScience Solutions Pty Ltd - Wagga, Dubbo, Tamworth', '99 Fitzmaurice Street, Wagga Wagga', 'info@enviroscience.com.au', '(02) 6925 9727', '', 'https://www.enviroscience.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:28:25', '2021-09-02 05:28:25', 'Trade And Service', 'Architects', ''),
(1062, 'Sewell Design', '57 Trail Street, Wagga Wagga', NULL, '(02) 5908 3320', '', 'https://www.sewelldesign.com', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:37:55', '2021-09-02 05:37:55', 'Trade And Service', 'Architects', ''),
(1063, 'Mark G Golden & Associates : Architects', '62 Kincaid Street, Wagga Wagga', 'mark@goldenarchitects.com.au', '(02) 6921 2298', '', 'https://goldenarchitects.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:40:31', '2021-09-02 05:40:31', 'Trade And Service', 'Architects', ''),
(1064, 'Peter Taylor Plumbing & Gas', '34 Norfolk Avenue, Lake Albert', 'p_plumin@bigpond.net.au', '0408 229 135', '', 'https://www.petertaylorplumbing.com', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:42:35', '2021-09-02 05:42:35', 'Trade And Service', 'Architects', ''),
(1066, 'Andrew Cox Plumbing', '43 Pearson Street, Wagga Wagga', NULL, '0459 286 169', '', 'http://www.andrewcoxplumbing.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:56:22', '2021-09-02 05:56:22', 'Trade And Service', 'plumber', ''),
(1067, 'Scobell\'s Plumbing', '39 Bardo Lane, Wagga Wagga', 'admin@andrewcoxplumbing.com.au', '0412 294 909', '', 'http://www.andrewcoxplumbing.com.au/#pb-contact', 'Email', 'no', '', '', '2', 1, '2021-09-02 05:58:53', '2021-09-02 05:58:53', 'Trade And Service', 'plumber', ''),
(1068, 'Southern Plumbing Plus', '32 Pearson Street, Wagga Wagga', NULL, '(02) 6971 6600', '', 'https://www.spplus.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:00:15', '2021-09-02 06:00:15', 'Trade And Service', 'plumber', ''),
(1069, 'Image One Plumbing', '10 Alder Close, Jerrabomberra', 'info@imageoneplumbing.com.au', '0432 358 287', '', 'http://www.imageoneplumbing.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:04:19', '2021-09-02 06:04:19', 'Trade And Service', 'plumber', ''),
(1070, 'Ian Bailey\'s Gasfitting and Plumbing Service', '15 McCrae Street, Queanbeyan West', 'iwbailey@netspace.net.au', '0412 096 192', '', 'http://www.baileygasandplumbing.com/', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:06:03', '2021-09-02 06:06:03', 'Trade And Service', 'plumber', ''),
(1071, 'AuroraFM Pty Ltd - Plumbing & Gasfitting', '4/33 Spongolite Street, Beard', 'admin@aurorafm.com.au', '0466 111 904', '', 'https://www.aurorafm.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:07:46', '2021-09-02 06:07:46', 'Trade And Service', 'plumber', ''),
(1072, 'Master Gasfitters', '155 Gladstone Street, Fyshwick', 'theoffice@mastergas.com.au', '(02) 6280 4669', '', 'https://mastergas.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:09:28', '2021-09-02 06:09:28', 'Trade And Service', 'plumber', ''),
(1073, 'Woden Valley Plumbing & Gasfitting', '82 Kalgoorlie Crescent, Fisher', NULL, '0407 212 565', '', 'https://www.wodenvalleyplumbing.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:10:17', '2021-09-02 06:10:17', 'Trade And Service', 'plumber', ''),
(1074, 'BMF Plumbing and Gasfitting Canberra', 'Ipima Street, Braddon', 'brad@bmfplumbing.com.au', '0449 599 787', '', 'https://www.bmfplumbing.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:12:06', '2021-09-02 06:12:06', 'Trade And Service', 'plumber', ''),
(1075, 'ANKN ENGINEERING CONSULTANTS', '45 Paradise Drive, Gobbagombalin', 'info@ankn.com.au', '0432 519 495', '', 'http://www.ankn.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:46:34', '2021-09-02 06:46:34', 'Trade And Service', 'Consultant', ''),
(1076, 'Advanced Learning Centre', '203 Lake Albert Road, Wagga Wagga', 'info@advancedlearningcentre.com.au', '0458 456 586', '', 'https://www.advancedlearningcentre.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:48:11', '2021-09-02 06:48:11', 'Trade And Service', 'Consultant', ''),
(1077, 'TFL Consulting and Design', '41-43 Copland Street, Wagga Wagga', 'info@tflconsulting.net.au', '(02) 6971 9400', '', 'https://www.tflconsulting.net.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:54:38', '2021-09-02 06:54:38', 'Trade And Service', 'Consultant', ''),
(1078, 'McMahon Earth Science', '6 Jones Street, East Wagga Wagga', 'admin@dmmcmahon.co', '02 6931 0510', '', 'https://www.dmmcmahon.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:56:52', '2021-09-02 06:56:52', 'Trade And Service', 'Consultant', ''),
(1079, 'Innovative Financial Services', '13 Railway Street, Wagga Wagga', 'admin@innovativefp.com.au', '(02) 6921 3682', '', 'https://www.innovativefp.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 06:59:11', '2021-09-02 06:59:11', 'Trade And Service', 'Consultant', ''),
(1080, 'Xeros Piccolo Consulting Engineers', '5 Bye St. Wagga Wagga 2650', 'wagga@xerospiccolo.com.au', '02 6925 5855', '', 'https://www.xerospiccolo.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 07:01:29', '2021-09-02 07:01:29', 'Trade And Service', 'Consultant', ''),
(1081, 'AAE', 'Edward Street, Wagga Wagga', 'lawrence@aaequities.com.au', '0400 884 211', '', 'https://www.aaequities.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 07:03:04', '2021-09-02 07:03:04', 'Trade And Service', 'Consultant', ''),
(1082, 'Eslers Land Consulting', '64 Hammond Avenue, East Wagga Wagga', NULL, '(02) 6921 3312', '', 'https://www.eslers.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 07:06:53', '2021-09-02 07:06:53', 'Trade And Service', 'Consultant', ''),
(1083, 'Country Financial Planning', '197 Baylis Street, Wagga Wagga', 'kiri@countryfinance.net.au', '0400 308 769', '', 'https://www.countryfinancialplanning.net.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 07:10:15', '2021-09-02 07:10:15', 'Trade And Service', 'Consultant', ''),
(1084, 'AAA Fencing', '23 Leighton Close, Gordonvale', NULL, '0401 886 071', '', 'https://aaafencingcairns.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-02 07:37:19', '2021-09-02 07:37:19', 'Trade And Service', 'Contractor', ''),
(1085, 'Advance Concrete Polishing', '3 Atlantic Close, White Rock', NULL, '0400 794 163', '', 'https://concretepolishing.info/', 'Email', 'no', '', '', '2', 1, '2021-09-02 07:38:52', '2021-09-02 07:38:52', 'Trade And Service', 'Contractor', ''),
(1086, 'Freshlook Painting Contractors', '4 Finch Street, Bayview Heights', 'freshlookcontractors@gmail.com', '0413 098 560', '', 'http://www.freshlookpaintingcontractors.com.au/index.html', 'Email', 'no', '', '', '2', 1, '2021-09-02 07:43:38', '2021-09-02 07:43:38', 'Trade And Service', 'Contractor', ''),
(1087, 'Nordig Pty Ltd.', '7 Southgate Close, Woree Qld 4868 PO Box 273, Cairns Qld 4870', 'admin@nordig.com.au', '07 4054 6666', '', 'https://www.nordig.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-02 07:46:04', '2021-09-02 07:46:04', 'Trade And Service', 'Contractor', ''),
(1088, 'All Style Paving & Landscaping Cairns', '22-26 Waterlilly Street, Kewarra Beach', 'info@allstylepl.com.au', '0467 590 781', '', 'https://www.allstylepl.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-03 02:52:53', '2021-09-03 02:52:53', 'Trade And Service', 'Contractor', ''),
(1089, 'John Chisholm Floor Covering & Furnishing Contractors', '5 Banksia Close, Holloways Beach', NULL, '(07) 4055 9883', '', 'http://www.johnsflooring.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-03 02:58:03', '2021-09-03 02:58:03', 'Trade And Service', 'Contractor', ''),
(1090, 'Active voice and data', '32 Yurongi Street, Caravonica', 'admin@activevoiceanddata.com.au', '0439 390 390', '', 'https://www.activevoiceanddata.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-03 03:00:28', '2021-09-03 03:00:28', 'Trade And Service', 'Contractor', ''),
(1091, 'Stratford Painting Contractors', '31 Mason Street, Stratford', 'admin@stratfordpainting.com.au', '0408 062 483', '', 'https://stratfordpainting.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:01:57', '2021-09-04 02:01:57', 'Trade And Service', 'Contractor', ''),
(1092, 'Maxa Constructions - Cairns Builder', '14 Pyne Street, Cairns City', NULL, '(07) 4053 3717', '', 'https://www.maxa.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:05:11', '2021-09-04 02:05:11', 'Trade And Service', 'Contractor', ''),
(1093, 'PJ Electrical & Air-Conditioning Services', 'Unit 8/206-208 McCormack Street, Manunda', 'sales@pjelectrical.com.au', '(07) 4053 6223', '', 'https://www.pjairconditioning.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:06:27', '2021-09-04 02:06:27', 'Trade And Service', 'Contractor', ''),
(1094, 'Bryant Building Contractors', '32 Minnie Street, Cairns City', 'cairns@BryantBC.com.au', '(07) 4040 6400', '', 'https://www.bryantbuildingcontractors.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:09:01', '2021-09-04 02:09:01', 'Trade And Service', 'Contractor', ''),
(1095, 'A & J Roofing Solutions', '98 Buchan Street, Portsmith', 'estimator@anjroof.com.au', '(07) 4035 6187', '', 'https://www.anjroofingcairns.com', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:10:44', '2021-09-04 02:10:44', 'Trade And Service', 'Contractor', ''),
(1096, 'Cairns Fencing', '52 Comport Street, Cairns City', NULL, '(07) 4035 6744', '', 'http://cairnsfencing.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:11:17', '2021-09-04 02:11:17', 'Trade And Service', 'Contractor', ''),
(1097, 'Triple S Earthmoving & Pipelaying Contractors', '7 Redden Street, Cairns City', 'triple_s@ozemail.com.au', '(07) 4035 3100', '', 'https://www.triplescairns.net.au', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:13:11', '2021-09-04 02:13:11', 'Trade And Service', 'Contractor', ''),
(1098, 'Cheshire Contractors Pty Ltd', '25-29 Knight Street, Portsmith', NULL, '(07) 4035 3255', '', 'https://www.cheshirecontractors.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:14:14', '2021-09-04 02:14:14', 'Trade And Service', 'Contractor', ''),
(1099, 'Cairns Cleaning Contractors', '10/149-155 Newell Street, Bungalow', 'sales@cairnscleaning.com.au', '0413 009 299', '', 'https://www.cairnscleaning.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:16:15', '2021-09-04 02:16:15', 'Trade And Service', 'Contractor', ''),
(1100, 'Arnel Fencing Warehouse', '74/184 Mccoombe Street, Cairns City', 'info@arnelfencing.com.au', '(07) 4054 9000', '', 'https://arnelfencing.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:17:59', '2021-09-04 02:17:59', 'Trade And Service', 'Contractor', ''),
(1101, 'Tropical Roofing & Drainage Solutions Pty Ltd', '614 Bruce Highway, Woree', 'info@tropicalroofingdscairns.com.au', '0450 166 329', '', 'https://tropicalroofingdscairns.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:20:40', '2021-09-04 02:20:40', 'Trade And Service', 'Contractor', ''),
(1102, 'Pestrid Pest Management Services Cairns', '20-22 Plantation Road, Edmonton', 'admin@pestridservices.com.au', '(07) 4045 6755', '', 'https://www.pestridservices.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:30:17', '2021-09-04 02:30:17', 'Trade And Service', 'pest control service', ''),
(1103, 'Cairns Pest Control Services', '99 Wiseman Rd West, 4870 Edmonton QLD', 'contact@cairnspestcontrolservices.com.au', '(07) 4045 4950', '', 'https://www.cairnspestcontrol.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:32:22', '2021-09-04 02:32:22', 'Trade And Service', 'pest control service', ''),
(1104, 'Greenhalgh Pest Services', '57 Bayview Street, Bayview Heights', 'greenhalghpest@bigpond.com', '(07) 4033 5001', '', 'http://greenhalghpest.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:33:45', '2021-09-04 02:33:45', 'Trade And Service', 'pest control service', ''),
(1105, 'Hard Yakka Gardening and Pest Control - Cairns', '205 Mccoombe Street, Cairns City', 'info@hygardenandpest.com', '0428 676 641', '', 'http://hygardenandpest.com/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:35:01', '2021-09-04 02:35:01', 'Trade And Service', 'pest control service', ''),
(1106, 'Flick Pest Control Cairns', '319-323 Spence Street, Bungalow', NULL, '(07) 3155 2313', '', 'https://www.flick.com.au/cairns-pest-control/?utm_source=Google&utm_medium=mybusiness&utm_campaign=cairns', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:36:07', '2021-09-04 02:36:07', 'Trade And Service', 'pest control service', ''),
(1107, 'Pestaway Pest Management Cairns', 'Shed 23 Traders Lane, 117 Anderson Street, Manunda', 'Belinda@pestaway.net.au', '(07) 4055 1055', '', 'https://www.pestaway.net.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:38:01', '2021-09-04 02:38:01', 'Trade And Service', 'pest control service', ''),
(1108, 'Pest Off Solutions Pest Control Cairns', '2-4 View Street, Brinsmead', 'admin@pestoffsolutions.com.au', '(07) 4034 1110', '', 'https://www.pestoffsolutions.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:39:23', '2021-09-04 02:39:23', 'Trade And Service', 'pest control service', ''),
(1109, 'Ulysses Pest Control', '8 Gallo Close, Brinsmead', NULL, '0427 600 023', '', 'https://www.ulyssespestcontrolcairns.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:40:07', '2021-09-04 02:40:07', 'Trade And Service', 'pest control service', ''),
(1110, 'Safeway Pest Control', 'PO Box 62, Smithfield QLD 4878', 'info@safewaypestcontrol.com.au', '(07) 4059 0922', '', 'https://www.safewaypestcontrol.com.au', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:41:55', '2021-09-04 02:41:55', 'Trade And Service', 'pest control service', ''),
(1111, 'Tropical Palms Pest Management', '25 Ardisia Street, Smithfield', 'kurt@tppmcairns.com.au', '0432 229 104', '', 'https://tppmcairns.com.au/', 'Email', 'no', '', '', '2', 1, '2021-09-04 02:43:45', '2021-09-04 02:43:45', 'Trade And Service', 'pest control service', ''),
(1112, 'Brush n Broom Cleaning Service', '223 Bruce Highway, Bentley Park', NULL, '0408 084 149', '', 'https://brush-n-broom-carpet-cleaning.business.site/', 'Email', 'no', '', '', '2', 1, '2021-09-04 06:24:10', '2021-09-04 06:24:10', 'Trade And Service', 'carpet cleaning service', 'Cairns');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `partner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `username`, `level`, `profile_pic`, `partner`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `affid`) VALUES
(1, 'Dario', 'Sajot', 'Burlas', 'Dar', 'Agent', '', 'LRG', 'darsajot@gmail.com', NULL, '$2y$10$kgCGpaSGe7s1bFPq2pvXIOmEd0JUA8G73H/SPWUnJivQlLxEHfxn6', NULL, '2021-08-12 04:00:35', '2021-08-12 04:00:35', 'LRG-ID-agent1'),
(2, 'Franz Christian', 'Cansancio', 'Aleria', 'franc', 'Agent', '', 'LRG', 'franzcansancio@gmail.com', NULL, '$2y$10$Z/hPslYjO0SVKCaMdTdeTeFFH3qXhefZQM4WG8l/fsKd8aYCpLxi2', NULL, '2021-08-12 04:06:46', '2021-08-12 04:06:46', 'LRG-ID-agent2'),
(3, 'Jessa', 'Panimdim', 'Ramirez', 'jessa', 'Agent', '', 'LRG', 'jessa.r.panimdim@gmail.com', NULL, '$2y$10$CDwxfgEhGiBJreI74XSh0.EJ1JM6XS7bIipXLhXdvkHwdygkmyIoy', NULL, '2021-08-12 04:14:53', '2021-08-12 04:14:53', 'LRG-ID-agent3'),
(4, 'Lhyca', 'Rolloque', 'Bingcula', 'calhy_13', 'Admin', '', 'LRG', 'calhyrolloque13@gmail.com', NULL, '$2y$10$QBsvySpWkftbzXcYxHVOTOz4.PnjojNzakeyiCJXLbeqaGs6j/mpq', NULL, '2021-08-12 04:17:47', '2021-08-12 04:17:47', 'LRG-ID-admin1'),
(5, 'Virgil', 'Rosalita', 'Tecson', 'berrydimple', 'Owner', '', 'LRG', 'dimplevirgil@gmail.com', NULL, '$2y$10$TBwcuEPki4pKAitBRwJGPe4ZmHaH4/1gk.JFJWw/rS9nvECdyau/i', NULL, '2021-08-12 04:40:00', '2021-08-12 04:40:00', 'LRG-ID-owner'),
(6, 'Jacky', 'Crispin', 'Quaquino', 'Jcrispin10', 'Admin', '', 'LRG', 'jcrispin.apd@gmail.com', NULL, '$2y$10$MgK6gr8gT5VAb0SiIYAYJeM9HaLdDUa6hzs5PhJTPImHIaJRs6r56', NULL, '2021-08-12 05:33:39', '2021-08-12 05:33:39', 'LRG-ID-admin2'),
(7, 'Garry', 'Hill', NULL, 'garry', 'Owner', '', 'LRG', 'garry@4ustralia.com', NULL, '$2y$10$wrW4Fy2juUTGYZXw7yNKFOqRIpY62QGHHF6/62nAfzdciZqh4pmju', NULL, '2021-08-12 07:00:07', '2021-08-12 07:00:07', 'LRG-ID-owner2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calls_task_id_foreign` (`task_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payees`
--
ALTER TABLE `payees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payers`
--
ALTER TABLE `payers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payees`
--
ALTER TABLE `payees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payers`
--
ALTER TABLE `payers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1113;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
