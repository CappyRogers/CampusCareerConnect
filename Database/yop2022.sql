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
-- Database: `yop2022`
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
('C24', 'Qspiders'),
('C25', 'Sandisk'),
('C26', 'HCL Technologies'),
('C27', 'Capgemini'),
('C28', 'Oracle'),
('C29', 'Reliance Industries');

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
('19-300-4-02-0508', 'B.Sc CS'),
('19-300-4-02-0509', 'B.Sc CS'),
('19-300-4-02-0510', 'B.Sc CS'),
('19-300-4-02-0511', 'B.Sc CS'),
('19-300-4-02-0514', 'B.Sc CS'),
('19-300-4-02-0515', 'B.Sc CS'),
('19-300-4-02-0516', 'B.Sc CS'),
('19-300-4-02-0519', 'B.Sc CS'),
('19-300-4-02-0520', 'B.Sc CS'),
('19-300-4-02-0526', 'B.Sc CS'),
('19-300-4-02-0534', 'B.Sc CS'),
('19-300-4-02-0535', 'B.Sc CS'),
('19-300-4-02-0537', 'B.Sc CS'),
('19-300-4-02-0538', 'B.Sc CS'),
('19-300-4-02-0539', 'B.Sc CS'),
('19-300-4-02-0540', 'B.Sc CS'),
('19-300-4-02-0544', 'B.Sc CS'),
('19-300-4-02-0547', 'B.Sc CS'),
('19-300-4-02-0551', 'B.Sc CS'),
('19-300-4-02-0552', 'B.Sc CS'),
('19-300-4-02-0554', 'B.Sc CS'),
('19-300-4-02-0555', 'B.Sc CS'),
('19-300-4-02-0556', 'B.Sc CS'),
('19-300-4-02-0558', 'B.Sc CS'),
('19-300-4-02-0561', 'B.Sc CS'),
('19-300-4-02-0563', 'B.Sc CS'),
('19-300-4-02-0564', 'B.Sc CS'),
('19-300-4-02-0569', 'B.Sc CS'),
('19-300-4-02-0571', 'B.Sc CS'),
('19-300-4-02-0574', 'B.Sc CS'),
('19-300-4-02-0575', 'B.Sc CS'),
('19-300-4-02-0580', 'B.Sc CS'),
('19-300-4-02-0581', 'B.Sc CS'),
('19-300-4-02-0585', 'B.Sc CS'),
('19-300-4-02-0592', 'B.Sc CS'),
('19-300-4-02-0593', 'B.Sc CS'),
('19-300-4-02-0594', 'B.Sc CS'),
('19-300-4-02-0597', 'B.Sc CS'),
('19-300-4-02-0598', 'B.Sc CS'),
('20-500-5-03-0500', 'M.Sc CS'),
('20-500-5-03-0502', 'M.Sc CS'),
('20-500-5-03-0503', 'M.Sc CS'),
('20-500-5-03-0509', 'M.Sc CS'),
('20-500-5-03-0512', 'M.Sc CS'),
('20-500-5-03-0520', 'M.Sc CS'),
('20-500-5-03-0522', 'M.Sc CS'),
('20-500-5-03-0525', 'M.Sc CS'),
('20-500-5-03-0528', 'M.Sc CS'),
('20-500-5-03-0531', 'M.Sc CS'),
('20-500-5-03-0538', 'M.Sc CS'),
('20-500-5-03-0540', 'M.Sc CS'),
('20-500-5-03-0541', 'M.Sc CS'),
('20-500-5-03-0544', 'M.Sc CS'),
('20-500-5-03-0546', 'M.Sc CS'),
('20-500-5-03-0549', 'M.Sc CS'),
('20-500-5-03-0553', 'M.Sc CS'),
('20-500-5-03-0554', 'M.Sc CS'),
('20-500-5-03-0555', 'M.Sc CS'),
('20-500-5-03-0556', 'M.Sc CS'),
('20-500-5-03-0560', 'M.Sc CS'),
('20-500-5-03-0566', 'M.Sc CS'),
('20-500-5-03-0569', 'M.Sc CS'),
('20-500-5-03-0570', 'M.Sc CS'),
('20-500-5-03-0574', 'M.Sc CS'),
('20-500-5-03-0577', 'M.Sc CS'),
('20-500-5-03-0590', 'M.Sc CS'),
('20-500-5-03-0592', 'M.Sc CS'),
('20-500-5-03-0593', 'M.Sc CS'),
('20-500-5-03-0594', 'M.Sc CS');

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
('19-300-4-02-0510', 'C02', 750000, 'Framework Engineer '),
('19-300-4-02-0516', 'C02', 750000, 'Framework Engineer'),
('19-300-4-02-0519', 'C04', 778000, 'AI Grad'),
('19-300-4-02-0538', 'C04', 700000, 'AI Grad'),
('19-300-4-02-0551', 'C04', 778000, 'AI Grad'),
('19-300-4-02-0554', 'C13', 500000, 'Software Engineer'),
('19-300-4-02-0558', 'C07', 1200000, 'HR Manager'),
('19-300-4-02-0564', 'C11', 650000, 'Web Developer'),
('19-300-4-02-0571', 'C02', 750000, 'Framework Engineer'),
('19-300-4-02-0574', 'C02', 750000, 'Framework Engineer'),
('19-300-4-02-0575', 'C13', 500000, 'Software Engineer'),
('19-300-4-02-0594', 'C04', 750000, 'AI Grad'),
('20-500-5-03-0500', 'C16', 440000, 'ML ENGINEER'),
('20-500-5-03-0503', 'C11', 620000, 'APP DEVELOPER'),
('20-500-5-03-0509', 'C28', 360000, 'SYSTEM ANALYST'),
('20-500-5-03-0512', 'C25', 620000, 'TECH CONSULTANT'),
('20-500-5-03-0520', 'C25', 460000, 'TECH CONSULTANT'),
('20-500-5-03-0522', 'C20', 310000, 'SOFTWARE DEVELOPER'),
('20-500-5-03-0525', 'C29', 550000, 'AI DEVELOPER'),
('20-500-5-03-0538', 'C09', 460000, 'SYSTEM ANALYST'),
('20-500-5-03-0540', 'C25', 350000, 'SYSTEM ANALYST'),
('20-500-5-03-0541', 'C16', 440000, 'ML ENGINEER'),
('20-500-5-03-0549', 'C29', 550000, 'AI DEVELOPER'),
('20-500-5-03-0553', 'C07', 550000, 'ML ENGINEER'),
('20-500-5-03-0555', 'C10', 350000, 'SECURITY ANALYST'),
('20-500-5-03-0569', 'C24', 550000, 'SECURITY ANALYST'),
('20-500-5-03-0593', 'C09', 570000, 'ML ENGINEER'),
('20-500-5-03-0594', 'C11', 620000, 'APP DEVELOPER');

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
('19-300-4-02-0508', 'No'),
('19-300-4-02-0509', 'Yes'),
('19-300-4-02-0510', 'Yes'),
('19-300-4-02-0511', 'Yes'),
('19-300-4-02-0514', 'Yes'),
('19-300-4-02-0515', 'Yes'),
('19-300-4-02-0516', 'Yes'),
('19-300-4-02-0519', 'Yes'),
('19-300-4-02-0520', 'Yes'),
('19-300-4-02-0526', 'Yes'),
('19-300-4-02-0534', 'Yes'),
('19-300-4-02-0535', 'Yes'),
('19-300-4-02-0537', 'Yes'),
('19-300-4-02-0538', 'Yes'),
('19-300-4-02-0539', 'No'),
('19-300-4-02-0540', 'No'),
('19-300-4-02-0544', 'Yes'),
('19-300-4-02-0547', 'No'),
('19-300-4-02-0551', 'Yes'),
('19-300-4-02-0552', 'Yes'),
('19-300-4-02-0554', 'Yes'),
('19-300-4-02-0555', 'Yes'),
('19-300-4-02-0556', 'Yes'),
('19-300-4-02-0558', 'Yes'),
('19-300-4-02-0561', 'Yes'),
('19-300-4-02-0563', 'Yes'),
('19-300-4-02-0564', 'Yes'),
('19-300-4-02-0569', 'Yes'),
('19-300-4-02-0571', 'Yes'),
('19-300-4-02-0574', 'Yes'),
('19-300-4-02-0575', 'Yes'),
('19-300-4-02-0580', 'Yes'),
('19-300-4-02-0581', 'No'),
('19-300-4-02-0585', 'Yes'),
('19-300-4-02-0592', 'Yes'),
('19-300-4-02-0593', 'Yes'),
('19-300-4-02-0594', 'Yes'),
('19-300-4-02-0597', 'No'),
('19-300-4-02-0598', 'Yes'),
('20-500-5-03-0500', 'Yes'),
('20-500-5-03-0502', 'No'),
('20-500-5-03-0503', 'Yes'),
('20-500-5-03-0509', 'Yes'),
('20-500-5-03-0512', 'Yes'),
('20-500-5-03-0520', 'Yes'),
('20-500-5-03-0522', 'Yes'),
('20-500-5-03-0525', 'Yes'),
('20-500-5-03-0528', 'Yes'),
('20-500-5-03-0531', 'No'),
('20-500-5-03-0538', 'Yes'),
('20-500-5-03-0540', 'Yes'),
('20-500-5-03-0541', 'Yes'),
('20-500-5-03-0544', 'Yes'),
('20-500-5-03-0546', 'No'),
('20-500-5-03-0549', 'Yes'),
('20-500-5-03-0553', 'Yes'),
('20-500-5-03-0554', 'Yes'),
('20-500-5-03-0555', 'Yes'),
('20-500-5-03-0556', 'Yes'),
('20-500-5-03-0560', 'Yes'),
('20-500-5-03-0566', 'Yes'),
('20-500-5-03-0569', 'Yes'),
('20-500-5-03-0570', 'Yes'),
('20-500-5-03-0574', 'No'),
('20-500-5-03-0577', 'Yes'),
('20-500-5-03-0590', 'Yes'),
('20-500-5-03-0592', 'Yes'),
('20-500-5-03-0593', 'Yes'),
('20-500-5-03-0594', 'Yes');

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
('19-300-4-02-0508', 'Akash Verma', 'akashverma@gmail.com', 8),
('19-300-4-02-0509', 'Tessi Danielis', 'tdanielis8@bloglovin.com', 9.89),
('19-300-4-02-0510', 'Jody Chandlar', 'jchandlarr@phoca.cz', 8.75),
('19-300-4-02-0511', 'Margret Baynham', 'mbaynham13@php.net', 9.34),
('19-300-4-02-0514', 'Fairfax Arkow', 'farkowy@sphinn.com', 8.22),
('19-300-4-02-0515', 'Rosie Tinmouth', 'rtinmouth15@abc.net.au', 7.53),
('19-300-4-02-0516', 'Kassie Grancher', 'kgranchern@rambler.ru', 7.21),
('19-300-4-02-0519', 'Layton Thornton', 'lthorntonc@microsoft.com', 6.94),
('19-300-4-02-0520', 'Clyve Toulson', 'ctoulson16@tripadvisor.com', 9.41),
('19-300-4-02-0526', 'Winn Adami', 'wadami7@dailymotion.com', 9.68),
('19-300-4-02-0534', 'Osborn Bartels', 'obartelsu@fema.gov', 9.77),
('19-300-4-02-0535', 'Bernadette Peddie', 'bpeddiet@is.gd', 9.88),
('19-300-4-02-0537', 'Elane Pluthero', 'epluthero5@redcross.org', 6.78),
('19-300-4-02-0538', 'Perkin Newell', 'pnewell4@scientificamerican.com', 8),
('19-300-4-02-0539', 'Jodi Ingleson', 'jinglesono@java.com', 8.06),
('19-300-4-02-0540', 'Madlin Dwelling', 'mdwelling3@artisteer.com', 8.06),
('19-300-4-02-0544', 'Diarmid Coche', 'dcochex@hugedomains.com', 6.45),
('19-300-4-02-0547', 'Sibel Sidaway', 'ssidawayf@upenn.edu', 8.61),
('19-300-4-02-0551', 'Theresita Darlow', 'tdarlowa@buzzfeed.com', 6.09),
('19-300-4-02-0552', 'Etti Spofford', 'espoffordw@tmall.com', 9.68),
('19-300-4-02-0554', 'Anabal Latty', 'alattyj@ask.com', 6.38),
('19-300-4-02-0555', 'Franklyn Klyner', 'fklyner18@seattletimes.com', 8.95),
('19-300-4-02-0556', 'Zollie Brehat', 'zbrehatd@ox.ac.uk', 8.76),
('19-300-4-02-0558', 'Cart McCalum', 'cmccalume@springer.com', 8.1),
('19-300-4-02-0561', 'Durante Bernuzzi', 'dbernuzzi2@gmpg.org', 8.52),
('19-300-4-02-0563', 'Verge Forde', 'vfordeg@instagram.com', 9.25),
('19-300-4-02-0564', 'Natalya Gadault', 'ngadaulth@berkeley.edu', 7),
('19-300-4-02-0569', 'Tulley Fearn', 'tfearn9@multiply.com', 9.06),
('19-300-4-02-0571', 'Patrizio Rannells', 'prannellsk@disqus.com', 8.4),
('19-300-4-02-0574', 'Field Connow', 'fconnowm@webmd.com', 7.5),
('19-300-4-02-0575', 'Zulema Leadbeatter', 'zleadbeatters@ed.gov', 8.72),
('19-300-4-02-0580', 'Eadmund Brogiotti', 'ebrogiotti0@cbc.ca', 8.35),
('19-300-4-02-0581', 'Mirabel Bernardoux', 'mbernardoux1a@tinyurl.com', 9.41),
('19-300-4-02-0585', 'Glenden Swains', 'gswains1@uiuc.edu', 7.08),
('19-300-4-02-0592', 'Darya Staley', 'dstaleyz@linkedin.com', 8.71),
('19-300-4-02-0593', 'Lance Pahlsson', 'lpahlsson12@yahoo.co.jp', 9.33),
('19-300-4-02-0594', 'Evonne Findon', 'efindon11@shinystat.com', 7.91),
('19-300-4-02-0597', 'Raynor Adamkiewicz', 'radamkiewiczv@newsvine.com', 6.98),
('19-300-4-02-0598', 'Camey Favela', 'cfavela17@wisc.edu', 9.68),
('20-500-5-03-0500', 'Luelle Sheddan', 'lsheddang@acquirethisname.com', 6.28),
('20-500-5-03-0502', 'Dukie Killock', 'dkillockm@wsj.com', 7.38),
('20-500-5-03-0503', 'Bjorn Canfield', 'bcanfieldp@rambler.ru', 6.93),
('20-500-5-03-0509', 'Berri Wyldes', 'bwyldesq@google.com.br', 6.82),
('20-500-5-03-0512', 'Jeanna Martinelli', 'jmartinelli8@etsy.com', 9.69),
('20-500-5-03-0520', 'Orville Cicccitti', 'ocicccittir@bigcartel.com', 9.24),
('20-500-5-03-0522', 'Glynda Bille', 'gbillej@mashable.com', 9.23),
('20-500-5-03-0525', 'Arlina Willcot', 'awillcot5@domainmarket.com', 10),
('20-500-5-03-0528', 'Sanford Nutter', 'snutterk@gizmodo.com', 7.42),
('20-500-5-03-0531', 'Gustaf Haydney', 'ghaydney6@cloudflare.com', 7.71),
('20-500-5-03-0538', 'Ilka Bendin', 'ibendind@google.pl', 8.35),
('20-500-5-03-0540', 'Brandais Bernet', 'bbernett@de.vu', 9.52),
('20-500-5-03-0541', 'Neddy Yarmouth', 'nyarmouthh@eventbrite.com', 7.03),
('20-500-5-03-0544', 'Gib Filimore', 'gfilimoreb@usda.gov', 8.84),
('20-500-5-03-0546', 'Wally Evanson', 'wevansonv@163.com', 6.7),
('20-500-5-03-0549', 'Rossie Forker', 'rforker7@ycombinator.com', 8.37),
('20-500-5-03-0553', 'Noah Reeday', 'nreedayy@vistaprint.com', 9.84),
('20-500-5-03-0554', 'Jammal Duckers', 'jduckers1@wikispaces.com', 7.28),
('20-500-5-03-0555', 'Jamie Saill', 'jsaille@sphinn.com', 7.52),
('20-500-5-03-0556', 'Hendrika Collop', 'hcollopa@redcross.org', 8.63),
('20-500-5-03-0560', 'Bert Othick', 'bothick4@howstuffworks.com', 8.92),
('20-500-5-03-0566', 'Ingeborg Brierly', 'ibrierly9@jimdo.com', 6.47),
('20-500-5-03-0569', 'Oliviero Willcock', 'owillcockf@gmpg.org', 8.65),
('20-500-5-03-0570', 'Tommi Whatley', 'twhatley2@prweb.com', 7.15),
('20-500-5-03-0574', 'Perla Samwaye', 'psamwayeu@opera.com', 6.54),
('20-500-5-03-0577', 'Nerita Mantle', 'nmantlen@dailymotion.com', 9),
('20-500-5-03-0590', 'Hollyanne Allred', 'hallredc@wired.com', 8.8),
('20-500-5-03-0592', 'Winona Clayill', 'wclayill0@springer.com', 7.43),
('20-500-5-03-0593', 'Humberto Forlonge', 'hforlonge3@shinystat.com', 8.61),
('20-500-5-03-0594', 'Hermann Christley', 'hchristleyo@diigo.com', 7.74);

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
