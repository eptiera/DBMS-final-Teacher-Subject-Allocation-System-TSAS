CREATE DATABASE tsasdb;
USE tsasdb;


-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 10:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Epti Ara Era', 'era', 5689784592, 'era@gmail.com', '9833e0da6134cc93724fe100bda44463', '2024-04-19 11:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `ID` int(10) NOT NULL,
  `BranchName` varchar(200) DEFAULT NULL,
  `CourseName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`ID`, `BranchName`, `CourseName`, `CreationDate`) VALUES
(10, 'BCSE', 'Bachelor of Computer Science and Engineering', '2023-01-23 17:18:30'),
(11, 'BBA', 'Bvaeuirott', '2024-04-25 04:27:55'),
(12, 'BSCE', 'Bachelor of Science in Civil Engineering', '2024-02-25 17:18:52'),
(13, 'BSME', 'Bachelor of Science in Mechanical Engineering', '2024-01-12 17:19:04'),
(14, 'BATHM', 'Bachelor of Arts in Tourism and Hospitality Management', '2024-04-23 17:19:18'),
(15, 'BSN', 'Bachelor of Nursing', '2024-01-13 17:19:29'),
(16, 'BA Eng', 'Bachelor of Arts in English', '2024-04-13 17:20:38'),
(17, 'BSAg', 'Bachelor of Science in Agriculture', '2024-01-25 17:21:01'),
(18, 'BAEcon', 'Bachelor of Arts in Economics', '2024-03-27 17:21:43'),
(19, 'BSEEE', 'Bachelor of Electrical and Electronics Engineering', '2024-01-29 17:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblsuballocation`
--

