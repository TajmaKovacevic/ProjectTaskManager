-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2014 at 12:20 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ptmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL DEFAULT '0',
  `permission` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `permission`) VALUES
(1, 'View administration'),
(2, 'View teams and project'),
(3, 'View assigned tasks');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `estimate` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teamp` (`team_id`),
  KEY `fk_userp` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `estimate` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pers` (`person_id`),
  KEY `fk_proj` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `team_lider` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `team_lider`) VALUES
(1, 'team1', 0),
(2, 'team2', 0),
(3, 'team3', 0),
(4, 'team4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE IF NOT EXISTS `team_member` (
  `user_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  KEY `fk_tmid` (`user_id`),
  KEY `fk_teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`user_id`, `team_id`) VALUES
(0, 1),
(1, 1),
(2, 2),
(3, 2),
(4, 1),
(5, 4),
(7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `lastname`, `contact`, `gender`) VALUES
(1, 'tajma', 'tajma', 'tajma', 'kovacevic', 'tajma@tajma', 'female'),
(2, 'melika', 'melika', 'melika', 'kiselica', 'melika@melika', 'female'),
(3, 'nadina', 'nadina', 'nadina', 'kunalic', 'nadina@nadina', 'female'),
(4, 'tt', 'tt', 'tt', 'tt', 'tajma.kovacevic@yahoo.com', 'Male'),
(5, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'rr', 'rr', 'rr', 'rr', 'tajma.kovacevic@yahoo.com', 'Male'),
(7, 'tt', 'yy', 'yy', 'yy', 'tajma.kovacevic@yahoo.com', 'Male'),
(8, '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userpermission`
--

CREATE TABLE IF NOT EXISTS `userpermission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_userid` (`User_id`),
  KEY `fk_perid` (`Permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `userpermission`
--

INSERT INTO `userpermission` (`ID`, `User_id`, `Permission_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
