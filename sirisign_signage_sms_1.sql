-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 10:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sirisign_signage_sms_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets_apps`
--

CREATE TABLE `assets_apps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `template` varchar(50) DEFAULT NULL,
  `path_type` varchar(50) DEFAULT NULL,
  `file_from` varchar(250) DEFAULT NULL,
  `app_img` varchar(250) DEFAULT NULL,
  `app_name` varchar(100) DEFAULT NULL,
  `app_url` varchar(250) DEFAULT NULL,
  `no_of_post` int(11) DEFAULT NULL,
  `slide_duration` varchar(50) DEFAULT NULL,
  `app_size` varchar(250) DEFAULT NULL,
  `cache` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets_apps`
--

INSERT INTO `assets_apps` (`id`, `user_id`, `app_id`, `template`, `path_type`, `file_from`, `app_img`, `app_name`, `app_url`, `no_of_post`, `slide_duration`, `app_size`, `cache`, `created_at`) VALUES
(77, 8, NULL, NULL, 'Video', 'Assets', 'video.jpg', NULL, 'https://sirisigns.xyz/signage/images/profiles/videorec_tmp8.mp4', NULL, NULL, '1625699', NULL, '2021-01-13 05:20:25'),
(78, 8, NULL, NULL, 'Image', 'Assets', 'img-icon.png', NULL, 'https://sirisigns.xyz/signage/images/profiles/unnamed1.jpg', NULL, NULL, '42412', NULL, '2021-01-13 05:20:49'),
(80, 8, 5, NULL, 'App', 'assets', 'html5-3.png', 'blogco', 'https://www.youtube.com/watch?v=qHX7kKWyX', NULL, NULL, NULL, '1', '2021-01-13 05:21:44'),
(83, 8, 1, NULL, 'App', 'Assets', 'youtube.png', 'Abhi Rajajinagar', 'https://www.youtube.com/watch?v=1yDeVXXCEgY', NULL, NULL, NULL, NULL, '2021-01-27 12:54:51'),
(93, 24, NULL, NULL, 'Image', 'Assets', 'img-icon.png', NULL, 'https://sirisigns.xyz/signage/images/profiles/youtube-logo27.jpg', NULL, NULL, '234945', NULL, '2021-02-17 12:49:09'),
(105, 8, NULL, NULL, 'Video', 'Composition', 'video.jpg', NULL, 'https://sirisigns.xyz/signage/images/profiles/SampleVideo_1280x720_1mb1.mp4', NULL, NULL, '1055736', NULL, '2021-02-19 06:21:41'),
(109, 8, NULL, NULL, 'Image', 'Composition', 'img-icon.png', NULL, 'https://sirisigns.xyz/signage/images/profiles/youtube-logo28.jpg', NULL, NULL, '234945', NULL, '2021-02-19 06:42:00'),
(110, 8, NULL, NULL, 'Image', 'Composition', 'img-icon.png', NULL, 'https://sirisigns.xyz/signage/images/profiles/banner.png', NULL, NULL, '1924536', NULL, '2021-02-20 04:12:00'),
(111, 8, NULL, NULL, 'Image', 'Composition', 'img-icon.png', NULL, 'https://sirisigns.xyz/signage/images/profiles/chair21.png', NULL, NULL, '55990', NULL, '2021-02-20 04:12:34'),
(113, 8, NULL, NULL, 'Image', 'Assets', 'img-icon.png', NULL, 'https://sirisigns.xyz/signage/images/profiles/about.png', NULL, NULL, '33637', NULL, '2021-02-21 14:42:20'),
(114, 8, NULL, NULL, 'Image', 'Assets', 'img-icon.png', NULL, 'https://sirisigns.xyz/signage/images/profiles/about1.png', NULL, NULL, '33637', NULL, '2021-02-21 14:44:05'),
(115, 8, 1, NULL, 'App', 'Assets', 'youtube.png', 'ffgh', 'https://www.youtube.com/watch?v=KMqQvb6Ffh8', NULL, NULL, NULL, NULL, '2021-02-23 07:08:15'),
(116, 8, 1, NULL, 'App', 'Assets', 'youtube.png', 'ffgh', 'https://www.youtube.com/watch?v=KMqQvb6Ffh8', NULL, NULL, NULL, NULL, '2021-02-23 12:46:15'),
(117, 24, NULL, NULL, 'Image', 'Assets', 'img-icon.png', NULL, 'https://sirisigns.xyz/signage/images/profiles/003-Fashion-Design-Portfolio-Sample-Layout-preview2.jpg', NULL, NULL, '62499', NULL, '2021-02-24 10:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `assets_schedule`
--

CREATE TABLE `assets_schedule` (
  `id` int(11) NOT NULL,
  `comp_id` varchar(100) DEFAULT NULL,
  `template` varchar(100) DEFAULT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `schedule_status` int(11) DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets_schedule`
--