CREATE TABLE `tblsuballocation` (
  `ID` int(5) NOT NULL,
  `CourseID` int(5) DEFAULT NULL,
  `Teacherempid` varchar(100) DEFAULT NULL,
  `Subid` int(5) DEFAULT NULL,
  `AllocationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsuballocation`
--

INSERT INTO `tblsuballocation` (`ID`, `CourseID`, `Teacherempid`, `Subid`, `AllocationDate`) VALUES
(6, 10, '54545', 11, '2024-04-19 13:44:28'),
(7, 11, '23849', 12, '2024-04-23 17:51:36'),
(8, 12, '67896', 13, '2024-04-23 17:51:49'),
(9, 13, '38576', 14, '2024-04-23 17:52:03'),
(10, 14, '376596', 15, '2024-04-23 17:52:15'),
(11, 15, '28495', 16, '2024-04-23 17:52:31'),
(12, 16, '23456', 17, '2024-04-23 17:52:41'),
(13, 17, '37586', 18, '2024-04-23 17:52:54'),
(14, 18, '465869', 19, '2024-04-23 17:53:04'),
(15, 19, '45689', 20, '2024-04-23 17:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `ID` int(5) NOT NULL,
  `CourseID` int(5) DEFAULT NULL,
  `SubjectFullname` varchar(200) DEFAULT NULL,
  `SubjectShortname` varchar(200) DEFAULT NULL,
  `SubjectCode` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`ID`, `CourseID`, `SubjectFullname`, `SubjectShortname`, `SubjectCode`, `CreationDate`) VALUES
(11, 10, 'Database_Management_System', 'DBMS', 'CSC-433', '2024-04-23 20:00:19'),
(12, 11, 'Business Communication ', 'BUS', 'BUS-201', '2024-04-23 17:22:52'),
(13, 12, 'Civil Engineering Drawing', 'CEN', 'CEN-160', '2024-04-23 17:23:12'),
(14, 13, 'Production Processes Practice', 'MEC', 'MEC-236', '2024-04-23 17:23:35'),
(15, 14, 'The Travel and tourism Industry', 'TTI', 'TTI-192', '2024-04-23 17:25:12'),
(16, 15, 'Fundamental of Nutrition', 'NUR', 'NUR-101', '2024-04-23 17:26:18'),
(17, 16, 'Public Speaking', 'ENG', 'ENG-250', '2024-04-23 17:26:50'),
(18, 17, 'Soil Science', 'AGS', 'AGS-301', '2024-04-23 17:28:14'),
(19, 18, 'Principles of Microeconomics', 'ECO', 'EC0-201', '2024-04-23 17:29:26'),
(20, 19, 'Fundamental of Electronics and Engineering', 'EEN', 'EEN-183', '2024-04-23 17:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `EmpID` varchar(50) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `Dob` varchar(200) DEFAULT NULL,
  `CourseID` int(5) DEFAULT NULL,
  `Religion` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `EmpID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Gender`, `Dob`, `CourseID`, `Religion`, `Address`, `Password`, `ProfilePic`, `JoiningDate`) VALUES
(5, '54545', 'Jebunnesa ', 'Sara', 199999999, 'Sara@iubat.edu', 'Female', '1994-04-30', 10, 'Islam', 'Uttara', NULL, '68d5535b971d558f594f10a5affd0a711713893536jpeg', '2024-04-23 18:20:59'),
(6, '23849', 'Dr-K sharms', 'Chisty', 182937495, 'chisty@gmail.com', 'Male', '1988-01-21', 11, 'Islam', 'Mirpur', NULL, 'e19bf4ad0b8e314e251f651d782432fb1713893656.jpg', '2024-04-23 17:55:10'),
(7, '67896', 'Dr-T-', 'Rasul', 123678889, 'rasul@gmail.com', 'Male', '1992_01_13', 12, 'Islam', 'Ghulsan', NULL, '52cc5bcfc7d0c19a55a11a17410ee2b51713893801.jpg', '2024-04-23 18:19:55'),
(8, '38576', 'Nayem', 'Hossain', 189384959, 'nayem@gmail.com', 'Male', '1984-04-17', 13, 'Islam', 'Mohammadpur', NULL, '283ee44f44c533382450661ce53f85cb1713893900.jpg', '2024-04-23 18:20:15'),
(9, '376596', 'Imran', 'Hossain', 17389495, 'imran@gmail.com', 'Male', '1996-04-16', 14, 'Islam', 'Gazipur', NULL, 'b5bb2a869af592f7b10fe30462a00c0e1713894037.jpg', '2024-04-23 18:20:30'),
(10, '28495', 'Priyanka', 'Das', 182749566, 'priyanka@gmail.com', 'Female', '1988-04-16', 15, 'Hindu', 'Mirpur', NULL, 'df3aea1d330eb2e71f9bdcf27fdf303e1713894166.jpg', '2024-04-23 18:20:46'),
(11, '23456', 'Aminur ', 'Rahman', 156738496, 'aminur@gmail.com', 'Male', '1990-04-18', 16, 'Islam', 'Savar', NULL, '0bbf62f1385dfbc8ac055ff7fd9585561713894292.jpg', '2024-04-23 18:21:10'),
(12, '37586', 'Dr Ferdousi', 'Begum', 134658697, 'ferdousi@gmail.com', 'Female', '1993-04-25', 17, 'Islam', 'Ashulia', NULL, 'f56aef3839e2ebc75c849b4fdd1514b31713894400.jpg', '2024-04-23 18:21:24'),
(13, '465869', 'Sumiya', 'Nabi', 125869785, 'nabi@gmail.com', 'Female', '1995-04-29', 18, 'Islam', 'Asad Gate', NULL, '239cb6077045ad61bc55d661c8d56caf1713894610.jpg', '2024-04-23 18:21:35'),
(14, '45689', 'Dr A K M', 'Alamgir', 193847678, 'alamgir@gmail.com', 'Male', '1991-04-02', 19, 'Islam', 'Uttara', NULL, 'f79238a531505ebd40ecb2af65055eb01713894662.jpg', '2024-04-23 18:21:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsuballocation`
--
ALTER TABLE `tblsuballocation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsuballocation`
--
ALTER TABLE `tblsuballocation`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
