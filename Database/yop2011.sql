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
-- Database: `yop2011`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Company_ID` varchar(3) NOT NULL,
  `Company_Name` varchar(50) DEFAULT NULL
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
  `course` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseinfo`
--

INSERT INTO `courseinfo` (`CIN`, `course`) VALUES
('08-300-4-02-0500', 'B.Sc CS'),
('08-300-4-02-0504', 'B.Sc CS'),
('08-300-4-02-0512', 'B.Sc CS'),
('08-300-4-02-0515', 'B.Sc CS'),
('08-300-4-02-0518', 'B.Sc CS'),
('08-300-4-02-0520', 'B.Sc CS'),
('08-300-4-02-0523', 'B.Sc CS'),
('08-300-4-02-0560', 'B.Sc CS'),
('08-300-4-02-0565', 'B.Sc CS'),
('08-300-4-02-0566', 'B.Sc CS'),
('08-300-4-02-0573', 'B.Sc CS'),
('08-300-4-02-0575', 'B.Sc CS'),
('08-300-4-02-0577', 'B.Sc CS'),
('08-300-4-02-0581', 'B.Sc CS'),
('08-300-4-02-0588', 'B.Sc CS'),
('08-300-4-02-0591', 'B.Sc CS'),
('08-300-4-02-0597', 'B.Sc CS'),
('08-300-4-02-0598', 'B.Sc CS'),
('09-500-5-03-0513', 'M.Sc CS'),
('09-500-5-03-0528', 'M.Sc CS'),
('09-500-5-03-0533', 'M.Sc CS'),
('09-500-5-03-0546', 'M.Sc CS'),
('09-500-5-03-0547', 'M.Sc CS'),
('09-500-5-03-0548', 'M.Sc CS'),
('09-500-5-03-0551', 'M.Sc CS'),
('09-500-5-03-0565', 'M.Sc CS'),
('09-500-5-03-0568', 'M.Sc CS'),
('09-500-5-03-0574', 'M.Sc CS'),
('09-500-5-03-0577', 'M.Sc CS'),
('09-500-5-03-0587', 'M.Sc CS'),
('09-500-5-03-0588', 'M.Sc CS');

-- --------------------------------------------------------

--
-- Table structure for table `placementinfo`
--