INSERT INTO `assets_schedule` (`id`, `comp_id`, `template`, `start_date`, `end_date`, `start_time`, `end_time`, `user_id`, `schedule_status`, `created_at`) VALUES
(26, '[\"105\"]', 'temp_1', '2021-02-24', '', '07:15', '', 8, 1, '2021-02-23 11:45:54'),
(29, '[\"105\",\"110\"]', 'temp_2', '2021-02-24 18:00:00', '', '20:09', '', 8, 1, '2021-02-24 09:34:33'),
(30, '[\"105\",\"110\",\"111\"]', 'temp_3', '2021-02-24 22:00:00', '2021-02-25', '20:04', '07:03', 8, 1, '2021-02-24 10:29:39'),
(31, '[\"110\",\"111\"]', 'temp_4', '2021-02-06 00:00:00', '', '16:50', '', 8, 2, '2021-02-24 07:16:41'),
(32, '[\"111\"]', 'temp_5', '2021-02-05 00:00:00', '', '12:52', '', 8, 1, '2021-02-24 07:17:42'),
(33, '[\"93\",\"117\"]', 'temp_2', '2021-02-05 00:00:00', '', '16:46', '', 24, 1, '2021-02-26 07:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `assets_tags`
--

CREATE TABLE `assets_tags` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `asset_key` varchar(250) DEFAULT NULL,
  `asset_value` varchar(250) DEFAULT NULL,
  `tag_type` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets_tags`
--

INSERT INTO `assets_tags` (`id`, `asset_id`, `asset_key`, `asset_value`, `tag_type`, `user_id`, `created_at`) VALUES
(1, 11, 'key', 'value', NULL, 8, '2021-01-12 06:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `check_in_out`
--

CREATE TABLE `check_in_out` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `date_in` date NOT NULL,
  `time_in` varchar(100) NOT NULL,
  `time_out` varchar(100) NOT NULL,
  `punch_in` varchar(100) DEFAULT NULL,
  `punch_out` varchar(100) DEFAULT NULL,
  `punch_status` varchar(100) NOT NULL DEFAULT 'Punch IN',
  `ip_address` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `check_in_out`
--

INSERT INTO `check_in_out` (`id`, `user_id`, `session_id`, `date_in`, `time_in`, `time_out`, `punch_in`, `punch_out`, `punch_status`, `ip_address`, `status`, `created_at`) VALUES
(1, '20', '82epfpljqbred8p2k85egpv37gapb8oe', '2020-10-01', '07:37:44', '', '07:37:44', '07:37:57', 'Punch Out', '127.0.0.1', 1, '2020-10-01 14:07:44'),
(2, '20', '82epfpljqbred8p2k85egpv37gapb8oe', '2020-10-01', '07:38:09', '19:39:01', '07:38:09', '07:38:22', 'Punch Out', '127.0.0.1', 1, '2020-10-01 14:08:09'),
(3, '15', 'jiiaak8jtiep9doki1navhdhbm5h213s', '2020-10-01', '07:39:49', '19:40:18', '07:39:49', '07:40:10', 'Punch Out', '127.0.0.1', 1, '2020-10-01 14:09:49'),
(4, '8', '9jumpeddfa6iutdau1k3bpo5kjhc55fk', '2020-10-01', '07:40:30', '11:26:12', '07:40:30', '07:41:02', 'Punch Out', '127.0.0.1', 1, '2020-10-01 14:10:30'),
(5, '8', '077f3m6jh6608p0iu2sut26s1arme64n', '2020-10-15', '03:41:06', '17:56:38', '03:41:06', '06:20:35', 'Punch Out', '172.20.10.2', 1, '2020-10-15 10:11:06'),
(6, '8', 'vh8adv1dd8r5no3qpctv3pua6k369tr5', '2020-10-17', '06:20:40', '18:31:41', '06:20:40', '07:54:05', 'Punch Out', '172.20.10.2', 1, '2020-10-17 12:50:40'),
(7, '8', 'grhfh7o0d3chr9b4fs2ifv0bi59k7v53', '2020-10-21', '07:54:28', '08:30:33', '07:54:28', '07:55:01', 'Punch Out', '127.0.0.1', 1, '2020-10-21 02:24:28'),
(8, '8', 'rlratdqvj8pjuigfn08i5n36s5haofgu', '2020-10-21', '10:36:56', '10:59:19', '10:36:56', '10:37:16', 'Punch Out', '172.20.10.2', 1, '2020-10-21 05:06:56'),
(9, '9', 'u1i84lc9l29ct7p784enl05d4c3pt5cp', '2020-10-23', '02:28:20', '', '02:28:20', '', 'Punch IN', '172.20.10.2', 1, '2020-10-23 08:58:20'),
(10, '9', 'u1i84lc9l29ct7p784enl05d4c3pt5cp', '2020-10-23', '02:29:22', '', '02:29:22', '', 'Punch IN', '172.20.10.2', 1, '2020-10-23 08:59:22'),
(11, '9', 'u1i84lc9l29ct7p784enl05d4c3pt5cp', '2020-10-23', '02:30:25', '', '02:30:25', '', 'Punch IN', '172.20.10.2', 1, '2020-10-23 09:00:25'),
(12, '9', 'u1i84lc9l29ct7p784enl05d4c3pt5cp', '2020-10-23', '02:31:28', '', '02:31:28', '06:43:20', 'Punch Out', '172.20.10.2', 1, '2020-10-23 09:01:28'),
(13, '8', 'gt7k0fl2o4c6na8hqavul619j6ut7d1d', '2020-10-24', '09:51:38', '', '09:51:38', '09:53:58', 'Punch Out', '172.20.10.2', 1, '2020-10-24 04:21:38'),
(14, '8', 'gt7k0fl2o4c6na8hqavul619j6ut7d1d', '2020-10-24', '09:54:02', '09:55:03', '09:54:02', '09:54:27', 'Punch Out', '172.20.10.2', 1, '2020-10-24 04:24:02'),
(15, '8', '1sb35pckrvfbfujuqsrqqolg4s6p874i', '2020-11-26', '10:05:17', '18:54:51', '10:05:17', '10:08:30', 'Punch Out', '172.20.10.3', 1, '2020-11-26 04:35:17'),
(16, '9', 'ounjngudkpkgdtv0tjdn57l56l658iks', '2020-12-14', '06:43:42', '18:43:45', '06:43:42', '', 'Punch IN', '172.20.10.3', 1, '2020-12-14 13:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(255) NOT NULL,
  `lead_id` int(7) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `clientid` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_address` text NOT NULL,
  `client_sources` varchar(255) NOT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `lead_id`, `first_name`, `last_name`, `user_name`, `profile_image`, `department`, `email`, `password`, `clientid`, `phone`, `company_name`, `company_address`, `client_sources`, `status`, `created_at`, `updated_at`) VALUES
