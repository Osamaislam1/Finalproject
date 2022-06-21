-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 07:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectmms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(22) NOT NULL,
  `dname` varchar(22) NOT NULL,
  `userid` int(22) NOT NULL,
  `dcontact` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `fee` varchar(22) NOT NULL,
  `pname` varchar(22) NOT NULL,
  `pcontact` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(22) NOT NULL,
  `dates` date NOT NULL,
  `time` varchar(22) NOT NULL,
  `payment` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(22) NOT NULL,
  `cat` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'Medicine'),
(2, 'Heart'),
(3, 'Bone'),
(4, 'Kedney'),
(5, 'Cardiologist'),
(6, 'Plastic Surgeon'),
(7, 'General Physician'),
(8, 'Neurologist');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  `comment` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(0, 'Osama', 'Islam', 'osamaxyz321@gma', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt et dolores neque eaque. Labore, dicta simili');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(22) NOT NULL,
  `doctor_id` varchar(22) NOT NULL,
  `name` varchar(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `id` int(11) NOT NULL,
  `fee` varchar(111) NOT NULL,
  `userid` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  `pic` varchar(111) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
('101', '101', 'Dr. John Hopkins', 'Integral University Lucknow', '9876543210', 'abc@xyz.com', 'Medicine', 0, '500', '101', 'password', 'doctor1.jpg'),
('102', '102', 'Dr. Demo', 'lucknow', '9876543210', 'abc@gmail.com', 'Medicine', 1, '500', '102', 'password', 'doctor5.jpg'),
('103', '103', 'Dr. Demo1', 'lucknow', '9876543210', 'demo1@gmail.com', 'Ent Specialist', 2, '500', '103', 'password', ''),
('104', '104', 'Dr.Demo2', 'Lucknow', '9876543210', 'demo2@gmail.com', 'Orthopaedics', 3, '500', '104', 'password', ''),
('105', '105', 'Dr. Demo3', 'lucknow', '9876543210', 'demo3@gmail.com', 'Nephrologist', 4, '500', '105', 'password', ''),
('106', '106', 'Dr.Demo4', 'lucknow', '9876543210', 'demo4@gmail.com', 'Cardiologist', 5, '500', '106', 'password', ''),
('107', '107', 'Dr. Demo 6', 'Lucknow', '9876543210', 'deemo6@gmail.com', 'Plastic Surgeon', 6, '500', '107', 'password', ''),
('108', '108', 'Dr demo8', 'lucknow', '9876543210', 'demo7@gmail.com', 'Neurologist', 7, '500', '108', 'password', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(22) NOT NULL,
  `feedback` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `feedback`) VALUES
(0, 'osamaxyz321@gmail.com', '1214');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcollege`
--

CREATE TABLE `medicalcollege` (
  `No.` int(22) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Acronym` varchar(30) NOT NULL,
  `Established` int(22) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicalcollege`
--

INSERT INTO `medicalcollege` (`No.`, `Name`, `Acronym`, `Established`, `Location`, `website`) VALUES
(1, 'All India Institute of Medical Sciences', 'AIIMS', 1956, 'NEW DELHI', 'aiims.edu'),
(2, 'King George Medical University', 'KGMU', 1905, 'LUCKNOW', 'kgmu.org');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `age` varchar(22) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `contact`, `address`, `email`, `password`) VALUES
('0', 'Prabhat Trivedi', '21', '6387342375', 'Sitapur U.p', 'prabhat@gmail.com', 'prabhat'),
('1', 'OSAMA ISLAM', '22', '9792596077', 'BELTHARA ROAD BALLIA', 'osamaxyz321@gmail.com', '123456'),
('2','Prateel Yadav', '23', '9876543210', 'Lucknow','prateek@gmail.com','12345');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `donar_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(22) NOT NULL,
  `city` varchar(221) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE `requestes` (
  `reg_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reqdate` date NOT NULL,
  `detail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `type`) VALUES
('', '', ''),
('admin', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicalcollege`
--
ALTER TABLE `medicalcollege`
  ADD PRIMARY KEY (`No.`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD KEY `No.` (`No.`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
