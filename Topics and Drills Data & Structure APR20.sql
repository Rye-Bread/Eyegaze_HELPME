-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 06:42 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

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
  `yesoption` varchar(600) NOT NULL,
  `nooption` varchar(600) NOT NULL,
  `Format` int(11) NOT NULL DEFAULT '1',
  `Additional Text` varchar(255) DEFAULT NULL,
  `Additional Text 2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drills`
--

INSERT INTO `drills` (`Title`, `Question`, `yesoption`, `nooption`, `Format`, `Additional Text`, `Additional Text 2`) VALUES
('Accuracy Issues', 'Are you having trouble hitting targets?', '<a href=\"topics.php?Title=Device Misalignment\" accesskey = \"y\"></a>\r\nIf you consistently struggle to hit buttons in a certain area of the screen, or have your tracker dot disappear while you are in focus and looking at the display, use the Yes option above.', '<a href=\"selfhelpresource.php?Title=Calibration Issue\" accesskey = \"n\"></a>\r\nIf your target accuracy is acceptable, or your issues with accuracy are negligible, use the No option above. ', 1, NULL, NULL),
('Calibration Issue', 'Are you having trouble getting calibrated? ', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\"></a>\r\n<br>\r\nUse the Yes option if you cannot hit a calibration point, are asked to repeat a point several times, or have an accuracy score greater than 0.3. ', '<a href=\"selfhelpresource.php?Title=Camera Hardware\" accesskey = \"n\"></a>\r\n<br>\r\nIf you can successfully calibrate using either a 5 point or 9 point calibration with an accuracy score of 0.3 or better, use the No option above.', 1, '', ''),
('Camera Hardware', 'Do you see your Eye Image in the top right corner during initial calibration?', '<a href=\"selfhelpresource.php?Title=Accuracy Issues\" accesskey = \"y\"></a><br>\r\nIf your camera is functioning properly and the user\'s eye or any other object positioned in front of the camera is visible, use the Yes option above. \r\nThe camera is considered functioning even if the eye is out of focus, washed out, or blurry. ', '<a href=\"selfhelpresource.php?Title=Eye Image\" accesskey = \"n\"></a>\r\n<br>\r\nIf the eye image is solid gray or black, or if it consistently flashes on and off, use the No option above.', 1, NULL, NULL),
('Hardware Issue ', 'Experiencing errors or other issues with your eye tracking camera?', '<a href=\"selfhelpresource.php?Title=Calibration Issue\" accesskey = \"y\"></a>\r\nUse the Yes option above if you are having any issues concerning your eye image, accuracy, calibration, or camera connection.', '<a href=\"selfhelpresource.php?Title=Power Issue\" accesskey = \"n\"></a>\r\nIf your issue is unrelated to the eye tracking camera, use the No option above.', 1, NULL, NULL),
('Interactive Help  ', 'Are you having issues with your Eyegaze Edge hardware?', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" accesskey = \"y\"></a>\r\nUse the Yes option above if you are having issues with your Eyegaze Edge tablet, the eyetracking camera, or any peripherals such as the keyboard and external battery. This includes issues with the initial calibration and accuracy.', '<a href=\"selfhelpresource.php?Title=Hardware Issue\" accesskey = \"n\"</a>\r\nIf you have a technical issue with any features of the Eyegaze application, Grid application, or any other supported software, use the No option above.', 1, NULL, NULL),
('Power Issue', 'Are you having issues with your Eyegaze Edge battery, charger, or external battery pack?', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"y\">Yes</a>', '<a href=\"selfhelpresource.php?Title=Interactive Help\" accesskey = \"n\">No</a>', 1, NULL, NULL);

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
('Camera Connectivity ', 'The user will encounter a popup window with a 9003 error code when attempting to open the Eyegaze program, your Eyegaze Edge camera is not being recognized by the system. This usually occurs when there are connection issues between the camera and the USB hub or the USB hub and the tablet. In order to troubleshoot this error, you will need to check the all connections to find the source of the problem. Before you can begin, you will need to make sure that your volume is set loud enough for you to hear. The volume can be set by clicking the speaker icon on your taskbar in the bottom right corner of your screen and using the slider to adjust it. If you hear a chime while setting your volume, your speakers are working and you may continue. To fix a camera connectivity issue, please adhere to the following steps:  ', '\r\n\r\n<li>Remove the cable located on the side of the tablet that goes to the USB hub, then plug it back in and listen for a chime. </li>\r\n\r\n<li>If you don<sup>\'</sup>t  hear a chime, you may have a faulty USB hub cable and will need to call LCT support for a replacement. Remove the cable located on the back of your Eyegaze Edge camera, then plug it back in and listen for a chime. </li>\r\n\r\n <li>If you don<sup>\'</sup>t  hear a chime, you may have a faulty camera cable and will need to call LCT support for a replacement. </li>\r\n\r\n<li>In situations where you cannot reach LCT support for any reason, you may opt to connect the camera through another USB port temporarily. To do this:  </li>\r\n\r\n<li>Unplug the cable on the back of the camera </li>\r\n\r\n<li>Press down on the tab located on the camera slide and pull down to remove the camera </li>\r\n\r\n <li>Plug the camera into any available port on the tablet or the USB hub, removing other cables or devices if necessary </li>\r\n\r\n<li>If you hear a chime, open the Eyegaze program to determine whether the camera is operating properly </li>\r\n\r\n<li>Set the camera as close to its original position as the cable will allow Contact LCT support as soon as possible </li>\r\n\r\n', 1, 'selfhelpmenu.png', NULL, NULL),
('Center Eye and Focus Camera', 'The display of the full camera image provides information about whether the subject<sup>\'</sup>s eye is within the camera<sup>\'</sup>s field of view and is used to position the user for calibration. Until the eye is clearly visible in the image, there will be no magnified image of the eye on the left. The camera angle and the focus range must be adjusted so a clear image of the user<sup>\'</sup>s eye appears. To center the eye and focus the camera, the focus range indicator and the camera must be adjusted. Please adhere to the following instructions to focus the range indicator and adjust the camera:', '<h4>Focus Range Indicator</h4>\r\n<p>\r\nWhen the magnified eye display shows the user\'s eye, the eye is being tracked. You will see a bright tracking indicator dot in the center of the pupil and a dark tracking indicator dot in the center of the glint spot (corneal reflection). Look for these tracking indicators during the process of positioning the user. The user is in good position when the image of the eye is centered and in clear focus, and the tracking indicator dots are present.\r\n\r\nA focus indicator is displayed between the two eye images. The focus indicator is a dot that moves up or down showing whether the subject is too close or too far from the camera. If the focus indicator is centered on the reference tick mark, the eye is in perfect focus. If the focus indicator reaches either end of the scale, the eye is approximately 0.75 inch (2 cm) out of focus. As an additional indicator, the video images of the eye turn red or green if the eye moves significantly out of focus. Green indicates that the subject should move (go) forward to restore good focus, and red indicates that he should move backward (retreat).\r\n</p>\r\n<br>\r\n<h4>Adjust the Camera</h4>\r\n\r\n<p>\r\nPosition the Eyegaze screen a comfortable distance from the user, typically around 20-26 inches away from the screen, with the top of the screen at eye level or lower. Adjust the camera angle to point the camera toward the user<sup>\'</sup>s eye. Use the full camera image (image to the right) to help locate the eye as you adjust the camera<sup>\'</sup>s focus and angle. Adjust the camera focus by rotating the focus ring until the image is clear. It may be necessary to re-adjust the camera angle in order to get a clear image of the eye. Note: It is usually easier for the user to move his eyes around the screen when it is not too close. \r\n</p>\r\n<div id=hidelink>\r\n<a href=\"topics.php?Title=Interference%20Issues\" accesskey=\"l\">topics</a>\r\n</div>\r\n', 1, 'focus range.png', NULL, NULL),
('Device Misalignment', '<p>The Eyegaze system is designed to work for a particular sitting position. If you are not sitting correctly, or if your Edge device is pointed in the wrong direction, you may experience difficulty when trying to use the eye-tracking features of the device. Please adhere to the following steps to fix this issue:\r\n</p>', '<p>\r\nThe Eyegaze Edge screen must be positioned in front of the user in such a way that <br>\r\n a) The User can comfortably see the entire screen, and <br>\r\n b) The camera can clearly \"see\" one of the user\'s eyes. <br>  The user should be positioned between 16 - 31 inches from the screen, depending on his personal preference. The screen should always be parallel to the user\'s face with the top edge no higher than eye level.If the user is reclining, angle the top of the screen down so that the user is facing it. If the user is side-lying it is typically easiest to point the camera at the eye which is highest.\r\n</p>\r\n\r\n<div id=hidelink>\r\n<a href=\"topics.php?Title=Center%20Eye%20and%20Focus%20Camera\" accesskey=\"l\">topics</a>\r\n</div>\r\n', 1, 'img/positioning.png', NULL, NULL),
('Interference Issues', '<p> Some measures may need to be taken to reduce the amount of ambient infrared light in the user\'s environment due to the interference issues caused by light waves in this spectrum. For example, reflections from natural lighting that is coming through a window or from fluorescent lighting can cause these issues. Ambient infrared light on the surface of the eye can impact the Edge<sup>\'</sup>s ability to predict eye fixations accurately when looking at certain portions of the display. </p>\r\n', '<p>Pay attention to reflections of light on the eye from sources other than the Eyegaze system<sup>\'</sup>s  LED\r\nAmbient IR can be seen on the right eye images below, but in this case it will not interfere because it is off to the side of the pupil. If an IR reflection is on the pupil, change the User<sup>\'</sup>s  location in the room or eliminate the source of unwanted light by closing window shades, turning off the lamp, etc. The screen should also be positioned so light is not reflecting off of its surface, since screen reflections make it difficult for the user to see the screen displays. </p>\r\n<p> Note - in optimal environmental conditions, the only bright spots in a camera image should be the user\'s cornea and the glint spot produced by the reflection of the camera LED. These conditions can be observed in the image below.</p>\r\n<div id=hidelink>\r\n<a href=\"contact.php\" accesskey=\"l\">topics</a>\r\n</div>', 1, 'img/interference.jpg', NULL, NULL),
('Mounting Issue', 'There will be mounting issues for the device if the arm clamp is not attached to the Use<sup>\'</sup>s  table.  If the arm is not placed into the clamp, then the mounting will not be stable.  Not testing the stability of the arm and clamp will result in issues with the mounting. If the monitor is not able to be swung, then this is a mounting error.  The clamp will need to be remounted if this happens.  ', '<li>Attach the arm clamp to the table, following the instructions in the included table mount brochure.</li>\r\n\r\n<li>Slide the arm into the clamp. Test stability.</li>\r\n\r\n<li>Remount the clamp if necessary. If the monitor cannot be swung easily to a comfortable position for the user, the clamp should be remounted.</li>', 1, 'img/mount_arm_in_clamp.png', 'img/mount_arm.png', NULL),
('Sample Page', 'This is a problem you are experiencing. This problem usually happens when some stuff like this or that occurs and then you get your problem which is described here on this page.', 'These are the steps to fix this problem\r\n1) step one\r\n2) step two\r\n3) step 3', 1, 'selfhelpmenu.png', NULL, NULL),
('Test', 'Lorem ipsum dolor sit amet.', '1)Lorem<br>\r\n2)Ipsum<br>\r\n3)Dolor<br>\r\n4)Sit<br>\r\n5)Amet<br>', 2, 'selfhelpmenu.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drills`
--
ALTER TABLE `drills`
  ADD UNIQUE KEY `Title` (`Title`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`Title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