CREATE TABLE `placementinfo` (
  `CIN` varchar(16) NOT NULL,
  `Company_ID` varchar(3) DEFAULT NULL,
  `Package` int(11) DEFAULT NULL,
  `AppointedRole` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `placementinfo`
--

INSERT INTO `placementinfo` (`CIN`, `Company_ID`, `Package`, `AppointedRole`) VALUES
('08-300-4-02-0515', 'C04', 330000, 'SALES ENGINEER '),
('08-300-4-02-0518', 'C06', 400000, 'TECH CONSULTANT '),
('08-300-4-02-0523', 'C03', 440000, 'TECH CONSULTANT '),
('08-300-4-02-0573', 'C02', 320000, 'SALES ENGINEER '),
('08-300-4-02-0581', 'C02', 400000, 'SYSTEM ANALYST'),
('08-300-4-02-0591', 'C07', 300000, 'SOFTWARE DEVELOPER'),
('08-300-4-02-0597', 'C07', 340000, 'WEB DEVELOPER '),
('09-500-5-03-0513', 'C02', 380000, 'SALES ENGINEER '),
('09-500-5-03-0528', 'C05', 230000, 'SECURITY MANAGER'),
('09-500-5-03-0533', 'C01', 250000, 'AI DEVELOPER'),
('09-500-5-03-0546', 'C01', 300000, 'WEB DEVELOPER '),
('09-500-5-03-0565', 'C06', 240000, 'SOFTWARE ENGINEER'),
('09-500-5-03-0577', 'C05', 340000, 'SYSTEM ANALYST');

-- --------------------------------------------------------

--
-- Table structure for table `reginfo`
--

CREATE TABLE `reginfo` (
  `CIN` varchar(16) NOT NULL,
  `RegStat` enum('Yes','No') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reginfo`
--

INSERT INTO `reginfo` (`CIN`, `RegStat`) VALUES
('08-300-4-02-0500', 'Yes'),
('08-300-4-02-0504', 'No'),
('08-300-4-02-0512', 'Yes'),
('08-300-4-02-0515', 'Yes'),
('08-300-4-02-0518', 'Yes'),
('08-300-4-02-0520', 'Yes'),
('08-300-4-02-0523', 'Yes'),
('08-300-4-02-0560', 'Yes'),
('08-300-4-02-0565', 'No'),
('08-300-4-02-0566', 'Yes'),
('08-300-4-02-0573', 'Yes'),
('08-300-4-02-0575', 'Yes'),
('08-300-4-02-0577', 'Yes'),
('08-300-4-02-0581', 'Yes'),
('08-300-4-02-0588', 'Yes'),
('08-300-4-02-0591', 'Yes'),
('08-300-4-02-0597', 'Yes'),
('08-300-4-02-0598', 'Yes'),
('09-500-5-03-0513', 'Yes'),
('09-500-5-03-0528', 'Yes'),
('09-500-5-03-0533', 'Yes'),
('09-500-5-03-0546', 'Yes'),
('09-500-5-03-0547', 'No'),
('09-500-5-03-0548', 'Yes'),
('09-500-5-03-0551', 'No'),
('09-500-5-03-0565', 'Yes'),
('09-500-5-03-0568', 'Yes'),
('09-500-5-03-0574', 'Yes'),
('09-500-5-03-0577', 'Yes'),
('09-500-5-03-0587', 'Yes'),
('09-500-5-03-0588', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `CIN` varchar(16) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CGPA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`CIN`, `Name`, `Email`, `CGPA`) VALUES
('08-300-4-02-0500', 'Eric Scourgie', 'escourgief@xinhuanet.com', 7.1),
('08-300-4-02-0504', 'Christopher Gaffney', 'cgaffneyb@lycos.com', 7.12),
('08-300-4-02-0512', 'Tommie Astridge', 'tastridgea@friendfeed.com', 6.55),
('08-300-4-02-0515', 'Barry Hucquart', 'bhucquart1@netlog.com', 7.07),
('08-300-4-02-0518', 'Noland Drowsfield', 'ndrowsfield5@paginegialle.it', 9.55),
('08-300-4-02-0520', 'Heidi Margrett', 'hmargrettj@livejournal.com', 9),
('08-300-4-02-0523', 'Worden Maseyk', 'wmaseyk3@va.gov', 9.91),
('08-300-4-02-0560', 'Jeffy Bloxam', 'jbloxam9@imdb.com', 8.99),
('08-300-4-02-0565', 'Mariam Coggill', 'mcoggillh@jigsy.com', 7.92),
('08-300-4-02-0566', 'Fayette Vlasov', 'fvlasovg@wix.com', 7.45),
('08-300-4-02-0573', 'Dinny Monnelly', 'dmonnelly2@miitbeian.gov.cn', 7.62),
('08-300-4-02-0575', 'Culley Scholfield', 'cscholfield8@newyorker.com', 6.57),
('08-300-4-02-0577', 'Ramon MacCurtain', 'rmaccurtain7@sphinn.com', 6.91),
('08-300-4-02-0581', 'Berne Vizor', 'bvizor0@over-blog.com', 7.66),
('08-300-4-02-0588', 'Gordon Ree', 'greec@linkedin.com', 6.96),
('08-300-4-02-0591', 'Mitchel Heady', 'mheady4@dyndns.org', 7.3),
('08-300-4-02-0597', 'Claudette Josselson', 'cjosselson6@blogger.com', 9.14),
('08-300-4-02-0598', 'Mac Fitch', 'mfitchi@4shared.com', 9.06),
('09-500-5-03-0513', 'Lynette Bossel', 'lbossel4@usgs.gov', 8.16),
('09-500-5-03-0528', 'Gabe Arnison', 'garnison2@yandex.ru', 9.57),
('09-500-5-03-0533', 'Urbain Rodman', 'urodman5@mtv.com', 6.29),
('09-500-5-03-0546', 'Alphonse Marrow', 'amarrow6@wordpress.org', 7.3),
('09-500-5-03-0547', 'Gary Balke', 'gbalkeb@google.com.br', 9.98),
('09-500-5-03-0548', 'Bibbie Tutin', 'btutind@altervista.org', 9.13),
('09-500-5-03-0551', 'Whitman Mossop', 'wmossop7@pen.io', 9.37),
('09-500-5-03-0565', 'Angie Arangy', 'aarangy1@wordpress.com', 7.24),
('09-500-5-03-0568', 'Kilian Orme', 'kormee@weather.com', 6.68),
('09-500-5-03-0574', 'Anastasie Chstney', 'achstney0@tamu.edu', 7.19),
('09-500-5-03-0577', 'Erroll Bruntjen', 'ebruntjen3@webnode.com', 9.95),
('09-500-5-03-0587', 'Dallas McKeighen', 'dmckeighen8@arstechnica.com', 6.98),
('09-500-5-03-0588', 'Victor Conerding', 'vconerdingc@hc360.com', 9.79);

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
  ADD KEY `fk4` (`Company_ID`);

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
