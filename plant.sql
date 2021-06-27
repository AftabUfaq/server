-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 11:13 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plant`
--

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `sendername` text NOT NULL,
  `recievername` text NOT NULL,
  `senderaccountno` text NOT NULL,
  `recieveraccountno` text NOT NULL,
  `recieverid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `sendername`, `recievername`, `senderaccountno`, `recieveraccountno`, `recieverid`) VALUES
(1, 4555, 'testing', 'Test', '339177822123', '3234561245', 109),
(2, 50000, 'Musatfa', 'Hamid', '1234567890122', '1234567890123', 109),
(3, 50000, 'basit', 'Tufail', '1234567890122', '1234567890123', 109),
(4, 50000, 'Kamla', 'Imran', '1234567890122', '1234567890123', 109),
(5, 50000, 'umar', 'Adil', '1234567890122', '1234567890123', 109),
(6, 50000, 'Ashfaq', 'Ali', '1234567890122', '1234567890123', 109),
(7, 50000, 'sabahat', 'Aftab', '1234567890122', '1234567890123', 109),
(8, 50000, 'nida', 'Abid', '1234567890122', '1234567890123', 109),
(9, 50000, 'urooj', 'kainaat', '1234567890122', '1234567890123', 109),
(10, 50000, 'Fatima', 'Sidra', '1234567890122', '1234567890123', 109),
(11, 50000, 'Fawad', 'Hina', '1234567890122', '1234567890123', 109),
(12, 50000, 'Ali', 'Zubair', '1234567890122', '1234567890123', 109);

-- --------------------------------------------------------

--
-- Table structure for table `pdffiles`
--

