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
-- Database: `yop2013`
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
('C07', 'IBM'),
('C08', 'TCS'),
('C09', 'EY GDS');

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
('10-300-4-02-0501', 'B.Sc CS'),
('10-300-4-02-0528', 'B.Sc CS'),
('10-300-4-02-0532', 'B.Sc CS'),
('10-300-4-02-0535', 'B.Sc CS'),
('10-300-4-02-0536', 'B.Sc CS'),
('10-300-4-02-0547', 'B.Sc CS'),
('10-300-4-02-0548', 'B.Sc CS'),
('10-300-4-02-0550', 'B.Sc CS'),
('10-300-4-02-0560', 'B.Sc CS'),
('10-300-4-02-0561', 'B.Sc CS'),
('10-300-4-02-0567', 'B.Sc CS'),
('10-300-4-02-0568', 'B.Sc CS'),
('10-300-4-02-0570', 'B.Sc CS'),
('10-300-4-02-0571', 'B.Sc CS'),
('10-300-4-02-0574', 'B.Sc CS'),
('10-300-4-02-0575', 'B.Sc CS'),
('10-300-4-02-0576', 'B.Sc CS'),
('10-300-4-02-0581', 'B.Sc CS'),
('10-300-4-02-0582', 'B.Sc CS'),
('10-300-4-02-0583', 'B.Sc CS'),
('10-300-4-02-0586', 'B.Sc CS'),
('10-300-4-02-0590', 'B.Sc CS'),
('10-300-4-02-0592', 'B.Sc CS'),
('11-500-5-03-0500', 'M.Sc CS'),
('11-500-5-03-0501', 'M.Sc CS'),
('11-500-5-03-0507', 'M.Sc CS'),
('11-500-5-03-0508', 'M.Sc CS'),
('11-500-5-03-0512', 'M.Sc CS'),
('11-500-5-03-0526', 'M.Sc CS'),
('11-500-5-03-0532', 'M.Sc CS'),
('11-500-5-03-0559', 'M.Sc CS'),
('11-500-5-03-0560', 'M.Sc CS'),
('11-500-5-03-0567', 'M.Sc CS'),
('11-500-5-03-0574', 'M.Sc CS'),
('11-500-5-03-0575', 'M.Sc CS'),
('11-500-5-03-0578', 'M.Sc CS'),
('11-500-5-03-0588', 'M.Sc CS'),
('11-500-5-03-0590', 'M.Sc CS');

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
('10-300-4-02-0501', 'C08', 330000, 'TECH CONSULTANT'),
('10-300-4-02-0547', 'C02', 350000, 'SYSTEM ANALYST'),
('10-300-4-02-0567', 'C08', 320000, 'SECURITY ANALYST'),
('10-300-4-02-0581', 'C08', 330000, 'TECH CONSULTANT'),
('10-300-4-02-0583', 'C05', 280000, 'AI DEVELOPER'),
('10-300-4-02-0586', 'C03', 400000, 'WEB DEVELOPER'),
('11-500-5-03-0500', 'C08', 320000, 'SECURITY ANALYST'),
('11-500-5-03-0507', 'C01', 370000, 'SECURITY ANALYST'),
('11-500-5-03-0508', 'C01', 450000, 'ML ENGINEER '),
('11-500-5-03-0512', 'C06', 280000, 'WEB DEVELOPER'),
('11-500-5-03-0532', 'C01', 400000, 'ML ENGINEER '),
('11-500-5-03-0559', 'C03', 450000, 'TECH CONSULTANT'),
('11-500-5-03-0560', 'C02', 350000, 'SYSTEM ANALYST'),
('11-500-5-03-0578', 'C06', 280000, 'WEB DEVELOPER'),
('11-500-5-03-0588', 'C02', 390000, 'APP DEVELOPER');

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
('10-300-4-02-0501', 'Yes'),
('10-300-4-02-0528', 'No'),
('10-300-4-02-0532', 'Yes'),
('10-300-4-02-0535', 'No'),
('10-300-4-02-0536', 'Yes'),
('10-300-4-02-0547', 'Yes'),
('10-300-4-02-0548', 'Yes'),
('10-300-4-02-0550', 'Yes'),
('10-300-4-02-0560', 'No'),
('10-300-4-02-0561', 'Yes'),
('10-300-4-02-0567', 'Yes'),
('10-300-4-02-0568', 'Yes'),
('10-300-4-02-0570', 'Yes'),
('10-300-4-02-0571', 'Yes'),
('10-300-4-02-0574', 'No'),
('10-300-4-02-0575', 'Yes'),
('10-300-4-02-0576', 'Yes'),
('10-300-4-02-0581', 'Yes'),
('10-300-4-02-0582', 'Yes'),
('10-300-4-02-0583', 'Yes'),
('10-300-4-02-0586', 'Yes'),
('10-300-4-02-0590', 'Yes'),
('10-300-4-02-0592', 'Yes'),
('11-500-5-03-0500', 'Yes'),
('11-500-5-03-0501', 'Yes'),
('11-500-5-03-0507', 'Yes'),
('11-500-5-03-0508', 'Yes'),
('11-500-5-03-0512', 'Yes'),
('11-500-5-03-0526', 'Yes'),
('11-500-5-03-0532', 'Yes'),
('11-500-5-03-0559', 'Yes'),
('11-500-5-03-0560', 'Yes'),
('11-500-5-03-0567', 'No'),
('11-500-5-03-0574', 'Yes'),
('11-500-5-03-0575', 'Yes'),
('11-500-5-03-0578', 'Yes'),
('11-500-5-03-0588', 'Yes'),
('11-500-5-03-0590', 'No');

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
('10-300-4-02-0501', 'Goldina Bearblock', 'gbearblock5@marriott.com', 6.36),
('10-300-4-02-0528', 'Berrie Mordaunt', 'bmordauntp@jimdo.com', 9.35),
('10-300-4-02-0532', 'Leonidas Forge', 'lforged@alibaba.com', 9.9),
('10-300-4-02-0535', 'Shalne Oblein', 'sobleinn@hexun.com', 6.43),
('10-300-4-02-0536', 'Cleo Roscamps', 'croscampsc@gov.uk', 8.78),
('10-300-4-02-0547', 'Phaedra Hullin', 'phullin4@infoseek.co.jp', 8.45),
('10-300-4-02-0548', 'Ferdy Lyal', 'flyalb@disqus.com', 7.06),
('10-300-4-02-0550', 'Raviv Gianilli', 'rgianilli3@wp.com', 7.58),
('10-300-4-02-0560', 'Vickie Tumbelty', 'vtumbeltyq@desdev.cn', 8.29),
('10-300-4-02-0561', 'Kurt Gori', 'kgorik@example.com', 6.34),
('10-300-4-02-0567', 'Thaddus Mussettini', 'tmussettinim@pen.io', 6.55),
('10-300-4-02-0568', 'Gabby Crook', 'gcrookg@meetup.com', 6.69),
('10-300-4-02-0570', 'Locke Wigglesworth', 'lwigglesworthi@moonfruit.com', 6.06),
('10-300-4-02-0571', 'Peggi Simkovitz', 'psimkovitz1@google.es', 7.61),
('10-300-4-02-0574', 'Donetta Trevna', 'dtrevna9@arstechnica.com', 7.86),
('10-300-4-02-0575', 'Pamelina Duprey', 'pduprey8@blogs.com', 7.07),
('10-300-4-02-0576', 'Onfroi Gosneye', 'ogosneye0@theguardian.com', 6.28),
('10-300-4-02-0581', 'Cortney De Banke', 'cde7@constantcontact.com', 6.44),
('10-300-4-02-0582', 'Erl Cossem', 'ecossemf@examiner.com', 8.26),
('10-300-4-02-0583', 'Adolph Schoenrock', 'aschoenrockl@google.pl', 9.45),
('10-300-4-02-0586', 'Alisha McPolin', 'amcpoline@harvard.edu', 9.24),
('10-300-4-02-0590', 'Austin Ghioni', 'aghioni2@virginia.edu', 8.4),
('10-300-4-02-0592', 'Anthea Lyddiatt', 'alyddiattj@google.ca', 6.23),
('10-500-5-03-0501', 'Mathhew Perry', 'mperry@gmail.com', 9),
('11-500-5-03-0500', 'Corabelle Bussetti', 'cbussetti2@is.gd', 7.21),
('11-500-5-03-0501', 'Nels Matura', 'nmatura0@cmu.edu', 9.05),
('11-500-5-03-0507', 'Gare Canedo', 'gcanedof@google.nl', 7.44),
('11-500-5-03-0508', 'Gusta Allardyce', 'gallardyce7@oakley.com', 6.15),
('11-500-5-03-0512', 'Giffy Bewicke', 'gbewicke9@go.com', 8.11),
('11-500-5-03-0526', 'Brenda Hague', 'bhague6@freewebs.com', 6.74),
('11-500-5-03-0532', 'Almeta Brigginshaw', 'abrigginshaw4@irs.gov', 7.92),
('11-500-5-03-0559', 'Spense Iacomettii', 'siacomettiid@mapquest.com', 8.91),
('11-500-5-03-0560', 'Melessa Comoletti', 'mcomolettic@devhub.com', 7.14),
('11-500-5-03-0567', 'Oates Ullyott', 'oullyott8@hibu.com', 6.68),
('11-500-5-03-0574', 'Erena Culvey', 'eculvey5@upenn.edu', 8.14),
('11-500-5-03-0575', 'Orsola Kiss', 'okiss1@reverbnation.com', 6.54),
('11-500-5-03-0578', 'Worden Bearsmore', 'wbearsmoreb@ca.gov', 6.07),
('11-500-5-03-0588', 'Alice Highwood', 'ahighwood3@pagesperso-orange.fr', 6.65),
('11-500-5-03-0590', 'Petunia Benduhn', 'pbenduhna@instagram.com', 8.01);

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
