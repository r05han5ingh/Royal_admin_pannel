-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royal2`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O-', '2023-12-31 02:22:24', '2023-12-31 02:22:24'),
(2, 'O+', '2023-12-31 02:22:24', '2023-12-31 02:22:24'),
(3, 'A+', '2023-12-31 02:22:24', '2023-12-31 02:22:24'),
(4, 'A-', '2023-12-31 02:22:24', '2023-12-31 02:22:24'),
(5, 'B+', '2023-12-31 02:22:24', '2023-12-31 02:22:24'),
(6, 'B-', '2023-12-31 02:22:24', '2023-12-31 02:22:24'),
(7, 'AB+', '2023-12-31 02:22:24', '2023-12-31 02:22:24'),
(8, 'AB-', '2023-12-31 02:22:24', '2023-12-31 02:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `my_class_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `book_type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `total_copies` int(11) DEFAULT NULL,
  `issued_copies` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `returned` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_types`
--

CREATE TABLE `class_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_types`
--

INSERT INTO `class_types` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Twelve Months', 'C', NULL, NULL),
(2, 'Eighteen Months', 'PN', NULL, NULL),
(3, 'Six Months', 'N', NULL, NULL),
(4, 'Three Months', 'P', NULL, NULL),
(5, 'Five Months', 'J', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dorms`
--

CREATE TABLE `dorms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dorms`
--

INSERT INTO `dorms` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Faith Hostel', NULL, NULL, NULL),
(2, 'Peace Hostel', NULL, NULL, NULL),
(3, 'Grace Hostel', NULL, NULL, NULL),
(4, 'Success Hostel', NULL, NULL, NULL),
(5, 'Trust Hostel', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `term` tinyint(4) NOT NULL,
  `year` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `term`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Advanced Diploma in Information Technology', 3, '2024-2025', '2023-12-31 02:59:17', '2023-12-31 02:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `exam_records`
--

CREATE TABLE `exam_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `total` int(11) DEFAULT NULL,
  `ave` varchar(255) DEFAULT NULL,
  `class_ave` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `af` varchar(255) DEFAULT NULL,
  `ps` varchar(255) DEFAULT NULL,
  `p_comment` varchar(255) DEFAULT NULL,
  `t_comment` varchar(255) DEFAULT NULL,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_records`
--

INSERT INTO `exam_records` (`id`, `exam_id`, `student_id`, `my_class_id`, `section_id`, `total`, `ave`, `class_ave`, `pos`, `af`, `ps`, `p_comment`, `t_comment`, `year`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:01:09', '2023-12-31 03:01:09'),
(2, 1, 23, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:01:09', '2023-12-31 03:01:09'),
(3, 1, 24, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:01:09', '2023-12-31 03:01:09'),
(4, 1, 18, 1, 1, 0, '0', '12.2', 2, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:19'),
(5, 1, 19, 1, 1, 0, '0', '12.2', 2, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:19'),
(6, 1, 20, 1, 1, 0, '0', '12.2', 2, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:19'),
(7, 1, 21, 1, 1, 0, '0', '12.2', 2, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:19'),
(8, 1, 56, 1, 1, 122, '61', '12.2', 1, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `class_type_id` int(10) UNSIGNED DEFAULT NULL,
  `mark_from` tinyint(4) NOT NULL,
  `mark_to` tinyint(4) NOT NULL,
  `remark` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `class_type_id`, `mark_from`, `mark_to`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, 70, 100, 'Excellent', NULL, NULL),
(2, 'B', NULL, 60, 69, 'Very Good', NULL, NULL),
(3, 'C', NULL, 50, 59, 'Good', NULL, NULL),
(4, 'D', NULL, 45, 49, 'Pass', NULL, NULL),
(5, 'E', NULL, 40, 44, 'Poor', NULL, NULL),
(6, 'F', NULL, 0, 39, 'Fail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lgas`
--

CREATE TABLE `lgas` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lgas`
--

INSERT INTO `lgas` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Faridabad', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `t1` int(11) DEFAULT NULL,
  `t2` int(11) DEFAULT NULL,
  `t3` int(11) DEFAULT NULL,
  `t4` int(11) DEFAULT NULL,
  `tca` int(11) DEFAULT NULL,
  `exm` int(11) DEFAULT NULL,
  `tex1` int(11) DEFAULT NULL,
  `tex2` int(11) DEFAULT NULL,
  `tex3` int(11) DEFAULT NULL,
  `sub_pos` tinyint(4) DEFAULT NULL,
  `cum` int(11) DEFAULT NULL,
  `cum_ave` varchar(255) DEFAULT NULL,
  `grade_id` int(10) UNSIGNED DEFAULT NULL,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `subject_id`, `my_class_id`, `section_id`, `exam_id`, `t1`, `t2`, `t3`, `t4`, `tca`, `exm`, `tex1`, `tex2`, `tex3`, `sub_pos`, `cum`, `cum_ave`, `grade_id`, `year`, `created_at`, `updated_at`) VALUES
(1, 22, 2, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:01:09', '2023-12-31 03:01:09'),
(2, 23, 2, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:01:09', '2023-12-31 03:01:09'),
(3, 24, 2, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:01:09', '2023-12-31 03:01:09'),
(4, 22, 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:02:48', '2023-12-31 03:02:48'),
(5, 23, 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:02:48', '2023-12-31 03:02:48'),
(6, 24, 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:02:48', '2023-12-31 03:02:48'),
(7, 18, 2, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:00'),
(8, 19, 2, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:00'),
(9, 20, 2, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:00'),
(10, 21, 2, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:00'),
(11, 56, 2, 1, 1, 1, 40, 10, NULL, NULL, 50, NULL, NULL, NULL, 50, 1, NULL, NULL, 3, '2024-2025', '2023-12-31 03:03:48', '2023-12-31 03:04:00'),
(12, 18, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:04:07', '2023-12-31 03:04:19'),
(13, 19, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:04:07', '2023-12-31 03:04:19'),
(14, 20, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:04:07', '2023-12-31 03:04:19'),
(15, 21, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, '2024-2025', '2023-12-31 03:04:07', '2023-12-31 03:04:19'),
(16, 56, 1, 1, 1, 1, 60, 12, NULL, NULL, 72, NULL, NULL, NULL, 72, 1, NULL, NULL, 1, '2024-2025', '2023-12-31 03:04:07', '2023-12-31 03:04:19');

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
(1, '2013_09_20_121733_create_blood_groups_table', 1),
(2, '2013_09_22_124750_create_states_table', 1),
(3, '2013_09_22_124806_create_lgas_table', 1),
(4, '2013_09_26_121148_create_nationalities_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_09_20_100249_create_user_types_table', 1),
(8, '2018_09_20_150906_create_class_types_table', 1),
(9, '2018_09_22_073005_create_my_classes_table', 1),
(10, '2018_09_22_073526_create_sections_table', 1),
(11, '2018_09_22_080555_create_settings_table', 1),
(12, '2018_09_22_081302_create_subjects_table', 1),
(13, '2018_09_22_151514_create_student_records_table', 1),
(14, '2018_09_26_124241_create_dorms_table', 1),
(15, '2018_10_04_224910_create_exams_table', 1),
(16, '2018_10_06_224846_create_marks_table', 1),
(17, '2018_10_06_224944_create_grades_table', 1),
(18, '2018_10_06_225007_create_pins_table', 1),
(19, '2018_10_18_205550_create_skills_table', 1),
(20, '2018_10_18_205842_create_exam_records_table', 1),
(21, '2018_10_31_191358_create_books_table', 1),
(22, '2018_10_31_192540_create_book_requests_table', 1),
(23, '2018_11_01_132115_create_staff_records_table', 1),
(24, '2018_11_03_210758_create_payments_table', 1),
(25, '2018_11_03_210817_create_payment_records_table', 1),
(26, '2018_11_06_083707_create_receipts_table', 1),
(27, '2018_11_27_180401_create_time_tables_table', 1),
(28, '2019_09_22_142514_create_fks', 1),
(29, '2019_09_26_132227_create_promotions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_classes`
--

CREATE TABLE `my_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `class_type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_classes`
--

INSERT INTO `my_classes` (`id`, `name`, `class_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Advanced Diploma In Computer Application', 3, NULL, NULL),
(2, 'Advanced Diploma In Information Technology & Management', 3, NULL, NULL),
(3, 'Diploma In Computer Application', 3, NULL, NULL),
(4, 'CCC (Computer Concept Courses)', 4, NULL, NULL),
(5, 'Autocad', 4, NULL, NULL),
(6, 'Tally Erp 9', 5, NULL, NULL),
(7, 'Tally Prime', 5, NULL, NULL),
(8, 'Corel Draw', NULL, NULL, NULL),
(9, 'Photoshop', NULL, NULL, NULL),
(10, 'Computer Fundament (MS Word, Excel, PPT)', NULL, NULL, NULL),
(11, 'Web Development', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'India', '2023-12-31 08:06:00', '2023-12-31 08:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL DEFAULT 'cash',
  `my_class_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `ref_no` varchar(100) DEFAULT NULL,
  `amt_paid` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pins`
--

CREATE TABLE `pins` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(40) NOT NULL,
  `used` varchar(255) NOT NULL DEFAULT '0',
  `times_used` varchar(255) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `from_class` int(10) UNSIGNED NOT NULL,
  `from_section` int(10) UNSIGNED NOT NULL,
  `to_class` int(10) UNSIGNED NOT NULL,
  `to_section` int(10) UNSIGNED NOT NULL,
  `grad` tinyint(4) NOT NULL,
  `from_session` varchar(255) NOT NULL,
  `to_session` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `pr_id` int(10) UNSIGNED NOT NULL,
  `amt_paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `my_class_id`, `teacher_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Gold', 1, NULL, 1, NULL, NULL),
(2, 'Diamond', 1, NULL, 0, NULL, NULL),
(3, 'Silver', 2, NULL, 1, NULL, NULL),
(4, 'Lemon', 2, NULL, 0, NULL, NULL),
(5, 'Bronze', 3, NULL, 1, NULL, NULL),
(6, 'Silver', 4, NULL, 1, NULL, NULL),
(7, 'Diamond', 5, NULL, 1, NULL, NULL),
(8, 'Blue', 6, NULL, 1, NULL, NULL),
(9, 'A', 7, NULL, 1, NULL, NULL),
(10, 'A', 8, NULL, 1, NULL, NULL),
(11, 'A', 9, NULL, 1, NULL, NULL),
(12, 'A', 10, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'current_session', '2024-2025', NULL, NULL),
(2, 'system_title', 'Royal Institute of IT & Management', NULL, NULL),
(3, 'system_name', 'Royal Institute of IT & Management', NULL, NULL),
(4, 'term_ends', '7/10/2024', NULL, NULL),
(5, 'term_begins', '7/10/2025', NULL, NULL),
(6, 'phone', '9910481373', NULL, NULL),
(7, 'address', 'Shop no.:2442 22feet road S.G.M Nagar Faridabad', NULL, NULL),
(8, 'system_email', 'info.riitm@gmail.com', NULL, NULL),
(9, 'alt_email', '', NULL, NULL),
(10, 'email_host', '', NULL, NULL),
(11, 'email_pass', '', NULL, NULL),
(12, 'lock_exam', '0', NULL, NULL),
(13, 'logo', '', NULL, NULL),
(14, 'next_term_fees_j', '20000', NULL, NULL),
(15, 'next_term_fees_pn', '25000', NULL, NULL),
(16, 'next_term_fees_p', '25000', NULL, NULL),
(17, 'next_term_fees_n', '25600', NULL, NULL),
(18, 'next_term_fees_s', '15600', NULL, NULL),
(19, 'next_term_fees_c', '1600', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `skill_type` varchar(255) NOT NULL,
  `class_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `skill_type`, `class_type`, `created_at`, `updated_at`) VALUES
(1, 'PUNCTUALITY', 'AF', NULL, NULL, NULL),
(2, 'NEATNESS', 'AF', NULL, NULL, NULL),
(3, 'HONESTY', 'AF', NULL, NULL, NULL),
(4, 'RELIABILITY', 'AF', NULL, NULL, NULL),
(5, 'RELATIONSHIP WITH OTHERS', 'AF', NULL, NULL, NULL),
(6, 'POLITENESS', 'AF', NULL, NULL, NULL),
(7, 'ALERTNESS', 'AF', NULL, NULL, NULL),
(8, 'HANDWRITING', 'PS', NULL, NULL, NULL),
(9, 'GAMES & SPORTS', 'PS', NULL, NULL, NULL),
(10, 'DRAWING & ARTS', 'PS', NULL, NULL, NULL),
(11, 'PAINTING', 'PS', NULL, NULL, NULL),
(12, 'CONSTRUCTION', 'PS', NULL, NULL, NULL),
(13, 'MUSICAL SKILLS', 'PS', NULL, NULL, NULL),
(14, 'FLEXIBILITY', 'PS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_records`
--

CREATE TABLE `staff_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `emp_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Haryana', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_records`
--

CREATE TABLE `student_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `adm_no` varchar(30) DEFAULT NULL,
  `my_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `dorm_id` int(10) UNSIGNED DEFAULT NULL,
  `dorm_room_no` varchar(255) DEFAULT NULL,
  `session` varchar(255) NOT NULL,
  `house` varchar(255) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `year_admitted` varchar(255) DEFAULT NULL,
  `grad` tinyint(4) NOT NULL DEFAULT 0,
  `grad_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_records`
--

INSERT INTO `student_records` (`id`, `user_id`, `my_class_id`, `section_id`, `adm_no`, `my_parent_id`, `dorm_id`, `dorm_room_no`, `session`, `house`, `age`, `year_admitted`, `grad`, `grad_date`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 1, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:28', '2023-12-31 02:22:28'),
(2, 19, 1, 1, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(3, 20, 1, 1, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(4, 21, 1, 1, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(5, 22, 1, 2, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(6, 23, 1, 2, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(7, 24, 1, 2, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(8, 25, 2, 3, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(9, 26, 2, 3, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(10, 27, 2, 3, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(11, 28, 2, 4, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(12, 29, 2, 4, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(13, 30, 2, 4, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(14, 31, 3, 5, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(15, 32, 3, 5, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(16, 33, 3, 5, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(17, 34, 4, 6, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(18, 35, 4, 6, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(19, 36, 4, 6, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(20, 37, 5, 7, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(21, 38, 5, 7, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(22, 39, 5, 7, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(23, 40, 6, 8, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(24, 41, 6, 8, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(25, 42, 6, 8, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(26, 43, 7, 9, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(27, 44, 7, 9, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(28, 45, 7, 9, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(29, 46, 8, 10, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(30, 47, 8, 10, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(31, 48, 8, 10, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(32, 49, 9, 11, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(33, 50, 9, 11, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(34, 51, 9, 11, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(35, 52, 10, 12, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(36, 53, 10, 12, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(37, 54, 10, 12, NULL, NULL, NULL, NULL, '2024-2025', NULL, NULL, NULL, 0, NULL, '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(38, 55, 6, 8, 'RIITM/J/2023/102', 9, 1, NULL, '2024-2025', NULL, NULL, '2023', 0, NULL, '2023-12-31 02:40:29', '2023-12-31 02:40:29'),
(39, 56, 1, 1, 'RIITM/N/2023/102', NULL, NULL, NULL, '2024-2025', NULL, NULL, '2023', 0, NULL, '2023-12-31 02:58:50', '2023-12-31 02:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `slug`, `my_class_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Computer Fundamantal', 'Basic', 1, 7, NULL, '2023-12-31 03:00:17'),
(2, '(MS Word, Excel, PPT)', 'Basic', 1, 7, NULL, '2023-12-31 03:00:50'),
(3, 'English Language', 'Eng', 2, 3, NULL, NULL),
(4, 'Mathematics', 'Math', 2, 3, NULL, NULL),
(5, 'English Language', 'Eng', 3, 3, NULL, NULL),
(6, 'Mathematics', 'Math', 3, 3, NULL, NULL),
(7, 'English Language', 'Eng', 4, 3, NULL, NULL),
(8, 'Mathematics', 'Math', 4, 3, NULL, NULL),
(9, 'English Language', 'Eng', 5, 3, NULL, NULL),
(10, 'Mathematics', 'Math', 5, 3, NULL, NULL),
(11, 'English Language', 'Eng', 6, 3, NULL, NULL),
(12, 'Mathematics', 'Math', 6, 3, NULL, NULL),
(13, 'English Language', 'Eng', 7, 3, NULL, NULL),
(14, 'Mathematics', 'Math', 7, 3, NULL, NULL),
(15, 'English Language', 'Eng', 8, 3, NULL, NULL),
(16, 'Mathematics', 'Math', 8, 3, NULL, NULL),
(17, 'English Language', 'Eng', 9, 3, NULL, NULL),
(18, 'Mathematics', 'Math', 9, 3, NULL, NULL),
(19, 'English Language', 'Eng', 10, 3, NULL, NULL),
(20, 'Mathematics', 'Math', 10, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `ttr_id` int(10) UNSIGNED NOT NULL,
  `hour_from` tinyint(4) NOT NULL,
  `min_from` varchar(2) NOT NULL,
  `meridian_from` varchar(2) NOT NULL,
  `hour_to` tinyint(4) NOT NULL,
  `min_to` varchar(2) NOT NULL,
  `meridian_to` varchar(2) NOT NULL,
  `time_from` varchar(100) NOT NULL,
  `time_to` varchar(100) NOT NULL,
  `timestamp_from` varchar(50) NOT NULL,
  `timestamp_to` varchar(50) NOT NULL,
  `full` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `ttr_id` int(10) UNSIGNED NOT NULL,
  `ts_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_date` varchar(50) DEFAULT NULL,
  `timestamp_from` varchar(100) NOT NULL,
  `timestamp_to` varchar(100) NOT NULL,
  `day` varchar(50) DEFAULT NULL,
  `day_num` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_table_records`
--

CREATE TABLE `time_table_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `year` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'http://localhost/global_assets/images/user.png',
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `bg_id` int(10) UNSIGNED DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `lga_id` int(10) UNSIGNED DEFAULT NULL,
  `nal_id` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `code`, `username`, `user_type`, `dob`, `gender`, `photo`, `phone`, `phone2`, `bg_id`, `state_id`, `lga_id`, `nal_id`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Royal', 'info.riitm@gmail.com', 'GWOKI236E1', 'Royal', 'super_admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ceQj6kR87puLJiipbpEdf.3bmUO5jZoTJ8Q1201YqHgsnPeulhENq', 's7x9WVi3mkElTdIUv4RpxUQQD6kbxDaOEsVLxe7lXJNq2FHkSVphmB0TMjr3', NULL, NULL),
(2, 'Admin', '1info.riitm@gmail.com', 'IBXLTBNFLU', 'admin', 'admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ceQj6kR87puLJiipbpEdf.3bmUO5jZoTJ8Q1201YqHgsnPeulhENq', 'UUbOyeYJBs', NULL, NULL),
(3, 'Teacher Chike', 'teacher@teacher.com', 'QFNZ3XMZUI', 'teacher', 'teacher', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ceQj6kR87puLJiipbpEdf.3bmUO5jZoTJ8Q1201YqHgsnPeulhENq', 'GSXWyofFzZ', NULL, NULL),
(4, 'Parent Kaba', 'parent@parent.com', 'XITTGFFV34', 'parent', 'parent', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ceQj6kR87puLJiipbpEdf.3bmUO5jZoTJ8Q1201YqHgsnPeulhENq', 'iarhR3x06M', NULL, NULL),
(5, 'Accountant Jeff', 'accountant@accountant.com', 'Y25PHJU75Y', 'accountant', 'accountant', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ceQj6kR87puLJiipbpEdf.3bmUO5jZoTJ8Q1201YqHgsnPeulhENq', 'ysasd9jB2z', NULL, NULL),
(6, 'Admin 1', 'admin1@admin.com', 'YFHDBYCKOU', 'admin1', 'admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9QC/LfNx3XeeZpieM6CLcOX45WjPMRzUXJ/5Ft8LL1sAH62wc3HNa', 'F8RK1YRMAW', NULL, NULL),
(7, 'Teacher 1', 'teacher1@teacher.com', 'DVRTGUCRZH', 'teacher1', 'teacher', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oyzu.yHBdtGe8R5o/cuwD.cspxm0Jf/KFax26LugY7ovSRFVnxJ0W', 'CEnfBYUcO8', NULL, NULL),
(8, 'Accountant 1', 'accountant1@accountant.com', 'LVRSVONAQP', 'accountant1', 'accountant', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uefezKULa1ry/bzesEnSDu7vlqBOE2.vMwyXfNOwd3la9SmAj6HuK', 'plWLr8ZJi0', NULL, NULL),
(9, 'Parent 1', 'parent1@parent.com', 'RRTMTNWF8L', 'parent1', 'parent', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qVRnOd5FYO9ULoVzq5UHae5OBXp293rRg2hBzEpR9ZSXFiIW1S7Xe', '1oeeG5Qbpi', NULL, NULL),
(10, 'Admin 2', 'admin2@admin.com', 'KXEARUXGTB', 'admin2', 'admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ee2fgtVRnFih4Zcv5tPotukGSJyBDAKqEWv0vRbu6Vju29T7vSFpu', 'B65pjBDPou', NULL, NULL),
(11, 'Teacher 2', 'teacher2@teacher.com', 'IBLU2ONNAU', 'teacher2', 'teacher', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LULT7p9b5W2tv2jOx2u8Uu1KkxHl6aiq1q01dvlxi7/rE/mdXUdXK', 'akFeDHcQUi', NULL, NULL),
(12, 'Accountant 2', 'accountant2@accountant.com', 'BFY0BZ0Z0M', 'accountant2', 'accountant', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lB/tQSUo8MjYE9oGp.KsMeUJ5Of4rKuzFkjW9qJEz.wHInSEBa/oi', 'aMNSF8dp9h', NULL, NULL),
(13, 'Parent 2', 'parent2@parent.com', 'MNL8IAKYY7', 'parent2', 'parent', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mDzScZ/ZKlM2VOZIQoq.texJ9CrlrHETV.T876jZEeqjbfh/8XyrS', 'ZkFzGlPMXL', NULL, NULL),
(14, 'Admin 3', 'admin3@admin.com', 'YYSVWHTTFB', 'admin3', 'admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NHJYWcbR2m35h8pwexWD9efB/.O1SSwkLvjqwjF5iKiDrDgPjO9eC', 'rzdNKIfxgi', NULL, NULL),
(15, 'Teacher 3', 'teacher3@teacher.com', 'P7TVWCZYQ7', 'teacher3', 'teacher', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MvCMbXYlPSwix372Zx.x8..7XrMJf5Z0aUAnJMpe0cU2nmLiDIlJO', 'gX9yP66dSq', NULL, NULL),
(16, 'Accountant 3', 'accountant3@accountant.com', 'KHJ1X7POXS', 'accountant3', 'accountant', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/r2XLKkTZYdiXXMJHd4QdOMHj0DoVChIeqguQu9r76sUSMs/8a08q', 'pdylJ8vykF', NULL, NULL),
(17, 'Parent 3', 'parent3@parent.com', 'HTYTA6SH51', 'parent3', 'parent', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cdDMb2/LU/26b8ozV7UuK.h5CEr16FIunj01AmInR7ESxwxf/bVAu', 'rZSakanu8o', NULL, NULL),
(18, 'Student CJ', 'student@student.com', 'MKGQ6JG66W', 'student', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$I5wNklMDa1TTNVeB7.of6eQriXncGnJToxBTF7pyHeW/qKAE3dGCC', 'V4qnOdwrmt', '2023-12-31 02:22:28', '2023-12-31 02:22:28'),
(19, 'Agustina Waters', 'rice.mohammad@example.com', 'FL53ZACAVL', 'laura.gleason', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D3dAvynhVcPWApO4GrKr3.yEmdeUJcBHewU6zOBNrJyfiNK27avWK', 'cCAq8PHQyb', '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(20, 'Breanna Pfeffer', 'lmarks@example.org', 'H7K30IOAVR', 'jschmidt', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D3dAvynhVcPWApO4GrKr3.yEmdeUJcBHewU6zOBNrJyfiNK27avWK', 'PCZnGMGjpq', '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(21, 'Ms. Modesta Bergstrom', 'swift.lou@example.com', '9AFDVQUAEY', 'christiansen.abdiel', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D3dAvynhVcPWApO4GrKr3.yEmdeUJcBHewU6zOBNrJyfiNK27avWK', 'MbuJek7hvv', '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(22, 'Victor Hagenes', 'flatley.estrella@example.com', 'BKAKNIQ7ZV', 'antonina91', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NfSrBITS2.wZAEf.VDG17Ok.ZH4mVPCd/689hl6/oPqTVo3dffx5y', 'pG585u0fEt', '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(23, 'Cecilia Koelpin', 'xgoldner@example.org', 'UEBQKI97GR', 'tlueilwitz', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NfSrBITS2.wZAEf.VDG17Ok.ZH4mVPCd/689hl6/oPqTVo3dffx5y', '0b1Y1sasVr', '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(24, 'Brisa Treutel PhD', 'orin48@example.net', 'J4USFJGHLF', 'breanne.kozey', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NfSrBITS2.wZAEf.VDG17Ok.ZH4mVPCd/689hl6/oPqTVo3dffx5y', '7wwRUm490b', '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(25, 'Sydnie Krajcik', 'dameon03@example.com', 'FGAOIMF0BB', 'braun.kariane', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.4ii33C0qvFdVBu.CKIOceDDt.meIyRwWwIOkFLaM47kU4VyANnU6', 'BgS2gxlSd4', '2023-12-31 02:22:29', '2023-12-31 02:22:29'),
(26, 'Anna Feil', 'dare.berry@example.org', 'Q6N0MLSK46', 'jast.rylan', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.4ii33C0qvFdVBu.CKIOceDDt.meIyRwWwIOkFLaM47kU4VyANnU6', 'QkAvPBQAHp', '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(27, 'Kasandra Witting', 'julia18@example.com', '3BXWJFVM8O', 'yundt.santina', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.4ii33C0qvFdVBu.CKIOceDDt.meIyRwWwIOkFLaM47kU4VyANnU6', 'Si2XRM1NXM', '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(28, 'Mrs. Kristin Mante', 'gorczany.lue@example.net', 'UWQ8PFDTXA', 'botsford.hulda', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QDETrKRMozWRK8i.LVgM5uyxecax6T39VBjQjXFZcBncFHnN0znya', 'sZwhDPL4Or', '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(29, 'Reginald Bednar', 'tstanton@example.net', 'O6MUXH7QHW', 'bridie52', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QDETrKRMozWRK8i.LVgM5uyxecax6T39VBjQjXFZcBncFHnN0znya', 'QWInuhf2Np', '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(30, 'Lenora Flatley', 'feest.consuelo@example.org', '7BBJIJA7QW', 'bziemann', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QDETrKRMozWRK8i.LVgM5uyxecax6T39VBjQjXFZcBncFHnN0znya', 'e6rhDFxlnp', '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(31, 'Harold West', 'rjones@example.net', 'PCZJVTGLX8', 'herminia39', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UL.BDAvpKn9kBYTf9fmWfuj6S90kZMWB97okj9tFJoqB5eQUC4AG2', 'DuDpkaUFmI', '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(32, 'Rosalyn Waters', 'kathryn.sawayn@example.net', '5UQA4HTFOW', 'vheidenreich', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UL.BDAvpKn9kBYTf9fmWfuj6S90kZMWB97okj9tFJoqB5eQUC4AG2', 'jgtYvE2u6U', '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(33, 'Ms. Gretchen Johnson DVM', 'zemlak.tia@example.org', 'S8PNWELLVS', 'fbogisich', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UL.BDAvpKn9kBYTf9fmWfuj6S90kZMWB97okj9tFJoqB5eQUC4AG2', 'RbJOxjhPm7', '2023-12-31 02:22:30', '2023-12-31 02:22:30'),
(34, 'Mr. Geo Halvorson DDS', 'norris.orn@example.com', 'MW7Q7QSV9S', 'ferry.elna', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uKbbXMwVS3s662z8sgQR5OPDTVjlSNhcyz4SgQMA8ejZzOxGupHxK', 'PIHVEw6mHx', '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(35, 'Jett Wyman', 'block.tomasa@example.org', 'JKGLQHK8UE', 'thurman.crist', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uKbbXMwVS3s662z8sgQR5OPDTVjlSNhcyz4SgQMA8ejZzOxGupHxK', '1TonPqjery', '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(36, 'Grayce Wilderman', 'hector30@example.com', 'HAD2BR53PV', 'jayme.fisher', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uKbbXMwVS3s662z8sgQR5OPDTVjlSNhcyz4SgQMA8ejZzOxGupHxK', '3loTjrqRDG', '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(37, 'Mr. Caesar Schowalter', 'solson@example.org', 'MSA1XGX0IB', 'camron27', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gPYZw6hI7.Xzc58yg/7TwuuaTaW8mv/KqrF05P/LnAxIpeQ4z6dC2', '8JtfQHysJ8', '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(38, 'Zula Abernathy', 'bbreitenberg@example.org', 'AIZUIIHTFO', 'tianna32', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gPYZw6hI7.Xzc58yg/7TwuuaTaW8mv/KqrF05P/LnAxIpeQ4z6dC2', '4RZBAt38o1', '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(39, 'Mr. Rowland Robel', 'clara.strosin@example.net', 'ONFAJNHEQH', 'ramiro41', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gPYZw6hI7.Xzc58yg/7TwuuaTaW8mv/KqrF05P/LnAxIpeQ4z6dC2', 'Ju6AIu1ClZ', '2023-12-31 02:22:31', '2023-12-31 02:22:31'),
(40, 'Izabella Schuppe', 'bednar.dariana@example.org', 'TJQ3YIQIIK', 'gconnelly', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YAu7ftyzjozo3CrUNoJk0umuVNmUyI9akwbJZatd7KMrGWVFOn2lG', 'n8NzxpYUep', '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(41, 'Adrien Thompson', 'bkirlin@example.org', 'PCUWH0MIAL', 'fmetz', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YAu7ftyzjozo3CrUNoJk0umuVNmUyI9akwbJZatd7KMrGWVFOn2lG', 'p7f6nmKI38', '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(42, 'Noble O\'Hara', 'helmer36@example.org', '3WOJQKRNBG', 'geovanny55', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YAu7ftyzjozo3CrUNoJk0umuVNmUyI9akwbJZatd7KMrGWVFOn2lG', 'kqWgs9tAZu', '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(43, 'Lulu Gusikowski', 'hackett.vida@example.org', 'QHV2G61RLN', 'hartmann.jasen', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Rjlq0YrPhOUAalDdpYrD/.SvYAMDyhB0Xx8OgC9GW1fD7nifYsKVa', 'ECu3539p0Q', '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(44, 'Javonte Klocko II', 'leann06@example.net', 'POGINQVK2A', 'sasha58', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Rjlq0YrPhOUAalDdpYrD/.SvYAMDyhB0Xx8OgC9GW1fD7nifYsKVa', 'diYiBhdJo4', '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(45, 'Giovani Langworth', 'riley.douglas@example.org', '0FMM9XHMOA', 'keira.auer', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Rjlq0YrPhOUAalDdpYrD/.SvYAMDyhB0Xx8OgC9GW1fD7nifYsKVa', 'Ai7ABli22D', '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(46, 'Dale Lueilwitz', 'schoen.donnie@example.net', 'OYE2FZ03TD', 'champlin.bradley', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QeNHCfIzG7xAYprPqk06E.D/SygmNBBE6p9hmVcs1uHi863q8iOVu', 'tW4AMMuwil', '2023-12-31 02:22:32', '2023-12-31 02:22:32'),
(47, 'Mackenzie Sawayn MD', 'victoria.cassin@example.org', 'F7LZYYF3II', 'bbahringer', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QeNHCfIzG7xAYprPqk06E.D/SygmNBBE6p9hmVcs1uHi863q8iOVu', 'wDLSlN2okp', '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(48, 'Annie Wiegand', 'jeffry.bednar@example.org', 'UDOHJA0CKU', 'bpredovic', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QeNHCfIzG7xAYprPqk06E.D/SygmNBBE6p9hmVcs1uHi863q8iOVu', 'Cy8j1LZLpA', '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(49, 'Arnaldo Frami Sr.', 'lvonrueden@example.net', 'K8CODGYELO', 'lindgren.matteo', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZjAFIsZ5eFqHJhR7uG3Q8OXMcG6LJuQMUAuosdhmDXYlBrurSEsbe', '1t576u4ufD', '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(50, 'Prof. Andres Macejkovic MD', 'fhill@example.net', 'PEEPSK21OJ', 'isabelle.murazik', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZjAFIsZ5eFqHJhR7uG3Q8OXMcG6LJuQMUAuosdhmDXYlBrurSEsbe', '5G2S1ukuQh', '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(51, 'Fabiola Farrell', 'kuphal.adriel@example.net', 'QTDBY9DX5W', 'glockman', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZjAFIsZ5eFqHJhR7uG3Q8OXMcG6LJuQMUAuosdhmDXYlBrurSEsbe', '1rpaJw3ycf', '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(52, 'Reggie Buckridge', 'idell.torphy@example.net', 'SA6L2JWQAC', 'tadams', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zCUKUHl.Qcg62cFGV817W.FfW4/gPZjYScHsIAf.KYf4nM1Eqj.Ba', 'pVqSVs5ail', '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(53, 'Mr. Orrin DuBuque II', 'wolff.joany@example.org', 'REPOYYEOAQ', 'lorena.schneider', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zCUKUHl.Qcg62cFGV817W.FfW4/gPZjYScHsIAf.KYf4nM1Eqj.Ba', 'u7ifGxZ8QB', '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(54, 'Dr. Jeremy Witting I', 'schaefer.brian@example.com', 'JTMY7KDQBC', 'bosco.mafalda', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zCUKUHl.Qcg62cFGV817W.FfW4/gPZjYScHsIAf.KYf4nM1Eqj.Ba', 'ghqimOqMRi', '2023-12-31 02:22:33', '2023-12-31 02:22:33'),
(55, 'Javed Khan', 'javed@gmail.com', '1LOQQ3BUAS', 'RIITM/J/2023/102', 'student', '12/29/2000', 'Male', 'http://127.0.0.1:8000/storage/uploads/student/1LOQQ3BUAS/photo.jpg', '99999999', NULL, NULL, 1, 1, 1, 'SGM nagar', NULL, '$2y$10$A0s6oaeXleXk2HUrK7Gnkeru4Gw2TCfoNQjZwOtQujz3pqG2sjkee', NULL, '2023-12-31 02:40:29', '2023-12-31 02:40:29'),
(56, 'Javed', 'javeds@gmail.com', '3GAACL9EKK', 'RIITM/N/2023/102', 'student', '01/25/2007', 'Male', 'http://127.0.0.1:8000/storage/uploads/student/3GAACL9EKK/photo.jpg', '099999999', NULL, NULL, 1, 1, 1, 'sgm nagar', NULL, '$2y$10$9AWZwd9DJPauZMnuF6U5Fe41taD3/VEshN4uiMeJLQQnwrTrEcoeC', NULL, '2023-12-31 02:58:50', '2023-12-31 02:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `title`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'accountant', 'Accountant', '5', NULL, NULL),
(2, 'parent', 'Parent', '4', NULL, NULL),
(3, 'teacher', 'Teacher', '3', NULL, NULL),
(4, 'admin', 'Admin', '2', NULL, NULL),
(5, 'super_admin', 'Super Admin', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_my_class_id_foreign` (`my_class_id`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_requests_book_id_foreign` (`book_id`),
  ADD KEY `book_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `class_types`
--
ALTER TABLE `class_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dorms`
--
ALTER TABLE `dorms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dorms_name_unique` (`name`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_term_year_unique` (`term`,`year`);

--
-- Indexes for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_records_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_records_my_class_id_foreign` (`my_class_id`),
  ADD KEY `exam_records_student_id_foreign` (`student_id`),
  ADD KEY `exam_records_section_id_foreign` (`section_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_name_class_type_id_remark_unique` (`name`,`class_type_id`,`remark`),
  ADD KEY `grades_class_type_id_foreign` (`class_type_id`);

--
-- Indexes for table `lgas`
--
ALTER TABLE `lgas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lgas_state_id_foreign` (`state_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_student_id_foreign` (`student_id`),
  ADD KEY `marks_my_class_id_foreign` (`my_class_id`),
  ADD KEY `marks_section_id_foreign` (`section_id`),
  ADD KEY `marks_subject_id_foreign` (`subject_id`),
  ADD KEY `marks_exam_id_foreign` (`exam_id`),
  ADD KEY `marks_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_classes_class_type_id_name_unique` (`class_type_id`,`name`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_ref_no_unique` (`ref_no`),
  ADD KEY `payments_my_class_id_foreign` (`my_class_id`);

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_records_ref_no_unique` (`ref_no`),
  ADD KEY `payment_records_payment_id_foreign` (`payment_id`),
  ADD KEY `payment_records_student_id_foreign` (`student_id`);

--
-- Indexes for table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pins_code_unique` (`code`),
  ADD KEY `pins_user_id_foreign` (`user_id`),
  ADD KEY `pins_student_id_foreign` (`student_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_student_id_foreign` (`student_id`),
  ADD KEY `promotions_from_class_foreign` (`from_class`),
  ADD KEY `promotions_from_section_foreign` (`from_section`),
  ADD KEY `promotions_to_section_foreign` (`to_section`),
  ADD KEY `promotions_to_class_foreign` (`to_class`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_pr_id_foreign` (`pr_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_name_my_class_id_unique` (`name`,`my_class_id`),
  ADD KEY `sections_my_class_id_foreign` (`my_class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_records_code_unique` (`code`),
  ADD KEY `staff_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_records`
--
ALTER TABLE `student_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_records_adm_no_unique` (`adm_no`),
  ADD KEY `student_records_user_id_foreign` (`user_id`),
  ADD KEY `student_records_my_class_id_foreign` (`my_class_id`),
  ADD KEY `student_records_section_id_foreign` (`section_id`),
  ADD KEY `student_records_my_parent_id_foreign` (`my_parent_id`),
  ADD KEY `student_records_dorm_id_foreign` (`dorm_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_my_class_id_name_unique` (`my_class_id`,`name`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_slots_timestamp_from_timestamp_to_ttr_id_unique` (`timestamp_from`,`timestamp_to`,`ttr_id`),
  ADD KEY `time_slots_ttr_id_foreign` (`ttr_id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_tables_ttr_id_ts_id_day_unique` (`ttr_id`,`ts_id`,`day`),
  ADD UNIQUE KEY `time_tables_ttr_id_ts_id_exam_date_unique` (`ttr_id`,`ts_id`,`exam_date`),
  ADD KEY `time_tables_ts_id_foreign` (`ts_id`),
  ADD KEY `time_tables_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `time_table_records`
--
ALTER TABLE `time_table_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_table_records_name_unique` (`name`),
  ADD UNIQUE KEY `time_table_records_my_class_id_exam_id_year_unique` (`my_class_id`,`exam_id`,`year`),
  ADD KEY `time_table_records_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_code_unique` (`code`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_state_id_foreign` (`state_id`),
  ADD KEY `users_lga_id_foreign` (`lga_id`),
  ADD KEY `users_bg_id_foreign` (`bg_id`),
  ADD KEY `users_nal_id_foreign` (`nal_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_types`
--
ALTER TABLE `class_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dorms`
--
ALTER TABLE `dorms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_records`
--
ALTER TABLE `exam_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lgas`
--
ALTER TABLE `lgas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `my_classes`
--
ALTER TABLE `my_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_records`
--
ALTER TABLE `payment_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pins`
--
ALTER TABLE `pins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff_records`
--
ALTER TABLE `staff_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_records`
--
ALTER TABLE `student_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_table_records`
--
ALTER TABLE `time_table_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD CONSTRAINT `book_requests_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD CONSTRAINT `exam_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_class_type_id_foreign` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lgas`
--
ALTER TABLE `lgas`
  ADD CONSTRAINT `lgas_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marks_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD CONSTRAINT `my_classes_class_type_id_foreign` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD CONSTRAINT `payment_records_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pins`
--
ALTER TABLE `pins`
  ADD CONSTRAINT `pins_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_from_class_foreign` FOREIGN KEY (`from_class`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_from_section_foreign` FOREIGN KEY (`from_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_class_foreign` FOREIGN KEY (`to_class`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_section_foreign` FOREIGN KEY (`to_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_pr_id_foreign` FOREIGN KEY (`pr_id`) REFERENCES `payment_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD CONSTRAINT `staff_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_records`
--
ALTER TABLE `student_records`
  ADD CONSTRAINT `student_records_dorm_id_foreign` FOREIGN KEY (`dorm_id`) REFERENCES `dorms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_my_parent_id_foreign` FOREIGN KEY (`my_parent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_records_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD CONSTRAINT `time_slots_ttr_id_foreign` FOREIGN KEY (`ttr_id`) REFERENCES `time_table_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD CONSTRAINT `time_tables_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_tables_ts_id_foreign` FOREIGN KEY (`ts_id`) REFERENCES `time_slots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_tables_ttr_id_foreign` FOREIGN KEY (`ttr_id`) REFERENCES `time_table_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_table_records`
--
ALTER TABLE `time_table_records`
  ADD CONSTRAINT `time_table_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_table_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_bg_id_foreign` FOREIGN KEY (`bg_id`) REFERENCES `blood_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_lga_id_foreign` FOREIGN KEY (`lga_id`) REFERENCES `lgas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_nal_id_foreign` FOREIGN KEY (`nal_id`) REFERENCES `nationalities` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
