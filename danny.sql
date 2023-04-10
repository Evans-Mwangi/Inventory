-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2023 at 11:24 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `danny`
--

-- --------------------------------------------------------

--
-- Table structure for table `purchase_bill`
--

DROP TABLE IF EXISTS `purchase_bill`;
CREATE TABLE IF NOT EXISTS `purchase_bill` (
  `purchase_id` int NOT NULL,
  `balance` int NOT NULL,
  `date` varchar(10) NOT NULL,
  `mode` int NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_stock`
--

DROP TABLE IF EXISTS `purchase_stock`;
CREATE TABLE IF NOT EXISTS `purchase_stock` (
  `purchase_id` int NOT NULL,
  `item_no` int NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_bill`
--

DROP TABLE IF EXISTS `sales_bill`;
CREATE TABLE IF NOT EXISTS `sales_bill` (
  `inv_id` int NOT NULL,
  `date` varchar(10) NOT NULL,
  `amount` int NOT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`inv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_bill`
--

INSERT INTO `sales_bill` (`inv_id`, `date`, `amount`, `customer_id`) VALUES
(1160, '2019-11-14', 660, 1),
(1361, '2019-11-21', 44, 293),
(1583, '2019-11-03', 132, 1),
(1839, '2019-11-02', 220, 514),
(2720, '2019-11-03', 517, 1),
(2866, '2019-11-22', 2, 510),
(2934, '2019-11-06', 264, 777),
(3435, '2019-11-22', 11, 967),
(5602, '2019-11-21', 220, 978),
(6804, '2019-11-21', 132, 815),
(6907, '2019-11-03', 132, 1),
(9474, '2019-11-03', 572, 1),
(9735, '2019-11-15', 264, 666);

-- --------------------------------------------------------

--
-- Table structure for table `sales_stocks`
--

DROP TABLE IF EXISTS `sales_stocks`;
CREATE TABLE IF NOT EXISTS `sales_stocks` (
  `inv_id` int NOT NULL,
  `item_no` int NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_stocks`
--

INSERT INTO `sales_stocks` (`inv_id`, `item_no`, `qty`) VALUES
(3542, 782, 1),
(1839, 782, 1),
(9474, 451, 1),
(9474, 782, 2),
(1583, 451, 1),
(6907, 451, 1),
(2720, 451, 2),
(2720, 583, 1),
(2934, 451, 2),
(1160, 297, 9),
(1160, 451, 2),
(9735, 451, 2),
(6804, 297, 3),
(1361, 297, 1),
(5602, 297, 5),
(2866, 254, 1),
(3435, 254, 5);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `item_no` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `qty` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`item_no`, `name`, `qty`, `price`) VALUES
('254', 'candy', 144, 2),
('297', 'face wash', 1, 40),
('451', 'Face Wash', 1, 120),
('583', 'Liquid Wash', 4, 230),
('656', 'face wash', 2, 40),
('691', 'Hand Wash', 2, 130),
('713', 'Lipstick', 5, 240),
('782', 'Body Wash', 9, 200),
('810', 'def', 5, 100),
('904', 'Liquid Cleaner', 5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_phone` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_phone`) VALUES
(1, 'Evans', 123),
(293, 'Sarah', 2535),
(510, 'harman sandhu', 365367),
(978, 'Jackson', 55);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `sr` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`sr`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sr`, `username`, `pass`) VALUES
(1, 'sarah', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wholesaler`
--

DROP TABLE IF EXISTS `wholesaler`;
CREATE TABLE IF NOT EXISTS `wholesaler` (
  `whole_id` int NOT NULL,
  `whole_name` varchar(50) NOT NULL,
  `whole_phone` int NOT NULL,
  `whole_address` varchar(100) NOT NULL,
  PRIMARY KEY (`whole_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `whole_trans`
--

DROP TABLE IF EXISTS `whole_trans`;
CREATE TABLE IF NOT EXISTS `whole_trans` (
  `whole_id` int NOT NULL,
  `purchase_id` int NOT NULL,
  `date` varchar(10) NOT NULL,
  `amount` int NOT NULL,
  `whole_trans` int NOT NULL,
  PRIMARY KEY (`whole_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
