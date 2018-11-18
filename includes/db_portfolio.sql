-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2018 at 06:52 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

DROP TABLE IF EXISTS `tbl_images`;
CREATE TABLE IF NOT EXISTS `tbl_images` (
  `images_id` int(11) NOT NULL AUTO_INCREMENT,
  `images_path` varchar(250) NOT NULL,
  `images_name` varchar(150) NOT NULL,
  PRIMARY KEY (`images_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`images_id`, `images_path`, `images_name`) VALUES
(1, 'logo.svg', 'logo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proj`
--

DROP TABLE IF EXISTS `tbl_proj`;
CREATE TABLE IF NOT EXISTS `tbl_proj` (
  `proj_id` int(11) NOT NULL AUTO_INCREMENT,
  `proj_name` varchar(150) NOT NULL,
  `proj_position` varchar(150) NOT NULL,
  `proj_brief` text NOT NULL,
  `proj_role` text NOT NULL,
  `proj_thumb` varchar(250) NOT NULL,
  PRIMARY KEY (`proj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
