-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2020 at 03:20 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12996472_schoolmanager000`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdminLogin`
--

CREATE TABLE `AdminLogin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AdminLogin`
--

INSERT INTO `AdminLogin` (`id`, `name`, `password`) VALUES
(1, 'A', '1'),
(2, 'Admin 2', '22');

-- --------------------------------------------------------

--
-- Table structure for table `Admin_Notes`
--

CREATE TABLE `Admin_Notes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `textt` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Admin_Notes`
--

INSERT INTO `Admin_Notes` (`id`, `title`, `type`, `target`, `textt`) VALUES
(10, 'Welcome', 'Note', 'Note', 'Helloo world. Welcome to my school!! '),
(11, 'Lama', 'Note', 'Note', 'Hello! '),
(12, '12345', 'Note', 'Note', '0123456789'),
(13, 'Test ', 'assignment', 'assignment', 'Radibutton test'),
(14, 'Ttttttttttt[ttttttt', 'note', 'note', 'Gggggggggggg'),
(15, 'Ttttttttttt[ttttttt', 'note', 'note', 'Gggggggggggg'),
(16, 'Lama', 'assignment', 'assignment', 'You have to solve attached q'),
(17, 'Welcome', 'Note', 'Note', 'Helloo world. Welcome to my school!! '),
(18, 'Bahaa', 'assignment', 'assignment', 'Hello world'),
(19, 'Test', 'assignment', 'assignment', 'new pdf '),
(20, 'Test', 'assignment', 'assignment', 'new pdf '),
(21, '11', 'Leaving Request', 'Leaving Request', 'Ggg');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `std_1` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `std_2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `std_3` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `std_4` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `std_5` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `std_6` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `std_7` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `std_8` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `teacher`, `date`, `std_1`, `std_2`, `std_3`, `std_4`, `std_5`, `std_6`, `std_7`, `std_8`) VALUES
(1, 'T', '17-03-2020', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off'),
(2, 'T', '17-03-2020', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(3, 'T', '17-03-2020', 'off', 'on', 'off', 'on', 'off', 'on', 'off', 'on'),
(4, 'T', '17-03-2020', 'on', 'on', 'off', 'off', 'off', 'off', 'on', 'on'),
(5, 'T', '17-03-2020', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off'),
(6, 'T', '17-03-2020', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off'),
(62, 'T', '17-03-2020', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off'),
(63, 'T', '17-03-2020', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off'),
(64, 'T', '17-03-2020', 'on', 'on', 'on', 'off', 'off', 'off', 'off', 'off'),
(65, 'T', '17-03-2020', 'on', 'on', 'on', 'on', 'on', 'off', 'on', 'on'),
(66, 'T', '17-03-2020', 'on', 'on', 'on', 'on', 'on', 'off', 'on', 'on'),
(67, 'T', '17-03-2020', 'on', 'off', 'on', 'off', 'on', 'off', 'on', 'off'),
(68, 'T', '17-03-2020', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off'),
(69, 'T', '17-03-2020', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off'),
(70, 'T', '17-03-2020', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off'),
(71, 'T', '18-03-2020', 'on', 'on', 'on', 'off', 'off', 'off', 'on', 'on'),
(72, 'T', '18-03-2020', 'on', 'on', 'on', 'off', 'on', 'off', 'on', 'on'),
(73, 'T', '18-03-2020', 'on', 'on', 'on', 'off', 'on', 'off', 'on', 'on'),
(74, 'T', '18-03-2020', 'on', 'on', 'on', 'off', 'on', 'off', 'on', 'on'),
(75, 'T', '18-03-2020', 'on', 'on', 'on', 'off', 'on', 'off', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `class_1`
--

CREATE TABLE `class_1` (
  `id` int(11) NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `1_1` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `1_2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `1_3` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_1`
--

INSERT INTO `class_1` (`id`, `teacher`, `date`, `1_1`, `1_2`, `1_3`) VALUES
(1, 'tomas', '07-Mar-2020', 'on', 'on', 'on'),
(2, 'T', '18-03-2020', 'on', 'on', 'on'),
(3, 'T', '18-03-2020', 'off', 'on', 'on'),
(4, 'T', '20-03-2020', 'on', 'on', 'on'),
(5, 'T', '21-03-2020', 'on', 'on', 'on'),
(6, 'T', '21-03-2020', 'on', 'on', 'on'),
(7, 'T', '21-03-2020', 'on', 'on', 'off'),
(8, 'T', '21-03-2020', 'on', 'on', 'off'),
(9, 'T', '21-03-2020', 'on', 'on', 'off'),
(10, 'T', '16-06-2020', 'on', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `class_2`
--

CREATE TABLE `class_2` (
  `id` int(11) NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `2_1` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `2_2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `2_3` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_2`
--

INSERT INTO `class_2` (`id`, `teacher`, `date`, `2_1`, `2_2`, `2_3`) VALUES
(1, 'tomas', '07-Mar-2020', 'on', 'on', 'on'),
(2, 'T', '18-03-2020', 'off', 'off', 'off'),
(3, 'T', '20-03-2020', 'on', 'on', 'on'),
(4, 'T', '20-03-2020', 'off', 'off', 'off'),
(5, 'T', '20-03-2020', 'off', 'off', 'off'),
(6, 'T', '20-03-2020', 'off', 'off', 'off'),
(7, 'T', '20-03-2020', 'off', 'off', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `class_3`
--

CREATE TABLE `class_3` (
  `id` int(11) NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `3_1` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `3_2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `3_3` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_3`
--

INSERT INTO `class_3` (`id`, `teacher`, `date`, `3_1`, `3_2`, `3_3`) VALUES
(1, 'tomas', '07-Mar-2020', 'on', 'on', 'on'),
(2, 'T', '18-03-2020', 'off', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `class_4`
--

CREATE TABLE `class_4` (
  `id` int(11) NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `4_1` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `4_2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `4_3` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_4`
--

INSERT INTO `class_4` (`id`, `teacher`, `date`, `4_1`, `4_2`, `4_3`) VALUES
(1, 'tomas', '07-Mar-2020', 'on', 'on', 'on'),
(2, 'T', '18-03-2020', 'on', 'off', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `class_5`
--

CREATE TABLE `class_5` (
  `id` int(11) NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `5_1` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `5_2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `5_3` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_5`
--

INSERT INTO `class_5` (`id`, `teacher`, `date`, `5_1`, `5_2`, `5_3`) VALUES
(1, 'tomas', '07-Mar-2020', 'on', 'on', 'on'),
(2, 'T', '18-03-2020', 'on', 'off', 'on'),
(3, 'T', '21-03-2020', 'off', 'off', 'off'),
(4, 'T', '21-04-2020', 'on', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `class_fee`
--

CREATE TABLE `class_fee` (
  `id` int(11) NOT NULL,
  `room` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_fee`
