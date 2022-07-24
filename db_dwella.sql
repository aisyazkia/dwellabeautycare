-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 04:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dwella`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `primary`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'YES', NULL, NULL),
(2, 'User', 'NO', NULL, NULL);

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
(1, '2013_07_02_000000_create_levels_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_02_184632_create_treatments_table', 1),
(7, '2022_07_02_193931_create_schedules_table', 1),
(8, '2022_07_02_193947_create_schedule_details_table', 1),
(9, '2022_07_02_212617_create_schedule_bookeds_table', 1),
(10, '2022_07_02_213439_create_products_table', 1),
(11, '2022_07_07_041323_create_schedule_booked_details_table', 1),
(12, '2022_07_08_173551_create_payment_methods_table', 1),
(13, '2022_07_10_052725_create_carts_table', 1),
(14, '2022_07_10_114250_create_transaction_details_table', 1),
(15, '2022_07_10_121635_create_schedule_booked_testimony_table', 1),
(16, '2022_07_9_114307_create_transactions_table', 1);

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'COD', 'Silahkan lakukan pembayaran ditempat', NULL, NULL),
(2, 'Transfer BCA', 'Silahkan melakukan transfer <b>BCA</b> ke rekening dibawah ini <br>\n                7150932577 <br>\n                DWI LINGGA ASTUTI', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `stock` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_bookeds`
--

CREATE TABLE `schedule_bookeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT','SUCCESS','CANCEL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `total` bigint(20) NOT NULL,
  `payment_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_proof_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_booked_details`
--

CREATE TABLE `schedule_booked_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule_booked_id` bigint(20) UNSIGNED NOT NULL,
  `treatment_id` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_booked_testimony`
--

CREATE TABLE `schedule_booked_testimony` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule_booked_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_details`
--

CREATE TABLE `schedule_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule_id` bigint(20) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule_details`
--

