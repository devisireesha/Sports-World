-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 06:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` varchar(10) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` varchar(10) NOT NULL,
  `door_no` varchar(10) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` varchar(10) NOT NULL,
  `account_id` varchar(10) DEFAULT NULL,
  `prdt_id` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catg_id` varchar(10) NOT NULL,
  `catg_name` varchar(200) DEFAULT NULL,
  `sport_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fname`, `lname`, `gender`, `dob`, `phone_no`, `username`, `password`) VALUES
('ROHAN', 'ro', 'Male', '2003-01-07', '8903562044', 'rohan19', 'rohan19'),
('Vysh', 'navi', 'Female', '2002-10-18', '5687498760', 'vysh', 'vysh');

-- --------------------------------------------------------

--
-- Table structure for table `prdt`
--

CREATE TABLE `prdt` (
  `prdt_id` varchar(10) NOT NULL,
  `prdt_name` varchar(100) DEFAULT NULL,
  `prdt_specs` varchar(200) DEFAULT NULL,
  `qty_in_stock` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `catg_id` varchar(10) DEFAULT NULL,
  `sport_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prdt`
--

INSERT INTO `prdt` (`prdt_id`, `prdt_name`, `prdt_specs`, `qty_in_stock`, `price`, `catg_id`, `sport_name`) VALUES
('P01', 'CRICKET SHOES', NULL, 10, 2000, 'C01', 'CRICKET'),
('P02', 'CRICKET BAT', NULL, 10, 10000, 'C02', 'CRICKET'),
('P03', 'CRICKET BALL', NULL, 20, 1500, 'C03', 'CRICKET'),
('P04', 'PADS', NULL, 15, 5000, 'C04', 'CRICKET'),
('P05', 'GLOVES', NULL, 25, 2500, 'C05', 'CRICKET'),
('P06', 'FOOTBALL SHOES', NULL, 10, 3000, 'C06', 'FOOTBALL'),
('P07', 'SHIN PADS', NULL, 20, 800, 'C07', 'FOOTBALL'),
('P08', 'JERSEY', NULL, 50, 2000, 'C08', 'FOOTBALL'),
('P09', 'FOOTBALL', NULL, 20, 2000, 'C09', 'FOOTBALL'),
('P10', 'BASKETBALL SHOES', NULL, 20, 4000, 'C10', 'BASKETBALL'),
('P11', 'JERSEY', NULL, 30, 3000, 'C11', 'BASKETBALL'),
('P12', 'BASKETBALL', NULL, 20, 2000, 'C12', 'BASKETBALL'),
('P13', 'BAT', NULL, 20, 3500, 'C13', 'HOCKEY'),
('P14', 'PADS', NULL, 25, 4500, 'C14', 'HOCKEY'),
('P15', 'SHOES', NULL, 20, 2000, 'C15', 'HOCKEY'),
('P16', 'SHOES', NULL, 20, 4000, 'C16', 'TENNIS'),
('P17', 'RACKET', NULL, 20, 10000, 'C17', 'TENNIS'),
('P18', 'TENNIS BALL', NULL, 30, 400, 'C18', 'TENNIS'),
('P19', 'JERSEY', NULL, 30, 2500, 'C19', 'TENNIS');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `sport_id` varchar(10) NOT NULL,
  `sport_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`sport_id`, `sport_name`) VALUES
('S01', 'CRICKET'),
('S02', 'FOOTBALL'),
('S03', 'BASKETBALL'),
('S04', 'HOCKEY'),
('S05', 'TENNIS');

-- --------------------------------------------------------

--
-- Table structure for table `sport_order`
--

CREATE TABLE `sport_order` (
  `cart_id` varchar(10) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `shipping_cost` int(11) DEFAULT NULL,
  `addr_id` varchar(10) DEFAULT NULL,
  `total_amt` int(11) GENERATED ALWAYS AS (`sub_total` + `shipping_cost`) VIRTUAL,
  `payment_mode` varchar(200) DEFAULT NULL,
  `payment_id` varchar(200) DEFAULT NULL,
  `order_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `account_id` varchar(10) DEFAULT NULL,
  `address_id` varchar(10) DEFAULT NULL,
  `is_default` char(1) DEFAULT NULL,
  `address_type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `list_id` int(11) NOT NULL,
  `list_name` varchar(200) DEFAULT NULL,
  `account_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wish_list_items`
--

CREATE TABLE `wish_list_items` (
  `list_id` varchar(10) DEFAULT NULL,
  `prdt_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `prdt_id` (`prdt_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catg_id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `prdt`
--
ALTER TABLE `prdt`
  ADD PRIMARY KEY (`prdt_id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`sport_id`);

--
-- Indexes for table `sport_order`
--
ALTER TABLE `sport_order`
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD KEY `account_id` (`account_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`prdt_id`) REFERENCES `prdt` (`prdt_id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`sport_id`);

--
-- Constraints for table `sport_order`
--
ALTER TABLE `sport_order`
  ADD CONSTRAINT `sport_order_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `user_address_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD CONSTRAINT `wish_list_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
