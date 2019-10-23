-- phpMyAdmin SQL Dump
-- version 4.1.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2019 at 09:29 PM
-- Server version: 5.1.62
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE IF NOT EXISTS `tblaccount` (
  `accnt_Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`accnt_Id`),
  KEY `user_Id` (`user_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tblaccount`
--

INSERT INTO `tblaccount` (`accnt_Id`, `username`, `password`, `user_Id`) VALUES
(10, 'devprecious', 'ola123', 15),
(11, 'kidafik', 'oladele12', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tblmsg`
--

CREATE TABLE IF NOT EXISTS `tblmsg` (
  `msg_Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `user_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`msg_Id`),
  KEY `user_Id` (`user_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tblmsg`
--

INSERT INTO `tblmsg` (`msg_Id`, `username`, `message`, `user_Id`) VALUES
(10, 'devprecious', 'hhh', 15),
(11, 'devprecious', 'hi', 15),
(12, 'kidafik', 'hi', 16),
(13, 'kidafik', 'How you?', 16),
(14, 'devprecious', 'Am gud n you?', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tblpost`
--

CREATE TABLE IF NOT EXISTS `tblpost` (
  `post_Id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `user_Id` int(12) DEFAULT NULL,
  PRIMARY KEY (`post_Id`),
  KEY `user_Id` (`user_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `tblpost`
--

INSERT INTO `tblpost` (`post_Id`, `message`, `user_Id`) VALUES
(30, 'How you?', 0),
(29, 'hi', 0),
(28, 'hi', 0),
(27, 'hhh', 0),
(26, 'hi', 15),
(25, 'sup', 15),
(24, 'hello', 15),
(23, 'hi', 15),
(22, 'hi', 15),
(31, 'Am gud n you?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `user_Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`user_Id`, `username`, `password`) VALUES
(15, 'devprecious', 'ola123'),
(16, 'kidafik', 'oladele12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