INSERT INTO `schedule_details` (`id`, `schedule_id`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, '09:00:00', NULL, NULL),
(2, 1, '10:00:00', NULL, NULL),
(3, 1, '11:00:00', NULL, NULL),
(4, 1, '13:00:00', NULL, NULL),
(5, 1, '14:00:00', NULL, NULL),
(6, 1, '15:00:00', NULL, NULL),
(7, 2, '09:00:00', NULL, NULL),
(8, 2, '10:00:00', NULL, NULL),
(9, 2, '11:00:00', NULL, NULL),
(10, 2, '13:00:00', NULL, NULL),
(11, 2, '14:00:00', NULL, NULL),
(12, 2, '15:00:00', NULL, NULL),
(13, 3, '09:00:00', NULL, NULL),
(14, 3, '10:00:00', NULL, NULL),
(15, 3, '11:00:00', NULL, NULL),
(16, 3, '13:00:00', NULL, NULL),
(17, 3, '14:00:00', NULL, NULL),
(18, 3, '15:00:00', NULL, NULL),
(19, 4, '09:00:00', NULL, NULL),
(20, 4, '10:00:00', NULL, NULL),
(21, 4, '11:00:00', NULL, NULL),
(22, 4, '13:00:00', NULL, NULL),
(23, 4, '14:00:00', NULL, NULL),
(24, 4, '15:00:00', NULL, NULL),
(25, 5, '09:00:00', NULL, NULL),
(26, 5, '10:00:00', NULL, NULL),
(27, 5, '11:00:00', NULL, NULL),
(28, 5, '13:00:00', NULL, NULL),
(29, 5, '14:00:00', NULL, NULL),
(30, 5, '15:00:00', NULL, NULL),
(31, 6, '09:00:00', NULL, NULL),
(32, 6, '10:00:00', NULL, NULL),
(33, 6, '11:00:00', NULL, NULL),
(34, 6, '13:00:00', NULL, NULL),
(35, 6, '14:00:00', NULL, NULL),
(36, 6, '15:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `shipping_cost` bigint(20) NOT NULL DEFAULT 0,
  `status` enum('PENDING','PROCESS','DELIVERED','RECEIVED','REJECT','CANCEL','SUCCESS') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id`, `image`, `name`, `description`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Facial Acne Comedo', 'Mengenyalkan dan mengencangkan kulit wajah.', 100000, NULL, NULL, NULL),
(2, NULL, 'Facial Detoks', 'Membuang racun sisa metabolisme, mercury, radikal bebas.', 110000, NULL, NULL, NULL),
(3, NULL, 'Facial Messo Glow', 'pencerah, pemutih, dan penghilang flek', 150000, NULL, NULL, NULL),
(4, NULL, 'Facial RF', 'Menghilangkan garis halus dan kerutan, memutihkan kulit wajah, menghilangkan pori\" besar, mengembalikan elasitas dan kehalusan kulit wajah.', 150000, NULL, NULL, NULL),
(5, NULL, 'Facial Ultrawhite', 'Untuk mencerahkan wajah.', 100000, NULL, NULL, NULL),
(6, NULL, 'Facial Peeling Acne', 'membuang sisa-sisa kulit mati, meremajakan kulit, mengatasi jerawat dan komedo.', 150000, NULL, NULL, NULL),
(7, NULL, 'Facial Peeling Flek', 'mengangkat sel kulit mati, mencerahkan wajah, memudarkan flek pada wajah', 150000, NULL, NULL, NULL),
(9, NULL, 'Facial Microdermabrasi', 'Mengikis sel kulit mati, mencerahkan dan meremajakan kulit wajah.', 125000, NULL, NULL, NULL),
(10, NULL, 'Facial Korean Brightening', 'menghilangkan kotoran yang menumpuk di wajah sekaligus mencerahkan kulit dengan menggunakan formula herbal khusus Korea yang dikombinasikan racikan Dermis Dermatologist', 300000, NULL, NULL, NULL),
(11, NULL, 'Facial Glasskin', 'Menghaluskan kulit, mengencangkan kulit serta mengecilkan pori-pori', 300000, NULL, NULL, NULL),
(12, NULL, 'Facial IPL', 'menghilangkan noda hitam diwajah, mencegah keriput, merontokkan bulu, merawat bekas luka dan mengatasi jerawat', 200000, NULL, NULL, NULL),
(13, NULL, 'Facial Photo Laser', 'membersihkan kulit, memperkecil kelenjar minyak, merangsang produksi kolagen, mengurangi pigmentasi, mengurangi penymbatan pada pori-pori', 200000, NULL, NULL, NULL),
(14, NULL, 'Fasial Masker PDT', 'mencerahkan wajah, menghilangkan flek bekas jerawat, menghaluskan pori-pori, mengatasi jerawat, mengurangi kadar minyak pada wajah', 100000, NULL, NULL, NULL),
(15, NULL, 'Masker PDT', 'Memutihkan, menghilangkan jerawat, menghilangkan dan mencegah keriput & urat halus diwajah.', 50000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '/assets/img/avatars/6.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `phone`, `address`, `email_verified_at`, `password`, `level_id`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '/assets/img/avatars/6.png', 'aazkia30@gmail.com', NULL, NULL, NULL, '$2y$10$PtFb9Q34M3ILwoTzq0VBI.EDmoDtiMlOCQ/hDJvSgAT9HAVxGP06O', 1, NULL, NULL, NULL, NULL),
(2, 'User', '/assets/img/avatars/6.png', 'aisyazkia138@gmail.com', NULL, NULL, NULL, '$2y$10$gXi7TgT1SmO.3lMdbaJT8e2PNhG8ql17nbAbwhAXcsBKb/icPG/I2', 2, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
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
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_bookeds`
--
ALTER TABLE `schedule_bookeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_bookeds_user_id_foreign` (`user_id`);

--
-- Indexes for table `schedule_booked_details`
--
ALTER TABLE `schedule_booked_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_booked_details_schedule_booked_id_foreign` (`schedule_booked_id`),
  ADD KEY `schedule_booked_details_treatment_id_foreign` (`treatment_id`);

--
-- Indexes for table `schedule_booked_testimony`
--
ALTER TABLE `schedule_booked_testimony`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_booked_testimony_schedule_booked_id_foreign` (`schedule_booked_id`),
  ADD KEY `schedule_booked_testimony_user_id_foreign` (`user_id`);

--
-- Indexes for table `schedule_details`
--
ALTER TABLE `schedule_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_details_schedule_id_foreign` (`schedule_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_level_id_foreign` (`level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedule_bookeds`
--
ALTER TABLE `schedule_bookeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_booked_details`
--
ALTER TABLE `schedule_booked_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_booked_testimony`
--
ALTER TABLE `schedule_booked_testimony`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_details`
--
ALTER TABLE `schedule_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `schedule_bookeds`
--
ALTER TABLE `schedule_bookeds`
  ADD CONSTRAINT `schedule_bookeds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `schedule_booked_details`
--
ALTER TABLE `schedule_booked_details`
  ADD CONSTRAINT `schedule_booked_details_schedule_booked_id_foreign` FOREIGN KEY (`schedule_booked_id`) REFERENCES `schedule_bookeds` (`id`),
  ADD CONSTRAINT `schedule_booked_details_treatment_id_foreign` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`id`);

--
-- Constraints for table `schedule_booked_testimony`
--
ALTER TABLE `schedule_booked_testimony`
  ADD CONSTRAINT `schedule_booked_testimony_schedule_booked_id_foreign` FOREIGN KEY (`schedule_booked_id`) REFERENCES `schedule_bookeds` (`id`),
  ADD CONSTRAINT `schedule_booked_testimony_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `schedule_details`
--
ALTER TABLE `schedule_details`
  ADD CONSTRAINT `schedule_details_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
