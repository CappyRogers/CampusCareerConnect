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
-- Database: `yop2015`
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
('C10', 'Myntra'),
('C11', 'Delloite'),
('C12', 'Makemytrip'),
('C13', 'Goldman Sachs'),
('C14', 'DE Shaw'),
('C15', 'Infosys'),
('C16', 'Cognizant'),
('C17', 'Amazon'),
('C18', 'Flipkart'),
('C19', 'Cisco'),
('C20', 'Apple');

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
('12-300-4-02-0501', 'B.Sc CS '),
('12-300-4-02-0505', 'B.Sc CS '),
('12-300-4-02-0506', 'B.Sc CS '),
('12-300-4-02-0509', 'B.Sc CS '),
('12-300-4-02-0511', 'B.Sc CS '),
('12-300-4-02-0525', 'B.Sc CS '),
('12-300-4-02-0528', 'B.Sc CS '),
('12-300-4-02-0529', 'B.Sc CS '),
('12-300-4-02-0532', 'B.Sc CS '),
('12-300-4-02-0535', 'B.Sc CS '),
('12-300-4-02-0536', 'B.Sc CS '),
('12-300-4-02-0539', 'B.Sc CS '),
('12-300-4-02-0540', 'B.Sc CS '),
('12-300-4-02-0543', 'B.Sc CS '),
('12-300-4-02-0546', 'B.Sc CS '),
('12-300-4-02-0548', 'B.Sc CS '),
('12-300-4-02-0553', 'B.Sc CS '),
('12-300-4-02-0556', 'B.Sc CS '),
('12-300-4-02-0558', 'B.Sc CS '),
('12-300-4-02-0559', 'B.Sc CS '),
('12-300-4-02-0564', 'B.Sc CS '),
('12-300-4-02-0574', 'B.Sc CS '),
('12-300-4-02-0575', 'B.Sc CS '),
('12-300-4-02-0582', 'B.Sc CS '),
('12-300-4-02-0586', 'B.Sc CS '),
('12-300-4-02-0590', 'B.Sc CS '),
('12-300-4-02-0595', 'B.Sc CS '),
('13-500-5-03-0501', 'M.Sc CS '),
('13-500-5-03-0503', 'M.Sc CS '),
('13-500-5-03-0505', 'M.Sc CS '),
('13-500-5-03-0508', 'M.Sc CS '),
('13-500-5-03-0509', 'M.Sc CS '),
('13-500-5-03-0511', 'M.Sc CS '),
('13-500-5-03-0519', 'M.Sc CS '),
('13-500-5-03-0521', 'M.Sc CS '),
('13-500-5-03-0524', 'M.Sc CS '),
('13-500-5-03-0529', 'M.Sc CS '),
('13-500-5-03-0535', 'M.Sc CS '),
('13-500-5-03-0537', 'M.Sc CS '),
('13-500-5-03-0542', 'M.Sc CS '),
('13-500-5-03-0544', 'M.Sc CS '),
('13-500-5-03-0556', 'M.Sc CS '),
('13-500-5-03-0558', 'M.Sc CS '),
('13-500-5-03-0560', 'M.Sc CS '),
('13-500-5-03-0564', 'M.Sc CS '),
('13-500-5-03-0566', 'M.Sc CS '),
('13-500-5-03-0574', 'M.Sc CS '),
('13-500-5-03-0575', 'M.Sc CS '),
('13-500-5-03-0576', 'M.Sc CS '),
('13-500-5-03-0577', 'M.Sc CS '),
('13-500-5-03-0587', 'M.Sc CS '),
('13-500-5-03-0592', 'M.Sc CS '),
('13-500-5-03-0593', 'M.Sc CS '),
('13-500-5-03-0596', 'M.Sc CS ');

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
('12-300-4-02-0509', 'C11', 330000, 'SALES ENGINEER '),
('12-300-4-02-0529', 'C12', 500000, 'TECH CONSULTANT '),
('12-300-4-02-0535', 'C05', 440000, 'AI DEVELOPER'),
('12-300-4-02-0536', 'C10', 400000, 'TECH CONSULTANT '),
('12-300-4-02-0543', 'C12', 480000, 'SALES ENGINEER '),
('12-300-4-02-0558', 'C10', 450000, 'SYSTEM ANALYST'),
('12-300-4-02-0590', 'C09', 300000, 'SOFTWARE DEVELOPER'),
('13-500-5-03-0501', 'C02', 450000, 'TECH CONSULTANT '),
('13-500-5-03-0503', 'C12', 440000, 'AI DEVELOPER'),
('13-500-5-03-0505', 'C13', 600000, 'SALES ENGINEER '),
('13-500-5-03-0508', 'C04', 600000, 'TECH CONSULTANT '),
('13-500-5-03-0519', 'C05', 450000, 'SYSTEM ANALYST'),
('13-500-5-03-0521', 'C19', 330000, 'SALES ENGINEER '),
('13-500-5-03-0524', 'C05', 450000, 'SYSTEM ANALYST'),
('13-500-5-03-0535', 'C19', 330000, 'SALES ENGINEER '),
('13-500-5-03-0537', 'C10', 480000, 'SALES ENGINEER '),
('13-500-5-03-0544', 'C03', 500000, 'WEB DEVELOPER '),
('13-500-5-03-0556', 'C12', 500000, 'TECH CONSULTANT '),
('13-500-5-03-0564', 'C12', 440000, 'AI DEVELOPER'),
('13-500-5-03-0566', 'C10', 480000, 'SALES ENGINEER '),
('13-500-5-03-0574', 'C06', 450000, 'SECURITY ANALYST'),
('13-500-5-03-0576', 'C12', 600000, 'WEB DEVELOPER '),
('13-500-5-03-0587', 'C02', 400000, 'SOFTWARE DEVELOPER'),
('13-500-5-03-0593', 'C12', 600000, 'WEB DEVELOPER ');

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
('12-300-4-02-0501', 'Yes'),
('12-300-4-02-0505', 'Yes'),
('12-300-4-02-0506', 'No'),
('12-300-4-02-0509', 'Yes'),
('12-300-4-02-0511', 'Yes'),
('12-300-4-02-0525', 'Yes'),
('12-300-4-02-0528', 'Yes'),
('12-300-4-02-0529', 'Yes'),
('12-300-4-02-0532', 'Yes'),
('12-300-4-02-0535', 'Yes'),
('12-300-4-02-0536', 'Yes'),
('12-300-4-02-0539', 'Yes'),
('12-300-4-02-0540', 'No'),
('12-300-4-02-0543', 'Yes'),
('12-300-4-02-0546', 'Yes'),
('12-300-4-02-0548', 'Yes'),
('12-300-4-02-0553', 'Yes'),
('12-300-4-02-0556', 'Yes'),
('12-300-4-02-0558', 'Yes'),
('12-300-4-02-0559', 'No'),
('12-300-4-02-0564', 'Yes'),
('12-300-4-02-0574', 'No'),
('12-300-4-02-0575', 'Yes'),
('12-300-4-02-0582', 'Yes'),
('12-300-4-02-0586', 'Yes'),
('12-300-4-02-0590', 'Yes'),
('12-300-4-02-0595', 'Yes'),
('13-500-5-03-0501', 'Yes'),
('13-500-5-03-0503', 'Yes'),
('13-500-5-03-0505', 'Yes'),
('13-500-5-03-0508', 'Yes'),
('13-500-5-03-0509', 'Yes'),
('13-500-5-03-0511', 'Yes'),
('13-500-5-03-0519', 'Yes'),
('13-500-5-03-0521', 'Yes'),
('13-500-5-03-0524', 'Yes'),
('13-500-5-03-0529', 'Yes'),
('13-500-5-03-0535', 'Yes'),
('13-500-5-03-0537', 'Yes'),
('13-500-5-03-0542', 'Yes'),
('13-500-5-03-0544', 'Yes'),
('13-500-5-03-0556', 'Yes'),
('13-500-5-03-0558', 'Yes'),
('13-500-5-03-0560', 'Yes'),
('13-500-5-03-0564', 'Yes'),
('13-500-5-03-0566', 'Yes'),
('13-500-5-03-0574', 'Yes'),
('13-500-5-03-0575', 'Yes'),
('13-500-5-03-0576', 'Yes'),
('13-500-5-03-0577', 'Yes'),
('13-500-5-03-0587', 'Yes'),
('13-500-5-03-0592', 'Yes'),
('13-500-5-03-0593', 'Yes'),
('13-500-5-03-0596', 'No');

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
('12-300-4-02-0501', 'Yorgos Ingarfill', 'yingarfillw@youtube.com', 7),
('12-300-4-02-0505', 'Jo ann Muckle', 'janng@freewebs.com', 7.56),
('12-300-4-02-0506', 'Hyman McKevany', 'hmckevanya@cbsnews.com', 9.78),
('12-300-4-02-0509', 'Hube Savatier', 'hsavatier1@mashable.com', 7.62),
('12-300-4-02-0511', 'Thorpe Twidle', 'ttwidlet@cornell.edu', 8.77),
('12-300-4-02-0525', 'Carolin Rosso', 'crossoo@nifty.com', 6.48),
('12-300-4-02-0528', 'Cordey Pittle', 'cpittleq@webs.com', 8.51),
('12-300-4-02-0529', 'Gunilla Borton', 'gbortonz@admin.ch', 7.21),
('12-300-4-02-0532', 'Clerissa Bound', 'cboundn@macromedia.com', 6.72),
('12-300-4-02-0535', 'Minetta Lampaert', 'mlampaert3@un.org', 8.27),
('12-300-4-02-0536', 'Rebekkah Plom', 'rplom5@google.fr', 8.06),
('12-300-4-02-0539', 'Gavrielle Capozzi', 'gcapozzij@loc.gov', 6.79),
('12-300-4-02-0540', 'Ellissa Breache', 'ebreachec@nature.com', 8.56),
('12-300-4-02-0543', 'Callean Adnams', 'cadnams2@zimbio.com', 8.62),
('12-300-4-02-0546', 'Jock Keyden', 'jkeydenl@walmart.com', 8.56),
('12-300-4-02-0548', 'Waylen Dalgliesh', 'wdalglieshf@google.ru', 7.47),
('12-300-4-02-0553', 'Agnese Larrington', 'alarringtoni@jimdo.com', 6.77),
('12-300-4-02-0556', 'Daryl Maroney', 'dmaroneyr@nih.gov', 6.34),
('12-300-4-02-0558', 'Elsy Gouley', 'egouley0@usa.gov', 9.01),
('12-300-4-02-0559', 'Reynold Dablin', 'rdablin7@bing.com', 8.53),
('12-300-4-02-0564', 'Larine Crosby', 'lcrosbyp@twitpic.com', 7.41),
('12-300-4-02-0574', 'Reider Cardenas', 'rcardenasd@latimes.com', 6.95),
('12-300-4-02-0575', 'Melina Bimson', 'mbimsonh@4shared.com', 9.06),
('12-300-4-02-0582', 'Jessalyn Follan', 'jfollanx@liveinternet.ru', 6.03),
('12-300-4-02-0586', 'Guinna Cahn', 'gcahnk@skyrock.com', 8.52),
('12-300-4-02-0590', 'Dov Hyde', 'dhyde4@reuters.com', 9.29),
('12-300-4-02-0595', 'Seward Pember', 'spembery@list-manage.com', 6.21),
('13-500-5-03-0501', 'Butch Minghetti', 'bminghettio@simplemachines.org', 9.49),
('13-500-5-03-0503', 'Kris Erickson', 'kericksonl@cpanel.net', 6.75),
('13-500-5-03-0505', 'Brit Matousek', 'bmatousekq@slate.com', 6.96),
('13-500-5-03-0508', 'Riobard Udy', 'rudy8@ucoz.com', 8.57),
('13-500-5-03-0509', 'Elbertina McReath', 'emcreath6@hubpages.com', 7.37),
('13-500-5-03-0511', 'Reynolds Jeandin', 'rjeandinc@cdbaby.com', 9.28),
('13-500-5-03-0519', 'Caitrin Semechik', 'csemechiki@xrea.com', 9.53),
('13-500-5-03-0521', 'Hallie Peatheyjohns', 'hpeatheyjohns2@desdev.cn', 6.17),
('13-500-5-03-0524', 'Neall Hensmans', 'nhensmans1@marketwatch.com', 8.98),
('13-500-5-03-0529', 'Ilyse Umbert', 'iumbertm@noaa.gov', 8.85),
('13-500-5-03-0535', 'Norbert Jehaes', 'njehaesj@exblog.jp', 7.67),
('13-500-5-03-0537', 'Susan Macias', 'smaciask@chron.com', 6.67),
('13-500-5-03-0542', 'Liva Sowerbutts', 'lsowerbuttse@va.gov', 9.31),
('13-500-5-03-0544', 'Palm Everson', 'peversonp@google.nl', 7.15),
('13-500-5-03-0556', 'Michaelina Prater', 'mpraterg@i2i.jp', 8.38),
('13-500-5-03-0558', 'Eugenius Oxe', 'eoxea@geocities.com', 6.26),
('13-500-5-03-0560', 'Rene Wilber', 'rwilberf@dion.ne.jp', 7.8),
('13-500-5-03-0564', 'Danyelle Eastwood', 'deastwood4@wisc.edu', 9.95),
('13-500-5-03-0566', 'Fiorenze Lindenfeld', 'flindenfeld3@goo.gl', 7.43),
('13-500-5-03-0574', 'Johnath Yackiminie', 'jyackiminie5@tripod.com', 6.03),
('13-500-5-03-0575', 'Katee Herrieven', 'kherrievenb@webeden.co.uk', 6.8),
('13-500-5-03-0576', 'Clarinda Playfair', 'cplayfairh@ow.ly', 8.49),
('13-500-5-03-0577', 'Hasheem Mapstone', 'hmapstone7@oaic.gov.au', 8.19),
('13-500-5-03-0587', 'Joe Armstead', 'jarmsteadn@elegantthemes.com', 8.57),
('13-500-5-03-0592', 'Abigail Cabel', 'acabel9@wiley.com', 6.98),
('13-500-5-03-0593', 'Reuven Shermar', 'rshermar0@ameblo.jp', 6.27),
('13-500-5-03-0596', 'Calypso Vyel', 'cvyeld@google.de', 8.73);

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
