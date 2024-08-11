-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 05:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yop2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Company_ID` varchar(3) NOT NULL,
  `Company_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Company_ID`, `Company_Name`) VALUES
('C01', 'PWC'),
('C02', 'Quantiphi Analytics'),
('C03', 'ICICI Bank'),
('C04', 'Accenture'),
('C05', 'Microsoft'),
('C06', 'Google'),
('C07', 'IBM');

-- --------------------------------------------------------

--
-- Table structure for table `courseinfo`
--

CREATE TABLE `courseinfo` (
  `CIN` varchar(16) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseinfo`
--

INSERT INTO `courseinfo` (`CIN`, `course`) VALUES
('11-300-4-02-0518', 'B.Sc CS'),
('11-300-4-02-0523', 'B.Sc CS'),
('11-300-4-02-0530', 'B.Sc CS'),
('11-300-4-02-0536', 'B.Sc CS'),
('11-300-4-02-0539', 'B.Sc CS'),
('11-300-4-02-0545', 'B.Sc CS'),
('11-300-4-02-0550', 'B.Sc CS'),
('11-300-4-02-0556', 'B.Sc CS'),
('11-300-4-02-0557', 'B.Sc CS'),
('11-300-4-02-0558', 'B.Sc CS'),
('11-300-4-02-0562', 'B.Sc CS'),
('11-300-4-02-0577', 'B.Sc CS'),
('11-300-4-02-0578', 'B.Sc CS'),
('11-300-4-02-0580', 'B.Sc CS'),
('11-300-4-02-0581', 'B.Sc CS'),
('11-300-4-02-0586', 'B.Sc CS'),
('11-300-4-02-0589', 'B.Sc CS'),
('11-300-4-02-0590', 'B.Sc CS'),
('11-300-4-02-0595', 'B.Sc CS'),
('11-300-4-02-0597', 'B.Sc CS'),
('12-500-5-03-0500', 'M.Sc CS'),
('12-500-5-03-0501', 'M.Sc CS'),
('12-500-5-03-0515', 'M.Sc CS'),
('12-500-5-03-0525', 'M.Sc CS'),
('12-500-5-03-0532', 'M.Sc CS'),
('12-500-5-03-0541', 'M.Sc CS'),
('12-500-5-03-0547', 'M.Sc CS'),
('12-500-5-03-0560', 'M.Sc CS'),
('12-500-5-03-0564', 'M.Sc CS'),
('12-500-5-03-0565', 'M.Sc CS'),
('12-500-5-03-0570', 'M.Sc CS'),
('12-500-5-03-0573', 'M.Sc CS'),
('12-500-5-03-0575', 'M.Sc CS'),
('12-500-5-03-0576', 'M.Sc CS'),
('12-500-5-03-0585', 'M.Sc CS'),
('12-500-5-03-0586', 'M.Sc CS');

-- --------------------------------------------------------

--
-- Table structure for table `placementinfo`
--