(28, 0, 'Drone ', 'Deus', 'Kishore/Vivek', 'clients__18176.jpg', 'Hardware / software', 'contact@dronedeus.com', '123456', 'TC28', '+91 88833 34628', 'Dronedeus', 'Trichy', 'Friend', '1', '2020-10-17 12:31:53', '2020-10-17 12:40:54'),
(29, 0, 'Ranjani', 'musicschool', 'ranjani', 'clients__99438.jpeg', 'Music school', 'ranjani.venkataramanan@gmail.com', '123456', 'TC29', '1234567890', 'Rranjanimusicschool', 'Tamil nadu', 'Bazeer appa', '1', '2020-10-17 12:34:55', '2020-10-17 12:39:24'),
(30, 0, 'Smartina', 'Dsouza', 'Smartina Dsouza', 'clients__51687.png', 'Grrots', 'smartina2007@gmail.com', '123456', 'TC30', '+91 9082546407', 'Sucess Designers', 'Mumbai', 'Vivek', '1', '2020-10-17 12:37:42', '2020-10-17 12:39:59'),
(31, 0, 'syed', 'RIYAZ ', 'SYED RIYAZ ', '', 'admin', 'surejbabu6@gmail.com', '8838242824', 'TC31', '8838242824', 'AADAMS GROUPS', 'TRICHY ', 'CALL EZCC', '1', '2020-10-21 05:13:37', '2020-10-21 05:13:37'),
(32, 20, 'MOHAMMED ', 'IMTHIYAS ', '', '', '', 'IMTHIYASMOHAMMED22@gmail.com', '', '', '9842655659', 'quickpos ', 'tirunelveli ', 'justdail ', '1', '2020-10-21 05:26:56', '2020-10-21 05:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `status` enum('1','2','3','') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_id`, `department_code`, `department_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'web_development', 'Web Development', '1', '2020-10-21 02:19:42', '2020-10-21 02:19:42'),
(2, '', 'marketing', 'Marketing', '1', '2020-10-21 02:19:58', '2020-10-21 02:19:58'),
(3, '', 'android_application', 'Android Application', '1', '2020-10-21 02:21:51', '2020-10-21 02:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(255) NOT NULL,
  `designations_id` varchar(255) NOT NULL,
  `designations_code` varchar(255) NOT NULL,
  `designations_name` varchar(255) NOT NULL,
  `department_reff_id` varchar(255) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designations_id`, `designations_code`, `designations_name`, `department_reff_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'php_developer', 'PHP Developer', '1', '1', '2020-10-21 02:20:39', '2020-10-21 02:20:39'),
(2, '', 'dealer', 'Dealer', '2', '1', '2020-10-21 02:21:19', '2020-10-21 02:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `employee_projects`
--

CREATE TABLE `employee_projects` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_role` varchar(255) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_projects`
--

INSERT INTO `employee_projects` (`id`, `user_id`, `project_id`, `project_name`, `project_role`, `status`, `created_at`, `updated_at`) VALUES
(3, '13', '1', 'MODANXT Shope Website', 'project_leader', '1', '2020-08-10 06:33:01', '2020-08-10 06:33:01'),
(4, '14', '1', 'MODANXT Shope Website', 'project_member', '1', '2020-08-10 06:33:01', '2020-08-10 06:33:01'),
(5, '12', '1', 'MODANXT Shope Website', 'project_member', '1', '2020-08-10 06:33:01', '2020-08-10 06:33:01'),
(6, '16', '4', 'EMS', 'project_member', '1', '2020-09-28 16:02:31', '2020-09-28 16:02:31'),
(7, '14', '4', 'EMS', 'project_member', '1', '2020-09-28 16:02:31', '2020-09-28 16:02:32'),
(8, '8', '5', 'Website (html,php)', 'project_member', '1', '2020-10-17 12:44:03', '2020-10-17 12:44:03'),
(9, '8', '6', 'Website (html,php)', 'project_member', '1', '2020-10-17 12:47:00', '2020-10-17 12:47:00'),
(10, '8', '7', 'Website (html,php)', 'project_member', '1', '2020-10-17 12:48:32', '2020-10-17 12:48:32'),
(11, '8', '8', 'DELIVERY APP ', 'project_member', '1', '2020-10-21 05:15:59', '2020-10-21 05:15:59'),
(12, '8', '9', 'CCTV CAMERA ', 'project_member', '1', '2020-10-21 05:16:47', '2020-10-21 05:16:47'),
(13, '9', '9', 'CCTV CAMERA ', 'project_member', '1', '2020-10-21 05:16:47', '2020-10-21 05:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `lead_id` int(7) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `lead_stage` text NOT NULL,
  `last_contact` datetime NOT NULL,
  `last_convo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lead_status` int(1) NOT NULL,
  `uq_reason` text NOT NULL,
  `notes` text NOT NULL,
  `tags` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sphone` varchar(50) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_address` text NOT NULL,
  `client_sources` varchar(255) NOT NULL,
  `time_zone` varchar(50) NOT NULL,
  `sales_owner` int(5) NOT NULL,
  `social_account` text NOT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  `move_status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `first_name`, `last_name`, `lead_stage`, `last_contact`, `last_convo`, `email`, `lead_status`, `uq_reason`, `notes`, `tags`, `phone`, `sphone`, `company_name`, `company_address`, `client_sources`, `time_zone`, `sales_owner`, `social_account`, `status`, `move_status`, `created_at`, `updated_at`) VALUES
(20, 'MOHAMMED ', 'IMTHIYAS ', '[[{\"status\":\"1\",\"date\":\"2020-10-21 10:56:19\"}],[{\"status\":\"2\",\"date\":\"2020-10-21 10:56:34\"}],[{\"status\":\"5\",\"date\":\"2020-10-21 10:56:46\"}]]', '0000-00-00 00:00:00', '', 'IMTHIYASMOHAMMED22@gmail.com', 0, '', '', '', '9842655659', '88388288127', 'quickpos ', 'tirunelveli ', 'justdail ', '186', 8, '[[\"\",\"\",\"\"]]', '1', 1, '2020-10-21 05:19:21', '2020-10-21 05:26:56'),
(21, 'MOHAMMED ', 'IMTHIYAS ', '', '0000-00-00 00:00:00', '', 'IMTHIYASMOHAMMED22@gmail.com', 3, '', '', '', '9842655659', '88388288127', 'quickpos ', 'tirunelveli ', 'justdail ', '186', 8, '[[\"\",\"\",\"\"]]', '1', 0, '2020-10-21 05:19:25', '2020-10-21 05:27:44'),
(22, 'MOHAMMED ', 'IMTHIYAS ', '', '0000-00-00 00:00:00', '', 'IMTHIYASMOHAMMED22@gmail.com', 3, '', '', '', '9842655659', '88388288127', 'quickpos ', 'tirunelveli ', 'justdail ', '186', 8, '[[\"\",\"\",\"\"]]', '1', 0, '2020-10-21 05:19:29', '2020-10-21 05:27:52'),
(23, 'MOHAMMED ', 'IMTHIYAS ', '', '0000-00-00 00:00:00', '', 'IMTHIYASMOHAMMED22@gmail.com', 3, '', '', '', '9842655659', '88388288127', 'quickpos ', 'tirunelveli ', 'justdail ', '186', 8, '[[\"https:\\/\\/facebook.com\\/12\",\"https:\\/\\/twitter.com\\/13\",\"https:\\/\\/linkedin.com\\/16\"]]', '1', 0, '2020-10-21 05:19:46', '2020-10-21 05:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `lead_appoinment`
--

CREATE TABLE `lead_appoinment` (
  `la_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `la_from` date NOT NULL,
  `from_time` time NOT NULL,
  `la_to` date NOT NULL,
  `to_time` time NOT NULL,
  `time_zone` varchar(100) NOT NULL,
  `la_where` varchar(100) NOT NULL,
  `outcome` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lead_call_log`
--

CREATE TABLE `lead_call_log` (
  `lc_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `call_type` varchar(100) NOT NULL,
  `outcome` varchar(100) NOT NULL,
  `associate_phone` varchar(100) NOT NULL,
  `a_name` varchar(100) NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lead_remainder`
--

CREATE TABLE `lead_remainder` (
  `lr_id` int(7) NOT NULL,
  `lead_id` int(7) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `notes` text NOT NULL,
  `created` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_remainder`
--

INSERT INTO `lead_remainder` (`lr_id`, `lead_id`, `date`, `time`, `notes`, `created`, `status`) VALUES
(1, 1, '2020-03-30', '05:30:00', 'Remainder', '2020-08-11 21:11:33', 1),
(2, 1, '2020-08-25', '05:27:00', '', '2020-08-24 19:26:43', 1),
(3, 7, '2020-09-01', '10:00:00', 'Send portfolio and pricing', '2020-08-31 21:30:10', 1),
(4, 7, '2020-09-14', '11:00:00', 'Follow-up call for mail confirmation and starting project', '2020-09-12 23:19:31', 1),
(5, 8, '2020-09-13', '11:00:00', '', '2020-09-12 23:23:19', 1),
(6, 8, '2020-09-13', '11:00:00', '', '2020-09-12 23:24:25', 1),
(7, 9, '2020-09-20', '10:30:00', '', '2020-09-12 23:28:22', 1),
(8, 10, '2020-09-13', '11:00:00', '', '2020-09-12 23:31:38', 1),
(9, 11, '2020-09-13', '11:00:00', '', '2020-09-12 23:42:03', 1),
(10, 12, '2020-09-13', '11:00:00', '', '2020-09-12 23:44:03', 1),
(11, 8, '2020-09-30', '09:10:00', 'remain for update', '2020-09-28 14:26:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_task`
--

CREATE TABLE `lead_task` (
  `lt_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `lt_from` date NOT NULL,
  `lt_to` date NOT NULL,
  `outcome` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead_task`
--

INSERT INTO `lead_task` (`lt_id`, `lead_id`, `title`, `description`, `lt_from`, `lt_to`, `outcome`, `created_at`) VALUES
(4, 13, 'erp design', 'tffhgg', '2020-09-28', '2020-09-28', 'Incoming', '2020-09-27 07:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `leaves_employees`
--

CREATE TABLE `leaves_employees` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `leave_from` timestamp NULL DEFAULT NULL,
  `leave_to` timestamp NULL DEFAULT NULL,
  `leave_no_of_days` varchar(255) NOT NULL,
  `remaining_leaves` varchar(255) NOT NULL,
  `return_date` timestamp NULL DEFAULT NULL,
  `leave_reason` text NOT NULL,
  `leave_status` enum('New','Approved','Declined','Pending') NOT NULL,
  `leave_approved_by` varchar(255) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leaves_employees`
--

INSERT INTO `leaves_employees` (`id`, `user_id`, `leave_type`, `leave_from`, `leave_to`, `leave_no_of_days`, `remaining_leaves`, `return_date`, `leave_reason`, `leave_status`, `leave_approved_by`, `status`, `created_at`, `updated_at`) VALUES
(27, '10', 'personal_leave', '2020-10-05 18:30:00', '2020-10-07 18:30:00', '2 ', '10', '2020-10-08 18:30:00', 'feaver', 'Approved', '', '1', '2020-09-24 05:50:07', '2020-09-24 05:50:48'),
(28, '10', 'sick_leave', '2020-09-30 18:30:00', '2020-10-03 18:30:00', '3 ', '9', '2020-10-04 18:30:00', 'feaver', 'Approved', '', '1', '2020-09-24 06:02:18', '2020-09-24 06:10:57'),
(29, '10', 'sick_leave', '2020-10-05 18:30:00', '2020-10-07 18:30:00', '2 ', '7', '2020-10-08 18:30:00', 'feaver', 'Approved', '', '1', '2020-09-24 06:14:16', '2020-09-24 07:14:01'),
(30, '', 'sick_leave', '2020-09-24 18:30:00', '2020-09-28 18:30:00', '4 ', '8', '2020-09-29 18:30:00', 'feaver', 'Approved', '', '1', '2020-09-24 07:22:50', '2020-09-30 05:48:12'),
(31, '9', 'sick_leave', '2020-09-29 18:30:00', '2020-09-30 18:30:00', '1 ', '11', '2020-10-04 18:30:00', 'feaver', 'Approved', '', '1', '2020-09-29 11:03:47', '2020-09-29 13:51:05'),
(39, '16', 'sick_leave', '2020-09-30 18:30:00', '2020-10-02 18:30:00', '2 ', '10', '2020-10-04 18:30:00', 'feaver', 'Approved', '', '1', '2020-09-30 05:47:35', '2020-09-30 05:47:54'),
(40, '19', 'sick_leave', '2020-09-30 18:30:00', '2020-10-04 18:30:00', '4 ', '8', '2020-10-05 18:30:00', 'feaver', 'Approved', '', '1', '2020-10-01 13:30:58', '2020-10-01 13:31:52'),
(41, '19', 'prime_leave', '2020-10-05 18:30:00', '2020-10-07 18:30:00', '2 ', '6', '2020-10-08 18:30:00', 'feaver', 'Approved', '', '1', '2020-10-01 13:32:44', '2020-10-01 13:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `card_number` bigint(20) NOT NULL,
  `card_exp_month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `card_exp_year` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ok | Error',
  `payment_response` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL COMMENT '1=Approved | 2=Declined | 3=Error | 4=Held for Review',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `item_name`, `item_number`, `item_price`, `item_price_currency`, `card_number`, `card_exp_month`, `card_exp_year`, `paid_amount`, `txn_id`, `payment_status`, `payment_response`, `created`, `modified`) VALUES
(1, 'kavin', 'smkavinit@gmail.com', 'Demo Product', 'PN12345', 1.00, 'USD', 4048345005865436, '10', '2021', '1', '62550233262', 'Ok', '1', '2020-09-09 01:11:40', '2020-09-09 01:11:40'),
(2, 'John', 'smkavinit@gmail.com', 'Demo Product', 'PN12345', 1.00, 'USD', 4048345005865436, '10', '2021', '1', '62550364977', 'Ok', '1', '2020-09-09 03:45:38', '2020-09-09 03:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_code` varchar(255) NOT NULL,
  `project_cliend_company_name` varchar(255) NOT NULL,
  `project_start_date` timestamp NULL DEFAULT NULL,
  `project_end_date` timestamp NULL DEFAULT NULL,
  `project_project_rate` varchar(255) NOT NULL,
  `project_cost_based` varchar(255) NOT NULL,
  `project_total_hours` varchar(255) NOT NULL,
  `project_priority` varchar(255) NOT NULL,
  `project_leaders` text NOT NULL,
  `project_members` text NOT NULL,
  `project_description` text NOT NULL,
  `project_images` text NOT NULL,
  `project_status` varchar(255) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `project_code`, `project_cliend_company_name`, `project_start_date`, `project_end_date`, `project_project_rate`, `project_cost_based`, `project_total_hours`, `project_priority`, `project_leaders`, `project_members`, `project_description`, `project_images`, `project_status`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Website (html,php)', 'PRG 001', '28', '2020-07-16 18:30:00', '2020-07-19 18:30:00', '0', 'hourly', '', 'high', '[]', '[\"8\"]', '<p>Free of cost <br></p>', '[]', 'processing', '1', '2020-10-17 12:44:03', '2020-10-17 12:44:03'),
(6, 'Website (html,php)', 'PRG 002', '29', '2020-09-22 18:30:00', '2020-09-25 18:30:00', '9000', 'fixed', '', 'high', '[]', '[\"8\"]', '<p>Commision base website </p><p>Bazeer appa&nbsp; rs.3000</p><p>natraj rs.6000 (server charge)<br></p>', '[]', 'processing', '1', '2020-10-17 12:47:00', '2020-10-17 12:47:00'),
(7, 'Website (html,php)', 'PRG 003', '30', '2020-10-09 18:30:00', '2020-10-16 18:30:00', '5000', 'fixed', '', 'high', '[]', '[\"8\"]', '<p>Advance received rs . 2500<br></p>', '[]', 'processing', '1', '2020-10-17 12:48:32', '2020-10-17 12:48:32'),
(8, 'DELIVERY APP ', 'D001', '31', '2020-10-20 18:30:00', '2020-11-02 18:30:00', '45000', 'fixed', '', 'medium', '[]', '[\"8\"]', '<p>RWEREW09YURO8YREWYORIU23E123<br></p>', '[]', 'processing', '1', '2020-10-21 05:15:59', '2020-10-21 05:15:59'),
(9, 'CCTV CAMERA ', 'CCT1', '31', '2020-10-20 18:30:00', '2020-10-20 18:30:00', '20000', 'hourly', '', 'high', '[]', '[\"8\",\"9\"]', '<p>&nbsp;&nbsp;&nbsp; 4 CA<br></p>', '[]', 'processing', '1', '2020-10-21 05:16:47', '2020-10-21 05:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `project_cost_update`
--

CREATE TABLE `project_cost_update` (
  `cost_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `update_cost` varchar(100) NOT NULL,
  `update_file` varchar(500) NOT NULL,
  `update_notes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_cost_update`
--

INSERT INTO `project_cost_update` (`cost_id`, `project_id`, `update_cost`, `update_file`, `update_notes`, `created_at`) VALUES
(28, 1, '1000', '[\"checkmark.png\"]', 'pdf , image', '2020-10-01 11:48:30'),
(29, 7, '0', '[\"WhatsApp Unknown 2020-10-18 at 8.16.25 PM.zip\",\"WhatsApp Unknown 2020-10-18 at 8.18.46 PM.zip\"]', 'Changes requiired', '2020-10-21 02:34:42'),
(30, 5, '34567', '[\"26566.eps\"]', 'redtfghjk', '2020-11-17 04:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` int(255) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `project_message` text NOT NULL,
  `files` text NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_maintenance`
--

CREATE TABLE `project_maintenance` (
  `maintenance_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `project_amc` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_maintenance`
--

INSERT INTO `project_maintenance` (`maintenance_id`, `project_id`, `start_date`, `start_time`, `end_date`, `end_time`, `project_amc`, `created_at`) VALUES
(6, 1, '2020-09-28', '09:12:00', '2020-10-02', '19:11:00', '10000', '2020-09-28 14:42:11'),
(7, 4, '2020-09-30', '16:30:00', '2020-11-28', '02:33:00', '20000', '2020-09-29 10:04:22'),
(8, 7, '2020-10-10', '15:00:00', '2020-10-17', '09:00:00', '0', '2020-10-21 02:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_plans`
--

CREATE TABLE `subscribe_plans` (
  `id` int(11) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `users` varchar(100) DEFAULT NULL,
  `display` varchar(100) DEFAULT NULL,
  `storage` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribe_plans`
--

INSERT INTO `subscribe_plans` (`id`, `price`, `name`, `type`, `users`, `display`, `storage`, `description`, `user_id`, `status`, `created_at`) VALUES
(1, '0', 'Trail', 'Monthly', '10', '100', '5 GB', 'Basic plans', 8, 1, '2021-02-26 12:06:36'),
(2, '1000', 'Professional', 'Monthly', '30', '200', '100 GB', 'dscription', 8, 1, '2021-02-26 12:10:50'),
(3, '0', 'free', 'Yearly', '100', '100', NULL, 'Yearly', 8, 1, '2021-02-26 12:28:30'),
(4, '10000', 'Professional', 'Yearly', '100', '1000', '5 GB', 'Yearly', 8, 1, '2021-02-27 05:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(255) NOT NULL,
  `task_code` varchar(255) NOT NULL,
  `task_name` text NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `task_created_by` varchar(255) NOT NULL,
  `task_status` varchar(255) NOT NULL,
  `status` enum('1','2','3') DEFAULT NULL,
  `task_assign_status` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_board_list`
--

CREATE TABLE `tasks_board_list` (
  `id` int(255) NOT NULL,
  `assing_order_id` varchar(255) NOT NULL,
  `task_board_code` varchar(255) NOT NULL,
  `task_board_name` varchar(255) NOT NULL,
  `task_board_color` varchar(255) NOT NULL,
  `icon_color` varchar(255) NOT NULL,
  `task_board_description` text NOT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `task_tickets`
--

CREATE TABLE `task_tickets` (
  `task_ticket_id` int(255) NOT NULL,
  `task_id` varchar(255) NOT NULL,
  `task_subject` text NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `ticket_id` varchar(255) NOT NULL,
  `task_assign` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `task_priority` enum('high','medium','low') NOT NULL,
  `task_asign_by` varchar(255) NOT NULL,
  `task_followers` text NOT NULL,
  `task_description` text NOT NULL,
  `task_files` text NOT NULL,
  `task_status` varchar(255) NOT NULL,
  `ticket_due_date` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') NOT NULL,
  `complete_percentage` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `todo_id` int(255) NOT NULL,
  `todo_code` varchar(255) NOT NULL,
  `todo_name` varchar(255) NOT NULL,
  `todo_date` timestamp NULL DEFAULT NULL,
  `todo_created_by` varchar(255) NOT NULL,
  `todo_assign_to` varchar(255) NOT NULL,
  `todo_assign_by` varchar(255) NOT NULL,
  `todo_parent_id` varchar(255) NOT NULL,
  `task_status` varchar(255) NOT NULL,
  `task_remainter` timestamp NULL DEFAULT NULL,
  `task_remainter_mode` varchar(255) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`todo_id`, `todo_code`, `todo_name`, `todo_date`, `todo_created_by`, `todo_assign_to`, `todo_assign_by`, `todo_parent_id`, `task_status`, `task_remainter`, `task_remainter_mode`, `status`, `created_at`, `updated_at`) VALUES
(32, 'timesheet_to_surej', 'timesheet to surej', '2020-10-21 05:22:00', '8', '8', '8', '0', 'pending', NULL, '', '1', '2020-10-21 05:22:40', '2020-10-21 05:22:56'),
(33, 'KVM_DEMO', 'KVM DEMO', '2020-12-15 13:16:00', '8', '9', '8', '0', 'pending', '2020-12-14 13:17:00', 'email', '1', '2020-12-14 13:16:22', '2020-12-14 13:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `todo_commets`
--

CREATE TABLE `todo_commets` (
  `comment_id` int(255) NOT NULL,
  `todo_id` varchar(255) NOT NULL,
  `comments_to` varchar(255) NOT NULL,
  `comments_from` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo_commets`
--

INSERT INTO `todo_commets` (`comment_id`, `todo_id`, `comments_to`, `comments_from`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '', '8', 'test', '3', '2020-08-10 05:58:50', '2020-08-10 12:34:07'),
(2, '1', '', '8', 'hola', '3', '2020-08-10 06:27:24', '2020-08-10 12:34:07'),
(3, '6', '', '14', 'test st 1', '1', '2020-08-10 12:35:48', '2020-08-10 12:35:48'),
(4, '7', '', '8', 'dont forget', '3', '2020-08-11 21:20:59', '2020-08-11 21:22:00'),
(5, '7', '', '8', 'call me for update\r\n', '3', '2020-08-11 21:21:15', '2020-08-11 21:22:00'),
(6, '7', '', '8', 'call me for update\r\n', '3', '2020-08-11 21:21:17', '2020-08-11 21:22:00'),
(7, '7', '', '8', 'call me for update\r\n', '3', '2020-08-11 21:21:17', '2020-08-11 21:22:00'),
(8, '32', '', '8', 'ncnvvbv', '1', '2020-10-21 05:23:16', '2020-10-21 05:23:16'),
(9, '32', '', '9', 'ggv\r\n', '1', '2020-10-21 05:31:49', '2020-10-21 05:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `mob_reg_code` varchar(100) DEFAULT NULL,
  `mob_reg_code_status` int(11) NOT NULL DEFAULT 2,
  `user_fname` varchar(255) DEFAULT NULL,
  `user_lname` varchar(255) DEFAULT NULL,
  `user_login_name` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `user_login_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_role` enum('1','2','3','4') DEFAULT NULL COMMENT '''1-admin'',''2-developer'',''3-markating''',
  `joining_date` timestamp NULL DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `status` enum('1','2','3') DEFAULT NULL COMMENT '''1-Active'',''2-Inactive'',''3-Delete''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `mob_reg_code`, `mob_reg_code_status`, `user_fname`, `user_lname`, `user_login_name`, `profile_picture`, `user_login_email`, `user_password`, `user_role`, `joining_date`, `phone_no`, `employee_id`, `department`, `designation`, `status`, `created_at`, `updated_at`, `ip_address`) VALUES
(8, 'KGF4yshBC', 1, 'Natraj', 'K', 'Natraj', '', 'admin@123.com', '123456', '1', NULL, '8220624101', '1', NULL, NULL, '1', '2021-02-26 11:25:03', '2021-02-26 11:25:03', '::1'),
(22, NULL, 2, 'Super Admin', 'k', 'Super Admin', '', 'super@123.com', '123456', '1', NULL, '8220624101', '10003', '', '', '1', '2021-02-17 22:02:04', '2021-02-17 09:32:04', '124.123.105.90'),
(24, NULL, 2, NULL, NULL, 'Super 2', NULL, 'krajbook619@gmail.com', '123456', '2', NULL, '8220624101', NULL, NULL, NULL, '1', '2021-02-26 09:50:20', '2021-02-26 09:50:20', '::1'),
(30, 'j4ySh2Ja', 1, NULL, NULL, 'jaghan', NULL, 'jaghan@mail.in', '123456', '2', NULL, '8220624101', NULL, NULL, NULL, '2', '2021-02-23 10:32:34', '2021-02-23 10:32:34', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets_apps`
--
ALTER TABLE `assets_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets_schedule`
--
ALTER TABLE `assets_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets_tags`
--
ALTER TABLE `assets_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_in_out`
--
ALTER TABLE `check_in_out`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_projects`
--
ALTER TABLE `employee_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`lead_id`);

--
-- Indexes for table `lead_appoinment`
--
ALTER TABLE `lead_appoinment`
  ADD PRIMARY KEY (`la_id`);

--
-- Indexes for table `lead_call_log`
--
ALTER TABLE `lead_call_log`
  ADD PRIMARY KEY (`lc_id`);

--
-- Indexes for table `lead_remainder`
--
ALTER TABLE `lead_remainder`
  ADD PRIMARY KEY (`lr_id`);

--
-- Indexes for table `lead_task`
--
ALTER TABLE `lead_task`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indexes for table `leaves_employees`
--
ALTER TABLE `leaves_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_cost_update`
--
ALTER TABLE `project_cost_update`
  ADD PRIMARY KEY (`cost_id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_maintenance`
--
ALTER TABLE `project_maintenance`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `subscribe_plans`
--
ALTER TABLE `subscribe_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tasks_board_list`
--
ALTER TABLE `tasks_board_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_tickets`
--
ALTER TABLE `task_tickets`
  ADD PRIMARY KEY (`task_ticket_id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`todo_id`);

--
-- Indexes for table `todo_commets`
--
ALTER TABLE `todo_commets`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets_apps`
--
ALTER TABLE `assets_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `assets_schedule`
--
ALTER TABLE `assets_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `assets_tags`
--
ALTER TABLE `assets_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `check_in_out`
--
ALTER TABLE `check_in_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_projects`
--
ALTER TABLE `employee_projects`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `lead_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `lead_appoinment`
--
ALTER TABLE `lead_appoinment`
  MODIFY `la_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_call_log`
--
ALTER TABLE `lead_call_log`
  MODIFY `lc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_remainder`
--
ALTER TABLE `lead_remainder`
  MODIFY `lr_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lead_task`
--
ALTER TABLE `lead_task`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leaves_employees`
--
ALTER TABLE `leaves_employees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_cost_update`
--
ALTER TABLE `project_cost_update`
  MODIFY `cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_maintenance`
--
ALTER TABLE `project_maintenance`
  MODIFY `maintenance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscribe_plans`
--
ALTER TABLE `subscribe_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_board_list`
--
ALTER TABLE `tasks_board_list`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_tickets`
--
ALTER TABLE `task_tickets`
  MODIFY `task_ticket_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `todo_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `todo_commets`
--
ALTER TABLE `todo_commets`
  MODIFY `comment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
