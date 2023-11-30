-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 10:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baselt`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Libero ipsa beatae sint cumque nihil est.', 'javascript', 'Jacobson-Schinner', 'Mertzville', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(2, 'Et enim ut aut eligendi.', 'javascript', 'Reilly and Sons', 'West Kayla', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(3, 'Enim sed quas dolor sequi possimus et.', 'javascript', 'Crist LLC', 'West Elisa', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(4, 'Magni rerum optio ut quas veritatis voluptates ratione.', 'javascript', 'Jacobs and Sons', 'Lake Violette', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(5, 'Sunt mollitia in rerum nulla.', 'javascript', 'Quigley, Ziemann and Abshire', 'Creminfort', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(6, 'Nulla fugit et culpa quaerat.', 'javascript', 'Reichert, Hickle and Harber', 'Lake Birdie', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(7, 'Aspernatur optio non sunt animi nam veniam illo.', 'javascript', 'Bashirian-Rodriguez', 'East Rosaliaport', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(8, 'Aspernatur rerum ipsum ratione autem animi aliquid quos.', 'javascript', 'Bernhard LLC', 'Morartown', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(9, 'Quia maxime optio labore neque doloremque et.', 'javascript', 'Lakin-Collier', 'Stammstad', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(10, 'Ea voluptatibus consequatur in provident odio neque qui eveniet.', 'javascript', 'Bergstrom-VonRueden', 'Lutherfurt', '2023-11-09 07:37:26', '2023-11-09 07:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_07_074116_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Marcus Towne DVM', 'raufderhar@example.com', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', 'yQHuZVvdBW', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(2, 'Nadia Kirlin', 'lexie.buckridge@example.net', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', '4C2YG1d8Q9', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(3, 'Jacques Dooley', 'hill.danny@example.net', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', 'Ye1qJmXcH8', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(4, 'Bettie Schowalter', 'fgoyette@example.org', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', '2Q8O9wSJOL', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(5, 'Trudie Schmitt', 'murray.marianne@example.net', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', 'FW0H2gULxq', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(6, 'Marlee Funk', 'oconner.graciela@example.net', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', 'rQmuz0gG8W', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(7, 'Dustin Jacobi', 'amara46@example.com', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', 'HcDoEM1iNr', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(8, 'Marquis Beier DDS', 'stevie.graham@example.com', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', '7iTSZ58jel', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(9, 'Mr. Westley Wiegand', 'phyllis.hahn@example.org', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', 'RDG3EZzGW8', '2023-11-09 07:37:26', '2023-11-09 07:37:26'),
(10, 'Prof. Dorcas Conn Sr.', 'reichert.hubert@example.com', '2023-11-09 07:37:26', '$2y$12$TQvM2bj0XF4ckLp5z.QlleeSmBx4lcRyZnvZKzL0vpGQXJQFTUdEK', 'gt9iU1iLeI', '2023-11-09 07:37:26', '2023-11-09 07:37:26');

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
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
