-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2016 at 11:53 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `housekeeping`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `email` varchar(50) NOT NULL,
  `good` int(50) NOT NULL,
  `avg` int(50) NOT NULL,
  `bad` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `pic` mediumblob NOT NULL,
  `lastlogin` varchar(200) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `password`, `mobile`, `sex`, `dob`, `role`, `pic`, `lastlogin`) VALUES
('aayushi', 'agrawalaayushi.03@gmail.com', 'aaa', '9039557841', 'Female', '03/31/1994', 'Customer', '', ''),
('Shubbham Sharma', 'bsss.3332@yahoo.com', '1234', '7795690205', 'Male', '25/11/19', 'Customer', '', ''),
('goldjain', 'jainvinay001@gmail.com', '1234', '7795657357', 'Male', '01/05/1994', 'Customer', '', ''),
('Mayur', 'mayurmudgal@yahoo.com', '1234', '9826577770', 'Male', '10/12/1995', 'Customer', '', ''),
('Krishna Sinha', 'mr.krishnasinha1605@gmail.com', '123456789', '987456321', 'Female', '08/02/2016', 'Customer', '', ''),
('Sushil Ranjan', 'nikuraj006@gmail.com', '1234', '9097012783', 'Male', '1993-12-10', 'Customer', '', ''),
('Pankti', 'pankti@gmail.com', 'pankti', '9991111199', 'Female', '04/23/19', 'Customer', '', ''),
('sahitya gupta', 'sahitya75rtu@gmail.com', '1234', '7275478187', 'Male', '08/04/2016', 'Customer', '', ''),
('shivam', 'shivammishra5883@gmail.com', '1234', '123654987', 'Male', '08/10/2016', 'Customer', '', ''),
('suresh', 'skd.pkm@gmail.com', '123', '1234567', 'Male', '08/03/2016', 'Customer', '', ''),
('sumit', 'sumit5grg5@gmail.com', '9041616141', '9041616141', 'Male', '14/11/1993', 'Customer', '', ''),
('sushil Ranjan', 'sushilranjan006@gmail.com', '1995', '9009627323', 'Male', '10/12/1993', 'Customer', '', ''),
('Shreya Pardhan', 'sweetshreya16.sp@gmail.com', 'shreya', '5678923411', 'Female', '08/16/2016', 'Customer', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `servants`
--

CREATE TABLE IF NOT EXISTS `servants` (
  `name` varchar(60) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `state` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL,
  `lastlogin` varchar(200) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servants`
--

INSERT INTO `servants` (`name`, `mobile`, `address`, `city`, `pin`, `state`, `category`, `email`, `password`, `sex`, `dob`, `role`, `lastlogin`) VALUES
('Known', '987654321', 'NITK, surathkal, 8th block hostel, Room No. 205, Hostel No. 8, Room No. 205', 'Indore', '123456', 'KARNATAKA', 'Cooks', 'abc@gmail.com', '1234', 'Female', '1254-12-11', 'Job Finder', ''),
('anil', '8269567147', 'nitk', 'mangalore', '575025', 'karnataka', 'Cooks', 'argalarvind1994@gmail.com', '1234', 'Male', '1994-10-23', 'Job Finder', ''),
('Mayur', '9826577770', 'NITK BOYS HOSTEL,8TH BLOCK FLR,SURATHKAL', 'MANGALORE', '575025', 'KARNATAKA', 'Driver', 'mayurmudgal@yahoo.com', 'water', 'Male', '1995-10-18', 'Job Finder', ''),
('Sushil Ranjan', '9009627323', '207 8th Block', 'Surathkal', '575025', 'Karnatka', 'Gardener', 'nikuraj006@gmail.com', '1234', 'Male', '1993-12-10', 'Job Finder', ''),
('Prakash', '8147951132', 'NITK, surathkal, 8th block hostel, Room No. 205, Hostel No. 8, Room No. 205', 'MANGALORE', '123456', 'KARNATAKA', 'Maids', 'prakashagrawal602@gmail.com', '1234', 'Male', '2010-11-11', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
