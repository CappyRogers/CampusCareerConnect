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
-- Database: `yop2012`
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
('C09', 'EY GDS'),
('C10', 'Thoughtbeat');

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
('09-300-4-02-0502', 'B.Sc CS'),
('09-300-4-02-0504', 'B.Sc CS'),
('09-300-4-02-0509', 'B.Sc CS'),
('09-300-4-02-0511', 'B.Sc CS'),
('09-300-4-02-0513', 'B.Sc CS'),
('09-300-4-02-0515', 'B.Sc CS'),
('09-300-4-02-0516', 'B.Sc CS'),
('09-300-4-02-0520', 'B.Sc CS'),
('09-300-4-02-0527', 'B.Sc CS'),
('09-300-4-02-0529', 'B.Sc CS'),
('09-300-4-02-0530', 'B.Sc CS'),
('09-300-4-02-0533', 'B.Sc CS'),
('09-300-4-02-0548', 'B.Sc CS'),
('09-300-4-02-0550', 'B.Sc CS'),
('09-300-4-02-0560', 'B.Sc CS'),
('09-300-4-02-0563', 'B.Sc CS'),
('09-300-4-02-0565', 'B.Sc CS'),
('09-300-4-02-0566', 'B.Sc CS'),
('09-300-4-02-0570', 'B.Sc CS'),
('09-300-4-02-0571', 'B.Sc CS'),
('09-300-4-02-0577', 'B.Sc CS'),
('09-300-4-02-0596', 'B.Sc CS'),
('09-300-4-02-0599', 'B.Sc CS'),
('10-500-5-03-0501', 'M.Sc CS'),
('10-500-5-03-0516', 'M.Sc CS'),
('10-500-5-03-0519', 'M.Sc CS'),
('10-500-5-03-0524', 'M.Sc CS'),
('10-500-5-03-0526', 'M.Sc CS'),
('10-500-5-03-0528', 'M.Sc CS'),
('10-500-5-03-0529', 'M.Sc CS'),
('10-500-5-03-0532', 'M.Sc CS'),
('10-500-5-03-0534', 'M.Sc CS'),
('10-500-5-03-0537', 'M.Sc CS'),
('10-500-5-03-0541', 'M.Sc CS'),
('10-500-5-03-0550', 'M.Sc CS'),
('10-500-5-03-0553', 'M.Sc CS'),
('10-500-5-03-0560', 'M.Sc CS'),
('10-500-5-03-0561', 'M.Sc CS'),
('10-500-5-03-0562', 'M.Sc CS'),
('10-500-5-03-0567', 'M.Sc CS'),
('10-500-5-03-0572', 'M.Sc CS'),
('10-500-5-03-0583', 'M.Sc CS'),
('10-500-5-03-0585', 'M.Sc CS'),
('10-500-5-03-0595', 'M.Sc CS');

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
('09-300-4-02-0502', 'C03', 400000, 'ML ENGINEER '),
('09-300-4-02-0504', 'C03', 330000, 'TECH CONSULTANT'),
('09-300-4-02-0511', 'C10', 320000, 'SECURITY ANALYST'),
('09-300-4-02-0513', 'C09', 410000, 'SYSTEM ANALYST'),
('09-300-4-02-0515', 'C06', 400000, 'AI DEVELOPER'),
('09-300-4-02-0520', 'C10', 360000, 'WEB DEVELOPER'),
('09-300-4-02-0527', 'C09', 410000, 'SYSTEM ANALYST'),
('09-300-4-02-0529', 'C01', 320000, 'SECURITY ANALYST'),
('09-300-4-02-0548', 'C10', 280000, 'AI DEVELOPER'),
('09-300-4-02-0560', 'C09', 410000, 'SYSTEM ANALYST'),
('09-300-4-02-0563', 'C09', 410000, 'SYSTEM ANALYST'),
('09-300-4-02-0565', 'C09', 390000, 'APP DEVELOPER'),
('09-300-4-02-0577', 'C01', 400000, 'WEB DEVELOPER'),
('09-300-4-02-0596', 'C03', 380000, 'SOFTWARE ENGINEER'),
('09-300-4-02-0599', 'C03', 380000, 'SOFTWARE ENGINEER'),
('10-500-5-03-0526', 'C01', 330000, 'APP DEVELOPER'),
('10-500-5-03-0532', 'C01', 330000, 'APP DEVELOPER'),
('10-500-5-03-0537', 'C06', 420000, 'TECH CONSULTANT'),
('10-500-5-03-0541', 'C10', 280000, 'SOFTWARE DEVELOPER'),
('10-500-5-03-0560', 'C10', 280000, 'SOFTWARE DEVELOPER');

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
('09-300-4-02-0502', 'Yes'),
('09-300-4-02-0504', 'Yes'),
('09-300-4-02-0509', 'No'),
('09-300-4-02-0511', 'Yes'),
('09-300-4-02-0513', 'Yes'),
('09-300-4-02-0515', 'Yes'),
('09-300-4-02-0516', 'Yes'),
('09-300-4-02-0520', 'Yes'),
('09-300-4-02-0527', 'Yes'),
('09-300-4-02-0529', 'Yes'),
('09-300-4-02-0530', 'Yes'),
('09-300-4-02-0533', 'Yes'),
('09-300-4-02-0548', 'Yes'),
('09-300-4-02-0550', 'No'),
('09-300-4-02-0560', 'Yes'),
('09-300-4-02-0563', 'Yes'),
('09-300-4-02-0565', 'Yes'),
('09-300-4-02-0566', 'Yes'),
('09-300-4-02-0570', 'No'),
('09-300-4-02-0571', 'Yes'),
('09-300-4-02-0577', 'Yes'),
('09-300-4-02-0596', 'Yes'),
('09-300-4-02-0599', 'Yes'),
('10-500-5-03-0501', 'Yes'),
('10-500-5-03-0516', 'Yes'),
('10-500-5-03-0519', 'Yes'),
('10-500-5-03-0524', 'No'),
('10-500-5-03-0526', 'Yes'),
('10-500-5-03-0528', 'Yes'),
('10-500-5-03-0529', 'Yes'),
('10-500-5-03-0532', 'Yes'),
('10-500-5-03-0534', 'No'),
('10-500-5-03-0537', 'Yes'),
('10-500-5-03-0541', 'Yes'),
('10-500-5-03-0550', 'No'),
('10-500-5-03-0553', 'Yes'),
('10-500-5-03-0560', 'Yes'),
('10-500-5-03-0561', 'Yes'),
('10-500-5-03-0562', 'No'),
('10-500-5-03-0567', 'Yes'),
('10-500-5-03-0572', 'Yes'),
('10-500-5-03-0583', 'Yes'),
('10-500-5-03-0585', 'Yes'),
('10-500-5-03-0595', 'No');

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
('09-300-4-02-0501', 'Sahil Dudhoria', 'sahildudhoria@gmail.com', 9.2),
('09-300-4-02-0502', 'Cordy Sempill', 'csempillf@deviantart.com', 9),
('09-300-4-02-0504', 'Farrah Dykas', 'fdykas9@intel.com', 7.6),
('09-300-4-02-0509', 'Ranique Moggach', 'rmoggach7@uol.com.br', 8.83),
('09-300-4-02-0511', 'Roberto Bradder', 'rbradderd@businessinsider.com', 9.38),
('09-300-4-02-0513', 'Keefe Cantillion', 'kcantillion2@jimdo.com', 7.33),
('09-300-4-02-0515', 'Portia Kelinge', 'pkelinge5@wordpress.org', 8.68),
('09-300-4-02-0516', 'Jeannine Grzelczak', 'jgrzelczakl@tamu.edu', 9.95),
('09-300-4-02-0520', 'Jed Lauritzen', 'jlauritzen0@wufoo.com', 6.97),
('09-300-4-02-0527', 'Tiffi Fowells', 'tfowells4@hp.com', 6.42),
('09-300-4-02-0529', 'Nichole Wudeland', 'nwudelandc@ucsd.edu', 7.93),
('09-300-4-02-0530', 'Seymour Kolodziej', 'skolodziejh@admin.ch', 7.13),
('09-300-4-02-0533', 'Gerty Ovens', 'govensg@goo.gl', 6.14),
('09-300-4-02-0548', 'Pate Keast', 'pkeastb@netvibes.com', 8.75),
('09-300-4-02-0550', 'Rebe Christofol', 'rchristofolj@usatoday.com', 7.41),
('09-300-4-02-0560', 'Lolita Gofforth', 'lgofforth3@icq.com', 7.4),
('09-300-4-02-0563', 'Gabbie Rimmington', 'grimmington1@nps.gov', 8.71),
('09-300-4-02-0565', 'Marco Tween', 'mtweene@ox.ac.uk', 7.72),
('09-300-4-02-0566', 'Rhys Dewitt', 'rdewitto@sakura.ne.jp', 9.03),
('09-300-4-02-0570', 'Danila Rosser', 'drosseri@so-net.ne.jp', 8.18),
('09-300-4-02-0571', 'Granville Baggalley', 'gbaggalleyn@infoseek.co.jp', 6.27),
('09-300-4-02-0577', 'Gabriel Carloni', 'gcarlonia@huffingtonpost.com', 7.8),
('09-300-4-02-0596', 'Malena Meatyard', 'mmeatyard6@state.gov', 6.35),
('09-300-4-02-0599', 'Flossy Hazzard', 'fhazzard8@miibeian.gov.cn', 8.17),
('10-500-5-03-0501', 'Foster Junes', 'fjunes0@sina.com.cn', 7.45),
('10-500-5-03-0516', 'Tomkin Grimsdith', 'tgrimsdithc@timesonline.co.uk', 7.96),
('10-500-5-03-0519', 'Lois Raper', 'lraperl@webmd.com', 7.66),
('10-500-5-03-0524', 'Burty Gajownik', 'bgajownikj@shutterfly.com', 7.1),
('10-500-5-03-0526', 'Dougy Craddock', 'dcraddock4@tinyurl.com', 9.59),
('10-500-5-03-0528', 'Germain Muff', 'gmuff1@wiley.com', 7.67),
('10-500-5-03-0529', 'Celene Coggill', 'ccoggillb@merriam-webster.com', 8.02),
('10-500-5-03-0532', 'Cobby Moralis', 'cmoralis5@wikipedia.org', 9.05),
('10-500-5-03-0534', 'Maria Aartsen', 'maartsend@nih.gov', 9.7),
('10-500-5-03-0537', 'Linnie Rignoldes', 'lrignoldes3@gizmodo.com', 7.07),
('10-500-5-03-0541', 'Nichols Bugdell', 'nbugdell7@about.me', 9.81),
('10-500-5-03-0550', 'Andres Sherreard', 'asherreard2@behance.net', 9.9),
('10-500-5-03-0553', 'Marylin Sherburn', 'msherburnm@example.com', 9.44),
('10-500-5-03-0560', 'Suzanne Becraft', 'sbecraft6@about.com', 7.43),
('10-500-5-03-0561', 'Latia Colborn', 'lcolbornk@nature.com', 8.44),
('10-500-5-03-0562', 'Cora Elverstone', 'celverstoneg@cbsnews.com', 9.62),
('10-500-5-03-0567', 'Phillip Goracci', 'pgoraccif@canalblog.com', 6.47),
('10-500-5-03-0572', 'Ezmeralda Grannell', 'egrannell8@bluehost.com', 7.23),
('10-500-5-03-0583', 'Jerry Corssen', 'jcorssena@gov.uk', 8.93),
('10-500-5-03-0585', 'Clemmy Torns', 'ctorns9@dmoz.org', 9.07),
('10-500-5-03-0595', 'Cassandra Whittuck', 'cwhittuckh@google.com', 9.85);

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
  ADD UNIQUE KEY `CIN` (`CIN`),
  ADD KEY `Company_ID` (`Company_ID`);

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
-- Constraints for table `reginfo`
--
ALTER TABLE `reginfo`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`CIN`) REFERENCES `studentinfo` (`CIN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
