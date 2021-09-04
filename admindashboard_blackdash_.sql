-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 10:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admindashboard(blackdash)`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(29, 'Umair', 'umair@gmail.com', '$2y$10$Tbz0R5.Ruq/MG0terkiHDOwP.BMLTQGb73OdrNn.ptDMx1JZeSS.i', 'storage/images/eS5GFFy9hGcmRPQW5OdVA6rWgYHMY3VP48vUtdbt.jpg', '2021-08-03 07:53:41', '2021-08-03 08:08:15'),
(30, 'Dawood', 'dawood@gmail.com', 'MTIzNDU2Nzg=', 'storage/images/kFYjv2aX1yjdLwmAFV8oNLaevNaNUkSnr0HI8LfA.jpg', '2021-08-03 07:54:24', '2021-08-03 07:54:24'),
(32, 'Haris Rahat', 'harisbinrahat@gmail.com', '$2y$10$.V5ms1nX7HPz7G5EYxvZV.xeKYKy0OzEX.XZ8kk/pOt/pEe6Dp/IS', 'images/DE9J6StBQbEz6awTkLVCIFNtyIptlM3hHgptexfM.jpg', '2021-08-03 10:35:09', '2021-08-03 10:35:09'),
(33, 'haris-updated3', 'haris@gmail.com', 'haris', '\" \"', '2021-08-03 12:22:06', '2021-08-03 12:29:38');

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
(4, '2021_08_01_142136_create_customers_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 3);

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
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 3, 'myAppToken', 'a3bd9a469b05506578ecbf877cb1ece964b9dc9a6ab91f8651891d7b190d61ac', '[\"*\"]', NULL, '2021-08-03 12:11:15', '2021-08-03 12:11:15'),
(5, 'App\\Models\\User', 5, 'myAppToken', 'db2c419505ea0d6815f24fbd7b8bc613d1adca11fdc7c68661fe323f238e2fa8', '[\"*\"]', NULL, '2021-08-03 12:56:12', '2021-08-03 12:56:12'),
(6, 'App\\Models\\User', 6, 'myAppToken', 'c72e87486f85d201c7ae2d6f42ffce9874184e41473e429422131eb1dca747e4', '[\"*\"]', NULL, '2021-08-03 13:52:54', '2021-08-03 13:52:54'),
(7, 'App\\Models\\User', 7, 'myAppToken', 'b0b103f250b39185088018c2e6b5cc6e250a67b32b550f2450c06f143bed9e87', '[\"*\"]', NULL, '2021-08-03 13:55:56', '2021-08-03 13:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@black.com', '2021-08-01 07:14:04', '$2y$10$hvRzreWs/QcL5ORpXitEhO6iVpkBs1VCgXojiHVNFg5Q8oupyBYZK', NULL, '2021-08-01 07:14:04', '2021-08-01 08:24:53'),
(2, 'Haris Rahat', 'harisbinrahat@gmail.com', NULL, '$2y$10$eqkPYwhlxFZ0EyKxei3hI.d1qLtKwO9frc.uYvZC8FnH0XSpCwPSu', NULL, '2021-08-03 05:25:43', '2021-08-03 05:25:43'),
(4, 'Umair', 'umair@yahoo.com', NULL, '$2y$10$bFEUn0J5k8TfGqned0Iz.eb/gDD6IfV8zKG7w7KmjyPinl/kaBNVG', NULL, '2021-08-03 12:28:51', '2021-08-03 12:28:51'),
(5, 'Haris-FullStackDeveloper', 'haris@hotmail.com', NULL, '$2y$10$b9E1Gv6kuEl7g9eiO0c1HuChuaYMnZfR4J3/Zi9.dmxcmW9We0Vsy', NULL, '2021-08-03 12:56:12', '2021-08-03 12:56:12'),
(6, 'HarisRahat', 'harisrahat@hotmail.com', NULL, '$2y$10$1LDzoSxtj4lsi1FtR5nJT.ZruhVPreKaMyko0yQ9Yel7II1hu9f7y', NULL, '2021-08-03 13:52:54', '2021-08-03 13:52:54'),
(7, 'Dawood', 'dawood@hotmail.com', NULL, '$2y$10$KbvA1g.X9qNhEvySX1ogq.M5oMfIVNbxKHB1a5CsN7vSoduFL3u2K', NULL, '2021-08-03 13:55:56', '2021-08-03 13:55:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
