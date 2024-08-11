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
-- Database: `yop2020`
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
('C01', 'PWC '),
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
('C23', 'HDFC Bank'),
('C24', 'Qspiders'),
('C25', 'Facebook');

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
('17-300-4-02-0503', 'B.Sc CS '),
('17-300-4-02-0504', 'B.Sc CS '),
('17-300-4-02-0506', 'B.Sc CS '),
('17-300-4-02-0507', 'B.Sc CS '),
('17-300-4-02-0508', 'B.Sc CS '),
('17-300-4-02-0509', 'B.Sc CS '),
('17-300-4-02-0513', 'B.Sc CS '),
('17-300-4-02-0514', 'B.Sc CS '),
('17-300-4-02-0515', 'B.Sc CS '),
('17-300-4-02-0518', 'B.Sc CS '),
('17-300-4-02-0522', 'B.Sc CS '),
('17-300-4-02-0526', 'B.Sc CS '),
('17-300-4-02-0531', 'B.Sc CS '),
('17-300-4-02-0534', 'B.Sc CS '),
('17-300-4-02-0536', 'B.Sc CS '),
('17-300-4-02-0539', 'B.Sc CS '),
('17-300-4-02-0540', 'B.Sc CS '),
('17-300-4-02-0541', 'B.Sc CS '),
('17-300-4-02-0546', 'B.Sc CS '),
('17-300-4-02-0547', 'B.Sc CS '),
('17-300-4-02-0548', 'B.Sc CS '),
('17-300-4-02-0554', 'B.Sc CS '),
('17-300-4-02-0558', 'B.Sc CS '),
('17-300-4-02-0563', 'B.Sc CS '),
('17-300-4-02-0564', 'B.Sc CS '),
('17-300-4-02-0569', 'B.Sc CS '),
('17-300-4-02-0573', 'B.Sc CS '),
('17-300-4-02-0579', 'B.Sc CS '),
('17-300-4-02-0581', 'B.Sc CS '),
('17-300-4-02-0583', 'B.Sc CS '),
('17-300-4-02-0584', 'B.Sc CS '),
('17-300-4-02-0586', 'B.Sc CS '),
('17-300-4-02-0587', 'B.Sc CS '),
('17-300-4-02-0590', 'B.Sc CS '),
('18-500-5-03-0505', 'M.Sc CS'),
('18-500-5-03-0518', 'M.Sc CS'),
('18-500-5-03-0522', 'M.Sc CS'),
('18-500-5-03-0523', 'M.Sc CS'),
('18-500-5-03-0524', 'M.Sc CS'),
('18-500-5-03-0527', 'M.Sc CS'),
('18-500-5-03-0532', 'M.Sc CS'),
('18-500-5-03-0535', 'M.Sc CS'),
('18-500-5-03-0537', 'M.Sc CS'),
('18-500-5-03-0547', 'M.Sc CS'),
('18-500-5-03-0557', 'M.Sc CS'),
('18-500-5-03-0562', 'M.Sc CS'),
('18-500-5-03-0571', 'M.Sc CS'),
('18-500-5-03-0572', 'M.Sc CS'),
('18-500-5-03-0574', 'M.Sc CS'),
('18-500-5-03-0575', 'M.Sc CS'),
('18-500-5-03-0576', 'M.Sc CS'),
('18-500-5-03-0581', 'M.Sc CS'),
('18-500-5-03-0587', 'M.Sc CS'),
('18-500-5-03-0590', 'M.Sc CS'),
('18-500-5-03-0593', 'M.Sc CS'),
('18-500-5-03-0595', 'M.Sc CS'),
('18-500-5-03-0599', 'M.Sc CS');

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
('17-300-4-02-0503', 'C15', 450000, 'AI DEVELOPER'),
('17-300-4-02-0504', 'C05', 600000, 'DATA SCIENTIST '),
('17-300-4-02-0506', 'C09', 450000, 'TECH CONSULTANT '),
('17-300-4-02-0508', 'C09', 450000, 'TECH CONSULTANT '),
('17-300-4-02-0509', 'C07', 600000, 'TECH CONSULTANT '),
('17-300-4-02-0513', 'C09', 450000, 'TECH CONSULTANT '),
('17-300-4-02-0514', 'C01', 480000, 'ML ENGINEER '),
('17-300-4-02-0518', 'C05', 450000, 'WEB DEVELOPER '),
('17-300-4-02-0522', 'C03', 550000, 'IT CONSULTANT'),
('17-300-4-02-0526', 'C05', 450000, 'WEB DEVELOPER '),
('17-300-4-02-0534', 'C16', 500000, 'SOFTWARE DEVELOPER'),
('17-300-4-02-0536', 'C09', 450000, 'TECH CONSULTANT '),
('17-300-4-02-0539', 'C16', 450000, 'AI DEVELOPER'),
('17-300-4-02-0540', 'C21', 460000, 'SOFTWARE ENGINEER '),
('17-300-4-02-0541', 'C12', 440000, 'SALES ENGINEER '),
('17-300-4-02-0546', 'C21', 450000, 'SECURITY ANALYST'),
('17-300-4-02-0547', 'C21', 450000, 'SECURITY ANALYST'),
('17-300-4-02-0548', 'C16', 450000, 'IT DEVELOPER '),
('17-300-4-02-0554', 'C07', 450000, 'WEB DEVELOPER '),
('17-300-4-02-0563', 'C16', 450000, 'SOFTWARE DEVELOPER'),
('17-300-4-02-0564', 'C15', 400000, 'AI DEVELOPER'),
('17-300-4-02-0573', 'C09', 330000, 'AI DEVELOPER '),
('17-300-4-02-0579', 'C01', 480000, 'ML ENGINEER '),
('17-300-4-02-0583', 'C12', 440000, 'SALES ENGINEER '),
('17-300-4-02-0584', 'C18', 500000, 'TECH CONSULTANT '),
('17-300-4-02-0586', 'C04', 400000, 'APP DEVELOPER '),
('17-300-4-02-0590', 'C04', 330000, 'SALES ENGINEER '),
('18-500-5-03-0505', 'C10', 480000, 'TECH CONSULTANT'),
('18-500-5-03-0518', 'C10', 480000, 'TECH CONSULTANT'),
('18-500-5-03-0523', 'C08', 450000, 'SOFTWARE DEVELOPER'),
('18-500-5-03-0524', 'C12', 500000, 'AI DEVELOPER'),
('18-500-5-03-0527', 'C16', 600000, 'APP DEVELOPER'),
('18-500-5-03-0532', 'C13', 350000, 'SECURITY ANALYST'),
('18-500-5-03-0535', 'C04', 490000, 'TECH CONSULTANT'),
('18-500-5-03-0547', 'C09', 500000, 'SOFTWARE ENGINEER'),
('18-500-5-03-0557', 'C10', 480000, 'TECH CONSULTANT'),
('18-500-5-03-0562', 'C14', 550000, 'TECH CONSULTANT'),
('18-500-5-03-0571', 'C04', 560000, 'TECH CONSULTANT'),
('18-500-5-03-0572', 'C01', 380000, 'SYSTEM ANALYST'),
('18-500-5-03-0574', 'C09', 580000, 'SECURITY ANALYST'),
('18-500-5-03-0575', 'C16', 600000, 'APP DEVELOPER'),
('18-500-5-03-0581', 'C04', 330000, 'IT CONSULTANT'),
('18-500-5-03-0587', 'C08', 400000, 'ML ENGINEER'),
('18-500-5-03-0590', 'C01', 420000, 'AI DEVELOPER'),
('18-500-5-03-0593', 'C16', 350000, 'ML ENGINEER'),
('18-500-5-03-0599', 'C16', 350000, 'ML ENGINEER');

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
('17-300-4-02-0503', 'Yes'),
('17-300-4-02-0504', 'Yes'),
('17-300-4-02-0506', 'Yes'),
('17-300-4-02-0507', 'No'),
('17-300-4-02-0508', 'Yes'),
('17-300-4-02-0509', 'Yes'),
('17-300-4-02-0513', 'Yes'),
('17-300-4-02-0514', 'Yes'),
('17-300-4-02-0515', 'Yes'),
('17-300-4-02-0518', 'Yes'),
('17-300-4-02-0522', 'Yes'),
('17-300-4-02-0526', 'Yes'),
('17-300-4-02-0531', 'No'),
('17-300-4-02-0534', 'Yes'),
('17-300-4-02-0536', 'Yes'),
('17-300-4-02-0539', 'Yes'),
('17-300-4-02-0540', 'Yes'),
('17-300-4-02-0541', 'Yes'),
('17-300-4-02-0546', 'Yes'),
('17-300-4-02-0547', 'Yes'),
('17-300-4-02-0548', 'Yes'),
('17-300-4-02-0554', 'Yes'),
('17-300-4-02-0558', 'Yes'),
('17-300-4-02-0563', 'Yes'),
('17-300-4-02-0564', 'Yes'),
('17-300-4-02-0569', 'Yes'),
('17-300-4-02-0573', 'Yes'),
('17-300-4-02-0579', 'Yes'),
('17-300-4-02-0581', 'No'),
('17-300-4-02-0583', 'Yes'),
('17-300-4-02-0584', 'Yes'),
('17-300-4-02-0586', 'Yes'),
('17-300-4-02-0587', 'Yes'),
('17-300-4-02-0590', 'Yes'),
('18-500-5-03-0505', 'Yes'),
('18-500-5-03-0518', 'Yes'),
('18-500-5-03-0522', 'Yes'),
('18-500-5-03-0523', 'Yes'),
('18-500-5-03-0524', 'Yes'),
('18-500-5-03-0527', 'Yes'),
('18-500-5-03-0532', 'Yes'),
('18-500-5-03-0535', 'Yes'),
('18-500-5-03-0537', 'No'),
('18-500-5-03-0547', 'Yes'),
('18-500-5-03-0557', 'Yes'),
('18-500-5-03-0562', 'Yes'),
('18-500-5-03-0571', 'Yes'),
('18-500-5-03-0572', 'Yes'),
('18-500-5-03-0574', 'Yes'),
('18-500-5-03-0575', 'Yes'),
('18-500-5-03-0576', 'Yes'),
('18-500-5-03-0581', 'Yes'),
('18-500-5-03-0587', 'Yes'),
('18-500-5-03-0590', 'Yes'),
('18-500-5-03-0593', 'Yes'),
('18-500-5-03-0595', 'Yes'),
('18-500-5-03-0599', 'Yes');

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
('17-300-4-02-0503', 'Valentine Frean', 'vfrean9@sakura.ne.jp', 6.27),
('17-300-4-02-0504', 'Crissie Smees', 'csmees2@elpais.com', 6.49),
('17-300-4-02-0506', 'Tybie Inston', 'tinston6@google.com.au', 6.99),
('17-300-4-02-0507', 'Karoly Hinkley', 'khinkleyl@google.es', 6.96),
('17-300-4-02-0508', 'Jere Starkings', 'jstarkings4@nih.gov', 9.06),
('17-300-4-02-0509', 'Gabriella Hull', 'ghulld@storify.com', 6.44),
('17-300-4-02-0513', 'Coleen Duffil', 'cduffil5@cornell.edu', 7.08),
('17-300-4-02-0514', 'Culver Gwillim', 'cgwillimh@godaddy.com', 8.87),
('17-300-4-02-0515', 'Betteann Perelli', 'bperellix@clickbank.net', 7.19),
('17-300-4-02-0518', 'Siffre Redparth', 'sredparthm@google.es', 8.02),
('17-300-4-02-0522', 'Nadeen Tonbridge', 'ntonbridge1@amazon.co.jp', 7.79),
('17-300-4-02-0526', 'Doe Jeannin', 'djeanninn@skype.com', 8.72),
('17-300-4-02-0531', 'Tony McNellis', 'tmcnellis10@seesaa.net', 7.3),
('17-300-4-02-0534', 'Adella Gowrie', 'agowriec@mlb.com', 7.53),
('17-300-4-02-0536', 'Bev Crosier', 'bcrosier3@nih.gov', 9.8),
('17-300-4-02-0539', 'Jard Leathard', 'jleathardb@1und1.de', 9.56),
('17-300-4-02-0540', 'Van Trethowan', 'vtrethowan0@posterous.com', 9.1),
('17-300-4-02-0541', 'Webster Easseby', 'weassebyp@yellowbook.com', 6.26),
('17-300-4-02-0546', 'Nana Naile', 'nnaile7@scribd.com', 8.47),
('17-300-4-02-0547', 'Germaine Maccree', 'gmaccree8@ebay.co.uk', 7.05),
('17-300-4-02-0548', 'Grethel Kivelle', 'gkivellea@mysql.com', 6.93),
('17-300-4-02-0554', 'Dell Brabbs', 'dbrabbse@timesonline.co.uk', 7.27),
('17-300-4-02-0558', 'Anny Flowerdew', 'aflowerdew12@biblegateway.com', 7.86),
('17-300-4-02-0563', 'Francesco Sherland', 'fsherlandj@va.gov', 9.65),
('17-300-4-02-0564', 'Brinn Briat', 'bbriati@slideshare.net', 8.82),
('17-300-4-02-0569', 'Mathew Peche', 'mpechey@businesswire.com', 7.64),
('17-300-4-02-0573', 'Lacy Wedgbrow', 'lwedgbrowo@quantcast.com', 9.26),
('17-300-4-02-0579', 'Tirrell Viger', 'tvigerg@sourceforge.net', 8.12),
('17-300-4-02-0581', 'Wallie Crafts', 'wcrafts11@oaic.gov.au', 8.59),
('17-300-4-02-0583', 'Phillipe Kemery', 'pkemeryr@1688.com', 8.17),
('17-300-4-02-0584', 'Demetri Chrystal', 'dchrystalk@nhs.uk', 8.02),
('17-300-4-02-0586', 'Betteanne Pesek', 'bpesekt@blogtalkradio.com', 9.13),
('17-300-4-02-0587', 'Guinna Feldharker', 'gfeldharkeru@hatena.ne.jp', 6.32),
('17-300-4-02-0590', 'Bertrando Van Der Straaten', 'bvanf@psu.edu', 9.77),
('18-500-5-03-0505', 'Dell Tattoo', 'dtattooc@nps.gov', 8.07),
('18-500-5-03-0518', 'Randell Munsey', 'rmunseyd@earthlink.net', 9.47),
('18-500-5-03-0522', 'Dallon Giuroni', 'dgiuroni0@1688.com', 8.5),
('18-500-5-03-0523', 'Corbett Brittain', 'cbrittain5@cargocollective.com', 8.23),
('18-500-5-03-0524', 'Holden Creegan', 'hcreeganb@wisc.edu', 8.9),
('18-500-5-03-0527', 'Phaedra Claeskens', 'pclaeskens7@1und1.de', 8.92),
('18-500-5-03-0532', 'Frayda Best', 'fbest9@spotify.com', 8.03),
('18-500-5-03-0535', 'Ebenezer Kardos-Stowe', 'ekardosstoweg@icio.us', 9.97),
('18-500-5-03-0537', 'Zita Bellew', 'zbellewn@twitpic.com', 8.05),
('18-500-5-03-0547', 'Elnore Rosbrough', 'erosbrough4@mail.ru', 8.4),
('18-500-5-03-0557', 'Cyb Hurl', 'churla@hugedomains.com', 9.03),
('18-500-5-03-0562', 'Alice Pelz', 'apelz8@gov.uk', 8.79),
('18-500-5-03-0571', 'Cindie Colmer', 'ccolmerh@printfriendly.com', 9.64),
('18-500-5-03-0572', 'Shermy Melhuish', 'smelhuishe@quantcast.com', 8.6),
('18-500-5-03-0574', 'Izak McIlriach', 'imcilriachi@typepad.com', 9.94),
('18-500-5-03-0575', 'Gasparo Spearett', 'gspearett6@yelp.com', 6.53),
('18-500-5-03-0576', 'Liva Boow', 'lboow2@simplemachines.org', 7.95),
('18-500-5-03-0581', 'Cilka Errichelli', 'cerrichelli3@tumblr.com', 9.97),
('18-500-5-03-0587', 'Fredric Cauldwell', 'fcauldwellj@mayoclinic.com', 6.49),
('18-500-5-03-0590', 'Chrissy Dealtry', 'cdealtryf@salon.com', 8.05),
('18-500-5-03-0593', 'Goldia Drakard', 'gdrakardm@marketwatch.com', 7.77),
('18-500-5-03-0595', 'Lee Helliar', 'lhelliar1@businessinsider.com', 6.4),
('18-500-5-03-0599', 'Montague Dowsing', 'mdowsingk@goo.gl', 9.01);

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
