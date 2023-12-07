-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2023 at 08:21 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$Awi.5MVi4CocdbdTvq3I0.ChcLXOtiCaxRD9PRTiXliB2oYVNc.kO', '202307120812Image 01-12-2023 at 14.33.jpg', '873', '126', 'admin', 'active', NULL, NULL, '2023-12-07 05:12:39'),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$10$l4PsO9OIvcvwbxvZ4fQjr.vrejYyTHUp3Crj3RdcR5Vvyw4JDpGjm', NULL, NULL, NULL, 'agent', 'active', NULL, NULL, NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$2m/JGsYcmFWP0pXJiCh4AuVzHMlMcTSuNF0aiYHtnBg979AfHXuR2', NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(4, 'Kirk Kerluke', NULL, 'skyla.pollich@example.com', '2023-12-04 11:12:51', '$2y$10$YrVJ.lsDBAeFEMEqsO902OzbODAuNGhJTW2mkhrxWtP.p0ffZKUkG', 'https://via.placeholder.com/60x60.png/008855?text=occaecati', '716-499-8911', '25315 D\'Amore Port Suite 921\nNorth Dell, NH 51825-6955', 'user', 'active', '5FTGo4EyVb', '2023-12-04 11:12:52', '2023-12-04 11:12:52'),
(5, 'Katrina Mitchell', NULL, 'dortha.aufderhar@example.com', '2023-12-04 11:12:51', '$2y$10$FiUyWBVZjzBinH5/S4BS1ei6Kqt0KPSUtBeOAsFmtwAQ8n8tV8xui', 'https://via.placeholder.com/60x60.png/00ccee?text=illum', '765-232-6124', '79271 Ruecker Meadow\nPort Haileefurt, OK 47690', 'admin', 'active', '0eV9DiUFZT', '2023-12-04 11:12:52', '2023-12-04 11:12:52'),
(6, 'Kristina Wisoky', NULL, 'schumm.bonita@example.net', '2023-12-04 11:12:51', '$2y$10$WiVjFaAHViVflM2MpCBBPudDaN7E3OiKsALjPVPmFah.i/9ite/C.', 'https://via.placeholder.com/60x60.png/004466?text=laboriosam', '(234) 529-6483', '697 Shannon Ports\nNorth Doug, WV 46130-3694', 'user', 'inactive', '9MO0mcY4FL', '2023-12-04 11:12:52', '2023-12-04 11:12:52'),
(7, 'Lillie Senger', NULL, 'heller.libbie@example.com', '2023-12-04 11:12:51', '$2y$10$dXYMKOu4BByulSN3Uo2GqunCLFl37KpuiTykfT3LucYBKSSs9Ef8q', 'https://via.placeholder.com/60x60.png/00cc00?text=inventore', '754.291.7457', '7568 Elvera Mountains\nNew Lamontside, VT 08516-7648', 'admin', 'active', '8yVq1cEiTl', '2023-12-04 11:12:52', '2023-12-04 11:12:52'),
(8, 'Harley Daniel V', NULL, 'katelynn.yost@example.com', '2023-12-04 11:12:51', '$2y$10$xv0w9.cv5LliJztRm6NLBect4P/d8acS7MGnX0wHqyTD/j7tNzCGS', 'https://via.placeholder.com/60x60.png/00dd99?text=ducimus', '(779) 515-8042', '18586 West Club\nSchmelerfort, TX 82260', 'agent', 'inactive', 'B4eEBuPWod', '2023-12-04 11:12:52', '2023-12-04 11:12:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
