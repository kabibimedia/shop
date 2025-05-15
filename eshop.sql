-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 15, 2025 at 01:17 PM
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
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'admin', 'admin@gmail.com', '0244444444', 'Accra', 'Heels', '1020', '3', '1733782176.jpg', '14', '2', '2024-12-09 22:18:44', '2024-12-09 22:18:44'),
(14, 'user', 'user@gmail.com', '0244444444', 'Accra', 'Sandals', '1050', '3', '1733781978.jpg', '11', '1', '2025-04-04 21:01:03', '2025-04-04 21:36:51'),
(16, 'user', 'user@gmail.com', '0244444444', 'Accra', 'Wedding Ring', '3000', '2', '1733331313.jpg', '7', '1', '2025-04-04 21:44:55', '2025-04-04 21:44:55'),
(17, 'user', 'user@gmail.com', '0244444444', 'Accra', 'Tshirt', '200', '2', '1732745606.jpg', '1', '1', '2025-04-04 21:55:17', '2025-04-14 22:09:36'),
(18, 'user', 'user@gmail.com', '0244444444', 'Accra', 'Ladies Wear', '2400', '3', '1733781888.jpg', '10', '1', '2025-04-04 21:57:54', '2025-04-14 22:37:59'),
(19, 'user', 'user@gmail.com', '0244444444', 'Accra', 'Wedding Ring', '3996', '4', '1733175514.jpg', '2', '1', '2025-04-04 23:30:39', '2025-04-14 22:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', '2024-11-25 20:55:23', '2024-11-25 20:55:23'),
(4, 'Toy', '2024-11-25 21:10:52', '2024-11-25 21:10:52'),
(5, 'Mobile', '2024-11-25 21:14:50', '2024-11-25 21:14:50'),
(6, 'Rings', '2024-12-02 21:36:53', '2024-12-02 21:36:53'),
(7, 'Fashion', '2024-12-09 21:57:50', '2024-12-09 21:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'user', 'i enjoy your service and products look really nice.. glad shopping here', '1', '2025-01-25 12:43:45', '2025-01-25 12:43:45'),
(3, 'ben', 'your number one eshop in the world...woow', '6', '2025-01-25 20:42:37', '2025-01-25 20:42:37'),
(4, 'user', NULL, '1', '2025-03-04 22:52:35', '2025-03-04 22:52:35'),
(5, 'user', 'great work', '1', '2025-03-06 15:56:07', '2025-03-06 15:56:07');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_04_171254_add_two_factor_columns_to_users_table', 1),
(5, '2024_11_04_171356_create_personal_access_tokens_table', 1),
(6, '2024_11_25_195252_create_categories_table', 2),
(7, '2024_11_27_132557_create_products_table', 3),
(8, '2024_12_05_154120_create_carts_table', 4),
(9, '2024_12_06_192054_create_orders_table', 5),
(10, '2025_01_02_164934_create_notifications_table', 6),
(11, '2025_01_24_212957_create_comments_table', 7),
(12, '2025_01_24_213019_create_replies_table', 7),
(13, '2025_03_07_212649_create_reply_likes_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0244444444', 'Accra', '1', 'Wedding Ring', '3', '2997', '1733175514.jpg', '2', 'Cash on delivery', 'Delivered', '2024-12-06 20:15:15', '2024-12-09 15:19:10'),
(2, 'user', 'user@gmail.com', '0244444444', 'Accra', '1', 'Tshirt', '1', '100', '1732745606.jpg', '1', 'Paid', 'Delivered', '2024-12-06 20:15:15', '2024-12-09 15:32:27'),
(3, 'user', 'user@gmail.com', '0244444444', 'Accra', '1', 'Wedding Ring', '1', '800', '1733176529.jpg', '3', 'Cash on delivery', 'Processing', '2024-12-06 20:15:16', '2024-12-06 20:15:16'),
(4, 'user', 'user@gmail.com', '0244444444', 'Accra', '1', 'Pink Tshirt', '1', '200', '1733327686.jpg', '6', 'Cash on delivery', 'Processing', '2024-12-06 20:26:32', '2024-12-06 20:26:32'),
(5, 'ben', 'kaakyirebenbrako@gmail.com', '0247896542', 'lohng', '6', 'Office Wear', '1', '590', '1733781743.jpg', '9', 'Paid', 'Delivered', '2025-01-02 19:40:18', '2025-01-02 19:46:37'),
(6, 'ben', 'kaakyirebenbrako@gmail.com', '0247896542', 'lohng', '6', 'Wedding Ring', '1', '1500', '1733331313.jpg', '7', 'Paid', 'Delivered', '2025-01-02 19:40:18', '2025-01-02 19:46:47'),
(7, 'ben', 'kaakyirebenbrako@gmail.com', '0247896542', 'lohng', '6', 'Tshirt', '2', '200', '1732745606.jpg', '1', 'Paid', 'Delivered', '2025-01-02 19:40:19', '2025-01-02 19:46:53'),
(8, 'user', 'user@gmail.com', '0244444444', 'Accra', '1', 'Tshirt', '3', '300', '1732745606.jpg', '1', 'Paid', 'Delivered', '2025-01-09 14:38:38', '2025-01-09 14:40:27'),
(9, 'user', 'user@gmail.com', '0244444444', 'Accra', '1', 'Office Wear', '1', '500', '1733781683.jpg', '8', 'Cash on delivery', 'Processing', '2025-01-17 22:40:47', '2025-01-17 22:40:47');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Tshirt', 'Black Tshirt', '1732745606.jpg', 'Shirt', '60', '100', NULL, '2024-11-27 22:13:27', '2024-12-04 15:56:18'),
(2, 'Wedding Ring', 'White Gold 22karat', '1733175514.jpg', 'Rings', '30', '1000', '999', '2024-12-02 21:38:34', '2024-12-04 15:55:46'),
(3, 'Wedding Ring', 'Gold 18karat', '1733176529.jpg', 'Rings', '15', '800', NULL, '2024-12-02 21:55:29', '2024-12-02 21:55:29'),
(6, 'Pink Tshirt', 'Ladies tshirt', '1733327686.jpg', 'Shirt', '10', '200', NULL, '2024-12-03 21:23:32', '2024-12-04 15:55:14'),
(7, 'Wedding Ring', 'Gold 18karat', '1733331313.jpg', 'Rings', '30', '1500', NULL, '2024-12-04 16:55:13', '2024-12-04 16:55:13'),
(8, 'Office Wear', 'Ladies Soe for Office', '1733781683.jpg', 'Fashion', '30', '500', NULL, '2024-12-09 22:01:23', '2024-12-09 22:01:23'),
(9, 'Office Wear', 'Ladies Shoe', '1733781743.jpg', 'Fashion', '15', '600', '590', '2024-12-09 22:02:23', '2024-12-09 22:02:23'),
(10, 'Ladies Wear', 'Flat wear', '1733781888.jpg', 'Fashion', '20', '870', '800', '2024-12-09 22:04:48', '2024-12-09 22:04:48'),
(11, 'Sandals', 'ladies sandals', '1733781978.jpg', 'Fashion', '20', '350', NULL, '2024-12-09 22:06:18', '2024-12-09 22:06:18'),
(12, 'Men\'s Shoe', 'Men\'s shoe', '1733782039.jpg', 'Fashion', '30', '500', NULL, '2024-12-09 22:07:19', '2024-12-09 22:07:19'),
(13, 'Men\'s Shoe', 'classic men shoes', '1733782118.jpg', 'Fashion', '20', '1800', '1799', '2024-12-09 22:08:38', '2024-12-09 22:08:38'),
(14, 'Heels', 'Ladies heels', '1733782176.jpg', 'Fashion', '10', '350', '340', '2024-12-09 22:09:36', '2024-12-09 22:09:36'),
(15, 'Heels', 'Ladies heels', '1733782214.jpg', 'Fashion', '10', '650', NULL, '2024-12-09 22:10:14', '2024-12-09 22:10:14'),
(16, 'Ladies shoes', 'Ladies shoes', '1733782546.jpg', 'Fashion', '20', '400', NULL, '2024-12-09 22:15:46', '2024-12-09 22:15:46'),
(17, 'Ladies shoes', 'Ladies shoes', '1733782586.jpg', 'Fashion', '20', '650', '600', '2024-12-09 22:16:26', '2024-12-09 22:16:26'),
(18, 'ladies shoe', 'ladies shoe', '1736433804.jpg', 'Fashion', '25', '1500', '1400', '2025-01-09 14:43:24', '2025-01-09 14:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `name`, `comment_id`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ben', '1', 'I agree to it.. I love shopping here', '6', '2025-01-25 20:26:30', '2025-01-25 20:26:30'),
(2, 'ben', '1', 'simple the best...', '6', '2025-01-25 21:25:19', '2025-01-25 21:25:19'),
(3, 'user', '3', 'No brainer', '1', '2025-01-25 21:30:30', '2025-01-25 21:30:30'),
(4, 'user', '5', 'kudus for the great work', '1', '2025-03-06 16:28:34', '2025-03-06 16:28:34'),
(5, 'user', '5', 'more fireeeeee', '1', '2025-03-07 17:05:03', '2025-03-07 17:05:03'),
(6, 'user', '5', 'ogyaa', '1', '2025-03-07 21:07:07', '2025-03-07 21:07:07'),
(7, 'ben', '5', 'i agree', '6', '2025-03-07 22:28:27', '2025-03-07 22:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `reply_likes`
--

CREATE TABLE `reply_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CBL2IFEoJZ1UYQ603YVJsrPdECEOF1SHuVniVKWW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:137.0) Gecko/20100101 Firefox/137.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXJXajMzcFhkczRlaVBBVnAycTkwMUtMeGdIY0VCSW40VTI0cEhvciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747080798),
('oBJ5ba5fvhbvym6jx9eImzQZYItOZoB3kiVWOLXo', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:137.0) Gecko/20100101 Firefox/137.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnQ5NVlzdHNRR09rcFJxdHhqQ04xQWdENkJzdTVka1ZmckFOTTRnSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXlzdGFjay8xMDY0NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1746810562);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '0244444444', 'Accra', '2023-12-01 22:52:18', '$2y$12$dEVGbK.BGoVYPp37S9spk.Y6VD4j9Dw3CscYWPGYUcxJOjQun1ec6', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-04 17:40:49', '2024-11-04 17:40:49'),
(2, 'admin', 'admin@gmail.com', '1', '0244444444', 'Accra', '2023-12-01 22:53:05', '$2y$12$wY2VVnnBUN0P9oLY8tpdKumG3/q67QJrn2OneX2yJXKTOaUyxTl6G', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-04 17:43:06', '2024-11-04 17:43:06'),
(6, 'ben', 'kaakyirebenbrako@gmail.com', '0', '0247896542', 'lohng', '2024-12-17 23:18:25', '$2y$12$9BGHFhzE.g5hw.IaGEOua.5g6g6yZ/XZam21N3wkMCTQnfU7.tE56', NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-17 23:16:47', '2024-12-17 23:18:25'),
(9, 'kofi Kyei', 'kyeikofi@gmail.com', '0', '0244208667', 'accra', NULL, '$2y$12$.mDUcebUJv7dr//BvLZq1u83qzg48/SuqhkXZZ5BGaE.zZ8AY9LMa', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-09 14:26:22', '2025-01-09 14:26:22'),
(10, 'Ben-Bryan', 'benbrako4u@gmail.com', '0', '0244444444', 'accra', NULL, '$2y$12$2N44if8oQ9.F/qLfRY8EducYijqi6mItewSX3bYmKcSa9ot0Yo2JC', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-09 14:31:21', '2025-01-09 14:31:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_likes`
--
ALTER TABLE `reply_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reply_likes_reply_id_user_id_unique` (`reply_id`,`user_id`),
  ADD KEY `reply_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reply_likes`
--
ALTER TABLE `reply_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reply_likes`
--
ALTER TABLE `reply_likes`
  ADD CONSTRAINT `reply_likes_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `replies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reply_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
