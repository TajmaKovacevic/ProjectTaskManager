-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2014 at 10:58 PM
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
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `estimate` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teamp` (`team_id`),
  KEY `fk_userp` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `estimate`, `description`, `team_id`, `manager_id`) VALUES
(1, 'proj1', 560, 'fdsfdsfdsafdsa', 1, 0),
(2, 'proj2', 560, 'fdsafadsfsda', 2, 1),
(3, 'proj3', 560, 'ipouuu88oij', 3, 2),
(4, 'proj4', 560, 'tzfdrtddtht', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `description`, `estimate`, `status`, `created`, `person_id`, `project_id`) VALUES
(1, 'task1', 'hdshafhdjskf', 5, 'dsfds', '2014-12-02', 0, 1),
(2, 'proj2', 'fsadfdsafasd', 6, 'dsfds', '2014-12-11', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`) VALUES
(1, 'team1'),
(2, 'team2'),
(3, 'team3'),
(4, 'team4');

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
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL DEFAULT '0',
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `lastname`, `contact`, `address`, `id`, `gender`) VALUES
('tajma', 'tajma', NULL, NULL, NULL, NULL, 0, NULL),
('melika', 'melika', NULL, NULL, NULL, NULL, 1, NULL),
('nadina', 'nadina', NULL, NULL, NULL, NULL, 2, NULL),
('aa', 'aa', 'aa', 'aa', 'aa', 'aa', 3, 'female'),
('bb', 'bb', 'bb', 'bb', 'bb', 'bb', 4, 'male'),
('cc', 'cc', 'cc', 'cc', 'cc', 'cc', 5, 'male'),
('dd', 'dd', 'dd', 'dd', 'dd', 'dd', 7, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `userpermission`
--

CREATE TABLE IF NOT EXISTS `userpermission` (
  `ID` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Permission_id` int(11) DEFAULT NULL,
  KEY `fk_userid` (`User_id`),
  KEY `fk_perid` (`Permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userpermission`
--

INSERT INTO `userpermission` (`ID`, `User_id`, `Permission_id`) VALUES
(1, 0, 1),
(2, 1, 2),
(3, 2, 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `fk_teamp` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `fk_userp` FOREIGN KEY (`manager_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `fk_pers` FOREIGN KEY (`person_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk_proj` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- Constraints for table `team_member`
--
ALTER TABLE `team_member`
  ADD CONSTRAINT `fk_teams` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `fk_tmid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `userpermission`
--
ALTER TABLE `userpermission`
  ADD CONSTRAINT `fk_perid` FOREIGN KEY (`Permission_id`) REFERENCES `permission` (`id`),
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