CREATE TABLE `pdffiles` (
  `id` int(11) NOT NULL,
  `fileuri` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pdffiles`
--

INSERT INTO `pdffiles` (`id`, `fileuri`, `userid`) VALUES
(2, 'http://192.168.18.90:3000/pdffiles/file_1623693926306.pdf', 0),
(3, 'http://192.168.18.90:3000/pdffiles/file_1623693926306.pdf', 0),
(4, 'http://192.168.18.90:3000/pdffiles/file_1623693926306.pdf', 0),
(5, 'http://192.168.18.90:3000/pdffiles/file_1623693926306.pdf', 0),
(6, 'http://192.168.18.90:3000/pdffiles/file_1623693926306.pdf', 0),
(7, 'http://192.168.18.90:3000/pdffiles/file_1623694043046.pdf', 0),
(8, 'http://192.168.18.90:3000/pdffiles/file_1623694043046.pdf', 0),
(9, 'http://192.168.18.90:3000/pdffiles/file_1623694043046.pdf', 110),
(10, 'http://192.168.18.90:3000/pdffiles/file_1623694043046.pdf', 110);

-- --------------------------------------------------------

--
-- Table structure for table `scancode`
--

CREATE TABLE `scancode` (
  `id` int(11) NOT NULL,
  `type` longtext NOT NULL,
  `data` longtext NOT NULL,
  `area` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scancode`
--

INSERT INTO `scancode` (`id`, `type`, `data`, `area`, `userid`, `status`) VALUES
(1, 'af', 'asdf', 'asf', 91, 1),
(2, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(3, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(4, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(5, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(6, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(7, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(8, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(9, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(10, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(11, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(12, '256', 'exp://192.168.18.49:19000', 'rawalpindi', 76, 0),
(13, '256', 'exp://192.168.18.90:19000', 'rawalpindi', 76, 0);

-- --------------------------------------------------------

--
-- Table structure for table `soilhealthlabreport`
--

CREATE TABLE `soilhealthlabreport` (
  `id` int(11) NOT NULL,
  `sampleDate` text NOT NULL,
  `sampleCollected` text NOT NULL,
  `ec` text NOT NULL,
  `ph` text NOT NULL,
  `userid` int(11) NOT NULL,
  `uri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soilhealthlabreport`
--

INSERT INTO `soilhealthlabreport` (`id`, `sampleDate`, `sampleCollected`, `ec`, `ph`, `userid`, `uri`) VALUES
(5, 'ggggg', 'gffx', 'vv', 'gvv', 110, 'http://192.168.18.90:3000/pdffiles/file_1624212630623.pdf'),
(6, 'ggggg', 'gffx', 'vv', 'gvv', 110, 'http://192.168.18.90:3000/pdffiles/file_1624212630623.pdf'),
(7, 'ggggg', 'gffx', 'vv', 'gvv', 110, 'http://192.168.18.90:3000/pdffiles/file_1624212630623.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `mobilenumber` text NOT NULL,
  `area` varchar(80) NOT NULL,
  `role` varchar(20) NOT NULL,
  `cnic` text NOT NULL,
  `address` varchar(120) NOT NULL,
  `accountnumber` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `mobilenumber`, `area`, `role`, `cnic`, `address`, `accountnumber`, `image`) VALUES
(29, 'Ali', 'Khan', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '923419806106', 'rawalpindi', 'admin', '1620275381647', 'bahria town Phase 7', '1234567890122', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.png'),
(30, 'Mustafa', 'Kamal', 'agronomist', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'agronomist', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(76, 'Jibran', 'Khalil', 'grower1', '3ac340832f29c11538fbe2d6f75e8bcc', '923408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(77, 'Faisal', 'Khawaj', 'vindor4', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vendor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(78, 'Zohaib', 'Shah', 'vindor5', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vendor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(79, 'habib', 'ul nabi', 'vindor6', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(80, 'Imran', 'Khan', 'vindor7', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vendor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(81, 'Kamran', 'BANGAISH', 'vindor8', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(83, 'Niha', 'Kumar', 'vindor10', '21232f297a57a5a743894a0e4a801fc3', '923408906107', 'rawalpindi update', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(84, 'Yousra', 'masood', 'vindor11', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(85, 'Umar', 'Ali', 'vindor12', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(86, 'Adil', 'shahid', 'vindor13', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(87, 'Hairs', 'Khan', 'vindor14', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(88, 'Shakeel', 'Abbasi', 'vindor15', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(89, 'Sadiq', 'Ali', 'vindor16', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(91, 'HIna', 'Mehmood', 'vindor18', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(92, 'Urooj', 'Batool', 'vindor19', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'vindor', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(94, 'Teeba ', 'Sayed', 'admin222', '14e1b600b1fd579f47433b88e8d85291', '923419806107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(97, 'Usman', 'Ghazi', 'grower2', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(98, 'Fazi', 'Han', 'grower3', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(99, 'Menoo', 'khan', 'grower4', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(100, 'Irsaad', 'Bhatti', 'grower5', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(101, 'Asif', 'Ali', 'grower6', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(102, 'dali ', 'Dammer', 'grower7', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(103, 'Dundar', 'Bey', 'grower8', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(104, 'Sulamin', 'Shah', 'grower9', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(105, 'Halima', 'Sultan', 'grower`4', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(106, 'turgut', 'Sllar', 'grower15', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(107, 'bamsi', 'bey', 'grower16', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(108, 'Etrugral', 'Ghazi', 'grower17', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(109, 'Akbar', 'Khan', 'grower', 'e10adc3949ba59abbe56e057f20f883e', '03408906107', 'rawalpindi', 'grower', '1620275381647', 'bahria town Phase 7', '123456789', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg'),
(110, 'aftab', 'ufaq', 'soilhealthlab', 'e10adc3949ba59abbe56e057f20f883e', '923408906107', 'rawalpindi', 'soilhealthlab', '1620275381647', 'bahria town Phase 8', '1234567890123', 'https://i.pinimg.com/474x/2a/60/3f/2a603ffdb8e85a06b3e9b05f9b219d04.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdffiles`
--
ALTER TABLE `pdffiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scancode`
--
ALTER TABLE `scancode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `soilhealthlabreport`
--
ALTER TABLE `soilhealthlabreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pdffiles`
--
ALTER TABLE `pdffiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `scancode`
--
ALTER TABLE `scancode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `soilhealthlabreport`
--
ALTER TABLE `soilhealthlabreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scancode`
--
ALTER TABLE `scancode`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
