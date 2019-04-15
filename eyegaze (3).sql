-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2019 at 09:03 PM
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
-- Dumping data for table `topics`
--

REPLACE INTO `topics` (`Title`, `text`, `steps`, `format`, `img1`, `img2`, `img3`) VALUES
('Device Misalignment', '<p>The Eyegaze system is designed to work for a particular sitting position. If you are not sitting correctly, or if your Edge device is pointed in the wrong direction, you may experience difficulty when trying to use the eye-tracking features of the device. Please adhere to the following steps to fix this issue:\r\n</p>', '<p>\r\nThe Eyegaze Edge screen must be positioned in front of the user in such a way that <br>\r\n a) he can comfortably see the entire screen, and <br>\r\n b) the camera can clearly \"see\" one of his eyes. <br>  He should be positioned between 16 - 31 inches from the screen, depending on his personal preference. The screen should always be parallel to his face with the top edge no higher than eye level.If the user is reclining, angle the top of the screen down so he is facing it. If he is side-lying it is typically easiest to point the camera at the eye which is highest.\r\n</p>', 1, 'selfhelpmenu.png', NULL, NULL),
('Sample Page', 'This is a problem you are experiencing. This problem usually happens when some stuff like this or that occurs and then you get your problem which is described here on this page.', 'These are the steps to fix this problem\r\n1) step one\r\n2) step two\r\n3) step 3', 1, 'selfhelpmenu.png', NULL, NULL),
('Takin Sample Page 2', 'This is a problem you are experiencing. This problem usually happens when some stuff like this or that occurs and then you get your problem which is described here on this page.', 'These are the steps to fix this problem\r\n1) step one\r\n2) step two\r\n3) step 3', 1, 'selfhelpmenu.png', NULL, NULL),
('Takin Test', 'Lorem ipsum dolor sit amet. Takin', '1\r\n2\r\n4\r\n5\r\n6\r\n7', 2, 'img/phoneicon.png', NULL, NULL),
('Test', 'Lorem ipsum dolor sit amet.', '1)Lorem<br>\r\n2)Ipsum<br>\r\n3)Dolor<br>\r\n4)Sit<br>\r\n5)Amet<br>', 2, 'selfhelpmenu.png', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;