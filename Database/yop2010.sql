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
-- Database: `yop2010`
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
('C06', 'Google');

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
('07-300-4-02-0500', 'B.Sc CS'),
('07-300-4-02-0503', 'B.Sc CS'),
('07-300-4-02-0507', 'B.Sc CS'),
('07-300-4-02-0511', 'B.Sc CS'),
('07-300-4-02-0522', 'B.Sc CS'),
('07-300-4-02-0527', 'B.Sc CS'),
('07-300-4-02-0531', 'B.Sc CS'),
('07-300-4-02-0539', 'B.Sc CS'),
('07-300-4-02-0540', 'B.Sc CS'),
('07-300-4-02-0548', 'B.Sc CS'),
('07-300-4-02-0553', 'B.Sc CS'),
('07-300-4-02-0554', 'B.Sc CS'),
('07-300-4-02-0573', 'B.Sc CS'),
('07-300-4-02-0577', 'B.Sc CS'),
('07-300-4-02-0592', 'B.Sc CS'),
('08-500-5-03-0501', 'M.Sc CS'),
('08-500-5-03-0512', 'M.Sc CS'),
('08-500-5-03-0542', 'M.Sc CS'),
('08-500-5-03-0552', 'M.Sc CS'),
('08-500-5-03-0556', 'M.Sc CS'),
('08-500-5-03-0560', 'M.Sc CS'),
('08-500-5-03-0570', 'M.Sc CS'),
('08-500-5-03-0571', 'M.Sc CS'),
('08-500-5-03-0586', 'M.Sc CS'),
('08-500-5-03-0589', 'M.Sc CS'),
('08-500-5-03-0599', 'M.Sc CS');

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
('07-300-4-02-0511', 'C02', 290000, 'SOFTWARE DEVELOPER'),
('07-300-4-02-0522', 'C03', 330000, 'SALES ENGINEER '),
('07-300-4-02-0527', 'C02', 300000, 'WEB DEVELOPER '),
('07-300-4-02-0539', 'C06', 380000, 'SALES ENGINEER '),
('07-300-4-02-0540', 'C03', 400000, 'SYSTEM ANALYST'),
('07-300-4-02-0548', 'C03', 280000, 'TECH CONSULTANT '),
('07-300-4-02-0553', 'C01', 350000, 'WEB DEVELOPER '),
('07-300-4-02-0554', 'C05', 280000, 'SALES ENGINEER '),
('07-300-4-02-0592', 'C06', 400000, 'AI DEVELOPER'),
('08-500-5-03-0512', 'C01', 250000, 'WEB DEVELOPER '),
('08-500-5-03-0542', 'C01', 240000, 'SALES ENGINEER '),
('08-500-5-03-0570', 'C04', 300000, 'SOFTWARE DEVELOPER'),
('08-500-5-03-0571', 'C05', 320000, 'AI DEVELOPER'),
('08-500-5-03-0589', 'C06', 400000, 'TECH CONSULTANT ');

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
('07-300-4-02-0500', 'Yes'),
('07-300-4-02-0503', 'No'),
('07-300-4-02-0507', 'No'),
('07-300-4-02-0511', 'Yes'),
('07-300-4-02-0522', 'Yes'),
('07-300-4-02-0527', 'Yes'),
('07-300-4-02-0531', 'Yes'),
('07-300-4-02-0539', 'Yes'),
('07-300-4-02-0540', 'Yes'),
('07-300-4-02-0548', 'Yes'),
('07-300-4-02-0553', 'Yes'),
('07-300-4-02-0554', 'Yes'),
('07-300-4-02-0573', 'Yes'),
('07-300-4-02-0577', 'Yes'),
('07-300-4-02-0592', 'Yes'),
('08-500-5-03-0501', 'Yes'),
('08-500-5-03-0512', 'Yes'),
('08-500-5-03-0542', 'Yes'),
('08-500-5-03-0552', 'No'),
('08-500-5-03-0556', 'Yes'),
('08-500-5-03-0560', 'No'),
('08-500-5-03-0570', 'Yes'),
('08-500-5-03-0571', 'Yes'),
('08-500-5-03-0586', 'Yes'),
('08-500-5-03-0589', 'Yes'),
('08-500-5-03-0599', 'No');

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
('07-300-4-02-0500', 'Brantley Wyon', 'bwyona@ning.com', 7.41),
('07-300-4-02-0503', 'Dedra Brandes', 'dbrandesj@bloglovin.com', 9.73),
('07-300-4-02-0507', 'Jude Teare', 'jtearek@miitbeian.gov.cn', 9.64),
('07-300-4-02-0511', 'Seumas Kensitt', 'skensitt0@columbia.edu', 8.41),
('07-300-4-02-0522', 'Leyla Joule', 'ljoule7@sciencedaily.com', 6.08),
('07-300-4-02-0527', 'Devinne Theunissen', 'dtheunissen5@apple.com', 9.55),
('07-300-4-02-0531', 'Anatol Coupar', 'acoupar9@reverbnation.com', 9.67),
('07-300-4-02-0539', 'Bernie Briggdale', 'bbriggdale8@pbs.org', 6.32),
('07-300-4-02-0540', 'Olivia Minihan', 'ominihan6@illinois.edu', 6.25),
('07-300-4-02-0548', 'Mordy Harby', 'mharby1@w3.org', 9.65),
('07-300-4-02-0553', 'Adelaida Chiommienti', 'achiommienti2@samsung.com', 7.12),
('07-300-4-02-0554', 'Rock Mattingley', 'rmattingley3@ucsd.edu', 8.12),
('07-300-4-02-0573', 'Gerry Abel', 'gabeli@java.com', 7.33),
('07-300-4-02-0577', 'Sherman Lyvon', 'slyvonl@altervista.org', 6.49),
('07-300-4-02-0592', 'Ezmeralda Keatley', 'ekeatley4@vimeo.com', 7.18),
('08-500-5-03-0501', 'April Gouldthorp', 'agouldthorp2@ycombinator.com', 7.06),
('08-500-5-03-0512', 'Kelsi Craigg', 'kcraigg9@smh.com.au', 8.71),
('08-500-5-03-0542', 'Rebbecca Adan', 'radana@angelfire.com', 7.6),
('08-500-5-03-0552', 'Pall Corssen', 'pcorssen4@hp.com', 7.03),
('08-500-5-03-0556', 'Lu Eckersall', 'leckersallb@hhs.gov', 8.44),
('08-500-5-03-0560', 'Marcellus Zamorano', 'mzamorano5@discovery.com', 7.51),
('08-500-5-03-0570', 'Mag Welling', 'mwelling7@un.org', 9.67),
('08-500-5-03-0571', 'Rosemarie Golsthorp', 'rgolsthorp6@bloglovin.com', 9.19),
('08-500-5-03-0586', 'Vannie Dinis', 'vdinis1@time.com', 8.12),
('08-500-5-03-0589', 'Arliene Cosgrave', 'acosgrave8@google.com.au', 6.13),
('08-500-5-03-0599', 'Ibbie Arnott', 'iarnott3@etsy.com', 6.99);

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
