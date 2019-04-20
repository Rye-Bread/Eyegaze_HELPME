-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 05:28 PM
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

--
-- Dumping data for table `drills`
--

REPLACE INTO `drills` (`Title`, `Question`, `yesoption`, `nooption`, `Format`, `Additional Text`, `Additional Text 2`) VALUES
('Calibration Issue', 'Are you having trouble getting calibrated? ', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\">Yes</a>\r\n<br>\r\nUse the Yes Option if you cannto hit a calibration Point ', '<a href=\"selfhelpresource.php?Title=Eye Image\" accesskey = \"n\">No</a>\r\n<br>\r\n[No OPTION - bla bla sample text sample text use the No button above]', 1, '[YES OPTION - If you cannot hit a calibration point or are asked to repeat, use the Yes button above]', '[No OPTION - bla bla sample text sample text use the No button above]'),
('Eye Image', 'Do you see your Eye Image?', '<a href=\"selfhelpresource.php?Title=Hitting Target\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Hitting Target\" accesskey = \"n\">No</a>', 1, NULL, NULL),
('EyeImage', 'Do you see your Eye Image?', 'Yes ', 'No', 1, NULL, NULL),
('Hardware Issue ', 'Is this a camera issue?', '<a href=\"selfhelpresource.php?Title=Calibration Issue\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Power Issue\" accesskey = \"n\">No</a>', 1, NULL, NULL),
('Hitting Target', 'Having trouble hitting targets?', '<a href=\"topics.php?Title=Device Misalignment\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Calibration Issue\" accesskey = \"n\">No</a>', 1, NULL, NULL),
('Interactive Help  ', 'Is it a Hardware Issue?', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" accesskey = \"n\">No</a>', 1, NULL, NULL),
('Power Issue', 'Is it a power issue?', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"n\">No</a>', 1, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;