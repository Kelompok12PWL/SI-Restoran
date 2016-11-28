-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2016 at 04:12 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restorant`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_categories`
--

CREATE TABLE IF NOT EXISTS `tb_categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `resto_id` int(11) DEFAULT NULL,
  `category_name` varchar(150) DEFAULT NULL,
  `category_desc` varchar(250) DEFAULT NULL,
  `category_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_content`
--

CREATE TABLE IF NOT EXISTS `tb_content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL,
  `content_life` varchar(150) DEFAULT NULL,
  `content_desc` varchar(250) DEFAULT NULL,
  `content_img` varchar(100) DEFAULT NULL,
  `content_var1` varchar(45) DEFAULT NULL,
  `content_var2` varchar(45) DEFAULT NULL,
  `content_var3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_feedback`
--

CREATE TABLE IF NOT EXISTS `tb_feedback` (
  `feedback_id` int(11) NOT NULL,
  `resto_id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `comment` text NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_resto`
--

CREATE TABLE IF NOT EXISTS `tb_resto` (
  `resto_id` int(11) NOT NULL AUTO_INCREMENT,
  `resto_name` varchar(150) DEFAULT NULL,
  `resto_desc` text,
  `resto_address` varchar(250) DEFAULT NULL,
  `resto_lat` double DEFAULT NULL,
  `resto_ion` double DEFAULT NULL,
  `resto_email` varchar(150) DEFAULT NULL,
  `resto_password` varchar(50) DEFAULT NULL,
  `resto_fb` varchar(150) DEFAULT NULL,
  `resto_twitter` varchar(150) DEFAULT NULL,
  `resto_instagram` varchar(150) DEFAULT NULL,
  `resto_path` varchar(150) DEFAULT NULL,
  `resto_logo` varchar(150) DEFAULT NULL,
  `resto_status` int(11) DEFAULT NULL,
  `resto_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`resto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
