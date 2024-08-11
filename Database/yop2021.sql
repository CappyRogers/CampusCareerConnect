-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 05:45 PM
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
-- Database: `yop2021`
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
('18-300-4-02-0518', 'B.Sc CS '),
('18-300-4-02-0522', 'B.Sc CS '),
('18-300-4-02-0525', 'B.Sc CS '),
('18-300-4-02-0527', 'B.Sc CS '),
('18-300-4-02-0528', 'B.Sc CS '),
('18-300-4-02-0533', 'B.Sc CS '),
('18-300-4-02-0534', 'B.Sc CS '),
('18-300-4-02-0536', 'B.Sc CS '),
('18-300-4-02-0537', 'B.Sc CS '),
('18-300-4-02-0538', 'B.Sc CS '),
('18-300-4-02-0541', 'B.Sc CS '),
('18-300-4-02-0542', 'B.Sc CS '),
('18-300-4-02-0546', 'B.Sc CS '),
('18-300-4-02-0548', 'B.Sc CS '),
('18-300-4-02-0552', 'B.Sc CS '),
('18-300-4-02-0553', 'B.Sc CS '),
('18-300-4-02-0557', 'B.Sc CS '),
('18-300-4-02-0561', 'B.Sc CS '),
('18-300-4-02-0562', 'B.Sc CS '),
('18-300-4-02-0564', 'B.Sc CS '),
('18-300-4-02-0568', 'B.Sc CS '),
('18-300-4-02-0569', 'B.Sc CS '),
('18-300-4-02-0571', 'B.Sc CS '),
('18-300-4-02-0573', 'B.Sc CS '),
('18-300-4-02-0581', 'B.Sc CS '),
('18-300-4-02-0584', 'B.Sc CS '),
('18-300-4-02-0588', 'B.Sc CS '),
('18-300-4-02-0591', 'B.Sc CS '),
('18-300-4-02-0593', 'B.Sc CS '),
('19-500-5-03-0500', 'M.Sc CS '),
('19-500-5-03-0502', 'M.Sc CS '),
('19-500-5-03-0505', 'M.Sc CS '),
('19-500-5-03-0508', 'M.Sc CS '),
('19-500-5-03-0514', 'M.Sc CS '),
('19-500-5-03-0516', 'M.Sc CS '),
('19-500-5-03-0521', 'M.Sc CS '),
('19-500-5-03-0523', 'M.Sc CS '),
('19-500-5-03-0526', 'M.Sc CS '),
('19-500-5-03-0527', 'M.Sc CS '),
('19-500-5-03-0528', 'M.Sc CS '),
('19-500-5-03-0530', 'M.Sc CS '),
('19-500-5-03-0533', 'M.Sc CS '),
('19-500-5-03-0535', 'M.Sc CS '),
('19-500-5-03-0545', 'M.Sc CS '),
('19-500-5-03-0547', 'M.Sc CS '),
('19-500-5-03-0548', 'M.Sc CS '),
('19-500-5-03-0550', 'M.Sc CS '),
('19-500-5-03-0553', 'M.Sc CS '),
('19-500-5-03-0557', 'M.Sc CS '),
('19-500-5-03-0559', 'M.Sc CS '),
('19-500-5-03-0565', 'M.Sc CS '),
('19-500-5-03-0568', 'M.Sc CS '),
('19-500-5-03-0575', 'M.Sc CS '),
('19-500-5-03-0586', 'M.Sc CS '),
('19-500-5-03-0599', 'M.Sc CS ');

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
('18-300-4-02-0522', 'C12', 600000, 'SALES ENGINEER '),
('18-300-4-02-0525', 'C03', 500000, 'WEB DEVELOPER '),
('18-300-4-02-0527', 'C14', 450000, 'SECURITY ANALYST'),
('18-300-4-02-0533', 'C12', 480000, 'SALES ENGINEER '),
('18-300-4-02-0534', 'C15', 600000, 'TECH CONSULTANT '),
('18-300-4-02-0536', 'C04', 480000, 'AI DEVELOPER'),
('18-300-4-02-0537', 'C12', 330000, 'SALES ENGINEER '),
('18-300-4-02-0538', 'C13', 600000, 'SALES ENGINEER '),
('18-300-4-02-0542', 'C05', 600000, 'WEB DEVELOPER '),
('18-300-4-02-0546', 'C07', 550000, 'ML ENGINEER '),
('18-300-4-02-0548', 'C06', 500000, 'SOFTWARE DEVELOPER'),
('18-300-4-02-0557', 'C12', 600000, 'SALES ENGINEER '),
('18-300-4-02-0561', 'C14', 450000, 'SECURITY ANALYST'),
('18-300-4-02-0562', 'C06', 450000, 'AI DEVELOPER'),
('18-300-4-02-0564', 'C14', 450000, 'SECURITY ANALYST'),
('18-300-4-02-0568', 'C02', 450000, 'TECH CONSULTANT '),
('18-300-4-02-0569', 'C09', 500000, 'TECH CONSULTANT '),
('18-300-4-02-0571', 'C01', 450000, 'WEB DEVELOPER '),
('18-300-4-02-0573', 'C01', 450000, 'AI DEVELOPER'),
('18-300-4-02-0581', 'C10', 450000, 'SYSTEM ANALYST'),
('18-300-4-02-0584', 'C05', 440000, 'AI DEVELOPER'),
('18-300-4-02-0588', 'C07', 400000, 'AI DEVELOPER'),
('18-300-4-02-0591', 'C02', 400000, 'SOFTWARE DEVELOPER'),
('18-300-4-02-0593', 'C01', 330000, 'SALES ENGINEER '),
('19-500-5-03-0500', 'C05', 400000, 'AI DEVELOPER'),
('19-500-5-03-0502', 'C12', 600000, 'WEB DEVELOPER '),
('19-500-5-03-0505', 'C13', 400000, 'SOFTWARE DEVELOPER'),
('19-500-5-03-0514', 'C06', 450000, 'SECURITY ANALYST'),
('19-500-5-03-0516', 'C13', 450000, 'AI DEVELOPER'),
('19-500-5-03-0521', 'C04', 600000, 'TECH CONSULTANT '),
('19-500-5-03-0526', 'C14', 500000, 'WEB DEVELOPER '),
('19-500-5-03-0530', 'C13', 480000, 'AI DEVELOPER'),
('19-500-5-03-0533', 'C06', 450000, 'SECURITY ANALYST'),
('19-500-5-03-0535', 'C01', 450000, 'AI DEVELOPER'),
('19-500-5-03-0545', 'C12', 440000, 'AI DEVELOPER'),
('19-500-5-03-0547', 'C14', 450000, 'TECH CONSULTANT '),
('19-500-5-03-0550', 'C10', 450000, 'SOFTWARE DEVELOPER'),
('19-500-5-03-0553', 'C12', 500000, 'TECH CONSULTANT '),
('19-500-5-03-0559', 'C10', 480000, 'SALES ENGINEER '),
('19-500-5-03-0565', 'C05', 450000, 'SYSTEM ANALYST'),
('19-500-5-03-0568', 'C06', 450000, 'SECURITY ANALYST'),
('19-500-5-03-0575', 'C01', 500000, 'SOFTWARE DEVELOPER'),
('19-500-5-03-0586', 'C17', 450000, 'WEB DEVELOPER '),
('19-500-5-03-0599', 'C17', 330000, 'SALES ENGINEER ');

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
('18-300-4-02-0518', 'No'),
('18-300-4-02-0522', 'Yes'),
('18-300-4-02-0525', 'Yes'),
('18-300-4-02-0527', 'Yes'),
('18-300-4-02-0528', 'Yes'),
('18-300-4-02-0533', 'Yes'),
('18-300-4-02-0534', 'Yes'),
('18-300-4-02-0536', 'Yes'),
('18-300-4-02-0537', 'Yes'),
('18-300-4-02-0538', 'Yes'),
('18-300-4-02-0541', 'Yes'),
('18-300-4-02-0542', 'Yes'),
('18-300-4-02-0546', 'Yes'),
('18-300-4-02-0548', 'Yes'),
('18-300-4-02-0552', 'No'),
('18-300-4-02-0553', 'Yes'),
('18-300-4-02-0557', 'Yes'),
('18-300-4-02-0561', 'Yes'),
('18-300-4-02-0562', 'Yes'),
('18-300-4-02-0564', 'Yes'),
('18-300-4-02-0568', 'Yes'),
('18-300-4-02-0569', 'Yes'),
('18-300-4-02-0571', 'Yes'),
('18-300-4-02-0573', 'Yes'),
('18-300-4-02-0581', 'Yes'),
('18-300-4-02-0584', 'Yes'),
('18-300-4-02-0588', 'Yes'),
('18-300-4-02-0591', 'Yes'),
('18-300-4-02-0593', 'Yes'),
('19-500-5-03-0500', 'Yes'),
('19-500-5-03-0502', 'Yes'),
('19-500-5-03-0505', 'Yes'),
('19-500-5-03-0508', 'Yes'),
('19-500-5-03-0514', 'Yes'),
('19-500-5-03-0516', 'Yes'),
('19-500-5-03-0521', 'Yes'),
('19-500-5-03-0523', 'Yes'),
('19-500-5-03-0526', 'Yes'),
('19-500-5-03-0527', 'Yes'),
('19-500-5-03-0528', 'No'),
('19-500-5-03-0530', 'Yes'),
('19-500-5-03-0533', 'Yes'),
('19-500-5-03-0535', 'Yes'),
('19-500-5-03-0545', 'Yes'),
('19-500-5-03-0547', 'Yes'),
('19-500-5-03-0548', 'Yes'),
('19-500-5-03-0550', 'Yes'),
('19-500-5-03-0553', 'Yes'),
('19-500-5-03-0557', 'No'),
('19-500-5-03-0559', 'Yes'),
('19-500-5-03-0565', 'Yes'),
('19-500-5-03-0568', 'Yes'),
('19-500-5-03-0575', 'Yes'),
('19-500-5-03-0586', 'Yes'),
('19-500-5-03-0599', 'Yes');

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
('18-300-4-02-0518', 'Dela Scala', 'descela@earthlink.net', 9.42),
('18-300-4-02-0522', 'Aristotle Ivanyushin', 'aivanyushinw@earthlink.net', 6.64),
('18-300-4-02-0525', 'Kelwin Olford', 'kolford3@example.com', 9.5),
('18-300-4-02-0527', 'Elayne Sarjent', 'esarjent7@g.co', 6.28),
('18-300-4-02-0528', 'Kevin Janodet', 'kjanodet13@cam.ac.uk', 6.19),
('18-300-4-02-0533', 'Kikelia Orum', 'korumr@google.es', 7.55),
('18-300-4-02-0534', 'Shelton Ballantine', 'sballantine18@geocities.jp', 7.37),
('18-300-4-02-0536', 'Kaja Boakes', 'kboakesg@timesonline.co.uk', 9.18),
('18-300-4-02-0537', 'Skye Hunday', 'shundayq@nytimes.com', 7.34),
('18-300-4-02-0538', 'Packston Kochlin', 'pkochlin4@kickstarter.com', 9.19),
('18-300-4-02-0541', 'Saw Storey', 'sstorey14@mediafire.com', 7.67),
('18-300-4-02-0542', 'Arlin Stuer', 'astuero@about.me', 6.4),
('18-300-4-02-0546', 'Bertram Whines', 'bwhines10@blogspot.com', 8.41),
('18-300-4-02-0548', 'Stillmann Limrick', 'slimrickb@netvibes.com', 9.42),
('18-300-4-02-0552', 'Caddric Brauninger', 'cbrauningerf@elpais.com', 7.19),
('18-300-4-02-0553', 'Leesa Harme', 'lharme15@virginia.edu', 8.6),
('18-300-4-02-0557', 'Fielding Longea', 'flongeax@mozilla.org', 8.55),
('18-300-4-02-0561', 'Janis Found', 'jfound5@china.com.cn', 9.21),
('18-300-4-02-0562', 'Weidar Room', 'wrooma@macromedia.com', 8.7),
('18-300-4-02-0564', 'Aloise Acory', 'aacory9@thetimes.co.uk', 7.21),
('18-300-4-02-0568', 'Kris Schruur', 'kschruur2@shinystat.com', 7.87),
('18-300-4-02-0569', 'Bat Cockaday', 'bcockadayn@goo.ne.jp', 9.11),
('18-300-4-02-0571', 'Arnie Blakeney', 'ablakeneyd@biblegateway.com', 6.5),
('18-300-4-02-0573', 'Gisela Benard', 'gbenard0@wikipedia.org', 8.88),
('18-300-4-02-0581', 'Janis Kurt', 'jkurtp@desdev.cn', 9.47),
('18-300-4-02-0584', 'Alyss Kenn', 'akenn12@marketwatch.com', 9.39),
('18-300-4-02-0588', 'Waldemar Ellsom', 'wellsomj@spiegel.de', 9.1),
('18-300-4-02-0591', 'Luca Haselgrove', 'lhaselgrove1@umich.edu', 9.16),
('18-300-4-02-0593', 'Pascale Wapol', 'pwapole@ft.com', 6.37),
('19-500-5-03-0500', 'Lindi Milkeham', 'lmilkehamk@fema.gov', 9.52),
('19-500-5-03-0502', 'Shepperd Leal', 'slealo@nhs.uk', 7.23),
('19-500-5-03-0505', 'Cleon Bettleson', 'cbettleson1@imageshack.us', 6.02),
('19-500-5-03-0508', 'Ginnie Mummery', 'gmummery4@wufoo.com', 6.86),
('19-500-5-03-0514', 'Cyndie Latchmore', 'clatchmore7@vk.com', 6.63),
('19-500-5-03-0516', 'Gauthier Ludl', 'gludl0@prweb.com', 9.52),
('19-500-5-03-0521', 'Hiram Boribal', 'hboribalf@about.com', 6.1),
('19-500-5-03-0523', 'Hyacinthia Egerton', 'hegertonj@php.net', 9.66),
('19-500-5-03-0526', 'Odell Spohrmann', 'ospohrmann3@issuu.com', 6.48),
('19-500-5-03-0527', 'Hewett Selman', 'hselman5@ehow.com', 7.46),
('19-500-5-03-0528', 'Christin De Cleen', 'cder@wikipedia.org', 9.05),
('19-500-5-03-0530', 'Ofella Daulton', 'odaultoni@reverbnation.com', 9.12),
('19-500-5-03-0533', 'Hamlin Starking', 'hstarkingd@wsj.com', 8.28),
('19-500-5-03-0535', 'Avis Capaldo', 'acapaldoa@tiny.cc', 6.59),
('19-500-5-03-0545', 'Guglielma Safhill', 'gsafhillt@wired.com', 6.54),
('19-500-5-03-0547', 'Marylynne Stocker', 'mstocker2@tinyurl.com', 6.17),
('19-500-5-03-0548', 'Fidelity Balsdon', 'fbalsdonq@cnn.com', 9.51),
('19-500-5-03-0550', 'Felicdad Gonzalo', 'fgonzalom@about.com', 9.75),
('19-500-5-03-0553', 'Costa Fergusson', 'cfergussonn@hhs.gov', 8.51),
('19-500-5-03-0557', 'Elfrida Pycock', 'epycock9@blogger.com', 8.9),
('19-500-5-03-0559', 'Celene Janak', 'cjanaks@twitpic.com', 7.49),
('19-500-5-03-0565', 'Darlene Blannin', 'dblanninp@latimes.com', 8.95),
('19-500-5-03-0568', 'Udall Pleace', 'upleace6@i2i.jp', 8.25),
('19-500-5-03-0575', 'Rogerio McIndoe', 'rmcindoeb@nyu.edu', 7.38),
('19-500-5-03-0586', 'Ddene Mangion', 'dmangiong@psu.edu', 6.72),
('19-500-5-03-0599', 'Cherin Allot', 'calloth@comcast.net', 8.43);

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
