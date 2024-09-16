-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 07:07 AM
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
-- Database: `monopoly`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_date`
--

CREATE TABLE `book_date` (
  `id` int(200) NOT NULL,
  `card_owner_id` int(200) NOT NULL,
  `card_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `bookdate` date NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Pending',
  `event` varchar(200) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_date`
--

INSERT INTO `book_date` (`id`, `card_owner_id`, `card_id`, `user_id`, `bookdate`, `status`, `event`, `date`) VALUES
(3, 1, 8, 4, '2024-06-20', 'Pending', 'Birthday Party', '2024-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `category` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `img`) VALUES
(8, 'Painter', '6.png');

-- --------------------------------------------------------

--
-- Table structure for table `conf_msg`
--

CREATE TABLE `conf_msg` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `book_date` date NOT NULL,
  `price` varchar(200) NOT NULL,
  `message` varchar(255) NOT NULL,
  `sender_id` int(200) NOT NULL,
  `receiver_id` int(200) NOT NULL,
  `card_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conf_msg`
--

INSERT INTO `conf_msg` (`id`, `name`, `book_date`, `price`, `message`, `sender_id`, `receiver_id`, `card_id`) VALUES
(1, '', '0000-00-00', '', 'Dear prashik bhau,\r\n\r\nWe are pleased to inform you that your card has been successfully booked on 2024-06-20. We have received your registration fee of 1500. Please contact your card owner for any fur', 1, 4, 8),
(5, '', '0000-00-00', '', 'Dear Seeta Patil,\r\n\r\nWe are pleased to inform you that your card has been successfully booked on 2024-06-15. We have received your registration fee of 1500. Please contact your card owner for any further details or assistance.\r\n\r\nThank you for choosing ou', 1, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_address`
--

