-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 06:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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
  `username` varchar(200) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `username`, `phone_no`, `password`, `fname`, `lname`, `gender`, `dob`) VALUES
('1', 'rohan19', '8903562044', 'rohan19', 'ROHAN', 'ro', 'Male', '2003-01-07'),
('2', 'vysh', '5687498760', 'vysh', 'Vysh', 'navi', 'Female', '2002-10-18');

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` varchar(10) NOT NULL,
  `account_id` varchar(10) DEFAULT NULL,
  `prdt_id` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `ip_add` varchar(100) NOT NULL
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

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catg_id`, `catg_name`, `sport_id`) VALUES
('C01', 'Cricket Bat', 'S01'),
('C02', 'Cricket ball', 'S01');

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
  `password` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fname`, `lname`, `gender`, `dob`, `phone_no`, `username`, `password`, `user_id`) VALUES
('ROHAN', 'ro', 'Male', '2003-01-07', '8903562044', 'rohan19', 'rohan19', 1),
('Vysh', 'navi', 'Female', '2002-10-18', '5687498760', 'vysh', 'vysh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `prdt`
--

CREATE TABLE `prdt` (
  `id` varchar(10) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_desc` varchar(200) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `catg_id` varchar(10) DEFAULT NULL,
  `sport_name` varchar(100) NOT NULL,
  `product_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prdt`
--

INSERT INTO `prdt` (`id`, `product_name`, `product_desc`, `qty`, `price`, `catg_id`, `sport_name`, `product_image`) VALUES
('P01', 'CRICKET SHOES', NULL, 10, 2000, 'C03', 'CRICKET', 'cricketshoe.jpg'),
('P02', 'CRICKET BAT', NULL, 10, 10000, 'C01', 'CRICKET', 'cricketbat.jpg'),
('P03', 'CRICKET BALL', NULL, 20, 1500, 'C02', 'CRICKET', 'cricketball.jpg'),
('P04', 'PADS', NULL, 15, 5000, 'C04', 'CRICKET', 'cricketpads.jpg'),
('P05', 'GLOVES', NULL, 25, 2500, 'C05', 'CRICKET', 'cricketgloves.jpg'),
('P06', 'FOOTBALL SHOES', NULL, 10, 3000, 'C06', 'FOOTBALL', 'footballshoe.jpg'),
('P07', 'SHIN PADS', NULL, 20, 800, 'C07', 'FOOTBALL', 'shinpads.jpg'),
('P08', 'JERSEY', NULL, 50, 2000, 'C08', 'FOOTBALL', 'footballjersey.jpg'),
('P09', 'FOOTBALL', NULL, 20, 2000, 'C09', 'FOOTBALL', 'football.jpg'),
('P10', 'BASKETBALL SHOES', NULL, 20, 4000, 'C10', 'BASKETBALL', 'basketballshoes.jpg'),
('P11', 'JERSEY', NULL, 30, 3000, 'C11', 'BASKETBALL', 'basketballjersey.jpg'),
('P12', 'BASKETBALL', NULL, 20, 2000, 'C12', 'BASKETBALL', 'basketball.jpg'),
('P13', 'BAT', NULL, 20, 3500, 'C13', 'HOCKEY', 'hockeybat.jpg'),
('P14', 'PADS', NULL, 25, 4500, 'C14', 'HOCKEY', 'hockeypads.jpg'),
('P15', 'SHOES', NULL, 20, 2000, 'C15', 'HOCKEY', 'hockeyshoes.jpg'),
('P16', 'SHOES', NULL, 20, 4000, 'C16', 'TENNIS', 'tennisshoe.jpg'),
('P17', 'RACKET', NULL, 20, 10000, 'C17', 'TENNIS', 'tennisbat.jpg'),
('P18', 'TENNIS BALL', NULL, 30, 400, 'C18', 'TENNIS', 'tennisball.jpg'),
('P19', 'JERSEY', NULL, 30, 2500, 'C19', 'TENNIS', 'tennisjerseys.jpg'),
('P20', 'CRICKET SHOE', NULL, 20, 3500, 'C20', 'CRICKET', 'cricketshoe2.jpg'),
('P21', 'CRICKET SHOE', NULL, 20, 5000, 'C21', 'CRICKET', 'cricketshoe3.jpg'),
('P22', 'CRICKET BAT', NULL, 15, 10000, 'C22', 'CRICKET', 'cricketbat2.jpg'),
('P23', 'CRICKET BAT', NULL, 20, 12000, 'C23', 'CRICKET', 'cricketbat3.jpg'),
('P24', 'CRICKET BALL', NULL, 30, 2500, 'C24', 'CRICKET', 'cricketball2.jpg'),
('P25', 'GLOVES', NULL, 20, 4000, 'C25', 'CRICKET', 'cricketgloves2.jpg'),
('P26', 'GLOVES', NULL, 20, 4000, 'C26', 'CRICKET', 'cricketgloves3.jpg'),
('P27', 'PADS', NULL, 10, 5000, 'C27', 'CRICKET', 'cricketpads2.jpg'),
('P28', 'PADS', NULL, 10, 5000, 'C28', 'CRICKET', 'cricketpads3.jpg'),
('P29', 'FOOTBALL SHOES', NULL, 20, 4500, 'C29', 'FOOTBALL', 'footballshoe2.jpg'),
('P30', 'FOOTBALL SHOES', NULL, 20, 6000, 'C30', 'FOOTBALL', 'footballshoe3.jpg'),
('P31', 'JERSEY', NULL, 40, 3000, 'C31', 'FOOTBALL', 'footballjersey2.jpg'),
('P32', 'FOOTBALL JERSEY', NULL, 40, 3000, 'C32', 'FOOTBALL', 'footballjersey3.jpg'),
('P33', 'SHIN PADS', NULL, 25, 800, 'C33', 'FOOTBALL', 'shinpads2.jpg'),
('P34', 'BASKETBALL SHOES', NULL, 20, 4000, 'C34', 'BASKETBALL', 'basketballshoes2.jpg'),
('P35', 'BASKETBALL SHOES', NULL, 20, 4000, 'C35', 'BASKETBALL', 'basketballshoes3.jpg'),
('P36', 'JERSEY', NULL, 40, 2000, 'C36', 'BASKETBALL', 'basketballjersey2.jpg'),
('P37', 'JERSEY', NULL, 40, 2000, 'C37', 'BASKETBALL', 'basketballjersey3.jpg'),
('P38', 'HOCKEY BAT', NULL, 20, 3000, 'C38', 'HOCKEY', 'hockeybat2.jpg'),
('P39', 'HOCKEY SHOES', NULL, 20, 4000, 'C39', 'HOCKEY', 'hockeyshoes2.jpg'),
('P40', 'HOCKEY SHOES', NULL, 20, 4000, 'C40', 'HOCKEY', 'hockeyshoes3.jpg'),
('P41', 'TENNIS SHOES', NULL, 20, 2500, 'C41', 'TENNIS', 'tennisshoe2.jpg'),
('P42', 'TENNIS SHOES', NULL, 20, 2500, 'C42', 'TENNIS', 'tennisshoe3.jpg'),
('P43', 'RACKET', NULL, 15, 10000, 'C43', 'TENNIS', 'tennisbat2.jpg'),
('P44', 'JERSEY', NULL, 40, 2000, 'C44', 'TENNIS', 'tennisjerseys.jpg'),
('P45', 'JERSEY', NULL, 40, 2000, 'C45', 'TENNIS', 'tennisjerseys2.jpg');

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
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

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
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `prdt`
--
ALTER TABLE `prdt`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`prdt_id`) REFERENCES `prdt` (`id`);

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