--

INSERT INTO `class_fee` (`id`, `room`, `amount`) VALUES
(1, 'class_1', '500'),
(2, 'class_2', '600');

-- --------------------------------------------------------

--
-- Table structure for table `inbox_admin`
--

CREATE TABLE `inbox_admin` (
  `id` int(11) NOT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `textt` text COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `req_state` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inbox_admin`
--

INSERT INTO `inbox_admin` (`id`, `title`, `type`, `target`, `textt`, `state`, `req_state`, `url`, `date`) VALUES
(24, '3', 'Leaving Request', 'std_3', '111111', '1', '0', '', '09-Mar-2020'),
(25, '3', 'Leaving Request', 'std_3', '22222222', '1', '0', '', '09-Mar-2020'),
(26, '3', 'Leaving Request', 'std_3', '7777777', '1', '0', '', '09-Mar-2020'),
(27, '1', 'Leaving Request', 'std_1', 'Test suraj', '1', '0', '', '09-Mar-2020'),
(28, '3', 'Leaving Request', 'std_3', 'Hello', '1', '0', '', '09-Mar-2020'),
(29, '1111111', 'Note', 'All Students', '111111111222222222222', '1', '0', '', '09-Mar-2020'),
(30, '1111111111', 'Assignment', 'All Parents', '111111221111', '1', '0', '', '09-Mar-2020'),
(31, 'Hellow', 'Note', 'All Parents', 'Hello world', '1', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/Hello.pdf', '09-Mar-2020'),
(32, '3', 'Leaving Request', 'std_3', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '1', '0', '', '09-Mar-2020'),
(33, 'Date test', 'Note', 'All Parents', 'Date test', '1', '0', '', '10-Mar-2020'),
(34, '88888888', 'Note', 'All Students', '88888888888', '1', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/untitled', '10-Mar-2020'),
(35, '1111111111111111', 'Note', 'All Students', '11111111111111111111111', '1', '0', '', '10-Mar-2020 07:19:22'),
(36, 'Bbbbb', 'Note', 'All Students', 'Bbbbbbnnnnn', '1', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/untitled', '10-Mar-2020 08:04:43'),
(37, '1', 'Leaving Request', 'std_1', 'Ssssdddd', '1', '0', '', '10-Mar-2020'),
(38, 'IiiiiiiiiiiiiI', 'Note', 'All Parents', 'IiiiiiiiiiiiiI', '1', '0', '', '10-Mar 08:29'),
(39, '1', 'Leaving Request', 'std_1', 'Fever from last night', '1', '0', '', '10-Mar-2020'),
(40, 'Holiday', 'Note', 'All Students', 'Tomorrow Holiday ', '1', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/.pdf', '10-Mar-2020'),
(41, '1', 'Leaving Request', 'std_1', 'trst', '1', '0', '', '11-Mar 14:24'),
(42, 'لggggg', 'Note', 'All Students', 'Ghbbhh', '1', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/untitled', '11-Mar 19:58'),
(43, '8', 'Leaving Request', 'std_8', 'www.google.com', '1', '0', '', '14-Mar 00:04'),
(44, '1', 'Leaving Request', 'std_1', 'i need holiday', '0', '0', '', '14-Mar 16:35'),
(45, '1', 'Leaving Request', 'std_1', 'Test', '1', '0', '', '15-Mar 19:12'),
(46, '0', '0', '0', '0', '1', '0', '0', '0'),
(47, 'id', 'Leaving Request', 'name', 'Ttt', '1', '0', '', '17-Mar 12:31'),
(48, 'id', 'Leaving Request', 'name', 'Test', '1', '0', '', '17-Mar 12:46'),
(49, 'id', 'Leaving Request', 'name', '6567756', '0', '0', '', '17-Mar 21:41'),
(50, '  وزز', 'Note', 'All Students', 'دتن', '0', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/.pdf', '17-Mar 22:34'),
(51, '  وزز', 'Note', 'All Students', 'دتن', '0', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/.pdf', '17-Mar 22:34'),
(52, 'maths', 'Note', 'All Students', 'complete today', '1', '0', '', '19-Mar 14:55'),
(53, 'Parents', 'Note', 'All Parents', 'Parents only', '1', '0', '', '19-Mar 13:32'),
(54, 'New Note', 'Assignment', 'All Students', 'Chexking Share optio ', '1', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/Share .pdf', '19-Mar 17:18'),
(55, 'Test', 'Note', 'All Students', 'ppppppppppppppppppp', '1', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/ppppp.pdf', '20-Mar 02:08'),
(56, 'Jfjgjtkg', 'Note', 'All Students', 'Gfdhh\nS h fkkgfd\nFfbfgkgidjd\nDydjglnlhifjcjgnc hdhfjgkg hdjfjfj\nJfjfjgkhlb\nHdhfjfm', '0', '0', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/hdfh   .pdf', '20-Mar 02:42'),
(57, 'New host', 'Note', 'All Students', 'New host', '1', '0', 'https://schoolmanager000.000webhostapp.com/AndroidPdfUpload/uploads/New.pdf', '21-Mar 19:17'),
(58, 'New', 'Note', 'All Students', 'New', '0', '0', 'https://schoolmanager000.000webhostapp.com/AndroidPdfUpload/uploads/New.pdf', '28-Mar 10:06'),
(59, '111', 'Note', 'All Students', '111', '0', '0', 'https://schoolmanager000.000webhostapp.com/AndroidPdfUpload/uploads/111.pdf', '28-Mar 10:07'),
(60, 'wishes', 'Note', 'All Students', 'hi', '0', '0', '', '19-Apr 09:07'),
(61, 'Testing', 'Note', 'All Students', 'hello students ', '0', '0', '', '16-Jun 19:25'),
(62, '1', 'Leaving Request', 'Nikola1', 'fever', '1', '0', '', '16-Jun 19:27');

-- --------------------------------------------------------

--
-- Table structure for table `inbox_parent_student`
--

CREATE TABLE `inbox_parent_student` (
  `id` int(11) NOT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `textt` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inbox_parent_student`
--

INSERT INTO `inbox_parent_student` (`id`, `title`, `type`, `target`, `textt`, `url`, `date`) VALUES
(51, 'Test', 'Note', 'All Students', 'Test', '', ''),
(52, 'Ttt', 'Note', 'All Students', 'Ffg', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/Fff.pdf', ''),
(53, '0000000000', 'Assignment', 'All Parents', '00000000000', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/0000.pdf', ''),
(54, '1111111111', 'Assignment', 'All Parents', '111111221111', '', ''),
(55, '1111111', 'Note', 'All Students', '111111111222222222222', '', ''),
(56, 'Hellow', 'Note', 'All Parents', 'Hello world', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/Hello.pdf', ''),
(57, 'Date test', 'Note', 'All Parents', 'Date test', '', '10-Mar-2020'),
(58, '88888888', 'Note', 'All Students', '88888888888', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/untitled', '10-Mar-2020'),
(59, '1111111111111111', 'Note', 'All Students', '11111111111111111111111', '', '10-Mar-2020 07:19:22'),
(60, 'Bbbbb', 'Note', 'All Students', 'Bbbbbbnnnnn', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/untitled', '10-Mar-2020 08:04:43'),
(61, 'IiiiiiiiiiiiiI', 'Note', 'All Parents', 'IiiiiiiiiiiiiI', '', '10-Mar 08:29'),
(62, 'Holiday', 'Note', 'All Students', 'Tomorrow Holiday ', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/.pdf', '10-Mar-2020'),
(63, 'لggggg', 'Note', 'All Students', 'Ghbbhh', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/untitled', '11-Mar 19:58'),
(65, 'Parents', 'Note', 'All Parents', 'Parents only', '', '19-Mar 13:32'),
(66, 'New Note', 'Assignment', 'All Students', 'Chexking Share optio ', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/Share .pdf', '19-Mar 17:18'),
(67, 'Test', 'Note', 'All Students', 'ppppppppppppppppppp', 'https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/uploads/ppppp.pdf', '20-Mar 02:08'),
(68, 'New host', 'Note', 'All Students', 'New host', 'https://schoolmanager000.000webhostapp.com/AndroidPdfUpload/uploads/New.pdf', '21-Mar 19:17'),
(69, 'maths', 'Note', 'All Students', 'complete today', '', '19-Mar 14:55');

-- --------------------------------------------------------

--
-- Table structure for table `inbox_teacher`
--

CREATE TABLE `inbox_teacher` (
  `id` int(11) NOT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `textt` text COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `req_state` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inbox_teacher`
--

INSERT INTO `inbox_teacher` (`id`, `title`, `type`, `target`, `textt`, `state`, `req_state`, `url`, `date`) VALUES
(33, '3', 'Leaving Request', 'std_3', '111111', '0', '1', '', '09-Mar-2020'),
(34, '3', 'Leaving Request', 'std_3', '22222222', '0', '1', '', '09-Mar-2020'),
(35, '3', 'Leaving Request', 'std_3', '7777777', '0', '1', '', '09-Mar-2020'),
(36, '1', 'Leaving Request', 'std_1', 'Test suraj', '0', '1', '', '09-Mar-2020'),
(37, '3', 'Leaving Request', 'std_3', 'Hello', '0', '1', '', '09-Mar-2020'),
(38, '3', 'Leaving Request', 'std_3', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '0', '1', '', '09-Mar-2020'),
(39, '1', 'Leaving Request', 'std_1', 'Ssssdddd', '0', '1', '', '10-Mar-2020'),
(40, '1', 'Leaving Request', 'std_1', 'Fever from last night', '0', '1', '', '10-Mar-2020'),
(41, '1', 'Leaving Request', 'std_1', 'trst', '0', '1', '', '11-Mar 14:24'),
(42, '1', 'Leaving Request', 'std_1', 'Test', '0', '1', '', '15-Mar 19:12'),
(43, 'id', 'Leaving Request', 'name', 'Test', '0', '1', '', '17-Mar 12:46'),
(44, 'id', 'Leaving Request', 'name', 'Ttt', '0', '1', '', '17-Mar 12:31'),
(45, '8', 'Leaving Request', 'std_8', 'www.google.com', '0', '1', '', '14-Mar 00:04'),
(46, '1', 'Leaving Request', 'Nikola1', 'fever', '0', '0', '', '16-Jun 19:27');

-- --------------------------------------------------------

--
-- Table structure for table `leaving_request`
--

CREATE TABLE `leaving_request` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `request_txt` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newNotes`
--

CREATE TABLE `newNotes` (
  `id` int(11) NOT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `textt` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noteTable`
--

CREATE TABLE `noteTable` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ParentLogin`
--

CREATE TABLE `ParentLogin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ParentLogin`
--

INSERT INTO `ParentLogin` (`id`, `name`, `password`) VALUES
(1, 'name', '1'),
(2, 'name', '2'),
(3, 'name', '1'),
(4, 'name', '1'),
(5, 'name', '1'),
(6, 'name', '1'),
(7, 'name', '1'),
(8, 'name', '1'),
(9, 'name', '1'),
(10, 'fuck', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `student_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `student_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `student_room` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `student_id`, `student_name`, `student_room`) VALUES
(2, '1', 'Nikola1', 'class_1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `sl` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `price` varchar(20) NOT NULL,
  `category` varchar(5000) NOT NULL,
  `subcategory` varchar(500) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_class_1_infos`
--

CREATE TABLE `student_class_1_infos` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `count_on` int(11) NOT NULL,
  `count_off` int(11) NOT NULL,
  `parent` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `parPass` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tableName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `req_state` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_class_1_infos`
--

INSERT INTO `student_class_1_infos` (`id`, `name`, `password`, `count_on`, `count_off`, `parent`, `parPass`, `lastName`, `teacher`, `tableName`, `req_state`) VALUES
(1, 'Nikola1', '1234', 0, 0, 'Nikola', 'p11', '', '', '1_1', '0'),
(2, 'tomas1', '1', 0, 0, 'tomas', 'p12', '', '', '1_2', '0'),
(3, 'Jemmy1', 's13', 0, 0, 'Jemmy', 'p13', '', '', '1_3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_2_infos`
--

CREATE TABLE `student_class_2_infos` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `count_on` int(11) NOT NULL,
  `count_off` int(11) NOT NULL,
  `parent` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `parPass` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tableName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `req_state` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_class_2_infos`
--

INSERT INTO `student_class_2_infos` (`id`, `name`, `password`, `count_on`, `count_off`, `parent`, `parPass`, `lastName`, `teacher`, `tableName`, `req_state`) VALUES
(1, 'Nikola2', '11', 0, 0, 'Nikola', '21', '', '', '2_1', '0'),
(2, 'tomas2', '1', 0, 0, 'tomas', 'p22', '', '', '2_2', '0'),
(3, 'Jemmy2', 's23', 0, 0, 'Jemmy', 'p23', '', '', '2_3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_3_infos`
--

CREATE TABLE `student_class_3_infos` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `count_on` int(11) NOT NULL,
  `count_off` int(11) NOT NULL,
  `parent` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `parPass` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tableName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `req_state` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_class_3_infos`
--

INSERT INTO `student_class_3_infos` (`id`, `name`, `password`, `count_on`, `count_off`, `parent`, `parPass`, `lastName`, `teacher`, `tableName`, `req_state`) VALUES
(1, 'Nikola3', '11', 0, 0, 'Nikola', 'p31', '', '', '3_1', '0'),
(2, 'tomas3', '1', 0, 0, 'tomas', 'p32', '', '', '3_2', '0'),
(3, 'Jemmy3', 's33', 0, 0, 'Jemmy', 'p33', '', '', '3_3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_4_infos`
--

CREATE TABLE `student_class_4_infos` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `count_on` int(11) NOT NULL,
  `count_off` int(11) NOT NULL,
  `parent` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `parPass` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tableName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `req_state` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_class_4_infos`
--

INSERT INTO `student_class_4_infos` (`id`, `name`, `password`, `count_on`, `count_off`, `parent`, `parPass`, `lastName`, `teacher`, `tableName`, `req_state`) VALUES
(1, 'Nikola4', '11', 0, 0, 'Nikola', 'p41', '', '', '4_1', '0'),
(2, 'tomas4', '1', 0, 0, 'tomas', 'p42', '', '', '4_2', '0'),
(3, 'Jemmy4', 's43', 0, 0, 'Jemmy', 'p43', '', '', '4_3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_5_infos`
--

CREATE TABLE `student_class_5_infos` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `count_on` int(11) NOT NULL,
  `count_off` int(11) NOT NULL,
  `parent` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `parPass` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tableName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `req_state` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_class_5_infos`
--

INSERT INTO `student_class_5_infos` (`id`, `name`, `password`, `count_on`, `count_off`, `parent`, `parPass`, `lastName`, `teacher`, `tableName`, `req_state`) VALUES
(1, 'Nikola5', '11', 0, 0, 'Nikola', 'p51', '', '', '5_1', '0'),
(2, 'tomas5', '1', 0, 0, 'tomas', 'p52', '', '', '5_2', '0'),
(3, 'Jemmy5', 's53', 0, 0, 'Jemmy', 'p53', '', '', '5_3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_infos`
--

CREATE TABLE `student_infos` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `count_on` int(11) NOT NULL,
  `count_off` int(11) NOT NULL,
  `parent` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `parPass` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tableName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `req_state` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_infos`
--

INSERT INTO `student_infos` (`id`, `name`, `password`, `count_on`, `count_off`, `parent`, `parPass`, `lastName`, `teacher`, `tableName`, `req_state`) VALUES
(1, 'std_1', '1', 17, 11, 'Nikola', '1', 'Tesla', 'T', 'std_1Tesla', '0'),
(2, 'std_2', '11111', 15, 12, 'tomas', '123', '', '', '', '1'),
(3, 'std_3', '12345', 15, 12, 'Jemmy', '000', '', '', '', '1'),
(4, 'std_4', 'Www', 15, 12, '', '1', '', '', '', '1'),
(5, 'std_5', '12345', 13, 13, '', '', '', '', '', '1'),
(7, 'std_7', '12345', 14, 12, '', '', '', '', '', '1'),
(8, 'std_8', '11111', 16, 10, '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `TeacherLogin`
--

CREATE TABLE `TeacherLogin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TeacherLogin`
--

INSERT INTO `TeacherLogin` (`id`, `name`, `password`) VALUES
(1, 'T', '1'),
(2, 'teacher', '11111'),
(3, 'tomas', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdminLogin`
--
ALTER TABLE `AdminLogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Admin_Notes`
--
ALTER TABLE `Admin_Notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_1`
--
ALTER TABLE `class_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_2`
--
ALTER TABLE `class_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_3`
--
ALTER TABLE `class_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_4`
--
ALTER TABLE `class_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_5`
--
ALTER TABLE `class_5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_fee`
--
ALTER TABLE `class_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox_admin`
--
ALTER TABLE `inbox_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox_parent_student`
--
ALTER TABLE `inbox_parent_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox_teacher`
--
ALTER TABLE `inbox_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaving_request`
--
ALTER TABLE `leaving_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newNotes`
--
ALTER TABLE `newNotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noteTable`
--
ALTER TABLE `noteTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ParentLogin`
--
ALTER TABLE `ParentLogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `student_class_1_infos`
--
ALTER TABLE `student_class_1_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_2_infos`
--
ALTER TABLE `student_class_2_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_3_infos`
--
ALTER TABLE `student_class_3_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_4_infos`
--
ALTER TABLE `student_class_4_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_5_infos`
--
ALTER TABLE `student_class_5_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_infos`
--
ALTER TABLE `student_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TeacherLogin`
--
ALTER TABLE `TeacherLogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdminLogin`
--
ALTER TABLE `AdminLogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Admin_Notes`
--
ALTER TABLE `Admin_Notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `class_1`
--
ALTER TABLE `class_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `class_2`
--
ALTER TABLE `class_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class_3`
--
ALTER TABLE `class_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_4`
--
ALTER TABLE `class_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_5`
--
ALTER TABLE `class_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_fee`
--
ALTER TABLE `class_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inbox_admin`
--
ALTER TABLE `inbox_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `inbox_parent_student`
--
ALTER TABLE `inbox_parent_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `inbox_teacher`
--
ALTER TABLE `inbox_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `leaving_request`
--
ALTER TABLE `leaving_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newNotes`
--
ALTER TABLE `newNotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noteTable`
--
ALTER TABLE `noteTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ParentLogin`
--
ALTER TABLE `ParentLogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_class_1_infos`
--
ALTER TABLE `student_class_1_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_class_2_infos`
--
ALTER TABLE `student_class_2_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_class_3_infos`
--
ALTER TABLE `student_class_3_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_class_4_infos`
--
ALTER TABLE `student_class_4_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_class_5_infos`
--
ALTER TABLE `student_class_5_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_infos`
--
ALTER TABLE `student_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `TeacherLogin`
--
ALTER TABLE `TeacherLogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
