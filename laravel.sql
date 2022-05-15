-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 09:14 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookdetails`
--

CREATE TABLE `bookdetails` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` text NOT NULL,
  `tname` text NOT NULL,
  `tno` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`id`, `uid`, `uname`, `tname`, `tno`, `date`) VALUES
(2, 2, 'mehul', 'Miraj Cinemas', 12, '2020-07-06'),
(4, 1, 'Raj', 'PVR Cinemas', 12, '2020-07-14'),
(6, 7, 'Bhavin', 'PVR Cinemas', 1, '2020-07-15'),
(7, 7, 'Bhavin', 'Cineworld Cinemas', 12, '2020-07-12'),
(9, 9, 'Roshan', 'PVR Cinemas', 2, '2020-07-17');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `v_id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `u_id`, `comment`, `v_id`, `name`) VALUES
(39, 1, 'This is Awesome', 1, 'admin'),
(40, 7, 'Nice Movie', 1, 'Bhavin'),
(41, 1, 'Awesome', 2, 'admin'),
(43, 7, 'This is awesome', 2, 'Bhavin');

-- --------------------------------------------------------

--
-- Table structure for table `event_r`
--

CREATE TABLE `event_r` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `event` text NOT NULL,
  `tno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_r`
--

INSERT INTO `event_r` (`id`, `uid`, `event`, `tno`) VALUES
(1, 1, 'Music Concert', 1),
(2, 1, 'Garba Event', 1),
(3, 1, 'Garba Event', 5),
(4, 7, 'Music Concert', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_07_11_151408_create_posts_table', 2),
(5, '2020_07_11_155050_create_posts_table', 3);

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
-- Table structure for table `poster`
--

CREATE TABLE `poster` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `rating_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poster`
--

INSERT INTO `poster` (`id`, `name`, `image`, `rating_id`) VALUES
(1, 'Fast & Furious 9', 'storage/f9.jpgMarvel\'s Black Widow', 0),
(2, 'Marvel\'s Black Widow', 'storage/blackwidow.jpg', 0),
(3, 'Bloodshot', 'storage/bloodshot.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'name', NULL, NULL),
(2, 'movie1', NULL, NULL),
(3, 'movie2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rateable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `created_at`, `updated_at`, `rating`, `rateable_type`, `rateable_id`, `user_id`) VALUES
(8, '2020-07-13 14:33:22', '2020-07-13 14:33:22', 5, 'App\\vid', 1, 1),
(9, '2020-07-13 14:33:51', '2020-07-13 14:33:51', 5, 'App\\vid', 2, 1),
(10, '2020-07-13 14:34:06', '2020-07-13 14:34:06', 4, 'App\\vid', 1, 1),
(11, '2020-07-13 15:41:28', '2020-07-13 15:41:28', 4, 'App\\vid', 3, 1),
(12, '2020-07-13 23:56:10', '2020-07-13 23:56:10', 5, 'App\\vid', 3, 7),
(13, '2020-07-13 23:57:49', '2020-07-13 23:57:49', 3, 'App\\vid', 2, 7),
(14, '2020-07-14 06:52:36', '2020-07-14 06:52:36', 2, 'App\\vid', 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `timage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`id`, `title`, `timage`) VALUES
(1, 'PVR Cinemas', 'storage/movie2.jpg'),
(2, 'Miraj Cinemas', 'storage/movie3.jpg'),
(3, 'Carnival Cinemas', 'storage/movie4.jpg'),
(4, 'Rajhans Cinemas', 'storage/movie5.jpg\r\n'),
(5, 'Cineworld Cinemas', 'storage/movie6.jpg\r\n'),
(6, 'Golden Cinemas', 'storage/new2.png'),
(7, 'Citylights ', 'storage/new1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
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
(1, 'admin', 'admin@gmail.com', '2020-07-06 01:12:57', '$2y$10$qS1Yfhn3a1sGe.mJ1eD.t.BiuYv6HDOJuYfRlC3BuL.T6ShPmUudm', 'bAMDrvFyNwgu3l5Bw4nvQ5HQtCwioQr2JmXrTQLnctFXKPVuoS3YaNqF1Cvj', '2020-07-01 05:18:26', '2020-07-06 01:12:57'),
(2, 'mehul', 'admin1@gmail.com', NULL, '$2y$10$JS7OCebWLSXvbqPVFOOD8u41wRHnD78XAOJ7IR1Q7AC7EuMs8JMO2', NULL, '2020-07-01 22:49:57', '2020-07-01 22:49:57'),
(4, 'mv', 'msvaghela2@gmail.com', '2020-07-06 01:11:32', '$2y$10$KeQO1kir03qnWM2BYOED4ukey2UvQTmAuvSQiDiSYbaXFeSUA14Cq', NULL, '2020-07-02 01:20:24', '2020-07-06 01:11:32'),
(5, 'mehul', 'mehul@gmail.com', NULL, '$2y$10$go65Hx9bbK6d93VO7WVYX.T6hHSRKgYXbbgzI4IYPxxHfu58QPqrG', NULL, '2020-07-02 02:34:50', '2020-07-02 02:34:50'),
(7, 'Bhavin', 'Bhavin@gmail.com', NULL, '$2y$10$Z8ndcsHe7sY2dLS8BbJx1.nstrE1S4fCK/VfdeYryx078YYmrJHCG', NULL, '2020-07-04 00:27:50', '2020-07-04 00:27:50'),
(9, 'rohan', 'rrajput4658@gmail.com', '2020-07-06 01:30:52', '$2y$10$sdPYIeEOIIesOD27c8pyjelJ2phx..cg25domwZmVU6p4QPqXRUim', NULL, '2020-07-06 01:23:24', '2020-07-06 01:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `release` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `video`, `release`) VALUES
(1, 'Fast & Furious 9', 'storage/f9.mp4', '2020-07-23'),
(2, 'Marvel\'s Black Widow', 'storage/bw.mp4', '2020-07-14'),
(3, 'Bloodshot', 'storage/bs.mp4', '2020-05-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookdetails`
--
ALTER TABLE `bookdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`u_id`),
  ADD KEY `v_id` (`v_id`);

--
-- Indexes for table `event_r`
--
ALTER TABLE `event_r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`uid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookdetails`
--
ALTER TABLE `bookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `event_r`
--
ALTER TABLE `event_r`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `theatre`
--
ALTER TABLE `theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookdetails`
--
ALTER TABLE `bookdetails`
  ADD CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `userid` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `v_id` FOREIGN KEY (`v_id`) REFERENCES `videos` (`Id`);

--
-- Constraints for table `event_r`
--
ALTER TABLE `event_r`
  ADD CONSTRAINT `u_id` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