CREATE TABLE `placementinfo` (
  `CIN` varchar(16) NOT NULL,
  `Company_ID` varchar(3) NOT NULL,
  `Package` int(11) NOT NULL,
  `AppointedRole` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `placementinfo`
--

INSERT INTO `placementinfo` (`CIN`, `Company_ID`, `Package`, `AppointedRole`) VALUES
('11-300-4-02-0536', 'C03', 450000, 'AI DEVELOPER'),
('11-300-4-02-0556', 'C02', 480000, 'ML ENGINEER '),
('11-300-4-02-0557', 'C07', 450000, 'SECURITY ANALYST'),
('11-300-4-02-0558', 'C05', 480000, 'ML ENGINEER '),
('11-300-4-02-0562', 'C03', 450000, 'IT DEVELOPER '),
('11-300-4-02-0577', 'C05', 500000, 'AI DEVELOPER '),
('11-300-4-02-0581', 'C07', 450000, 'WEB DEVELOPER '),
('11-300-4-02-0586', 'C06', 500000, 'TECH CONSULTANT '),
('11-300-4-02-0595', 'C06', 450000, 'SOFTWARE DEVELOPER'),
('11-300-4-02-0597', 'C07', 400000, 'AI DEVELOPER'),
('12-500-5-03-0500', 'C05', 450000, 'WEB DEVELOPER '),
('12-500-5-03-0547', 'C07', 500000, 'AI DEVELOPER'),
('12-500-5-03-0564', 'C03', 450000, 'WEB DEVELOPER '),
('12-500-5-03-0565', 'C02', 440000, 'SALES ENGINEER '),
('12-500-5-03-0575', 'C02', 480000, 'TECH CONSULTANT'),
('12-500-5-03-0576', 'C06', 480000, 'TECH CONSULTANT');

-- --------------------------------------------------------

--
-- Table structure for table `reginfo`
--

CREATE TABLE `reginfo` (
  `CIN` varchar(16) NOT NULL,
  `RegStat` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reginfo`
--

INSERT INTO `reginfo` (`CIN`, `RegStat`) VALUES
('11-300-4-02-0518', 'Yes'),
('11-300-4-02-0523', 'Yes'),
('11-300-4-02-0530', 'Yes'),
('11-300-4-02-0536', 'Yes'),
('11-300-4-02-0539', 'Yes'),
('11-300-4-02-0545', 'No'),
('11-300-4-02-0550', 'Yes'),
('11-300-4-02-0556', 'Yes'),
('11-300-4-02-0557', 'Yes'),
('11-300-4-02-0558', 'Yes'),
('11-300-4-02-0562', 'Yes'),
('11-300-4-02-0577', 'Yes'),
('11-300-4-02-0578', 'No'),
('11-300-4-02-0580', 'Yes'),
('11-300-4-02-0581', 'Yes'),
('11-300-4-02-0586', 'Yes'),
('11-300-4-02-0589', 'No'),
('11-300-4-02-0590', 'No'),
('11-300-4-02-0595', 'Yes'),
('11-300-4-02-0597', 'Yes'),
('12-500-5-03-0500', 'Yes'),
('12-500-5-03-0501', 'Yes'),
('12-500-5-03-0515', 'No'),
('12-500-5-03-0525', 'Yes'),
('12-500-5-03-0532', 'Yes'),
('12-500-5-03-0541', 'No'),
('12-500-5-03-0547', 'Yes'),
('12-500-5-03-0560', 'Yes'),
('12-500-5-03-0564', 'Yes'),
('12-500-5-03-0565', 'Yes'),
('12-500-5-03-0570', 'Yes'),
('12-500-5-03-0573', 'Yes'),
('12-500-5-03-0575', 'Yes'),
('12-500-5-03-0576', 'Yes'),
('12-500-5-03-0585', 'No'),
('12-500-5-03-0586', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `CIN` varchar(16) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `CGPA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`CIN`, `Name`, `Email`, `CGPA`) VALUES
('11-300-4-02-0518', 'Sergio Liven', 'slivent@homestead.com', 6.27),
('11-300-4-02-0523', 'Karen Torry', 'ktorryp@merriam-webster.com', 7.34),
('11-300-4-02-0530', 'Janette Moncreiffe', 'jmoncreiffen@slashdot.org', 9.34),
('11-300-4-02-0536', 'Marquita Struan', 'mstruan1@virginia.edu', 6.44),
('11-300-4-02-0539', 'Lyssa Melling', 'lmellingr@miitbeian.gov.cn', 9.59),
('11-300-4-02-0545', 'Noel Trewman', 'ntrewmanf@sohu.com', 6.23),
('11-300-4-02-0550', 'Stirling Hoyle', 'shoylem@sakura.ne.jp', 6.28),
('11-300-4-02-0556', 'Ilyssa Rao', 'irao9@tripod.com', 6.19),
('11-300-4-02-0557', 'Morie Iliffe', 'miliffe0@japanpost.jp', 7.66),
('11-300-4-02-0558', 'Beverly Maundrell', 'bmaundrella@amazon.co.jp', 6.78),
('11-300-4-02-0562', 'Parrnell Breckwell', 'pbreckwell2@msn.com', 6.92),
('11-300-4-02-0577', 'Arlina Bettridge', 'abettridge4@qq.com', 8.13),
('11-300-4-02-0578', 'Boycey Strass', 'bstrassq@prweb.com', 7.19),
('11-300-4-02-0580', 'Egor Hillborne', 'ehillbornes@ucoz.com', 8),
('11-300-4-02-0581', 'Pansy Renols', 'prenols7@instagram.com', 9.22),
('11-300-4-02-0586', 'Baily Leversha', 'blevershad@i2i.jp', 8.71),
('11-300-4-02-0589', 'Claude Costain', 'ccostaing@ebay.com', 9.4),
('11-300-4-02-0590', 'Waverley Siely', 'wsielye@baidu.com', 6.05),
('11-300-4-02-0595', 'Anallese Clouter', 'aclouterc@yellowpages.com', 6.49),
('11-300-4-02-0597', 'Emmerich Rubbert', 'erubbertb@g.co', 8.65),
('12-500-5-03-0500', 'Shurwood Mayhew', 'smayhew0@goodreads.com', 6.92),
('12-500-5-03-0501', 'Carlee Mullen', 'cmullen3@weather.com', 7.94),
('12-500-5-03-0515', 'Yurik Pogosian', 'ypogosian7@columbia.edu', 7.2),
('12-500-5-03-0525', 'Vera Gateley', 'vgateley4@wsj.com', 7.26),
('12-500-5-03-0532', 'Brandy MacAndie', 'bmacandiee@wordpress.org', 9.41),
('12-500-5-03-0541', 'Sidney Bernardez', 'sbernardez8@networkadvertising.org', 9.18),
('12-500-5-03-0547', 'Berkie Cawt', 'bcawtb@cbslocal.com', 6.23),
('12-500-5-03-0560', 'Pryce Tyt', 'ptyt2@free.fr', 6.48),
('12-500-5-03-0564', 'Cal Drury', 'cdrury1@biglobe.ne.jp', 7.27),
('12-500-5-03-0565', 'Costa Jovasevic', 'cjovasevic6@ox.ac.uk', 7.57),
('12-500-5-03-0570', 'Erich Puncher', 'epuncher5@washingtonpost.com', 9.27),
('12-500-5-03-0573', 'Tanitansy Rackley', 'trackley9@prweb.com', 9.96),
('12-500-5-03-0575', 'Mallissa Casaro', 'mcasaroa@ehow.com', 9.88),
('12-500-5-03-0576', 'Natka Capehorn', 'ncapehornd@zdnet.com', 9.08),
('12-500-5-03-0585', 'Tuck Goodbourn', 'tgoodbournh@abc.net.au', 7.79),
('12-500-5-03-0586', 'Nico Abbys', 'nabbysf@w3.org', 9.07);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Company_ID`);

--
-- Indexes for table `courseinfo`
--
ALTER TABLE `courseinfo`
  ADD PRIMARY KEY (`CIN`);

--
-- Indexes for table `placementinfo`
--
ALTER TABLE `placementinfo`
  ADD PRIMARY KEY (`CIN`),
  ADD KEY `Company ID` (`Company_ID`);

--
-- Indexes for table `reginfo`
--
ALTER TABLE `reginfo`
  ADD PRIMARY KEY (`CIN`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`CIN`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courseinfo`
--
ALTER TABLE `courseinfo`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`CIN`) REFERENCES `studentinfo` (`CIN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `placementinfo`
--
ALTER TABLE `placementinfo`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`CIN`) REFERENCES `studentinfo` (`CIN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk4` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`Company_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reginfo`
--
ALTER TABLE `reginfo`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`CIN`) REFERENCES `studentinfo` (`CIN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
