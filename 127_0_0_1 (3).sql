-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 07:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accident`
--
CREATE DATABASE IF NOT EXISTS `accident` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `accident`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `allocate`
--

CREATE TABLE `allocate` (
  `id` int(11) NOT NULL,
  `criminalid` int(11) NOT NULL,
  `caseid` int(11) NOT NULL,
  `personname` text NOT NULL,
  `vehicleno` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `datee` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allocate`
--

INSERT INTO `allocate` (`id`, `criminalid`, `caseid`, `personname`, `vehicleno`, `mobile`, `address`, `description`, `datee`) VALUES
(2, 2, 3, 'Ramya', 'TN 39 BK 0516', '7418227833', 'XXXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXXXXXX', '2020-02-19 13:32:31'),
(3, 3, 4, 'v', 'v', 'v', 'v', 'v', '2023-02-20 10:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `caset`
--

CREATE TABLE `caset` (
  `id` int(11) NOT NULL,
  `casename` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caset`
--

INSERT INTO `caset` (`id`, `casename`, `description`) VALUES
(2, 'NO HELMET', 'Who not wearing helmet'),
(3, 'OVER SPEED', 'over speed'),
(4, 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

CREATE TABLE `criminal` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `mobile` text NOT NULL,
  `aadhar` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criminal`
--

INSERT INTO `criminal` (`id`, `firstname`, `lastname`, `mobile`, `aadhar`, `address`) VALUES
(2, 'Rajesh', 'M', '7418227833', '123456', 'XXXXXXXXXX'),
(3, 'v', 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `department` text NOT NULL,
  `profession` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `fulladdress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `firstname`, `lastname`, `department`, `profession`, `username`, `password`, `fulladdress`) VALUES
(1, 'Thilagavathy', 'T', 'Sub Inspector', 'SI', 'admin', 'admin', 'XXXXXXXXXXXXXXXXXXXXX'),
(2, 'Praveena', 'P', 'Tirupur', 'Inspector', 'praveena', 'praveena', 'XXXXXXXXXXX'),
(3, 'v', 'v', 'v', 'v', 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allocate`
--
ALTER TABLE `allocate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caset`
--
ALTER TABLE `caset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criminal`
--
ALTER TABLE `criminal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allocate`
--
ALTER TABLE `allocate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `caset`
--
ALTER TABLE `caset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `criminal`
--
ALTER TABLE `criminal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `bakery`
--
CREATE DATABASE IF NOT EXISTS `bakery` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bakery`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `alternate` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `company` text NOT NULL,
  `model` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `details` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `bank`
--
CREATE DATABASE IF NOT EXISTS `bank` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bank`;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `bankname` text NOT NULL,
  `branch` text NOT NULL,
  `address` text NOT NULL,
  `ifsccode` text DEFAULT NULL,
  `landline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `bankname`, `branch`, `address`, `ifsccode`, `landline`) VALUES
(2, 'jkh', 'kjh', 'kjh', 'kjh', 'kjh'),
(3, 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `bankId` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `mobile` text NOT NULL,
  `aadhar` text NOT NULL,
  `idproof` text NOT NULL,
  `gender` text NOT NULL,
  `age` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `pincode` text NOT NULL,
  `status` text NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `bankId`, `fname`, `lname`, `mobile`, `aadhar`, `idproof`, `gender`, `age`, `address1`, `address2`, `city`, `state`, `pincode`, `status`) VALUES
(2, 0, 'jh', 'kjh', 'kh', 'kh', 'khk', 'hkh', 'hk', 'h', 'jk', 'k', 'hk', 'hk', 'Approved'),
(3, 2, 'name', 'lname', 'mobile', 'aadha', 'id', 'mal', 'ag', 'add', 'add2', 'cit', 'sta', 'pin', 'Approved'),
(4, 3, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `bank_id` text NOT NULL,
  `mobile` text NOT NULL,
  `landline` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `bank_id`, `mobile`, `landline`, `username`, `password`) VALUES
(2, '2', 'asd', 'asd', 'as', 'as'),
(3, '2', 'adsa', 'asdasd', 'asd', 'asd'),
(4, '3', 'a', 'a', 'a', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `biddingsystemdb`
--
CREATE DATABASE IF NOT EXISTS `biddingsystemdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biddingsystemdb`;

-- --------------------------------------------------------

--
-- Table structure for table `adloginfo`
--

CREATE TABLE `adloginfo` (
  `ip` varchar(30) NOT NULL,
  `browser` varchar(70) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adloginfo`
--

INSERT INTO `adloginfo` (`ip`, `browser`, `date`) VALUES
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; r', '2011-08-25 22:55:03'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; r', '2011-08-30 08:42:20'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; r', '2011-08-30 13:36:32'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-30 19:59:33'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-30 21:27:45'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 12:36:46'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 12:38:55'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 12:39:12'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 15:57:03'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 15:57:18'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 15:58:04'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 16:10:02'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-01 10:23:23'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-01 20:46:16'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-01 23:15:10'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-02 18:09:02'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-03 18:06:55'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-04 12:43:38'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-04 15:49:09'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-05 12:10:29'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-05 13:30:02'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-07 13:01:05'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-07 15:15:26'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-07 23:24:51'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-09 14:04:43'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-11 19:17:57'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-13 10:48:27'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-14 13:57:53'),
('127.0.0.1', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.5) Gecko/2009', '2011-09-15 10:37:43'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-15 15:32:48'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-16 08:35:57'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-16 16:14:15'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-16 19:29:28'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-17 10:14:21'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-17 12:55:08'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-17 15:58:06'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.1 (KHTML, like Gecko) Chr', '2011-09-17 16:52:28'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-18 19:16:53'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-18 19:42:05'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-18 19:45:51'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-19 01:57:23'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-19 14:14:30'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-19 14:54:20'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-20 00:46:14'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-20 05:46:58'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-20 09:39:49'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-20 19:01:15'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-21 11:37:50'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-21 20:52:07'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-02 02:31:31'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-16 22:01:26'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-20 14:35:23'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-20 18:27:32'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-20 21:38:22'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-21 02:00:54'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-23 14:04:03'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-12-02 08:54:19'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 22:00:34'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 22:11:17'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 22:47:08'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 22:51:06'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; r', '2011-08-25 22:55:03'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; r', '2011-08-30 08:42:20'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; r', '2011-08-30 13:36:32'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-30 19:59:33'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-30 21:27:45'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 12:36:46'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 12:38:55'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 12:39:12'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 15:57:03'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 15:57:18'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 15:58:04'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-08-31 16:10:02'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-01 10:23:23'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-01 20:46:16'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-01 23:15:10'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-02 18:09:02'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-03 18:06:55'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-04 12:43:38'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-04 15:49:09'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-05 12:10:29'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-05 13:30:02'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-07 13:01:05'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-07 15:15:26'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-07 23:24:51'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-09 14:04:43'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-11 19:17:57'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-13 10:48:27'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-14 13:57:53'),
('127.0.0.1', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.5) Gecko/2009', '2011-09-15 10:37:43'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-15 15:32:48'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-16 08:35:57'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-16 16:14:15'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-16 19:29:28'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-17 10:14:21'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-17 12:55:08'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0', '2011-09-17 15:58:06'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.1 (KHTML, like Gecko) Chr', '2011-09-17 16:52:28'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-18 19:16:53'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-18 19:42:05'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-18 19:45:51'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-19 01:57:23'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-19 14:14:30'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-19 14:54:20'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-20 00:46:14'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-20 05:46:58'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-20 09:39:49'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-09-20 19:01:15'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-21 11:37:50'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-09-21 20:52:07'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-02 02:31:31'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-16 22:01:26'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-20 14:35:23'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-20 18:27:32'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-20 21:38:22'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-21 02:00:54'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:6.0) Gecko/20100101 Firefox/6.0', '2011-10-23 14:04:03'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '2011-12-02 08:54:19'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 22:00:34'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 22:11:17'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 22:47:08'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 23:02:05'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Fire', '2018-10-11 23:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bidreport`
--

CREATE TABLE `bidreport` (
  `bidid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `bidder` varchar(60) NOT NULL,
  `biddatetime` varchar(60) NOT NULL,
  `bidamount` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bidreport`
--

INSERT INTO `bidreport` (`bidid`, `productid`, `bidder`, `biddatetime`, `bidamount`, `status`) VALUES
(12, 3, '1', '2011-09-15 11:03:05', 5000, 0),
(13, 3, '1', '2011-09-15 11:05:18', 22222, 1),
(14, 2, '1', '2011-09-15 11:06:10', 10000, 1),
(15, 2, '1', '2011-09-15 11:06:36', 4000, 1),
(16, 3, '0', '2011-09-15 11:24:02', 50000, 1),
(17, 3, '1', '2011-09-15 15:43:28', 867676767, 1),
(18, 2, '1', '2011-09-17 16:53:44', 55555555, 1),
(19, 4, '1', '2011-09-21 10:04:11', 12, 0),
(20, 9, '16', '2011-09-22 12:19:21', 123, 0),
(21, 5, '1', '2011-09-27 14:42:04', 2147483647, 0),
(22, 8, '16', '2011-10-20 01:34:01', 46222, 0),
(23, 6, '16', '2011-10-20 13:24:57', 12, 0),
(24, 6, '16', '2011-10-20 13:46:24', 123, 0),
(25, 6, '16', '2011-10-20 13:54:09', 124, 0),
(26, 6, '16', '2011-10-20 14:09:00', 125, 0),
(27, 6, '16', '2011-10-20 14:20:33', 126, 0),
(28, 15, '16', '2011-10-20 20:50:56', 16, 0),
(29, 15, '16', '2011-10-20 20:53:47', 17, 0),
(30, 15, '16', '2011-10-20 20:54:06', 18, 0),
(31, 15, '16', '2011-10-20 20:57:30', 19, 0),
(32, 20, '20', '2011-10-21 04:04:38', 21, 0),
(33, 20, '20', '2011-10-21 04:09:00', 23001, 0),
(34, 23, '16', '2011-10-27 19:31:29', 4001, 0),
(35, 27, '16', '2011-12-02 09:43:38', 11000, 0),
(36, 27, '16', '2011-12-02 09:44:51', 11100, 0),
(37, 27, '16', '2011-12-02 09:47:29', 11110, 0),
(38, 27, '16', '2011-12-02 09:49:26', 11111, 0),
(39, 27, '16', '2011-12-02 09:50:47', 11112, 0),
(40, 27, '16', '2011-12-02 09:51:52', 11113, 0),
(41, 27, '16', '2011-12-02 09:53:29', 11114, 0),
(42, 27, '16', '2011-12-02 09:55:05', 11115, 0),
(43, 28, '21', '2018-10-11 22:12:56', 19500, 0),
(44, 28, '24', '2018-10-11 23:01:07', 20000, 0),
(45, 28, '21', '2018-10-11 23:01:47', 21000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `memberid` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `browser` varchar(60) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`memberid`, `ip`, `browser`, `date`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefo', '2011-09-20 19:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberid` int(11) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contactno` int(11) NOT NULL,
  `birthdate` varchar(30) NOT NULL,
  `address` varchar(60) NOT NULL,
  `verification` varchar(5) NOT NULL,
  `memberimg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberid`, `lastname`, `firstname`, `gender`, `userid`, `password`, `email`, `contactno`, `birthdate`, `address`, `verification`, `memberimg`) VALUES
(1, 'uuhghfg', 'f', '', 'frrrr', 'ffff', 'fretx@yahoo.co', 66767, 'Date Month Year', 'City 86867', 'yes', 'default.jpg'),
(2, 'hhhh', 'hhhhh', '', 'ttt', 'ttt', 'ghyhhff@yahoo.com', 444322, ' Month ?', 'Bacolod hhhhhh', '', 'default.jpg'),
(16, 'Segotier', 'Fretz \"Pnoid\"', 'Male', 'mr.scarecrow011', '', 'naruto16_fanatic@yahoo.com', 2147483647, '10 January 1993', 'Bacolod Brgy. XX', 'yes', '305434_2063556988210_1223296885_31905736_1121941913_n.jpg'),
(17, 'Eunice Alyana', 'Bautista', 'Female', 'EuniceAlyanaSexy', 'eunice', 'eunicegwapa@yahoo.com', 124444444, '1 January 1997', 'Silay sa higad sg suba pakadto sa iban nga balay', '0', 'default.jpg'),
(18, 'Charmin', 'Lopez', 'Female', 'charminkuia', 'qwerty', 'charmin@yahoo.com', 123678, '1 January 1990', 'Silay Kung diin si Eunice nag talang', '0', 'default.jpg'),
(19, 'asdfasdfdddd', 'asdfsdf', 'Female', '1111', 'ffffff', 'asdfasd@yahoo.com', 76888, '3 Month 1998', 'Bacolod wq342434', '0', 'default.jpg'),
(20, 'dddddddddddddd', 'asdffffff', 'Male', 'asdfkkkkkk', 'qwerty', 'asdfasdfsadfsadf@yahoo.com', 980890, 'Date Month Year', 'Bacolod dfdfdf', 'yes', 'default.jpg'),
(21, 'Harry', 'Den', 'Male', 'harry', 'codeprojects', 'harryden@ourmail.com', 2147483647, '5 August 1996', 'Silay Demo', 'yes', 'default.jpg'),
(24, 'code', 'projects', 'Male', 'codeprojects', 'codeprojects', 'codeprojectsorg@gmail.com', 2147483647, '10 October 1996', 'Bacolod demo', 'yes', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `msgnotifs`
--

CREATE TABLE `msgnotifs` (
  `msgnotifsid` int(11) NOT NULL,
  `toid` varchar(11) NOT NULL,
  `fromid` varchar(11) NOT NULL,
  `msgnotif` varchar(300) NOT NULL,
  `datecreated` varchar(60) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `msgnotifs`
--

INSERT INTO `msgnotifs` (`msgnotifsid`, `toid`, `fromid`, `msgnotif`, `datecreated`, `status`) VALUES
(1, 'admin', '1', 'bwahahahahaha', 'ddfdfdfdfdf', 1),
(2, 'admin', '1', 'dsfsdfdsfdsfdsfds', '', 1),
(3, 'admin', '1', 'tinarso. . indi na ko kabalo sang hilimuon', '09-9977=098', 1);

-- --------------------------------------------------------

--
-- Table structure for table `needtopay`
--

CREATE TABLE `needtopay` (
  `needtopayid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `declined` int(11) NOT NULL,
  `dateadded` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `needtopay`
--

INSERT INTO `needtopay` (`needtopayid`, `memberid`, `productid`, `status`, `payment`, `declined`, `dateadded`) VALUES
(267, 16, 2, 0, 1000, 0, '2011-10-20 20:21:52'),
(268, 2, 2, 0, 55555555, 0, '2011-10-20 20:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `pcategories`
--

CREATE TABLE `pcategories` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `catimage` varchar(100) NOT NULL,
  `categorydes` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pcategories`
--

INSERT INTO `pcategories` (`categoryid`, `categoryname`, `catimage`, `categorydes`) VALUES
(9, 'Laptop Computers', 'p2.gif', ''),
(10, 'Cellphones', 'phone4.jpg', ''),
(11, 'Computer Accessories', 'index1111.jpg', ''),
(12, 'Desktop Computers', 'index.jpg', ''),
(13, 'Jewelries', 'jewelries.jpg', ''),
(14, 'Camera', 'http _cdn.cnn.com_cnnnext_dam_assets_170224172523-mojito.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `prodname` varchar(30) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `prodescription` varchar(300) NOT NULL,
  `startingbid` int(11) NOT NULL,
  `prodimage` varchar(100) NOT NULL,
  `regularprice` int(11) NOT NULL,
  `dateposted` date NOT NULL,
  `duedate` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `sellername` varchar(30) NOT NULL,
  `sellerpayaccount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `prodname`, `categoryid`, `prodescription`, `startingbid`, `prodimage`, `regularprice`, `dateposted`, `duedate`, `status`, `sellername`, `sellerpayaccount`) VALUES
(16, 'ZTC Cellphone (L101+)', 10, 'Dual Sim dual standby, handwritten & keyboard \r\nListen to the music by Innervation swing screen \r\nSupports Bluetooth and wireless stereo music output \r\nSupports: FM output, MP3, MP4, GPRS, WAP \r\nSupports T-Flash card extended, USB2.0 full speed ', 2000, 'p4,gif', 0, '2011-10-12', '2012-01-01', '1', '', ''),
(17, 'AT&T Samsung a877', 10, 'equipped with a QWERTY keyboard and WQVGA AMOLED Touch screen,but In fact this phone is not a smartphone,the best of this phone is features include a 3.2-inch WQVGA AMOLED touchscreen,a 3 megapixel camera, GPS, HSDPA and Bluetooth', 5000, 'p2.gif', 0, '2011-10-12', '2012-01-12', '1', '', ''),
(18, 'CYLINDER AUDIO SPEAKERS', 11, '* 2.0 channel* Volume & power dial* Stereo jack to connect to computer or any audio deviceImprint Area:1-1/2\"W x 3/4\"H on speaker without dialWeight: Weight 17 lbs.', 500, 'p2.gif', 0, '2011-10-12', '2011-12-01', '1', '', ''),
(19, 'Sungjut TangoX Nano UMPC', 9, 'has a DVI output and a detachable, integrated Skype phone. Weight: under 1kg. Unbelievable.', 22000, 'p2.gif', 0, '2011-10-12', '2011-12-12', '1', '', ''),
(20, 'Dialogueâ€™s Flybook V33', 9, 'Dialogue is going to release the Flybook V33i series with a laptop screen which can be moved across its axis. A nice alternative to a static laptop screen weâ€™ve seen over the last years.', 23000, 'p4.gif', 0, '2011-10-12', '2011-10-13', '1', '', ''),
(21, 'Indian Rings', 13, 'Basi Buy1 Take1 kay duwa ka bilog hu. .', 20000, 'p2.gif', 0, '2011-10-11', '2011-12-12', '1', '', ''),
(22, 'wew', 9, 'affdfdfdfd', 1200, 'EdwardScissorhands-tf.org-free-2008.jpg', 0, '2011-10-12', '2011-12-01', '1', 'mr.scarecrow011', 'naruto16_fanatic@yahoo.com'),
(23, 'asdfasdf', 10, 'wewe', 400, 'blazers.jpg', 0, '2011-10-12', '2011-10-12', '1', 'mr.scarecrow011', 'naruto16_fanatic@yahoo.com'),
(24, 'wewewe', 10, 'afasdfasdfasdf', 1, 'EdwardScissorhands-tf.org-free-2008.jpg', 0, '2011-10-12', '2011-10-12', '1', 'mr.scarecrow011', 'naruto16_fanatic@yahoo.com'),
(25, 'wewness to the max', 9, 'nami ni sa nami ', 12000, 'people.png', 1000, '2011-10-12', '2011-10-12', '1', '', ''),
(26, 'asdjfkasdjf', 11, 'dfaglksdlf', 90000, 'people.png', 1000, '2011-12-02', '2011-12-03', '1', '', ''),
(27, 'lsadfksa', 9, 'lskdflsdf', 10000, 'share.png', 100, '2011-12-02', '2011-12-16', '1', '', ''),
(28, 'GoPro Hero 7', 14, 'Demo description', 18500, 'CC_H7Black_2X_D.png', 26000, '2018-10-11', '2018-11-11', '0', '', ''),
(29, 'iPhone 8', 10, 'SELLER NOTE: Fully tested and restored to factory settings by our in-house technicians. \r\n4K Video Recording, Accelerometer, Camera, Colour Screen, Email, Fingerprint Sensor, FM Radio, Front Camera, Internet Browsing, MMS (Multimedia Messaging), MP3 Player, Proximity Sensor, Rear Camera, Touch Scree', 48000, 'iphn8.png', 65000, '2018-10-11', '2018-11-11', '0', '', ''),
(30, 'Dell XPS 15', 9, 'Demo Description', 95000, 'dellXPS.jpg', 150000, '2018-10-11', '2018-11-11', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `secretquestions`
--

CREATE TABLE `secretquestions` (
  `memberid` int(11) NOT NULL,
  `question` varchar(60) NOT NULL,
  `answer` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `secretquestions`
--

INSERT INTO `secretquestions` (`memberid`, `question`, `answer`) VALUES
(2, 'Am I Gorgeous?', 'Am I Gorgeous?'),
(3, 'Am I Gorgeous?', ''),
(4, 'Am I Gorgeous?', 'Your Secret Answer:'),
(5, 'Pick a Security Question', 'Your Secret Answer:'),
(6, '', ''),
(7, 'Pick a Security Question', 'Your Secret Answer:'),
(8, 'Pick a Security Question', 'Your Secret Answer:'),
(9, 'Pick a Security Question', 'Your Secret Answer:'),
(10, 'Am I Gorgeous?', 'dfdghfghtht'),
(11, 'Pick a Security Question', 'Your Secret Answer:'),
(13, 'Am I Gorgeous?', 'te4'),
(14, 'Am I Gorgeous?', 'te4'),
(0, 'Am I Gorgeous?', 'vfv'),
(0, 'Pick a Security Question', 'Your Secret Answer:'),
(15, 'Am I Gorgeous?', 'yes'),
(16, 'Am I Gorgeous?', 'yezzz'),
(6, 'Pick a Security Question', 'Your Secret Answer:'),
(18, 'Am I Gorgeous?', 'yezzz'),
(17, 'Am I Gorgeous?', 'yezzz'),
(19, 'Am I Gorgeous?', '12121'),
(20, 'Am I Gorgeous?', '234234234'),
(21, 'Name of my Pet?', 'Tony'),
(22, 'Name of my Pet?', 'Tony'),
(22, 'Name of my Pet?', 'Tony'),
(22, 'Name of my Pet?', 'tony');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `memberid` int(11) NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`memberid`, `productid`) VALUES
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidreport`
--
ALTER TABLE `bidreport`
  ADD PRIMARY KEY (`bidid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `msgnotifs`
--
ALTER TABLE `msgnotifs`
  ADD PRIMARY KEY (`msgnotifsid`);

--
-- Indexes for table `needtopay`
--
ALTER TABLE `needtopay`
  ADD PRIMARY KEY (`needtopayid`);

--
-- Indexes for table `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidreport`
--
ALTER TABLE `bidreport`
  MODIFY `bidid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `msgnotifs`
--
ALTER TABLE `msgnotifs`
  MODIFY `msgnotifsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `needtopay`
--
ALTER TABLE `needtopay`
  MODIFY `needtopayid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Database: `bidding_db`
--
CREATE DATABASE IF NOT EXISTS `bidding_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bidding_db`;

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `bid_amount` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=bid,2=confirmed,3=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `user_id`, `product_id`, `bid_amount`, `status`, `date_created`) VALUES
(2, 5, 1, 7500, 1, '2020-10-27 14:18:50'),
(4, 5, 3, 155000, 1, '2020-10-27 16:37:29'),
(5, 1, 4, 110, 1, '2023-02-19 23:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Sample Category'),
(2, 'Appliances'),
(3, 'Desktop Computers'),
(4, 'Laptop'),
(5, 'Mobile Phone'),
(6, 'Books');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `start_bid` float NOT NULL,
  `regular_price` float NOT NULL,
  `bid_end_datetime` datetime NOT NULL,
  `img_fname` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `start_bid`, `regular_price`, `bid_end_datetime`, `img_fname`, `date_created`) VALUES
(1, 5, 'Sample Smart Phone', 'Sample only', 7000, 7000, '2020-10-27 19:00:00', '1.jpg', '2020-10-27 09:50:54'),
(3, 1, 'Gadget Package', 'Sample ', 150000, 15000, '2020-10-27 17:00:00', '3.jpg', '2020-10-27 09:59:39'),
(4, 6, 'Java', 'test', 100, 120, '2023-02-20 23:07:00', '', '2023-02-19 23:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Online Aution', 'info@sample.comm', '+6948 8542 623', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2=Subscriber',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `contact`, `address`, `type`, `date_created`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '+123456789', '', 1, '2020-10-27 09:19:59'),
(6, 'Gokul', 'gokul', '431b04904c05d3b001fef9d161ea2973', 'gokul18b@gmail.com', '8667216589', 'tirupur', 2, '2023-02-19 22:54:18'),
(7, 'test', 'admina', '21232f297a57a5a743894a0e4a801fc3', 'gok@gmail.com', 'as', 'ad', 2, '2023-02-20 19:42:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `book`
--
CREATE DATABASE IF NOT EXISTS `book` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `book`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `authorname` text NOT NULL,
  `description` text NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `authorname`, `description`, `qualification`) VALUES
(10, 'Balagurusamy', 'XXXXXXXXXXXXX', 'MBBX'),
(11, 'Rathnam', 'XXXXXXXXXX', 'XXXXXX'),
(12, 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `bookname` text NOT NULL,
  `publish` int(11) NOT NULL,
  `category` text NOT NULL,
  `subject` text NOT NULL,
  `price` int(11) NOT NULL,
  `ext` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `authorid`, `bookname`, `publish`, `category`, `subject`, `price`, `ext`) VALUES
(50, 10, 'Java', 2019, 'OOPS CONCEPT', 'JAVA', 560, ''),
(51, 11, 'C  ', 2017, 'CPP', 'CPP', 250, ''),
(53, 10, 'Java', 2017, 'Java', 'OOPS', 500, 'sql'),
(54, 12, 'v', 0, 'v', 'v', 0, 'pptx');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `purchasestatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `bookid`, `userid`, `purchasestatus`) VALUES
(7, 51, 7, 1),
(8, 52, 7, 1),
(9, 54, 8, 1),
(10, 50, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `mobile`, `email`, `username`, `password`) VALUES
(7, 'Dhanam', 'D', '12456789', 'dhanam@gmail.com', 'dhanam', 'dhanam'),
(8, 'v', 'v', 'v', 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `buspass`
--
CREATE DATABASE IF NOT EXISTS `buspass` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `buspass`;

-- --------------------------------------------------------

--
-- Table structure for table `pass`
--

CREATE TABLE `pass` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `from_place` text NOT NULL,
  `to_place` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pass`
--

INSERT INTO `pass` (`id`, `author`, `from_place`, `to_place`, `amount`) VALUES
(1, 'aad', 'as', 'asd', '12'),
(2, 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `author` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL,
  `pincode` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `mobile`, `author`, `age`, `gender`, `address`, `pincode`, `image`) VALUES
(1, 'name', 'mobil', 'aad', 'age', 'Male', 'add', 'as', 'img'),
(2, 'v', 'v', 'v', 'v', 'Male', 'v', 'v', 'img'),
(3, 'v', 'v', 'v', 'v', 'Male', 'jhjk', 'j', 'img');

-- --------------------------------------------------------

--
-- Table structure for table `renewal`
--

CREATE TABLE `renewal` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `from_date` text NOT NULL,
  `to_date` text NOT NULL,
  `from_place` text NOT NULL,
  `to_place` text NOT NULL,
  `amount` text NOT NULL,
  `mobile` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL,
  `age` text NOT NULL,
  `pincode` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `renewal`
--

INSERT INTO `renewal` (`id`, `author`, `from_date`, `to_date`, `from_place`, `to_place`, `amount`, `mobile`, `gender`, `address`, `age`, `pincode`, `name`) VALUES
(1, 'aad', 'asd', 'asd', 'as', 'asd', '12', 'mobil', 'Male', 'add', 'age', 'as', 'name'),
(2, 'v', 'asd', 'asd', 'v', 'v', 'v', 'v', 'Male', 'v', 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pass`
--
ALTER TABLE `pass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renewal`
--
ALTER TABLE `renewal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pass`
--
ALTER TABLE `pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `renewal`
--
ALTER TABLE `renewal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `canteen`
--
CREATE DATABASE IF NOT EXISTS `canteen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `canteen`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `amount` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `amount`, `path`) VALUES
(1, 'menu1', '10', '/path'),
(2, 'menu2', '20', '/path'),
(3, '213', '12', '/path'),
(4, 'v', 'v', '/path');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `menu_id` text NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tid`, `status`, `menu_id`, `quantity`) VALUES
(22, 1, 1, '1', 0),
(23, 1, 1, '2', 0),
(24, 1, 1, '3', 0),
(25, 1, 1, '2', 0),
(26, 1, 0, '2', 0),
(27, 1, 0, '1', 0),
(28, 1, 0, '2', 0),
(29, 1, 0, '3', 0),
(30, 1, 0, '1', 0),
(31, 1, 0, '1', 0),
(32, 1, 0, '1', 0),
(33, 1, 0, '1', 0),
(34, 1, 0, '1', 0),
(35, 1, 0, '1', 0),
(36, 1, 1, '4', 0),
(37, 1, 0, '4', 0),
(38, 1, 0, '4', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Database: `cargo`
--
CREATE DATABASE IF NOT EXISTS `cargo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cargo`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `pincode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `address`, `pincode`) VALUES
(3, 'name', 'emil', 'phone', 'adadre', 'pince'),
(4, 'g', 'g', 'g', 'g', 'g');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ship_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `pickdate` text NOT NULL,
  `deliverydate` text NOT NULL,
  `weight` text NOT NULL,
  `packingtype` text NOT NULL,
  `comname` text NOT NULL,
  `comaddress` text NOT NULL,
  `mobile` text NOT NULL,
  `pickloc` text NOT NULL,
  `droploc` text NOT NULL,
  `amount` text NOT NULL,
  `current` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ship_id`, `customer_id`, `address`, `pickdate`, `deliverydate`, `weight`, `packingtype`, `comname`, `comaddress`, `mobile`, `pickloc`, `droploc`, `amount`, `current`) VALUES
(3, 3, 3, 'add', 'date', 'delivery', 'weight', 'type', 'coma', 'address', 'mobile', 'pick', 'drop', 'amount', 'asd'),
(4, 3, 3, 'asd', 'jhg', 'g', 'jhg', 'j', 'jg', 'jhg', 'jh', 'gj', 'g', 'jgh', ''),
(5, 3, 3, 'asd', 'gh', 'jg', 'g', 'hj', 'jg', 'hj', 'h', 'j', 'gggh', 'asd', '');

-- --------------------------------------------------------

--
-- Table structure for table `ship`
--

CREATE TABLE `ship` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `number` text NOT NULL,
  `model` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ship`
--

INSERT INTO `ship` (`id`, `type`, `number`, `model`) VALUES
(3, 'ship type', 'vehicle', 'model'),
(4, 'h', 'h', 'h');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship`
--
ALTER TABLE `ship`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ship`
--
ALTER TABLE `ship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `carparking`
--
CREATE DATABASE IF NOT EXISTS `carparking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carparking`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `token` text NOT NULL,
  `intime` datetime NOT NULL DEFAULT current_timestamp(),
  `outtime` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `days` text DEFAULT NULL,
  `amount` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `mid`, `cid`, `token`, `intime`, `outtime`, `status`, `days`, `amount`) VALUES
(11, 1, 7, '4', '2019-02-21 15:46:14', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `password` text NOT NULL,
  `vehicle` text NOT NULL,
  `proof` text NOT NULL,
  `rcno` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobile`, `password`, `vehicle`, `proof`, `rcno`, `address`) VALUES
(4, 'GOKUL', '7418227833', 'gokul', 'TN 39 BK 0516', 'BPBPG560-1N', '68236487623946', '56 RAJA STREET KUMARANANDHAPURAM TIRUPUR 641602'),
(7, 'SIVA', '7854585874', 'siva', 'TN 45 NJ 8987', 'BDHJSDJKHGSDKH', '56432464884', 'PALLADAM');

-- --------------------------------------------------------

--
-- Table structure for table `mall`
--

CREATE TABLE `mall` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mall`
--

INSERT INTO `mall` (`id`, `name`) VALUES
(1, 'BROOKS'),
(2, 'FUNMALL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mall`
--
ALTER TABLE `mall`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mall`
--
ALTER TABLE `mall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `carshop`
--
CREATE DATABASE IF NOT EXISTS `carshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carshop`;
--
-- Database: `cloud`
--
CREATE DATABASE IF NOT EXISTS `cloud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cloud`;

-- --------------------------------------------------------

--
-- Table structure for table `category_info`
--

CREATE TABLE `category_info` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `institution` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_info`
--

INSERT INTO `category_info` (`category_id`, `category_name`, `institution`, `description`, `user_id`) VALUES
(5, 'category 1', 'kgisl', 'category description', 4),
(6, 'marriage', '', 'marrage photos', 5),
(7, 'marriage', '', '', 6),
(8, 'Java', 'LRG', 'java is a programming language', 7),
(9, 'v', 'v', 'v', 8);

-- --------------------------------------------------------

--
-- Table structure for table `file_info`
--

CREATE TABLE `file_info` (
  `id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `file_link` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_info`
--

INSERT INTO `file_info` (`id`, `note_id`, `name`, `file_link`, `user_id`, `time`) VALUES
(7, 3, '1b6d9a80-3dbb-4fb7-9986-a7aeaeab839f-a306639f-fe0e-4a1f-b314-21e84b4ac9b8_compressed_40.jpg', 'data/jpg/1b6d9a80-3dbb-4fb7-9986-a7aeaeab839f-a306639f-fe0e-4a1f-b314-21e84b4ac9b8_compressed_40.jpg', 5, '2020-01-27 10:02:55'),
(8, 4, 'what.jpeg', 'data/jpg/what.jpeg', 6, '2020-01-27 10:43:44'),
(9, 5, 'sdf.pptx', 'data/ppt/sdf.pptx', 7, '2023-02-17 09:16:02'),
(10, 5, 'scan report.zip', 'data/scan report.zip', 7, '2023-02-17 09:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `note_info`
--

CREATE TABLE `note_info` (
  `note_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `topic` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `note_info`
--

INSERT INTO `note_info` (`note_id`, `title`, `description`, `topic`, `user_id`) VALUES
(2, 'notes', 'nioe', '5', 4),
(3, 'marriage', '', '6', 5),
(4, 'reception', '', '7', 6),
(5, 'Videos', '', '8', 7),
(6, 'v', 'v', '9', 8);

-- --------------------------------------------------------

--
-- Table structure for table `topic_info`
--

CREATE TABLE `topic_info` (
  `topic_id` int(11) NOT NULL,
  `topic_name` text NOT NULL,
  `institution` text NOT NULL,
  `description` text NOT NULL,
  `category` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topic_info`
--

INSERT INTO `topic_info` (`topic_id`, `topic_name`, `institution`, `description`, `category`, `user_id`) VALUES
(6, 'reception', '', '', 6, 5),
(7, 'mythili marriage', '', '', 7, 6),
(8, 'OOPS Concept', 'LRG', 'Oops is an important concept in all the languages', 8, 7),
(9, 'v', 'v', 'v', 9, 8),
(10, 'v', 'v', 'v', 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `institution` text NOT NULL,
  `place` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `name`, `email`, `phone`, `institution`, `place`, `password`) VALUES
(6, 'Mythili', 'mythili@gmail.com', '0', 'LRG College', 'Tiruppur, India', 'dc84d013e975661d9a008d94d90cc8a7'),
(7, 'Gokul', 'gokul18b@gmail.com', '0', 'LRG College', 'Tirupur', '8db69f391c1d4f63cfc3cdd3fee01b49'),
(8, 'v', 'v', '0', 'v', 'v', '02f2a5fc0ed90bfb215df5d2dd032580'),
(9, 'Gokul', 'admin@admin.com', '0', 'LRG', 'Tirupur', '62f8c6d27bfce98d15cff9ef4a6fef1d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_info`
--
ALTER TABLE `category_info`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `file_info`
--
ALTER TABLE `file_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note_info`
--
ALTER TABLE `note_info`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `topic_info`
--
ALTER TABLE `topic_info`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_info`
--
ALTER TABLE `category_info`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `file_info`
--
ALTER TABLE `file_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `note_info`
--
ALTER TABLE `note_info`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topic_info`
--
ALTER TABLE `topic_info`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `college_finder`
--
CREATE DATABASE IF NOT EXISTS `college_finder` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `college_finder`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `inst` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `minmark` int(11) NOT NULL,
  `linkaddress` text NOT NULL,
  `city` text NOT NULL,
  `district` text NOT NULL,
  `pincode` text NOT NULL,
  `bc` int(11) NOT NULL,
  `mbc` int(11) NOT NULL,
  `oc` int(11) NOT NULL,
  `sc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `inst`, `name`, `address`, `minmark`, `linkaddress`, `city`, `district`, `pincode`, `bc`, `mbc`, `oc`, `sc`) VALUES
(4, 2, 'KGISL INSTITUTE OF TECHNOLOGY', 'SARAVANAMPATTI THUDIYALUR ROAD COIMBATORE', 950, 'https://www.kgkite.ac.in', 'COIMBATORE', 'COIMBATORE', '641625', 0, 0, 0, 500),
(5, 1, 'LRG', 'TIRUPUR', 850, 'LSD', 'TIRUPUR', 'TIRUPUR', '641602', 0, 0, 0, 600),
(6, 1, 'test', 'kjh', 0, 'dsf', 'dsf', 'lkhj', 'klj', 500, 600, 700, 800);

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id`, `name`) VALUES
(1, 'ARTS'),
(2, 'ENGINEERING'),
(3, 'MEDICAL');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `school` text NOT NULL,
  `mark` text NOT NULL,
  `inst` text NOT NULL,
  `community` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `email`, `password`, `name`, `school`, `mark`, `inst`, `community`) VALUES
(4, 'gokul18b@gmail.com', 'gokul', 'Gokul', 'Shri Gurukulam', '972', '2', 'BC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `courier`
--
CREATE DATABASE IF NOT EXISTS `courier` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `courier`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `customer_id` text NOT NULL,
  `amount` int(11) NOT NULL,
  `weight` text NOT NULL,
  `discount` text NOT NULL,
  `bill_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `customer_id`, `amount`, `weight`, `discount`, `bill_date`) VALUES
(1, 'Gokul', 12, '10', '5', '2020-03-03 13:10:38'),
(2, 'Suganthi', 125, '50', '20', '2020-03-03 13:10:38'),
(3, 'Raja', 120, '15 KG', '10', '2020-03-03 13:11:07'),
(4, 'v', 123, 'v', '213', '2023-02-20 09:51:38'),
(5, 'zcx', 2, '2', '2', '2023-02-20 09:51:55'),
(6, 'name', 345, '1', '12', '2023-02-20 09:52:50'),
(7, 'n', 3, '1', '2', '2023-02-20 09:58:57'),
(8, 'nam', 3, '1', '2', '2023-02-20 10:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `id` int(11) NOT NULL,
  `mobile` text NOT NULL,
  `name` text NOT NULL,
  `fromlocation` text NOT NULL,
  `sendlocation` text NOT NULL,
  `currentlocation` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courier`
--

INSERT INTO `courier` (`id`, `mobile`, `name`, `fromlocation`, `sendlocation`, `currentlocation`, `address`) VALUES
(9, '7418227833', 'Praveena', '', 'Chennai', 'Erode', 'No 7, Kaarapaakam , Chennai -641874'),
(10, '985745896', 'Sarulatha', '', 'Bengaluru', '', '78, East Road, Electromic city, Bengaluru - 658956'),
(11, '782559578', 'Suganthi', '', 'Erode', '', 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
(12, '7418227833', '7418227833', '', 'Erode', '', 'xxxxxxxxxxxxxxx'),
(13, 'v', 'v', '', 'v', '', 'v'),
(14, 'zxc', 'zcx', '', 'czx', '', 'zxc'),
(15, 'mobi', 'name', '', 'from', '', 'full'),
(16, 'mo', 'n', 'null', 'sen', '', 'fu'),
(17, 'mob', 'nam', 'fro', 'sen', '', 'ful');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `age` int(11) NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `mobile`, `email`, `age`, `gender`, `address`) VALUES
(2, 'Sandhiya', 'Saranya', '9658985478', 'sandhiya@gmail.com', 22, 'Female', 'XXXXXXXXXXXXXXXXXX\r\nXXXXXXXXXXXXXXXXX'),
(12, 'Karthig', 'Kavin', '968574859', 'karthiga@gmail.com', 21, 'Female', 'XXXXXXXXXXXXXXXX\r\nXXXXXXXXXXX\r\nXXXXXXXXXX'),
(13, 'Mythili', 'Ganesh', '9685472569', 'mythili@gmail.com', 21, 'Female', 'XXXXXXXXXXXXXXXXXXXX,\r\nXXXXXXXXXXXXXXXXXXX\r\nXXXXXXXXXX'),
(14, 'hj', 'jk', 'jkh', 'jkh', 7, 'Male', 'kljlj'),
(15, 'v', 'v', 'v', 'v', 21, 'Male', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `covid`
--
CREATE DATABASE IF NOT EXISTS `covid` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `covid`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Admin', 'admin', 1234567890, 'admin@gmail.com', 'admin', '2021-04-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatients`
--

CREATE TABLE `tblpatients` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedId` varchar(150) DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatients`
--

INSERT INTO `tblpatients` (`id`, `FullName`, `MobileNumber`, `DateOfBirth`, `GovtIssuedId`, `GovtIssuedIdNo`, `FullAddress`, `State`, `RegistrationDate`) VALUES
(1, 'Anuj kumar', 1234567890, '1999-02-01', 'Driving License', '342545445345', 'A83748 New Delhi India', 'Delhi', '2021-04-27 17:31:22'),
(2, 'Sarita', 6547893210, '1990-05-09', 'Pancard', 'HHHGHGH8888jh', 'H 826273 Noida', 'Uttar Pradesh', '2021-04-27 18:04:57'),
(4, 'Garima Singh', 4598520125, '2005-01-08', 'Pancard', 'DDDKJKJ454545H', 'A-1234 Patna', 'Bihar', '2021-05-08 05:49:44'),
(5, 'Amit Singh', 2536987410, '2007-06-01', 'PANCARD', 'HJGGHG76767HGGH', 'H 37334 New Delhi', 'Delhi', '2021-05-08 09:25:50'),
(6, 'Rahul Yadav', 1234567899, '2003-06-05', 'Driving License', '5435345', 'ABC 123 XYZ Street Noida', 'Uttar Pradesh', '2021-05-08 09:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblphlebotomist`
--

CREATE TABLE `tblphlebotomist` (
  `id` int(11) NOT NULL,
  `EmpID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblphlebotomist`
--

INSERT INTO `tblphlebotomist` (`id`, `EmpID`, `FullName`, `MobileNumber`, `RegDate`) VALUES
(3, '12587493', 'Amit Singh', 9876543212, '2021-05-03 04:51:44'),
(4, '105202365', 'Rahul', 8529631470, '2021-05-03 04:52:06'),
(5, '10802364', 'Sanjeev Tomar', 1234567890, '2021-05-08 09:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblreporttracking`
--

CREATE TABLE `tblreporttracking` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(40) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `PostingTime` timestamp NULL DEFAULT current_timestamp(),
  `RemarkBy` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblreporttracking`
--

INSERT INTO `tblreporttracking` (`id`, `OrderNumber`, `Remark`, `Status`, `PostingTime`, `RemarkBy`) VALUES
(1, 450040675, 'The Phlebotomist is on the way for collection.', 'On the Way for Collection', '2021-05-06 04:36:22', 2),
(6, 450040675, 'Sample collection.', 'Sample Collected', '2021-05-06 19:15:25', 2),
(7, 450040675, 'Sample sent to the lab.', 'Sent to Lab', '2021-05-06 19:15:48', 2),
(9, 450040675, 'Report uploaded.', 'Delivered', '2021-05-06 20:01:48', 2),
(10, 617325549, 'The phlebotomist is on the way to sample collection.', 'On the Way for Collection', '2021-05-07 04:44:38', 2),
(11, 617325549, 'Sample collected successfully.', 'Sample Collected', '2021-05-07 04:46:46', 2),
(12, 617325549, 'Sample sent to the lab.', 'Sent to Lab', '2021-05-07 04:51:25', 2),
(13, 617325549, 'Report uploaded.', 'Delivered', '2021-05-07 04:57:20', 2),
(14, 250482553, 'On the way for sample collection.', 'On the Way for Collection', '2021-05-08 09:31:42', 2),
(15, 250482553, 'Sample collected successfully', 'Sample Collected', '2021-05-08 09:32:06', 2),
(16, 250482553, 'Sample sent to lab', 'Sent to Lab', '2021-05-08 09:32:26', 2),
(17, 250482553, 'Report Uploaded', 'Delivered', '2021-05-08 09:32:51', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrecord`
--

CREATE TABLE `tbltestrecord` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(14) DEFAULT NULL,
  `PatientMobileNumber` bigint(14) DEFAULT NULL,
  `TestType` varchar(100) DEFAULT NULL,
  `TestTimeSlot` varchar(120) DEFAULT NULL,
  `ReportStatus` varchar(100) DEFAULT NULL,
  `FinalReport` varchar(150) DEFAULT NULL,
  `ReportUploadTime` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `AssignedtoEmpId` varchar(150) DEFAULT NULL,
  `AssigntoName` varchar(180) DEFAULT NULL,
  `AssignedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestrecord`
--

INSERT INTO `tbltestrecord` (`id`, `OrderNumber`, `PatientMobileNumber`, `TestType`, `TestTimeSlot`, `ReportStatus`, `FinalReport`, `ReportUploadTime`, `RegistrationDate`, `AssignedtoEmpId`, `AssigntoName`, `AssignedTime`) VALUES
(1, 450040675, 1234567890, 'Antigen', '2021-05-01T04:05', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620331308.pdf', '07-05-2021 01:31:48 AM', '2021-04-27 17:31:23', '12587493', 'Amit Singh', '06-05-2021 10:05:22 AM'),
(2, 617325549, 6547893210, 'RT-PCR', '2021-05-01T05:10', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620363440.pdf', '07-05-2021 10:27:20 AM', '2021-04-27 18:04:58', '105202365', 'Rahul', '07-05-2021 10:13:41 AM'),
(4, 740138296, 1234567890, 'RT-PCR', '2021-05-05T14:40', 'Assigned', NULL, NULL, '2021-04-27 19:10:30', '105202365', 'Rahul', '07-05-2021 03:52:05 PM'),
(5, 716060226, 4598520125, 'CB-NAAT', '2021-05-15T14:22', 'Assigned', NULL, NULL, '2021-05-08 05:49:46', '105202365', 'Rahul', '14-02-2023 08:42:12 PM'),
(6, 599452326, 2536987410, 'CB-NAAT', '2021-05-20T19:00', NULL, NULL, NULL, '2021-05-08 09:25:50', NULL, NULL, NULL),
(7, 250482553, 1234567899, 'Antigen', '2021-05-11T15:00', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620466371.pdf', '08-05-2021 03:02:51 PM', '2021-05-08 09:29:22', '12587493', 'Amit Singh', '08-05-2021 03:00:47 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE `tblpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE `tblpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `criminal`
--
CREATE DATABASE IF NOT EXISTS `criminal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `criminal`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

CREATE TABLE `criminal` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `authorno` text NOT NULL,
  `mobile` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `criminal`
--

INSERT INTO `criminal` (`id`, `firstname`, `lastname`, `authorno`, `mobile`, `age`, `gender`, `address`) VALUES
(1, 'firstname', 'lastname', 'quthorno', 'mobile', 'age', 'gender', 'address'),
(2, 'first', 'first', 'first', 'first', 'first', 'Female', 'first'),
(3, 'first', 'last', '1ut', '723', '21', 'Female', 'dasd'),
(4, 'first', 'last', '1ut', '723', '21', 'Female', 'dasd'),
(5, 'v', 'v', 'v', 'v', 'v', 'Male', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `criminalcase`
--

CREATE TABLE `criminalcase` (
  `id` int(11) NOT NULL,
  `caseno` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `criminalcase`
--

INSERT INTO `criminalcase` (`id`, `caseno`, `name`) VALUES
(1, '1', 'name'),
(2, '2', 'test'),
(3, '1', 'Cheating'),
(4, 'v', 'v'),
(5, 'as', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `authorno` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `mobile` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `address` int(11) NOT NULL,
  `casename` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `authorno`, `firstname`, `lastname`, `mobile`, `age`, `gender`, `address`, `casename`, `description`) VALUES
(1, '1', '1', '1', '1', '1', '1', 1, '1', '1'),
(2, '1ut', 'first', 'last', '723', '21', 'Female', 0, 'name', 'des'),
(3, '1ut', 'first', 'last', '723', '21', 'Female', 0, 'name', ''),
(4, 'quthorno', 'firstname', 'lastname', 'mobile', 'age', 'gender', 0, 'Cheating', 'as'),
(5, 'v', 'v', 'v', 'v', 'v', 'Male', 0, 'Cheating', 'sd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criminal`
--
ALTER TABLE `criminal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criminalcase`
--
ALTER TABLE `criminalcase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criminal`
--
ALTER TABLE `criminal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `criminalcase`
--
ALTER TABLE `criminalcase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `crm`
--
CREATE DATABASE IF NOT EXISTS `crm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crm`;

-- --------------------------------------------------------

--
-- Table structure for table `crm_contact`
--

CREATE TABLE `crm_contact` (
  `id` int(11) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_first` varchar(255) NOT NULL,
  `contact_middle` varchar(255) NOT NULL,
  `contact_last` varchar(255) NOT NULL,
  `initial_contact_date` datetime NOT NULL DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` enum('Lead','Proposal','Customer / won','Archive') NOT NULL,
  `website` varchar(255) NOT NULL,
  `sales_rep` int(11) NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `proposal_due_date` varchar(255) NOT NULL,
  `budget` int(11) NOT NULL,
  `deliverables` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crm_contact`
--

INSERT INTO `crm_contact` (`id`, `contact_title`, `contact_first`, `contact_middle`, `contact_last`, `initial_contact_date`, `title`, `company`, `industry`, `address`, `city`, `state`, `country`, `zip`, `phone`, `email`, `status`, `website`, `sales_rep`, `project_type`, `project_description`, `proposal_due_date`, `budget`, `deliverables`) VALUES
(1, '', 'David', '', 'Smith', '0000-00-00 00:00:00', '', 'ABC', 'Food', '', '', '', 'France', 112245, 123456789, 'david@tes.com', 'Lead', 'www.testabc.com', 1, '', '', '', 15000, ''),
(2, '', 'Goerge', '', 'Wood', '0000-00-00 00:00:00', '', 'XYZ', 'Motor', '', '', '', '', 0, 123456789, 'goerg@test.com', 'Lead', 'www.mtobc.com', 1, '', '', '', 0, ''),
(5, '', 'adam', '', 'smith', '2020-11-13 20:47:02', '', 'vzxvzx', 'xzvzx', '', '', '', '', 0, 123456789, 'dgsdgsd@wty.com', 'Proposal', 'www.mtobc.com', 1, '', '', '', 0, ''),
(6, '', 'xvzxxzv', '', 'xvzxvzxv', '2020-11-13 20:56:27', '', 'uyttyi', 'reyery', '', '', '', '', 0, 123456789, 'werwrwe@wr.com', 'Customer / won', 'www.fggg.com', 1, '', '', '', 3400, ''),
(7, '', 'test', '', 'test', '2023-02-14 21:40:18', '', 'tets', 'sada', '', '', '', '', 0, 0, 'asd', 'Lead', 'asd', 6, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `crm_tasks`
--

CREATE TABLE `crm_tasks` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `task_type` varchar(255) NOT NULL,
  `task_description` text NOT NULL,
  `task_due_date` varchar(255) NOT NULL,
  `task_status` enum('Pending','Completed') NOT NULL,
  `task_update` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `sales_rep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crm_tasks`
--

INSERT INTO `crm_tasks` (`id`, `created`, `task_type`, `task_description`, `task_due_date`, `task_status`, `task_update`, `contact`, `sales_rep`) VALUES
(1, '2020-11-08 00:00:00', 'task', 'Lunch meeting', '2020-11-12', 'Completed', '', 6, 1),
(2, '0000-00-00 00:00:00', '', 'phone calls', '2020-11-06', 'Pending', '', 2, 3),
(3, '0000-00-00 00:00:00', '', 'Follow up email', '2020-11-05', 'Pending', '', 1, 1),
(5, '2023-02-14 21:38:47', '', 'Describe', '2023-02-28', 'Pending', '', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `crm_users`
--

CREATE TABLE `crm_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roles` enum('manager','sales') NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crm_users`
--

INSERT INTO `crm_users` (`id`, `name`, `email`, `password`, `roles`, `status`) VALUES
(1, 'Jhon Smith', 'smith@webdamn.com', '202cb962ac59075b964b07152d234b70', 'sales', 1),
(2, 'Kane William', 'william@webdamn.com', '202cb962ac59075b964b07152d234b70', 'manager', 1),
(3, 'Mary', 'mary@test.com', '202cb962ac59075b964b07152d234b70', 'sales', 1),
(4, 'Rich', 'rich@test.com', '202cb962ac59075b964b07152d234b70', 'sales', 1),
(6, 'Gokul', 'gokul18b@gmail.com', '202cb962ac59075b964b07152d234b70', 'sales', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crm_contact`
--
ALTER TABLE `crm_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_tasks`
--
ALTER TABLE `crm_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_users`
--
ALTER TABLE `crm_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crm_contact`
--
ALTER TABLE `crm_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crm_tasks`
--
ALTER TABLE `crm_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crm_users`
--
ALTER TABLE `crm_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `cts_db`
--
CREATE DATABASE IF NOT EXISTS `cts_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cts_db`;

-- --------------------------------------------------------

--
-- Table structure for table `barangay_list`
--

CREATE TABLE `barangay_list` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `city_id` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_list`
--

INSERT INTO `barangay_list` (`id`, `code`, `name`, `description`, `city_id`) VALUES
(1, '23', 'Mambulac', 'Sample', 3);

-- --------------------------------------------------------

--
-- Table structure for table `city_list`
--

CREATE TABLE `city_list` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `state_id` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_list`
--

INSERT INTO `city_list` (`id`, `code`, `name`, `description`, `state_id`) VALUES
(1, '01', 'Bacolod', '6100', 4),
(2, '02', 'Talisay', '6115', 4),
(3, '03', 'Silay', '6116', 4),
(5, '07', 'Iloilo', '12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `establishment`
--

CREATE TABLE `establishment` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city_id` int(30) DEFAULT NULL,
  `zone_id` int(30) DEFAULT NULL,
  `image_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `establishment`
--

INSERT INTO `establishment` (`id`, `code`, `name`, `address`, `city_id`, `zone_id`, `image_path`) VALUES
(1, '01032386416334554', 'Sample Mall', 'Sample Address', 3, 1, 'uploads/1614299580_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `email` text DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `middlename` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `city_id` int(30) NOT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `image_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `code`, `email`, `firstname`, `lastname`, `middlename`, `address`, `zone_id`, `city_id`, `contact`, `image_path`) VALUES
(2, '0103236915284361', 'mwilliams@sample.com', 'Mike', 'Williams', 'D', 'Sample Address', 1, 3, '09125265498', 'uploads/1614241320_ava.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`id`, `code`, `name`, `description`) VALUES
(1, '06', 'Iloilo', 'Region 6'),
(4, '01', 'Negros Occidental', 'Region 6');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Covid Tacking System - QR Code'),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(5, 'fb_page', 'https://www.facebook.com/myPageName'),
(6, 'short_name', 'CTS-QR'),
(9, 'logo', 'uploads/1614224160_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(30) NOT NULL,
  `person_id` int(30) NOT NULL,
  `establishment_id` int(30) NOT NULL,
  `date_added` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `person_id`, `establishment_id`, `date_added`) VALUES
(1, 2, 1, '2021-02-26 11:21:15'),
(2, 2, 1, '2021-02-26 11:22:17'),
(3, 2, 1, '2021-02-26 11:24:43'),
(4, 2, 1, '2021-02-26 11:25:03'),
(5, 2, 1, '2021-02-26 11:26:41'),
(6, 2, 1, '2021-02-26 11:30:36'),
(7, 2, 1, '2021-02-26 11:32:17'),
(8, 2, 1, '2021-02-26 11:32:56'),
(9, 2, 1, '2021-02-26 11:37:09'),
(10, 2, 1, '2021-02-26 13:42:16'),
(11, 2, 1, '2021-02-26 13:42:49'),
(12, 2, 1, '2021-02-26 13:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1614302940_avatar.jpg', NULL, '2021-01-20 14:02:37', '2021-02-26 10:23:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangay_list`
--
ALTER TABLE `barangay_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_list`
--
ALTER TABLE `city_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `establishment`
--
ALTER TABLE `establishment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_list`
--
ALTER TABLE `state_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
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
-- AUTO_INCREMENT for table `barangay_list`
--
ALTER TABLE `barangay_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city_list`
--
ALTER TABLE `city_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `establishment`
--
ALTER TABLE `establishment`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state_list`
--
ALTER TABLE `state_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `furniture`
--
CREATE DATABASE IF NOT EXISTS `furniture` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `furniture`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `alternate` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobile`, `alternate`, `address`, `gender`) VALUES
(7, 'jh', '767575', '65675', 'jhj', 'Male'),
(8, 'asd', 'asd', 'asd', 'asd', 'Male'),
(9, 'v', 'v', 'v', 'v', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `company` text NOT NULL,
  `model` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `company`, `model`, `price`) VALUES
(7, 'jhg', 'jhg', 645),
(8, 'v', 'v', 100),
(9, 'v', 'v', 12);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `details` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `product_id`, `quantity`, `details`, `date`) VALUES
(11, 7, 123, 'sd', '2023-02-17 13:30:14'),
(12, 8, 12, 'sda', '2023-02-20 08:21:52'),
(13, 9, 123, '12', '2023-02-20 10:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `product_id`, `quantity`) VALUES
(9, 7, '7', 1),
(10, 7, '8', 2),
(11, 9, '9', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `gym`
--
CREATE DATABASE IF NOT EXISTS `gym` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gym`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

CREATE TABLE `health` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `health`
--

INSERT INTO `health` (`id`, `title`, `description`, `date`) VALUES
(1, 'zd', 'zd', '2020-02-15 11:42:10'),
(2, 'dsf', 'dsfdsfsdf', '2020-02-15 11:43:03'),
(3, 'sf', 'sdf', '2020-02-15 12:42:49'),
(4, 'as', 'asd', '2020-02-15 12:43:58'),
(5, '123', '123', '2023-02-20 10:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `material_name` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `material_name`, `quantity`, `amount`) VALUES
(1, 'sdfs', 1, 1),
(2, 'asd', 2, 23),
(3, '12', 123, 12);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `age` int(11) NOT NULL,
  `gender` text NOT NULL,
  `height` text NOT NULL,
  `weight` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `firstname`, `lastname`, `mobile`, `email`, `age`, `gender`, `height`, `weight`, `address`) VALUES
(1, 'firs', 'last', 'mobil', 'ema', 12, 'gen', 'heig', 'wei', 'add'),
(2, 'jhjk', 'kjh', 'kjh', 'kjhk', 879, 'Male', 'kljlk', 'lkj', 'lkj'),
(3, 'v', 'v', '1', 'v', 1, 'Male', '1', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `punch`
--

CREATE TABLE `punch` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `punch_in` datetime DEFAULT current_timestamp(),
  `punch_out` datetime DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `punch`
--

INSERT INTO `punch` (`id`, `member_id`, `punch_in`, `punch_out`, `date`) VALUES
(7, 1, '2020-02-15 19:20:55', '2020-02-15 19:32:09', '2020-02-15 14:01:55'),
(8, 1, '2020-02-15 19:34:28', '2020-02-15 19:34:31', '2020-02-15 14:04:28'),
(9, 2, '2020-02-15 19:34:41', '2020-02-15 19:34:47', '2020-02-15 14:04:41'),
(10, 1, '2020-02-15 20:14:16', '2020-02-15 20:14:19', '2020-02-15 14:44:16'),
(11, 2, '2020-02-15 20:14:23', '2020-02-15 20:14:27', '2020-02-15 14:44:23'),
(12, 1, '2020-02-15 20:14:29', '2020-02-15 20:14:34', '2020-02-15 14:44:29'),
(13, 3, '2023-02-20 16:02:14', '2023-02-20 16:02:16', '2023-02-20 10:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `material_name` text NOT NULL,
  `provider` text NOT NULL,
  `amount` int(11) NOT NULL,
  `issue` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `material_name`, `provider`, `amount`, `issue`, `date`) VALUES
(1, 'sdf', 'sdf', 12, 'sfsf', '2020-02-15 10:19:08'),
(2, 'Thumbils', 'asd', 12, 'sdfsd', '2020-02-15 10:20:54'),
(3, 'asd', 'fg', 12, 'dfs', '2020-02-15 10:24:22'),
(4, '12', '213', 213, '13', '2023-02-20 10:32:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health`
--
ALTER TABLE `health`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `punch`
--
ALTER TABLE `punch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `health`
--
ALTER TABLE `health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `punch`
--
ALTER TABLE `punch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `insurance`
--
CREATE DATABASE IF NOT EXISTS `insurance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `insurance`;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `dob` text NOT NULL,
  `gender` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `age` text NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `pincode` text NOT NULL,
  `address` text NOT NULL,
  `profession` text NOT NULL,
  `experience` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `fname`, `lname`, `dob`, `gender`, `email`, `mobile`, `age`, `state`, `city`, `pincode`, `address`, `profession`, `experience`, `password`) VALUES
(1, 'fnam', 'lnam', 'do', 'gen', 'email', 'mo', 'ag', 'st', 'ci', 'pin', 'add', 'pro', 'exp', 'pas'),
(2, 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `dob` text NOT NULL,
  `mobile` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `pincode` text NOT NULL,
  `address` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `lname`, `dob`, `mobile`, `age`, `gender`, `state`, `city`, `pincode`, `address`, `username`, `password`) VALUES
(1, 'fnam', 'lnam', 'dob', 'mo', 'ag', 'gen', 'sat', 'ci', 'pin', 'add', 'usern', 'pas'),
(2, 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `policy_id` text NOT NULL,
  `customer_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `policy_id`, `customer_id`) VALUES
(1, '1', '1'),
(2, '1', '1'),
(3, '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `period` text NOT NULL,
  `premium` text NOT NULL,
  `date` text NOT NULL,
  `expierydate` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`id`, `name`, `category`, `period`, `premium`, `date`, `expierydate`, `amount`) VALUES
(1, 'pname', 'cat', 'per', 'pre', 'poda', 'exp', 'amo'),
(2, 'p', 'p', 'p', 'p', 'p', 'p', 'p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `internship`
--
CREATE DATABASE IF NOT EXISTS `internship` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `internship`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

CREATE TABLE `intern` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`id`, `pid`, `sid`, `code`) VALUES
(3, 1, 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `frontend` text NOT NULL,
  `backend` text NOT NULL,
  `modules` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`id`, `title`, `description`, `frontend`, `backend`, `modules`) VALUES
(1, 'v', 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `applicantname` text NOT NULL,
  `qualificatino` text NOT NULL,
  `mobile` text NOT NULL,
  `frontend` text NOT NULL,
  `backend` text NOT NULL,
  `ps` text NOT NULL,
  `ds` text NOT NULL,
  `designation` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `applicantname`, `qualificatino`, `mobile`, `frontend`, `backend`, `ps`, `ds`, `designation`, `username`, `password`) VALUES
(1, 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intern`
--
ALTER TABLE `intern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `intern`
--
ALTER TABLE `intern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `job`
--
CREATE DATABASE IF NOT EXISTS `job` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `job`;

-- --------------------------------------------------------

--
-- Table structure for table `area_master`
--

CREATE TABLE `area_master` (
  `AreaId` int(11) NOT NULL,
  `AreaName` varchar(20) NOT NULL,
  `CityName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `area_master`
--

INSERT INTO `area_master` (`AreaId`, `AreaName`, `CityName`) VALUES
(1, 'Modhera Road', 'Mehsana'),
(2, 'Radhanpur Road', 'Mehsana');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(20) NOT NULL,
  `Category_Desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`CategoryId`, `CategoryName`, `Category_Desc`) VALUES
(1, 'Home', '2 BHK,3BHK, Flats'),
(2, 'Shop', '100 Sq.M,200 Sq.M');

-- --------------------------------------------------------

--
-- Table structure for table `city_master`
--

CREATE TABLE `city_master` (
  `CityId` int(11) NOT NULL,
  `StateName` varchar(20) NOT NULL,
  `CityName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city_master`
--

INSERT INTO `city_master` (`CityId`, `StateName`, `CityName`) VALUES
(1, 'Gujarat', 'Mehsana'),
(3, 'Gujarat', 'Baroda'),
(4, 'Gujarat', 'Anand');

-- --------------------------------------------------------

--
-- Table structure for table `customer_reg`
--

CREATE TABLE `customer_reg` (
  `CustomerId` int(11) NOT NULL,
  `CustomerName` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_reg`
--

INSERT INTO `customer_reg` (`CustomerId`, `CustomerName`, `Address`, `City`, `Mobile`, `Email`, `Gender`, `BirthDate`, `UserName`, `Password`) VALUES
(3, 'Vairali Suthar', 'Mehsana', 'Mehsana', 9898989898, 'vairali@gmail.com', 'Female', '2013-08-14', 'vairali', 'vairali');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackId` int(11) NOT NULL,
  `CustomerName` varchar(20) NOT NULL,
  `EmailId` varchar(20) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackId`, `CustomerName`, `EmailId`, `MobileNumber`, `Message`) VALUES
(1, 'Nikita Padhya', 'niki@gmail.com', '9898989898', 'Thanks');

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE `login_master` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`UserId`, `UserName`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `news_master`
--

CREATE TABLE `news_master` (
  `NewsId` int(11) NOT NULL,
  `News` varchar(200) NOT NULL,
  `NewsDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news_master`
--

INSERT INTO `news_master` (`NewsId`, `News`, `NewsDate`) VALUES
(5, 'More Than 2000 Properties to sold.', '2013-08-23'),
(6, 'New Property available in Mehsana', '2013-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `property_image`
--

CREATE TABLE `property_image` (
  `ImageId` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `ImagePath` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `property_image`
--

INSERT INTO `property_image` (`ImageId`, `PropertyId`, `Title`, `ImagePath`) VALUES
(1, 3, 'Front View', 'home.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `property_master`
--

CREATE TABLE `property_master` (
  `PropertyId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `StateName` varchar(20) NOT NULL,
  `CityName` varchar(20) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `PropertyName` varchar(50) NOT NULL,
  `PropertyImage` varchar(200) NOT NULL,
  `PropertyDesc` varchar(200) NOT NULL,
  `TotalArea` float NOT NULL,
  `PropertyAge` varchar(10) NOT NULL,
  `TotalRoom` int(11) NOT NULL,
  `Furnished` varchar(5) NOT NULL,
  `Parking` varchar(5) NOT NULL,
  `DistRail` int(11) NOT NULL,
  `PropertyCost` float NOT NULL,
  `Status` varchar(20) NOT NULL,
  `CustomerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `property_master`
--

INSERT INTO `property_master` (`PropertyId`, `CategoryId`, `StateName`, `CityName`, `AreaName`, `PropertyName`, `PropertyImage`, `PropertyDesc`, `TotalArea`, `PropertyAge`, `TotalRoom`, `Furnished`, `Parking`, `DistRail`, `PropertyCost`, `Status`, `CustomerId`) VALUES
(3, 1, 'Gujarat', 'Mehsana', 'Modhera Road', 'Sahkar Nagar Society', '2.jpg', 'Nice Home ', 120, '4 Year', 3, 'Yes', 'Yes', 2, 2300000, 'Open', 3),
(4, 1, 'Gujarat', 'Mehsana', 'Modhera Road', 'Tirupati Royal', 'house4.gif', 'Newly Established Society', 120, '2 Year', 3, 'No', 'Yes', 2, 3000000, 'Open', 3),
(6, 2, 'Gujarat', 'Mehsana', 'Radhanpur Road', 'Swagat Shop', 'sale.gif', 'A Gift Shop', 500, '5 Year', 1, 'Yes', 'Yes', 3, 3500000, 'Open', 3);

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `StateId` int(11) NOT NULL,
  `StateName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
--
-- Database: `medical`
--
CREATE DATABASE IF NOT EXISTS `medical` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `medical`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'admin',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
(2, 'Admin', 'admin', 'admin@admin.com', '1704307608', '$2y$10$Gm8rjHKAIWKqJszM77XA2.1KgGHgDQap.hqcVb8DmITigFHe7IHTa', 'admin', 'images.png');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'manager',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
(6, 'John', 'Sina', 'john@sina.com', '01700000000', '$2y$10$q47GJObI5t2mQ1CNwbmFyOlqDC/yKkxFRv4XOxryuhZvKeMhhxc7.', 'manager', 'avatar.png'),
(7, 'Brock', 'Lesnar', 'brock@lesnar.com', '01700000000', '$2y$10$7l2gCp07viznC2PyWouDeuKB85JuxOtHUYmMt8Fs.8LDa7RZBEaRW', 'manager', 'avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacists`
--

CREATE TABLE `pharmacists` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'pharmacist',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pharmacists`
--

INSERT INTO `pharmacists` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
(7, 'Pharmacist', 'Two', 'pharmacist@two.com', '01700000000', '$2y$10$5pi1bPBuaQt4s83hGFcTH.eRZvFqsMDDN.onp6.HJENwo0jqJqKjq', 'pharmacist', 'avatar.png'),
(8, 'Pharmacist', 'Three', 'pharmacist@three.com', '0170000000', '$2y$10$RqNzWY0cxl9UCf01J.N9LOTTPb7GKarWAwM7/i8T8koNoFqQQk1Li', 'pharmacist', 'avatar.png'),
(9, 'Pharmacist', 'Four', 'pharmacist@four.com', '01700000000', '$2y$10$GVggPVg5obYkaX87nzDA/u7uyMA.ej4A96RNXtLXpFWeENLxed.T6', 'pharmacist', 'avatar.png'),
(10, 'Pharmacist', 'Five', 'pharmacist@five.com', '01700000000', '$2y$10$It21v0CAlfE8vMM4BN2hIukLIiR/RFBWvRdN3PirzkW6.r28Ls0AW', 'pharmacist', 'avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `salesmans`
--

CREATE TABLE `salesmans` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'salesman',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `salesmans`
--

INSERT INTO `salesmans` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
(9, 'Salesman', 'One', 'salesman@one.com', '01700000000', '$2y$10$QcBETp.yv7xnE2gtnGKN2eQiwCW4jwobEPoOBGK/qQ3knrW4OsEdG', 'salesman', 'avatar.png'),
(10, 'gokul', 'b', 'sales@gmail.com', '9856541525', '$2y$10$u.g7Q1oen5AERHJJRuZR3unG2FzPiLPDQkYSZScGC9FlgQEsT4ilC', 'salesman', 'avatar.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `salesmans`
--
ALTER TABLE `salesmans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pharmacists`
--
ALTER TABLE `pharmacists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `salesmans`
--
ALTER TABLE `salesmans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `mobile`
--
CREATE DATABASE IF NOT EXISTS `mobile` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mobile`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobile`, `address`, `gender`, `email`) VALUES
(1, 'name', 'mobile', 'address', 'gender', 'email'),
(2, 'kjh', 'jk', 'hkj', 'Male', 'kjhk'),
(3, 'kjh', 'jk', 'hkj', 'Male', 'kjhk'),
(4, 'test', 'test', 'te', 'Male', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `salary` int(11) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `mobile`, `address`, `gender`, `salary`, `age`) VALUES
(1, 'name', 'mobile', 'address', 'gender', 1, 1),
(2, '8', '89', '89', 'Male', 89, 89),
(3, 'sd', 'sdf', '23', 'Male', 23, 3),
(4, 'ada', 'jh', 'kkjh', 'Male', 123, 123);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `company` text NOT NULL,
  `model` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `company`, `model`, `price`) VALUES
(3, 'MOTO', 'G3', 12000),
(4, 'OPPO', 'F11 PRO', 14000),
(5, 'asd', 'asd', 123);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `product_id`, `quantity`, `date`) VALUES
(5, 3, 5, '2020-02-11 11:33:33'),
(6, 3, 2, '2020-02-11 11:33:37'),
(7, 4, 5, '2020-02-11 11:49:29'),
(8, 4, 2, '2020-02-11 12:07:37'),
(9, 4, 12, '2023-02-17 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `product_id`, `quantity`) VALUES
(4, 2, '3', 1),
(5, 2, '3', 1),
(6, 1, '4', 1),
(7, 4, '3', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `municipal`
--
CREATE DATABASE IF NOT EXISTS `municipal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `municipal`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `pincode` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`id`, `fname`, `lname`, `mobile`, `address`, `city`, `state`, `pincode`, `username`, `password`) VALUES
(11, 'Gokul', 'B', '8667216589', 'gokul', 'gokul', 'xxxxx', 'city', 'state', '641602'),
(12, 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `citizen_id` int(11) NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `reason` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `citizen_id`, `mobile`, `address`, `reason`, `status`) VALUES
(5, 11, '7418227833', 'Riad', 'exxxxxx', '5'),
(6, 12, '89565488', 'v', 'v', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `citizen`
--
ALTER TABLE `citizen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `onlinerental`
--
CREATE DATABASE IF NOT EXISTS `onlinerental` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onlinerental`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `userid` text NOT NULL,
  `houseid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `userid`, `houseid`) VALUES
(3, '1', '3'),
(4, '1', '3'),
(5, '1', '2'),
(6, '1', '3'),
(7, '1', '3'),
(8, '1', '4'),
(9, '4', '2'),
(10, '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `owner` text NOT NULL,
  `contact` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `district` text NOT NULL,
  `state` text NOT NULL,
  `landmark` text NOT NULL,
  `pincode` text NOT NULL,
  `squre` text NOT NULL,
  `bedroom` text NOT NULL,
  `hall` text NOT NULL,
  `kitchen` text NOT NULL,
  `others` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `name`, `owner`, `contact`, `address1`, `address2`, `city`, `district`, `state`, `landmark`, `pincode`, `squre`, `bedroom`, `hall`, `kitchen`, `others`, `price`) VALUES
(2, 'hou', 'nam', 'con', 'add1', 'add2', 'cit', 'dis', 'sta', 'land', 'pin', 'tot', 'bed', 'hal', 'kit', 'othe', 'pri'),
(3, 'jkjk', 'kjh', 'kjh', 'kjh', 'k', 'hkjh', 'kh', 'hjkkk', 'hkjhj', 'kk', 'jhk', 'hkj', 'hkj', 'hkjh', 'khj', 'hj'),
(4, 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v'),
(5, 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `mobile`, `email`, `username`, `password`) VALUES
(1, 'adsf', 'asd', 'asd', 'asdf', 'adsf'),
(2, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(4, 'v', 'v', 'v', 'v', 'v'),
(5, 'v', 'v', 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `ovs`
--
CREATE DATABASE IF NOT EXISTS `ovs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ovs`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` bigint(20) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `userid` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`userid`, `post`, `firstname`, `lastname`, `mobile`, `email`, `address`, `img`) VALUES
(3, 1, 'Mythili', 'V', '6598425869', 'mythili@gmail.com', 'XXXXXXXXXXXx,\r\nXXXXXXXXXXXX\r\nXXXXXXXXXXX\r\n', ''),
(11, 2, 'Aamena', 'D', '6369857896', 'aamena@gmail.com', 'XXXXXXXXXXX,\r\nXXXXXXXXXXX,\r\nXXXXXXXX', ''),
(10, 2, 'Kaveena', 'G', '878723873', 'kaveena@gmail.com', 'XXXXXXXX\r\nXXXXXXXXX\r\nXXXXXX', ''),
(14, 1, 'Parkavi', 'P', '4187414287', 'parkavi@gmail.com', 'XXXXXXXXXXX\r\nXXXXXXXXXXX\r\nXXXXXXXXXXX', ''),
(21, 2, 'Priya', 'P', '9852547896', 'priya@gmail.com', 'XXXXXXXX\r\nXXXXXXXXX\r\nXXXXXXXXX', ''),
(29, 1, 'asd', 'asd', 'asd', 'asd', 'as', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_mobile` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `usertype` int(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `mobilenumber` varchar(10) NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `usertype`, `email`, `password`, `firstname`, `lastname`, `mobilenumber`, `address`) VALUES
(1, 1, 'admin', 'admin', 'Admin', '.', '7418227833', '&0, Anna street Kumaranandhapuram, Tirupur 641602'),
(18, 0, 'Subasri@gmail.com', 'subasri', 'Subasri', 'S', '8745245871', 'XXXXXXXX\r\nXXXXXXXXXXX\r\nXXXXXXXXXX');

-- --------------------------------------------------------

--
-- Table structure for table `voting`
--

CREATE TABLE `voting` (
  `id` int(11) NOT NULL,
  `canid` int(11) NOT NULL,
  `votid` int(11) NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voting`
--

INSERT INTO `voting` (`id`, `canid`, `votid`, `postid`) VALUES
(18, 3, 17, 1),
(17, 3, 17, 1),
(16, 10, 1, 2),
(15, 14, 1, 1),
(14, 12, 17, 2),
(13, 3, 17, 1),
(19, 10, 1, 2),
(20, 15, 1, 3),
(21, 16, 1, 4),
(22, 16, 17, 4),
(23, 18, 17, 6),
(24, 17, 17, 5),
(25, 14, 0, 1),
(26, 29, 19, 1),
(27, 11, 19, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`userid`,`firstname`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`,`email`);

--
-- Indexes for table `voting`
--
ALTER TABLE `voting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `voting`
--
ALTER TABLE `voting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Database: `patient_tracking`
--
CREATE DATABASE IF NOT EXISTS `patient_tracking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `patient_tracking`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL,
  `mobile` text NOT NULL,
  `floor` text NOT NULL,
  `room` text NOT NULL,
  `doctor` text NOT NULL,
  `disease` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `mobile`, `floor`, `room`, `doctor`, `disease`) VALUES
(5, '7418227833', 'I ST FLOOR', '101', 'RAJA', 'FEVER');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `name`) VALUES
(1, 'FEVER'),
(2, 'SWINE FLU'),
(3, 'DENGU'),
(4, 'MALARIA');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`) VALUES
(1, 'RAJA'),
(2, 'RAVI'),
(3, 'CHANDRA'),
(4, 'KALAI');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `emergency` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `mobile`, `emergency`, `age`, `gender`, `address`) VALUES
(3, 'PRASITHA', '7418227833', '9952316067', '24', 'Female', '70 ANNA STREET KUMAR NAGAR'),
(4, 'KIRUBHA', '8667216589', '74822785585', '22', 'Female', 'PALLADAM');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `floor` text NOT NULL,
  `room` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `floor`, `room`) VALUES
(5, 'I ST FLOOR', '101'),
(6, 'I ST FLOOR', '102'),
(7, 'II ND FLOOR', '201'),
(8, 'III FLOOR', '301');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"water\",\"table\":\"customer\"},{\"db\":\"water\",\"table\":\"admin\"},{\"db\":\"police\",\"table\":\"complaint\"},{\"db\":\"police\",\"table\":\"citizen\"},{\"db\":\"police\",\"table\":\"station\"},{\"db\":\"police\",\"table\":\"admin\"},{\"db\":\"sports\",\"table\":\"user\"},{\"db\":\"sports\",\"table\":\"team\"},{\"db\":\"sports\",\"table\":\"event\"},{\"db\":\"sports\",\"table\":\"book\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-26 18:24:37', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `placement_automation`
--
CREATE DATABASE IF NOT EXISTS `placement_automation` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `placement_automation`;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_branch` varchar(100) NOT NULL,
  `company_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_branch`, `company_url`) VALUES
(15, 'TCS', 'Kochin', 'www.tcs.com');

-- --------------------------------------------------------

--
-- Table structure for table `drive`
--

CREATE TABLE `drive` (
  `drive_id` int(11) NOT NULL,
  `drive_title` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_position` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_profile` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dod` date NOT NULL,
  `salary` int(11) NOT NULL,
  `ssc_result` float NOT NULL,
  `hsc_result` float NOT NULL,
  `graduation_result` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drive`
--

INSERT INTO `drive` (`drive_id`, `drive_title`, `company_id`, `job_position`, `job_profile`, `dod`, `salary`, `ssc_result`, `hsc_result`, `graduation_result`) VALUES
(17, 'Tesla', 15, 'Software Engineer', 'Testing', '2023-03-12', 23000, 70, 70, 70);

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_students`
--

CREATE TABLE `enrolled_students` (
  `user_id` int(11) NOT NULL,
  `drive_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `mobile` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `ssc_marks` float NOT NULL,
  `hsc_marks` float NOT NULL,
  `graduation_discipline` varchar(100) NOT NULL,
  `graduation` varchar(100) NOT NULL,
  `graduation_marks` float DEFAULT NULL,
  `post_graduation` varchar(100) NOT NULL,
  `post_graduation_discipline` varchar(100) NOT NULL,
  `post_graduation_marks` float DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `profile_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`mobile`, `dob`, `ssc_marks`, `hsc_marks`, `graduation_discipline`, `graduation`, `graduation_marks`, `post_graduation`, `post_graduation_discipline`, `post_graduation_marks`, `gender`, `uid`, `resume`, `profile_image`) VALUES
('', '', 0, 0, '', '', NULL, '', '', NULL, '', 20, '', ''),
('', '', 0, 0, '', '', NULL, '', '', NULL, '', 21, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `date_of_registration` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `date_of_registration`) VALUES
(20, 'Gokul', 'gokul18b@gmail.com', '431b04904c05d3b001fef9d161ea2973', '2023-02-19 23:38:07'),
(21, 'gokul', 'gokul@gokul.com', '21232f297a57a5a743894a0e4a801fc3', '2023-02-20 20:02:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `drive`
--
ALTER TABLE `drive`
  ADD PRIMARY KEY (`drive_id`),
  ADD KEY `fkdrive` (`company_id`);

--
-- Indexes for table `enrolled_students`
--
ALTER TABLE `enrolled_students`
  ADD KEY `fkuser_id` (`user_id`),
  ADD KEY `fkdrive_id` (`drive_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `drive`
--
ALTER TABLE `drive`
  MODIFY `drive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drive`
--
ALTER TABLE `drive`
  ADD CONSTRAINT `fkdrive` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `enrolled_students`
--
ALTER TABLE `enrolled_students`
  ADD CONSTRAINT `fkdrive_id` FOREIGN KEY (`drive_id`) REFERENCES `drive` (`drive_id`),
  ADD CONSTRAINT `fkuser_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`user_id`);
--
-- Database: `pms`
--
CREATE DATABASE IF NOT EXISTS `pms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pms`;

-- --------------------------------------------------------

--
-- Table structure for table `area_master`
--

CREATE TABLE `area_master` (
  `AreaId` int(11) NOT NULL,
  `AreaName` varchar(20) NOT NULL,
  `CityName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `area_master`
--

INSERT INTO `area_master` (`AreaId`, `AreaName`, `CityName`) VALUES
(1, 'Modhera Road', 'Mehsana'),
(2, 'Radhanpur Road', 'Mehsana');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(20) NOT NULL,
  `Category_Desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`CategoryId`, `CategoryName`, `Category_Desc`) VALUES
(1, 'Home', '2 BHK,3BHK, Flats'),
(2, 'Shop', '100 Sq.M,200 Sq.M');

-- --------------------------------------------------------

--
-- Table structure for table `city_master`
--

CREATE TABLE `city_master` (
  `CityId` int(11) NOT NULL,
  `StateName` varchar(20) NOT NULL,
  `CityName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city_master`
--

INSERT INTO `city_master` (`CityId`, `StateName`, `CityName`) VALUES
(1, 'Gujarat', 'Mehsana'),
(3, 'Gujarat', 'Baroda'),
(4, 'Gujarat', 'Anand');

-- --------------------------------------------------------

--
-- Table structure for table `customer_reg`
--

CREATE TABLE `customer_reg` (
  `CustomerId` int(11) NOT NULL,
  `CustomerName` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_reg`
--

INSERT INTO `customer_reg` (`CustomerId`, `CustomerName`, `Address`, `City`, `Mobile`, `Email`, `Gender`, `BirthDate`, `UserName`, `Password`) VALUES
(3, 'Vairali Suthar', 'Mehsana', 'Mehsana', 9898989898, 'vairali@gmail.com', 'Female', '2013-08-14', 'vairali', 'vairali');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackId` int(11) NOT NULL,
  `CustomerName` varchar(20) NOT NULL,
  `EmailId` varchar(20) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackId`, `CustomerName`, `EmailId`, `MobileNumber`, `Message`) VALUES
(1, 'Nikita Padhya', 'niki@gmail.com', '9898989898', 'Thanks');

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE `login_master` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`UserId`, `UserName`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `news_master`
--

CREATE TABLE `news_master` (
  `NewsId` int(11) NOT NULL,
  `News` varchar(200) NOT NULL,
  `NewsDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news_master`
--

INSERT INTO `news_master` (`NewsId`, `News`, `NewsDate`) VALUES
(5, 'More Than 2000 Properties to sold.', '2013-08-23'),
(6, 'New Property available in Mehsana', '2013-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `property_image`
--

CREATE TABLE `property_image` (
  `ImageId` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `ImagePath` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `property_image`
--

INSERT INTO `property_image` (`ImageId`, `PropertyId`, `Title`, `ImagePath`) VALUES
(1, 3, 'Front View', 'home.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `property_master`
--

CREATE TABLE `property_master` (
  `PropertyId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `StateName` varchar(20) NOT NULL,
  `CityName` varchar(20) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `PropertyName` varchar(50) NOT NULL,
  `PropertyImage` varchar(200) NOT NULL,
  `PropertyDesc` varchar(200) NOT NULL,
  `TotalArea` float NOT NULL,
  `PropertyAge` varchar(10) NOT NULL,
  `TotalRoom` int(11) NOT NULL,
  `Furnished` varchar(5) NOT NULL,
  `Parking` varchar(5) NOT NULL,
  `DistRail` int(11) NOT NULL,
  `PropertyCost` float NOT NULL,
  `Status` varchar(20) NOT NULL,
  `CustomerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `property_master`
--

INSERT INTO `property_master` (`PropertyId`, `CategoryId`, `StateName`, `CityName`, `AreaName`, `PropertyName`, `PropertyImage`, `PropertyDesc`, `TotalArea`, `PropertyAge`, `TotalRoom`, `Furnished`, `Parking`, `DistRail`, `PropertyCost`, `Status`, `CustomerId`) VALUES
(3, 1, 'Gujarat', 'Mehsana', 'Modhera Road', 'Sahkar Nagar Society', '2.jpg', 'Nice Home ', 120, '4 Year', 3, 'Yes', 'Yes', 2, 2300000, 'Open', 3),
(4, 1, 'Gujarat', 'Mehsana', 'Modhera Road', 'Tirupati Royal', 'house4.gif', 'Newly Established Society', 120, '2 Year', 3, 'No', 'Yes', 2, 3000000, 'Open', 3),
(6, 2, 'Gujarat', 'Mehsana', 'Radhanpur Road', 'Swagat Shop', 'sale.gif', 'A Gift Shop', 500, '5 Year', 1, 'Yes', 'Yes', 3, 3500000, 'Open', 3);

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `StateId` int(11) NOT NULL,
  `StateName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state_master`
--

INSERT INTO `state_master` (`StateId`, `StateName`) VALUES
(1, 'Gujarat'),
(2, 'Rajasthan'),
(3, 'Maharastra'),
(4, 'Kerala'),
(5, 'Madhya Pradesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_master`
--
ALTER TABLE `area_master`
  ADD PRIMARY KEY (`AreaId`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `city_master`
--
ALTER TABLE `city_master`
  ADD PRIMARY KEY (`CityId`);

--
-- Indexes for table `customer_reg`
--
ALTER TABLE `customer_reg`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackId`);

--
-- Indexes for table `login_master`
--
ALTER TABLE `login_master`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `news_master`
--
ALTER TABLE `news_master`
  ADD PRIMARY KEY (`NewsId`);

--
-- Indexes for table `property_image`
--
ALTER TABLE `property_image`
  ADD PRIMARY KEY (`ImageId`);

--
-- Indexes for table `property_master`
--
ALTER TABLE `property_master`
  ADD PRIMARY KEY (`PropertyId`);

--
-- Indexes for table `state_master`
--
ALTER TABLE `state_master`
  ADD PRIMARY KEY (`StateId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_master`
--
ALTER TABLE `area_master`
  MODIFY `AreaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city_master`
--
ALTER TABLE `city_master`
  MODIFY `CityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_reg`
--
ALTER TABLE `customer_reg`
  MODIFY `CustomerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_master`
--
ALTER TABLE `login_master`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news_master`
--
ALTER TABLE `news_master`
  MODIFY `NewsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property_image`
--
ALTER TABLE `property_image`
  MODIFY `ImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `property_master`
--
ALTER TABLE `property_master`
  MODIFY `PropertyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state_master`
--
ALTER TABLE `state_master`
  MODIFY `StateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `police`
--
CREATE DATABASE IF NOT EXISTS `police` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `police`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `mobile` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `area` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `pincode` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`id`, `fname`, `lname`, `mobile`, `address1`, `address2`, `area`, `city`, `state`, `pincode`, `username`, `password`) VALUES
(1, 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `citizen_id` text NOT NULL,
  `station_id` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `reason` text NOT NULL,
  `status` text NOT NULL,
  `name` text NOT NULL,
  `youraddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `citizen_id`, `station_id`, `mobile`, `address`, `reason`, `status`, `name`, `youraddress`) VALUES
(1, '1', '1', 'v', 'v', 'v', '2', 'v', 'v'),
(2, '1', '1', 'jh', 'g', 'jg', '5', 'hjgj', 'ghjg'),
(3, '1', '1', 'jkh', 'h', 'kk', '2', 'hkh', 'kh');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `code` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `pincode` text NOT NULL,
  `landline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `name`, `code`, `address1`, `address2`, `city`, `state`, `pincode`, `landline`) VALUES
(1, 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `citizen`
--
ALTER TABLE `citizen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `project_tracking`
--
CREATE DATABASE IF NOT EXISTS `project_tracking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project_tracking`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `allocate`
--

CREATE TABLE `allocate` (
  `id` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `allocate`
--

INSERT INTO `allocate` (`id`, `studentid`, `projectid`, `status`) VALUES
(1, 1, 1, 'asd'),
(2, 2, 3, 'ABSTRACT COMPLETED'),
(3, 3, 4, 'Initiated'),
(4, 4, 5, 'Initiated');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `modules` text NOT NULL,
  `technology` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `modules`, `technology`) VALUES
(1, '	ONLINE VOTING SYSTEM', 'Create application for voting system', '1. voter registration 2. Candidate Registration', 'HTML,JAVA,MYSQL'),
(2, '	XX', 'xx', 'xx', 'xx'),
(3, '	COMMODITY INTELIGENCE', 'COMMODITY INTELLIEGENCE DESCRIPTION', '1.PURCHASE 2.SALES 3. STOCKS', 'JAVA'),
(4, '	EMPLOYEE MANAGEMENT', 'EMPLOYEE MANAGEMENT DESCRIPTION', '1. ADD EMPLOYEES 2.EMPLOYEE LEAVE MANAGEMENT', 'PHP'),
(5, '	CAR SHOP', 'CAR SHOP DESCRIPTION', '1. CAR REGISTRATION 2. BOOK CARS', 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `rollno` text NOT NULL,
  `department` text NOT NULL,
  `classname` text NOT NULL,
  `guidename` text NOT NULL,
  `mobile` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `rollno`, `department`, `classname`, `guidename`, `mobile`, `username`, `password`) VALUES
(1, 'Apsana', '2020MSC01', 'MSC', 'A', 'Raja', '9856547896', 'apsana@gmail.com', 'apsana'),
(2, 'Priya', '11MSC06', 'MSC', 'A', 'Revathi', '9852365478', 'priya@gmail.com', 'priya'),
(3, 'Ramya', '11MSC07', 'MSC', 'A', 'RAVI', '8547856987', 'ramya@gmail.com', 'ramya'),
(4, 'Logesh', '11MSC05', 'MSC', 'A', 'Ram', '8965478596', 'logesh@gmail.com', 'logesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allocate`
--
ALTER TABLE `allocate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allocate`
--
ALTER TABLE `allocate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `psms_db`
--
CREATE DATABASE IF NOT EXISTS `psms_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `psms_db`;
--
-- Database: `qrcode`
--
CREATE DATABASE IF NOT EXISTS `qrcode` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `qrcode`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hallticket`
--

CREATE TABLE `hallticket` (
  `id` int(11) NOT NULL,
  `rollno` text NOT NULL,
  `subject` text NOT NULL,
  `hallno` text NOT NULL,
  `exdate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hallticket`
--

INSERT INTO `hallticket` (`id`, `rollno`, `subject`, `hallno`, `exdate`) VALUES
(1, 'roll', 'java', '123', '2023-20-20'),
(2, 'v', 'java', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `rollno` text NOT NULL,
  `department` text NOT NULL,
  `classname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `lname`, `rollno`, `department`, `classname`, `username`, `password`) VALUES
(2, 'fname', 'lname', 'roll', 'dept', 'classq', 'user', 'pass'),
(3, 'v', 'v', 'v', 'v', 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hallticket`
--
ALTER TABLE `hallticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hallticket`
--
ALTER TABLE `hallticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `realestate`
--
CREATE DATABASE IF NOT EXISTS `realestate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `realestate`;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` int(10) NOT NULL,
  `agent_name` varchar(150) NOT NULL,
  `agent_address` varchar(250) NOT NULL,
  `agent_contact` varchar(20) NOT NULL,
  `agent_email` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `agent_name`, `agent_address`, `agent_contact`, `agent_email`) VALUES
(1, 'Samuel A Waldey', '95, Henry Street, Indented Head, Victoria', '03 5321 1053', 'samuel@gmail.com'),
(2, 'Mrs Eden Battarbee', '25 Main Streat, Beaumonts', '08 8762 5308', 'eden@gmail.com'),
(3, 'Tyson A Salvado', '15 Ghost Hill Road, ST Marys South', '02 4728 5284', 'tyson@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `property_id` int(10) NOT NULL,
  `property_title` varchar(150) DEFAULT NULL,
  `property_details` text DEFAULT NULL,
  `delivery_type` varchar(20) DEFAULT NULL,
  `availablility` int(5) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `property_address` varchar(200) DEFAULT NULL,
  `property_img` varchar(200) DEFAULT NULL,
  `bed_room` int(5) DEFAULT NULL,
  `liv_room` int(5) DEFAULT NULL,
  `parking` int(5) DEFAULT NULL,
  `kitchen` int(5) DEFAULT NULL,
  `utility` varchar(100) DEFAULT NULL,
  `property_type` varchar(20) DEFAULT NULL,
  `floor_space` varchar(20) DEFAULT NULL,
  `agent_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`property_id`, `property_title`, `property_details`, `delivery_type`, `availablility`, `price`, `property_address`, `property_img`, `bed_room`, `liv_room`, `parking`, `kitchen`, `utility`, `property_type`, `floor_space`, `agent_id`) VALUES
(1, 'Apartment', 'Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions. <br> <br>\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service', 'Sale', 0, 150000, '11 Ghost Hill Road', 'images/properties/bed-1-1.jpg', 3, 2, 1, 1, 'Electricity, Gas, Water', 'Apartment', '1600 X 1400', 3),
(2, 'Apartment For Rent', 'Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions. <br> <br>\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service', 'Rent', 0, 7000, '28 Ghost Hill Road', 'images/properties/bed-2-1.jpg', 3, 2, 1, 1, 'Electricity, Gas, Water', 'Apartment', '1650 X 1350', 3),
(3, 'Apartment For Sale', 'Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions. <br> <br>\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service', 'Sale', 1, 80000, '77 Ghost Hill Road', 'images/properties/bed-3-1.jpg', 3, 2, 1, 1, 'Electricity, Gas, Water', 'Apartment', '1500 X 1300', 3),
(4, 'Office-Space for Sale', 'Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions. <br> <br>\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service', 'Sale', 0, 100000, '15 Main Streat, Beaumonts', 'images/properties/liv-4-1.jpg', 2, 3, 1, 1, 'Electricity, Gas, Water, Internet', 'Office-Space', '1650 X 1350', 2),
(5, 'Office-Space for Rent', 'Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions. <br> <br>\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service', 'Rent', 0, 7500, '91 Main Streat, Beaumonts', 'images/properties/liv-5-1.jpg', 2, 2, 1, 1, 'Electricity, Gas, Water, Internet', 'Office-Space', '1650 X 1350', 2),
(6, 'Office-Space for Rent', 'Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions. <br> <br>\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service', 'Rent', 1, 6000, '93 Main Streat, Beaumonts', 'images/properties/liv-6-1.jpg', 2, 2, 1, 1, 'Electricity, Gas, Water, Internet', 'Office-Space', '1450 X 1250', 1),
(7, 'Building for Sale', 'Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions. <br> <br>\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service', 'Sale', 0, 1750000, '65, Henry Street, Indented Head, Victoria', 'images/properties/bed-7-1.jpg', 3, 2, 1, 1, 'Electricity, Gas, Water', 'Building', '1650 X 1350', 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_image`
--

CREATE TABLE `property_image` (
  `property_images` varchar(200) DEFAULT NULL,
  `property_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `property_image`
--

INSERT INTO `property_image` (`property_images`, `property_id`) VALUES
('images/properties/bed-1-1.jpg', 1),
('images/properties/bed-1-2.jpg', 1),
('images/properties/liv-1-1.jpg', 1),
('images/properties/liv-1-2.jpg', 1),
('images/properties/kitchen-1-1.jpg', 1),
('images/properties/bed-1-1.jpg', 2),
('images/properties/bed-1-2.jpg', 2),
('images/properties/liv-1-1.jpg', 2),
('images/properties/liv-1-2.jpg', 2),
('images/properties/kitchen-1-1.jpg', 2),
('images/properties/bed-2-1.jpg', 2),
('images/properties/bed-2-2.jpg', 2),
('images/properties/liv-2-1.jpg', 2),
('images/properties/liv-2-2.jpg', 2),
('images/properties/kitchen-2-1.jpg', 2),
('images/properties/bed-3-1.jpg', 3),
('images/properties/bed-3-2.jpg', 3),
('images/properties/liv-3-1.jpg', 3),
('images/properties/liv-3-2.jpg', 3),
('images/properties/kitchen-3-1.jpg', 3),
('images/properties/bed-4-1.jpg', 4),
('images/properties/bed-4-2.jpg', 4),
('images/properties/liv-4-1.jpg', 4),
('images/properties/liv-4-2.jpg', 4),
('images/properties/kitchen-4-1.jpg', 4),
('images/properties/bed-5-1.jpg', 5),
('images/properties/bed-5-2.jpg', 5),
('images/properties/liv-5-1.jpg', 5),
('images/properties/liv-5-2.jpg', 5),
('images/properties/kitchen-5-1.jpg', 5),
('images/properties/bed-6-1.jpg', 6),
('images/properties/bed-6-2.jpg', 6),
('images/properties/liv-6-1.jpg', 6),
('images/properties/liv-6-2.jpg', 6),
('images/properties/kitchen-6-1.jpg', 6),
('images/properties/bed-7-1.jpg', 7),
('images/properties/bed-7-2.jpg', 7),
('images/properties/liv-7-1.jpg', 7),
('images/properties/liv-7-2.jpg', 7),
('images/properties/kitchen-7-1.jpg', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `showroom`
--
CREATE DATABASE IF NOT EXISTS `showroom` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `showroom`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `expected` text NOT NULL,
  `suggession` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `customer_id`, `car_id`, `expected`, `suggession`) VALUES
(1, 1, 1, '', ''),
(2, 1, 1, '', ''),
(3, 1, 2, 'asd', 'asds'),
(4, 2, 1, 'as', 'as'),
(5, 2, 1, 'asf', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `model` text NOT NULL,
  `engine` text NOT NULL,
  `width` text NOT NULL,
  `height` text NOT NULL,
  `price` text NOT NULL,
  `year` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `name`, `model`, `engine`, `width`, `height`, `price`, `year`) VALUES
(1, 'name', 'model', 'engine', 'width', 'height', 'price', 'year');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `mobile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `lname`, `email`, `password`, `mobile`) VALUES
(1, 'fname', 'lname', 'email', 'password', 'mobile'),
(2, 'test', 'test', 'et', 'tes', 'tes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `sports`
--
CREATE DATABASE IF NOT EXISTS `sports` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sports`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `category` text NOT NULL,
  `amount` text NOT NULL,
  `total` text NOT NULL,
  `location` text NOT NULL,
  `contactperson` text NOT NULL,
  `mobile` text NOT NULL,
  `eventdate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `eventid`, `teamid`, `category`, `amount`, `total`, `location`, `contactperson`, `mobile`, `eventdate`) VALUES
(5, 3, 4, 'Cricket', '2500', '6', 'Tirupur', 'Karthi', '9685742369', '05-04-2021'),
(6, 3, 5, 'v', 'v', 'v', 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `amount` text NOT NULL,
  `total` text NOT NULL,
  `location` text NOT NULL,
  `contactperson` text NOT NULL,
  `mobile` text NOT NULL,
  `eventdate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `category`, `amount`, `total`, `location`, `contactperson`, `mobile`, `eventdate`) VALUES
(3, 'Cricket 2021', 'Cricket', '2500', '6', 'Tirupur', 'Karthik', '9854785962', '05-04-2021'),
(4, 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `teamname` text NOT NULL,
  `totalmembers` text NOT NULL,
  `captain` text NOT NULL,
  `mobile1` text NOT NULL,
  `mobile2` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `user_id`, `teamname`, `totalmembers`, `captain`, `mobile1`, `mobile2`, `address`) VALUES
(4, 3, 'Star Girls', '11', 'Dhanalakshmi', '9856547856', '9875214569', 'Tirupur'),
(5, 1, 'v', 'v', 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `mobile`, `email`, `username`, `password`) VALUES
(3, '9856215478', 'dhanalakshmi@gmail.com', 'dhanalakshmi', '........'),
(4, 'v', 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `textile`
--
CREATE DATABASE IF NOT EXISTS `textile` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `textile`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `pincode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobile`, `address`, `pincode`) VALUES
(5, 'Gokul B', '7418227833', '70 Anna street, Kumaranandhapuram, Tirupur', '641602'),
(6, 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `company` text NOT NULL,
  `brand` text NOT NULL,
  `product` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `company`, `brand`, `product`, `price`) VALUES
(6, 'PETER ENGLAND', 'PETER', 'JEANS', '1500'),
(7, 'LEO COOPER', 'LEO', 'SHIRT', '2500'),
(8, 'v', 'v', 'v', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `pid`, `quantity`) VALUES
(18, 6, '20'),
(19, 6, '20'),
(20, 6, '3'),
(21, 8, '123');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` text NOT NULL,
  `total` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `cid`, `pid`, `quantity`, `total`) VALUES
(1, 5, 7, '2', '5000'),
(2, 5, 6, '3', '4500'),
(3, 5, 7, '2', '5000'),
(4, 5, 6, '6', '9000');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `pid`, `quantity`) VALUES
(2, 6, '34'),
(3, 8, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `tms`
--
CREATE DATABASE IF NOT EXISTS `tms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 05:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 01:08:36', 2, 'u', '2020-07-08 01:23:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 01:13:25', 1, NULL, '2020-07-08 01:22:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 01:14:39', 2, 'a', '2020-07-08 01:19:55'),
(4, 2, 'gokul18b@gmail.com', '2023-02-16', '2023-02-16', 'sad', '2023-02-05 04:35:36', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 01:00:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 01:01:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 01:02:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 01:03:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 01:03:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 01:04:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 01:04:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 01:05:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 01:06:03', 'Ok, We will fix the issue asap', '2020-07-08 01:25:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 01:26:29', NULL, NULL),
(8, NULL, NULL, NULL, '2023-02-05 04:34:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------J-890 Dwarka House New Delhi-110096</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Delight Premium 2020 (Group Package)', 'Group Package', 'Paris and Switzerland', 6000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', '1581490262_2_1.jpg', '2020-07-07 23:51:58', NULL),
(2, 'Bhutan Holidays - Thimphu and Paro Special', 'Family Package', 'Bhutan', 3000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2020-07-08 00:07:40', '2020-07-08 00:39:01'),
(3, 'Soulmate Special Bali - 7 Nights', 'Couple Package', 'Indonesia(Bali)', 5000, 'Free Pickup and drop facility, Free Wi-fi , Free professional guide', 'Airport transfers by private car | Popular Sightseeing included | Suitable for Couple and budget travelers', '1583140977_5_11.jpg', '2020-07-08 00:11:07', '2020-07-08 23:53:27'),
(4, 'Kerala - A Lovers Paradise - Value Added', 'Family Package', 'Kerala', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2020-07-08 00:15:58', NULL),
(5, 'Short Trip To Dubai', 'Family', 'Dubai', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'unnamed.jpg', '2020-07-08 00:19:13', NULL),
(6, 'Sikkim Delight with Darjeeling (customizable)', 'Group', 'Sikkim', 3500, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2020-07-08 00:21:26', NULL),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family Package', 'Guwahati(Sikkim)', 4500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2020-07-08 00:24:42', NULL),
(8, 'Grand Week in North East - Lachung, Lachen and Gangtok', 'Domestic Packages', 'Sikkim', 4500, 'Free Breakfast, Free Wi-fi', 'Changu Lakeand New Baba Mandir excursion | Yumthang Valley tour | Gurudongmar Lake excursion | Night stay in Lachen', 'download (3).jpg', '2020-07-08 00:35:24', NULL),
(9, 'Gangtok & Darjeeling Holiday (Without Flights)', 'Family Package', 'Sikkim', 1000, 'Free Wi-fi, Free pickup and drop facility', 'Ideal tour for Family | Sightseeing in Gangtok and Darjeeling | Full day excursion to idyllic Changu Lake | Visit to Ghoom Monastery', '1540382781_shutterstock_661867435.jpg.jpg', '2020-07-08 00:37:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 01:03:20', NULL),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 01:03:56', NULL),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 01:04:20', NULL),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 01:04:38', NULL),
(5, 'Test', '1987894654', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-08 01:05:06', '2021-05-10 23:07:41'),
(8, 'test', '8667216589', 'gokul18b@gmail.com', '39f3d740ffbee20af05fd49df734e615', '2023-02-05 04:34:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `transport`
--
CREATE DATABASE IF NOT EXISTS `transport` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `transport`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `license` text NOT NULL,
  `aadhar` text NOT NULL,
  `expierence` text NOT NULL,
  `age` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `name`, `mobile`, `address`, `license`, `aadhar`, `expierence`, `age`) VALUES
(2, 'hj', 'gjh', 'gjg', 'jhg', 'jhg', 'jhg', 'hjg'),
(3, 'v', 'h', 'h', 'h', 'h', 'h', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `vehicleid` text NOT NULL,
  `driverid` text NOT NULL,
  `deliveryaddress` text NOT NULL,
  `days` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `vehicleid`, `driverid`, `deliveryaddress`, `days`, `date`) VALUES
(3, '2', '2', 'as', 'as', '2023-02-18'),
(4, '2', '2', 'as', 'as', '2023-02-18'),
(5, '2', '2', 'asd', '2', '2023-02-18'),
(6, '4', '2', 'h', 'h', '2023-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `number` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `name`, `number`, `type`) VALUES
(2, 'asd', 'asd', 'asd'),
(3, 'asd', '123', 'dsf'),
(4, 'v', 'v', 'v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `vehicleservice`
--
CREATE DATABASE IF NOT EXISTS `vehicleservice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vehicleservice`;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `branchid` int(11) NOT NULL,
  `servideid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `branchid`, `servideid`, `amount`, `date`) VALUES
(23, 2, 18, 2200, '07-01-2018'),
(24, 1, 20, 350, '07-01-2018'),
(17, 2, 12, 250, '07-01-2018');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `landmark`, `pincode`, `address`) VALUES
(1, 'RAJA HONDA SHOW ROOM', 'NEAR SIVAN THEATRE', 641987, 'Anna street,Avinashi Road , Tirupur'),
(2, 'RABA HONDA SHOW ROOM', 'NEAR OLD BUS STAND', 645667, 'Palladam Road, Tirupur');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `branch` varchar(60) NOT NULL,
  `vehicle` varchar(30) NOT NULL,
  `serno` varchar(30) NOT NULL,
  `problem` text NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `mobile`, `name`, `branch`, `vehicle`, `serno`, `problem`, `address`, `status`, `uid`, `date`) VALUES
(24, '7418227833', 'Gokul', '2', 'CAR', 'TN 65 NH 0928', 'change tier', 'tup', 0, 9, '17-01-2018'),
(22, '9952316067', 'Madhan', '2', 'CAR', 'TN BK 0516', 'adkj', 'lkjs', 0, 10, '08-01-2018'),
(20, '9952316067', 'Madhan', '1', 'BIKE', 'TN 009 BH 0562', 'change oil', 'Annur', 1, 10, '07-01-2018'),
(18, '9952316067', 'Madhan', '2', 'CAR', 'AB 0000', 'Change tier', 'Annur', 1, 10, '07-01-2018'),
(12, '7418227833', 'Gokul', '2', 'BIKE', 'TN 39 BK 0516', 'normal service', '70 Anna street kumaranandhapuram', 1, 9, '07-01-2018');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `FLAG` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `mobile`, `password`, `address`, `FLAG`) VALUES
(9, 'Gokul', '7418227833', 'gokul@94', '70 Anna street kumaranandhapuram Tirupur 641602', 0),
(8, 'Admin', 'admin', 'admin', '70 Anna street ,  Kumaranandhapuram , Tirupur 641602', 1),
(10, 'Madhan', '9952316067', 'madhan@95', '34 Raja street Annur post, coimbatore dist , 641234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `vms`
--
CREATE DATABASE IF NOT EXISTS `vms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vms`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(100) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`) VALUES
(1, 'CSE'),
(2, 'IT'),
(3, 'ECE'),
(4, 'ME'),
(5, 'CIVIL'),
(6, 'APPLIED SCIENCE'),
(7, 'MAIN OFFICE'),
(8, 'FEE DEPARTMENT'),
(9, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `emp_table`
--

CREATE TABLE `emp_table` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `emp_table`
--

INSERT INTO `emp_table` (`id`, `name`, `phone`, `gender`, `age`, `email_id`, `department_name`) VALUES
(1, 'Akila', 985654152, 'Female', 21, 'akila@gmail.com', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `forgot`
--

CREATE TABLE `forgot` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `OTP` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `forgot`
--

INSERT INTO `forgot` (`id`, `username`, `OTP`) VALUES
(2, 'sanjay123', 5409);

-- --------------------------------------------------------

--
-- Table structure for table `inquery`
--

CREATE TABLE `inquery` (
  `Id` int(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Image` varchar(55555) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Person_Meet` varchar(100) NOT NULL,
  `In_Time` varchar(5) NOT NULL,
  `Out_Time` varchar(5) NOT NULL,
  `qr_code` varchar(2500) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inquery`
--

INSERT INTO `inquery` (`Id`, `Name`, `Gender`, `Phone`, `Image`, `Department`, `Person_Meet`, `In_Time`, `Out_Time`, `qr_code`, `Date`) VALUES
(26, 'sanjay', 'male', '123', '', 'CSE', 'Karan', '11:27', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=28231&choe=&chld=|>', '2017-07-06'),
(27, 'sanjay', 'male', '789', '', 'CSE', 'Karan', '11:32', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=31858&choe=&chld=|>', '2017-07-06'),
(28, 'sanjay', 'male', '12234', '', 'CSE', 'Karan', '11:37', '', '', '2017-07-06'),
(29, 'sanjay', 'male', '999', '', 'CSE', 'Karan1', '11:39', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=12358&choe=&chld=|>', '2017-07-06'),
(30, 'sanjay', 'male', '999', '', 'CSE', 'Karan', '12:21', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=28094&choe=&chld=|>', '2017-07-06'),
(31, 'sanjay', '', '8146905071', '', 'CSE', 'Karan', '12:32', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=18036&choe=&chld=|>', '2017-07-06'),
(32, 'Suman Devi', '', '7814285875', '', 'APPLIED SCIENCE', 'Karan', '07:26', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=15561&choe=&chld=|>', '2017-07-06'),
(33, 'Suman Devi', '', '7814285875', '', 'CSE', 'Karan', '07:50', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=25841&choe=&chld=|>', '2017-07-06'),
(34, 'Suman Devi', 'female', '7814285875', '', 'CSE', 'Karan', '08:01', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=25841&choe=&chld=|>', '2017-07-06'),
(35, 'Suman Devi', 'female', '7814285875', '', 'CSE', 'Karan', '08:01', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=25841&choe=&chld=|>', '2017-07-06'),
(36, 'Ajay', 'male', '565', '', 'IT', 'Karan', '08:12', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=878&choe=&chld=|>', '2017-07-06'),
(37, 'rajan', '', '786', '', 'CIVIL', 'Karan', '08:19', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=10767&choe=&chld=|>', '2017-07-06'),
(38, 'rajan', 'male', '786', '', 'CIVIL', 'Karan', '08:19', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=10908&choe=&chld=|>', '2017-07-06'),
(39, 'rajan', '', '786', '', 'CSE', 'Karan', '08:21', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=6358&choe=&chld=|>', '2017-07-06'),
(40, 'sanjay', 'male', '788', '', 'CSE', 'Karan Mahajan', '12:16', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=12341&choe=&chld=|>', '2017-07-07'),
(41, 'sanjay', 'male', '88989', '', 'CSE', 'Karan Mahajan', '12:19', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=13208&choe=&chld=|>', '2017-07-07'),
(42, 'sanjay', 'male', '88989', '', 'CSE', 'Karan Mahajan', '12:21', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=13208&choe=&chld=|>', '2017-07-07'),
(43, 'sanjay', 'male', '88989', '', 'CSE', 'Karan Mahajan', '12:23', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=13208&choe=&chld=|>', '2017-07-07'),
(44, 'sanjay', '', '88989', '', 'CSE', 'Karan Mahajan', '12:29', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=29461&choe=&chld=|>', '2017-07-07'),
(45, 'sanjay', 'male', '8146905071', '', 'CSE', 'Karan Mahajan', '10:30', '10:30', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1106&choe=&chld=|>', '2017-07-08'),
(47, 'sanjay', 'male', '8146905071', '', 'CSE', 'Karan Mahajan', '12:13', '01:00', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=30500&choe=&chld=|>', '2017-07-08'),
(48, 'sanjay', 'male', '8146905071', '', 'CSE', 'Karan Mahajan', '01:04', '01:05', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=25229&choe=&chld=|>', '2017-07-08'),
(49, 'sanjay', '', '666]', '', 'CSE', 'Karan Mahajan', '04:44', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=11114&choe=&chld=|>', '2017-07-08'),
(50, '77', 'male', '666]', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAAgAElEQVR4Xuy9d8wl13nm+TunctXNXw6dm83QDCIpipRFBSpZyVpJligqy3KQactaW7JW610Y653F7Cyw8IQd21pr7LGtYFmyRIm0RFKJSoxiDt1k5/Tl7+Zbt3LVWdTlzMDGDEBj/yAamK7+o9G3T+Pcr/p9z5ue5znida97q6pM6Rj1BapWn3HgMTM02FpapGqtI7sBa6vbLF+5DzmYIzW3sCo5nrDJM51j3XNsPXqMa152ABnPM10fIioeQ5VSsevUPZNxoDF0HKJjz9DD4JodUxjuLMZMi+HmNk61jmXrWHYF267jTpm41TrRdkRtz06mmy6LloWJoHwyAboCIZ7/8z9+lFL/1Wf/eF0vS5G6Tpjn9Fc7oBu0HEl7c4scSYTgJZfs5cEnHsLKBLEKufLSq3jyicMUY58UiZAx6cCnEIIDV1zMYw8fIjNTdH2GtLNJf7jF0bMnuO+hR8izmFTM4oUDsiJg6HssBn2iuQbHt86QSYurag2sxOdcqHF2uPFf/1D/1U904YMX6w2IN3/ozWoxmmdsKIZpQGtGR4UL9NyIBadCnBTodoizmdKtaPhrA/ZddBmOlXJaBWycPMno1ArXX3MV43jMst3Cqk8z1iMckVKpLpAEzyHzfRxdeYof/vhRjNzA3bmTD77jNRjaEM/ciawpmrJKXmlQbzSQ1QYEY+w5j1ZrF/NGgSvk5L0UAuT/DwfJUWznBTUpCDPFYHOLSGXUazXaG10QPkXhcuDSvRx5/GlkGhEUIVdefy0PP/AwURSjZwYCRTjewBBVlq6+jBOPPYWKAzKjSZqmDLa3CM49x70PH8ZcT3l2xqGmZ7hnumwXMS2RkMoxvUAjV0OWZw6wqFZ5Zl3n0PiCg7xYxv/P2Uf8xi2fVIPFDtV4FtNO0XoFHbVKbMzTbM0QkFHXC4pU4R', 'CSE', 'Karan Mahajan', '04:45', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=30811&choe=&chld=|>', '2017-07-08'),
(51, 'sanjay', 'male', '123', '', 'CSE', 'Karan Mahajan', '04:51', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=10488&choe=&chld=|>', '2017-07-08'),
(52, 'Ajay', '', '565', 'data:image/png;base64,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', 'CSE', 'Karan Mahajan', '04:51', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=12753&choe=&chld=|>', '2017-07-08'),
(53, 'Ajay', '', '565', 'images/.jpg', 'CSE', 'Karan Mahajan', '04:55', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=12753&choe=&chld=|>', '2017-07-08'),
(54, 'Ajay', '', '565', 'images/abc.jpg', 'CSE', 'Karan Mahajan', '04:56', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=12753&choe=&chld=|>', '2017-07-08'),
(55, 'Ajay1', '', '565', 'images/abc.jpg', 'CSE', 'Karan Mahajan', '04:59', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=31118&choe=&chld=|>', '2017-07-08'),
(56, 'Ankur', 'male', '8872350852', 'images/19281.png', 'CSE', 'Karan Mahajan', '10:01', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=14456&choe=&chld=|>', '2017-11-07'),
(57, '<br /><b>Warning</b>:  Trying to access array offs', '', '9856541525', 'images/1144804962.png', 'CSE', 'Akila', '08:24', '08:24', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=59938662&choe=&chld=|>', '2023-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `username`, `name`, `gender`, `password`, `phone`, `image`, `user`) VALUES
(1, 'sanjay123', 'sanjay', 'male', 'sanjay', '8146905071', '', 'guard'),
(2, 'sanjay1', 'sanjay1', 'male', 'sanjay', '8146905071', '', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `emp_table`
--
ALTER TABLE `emp_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_name` (`department_name`);

--
-- Indexes for table `forgot`
--
ALTER TABLE `forgot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquery`
--
ALTER TABLE `inquery`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emp_table`
--
ALTER TABLE `emp_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forgot`
--
ALTER TABLE `forgot`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquery`
--
ALTER TABLE `inquery`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_table`
--
ALTER TABLE `emp_table`
  ADD CONSTRAINT `emp_table_ibfk_1` FOREIGN KEY (`department_name`) REFERENCES `department` (`department_name`);
--
-- Database: `water`
--
CREATE DATABASE IF NOT EXISTS `water` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `water`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobile`, `address`, `gender`, `email`) VALUES
(5, 'Gokul', '7418227833', 'address', 'Male', 'gokul@gmail'),
(6, 'mani', '9952316067', 'address', 'Male', 'mani@gmail'),
(7, 'xxx', '9999999999', '546', 'Male', 'asd'),
(8, 'g', 'g', 'g', 'Male', 'g');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `company` text NOT NULL,
  `model` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `company`, `model`, `price`) VALUES
(3, 'MOTO', 'G3', 12000),
(4, 'OPPO', 'F11 PRO', 14000);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `product_id`, `quantity`, `price`, `date`) VALUES
(11, 3, 15, 150, '2020-02-14 09:55:10'),
(12, 3, 5, 12, '2020-02-14 09:55:17'),
(13, 4, 12, 23, '2020-02-14 10:16:29'),
(14, 5, 12312123, 231, '2023-02-26 18:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `product_id`, `quantity`, `price`) VALUES
(9, 5, '3', 5, 123),
(10, 7, '3', 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `watertype`
--

CREATE TABLE `watertype` (
  `id` int(11) NOT NULL,
  `companyname` text NOT NULL,
  `watertype` text NOT NULL,
  `liter` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watertype`
--

INSERT INTO `watertype` (`id`, `companyname`, `watertype`, `liter`, `price`) VALUES
(3, 'AQUAFINA', 'DRINK ', 30, 150),
(4, 'ABC', 'SALT', 15, 50),
(5, 't', 't', 2000, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watertype`
--
ALTER TABLE `watertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `watertype`
--
ALTER TABLE `watertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
