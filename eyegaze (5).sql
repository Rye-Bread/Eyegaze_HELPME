-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 06:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

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
('Accuracy Issues', 'Are you having trouble hitting targets?', '<a href=\"topics.php?Title=Device Misalignment\" accesskey = \"y\"></a>\r\nIf you consistently struggle to hit buttons in a certain area of the screen, or have your tracker dot disappear while you are in focus and looking at the display, use the Yes option above.', '<a href=\"selfhelpresource.php?Title=Calibration Issue\" accesskey = \"n\"></a>\r\nIf your target accuracy is acceptable, or your issues with accuracy are negligible, use the No option above. ', 1, NULL, NULL),
('Calibration Issue', 'Are you having trouble getting calibrated? ', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\"></a>\r\nUse the Yes option if you cannot hit a calibration point, are asked to repeat a point several times, or have an accuracy score greater than 0.3. ', '<a href=\"selfhelpresource.php?Title=Camera Hardware\" accesskey = \"n\"></a>\r\nIf you can successfully calibrate using either a 5 point or 9 point calibration with an accuracy score of 0.3 or better, use the No option above.', 1, '', ''),
('Camera Hardware', 'Do you see your Eye Image in the top right corner during initial calibration?', '<a href=\"selfhelpresource.php?Title=Accuracy Issues\" accesskey = \"y\"></a>\r\nIf your camera is functioning properly and the user\'s eye or any other object positioned in front of the camera is visible, use the Yes option above. \r\nThe camera is considered functioning even if the eye is out of focus, washed out, or blurry. ', '<a href=\"selfhelpresource.php?Title=Eye Image\" accesskey = \"n\"></a>\r\nIf the eye image is solid gray or black, or if it consistently flashes on and off, use the No option above.', 1, NULL, NULL),
('Hardware Issue ', 'Experiencing errors or other issues with your eye tracking camera?', '<a href=\"selfhelpresource.php?Title=Calibration Issue\" accesskey = \"y\"></a>\r\nUse the Yes option above if you are having any issues concerning your eye image, accuracy, calibration, or camera connection.', '<a href=\"selfhelpresource.php?Title=Power Issue\" accesskey = \"n\"></a>\r\nIf your issue is unrelated to the eye tracking camera, use the No option above.', 1, NULL, NULL),
('Interactive Help  ', 'Are you having issues with your Eyegaze Edge hardware?', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" accesskey = \"y\"></a>\r\nUse the Yes option above if you are having issues with your Eyegaze Edge tablet, the eyetracking camera, or any peripherals such as the keyboard and external battery. This includes issues with the initial calibration and accuracy.', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" accesskey = \"n\"</a>\r\nIf you have a technical issue with any features of the Eyegaze application, Grid application, or any other supported software, use the No option above.', 1, NULL, NULL),
('Power Issue', 'Are you having issues with your Eyegaze Edge battery, charger, or external battery pack?', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"n\">No</a>', 1, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
