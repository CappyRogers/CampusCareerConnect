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
-- Database: `yop2018`
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
('C20', 'Apple'),
('C21', 'Samsung'),
('C22', 'Oneplus'),
('C23', 'HDFC Bank');

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
('15-300-4-02-0500', 'B.Sc CS '),
('15-300-4-02-0502', 'B.Sc CS '),
('15-300-4-02-0507', 'B.Sc CS '),
('15-300-4-02-0511', 'B.Sc CS '),
('15-300-4-02-0514', 'B.Sc CS '),
('15-300-4-02-0522', 'B.Sc CS '),
('15-300-4-02-0524', 'B.Sc CS '),
('15-300-4-02-0527', 'B.Sc CS '),
('15-300-4-02-0529', 'B.Sc CS '),
('15-300-4-02-0531', 'B.Sc CS '),
('15-300-4-02-0536', 'B.Sc CS '),
('15-300-4-02-0538', 'B.Sc CS '),
('15-300-4-02-0544', 'B.Sc CS '),
('15-300-4-02-0550', 'B.Sc CS '),
('15-300-4-02-0554', 'B.Sc CS '),
('15-300-4-02-0555', 'B.Sc CS '),
('15-300-4-02-0559', 'B.Sc CS '),
('15-300-4-02-0560', 'B.Sc CS '),
('15-300-4-02-0567', 'B.Sc CS '),
('15-300-4-02-0568', 'B.Sc CS '),
('15-300-4-02-0570', 'B.Sc CS '),
('15-300-4-02-0572', 'B.Sc CS '),
('15-300-4-02-0575', 'B.Sc CS '),
('15-300-4-02-0582', 'B.Sc CS '),
('15-300-4-02-0587', 'B.Sc CS '),
('15-300-4-02-0589', 'B.Sc CS '),
('15-300-4-02-0590', 'B.Sc CS '),
('15-300-4-02-0592', 'B.Sc CS '),
('15-300-4-02-0593', 'B.Sc CS '),
('15-300-4-02-0597', 'B.Sc CS '),
('15-300-4-02-0598', 'B.Sc CS '),
('16-500-5-03-0503', 'M.Sc CS '),
('16-500-5-03-0512', 'M.Sc CS '),
('16-500-5-03-0514', 'M.Sc CS '),
('16-500-5-03-0518', 'M.Sc CS '),
('16-500-5-03-0522', 'M.Sc CS '),
('16-500-5-03-0536', 'M.Sc CS '),
('16-500-5-03-0539', 'M.Sc CS '),
('16-500-5-03-0541', 'M.Sc CS '),
('16-500-5-03-0548', 'M.Sc CS '),
('16-500-5-03-0550', 'M.Sc CS '),
('16-500-5-03-0555', 'M.Sc CS '),
('16-500-5-03-0563', 'M.Sc CS '),
('16-500-5-03-0566', 'M.Sc CS '),
('16-500-5-03-0569', 'M.Sc CS '),
('16-500-5-03-0572', 'M.Sc CS '),
('16-500-5-03-0574', 'M.Sc CS '),
('16-500-5-03-0575', 'M.Sc CS '),
('16-500-5-03-0584', 'M.Sc CS '),
('16-500-5-03-0589', 'M.Sc CS '),
('16-500-5-03-0592', 'M.Sc CS '),
('16-500-5-03-0596', 'M.Sc CS '),
('16-500-5-03-0598', 'M.Sc CS ');

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
('15-300-4-02-0500', 'C13', 900000, 'Software Engineer'),
('15-300-4-02-0502', 'C10', 450000, 'AI DEVELOPER'),
('15-300-4-02-0507', 'C08', 600000, 'DATA SCIENTIST '),
('15-300-4-02-0514', 'C07', 330000, 'SALES ENGINEER '),
('15-300-4-02-0524', 'C04', 480000, 'ML ENGINEER '),
('15-300-4-02-0527', 'C23', 400000, 'AI DEVELOPER'),
('15-300-4-02-0529', 'C13', 450000, 'TECH CONSULTANT '),
('15-300-4-02-0531', 'C16', 450000, 'TECH CONSULTANT '),
('15-300-4-02-0536', 'C04', 460000, 'SOFTWARE ENGINEER '),
('15-300-4-02-0538', 'C12', 450000, 'SECURITY ANALYST'),
('15-300-4-02-0544', 'C05', 450000, 'IT DEVELOPER '),
('15-300-4-02-0550', 'C01', 440000, 'SALES ENGINEER '),
('15-300-4-02-0554', 'C04', 450000, 'WEB DEVELOPER '),
('15-300-4-02-0559', 'C04', 450000, 'WEB DEVELOPER '),
('15-300-4-02-0560', 'C04', 480000, 'ML ENGINEER '),
('15-300-4-02-0567', 'C01', 440000, 'SALES ENGINEER '),
('15-300-4-02-0568', 'C14', 450000, 'TECH CONSULTANT '),
('15-300-4-02-0570', 'C06', 450000, 'WEB DEVELOPER '),
('15-300-4-02-0575', 'C08', 500000, 'TECH CONSULTANT '),
('15-300-4-02-0582', 'C10', 450000, 'SECURITY ANALYST'),
('15-300-4-02-0587', 'C13', 500000, 'AI DEVELOPER '),
('15-300-4-02-0589', 'C13', 450000, 'AI DEVELOPER'),
('15-300-4-02-0590', 'C09', 550000, 'IT CONSULTANT'),
('15-300-4-02-0592', 'C01', 600000, 'TECH CONSULTANT '),
('15-300-4-02-0593', 'C16', 450000, 'TECH CONSULTANT '),
('15-300-4-02-0597', 'C09', 450000, 'SOFTWARE DEVELOPER'),
('15-300-4-02-0598', 'C15', 330000, 'AI DEVELOPER '),
('16-500-5-03-0514', 'C09', 480000, 'TECH CONSULTANT'),
('16-500-5-03-0522', 'C23', 580000, 'SECURITY ANALYST'),
('16-500-5-03-0541', 'C13', 560000, 'TECH CONSULTANT'),
('16-500-5-03-0548', 'C06', 380000, 'SYSTEM ANALYST'),
('16-500-5-03-0566', 'C01', 480000, 'TECH CONSULTANT'),
('16-500-5-03-0569', 'C16', 500000, 'AI DEVELOPER'),
('16-500-5-03-0589', 'C04', 420000, 'AI DEVELOPER'),
('16-500-5-03-0592', 'C13', 490000, 'TECH CONSULTANT'),
('16-500-5-03-0598', 'C09', 480000, 'TECH CONSULTANT');

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
('15-300-4-02-0500', 'Yes'),
('15-300-4-02-0502', 'Yes'),
('15-300-4-02-0507', 'Yes'),
('15-300-4-02-0511', 'Yes'),
('15-300-4-02-0514', 'Yes'),
('15-300-4-02-0522', 'No'),
('15-300-4-02-0524', 'Yes'),
('15-300-4-02-0527', 'Yes'),
('15-300-4-02-0529', 'Yes'),
('15-300-4-02-0531', 'Yes'),
('15-300-4-02-0536', 'Yes'),
('15-300-4-02-0538', 'Yes'),
('15-300-4-02-0544', 'Yes'),
('15-300-4-02-0550', 'Yes'),
('15-300-4-02-0554', 'Yes'),
('15-300-4-02-0555', 'Yes'),
('15-300-4-02-0559', 'Yes'),
('15-300-4-02-0560', 'Yes'),
('15-300-4-02-0567', 'Yes'),
('15-300-4-02-0568', 'Yes'),
('15-300-4-02-0570', 'Yes'),
('15-300-4-02-0572', 'Yes'),
('15-300-4-02-0575', 'Yes'),
('15-300-4-02-0582', 'Yes'),
('15-300-4-02-0587', 'Yes'),
('15-300-4-02-0589', 'Yes'),
('15-300-4-02-0590', 'Yes'),
('15-300-4-02-0592', 'Yes'),
('15-300-4-02-0593', 'Yes'),
('15-300-4-02-0597', 'Yes'),
('15-300-4-02-0598', 'Yes'),
('16-500-5-03-0503', 'Yes'),
('16-500-5-03-0512', 'Yes'),
('16-500-5-03-0514', 'Yes'),
('16-500-5-03-0518', 'Yes'),
('16-500-5-03-0522', 'Yes'),
('16-500-5-03-0536', 'Yes'),
('16-500-5-03-0539', 'Yes'),
('16-500-5-03-0541', 'Yes'),
('16-500-5-03-0548', 'Yes'),
('16-500-5-03-0550', 'Yes'),
('16-500-5-03-0555', 'Yes'),
('16-500-5-03-0563', 'Yes'),
('16-500-5-03-0566', 'Yes'),
('16-500-5-03-0569', 'Yes'),
('16-500-5-03-0572', 'Yes'),
('16-500-5-03-0574', 'No'),
('16-500-5-03-0575', 'Yes'),
('16-500-5-03-0584', 'Yes'),
('16-500-5-03-0589', 'Yes'),
('16-500-5-03-0592', 'Yes'),
('16-500-5-03-0596', 'No'),
('16-500-5-03-0598', 'Yes');

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
('15-300-4-02-0500', 'George Goodbarr', 'ggoodbarrt@cnbc.com', 6.64),
('15-300-4-02-0502', 'Turner Bilbrooke', 'tbilbrooke9@marriott.com', 9.34),
('15-300-4-02-0507', 'Margeaux Guntrip', 'mguntrip2@ezinearticles.com', 6.04),
('15-300-4-02-0511', 'Isabelle Ewbanche', 'iewbanchez@360.cn', 7.34),
('15-300-4-02-0514', 'Sherye Bagot', 'sbagotf@rakuten.co.jp', 9.21),
('15-300-4-02-0522', 'Gail Goundsy', 'ggoundsyn@sun.com', 6.82),
('15-300-4-02-0524', 'Rosie Arnaldy', 'rarnaldyh@accuweather.com', 8.67),
('15-300-4-02-0527', 'Sanford Subhan', 'ssubhani@cloudflare.com', 7.06),
('15-300-4-02-0529', 'Dore Ditt', 'dditt6@theatlantic.com', 8.29),
('15-300-4-02-0531', 'Krishna Guswell', 'kguswell3@reuters.com', 6.82),
('15-300-4-02-0536', 'Biron Tearney', 'btearney0@creativecommons.org', 6.11),
('15-300-4-02-0538', 'Dominga Ogglebie', 'dogglebie8@ezinearticles.com', 8.56),
('15-300-4-02-0544', 'Kingston Diego', 'kdiegoa@1688.com', 7.51),
('15-300-4-02-0550', 'Robby Page', 'rpagey@cnbc.com', 7.78),
('15-300-4-02-0554', 'Wallache Keeri', 'wkeeril@github.com', 7.42),
('15-300-4-02-0555', 'Sutherland Renvoys', 'srenvoysv@woothemes.com', 6.87),
('15-300-4-02-0559', 'Shell Corey', 'scoreym@nifty.com', 7.47),
('15-300-4-02-0560', 'Franky MacConneely', 'fmacconneelyg@parallels.com', 7.67),
('15-300-4-02-0567', 'Christabella Stronough', 'cstronoughx@bizjournals.com', 6.18),
('15-300-4-02-0568', 'Rosanne Wroughton', 'rwroughton5@meetup.com', 6.8),
('15-300-4-02-0570', 'Everard Rayne', 'eraynee@people.com.cn', 7.83),
('15-300-4-02-0572', 'Rockie Chree', 'rchrees@upenn.edu', 8.82),
('15-300-4-02-0575', 'Selene Whorf', 'swhorfk@gizmodo.com', 6.73),
('15-300-4-02-0582', 'Killy Phear', 'kphearq@youku.com', 7.44),
('15-300-4-02-0587', 'Bibby Reany', 'breanyc@cloudflare.com', 7.75),
('15-300-4-02-0589', 'Kennan Di Angelo', 'kdib@mapy.cz', 7.21),
('15-300-4-02-0590', 'Eldredge Glynn', 'eglynn1@trellian.com', 8.93),
('15-300-4-02-0592', 'Emlynn Sprott', 'esprottd@reverbnation.com', 6.19),
('15-300-4-02-0593', 'Kleon Gissing', 'kgissing4@intel.com', 8.59),
('15-300-4-02-0597', 'Burton Bellon', 'bbellonj@aol.com', 9.02),
('15-300-4-02-0598', 'Consolata Weetch', 'cweetcho@soundcloud.com', 7.69),
('16-500-5-03-0503', 'Brear Snoddin', 'bsnoddinc@aboutads.info', 8.61),
('16-500-5-03-0512', 'Edmund Longthorne', 'elongthorneb@i2i.jp', 8.02),
('16-500-5-03-0514', 'Cassius Coatham', 'ccoathamg@ox.ac.uk', 6),
('16-500-5-03-0518', 'Saxe Hulks', 'shulks3@stumbleupon.com', 7.41),
('16-500-5-03-0522', 'Coleman Charlon', 'ccharlono@spiegel.de', 6.61),
('16-500-5-03-0536', 'Davey Jaram', 'djaramd@reddit.com', 9.11),
('16-500-5-03-0539', 'Weidar Isson', 'wisson6@nhs.uk', 9.84),
('16-500-5-03-0541', 'Lyndel Marris', 'lmarrisn@acquirethisname.com', 6.47),
('16-500-5-03-0548', 'Ilka Ranaghan', 'iranaghani@t-online.de', 8.5),
('16-500-5-03-0550', 'Melissa Boustead', 'mboustead1@netvibes.com', 6.7),
('16-500-5-03-0555', 'Ahmad Bance', 'abance2@goo.gl', 6.16),
('16-500-5-03-0563', 'Jess Starkey', 'jstarkey8@google.cn', 6.09),
('16-500-5-03-0566', 'Edd Schneider', 'eschneidere@spotify.com', 9.95),
('16-500-5-03-0569', 'Gracia Cuddehay', 'gcuddehayf@youku.com', 6.2),
('16-500-5-03-0572', 'Ev Shottin', 'eshottin7@globo.com', 9.42),
('16-500-5-03-0574', 'Perry Bratch', 'pbratcha@weibo.com', 8.52),
('16-500-5-03-0575', 'Nickie Chatterton', 'nchatterton5@icio.us', 7.4),
('16-500-5-03-0584', 'Ingemar Blowfelde', 'iblowfelde0@admin.ch', 7.22),
('16-500-5-03-0589', 'Joey Vasilic', 'jvasilicj@nps.gov', 9.96),
('16-500-5-03-0592', 'Wright Bernardos', 'wbernardosk@dailymotion.com', 9.9),
('16-500-5-03-0596', 'Wren Davidge', 'wdavidge9@wix.com', 6.62),
('16-500-5-03-0598', 'Krishnah Jelley', 'kjelleyh@edublogs.org', 6.83);

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
