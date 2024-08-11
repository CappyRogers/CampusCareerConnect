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
-- Database: `yop2017`
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
('C06', 'Google'),
('C07', 'IBM'),
('C08', 'TCS'),
('C09', 'EY GDS'),
('C10', 'Myntra'),
('C11', 'Delloite'),
('C12', 'Makemytrip'),
('C13', 'Goldman Sachs'),
('C14', 'DE Shaw');

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
('14-300-4-02-0500', 'B.Sc CS'),
('14-300-4-02-0507', 'B.Sc CS'),
('14-300-4-02-0508', 'B.Sc CS'),
('14-300-4-02-0512', 'B.Sc CS'),
('14-300-4-02-0516', 'B.Sc CS'),
('14-300-4-02-0519', 'B.Sc CS'),
('14-300-4-02-0520', 'B.Sc CS'),
('14-300-4-02-0521', 'B.Sc CS'),
('14-300-4-02-0524', 'B.Sc CS'),
('14-300-4-02-0525', 'B.Sc CS'),
('14-300-4-02-0526', 'B.Sc CS'),
('14-300-4-02-0528', 'B.Sc CS'),
('14-300-4-02-0535', 'B.Sc CS'),
('14-300-4-02-0540', 'B.Sc CS'),
('14-300-4-02-0541', 'B.Sc CS'),
('14-300-4-02-0544', 'B.Sc CS'),
('14-300-4-02-0547', 'B.Sc CS'),
('14-300-4-02-0548', 'B.Sc CS'),
('14-300-4-02-0550', 'B.Sc CS'),
('14-300-4-02-0551', 'B.Sc CS'),
('14-300-4-02-0552', 'B.Sc CS'),
('14-300-4-02-0553', 'B.Sc CS'),
('14-300-4-02-0557', 'B.Sc CS'),
('14-300-4-02-0560', 'B.Sc CS'),
('14-300-4-02-0564', 'B.Sc CS'),
('14-300-4-02-0565', 'B.Sc CS'),
('14-300-4-02-0568', 'B.Sc CS'),
('14-300-4-02-0569', 'B.Sc CS'),
('14-300-4-02-0572', 'B.Sc CS'),
('14-300-4-02-0573', 'B.Sc CS'),
('14-300-4-02-0574', 'B.Sc CS'),
('14-300-4-02-0577', 'B.Sc CS'),
('14-300-4-02-0578', 'B.Sc CS'),
('14-300-4-02-0584', 'B.Sc CS'),
('14-300-4-02-0587', 'B.Sc CS'),
('14-300-4-02-0592', 'B.Sc CS'),
('14-300-4-02-0593', 'B.Sc CS'),
('15-500-5-03-0500', 'M.Sc CS '),
('15-500-5-03-0501', 'M.Sc CS '),
('15-500-5-03-0512', 'M.Sc CS '),
('15-500-5-03-0520', 'M.Sc CS '),
('15-500-5-03-0525', 'M.Sc CS '),
('15-500-5-03-0533', 'M.Sc CS '),
('15-500-5-03-0534', 'M.Sc CS '),
('15-500-5-03-0545', 'M.Sc CS '),
('15-500-5-03-0546', 'M.Sc CS '),
('15-500-5-03-0547', 'M.Sc CS '),
('15-500-5-03-0548', 'M.Sc CS '),
('15-500-5-03-0549', 'M.Sc CS '),
('15-500-5-03-0552', 'M.Sc CS '),
('15-500-5-03-0553', 'M.Sc CS '),
('15-500-5-03-0554', 'M.Sc CS '),
('15-500-5-03-0555', 'M.Sc CS '),
('15-500-5-03-0560', 'M.Sc CS '),
('15-500-5-03-0561', 'M.Sc CS '),
('15-500-5-03-0563', 'M.Sc CS '),
('15-500-5-03-0570', 'M.Sc CS '),
('15-500-5-03-0572', 'M.Sc CS '),
('15-500-5-03-0573', 'M.Sc CS '),
('15-500-5-03-0574', 'M.Sc CS '),
('15-500-5-03-0599', 'M.Sc CS ');

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
('14-300-4-02-0507', 'C09', 580000, 'SOFTWARE DEVELOPER'),
('14-300-4-02-0508', 'C06', 500000, 'SOFTWARE DEVELOPER'),
('14-300-4-02-0516', 'C10', 340000, 'SECURITY ANALYST'),
('14-300-4-02-0519', 'C07', 560000, 'ML ENGINEER '),
('14-300-4-02-0520', 'C02', 450000, 'TECH CONSULTANT '),
('14-300-4-02-0521', 'C14', 450000, 'SECURITY ANALYST'),
('14-300-4-02-0526', 'C03', 500000, 'WEB DEVELOPER '),
('14-300-4-02-0535', 'C10', 480000, 'SALES ENGINEER '),
('14-300-4-02-0540', 'C14', 450000, 'SECURITY ANALYST'),
('14-300-4-02-0541', 'C01', 450000, 'AI DEVELOPER'),
('14-300-4-02-0544', 'C06', 450000, 'AI DEVELOPER'),
('14-300-4-02-0548', 'C10', 450000, 'SYSTEM ANALYST'),
('14-300-4-02-0551', 'C12', 440000, 'AI DEVELOPER'),
('14-300-4-02-0552', 'C12', 500000, 'TECH CONSULTANT '),
('14-300-4-02-0557', 'C10', 480000, 'SALES ENGINEER '),
('14-300-4-02-0560', 'C12', 440000, 'AI DEVELOPER'),
('14-300-4-02-0564', 'C01', 450000, 'WEB DEVELOPER '),
('14-300-4-02-0565', 'C14', 600000, 'TECH CONSULTANT '),
('14-300-4-02-0568', 'C14', 450000, 'SECURITY ANALYST'),
('14-300-4-02-0572', 'C13', 600000, 'SALES ENGINEER '),
('14-300-4-02-0573', 'C10', 480000, 'SALES ENGINEER '),
('14-300-4-02-0574', 'C12', 600000, 'WEB DEVELOPER '),
('14-300-4-02-0577', 'C02', 400000, 'SOFTWARE DEVELOPER'),
('14-300-4-02-0578', 'C14', 450000, 'SECURITY ANALYST'),
('14-300-4-02-0584', 'C12', 440000, 'AI DEVELOPER'),
('14-300-4-02-0592', 'C11', 330000, 'SALES ENGINEER '),
('15-500-5-03-0500', 'C04', 600000, 'TECH CONSULTANT '),
('15-500-5-03-0512', 'C01', 330000, 'SALES ENGINEER '),
('15-500-5-03-0520', 'C06', 450000, 'SECURITY ANALYST'),
('15-500-5-03-0525', 'C13', 450000, 'WEB DEVELOPER '),
('15-500-5-03-0533', 'C10', 550000, 'ML ENGINEER '),
('15-500-5-03-0548', 'C06', 450000, 'SECURITY ANALYST'),
('15-500-5-03-0553', 'C11', 480000, 'AI DEVELOPER'),
('15-500-5-03-0555', 'C01', 450000, 'AI DEVELOPER'),
('15-500-5-03-0563', 'C12', 330000, 'SALES ENGINEER '),
('15-500-5-03-0570', 'C06', 450000, 'SECURITY ANALYST'),
('15-500-5-03-0573', 'C01', 450000, 'WEB DEVELOPER '),
('15-500-5-03-0574', 'C06', 450000, 'SECURITY ANALYST'),
('15-500-5-03-0599', 'C01', 500000, 'SOFTWARE DEVELOPER');

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
('14-300-4-02-0500', 'Yes'),
('14-300-4-02-0507', 'Yes'),
('14-300-4-02-0508', 'Yes'),
('14-300-4-02-0512', 'No'),
('14-300-4-02-0516', 'Yes'),
('14-300-4-02-0519', 'Yes'),
('14-300-4-02-0520', 'Yes'),
('14-300-4-02-0521', 'Yes'),
('14-300-4-02-0524', 'No'),
('14-300-4-02-0525', 'No'),
('14-300-4-02-0526', 'Yes'),
('14-300-4-02-0528', 'Yes'),
('14-300-4-02-0535', 'Yes'),
('14-300-4-02-0540', 'Yes'),
('14-300-4-02-0541', 'Yes'),
('14-300-4-02-0544', 'Yes'),
('14-300-4-02-0547', 'Yes'),
('14-300-4-02-0548', 'Yes'),
('14-300-4-02-0550', 'Yes'),
('14-300-4-02-0551', 'Yes'),
('14-300-4-02-0552', 'Yes'),
('14-300-4-02-0553', 'Yes'),
('14-300-4-02-0557', 'Yes'),
('14-300-4-02-0560', 'Yes'),
('14-300-4-02-0564', 'Yes'),
('14-300-4-02-0565', 'Yes'),
('14-300-4-02-0568', 'Yes'),
('14-300-4-02-0569', 'No'),
('14-300-4-02-0572', 'Yes'),
('14-300-4-02-0573', 'Yes'),
('14-300-4-02-0574', 'Yes'),
('14-300-4-02-0577', 'Yes'),
('14-300-4-02-0578', 'Yes'),
('14-300-4-02-0584', 'Yes'),
('14-300-4-02-0587', 'Yes'),
('14-300-4-02-0592', 'Yes'),
('14-300-4-02-0593', 'No'),
('15-500-5-03-0500', 'Yes'),
('15-500-5-03-0501', 'No'),
('15-500-5-03-0512', 'Yes'),
('15-500-5-03-0520', 'Yes'),
('15-500-5-03-0525', 'Yes'),
('15-500-5-03-0533', 'Yes'),
('15-500-5-03-0534', 'Yes'),
('15-500-5-03-0545', 'Yes'),
('15-500-5-03-0546', 'Yes'),
('15-500-5-03-0547', 'Yes'),
('15-500-5-03-0548', 'Yes'),
('15-500-5-03-0549', 'Yes'),
('15-500-5-03-0552', 'Yes'),
('15-500-5-03-0553', 'Yes'),
('15-500-5-03-0554', 'No'),
('15-500-5-03-0555', 'Yes'),
('15-500-5-03-0560', 'Yes'),
('15-500-5-03-0561', 'Yes'),
('15-500-5-03-0563', 'Yes'),
('15-500-5-03-0570', 'Yes'),
('15-500-5-03-0572', 'Yes'),
('15-500-5-03-0573', 'Yes'),
('15-500-5-03-0574', 'Yes'),
('15-500-5-03-0599', 'Yes');

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
('14-300-4-02-0500', 'Delmer Cabena', 'dcabena15@zdnet.com', 9),
('14-300-4-02-0507', 'Rozele Dobkin', 'rdobkinb@indiegogo.com', 6.44),
('14-300-4-02-0508', 'Alisun Petrozzi', 'apetrozziq@loc.gov', 7.92),
('14-300-4-02-0512', 'Batholomew Aynold', 'baynoldt@etsy.com', 7.67),
('14-300-4-02-0516', 'Clarabelle Diemer', 'cdiemern@timesonline.co.uk', 6.28),
('14-300-4-02-0519', 'Farlie Whitley', 'fwhitleya@washingtonpost.com', 9.27),
('14-300-4-02-0520', 'Diane-marie Grinsted', 'dgrinstedf@skyrock.com', 6.42),
('14-300-4-02-0521', 'Vidovic Samwyse', 'vsamwysek@nationalgeographic.com', 7.01),
('14-300-4-02-0524', 'Starr Verdy', 'sverdyw@usgs.gov', 8.45),
('14-300-4-02-0525', 'Noland Nickoles', 'nnickoles13@prlog.org', 7.16),
('14-300-4-02-0526', 'Julianna Ivanilov', 'jivanilovg@dailymail.co.uk', 9.41),
('14-300-4-02-0528', 'Willard Blazi', 'wblazi18@blogtalkradio.com', 8.34),
('14-300-4-02-0535', 'Gay deKnevet', 'gdeknevet7@hud.gov', 8.14),
('14-300-4-02-0540', 'Bary Crickmore', 'bcrickmorej@ocn.ne.jp', 6.55),
('14-300-4-02-0541', 'Stewart Bugdell', 'sbugdelld@cnn.com', 7.83),
('14-300-4-02-0544', 'Jacquenetta Altham', 'jalthamp@friendfeed.com', 6.45),
('14-300-4-02-0547', 'Alvis Stollmeier', 'astollmeierx@t.co', 7.92),
('14-300-4-02-0548', 'Hubie Duny', 'hdunyy@mayoclinic.com', 9.82),
('14-300-4-02-0550', 'Yoshiko Cayser', 'ycayser14@jugem.jp', 7.42),
('14-300-4-02-0551', 'Aleta McQuirk', 'amcquirk9@phoca.cz', 8.47),
('14-300-4-02-0552', 'Nikkie Corbett', 'ncorbett1@i2i.jp', 7.96),
('14-300-4-02-0553', 'Ashlie Lintott', 'alintott16@nymag.com', 9.81),
('14-300-4-02-0557', 'Leonid Mazonowicz', 'lmazonowiczu@ibm.com', 7.92),
('14-300-4-02-0560', 'Roderich Pergens', 'rpergens6@bbb.org', 9.69),
('14-300-4-02-0564', 'Burch Somersett', 'bsomersetts@bing.com', 9.64),
('14-300-4-02-0565', 'Jenny Charles', 'jcharlesr@eventbrite.com', 8.74),
('14-300-4-02-0568', 'Christabel Epinoy', 'cepinoyi@merriam-webster.com', 6.65),
('14-300-4-02-0569', 'Dori Renne', 'drenne8@mit.edu', 8.85),
('14-300-4-02-0572', 'Staci Stiggles', 'sstigglesh@flickr.com', 9.79),
('14-300-4-02-0573', 'Ingar Deans', 'ideans5@multiply.com', 9.48),
('14-300-4-02-0574', 'Simeon Houldin', 'shouldin2@hexun.com', 9.55),
('14-300-4-02-0577', 'Louella Meni', 'lmenie@networksolutions.com', 6.33),
('14-300-4-02-0578', 'Giavani Rentelll', 'grentellll@toplist.cz', 7.67),
('14-300-4-02-0584', 'Ron Goold', 'rgooldv@google.com.hk', 9.94),
('14-300-4-02-0587', 'Madelene Sills', 'msills3@sohu.com', 8.44),
('14-300-4-02-0592', 'Margarethe Ducker', 'mducker4@desdev.cn', 9.07),
('14-300-4-02-0593', 'Melantha Fife', 'mfife12@slideshare.net', 7.27),
('15-500-5-03-0500', 'Ketti Langlais', 'klanglaisf@google.cn', 8.97),
('15-500-5-03-0501', 'Lari Dearn', 'ldearnm@yellowbook.com', 6.22),
('15-500-5-03-0512', 'Karin Ballendine', 'kballendineo@ucoz.com', 8.33),
('15-500-5-03-0520', 'Ninette Bentsen', 'nbentsenb@flickr.com', 8.1),
('15-500-5-03-0525', 'Aeriell Caunce', 'acaunceg@cnet.com', 9.61),
('15-500-5-03-0533', 'Abbye Hegges', 'aheggesk@msu.edu', 9.45),
('15-500-5-03-0534', 'Francisco Staker', 'fstaker2@home.pl', 6.04),
('15-500-5-03-0545', 'Tony Huws', 'thuws4@addtoany.com', 7.18),
('15-500-5-03-0546', 'Aldric Garnham', 'agarnham1@simplemachines.org', 8.98),
('15-500-5-03-0547', 'Daniel Rewcastle', 'drewcastle5@cornell.edu', 6.43),
('15-500-5-03-0548', 'Johnny Broxton', 'jbroxton8@theguardian.com', 8.87),
('15-500-5-03-0549', 'Laverne Satterthwaite', 'lsatterthwaitel@macromedia.com', 8.1),
('15-500-5-03-0552', 'Odele Vispo', 'ovispo7@weibo.com', 9.53),
('15-500-5-03-0553', 'Field Paul', 'fpauli@cpanel.net', 7.56),
('15-500-5-03-0554', 'Dyanna Peyton', 'dpeyton9@utexas.edu', 8.49),
('15-500-5-03-0555', 'Mathias Brendish', 'mbrendishd@g.co', 6.38),
('15-500-5-03-0560', 'Eloisa Stockford', 'estockford6@si.edu', 8.12),
('15-500-5-03-0561', 'Laurena Bernardino', 'lbernardino0@ask.com', 7.45),
('15-500-5-03-0563', 'Julie Stanbury', 'jstanburyh@mail.ru', 7.93),
('15-500-5-03-0570', 'Zea Hannan', 'zhannanc@last.fm', 9.44),
('15-500-5-03-0572', 'Aksel Jahan', 'ajahan3@etsy.com', 7.16),
('15-500-5-03-0573', 'Carver Brotherton', 'cbrothertonn@globo.com', 8.29),
('15-500-5-03-0574', 'Rodolfo Cestard', 'rcestarda@rediff.com', 9.52),
('15-500-5-03-0599', 'Shana Ricoald', 'sricoalde@hubpages.com', 7.31);

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
