-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 10:37 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cng_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'keshav@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
`id` int(10) NOT NULL,
  `uid` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `cng_kg` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `uid`, `name`, `mobile`, `cng_kg`) VALUES
(1, 1, 'Tarun', '9284716866', '200'),
(2, 2, 'Jayesh ', '9999999999', '100'),
(11, 2, 'Tarun', '9284716866', '200');

-- --------------------------------------------------------

--
-- Table structure for table `cng_pump`
--

CREATE TABLE IF NOT EXISTS `cng_pump` (
`cng_id` int(10) NOT NULL,
  `pump_name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `taluka` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `mobileNo` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `open_time` varchar(20) NOT NULL,
  `close_time` varchar(20) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `cng_kg` varchar(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cng_pump`
--

INSERT INTO `cng_pump` (`cng_id`, `pump_name`, `address`, `city`, `taluka`, `district`, `mobileNo`, `password`, `open_time`, `close_time`, `latitude`, `longitude`, `cng_kg`, `status`) VALUES
(2, 'Shirpur Pump', 'Near Karvand Naka, Shirpur', 'Shirpur', 'Dhule', 'Dhule', '1234567890', '123456', '07:00', '12:00', '5.600.700', '5.650.900', '3000', 'Approved'),
(3, 'Jalgaon Pump', 'Ganesh Colony,Jalgaon', 'Jalgaon', 'Jalgaon', 'Jalgaon', '9923464915', '12345678', '06:00', '12:00', '00', '00', '3600', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`uid` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `email`, `mobile`, `password`, `city`) VALUES
(1, 'Tarun', 'Tarun@gmail.com', '9284716866', '123456', 'Dondaicha'),
(2, 'Vedant Gawande', 'Ved@gmail.com', '1234567890', '123456', 'Jalgaon'),
(3, 'Jayesh ', 'Jayesh@gmail.com', '9999999999', '123456', 'Pune'),
(4, 'Umakant Patil', 'uma@gmail.com', '8888888888', '123456', 'Shirpur');

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
-- Indexes for table `cng_pump`
--
ALTER TABLE `cng_pump`
 ADD PRIMARY KEY (`cng_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cng_pump`
--
ALTER TABLE `cng_pump`
MODIFY `cng_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
