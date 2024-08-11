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
-- Database: `yop2019`
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
('C16', 'Cognizant');

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
('16-300-4-02-0500', 'B.Sc CS'),
('16-300-4-02-0505', 'B.Sc CS'),
('16-300-4-02-0509', 'B.Sc CS'),
('16-300-4-02-0514', 'B.Sc CS'),
('16-300-4-02-0515', 'B.Sc CS'),
('16-300-4-02-0519', 'B.Sc CS'),
('16-300-4-02-0520', 'B.Sc CS'),
('16-300-4-02-0523', 'B.Sc CS'),
('16-300-4-02-0526', 'B.Sc CS'),
('16-300-4-02-0529', 'B.Sc CS'),
('16-300-4-02-0531', 'B.Sc CS'),
('16-300-4-02-0538', 'B.Sc CS'),
('16-300-4-02-0539', 'B.Sc CS'),
('16-300-4-02-0540', 'B.Sc CS'),
('16-300-4-02-0545', 'B.Sc CS'),
('16-300-4-02-0546', 'B.Sc CS'),
('16-300-4-02-0549', 'B.Sc CS'),
('16-300-4-02-0550', 'B.Sc CS'),
('16-300-4-02-0551', 'B.Sc CS'),
('16-300-4-02-0556', 'B.Sc CS'),
('16-300-4-02-0559', 'B.Sc CS'),
('16-300-4-02-0562', 'B.Sc CS'),
('16-300-4-02-0565', 'B.Sc CS'),
('16-300-4-02-0568', 'B.Sc CS'),
('16-300-4-02-0572', 'B.Sc CS'),
('16-300-4-02-0578', 'B.Sc CS'),
('16-300-4-02-0579', 'B.Sc CS'),
('16-300-4-02-0581', 'B.Sc CS'),
('16-300-4-02-0583', 'B.Sc CS'),
('16-300-4-02-0584', 'B.Sc CS'),
('16-300-4-02-0585', 'B.Sc CS'),
('16-300-4-02-0590', 'B.Sc CS'),
('16-300-4-02-0591', 'B.Sc CS'),
('16-300-4-02-0592', 'B.Sc CS'),
('16-300-4-02-0593', 'B.Sc CS'),
('16-300-4-02-0595', 'B.Sc CS'),
('16-300-4-02-0596', 'B.Sc CS'),
('17-500-5-03-0507', 'M.Sc CS'),
('17-500-5-03-0509', 'M.Sc CS'),
('17-500-5-03-0512', 'M.Sc CS'),
('17-500-5-03-0514', 'M.Sc CS'),
('17-500-5-03-0517', 'M.Sc CS'),
('17-500-5-03-0520', 'M.Sc CS'),
('17-500-5-03-0524', 'M.Sc CS'),
('17-500-5-03-0528', 'M.Sc CS'),
('17-500-5-03-0530', 'M.Sc CS'),
('17-500-5-03-0543', 'M.Sc CS'),
('17-500-5-03-0546', 'M.Sc CS'),
('17-500-5-03-0548', 'M.Sc CS'),
('17-500-5-03-0550', 'M.Sc CS'),
('17-500-5-03-0554', 'M.Sc CS'),
('17-500-5-03-0555', 'M.Sc CS'),
('17-500-5-03-0560', 'M.Sc CS'),
('17-500-5-03-0564', 'M.Sc CS'),
('17-500-5-03-0567', 'M.Sc CS'),
('17-500-5-03-0570', 'M.Sc CS'),
('17-500-5-03-0572', 'M.Sc CS'),
('17-500-5-03-0578', 'M.Sc CS'),
('17-500-5-03-0581', 'M.Sc CS'),
('17-500-5-03-0586', 'M.Sc CS'),
('17-500-5-03-0590', 'M.Sc CS'),
('17-500-5-03-0596', 'M.Sc CS');

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
('16-300-4-02-0500', 'C09', 500000, 'TECH CONSULTANT '),
('16-300-4-02-0505', 'C03', 500000, 'WEB DEVELOPER '),
('16-300-4-02-0509', 'C14', 450000, 'SECURITY ANALYST'),
('16-300-4-02-0515', 'C07', 550000, 'ML ENGINEER '),
('16-300-4-02-0519', 'C04', 480000, 'AI DEVELOPER'),
('16-300-4-02-0520', 'C10', 340000, 'SECURITY ANALYST'),
('16-300-4-02-0523', 'C12', 480000, 'SALES ENGINEER '),
('16-300-4-02-0526', 'C05', 600000, 'WEB DEVELOPER '),
('16-300-4-02-0529', 'C12', 450000, 'WEB DEVELOPER '),
('16-300-4-02-0531', 'C02', 400000, 'SOFTWARE DEVELOPER'),
('16-300-4-02-0538', 'C09', 580000, 'SOFTWARE DEVELOPER'),
('16-300-4-02-0539', 'C13', 450000, 'AI DEVELOPER'),
('16-300-4-02-0540', 'C06', 450000, 'AI DEVELOPER'),
('16-300-4-02-0545', 'C10', 450000, 'SYSTEM ANALYST'),
('16-300-4-02-0546', 'C07', 400000, 'AI DEVELOPER'),
('16-300-4-02-0550', 'C01', 450000, 'WEB DEVELOPER '),
('16-300-4-02-0551', 'C01', 330000, 'SALES ENGINEER '),
('16-300-4-02-0559', 'C14', 450000, 'SECURITY ANALYST'),
('16-300-4-02-0562', 'C06', 500000, 'SOFTWARE DEVELOPER'),
('16-300-4-02-0565', 'C12', 600000, 'SALES ENGINEER '),
('16-300-4-02-0568', 'C09', 300000, 'SOFTWARE DEVELOPER'),
('16-300-4-02-0572', 'C13', 600000, 'SALES ENGINEER '),
('16-300-4-02-0578', 'C10', 400000, 'TECH CONSULTANT '),
('16-300-4-02-0579', 'C02', 450000, 'TECH CONSULTANT '),
('16-300-4-02-0581', 'C07', 560000, 'ML ENGINEER '),
('16-300-4-02-0583', 'C13', 450000, 'SOFTWARE DEVELOPER'),
('16-300-4-02-0584', 'C14', 450000, 'SECURITY ANALYST'),
('16-300-4-02-0585', 'C12', 330000, 'SALES ENGINEER '),
('16-300-4-02-0590', 'C12', 600000, 'SALES ENGINEER '),
('16-300-4-02-0591', 'C14', 450000, 'SECURITY ANALYST'),
('16-300-4-02-0592', 'C05', 440000, 'AI DEVELOPER'),
('16-300-4-02-0595', 'C15', 600000, 'TECH CONSULTANT '),
('16-300-4-02-0596', 'C01', 450000, 'AI DEVELOPER'),
('17-500-5-03-0507', 'C13', 480000, 'AI DEVELOPER'),
('17-500-5-03-0509', 'C14', 600000, 'SALES ENGINEER '),
('17-500-5-03-0512', 'C05', 400000, 'AI DEVELOPER'),
('17-500-5-03-0520', 'C01', 500000, 'SOFTWARE DEVELOPER'),
('17-500-5-03-0530', 'C06', 450000, 'SECURITY ANALYST'),
('17-500-5-03-0543', 'C12', 600000, 'WEB DEVELOPER '),
('17-500-5-03-0546', 'C14', 500000, 'WEB DEVELOPER '),
('17-500-5-03-0548', 'C05', 450000, 'SYSTEM ANALYST'),
('17-500-5-03-0550', 'C06', 450000, 'SECURITY ANALYST'),
('17-500-5-03-0555', 'C10', 480000, 'SALES ENGINEER '),
('17-500-5-03-0560', 'C04', 600000, 'TECH CONSULTANT '),
('17-500-5-03-0564', 'C01', 450000, 'AI DEVELOPER'),
('17-500-5-03-0567', 'C12', 440000, 'AI DEVELOPER'),
('17-500-5-03-0570', 'C12', 500000, 'TECH CONSULTANT '),
('17-500-5-03-0572', 'C06', 450000, 'SECURITY ANALYST'),
('17-500-5-03-0578', 'C13', 400000, 'SOFTWARE DEVELOPER'),
('17-500-5-03-0581', 'C14', 450000, 'TECH CONSULTANT '),
('17-500-5-03-0590', 'C06', 450000, 'SECURITY ANALYST'),
('17-500-5-03-0596', 'C10', 450000, 'SOFTWARE DEVELOPER');

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
('16-300-4-02-0500', 'Yes'),
('16-300-4-02-0505', 'Yes'),
('16-300-4-02-0509', 'Yes'),
('16-300-4-02-0514', 'No'),
('16-300-4-02-0515', 'Yes'),
('16-300-4-02-0519', 'Yes'),
('16-300-4-02-0520', 'Yes'),
('16-300-4-02-0523', 'Yes'),
('16-300-4-02-0526', 'Yes'),
('16-300-4-02-0529', 'Yes'),
('16-300-4-02-0531', 'Yes'),
('16-300-4-02-0538', 'Yes'),
('16-300-4-02-0539', 'Yes'),
('16-300-4-02-0540', 'Yes'),
('16-300-4-02-0545', 'Yes'),
('16-300-4-02-0546', 'Yes'),
('16-300-4-02-0549', 'No'),
('16-300-4-02-0550', 'Yes'),
('16-300-4-02-0551', 'Yes'),
('16-300-4-02-0556', 'No'),
('16-300-4-02-0559', 'Yes'),
('16-300-4-02-0562', 'Yes'),
('16-300-4-02-0565', 'Yes'),
('16-300-4-02-0568', 'Yes'),
('16-300-4-02-0572', 'Yes'),
('16-300-4-02-0578', 'Yes'),
('16-300-4-02-0579', 'Yes'),
('16-300-4-02-0581', 'Yes'),
('16-300-4-02-0583', 'Yes'),
('16-300-4-02-0584', 'Yes'),
('16-300-4-02-0585', 'Yes'),
('16-300-4-02-0590', 'Yes'),
('16-300-4-02-0591', 'Yes'),
('16-300-4-02-0592', 'Yes'),
('16-300-4-02-0593', 'No'),
('16-300-4-02-0595', 'Yes'),
('16-300-4-02-0596', 'Yes'),
('17-500-5-03-0507', 'Yes'),
('17-500-5-03-0509', 'Yes'),
('17-500-5-03-0512', 'Yes'),
('17-500-5-03-0514', 'No'),
('17-500-5-03-0517', 'No'),
('17-500-5-03-0520', 'Yes'),
('17-500-5-03-0524', 'Yes'),
('17-500-5-03-0528', 'Yes'),
('17-500-5-03-0530', 'Yes'),
('17-500-5-03-0543', 'Yes'),
('17-500-5-03-0546', 'Yes'),
('17-500-5-03-0548', 'Yes'),
('17-500-5-03-0550', 'Yes'),
('17-500-5-03-0554', 'Yes'),
('17-500-5-03-0555', 'Yes'),
('17-500-5-03-0560', 'Yes'),
('17-500-5-03-0564', 'Yes'),
('17-500-5-03-0567', 'Yes'),
('17-500-5-03-0570', 'Yes'),
('17-500-5-03-0572', 'Yes'),
('17-500-5-03-0578', 'Yes'),
('17-500-5-03-0581', 'Yes'),
('17-500-5-03-0586', 'Yes'),
('17-500-5-03-0590', 'Yes'),
('17-500-5-03-0596', 'Yes');

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
('16-300-4-02-0500', 'Nolan Lardge', 'nlardge14@alexa.com', 9.78),
('16-300-4-02-0501', 'Atul Khatri', 'atulkhatri@gmail.com', 9.4),
('16-300-4-02-0505', 'Vinny Tremblay', 'vtremblay6@intel.com', 7.61),
('16-300-4-02-0509', 'Shay Rabjohns', 'srabjohnsa@xinhuanet.com', 8.21),
('16-300-4-02-0514', 'Daveen Dannehl', 'ddannehl13@netscape.com', 8.28),
('16-300-4-02-0515', 'Gnni Kiledal', 'gkiledalj@dailymotion.com', 7.53),
('16-300-4-02-0519', 'Candace Faircley', 'cfaircleyi@stanford.edu', 8.49),
('16-300-4-02-0520', 'Mychal Bruun', 'mbruun2@xing.com', 7.23),
('16-300-4-02-0523', 'Darrel Stutter', 'dstuttert@theguardian.com', 7.66),
('16-300-4-02-0526', 'Gerick Chardin', 'gchardin15@barnesandnoble.com', 7.97),
('16-300-4-02-0529', 'Rance Bretelle', 'rbretellex@wp.com', 7.69),
('16-300-4-02-0531', 'Randie Watling', 'rwatling4@yellowbook.com', 7.97),
('16-300-4-02-0538', 'Grata Scholar', 'gscholar1@ed.gov', 6.81),
('16-300-4-02-0539', 'Silvie Pert', 'spert10@nps.gov', 6.25),
('16-300-4-02-0540', 'Juditha Dudliston', 'jdudlistond@dmoz.org', 9.45),
('16-300-4-02-0545', 'Sid Peiro', 'speiro16@dailymotion.com', 9.7),
('16-300-4-02-0546', 'Fanny Awdry', 'fawdryo@seesaa.net', 6.66),
('16-300-4-02-0549', 'Harmonia Gabits', 'hgabits9@illinois.edu', 7.12),
('16-300-4-02-0550', 'Waylin Cota', 'wcotag@histats.com', 7.7),
('16-300-4-02-0551', 'Florette Delucia', 'fdeluciah@list-manage.com', 9.53),
('16-300-4-02-0556', 'Hyatt Rookeby', 'hrookebyr@google.it', 8.88),
('16-300-4-02-0559', 'Gaylord Sparkwell', 'gsparkwellc@feedburner.com', 8.48),
('16-300-4-02-0562', 'Marv Fresson', 'mfressone@zdnet.com', 6.83),
('16-300-4-02-0565', 'Dino Kimmerling', 'dkimmerlingy@who.int', 9.18),
('16-300-4-02-0568', 'Alvera Overil', 'aoverilv@sphinn.com', 9.78),
('16-300-4-02-0572', 'Dacie Tunder', 'dtunder7@rambler.ru', 9.01),
('16-300-4-02-0578', 'Sasha Jansens', 'sjansensw@wufoo.com', 8.55),
('16-300-4-02-0579', 'North Lexa', 'nlexa5@bloglovin.com', 9.96),
('16-300-4-02-0581', 'Rafi Ferrieroi', 'rferrieroi0@bandcamp.com', 8.69),
('16-300-4-02-0583', 'Florance Knowlman', 'fknowlmanp@blogtalkradio.com', 9.37),
('16-300-4-02-0584', 'Eugenio Tebald', 'etebaldb@tripadvisor.com', 9.52),
('16-300-4-02-0585', 'Wildon Powderham', 'wpowderham18@1und1.de', 9.9),
('16-300-4-02-0590', 'Kellen Lafond', 'klafondz@seattletimes.com', 7.88),
('16-300-4-02-0591', 'Penrod Taylder', 'ptaylderl@purevolume.com', 6.03),
('16-300-4-02-0592', 'Ricardo Gallager', 'rgallageru@mapy.cz', 9.96),
('16-300-4-02-0593', 'Roslyn Halksworth', 'rhalksworthq@amazon.de', 6.42),
('16-300-4-02-0595', 'Karlyn Rupp', 'kruppf@whitehouse.gov', 8.56),
('16-300-4-02-0596', 'Sutherland Rowsel', 'srowsel3@thetimes.co.uk', 7.96),
('17-500-5-03-0507', 'Fanni Pala', 'fpalag@twitter.com', 9.9),
('17-500-5-03-0509', 'Bink Gillaspy', 'bgillaspy3@netvibes.com', 8.56),
('17-500-5-03-0512', 'Brittan Easom', 'beasomi@webnode.com', 7.26),
('17-500-5-03-0514', 'Emily Christofle', 'echristofles@meetup.com', 7.55),
('17-500-5-03-0517', 'Eamon Gilffillan', 'egilffillanb@furl.net', 8.11),
('17-500-5-03-0520', 'Arden Brugemann', 'abrugemannm@tamu.edu', 9.43),
('17-500-5-03-0524', 'Emmaline Ravillas', 'eravillasd@last.fm', 9.36),
('17-500-5-03-0528', 'Ursa Kilshall', 'ukilshallh@ucoz.com', 6.13),
('17-500-5-03-0530', 'Kirbee Dunne', 'kdunne5@dmoz.org', 9.63),
('17-500-5-03-0543', 'Torrey Wilber', 'twilbero@dyndns.org', 6.72),
('17-500-5-03-0546', 'Siward Lortz', 'slortz2@feedburner.com', 6.63),
('17-500-5-03-0548', 'Ferdie Cockshott', 'fcockshottp@yellowbook.com', 9.21),
('17-500-5-03-0550', 'Fran Dmitrienko', 'fdmitrienko4@adobe.com', 9.69),
('17-500-5-03-0554', 'Leona Riding', 'lridingj@addtoany.com', 9.94),
('17-500-5-03-0555', 'Joete Dorkens', 'jdorkensr@japanpost.jp', 7.26),
('17-500-5-03-0560', 'Hestia Cullon', 'hcullonc@samsung.com', 6.31),
('17-500-5-03-0564', 'Aubrey Elfitt', 'aelfitt9@wordpress.com', 9.18),
('17-500-5-03-0567', 'Emile Shord', 'eshordt@newsvine.com', 6.59),
('17-500-5-03-0570', 'Pearla de Mullett', 'pdek@hexun.com', 6.44),
('17-500-5-03-0572', 'Salaidh Copestick', 'scopestick8@studiopress.com', 6.1),
('17-500-5-03-0578', 'Alf Bampton', 'abampton0@wsj.com', 8.04),
('17-500-5-03-0581', 'Harriet Stonnell', 'hstonnell1@studiopress.com', 7.17),
('17-500-5-03-0586', 'Chuck Hairyes', 'chairyesq@opera.com', 7.91),
('17-500-5-03-0590', 'Daffy MacPaik', 'dmacpaik6@icio.us', 6.42),
('17-500-5-03-0596', 'Noe Matasov', 'nmatasovf@blogs.com', 6.41);

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
