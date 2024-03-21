-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 01:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokobuku_kelompok_8`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `URL` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`name`, `address`, `URL`) VALUES
('Aprilia Hapsari', 'Jalan Uwaw No 3', 'http://www.haha.com/aping'),
('Azra Kayla', 'Jalan Uhuy No 4', 'http://www.haha.com/azra'),
('Rayi Nuriman', 'Jalan Widiw No 5', 'http://www.haha.com/ray'),
('Shealawata', 'Jalan Gacor No 1', 'http://www.haha.com/sheala'),
('Valeroy Putra', 'Jalan Cihuy No 2', 'http://www.haha.com/valeroy');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ISBN` varchar(20) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `year` int(11) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `author_name`, `publisher_name`, `title`, `year`, `price`) VALUES
('214-2-77765222-9', 'Rayi Nuriman', 'Flames Books', 'Love Language', 2022, 'RP. 120.000'),
('248-2-12345678-5', 'Shealawata', 'Apple Publishing', 'Restoring The Past', 2020, 'RP. 100.000'),
('248-2-98765432-1', 'Valeroy Putra', 'AvaKayla Books', 'Tangled Memories', 2022, 'RP. 150.000'),
('281-4-45645644-3', 'Aprilia Hapsari', 'Raithwin Books', 'OTW', 2021, 'RP. 160.000'),
('281-4-84284211-7', 'Azra Kayla', 'Green Publishing', 'His Wish', 2020, 'RP. 180.000');

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `ISBN` varchar(20) DEFAULT NULL,
  `basketID` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`ISBN`, `basketID`, `number`) VALUES
('248-2-12345678-5', 1, 2),
('248-2-98765432-1', 2, 1),
('281-4-45645644-3', 3, 3),
('281-4-84284211-7', 4, 2),
('214-2-77765222-9', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `email` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`email`, `name`, `address`, `phone`) VALUES
('fika@gmail.com', 'Fika Hadi', 'Jalan Maple No 75', '777-888-9999'),
('icad@gmail.com', 'Irsyad Aflaha', 'Jalan Oak No 65', '444-555-6666'),
('jono@gmail.com', 'Jono Saputra', 'Jalan Cedar No 85', '888-999-0000'),
('lala@gmail.com', 'Lala Putri', 'Jalan Pine No 95', '222-333-4444'),
('pipiaa@gmail.com', 'Lutfia Rahmah', 'Jalan Anggrek No 55', '111-222-3333');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `URL` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`name`, `address`, `phone`, `URL`) VALUES
('Apple Publishing', 'Jalan Mutia No 6', '222-567-4242', 'http://www.hehe.com/atomicapple'),
('AvaKayla Books', 'Jalan Inaja No 7', '333-789-3636', 'http://www.hehe.com/avakayla'),
('Flames Books', 'Jalan Tamri No 10', '666-345-6262', 'http://www.hehe.com/flames'),
('Green Publishing', 'Jalan Munir No 9', '555-678-5050', 'http://www.hehe.com/green'),
('Raithwin Books', 'Jalan Hoohh No 8', '444-901-4848', 'http://www.hehe.com/winn');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_basket`
--

CREATE TABLE `shopping_basket` (
  `basketID` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_basket`
--

INSERT INTO `shopping_basket` (`basketID`, `email`) VALUES
(3, 'fika@gmail.com'),
(2, 'icad@gmail.com'),
(4, 'jono@gmail.com'),
(5, 'lala@gmail.com'),
(1, 'pipiaa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `ISBN` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`ISBN`, `code`, `number`) VALUES
('248-2-12345678-5', 'W01', 50),
('248-2-98765432-1', 'W02', 75),
('281-4-45645644-3', 'W03', 60),
('281-4-84284211-7', 'W04', 100),
('214-2-77765222-9', 'W05', 80);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `code` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`code`, `address`, `phone`) VALUES
('W01', 'Jalan Tekno No 20', '123-456-7890'),
('W02', 'Jalan Ceria No 21', '234-567-8901'),
('W03', 'Jalan Merdeka No 22', '345-678-9012'),
('W04', 'Jalan Jaya No 30', '456-789-0123'),
('W05', 'Jalan Maju No 32', '567-890-1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`name`,`address`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `author_name` (`author_name`),
  ADD KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD KEY `ISBN` (`ISBN`),
  ADD KEY `basketID` (`basketID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `shopping_basket`
--
ALTER TABLE `shopping_basket`
  ADD PRIMARY KEY (`basketID`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD KEY `ISBN` (`ISBN`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_name`) REFERENCES `author` (`name`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`publisher_name`) REFERENCES `publisher` (`name`);

--
-- Constraints for table `contains`
--
ALTER TABLE `contains`
  ADD CONSTRAINT `contains_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`),
  ADD CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`basketID`) REFERENCES `shopping_basket` (`basketID`);

--
-- Constraints for table `shopping_basket`
--
ALTER TABLE `shopping_basket`
  ADD CONSTRAINT `shopping_basket_ibfk_1` FOREIGN KEY (`email`) REFERENCES `customer` (`email`);

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`),
  ADD CONSTRAINT `stocks_ibfk_2` FOREIGN KEY (`code`) REFERENCES `warehouse` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
