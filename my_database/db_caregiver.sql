-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 12:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_caregiver`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alarm`
--

CREATE TABLE `tbl_alarm` (
  `alid` int(11) NOT NULL,
  `alarm_time` time NOT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_alarm`
--

INSERT INTO `tbl_alarm` (`alid`, `alarm_time`, `flag`) VALUES
(1, '10:10:00', 0),
(2, '11:20:00', 0),
(3, '12:45:00', 1),
(4, '17:06:00', 1),
(5, '14:09:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_first_aid`
--

CREATE TABLE `tbl_first_aid` (
  `faid` int(5) NOT NULL,
  `name` varchar(500) NOT NULL,
  `instruction` varchar(1000) NOT NULL,
  `caution` varchar(1000) NOT NULL,
  `photo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital`
--

CREATE TABLE `tbl_hospital` (
  `hid` int(11) NOT NULL,
  `hospital_name` varchar(1000) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` varchar(700) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hospital`
--

INSERT INTO `tbl_hospital` (`hid`, `hospital_name`, `phone`, `address`, `latitude`, `longitude`) VALUES
(1, 'A Hospital', '0922222', 'Yangon', 19.760512, 96.197896),
(2, 'C Hospital', '0933333', 'Yangon', 19.7784211, 96.2420094),
(3, 'B Hospital', '0955555', 'Yangon', 19.7558272, 96.1984966),
(4, 'D Hospital', '0932451', 'Yangon', 19.7705485, 96.2154546),
(5, 'E Hospital', '0977777', 'Npw', 19.748658, 96.2175146);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `username`, `contact`, `password`) VALUES
(1, 'admin', '09458050968', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_alarm`
--
ALTER TABLE `tbl_alarm`
  ADD PRIMARY KEY (`alid`);

--
-- Indexes for table `tbl_first_aid`
--
ALTER TABLE `tbl_first_aid`
  ADD PRIMARY KEY (`faid`);

--
-- Indexes for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_alarm`
--
ALTER TABLE `tbl_alarm`
  MODIFY `alid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_first_aid`
--
ALTER TABLE `tbl_first_aid`
  MODIFY `faid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
