-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 02:34 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eyegaze`
--

-- --------------------------------------------------------

--
-- Table structure for table `drills`
--

CREATE TABLE `drills` (
  `Title` varchar(255) NOT NULL DEFAULT 'Sample Title',
  `Question` text NOT NULL,
  `yesoption` varchar(255) NOT NULL,
  `nooption` varchar(255) NOT NULL,
  `Format` int(11) NOT NULL DEFAULT '1',
  `Additional Text` varchar(255) DEFAULT NULL,
  `Additional Text 2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drills`
--

REPLACE INTO `drills` (`Title`, `Question`, `yesoption`, `nooption`, `Format`, `Additional Text`, `Additional Text 2`) VALUES
('CalibrationIssue', 'Are you having trouble getting calibrated? ', '<a href=\"selfhelpresource.php?Title=Interactive Help\" access key = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Interactive Help\" access key = \"n\">No</a>', 1, NULL, NULL),
('EyeImage', 'Do you see your Eye Image?', 'Yes ', 'No', 1, NULL, NULL),
('Hardware Issue ', 'Is this a camera issue?', '<a href=\"selfhelpresource.php?Title=CalibrationIssue\" access key = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Power Issue\" access key = \"n\">No</a>', 1, NULL, NULL),
('Interactive Help  ', 'Is it a Hardware Issue', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" access key = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" access key = \"n\">No</a>', 1, NULL, NULL),
('Power Issue', 'Is it a power issue?', '<a href=\"selfhelpresource.php?Title=Interactice Issue\" access key = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Interactive Issue\" access key = \"n\">No</a>', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drills`
--
ALTER TABLE `drills`
  ADD PRIMARY KEY (`Title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
