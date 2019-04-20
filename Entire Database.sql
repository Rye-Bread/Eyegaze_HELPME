-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 06:08 AM
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
CREATE DATABASE IF NOT EXISTS `eyegaze` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eyegaze`;

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

INSERT INTO `drills` (`Title`, `Question`, `yesoption`, `nooption`, `Format`, `Additional Text`, `Additional Text 2`) VALUES
('Calibration Issue', 'Are you having trouble getting calibrated? ', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Eye Image\" accesskey = \"n\">No</a>', 1, '[YES OPTION - If you cannot hit a calibration point or are asked to repeat, use the Yes button above]', '[No OPTION - bla bla sample text sample text use the No button above]'),
('Eye Image', 'Do you see your Eye Image?', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"n\">No</a>', 1, NULL, NULL),
('EyeImage', 'Do you see your Eye Image?', 'Yes ', 'No', 1, NULL, NULL),
('Hardware Issue ', 'Is this a camera issue?', '<a href=\"selfhelpresource.php?Title=Calibration Issue\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Power Issue\" accesskey = \"n\">No</a>', 1, NULL, NULL),
('Interactive Help  ', 'Is it a Hardware Issue?', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" accesskey = \"n\">No</a>', 1, NULL, NULL),
('Power Issue', 'Is it a power issue?', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"n\">No</a>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `Title` varchar(255) NOT NULL COMMENT 'Title to display',
  `text` text NOT NULL COMMENT 'Main text describing the problem',
  `steps` text NOT NULL COMMENT 'Set of steps to fix that can come after one or more pictures',
  `format` int(11) DEFAULT NULL,
  `img1` varchar(255) NOT NULL COMMENT 'Mandatory picture or video. ',
  `img2` varchar(255) DEFAULT NULL COMMENT 'optional',
  `img3` varchar(255) DEFAULT NULL COMMENT 'optional'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table used for the topic.php page.';

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`Title`, `text`, `steps`, `format`, `img1`, `img2`, `img3`) VALUES
('9033 Error ', '<p>If you see a popup window with a 9033 error code when attempting to open the Eyegaze program, your Eyegaze Edge camera is not being recognized by the system. This usually occurs when there are connection issues between the camera and the USB hub or the USB hub and the tablet. In order to troubleshoot this error, you will need to check the all connections to find the source of the problem. Before you can begin, you will need to make sure that your volume is set loud enough for you to hear. The volume can be set by clicking the speaker icon on your taskbar in the bottom right corner of your screen and using the slider to adjust it. If you hear a chime while setting your volume, your speakers are working and you may continue. Please adhere to the following steps to fix this issue: </p>', '<ul>\r\n<li>Remove the cable located on the side of the tablet that goes to the USB hub, then plug it back in and listen for a chime. </li>\r\n\r\n<li>If you don<sup>\'</sup>t hear a chime, you may have a faulty USB hub cable and will need to call LCT support for a replacement.</li> \r\n\r\n\r\n<li>Remove the cable located on the back of your Eyegaze Edge camera, then plug it back in and listen for a chime.</li>\r\n<li>If you  don<sup>\'</sup>t hear a chime, you may have a faulty camera cable and will need to call LCT support for a replacement.\r\n</li>\r\n<li>In situations where you cannot reach LCT support for any reason, you may opt to connect the camera through another USB port temporarily. To do this: </li>\r\n\r\n\r\n<li>Unplug the cable on the back of the camera</li>\r\n<li>Press down on the tab located on the camera slide and pull down to remove the camera</li>\r\n\r\n<li>Plug the camera into any available port on the tablet or the USB hub, removing other cables or devices if necessary </li>\r\n\r\n<li>If you hear a chime, open the Eyegaze program to determine whether the camera is operating properly</li>\r\n<li>Set the camera as close to its original position as the cable will allow\r\nContact LCT support as soon as possible</li>\r\n\r\n</ul>', 1, 'img/9033 Error.png', NULL, NULL),
('Battery Life', 'You may notice the battery life of your system decreasing over time, which is a normal occurence with all lithium-ion batteries. In order to protect your battery and the longevity of your device, make sure your system is not exposed to extreme temperatures such leaving it inside a car on a hot day. You should also refrain from frequently discharging your battery until your system is forced to shut down. If you wish to use your system on the go for longer periods of time, please consider the Endurance Pack add-on for the Eyegaze Edge. This add-on includes an external battery that can provide many hours of extended use without needing to recharge. Please refer to the following YouTube video to fix a battery life issue: ', '<a href=\"https://youtu.be/_hSD3Qj5uCo\">Youtube Help Video</a>', 1, 'selfhelpmenu.png', NULL, NULL),
('Battery Not Charging', 'If your tablet turns off immediately after removing the power cable, you may have faulty hardware preventing the battery from charging. Before continuing, visually inspect the Eyegaze Edge device to ensure there isn<sup>\'</sup>t any bending or bowing of the casing, physical damage to the device, power cable, or power brick. If any damage is found, you will need to call LCT support for a repair or replacement. If the device is free of any physical damage, please adhere to the following steps to fix this issue: ', '<ul>\r\n<li>Check the battery icon located on the taskbar in the bottom right corner of your screen </li>\r\n<li>If the battery icon has a red X over it, you may have internal battery connection issues or a faulty battery. Please call LCT support for assistance. </li>\r\n<li>Check that the power outlet or power strip you are using to power your Eyegaze Edge is working by testing it with another electrical device </li> \r\n<li>Check that the connection between the power brick and power cables are secure by removing them and plugging them back in</li>\r\n<li>Check that the connection to the side of your Eyegaze Edge is secure while checking the battery icon for the charge indicator </li>\r\n<li>Remove the power cable on the side of your Eyegaze Edge and check the inside of the power port and cable for a bent or missing pin</li>\r\n<li>If your device cannot be charged after following the steps above, please contact LCT support for assistance.</li> \r\n</ul>', 1, 'selfhelpmenu.png', NULL, NULL),
('Camera Connectivity ', 'The user will encounter a popup window with a 9003 error code when attempting to open the Eyegaze program, your Eyegaze Edge camera is not being recognized by the system. This usually occurs when there are connection issues between the camera and the USB hub or the USB hub and the tablet. In order to troubleshoot this error, you will need to check the all connections to find the source of the problem. Before you can begin, you will need to make sure that your volume is set loud enough for you to hear. The volume can be set by clicking the speaker icon on your taskbar in the bottom right corner of your screen and using the slider to adjust it. If you hear a chime while setting your volume, your speakers are working and you may continue. To fix a camera connectivity issue, please adhere to the following steps:  ', '\r\n\r\n<li>Remove the cable located on the side of the tablet that goes to the USB hub, then plug it back in and listen for a chime. </li>\r\n\r\n<li>If you don<sup>\'</sup>t  hear a chime, you may have a faulty USB hub cable and will need to call LCT support for a replacement. Remove the cable located on the back of your Eyegaze Edge camera, then plug it back in and listen for a chime. </li>\r\n\r\n <li>If you don<sup>\'</sup>t  hear a chime, you may have a faulty camera cable and will need to call LCT support for a replacement. </li>\r\n\r\n<li>In situations where you cannot reach LCT support for any reason, you may opt to connect the camera through another USB port temporarily. To do this:  </li>\r\n\r\n<li>Unplug the cable on the back of the camera </li>\r\n\r\n<li>Press down on the tab located on the camera slide and pull down to remove the camera </li>\r\n\r\n <li>Plug the camera into any available port on the tablet or the USB hub, removing other cables or devices if necessary </li>\r\n\r\n<li>If you hear a chime, open the Eyegaze program to determine whether the camera is operating properly </li>\r\n\r\n<li>Set the camera as close to its original position as the cable will allow Contact LCT support as soon as possible </li>\r\n\r\n', 1, '', NULL, NULL),
('Device Misalignment', '<p>The Eyegaze system is designed to work for a particular sitting position. If you are not sitting correctly, or if your Edge device is pointed in the wrong direction, you may experience difficulty when trying to use the eye-tracking features of the device. Please adhere to the following steps to fix this issue:\r\n</p>', '<p>\r\nThe Eyegaze Edge screen must be positioned in front of the user in such a way that <br>\r\n a) The User can comfortably see the entire screen, and <br>\r\n b) The camera can clearly \"see\" one of the user\'s eyes. <br>  The user should be positioned between 16 - 31 inches from the screen, depending on his personal preference. The screen should always be parallel to the user\'s face with the top edge no higher than eye level.If the user is reclining, angle the top of the screen down so that the user is facing it. If the user is side-lying it is typically easiest to point the camera at the eye which is highest.\r\n</p>', 1, 'selfhelpmenu.png', NULL, NULL),
('Interface Issue', '<p> If the user does not pay proper attention to the reflections of light shining on the eye that is not coming from Eyegaze<sup>\'</sup>s  LED, it will cause issues with the interface.  For example, reflections coming from natural lighting that is coming through a window or from indoor lighting can cause these issues.  Ambient infrared light on the surface of the eye can impact the Edge<sup>\'</sup>s ability to predict eye fixations accurately if the reflection sits on top the page.  Also, having the infrared reflection on the pupil will cause issues with the interface as well.  </p>\r\n', '<p>Pay attention to reflections of light on the eye from sources other than the Eyegaze system<sup>\'</sup>s  LED\r\nAmbient infrared light on the surface of the eye can impact the Edge<sup>\'</sup>s  ability to predict eye fixations\r\naccurately if the reflection sits on top the pupil. (Ambient IR can be seen on the right eye images below,\r\nbut in this case it will not interfere because it is off to the side of the pupil). If an IR reflection is on the\r\npupil, change the User<sup>\'</sup>s  location in the room or eliminate the source of unwanted light by closing\r\nwindow shades, turning off the lamp, etc. The screen should also be positioned so light is not reflecting\r\noff of its surface, since screen reflections make it difficult for the user to see the screen displays. </p>', 1, '', NULL, NULL),
('Mounting Issue', 'There will be mounting issues for the device if the arm clamp is not attached to the Use<sup>\'</sup>s  table.  If the arm is not placed into the clamp, then the mounting will not be stable.  Not testing the stability of the arm and clamp will result in issues with the mounting. If the monitor is not able to be swung, then this is a mounting error.  The clamp will need to be remounted if this happens.  ', '<li>Attach the arm clamp to the table, following the instructions in the included table mount brochure.</li>\r\n\r\n<li>Slide the arm into the clamp. Test stability.</li>\r\n\r\n<li>Remount the clamp if necessary. If the monitor cannot be swung easily to a comfortable position for the user, the clamp should be remounted.</li>', 1, 'mount_arm_in_clamp.png', 'mount_arm.png', NULL),
('Sample Page', 'This is a problem you are experiencing. This problem usually happens when some stuff like this or that occurs and then you get your problem which is described here on this page.', 'These are the steps to fix this problem\r\n1) step one\r\n2) step two\r\n3) step 3', 1, 'selfhelpmenu.png', NULL, NULL),
('Takin Sample Page 2', 'This is a problem you are experiencing. This problem usually happens when some stuff like this or that occurs and then you get your problem which is described here on this page.', 'These are the steps to fix this problem\r\n1) step one\r\n2) step two\r\n3) step 3', 1, 'selfhelpmenu.png', NULL, NULL),
('Takin Test', 'Lorem ipsum dolor sit amet. Takin', '1\r\n2\r\n4\r\n5\r\n6\r\n7', 2, 'img/phoneicon.png', NULL, NULL),
('Test', 'Lorem ipsum dolor sit amet.', '1)Lorem<br>\r\n2)Ipsum<br>\r\n3)Dolor<br>\r\n4)Sit<br>\r\n5)Amet<br>', 2, 'selfhelpmenu.png', NULL, NULL),
('test 2', '', '', NULL, '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drills`
--
ALTER TABLE `drills`
  ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`Title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
