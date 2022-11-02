-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 05:13 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `appointment_id`, `start`, `end`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 0, '2022-11-02 11:33:59', '2022-11-02 11:33:59'),
(2, 2, '00:00:00', '00:30:00', 0, '2022-11-02 11:53:14', '2022-11-02 11:53:14'),
(3, 2, '00:00:00', '00:30:00', 0, '2022-11-02 12:29:01', '2022-11-02 12:29:01'),
(4, 2, '00:00:00', '00:30:00', 0, '2022-11-02 12:29:14', '2022-11-02 12:29:14'),
(5, 2, '00:00:00', '00:30:00', 0, '2022-11-02 12:30:50', '2022-11-02 12:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timezone_id` int(11) DEFAULT NULL,
  `days_id` int(11) DEFAULT NULL,
  `available_at` time DEFAULT NULL,
  `available_until` time DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`id`, `user_id`, `timezone_id`, `days_id`, `available_at`, `available_until`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '00:00:45', '02:13:45', 0, '2022-10-31 20:31:26', '2022-10-31 20:31:26'),
(2, 2, 1, 1, '00:00:46', '02:13:46', 0, '2022-10-31 20:31:26', '2022-10-31 20:31:26'),
(3, 2, 1, 2, '00:00:48', '02:13:55', 0, '2022-10-31 20:31:26', '2022-10-31 20:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'sunday', 0, '2022-11-01 05:52:45', '2022-11-01 05:52:45'),
(2, 'monday', 0, '2022-11-01 05:52:45', '2022-11-01 05:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1667170032),
('m221030_221806_create_users_table', 1667170339),
('m221030_222923_create_timezones_table', 1667170425),
('m221030_222945_create_days_table', 1667170425),
('m221030_223009_create_availability_table', 1667170425),
('m221030_223126_create_appointments_table', 1667170425);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `title`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'east', 0, '2022-11-01 05:53:02', '2022-11-01 05:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 0, '2022-10-30 22:55:50', '2022-10-30 22:55:50'),
(2, 'Rachel', 'Green', 0, '2022-10-30 22:55:50', '2022-10-30 22:55:50'),
(3, 'Margaret', 'Houlihan', 0, '2022-10-30 22:56:38', '2022-10-30 22:56:38'),
(4, 'Hawkeye', 'Pierce', 0, '2022-10-30 22:56:38', '2022-10-30 22:56:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
