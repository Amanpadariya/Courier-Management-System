-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 06:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(30) NOT NULL,
  `branch_code` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `street`, `city`, `state`, `zip_code`, `country`, `contact`, `date_created`) VALUES
(4, 'dIbUK5mEh96f0Zc', 'junagadh road', 'junagadh', 'gujarat', '360317', 'Bharat', '767625466', '2024-11-01 13:31:49'),
(5, 'WfF1ARc3XklxUr8', 'KKV Hall', 'Rajkot', 'Gujarat', '360324', 'Bharat', '08735011415', '2024-01-05 22:35:14'),
(6, 'rVhgPDjm9WJCT7R', 'Busstand Road ', 'Gondal', 'Gujarat', '360311', 'Bharat', '8735011415', '2024-01-13 10:54:15'),
(7, 'Y6rtq7sV0gNhlWZ', 'Nehru Nagar Main road', 'Ahemdabad', 'Gujarat', '320 001', 'Bharat', '84015 68067', '2024-01-13 11:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE `parcels` (
  `id` int(30) NOT NULL,
  `reference_number` varchar(100) NOT NULL,
  `sender_name` text NOT NULL,
  `sender_address` text NOT NULL,
  `sender_contact` text NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_address` text NOT NULL,
  `recipient_contact` text NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 = Deliver, 2=Pickup',
  `from_branch_id` varchar(30) NOT NULL,
  `to_branch_id` varchar(30) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `width` varchar(100) NOT NULL,
  `length` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`, `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, `price`, `status`, `date_created`) VALUES
(7, '695004590881', 'Pratik', 'gondal', '98989898', 'Viraj', 'jetpur', '5454545454', 2, '1', '3', '20', '12', '12', '11', 60, 0, '2024-01-05 22:28:32'),
(8, '165572353946', 'Pratik', 'gondal', '98989898', 'Viraj', 'jetpur', '5454545454', 2, '5', '1', '20', '12', '12', '11', 60, 8, '2024-01-06 09:29:55'),
(9, '699703293249', 'Pratik', 'gondal', '98989898', 'Viraj', 'jetpur', '5454545454', 2, '5', '1', '35', '66', '18', '66', 8, 7, '2024-01-06 09:29:55'),
(10, '400286861349', 'vraj', 'kalavad road', '98989898', 'dhruv', 'bhojrajpara', '5454545454', 2, '4', '', '20', '12', '12', '11', 60, 0, '2024-01-06 12:08:51'),
(11, '514185794055', 'jay ', 'madhapar chowk', '98989898', 'mayank', 'akshar mandir gondal', '5454545454', 2, '5', '1', '20', '12', '12', '11', 60, 0, '2024-01-06 12:10:17'),
(12, '533171989029', 'MAYANK', 'axbjhAAGXjhaG', '98989898', 'ssefhksejhfh', 'axbjhAAGXjhaG', '5454545454', 2, '5', '4', '20', '12', '12', '11', 60, 8, '2024-01-06 13:26:18'),
(13, '967846510269', 'AYUSH  PATEL', '34,JETPUR ROAD ,GONDAL ', '9977521332', 'JATIN BHAI', 'SETELITE ROAD AMDAVAD', '84467223', 2, '7', '6', '20', '12', '12', '11', 680, 0, '2024-01-18 17:46:38'),
(14, '489328535189', 'VANSH PATEL', 'TALETI ROAD ', '5566379332', 'FARUK BHAI', 'BHOJAPRA 26 NO', '5454545454', 1, '7', '6', '20', '12', '12', '11', 510, 0, '2024-01-18 17:50:57'),
(16, '979210884146', 'a +', 'gondal', '98989898', 'sid', 'gondal', '5454545454', 2, '4', '6', '20', '11', '12', '11', 60, 0, '2024-03-12 09:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `parcel_tracks`
--

CREATE TABLE `parcel_tracks` (
  `id` int(30) NOT NULL,
  `parcel_id` int(30) NOT NULL,
  `status` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parcel_tracks`
--

INSERT INTO `parcel_tracks` (`id`, `parcel_id`, `status`, `date_created`) VALUES
(11, 8, 1, '2024-01-06 09:30:53'),
(12, 9, 7, '2024-01-06 10:02:13'),
(13, 8, 8, '2024-01-06 12:07:50'),
(14, 12, 8, '2024-01-06 13:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Bharat Express', 'info@sample.comm', '+6948 8542 623', '2102  jetpur Road, Udhyog nagar, Gondal, 360311', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `branch_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `branch_id`, `date_created`) VALUES
(1, 'Aman ', 'Padariya', 'aman@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 0, '2020-11-26 10:57:04'),
(6, 'Akshit', 'Movaliya', 'akshit@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 6, '2024-01-13 11:08:12'),
(7, 'Sidhu', 'Dod', 'sid@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 4, '2024-01-13 11:08:59'),
(8, 'Mayank ', 'Jayswal', 'mayank@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 5, '2024-01-13 11:10:04'),
(9, 'pratikk', 'patell', 'pratikk@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2, 7, '2024-01-13 11:10:46'),
(10, 'Jay', 'Gohel', 'jay@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 4, '2024-01-21 19:37:42'),
(11, 'Ayush', 'Patel', 'ayush@1234', '202cb962ac59075b964b07152d234b70', 2, 5, '2024-04-06 16:23:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcels`
--
ALTER TABLE `parcels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `parcels`
--
ALTER TABLE `parcels`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