CREATE TABLE `homepage_address` (
  `id` bigint(20) NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homepage_address`
--

INSERT INTO `homepage_address` (`id`, `state_name`, `district_name`) VALUES
(1, 'state_name', 'district_name'),
(2, 'state_name', 'district_name'),
(3, 'MAHARASHTRA', 'Ahmadnagar'),
(4, 'MAHARASHTRA', 'Akola'),
(5, 'MAHARASHTRA', 'Amravati'),
(6, 'MAHARASHTRA', 'Aurangabad'),
(7, 'MAHARASHTRA', 'Bhandara'),
(8, 'MAHARASHTRA', 'Bid'),
(9, 'MAHARASHTRA', 'Buldana'),
(10, 'MAHARASHTRA', 'Chandrapur'),
(11, 'MAHARASHTRA', 'Dhule'),
(12, 'MAHARASHTRA', 'Gadchiroli'),
(13, 'MAHARASHTRA', 'Gondiya'),
(14, 'MAHARASHTRA', 'Hingoli'),
(15, 'MAHARASHTRA', 'Jalgaon'),
(16, 'MAHARASHTRA', 'Jalna'),
(17, 'MAHARASHTRA', 'Kolhapur'),
(18, 'MAHARASHTRA', 'Latur'),
(19, 'MAHARASHTRA', 'Mumbai'),
(20, 'MAHARASHTRA', 'Mumbai Suburban'),
(21, 'MAHARASHTRA', 'Nagpur'),
(22, 'MAHARASHTRA', 'Nanded'),
(23, 'MAHARASHTRA', 'Nandurbar'),
(24, 'MAHARASHTRA', 'Nashik'),
(25, 'MAHARASHTRA', 'Osmanabad'),
(26, 'MAHARASHTRA', 'Palghar'),
(27, 'MAHARASHTRA', 'Parbhani'),
(28, 'MAHARASHTRA', 'Pune'),
(29, 'MAHARASHTRA', 'Raigarh'),
(30, 'MAHARASHTRA', 'Ratnagiri'),
(31, 'MAHARASHTRA', 'Sangli'),
(32, 'MAHARASHTRA', 'Satara'),
(33, 'MAHARASHTRA', 'Sindhudurg'),
(34, 'MAHARASHTRA', 'Solapur'),
(35, 'MAHARASHTRA', 'Thane'),
(36, 'MAHARASHTRA', 'Wardha'),
(37, 'MAHARASHTRA', 'Washim'),
(38, 'MAHARASHTRA', 'Yavatmal');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_card`
--

CREATE TABLE `homepage_card` (
  `id` bigint(20) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `card_image` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Deactive',
  `rating` decimal(3,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `user_id` int(200) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `taluka` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `bookingfee` int(255) NOT NULL,
  `qr` varchar(200) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homepage_card`
--

INSERT INTO `homepage_card` (`id`, `card_name`, `description`, `card_image`, `price`, `status`, `rating`, `address`, `date`, `user_id`, `category_name`, `state`, `taluka`, `district`, `img1`, `img2`, `img3`, `bookingfee`, `qr`, `contact`) VALUES
(5, 'Royal Hotel, Akola', '5 Star Rating, Number one hotel in Akola.', 'royal.jpg', 90000.00, 'Deactive', 0.00, 'rathi nagar', '2024-05-28', 3, 'Hotel', 'Maharashtra', 'Dhamangaon', 'district_name', 'h1.jpg', 'h2.jpg', 'h3.jpg', 0, '', ''),
(9, 'Pappu Plumber ', 'plumber in Amravati is anywhere between INR 500 to INR 800 for repairs and small fixes.', 'images.jpeg', 350.00, 'Deactive', 0.00, '', '2024-09-09', 4, 'Painter', 'Maharashtra', 'Dhamangaon', 'Amravati', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_user`
--

CREATE TABLE `homepage_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL DEFAULT 'Deactive',
  `district` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `state` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homepage_user`
--

INSERT INTO `homepage_user` (`id`, `name`, `mobile`, `email`, `password`, `date`, `status`, `district`, `category_id`, `state`) VALUES
(1, 'Ram Patil', '08888888888', 'ram@gmail.com', 'ram', '0000-00-00', 'Active', 'Akola', 0, 'Maharashtra'),
(2, 'Seeta Patil', '1235647895', 'seeta@gmail.com', 'seeta', '0000-00-00', 'Deactive', 'Amravati', 0, 'Maharashtra'),
(3, 'Lakshman Patil', '8835647895', 'lkshman@gmail.com', 'lkshman', '0000-00-00', 'Deactive', 'Akola', 0, 'Maharashtra'),
(4, 'prashik bhau', '7877777799', 'prashik@gmail.com', 'prashik', '0000-00-00', 'Active', 'Amravati', 0, 'Maharashtra'),
(5, 'Sakshi Patil', '9077777788', 'sakshi@gmail.com', 'Sakshi@123', '0000-00-00', 'Deactive', 'Latur', 0, 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `card_id` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `method` varchar(200) NOT NULL,
  `book_date` date NOT NULL,
  `txn_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `card_id`, `price`, `date`, `method`, `book_date`, `txn_id`) VALUES
(4, 4, 8, 1500, '2024-06-07 21:59:36.102891', 'OR Code', '2024-06-20', 'TXN00BMV002370'),
(5, 2, 8, 1500, '2024-06-09 17:20:22.053981', 'OR Code', '2024-06-15', 'TXN00BMV000319'),
(6, 4, 8, 1500, '2024-06-12 11:56:19.921939', 'PayPal', '2024-06-29', 'TXN00BMV002640'),
(7, 4, 8, 1500, '2024-06-12 11:56:31.759930', 'OR Code', '2024-06-29', 'TXN00BMV002640'),
(8, 4, 8, 1500, '2024-06-13 11:02:45.536508', 'OR Code', '2024-07-04', 'TXN00BMV003874'),
(9, 4, 1, 0, '2024-06-13 11:04:21.548372', 'OR Code', '2024-07-01', 'TXN00BMV003800'),
(10, 4, 1, 0, '2024-06-13 11:07:18.682497', 'OR Code', '2024-07-01', 'TXN00BMV000451');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `card_id` int(200) NOT NULL,
  `rate` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `card_id`, `rate`) VALUES
(1, 4, 1, 4),
(2, 2, 1, 2),
(3, 2, 8, 5),
(4, 4, 8, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_date`
--
ALTER TABLE `book_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conf_msg`
--
ALTER TABLE `conf_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_address`
--
ALTER TABLE `homepage_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_card`
--
ALTER TABLE `homepage_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homepage_card_user_id_39ebb1e1_fk_homepage_user_id` (`user_id`);

--
-- Indexes for table `homepage_user`
--
ALTER TABLE `homepage_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `homepage_user_category_id_5f9de109_fk_homepage_category_id` (`category_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_date`
--
ALTER TABLE `book_date`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `conf_msg`
--
ALTER TABLE `conf_msg`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `homepage_address`
--
ALTER TABLE `homepage_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `homepage_card`
--
ALTER TABLE `homepage_card`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `homepage_user`
--
ALTER TABLE `homepage_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
