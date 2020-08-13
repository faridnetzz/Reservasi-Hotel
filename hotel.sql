-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 08:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `client_id`, `room_id`, `user_id`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(103, 11, 1, 1, '2020-07-10', '2020-07-10', 1, '2020-07-08 18:25:29', '2020-07-08 18:25:29'),
(104, 12, 1, 1, '2020-07-09', '2020-07-11', 1, '2020-07-08 18:27:53', '2020-07-08 18:27:53'),
(105, 15, 4, 2, '2020-07-10', '2020-07-13', 1, '2020-07-08 18:29:53', '2020-07-08 18:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(11, 'phiedo', 'phiedo@ganteng.com', '02391823091230', 'IMG_20171003_202536.jpg', '2020-07-07 22:21:24', '2020-07-07 22:21:24'),
(12, 'yusuf', 'yusuf@nurulizzah.com', '08123512331123', 'admin-settings-male.png', '2020-07-08 10:39:18', '2020-07-08 10:39:18'),
(13, 'arfiyanto', 'arfi@gmail.com', '08128417287412', '102418839_109183064158152_8490257661009330176_o.jpg', '2020-07-08 10:44:28', '2020-07-08 10:44:28'),
(14, 'Fadil', 'baskoro@mail.com', '089123871232', 'icon pbls.png', '2020-07-08 10:45:20', '2020-07-08 10:45:20'),
(15, 'Subaru', 'rezero@gmail.com', '08231728371823', 'kana-boon-silhouette.jpg', '2020-07-08 11:04:03', '2020-07-08 11:04:03'),
(16, 'Kazuma', 'kazuma@konosuba.com', '08121894714', 'gonRYSFo_400x400.jpg', '2020-07-08 11:12:38', '2020-07-08 11:12:38'),
(17, 'Koneko-Chan', 'koneko@dxd.com', '081231273', 'koneko.jpg', '2020-07-08 11:16:03', '2020-07-08 11:16:03'),
(18, 'Taki Tachibana', 'taki@kinonawa.com', '081274647164', 'Taki_Tachibana_2022.png', '2020-07-08 11:17:32', '2020-07-08 11:17:32'),
(19, 'Mitsuha Miyamizu', 'mitshuha@kinonawa.com', '0847126472', 'Mitsuha_Miyamizu_21.png', '2020-07-08 11:19:00', '2020-07-08 11:19:00'),
(21, 'Hina Amano', 'hina@tenkinoko.com', '0821386213', 'hina-amano-165275.jpg', '2020-07-08 11:54:49', '2020-07-08 11:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_08_111156_create_clients_table', 1),
(4, '2018_01_10_084936_create_book', 1),
(5, '2018_01_10_092203_create_rooms_table', 1),
(6, '2018_01_11_110222_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beds` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `floor`, `type`, `beds`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Single', 'Ground Floor', 'Standard', 'Two Bed', 0, '2020-07-07 22:05:41', '2020-07-08 21:15:50'),
(2, 'Double', 'Ground Floor', 'Deluxe', 'Two Bed', 0, '2020-07-07 22:05:41', '2020-07-07 22:05:41'),
(3, 'Triple', 'First Floor', 'Family Room', 'Three Bed', 0, '2020-07-07 22:05:41', '2020-07-07 22:05:41'),
(4, 'Quad', 'First Floor', 'Deluxe', 'Two Bed', 0, '2020-07-07 22:05:42', '2020-07-07 22:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alex', 'alex@mail.com', '$2y$10$QqoPAiByBRjmhz2XTM9flO6qUbxivbrcFj67xzjQF/ozEJe7pTuYG', NULL, '2020-07-07 22:05:42', '2020-07-07 22:05:42'),
(2, 'farid', 'faridmuharram@mail.com', '$2y$10$by3LQ2oyefGUo6xl/p7C4./0uD4TUOAZLB0RHUUaq2ytU/9DQR23W', 'Elb1HR5yY43yZhoqglvysUzcWYU6Gp1WoDQLrUAXLjzZXrSLKfpkS7cfm64c', '2020-07-07 22:05:42', '2020-07-07 22:05:42'),
(3, 'Bambang', 'bambang@mail.com', '123456', '123456', '2020-07-08 18:08:02', '2020-07-08 18:08:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_client_id_foreign` (`client_id`),
  ADD KEY `bookings_room_id_foreign` (`room_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
