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
-- Database: `yop2016`
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
('C23', 'HDFC Bank'),
('C24', 'Qspiders');

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
('13-300-4-02-0508', 'B.Sc CS'),
('13-300-4-02-0509', 'B.Sc CS'),
('13-300-4-02-0514', 'B.Sc CS'),
('13-300-4-02-0517', 'B.Sc CS'),
('13-300-4-02-0518', 'B.Sc CS'),
('13-300-4-02-0523', 'B.Sc CS'),
('13-300-4-02-0525', 'B.Sc CS'),
('13-300-4-02-0529', 'B.Sc CS'),
('13-300-4-02-0531', 'B.Sc CS'),
('13-300-4-02-0532', 'B.Sc CS'),
('13-300-4-02-0533', 'B.Sc CS'),
('13-300-4-02-0536', 'B.Sc CS'),
('13-300-4-02-0538', 'B.Sc CS'),
('13-300-4-02-0541', 'B.Sc CS'),
('13-300-4-02-0545', 'B.Sc CS'),
('13-300-4-02-0549', 'B.Sc CS'),
('13-300-4-02-0550', 'B.Sc CS'),
('13-300-4-02-0551', 'B.Sc CS'),
('13-300-4-02-0553', 'B.Sc CS'),
('13-300-4-02-0560', 'B.Sc CS'),
('13-300-4-02-0562', 'B.Sc CS'),
('13-300-4-02-0565', 'B.Sc CS'),
('13-300-4-02-0569', 'B.Sc CS'),
('13-300-4-02-0570', 'B.Sc CS'),
('13-300-4-02-0575', 'B.Sc CS'),
('13-300-4-02-0577', 'B.Sc CS'),
('13-300-4-02-0580', 'B.Sc CS'),
('13-300-4-02-0589', 'B.Sc CS'),
('13-300-4-02-0590', 'B.Sc CS'),
('13-300-4-02-0591', 'B.Sc CS'),
('13-300-4-02-0593', 'B.Sc CS'),
('13-300-4-02-0594', 'B.Sc CS'),
('13-300-4-02-0599', 'B.Sc CS'),
('14-500-5-03-0502', 'M.Sc CS'),
('14-500-5-03-0504', 'M.Sc CS'),
('14-500-5-03-0516', 'M.Sc CS'),
('14-500-5-03-0519', 'M.Sc CS'),
('14-500-5-03-0524', 'M.Sc CS'),
('14-500-5-03-0526', 'M.Sc CS'),
('14-500-5-03-0531', 'M.Sc CS'),
('14-500-5-03-0536', 'M.Sc CS'),
('14-500-5-03-0538', 'M.Sc CS'),
('14-500-5-03-0539', 'M.Sc CS'),
('14-500-5-03-0542', 'M.Sc CS'),
('14-500-5-03-0547', 'M.Sc CS'),
('14-500-5-03-0548', 'M.Sc CS'),
('14-500-5-03-0549', 'M.Sc CS'),
('14-500-5-03-0552', 'M.Sc CS'),
('14-500-5-03-0554', 'M.Sc CS'),
('14-500-5-03-0557', 'M.Sc CS'),
('14-500-5-03-0558', 'M.Sc CS'),
('14-500-5-03-0559', 'M.Sc CS'),
('14-500-5-03-0560', 'M.Sc CS'),
('14-500-5-03-0565', 'M.Sc CS'),
('14-500-5-03-0571', 'M.Sc CS'),
('14-500-5-03-0574', 'M.Sc CS'),
('14-500-5-03-0576', 'M.Sc CS'),
('14-500-5-03-0579', 'M.Sc CS'),
('14-500-5-03-0583', 'M.Sc CS'),
('14-500-5-03-0584', 'M.Sc CS'),
('14-500-5-03-0585', 'M.Sc CS'),
('14-500-5-03-0590', 'M.Sc CS'),
('14-500-5-03-0591', 'M.Sc CS'),
('14-500-5-03-0593', 'M.Sc CS'),
('14-500-5-03-0596', 'M.Sc CS');

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
('13-300-4-02-0509', 'C13', 450000, 'AI DEVELOPER'),
('13-300-4-02-0518', 'C14', 450000, 'SECURITY ANALYST'),
('13-300-4-02-0529', 'C01', 600000, 'TECH CONSULTANT '),
('13-300-4-02-0532', 'C14', 450000, 'SECURITY ANALYST'),
('13-300-4-02-0533', 'C23', 400000, 'AI DEVELOPER'),
('13-300-4-02-0536', 'C10', 450000, 'AI DEVELOPER'),
('13-300-4-02-0538', 'C04', 480000, 'ML ENGINEER '),
('13-300-4-02-0541', 'C14', 450000, 'SECURITY ANALYST'),
('13-300-4-02-0545', 'C06', 450000, 'WEB DEVELOPER '),
('13-300-4-02-0549', 'C10', 450000, 'SECURITY ANALYST'),
('13-300-4-02-0550', 'C05', 450000, 'IT DEVELOPER '),
('13-300-4-02-0553', 'C07', 330000, 'SALES ENGINEER '),
('13-300-4-02-0560', 'C12', 450000, 'SECURITY ANALYST'),
('13-300-4-02-0565', 'C13', 500000, 'AI DEVELOPER '),
('13-300-4-02-0594', 'C04', 480000, 'ML ENGINEER '),
('14-500-5-03-0502', 'C06', 450000, 'AI DEVELOPER'),
('14-500-5-03-0516', 'C06', 500000, 'SOFTWARE DEVELOPER'),
('14-500-5-03-0519', 'C09', 300000, 'SOFTWARE DEVELOPER'),
('14-500-5-03-0524', 'C12', 450000, 'WEB DEVELOPER '),
('14-500-5-03-0531', 'C12', 480000, 'SALES ENGINEER '),
('14-500-5-03-0536', 'C12', 600000, 'SALES ENGINEER '),
('14-500-5-03-0538', 'C14', 450000, 'SECURITY ANALYST'),
('14-500-5-03-0549', 'C10', 480000, 'SALES ENGINEER '),
('14-500-5-03-0557', 'C12', 600000, 'SALES ENGINEER '),
('14-500-5-03-0558', 'C13', 450000, 'AI DEVELOPER'),
('14-500-5-03-0565', 'C12', 330000, 'SALES ENGINEER '),
('14-500-5-03-0571', 'C10', 400000, 'TECH CONSULTANT '),
('14-500-5-03-0574', 'C10', 450000, 'SYSTEM ANALYST'),
('14-500-5-03-0579', 'C05', 600000, 'WEB DEVELOPER '),
('14-500-5-03-0584', 'C05', 440000, 'AI DEVELOPER'),
('14-500-5-03-0590', 'C01', 450000, 'WEB DEVELOPER '),
('14-500-5-03-0596', 'C15', 600000, 'TECH CONSULTANT ');

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
('13-300-4-02-0508', 'Yes'),
('13-300-4-02-0509', 'Yes'),
('13-300-4-02-0514', 'Yes'),
('13-300-4-02-0517', 'Yes'),
('13-300-4-02-0518', 'Yes'),
('13-300-4-02-0523', 'Yes'),
('13-300-4-02-0525', 'Yes'),
('13-300-4-02-0529', 'Yes'),
('13-300-4-02-0531', 'Yes'),
('13-300-4-02-0532', 'Yes'),
('13-300-4-02-0533', 'Yes'),
('13-300-4-02-0536', 'Yes'),
('13-300-4-02-0538', 'Yes'),
('13-300-4-02-0541', 'Yes'),
('13-300-4-02-0545', 'Yes'),
('13-300-4-02-0549', 'Yes'),
('13-300-4-02-0550', 'Yes'),
('13-300-4-02-0551', 'Yes'),
('13-300-4-02-0553', 'Yes'),
('13-300-4-02-0560', 'Yes'),
('13-300-4-02-0562', 'Yes'),
('13-300-4-02-0565', 'Yes'),
('13-300-4-02-0569', 'Yes'),
('13-300-4-02-0570', 'Yes'),
('13-300-4-02-0575', 'Yes'),
('13-300-4-02-0577', 'No'),
('13-300-4-02-0580', 'Yes'),
('13-300-4-02-0589', 'Yes'),
('13-300-4-02-0590', 'Yes'),
('13-300-4-02-0591', 'Yes'),
('13-300-4-02-0593', 'Yes'),
('13-300-4-02-0594', 'Yes'),
('13-300-4-02-0599', 'Yes'),
('14-500-5-03-0502', 'Yes'),
('14-500-5-03-0504', 'Yes'),
('14-500-5-03-0516', 'Yes'),
('14-500-5-03-0519', 'Yes'),
('14-500-5-03-0524', 'Yes'),
('14-500-5-03-0526', 'Yes'),
('14-500-5-03-0531', 'Yes'),
('14-500-5-03-0536', 'Yes'),
('14-500-5-03-0538', 'Yes'),
('14-500-5-03-0539', 'Yes'),
('14-500-5-03-0542', 'Yes'),
('14-500-5-03-0547', 'Yes'),
('14-500-5-03-0548', 'Yes'),
('14-500-5-03-0549', 'Yes'),
('14-500-5-03-0552', 'Yes'),
('14-500-5-03-0554', 'Yes'),
('14-500-5-03-0557', 'Yes'),
('14-500-5-03-0558', 'Yes'),
('14-500-5-03-0559', 'No'),
('14-500-5-03-0560', 'Yes'),
('14-500-5-03-0565', 'Yes'),
('14-500-5-03-0571', 'Yes'),
('14-500-5-03-0574', 'Yes'),
('14-500-5-03-0576', 'Yes'),
('14-500-5-03-0579', 'Yes'),
('14-500-5-03-0583', 'Yes'),
('14-500-5-03-0584', 'Yes'),
('14-500-5-03-0585', 'Yes'),
('14-500-5-03-0590', 'Yes'),
('14-500-5-03-0591', 'Yes'),
('14-500-5-03-0593', 'Yes'),
('14-500-5-03-0596', 'Yes');

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
('13-300-4-02-0508', 'Pauly Ingolotti', 'pingolottir@over-blog.com', 8.68),
('13-300-4-02-0509', 'Eduino Bodycomb', 'ebodycomb4@123-reg.co.uk', 6.98),
('13-300-4-02-0514', 'Calvin Tuplin', 'ctuplinq@sourceforge.net', 6.64),
('13-300-4-02-0517', 'Zahara Parris', 'zparrisj@delicious.com', 9.74),
('13-300-4-02-0518', 'Brooke Moxsom', 'bmoxsomu@netscape.com', 8.83),
('13-300-4-02-0523', 'Hugues Bowne', 'hbownem@ocn.ne.jp', 7.32),
('13-300-4-02-0525', 'Herold Wheatman', 'hwheatmanf@people.com.cn', 6.26),
('13-300-4-02-0529', 'Omar MacCollom', 'omaccollom6@printfriendly.com', 6.4),
('13-300-4-02-0531', 'Evonne Gulleford', 'egullefordp@ft.com', 7.49),
('13-300-4-02-0532', 'Ibbie Jedrasik', 'ijedrasikv@twitter.com', 9.78),
('13-300-4-02-0533', 'Micky Street', 'mstreetb@amazon.com', 9.44),
('13-300-4-02-0536', 'Mikkel Lindenbaum', 'mlindenbaum2@multiply.com', 9.11),
('13-300-4-02-0538', 'Elayne Wemyss', 'ewemyssa@weather.com', 9.42),
('13-300-4-02-0541', 'Theodor Lembrick', 'tlembrickw@skype.com', 7.29),
('13-300-4-02-0545', 'Merola Botly', 'mbotly7@phoca.cz', 7.9),
('13-300-4-02-0549', 'Mickie Cryer', 'mcryer0@wiley.com', 8.05),
('13-300-4-02-0550', 'Elaina Seeborne', 'eseeborne3@ocn.ne.jp', 8.48),
('13-300-4-02-0551', 'Deborah Calderbank', 'dcalderbanks@1und1.de', 7.27),
('13-300-4-02-0553', 'Gillie Everiss', 'geveriss8@microsoft.com', 7.17),
('13-300-4-02-0560', 'Cecilius Doorey', 'cdoorey1@cdc.gov', 8.63),
('13-300-4-02-0562', 'Jordan MacTerrelly', 'jmacterrellyi@1und1.de', 9.76),
('13-300-4-02-0565', 'Agnola Burnup', 'aburnup5@lulu.com', 8.75),
('13-300-4-02-0569', 'Hernando Bravery', 'hbraveryl@mapquest.com', 7.88),
('13-300-4-02-0570', 'Adoree Keddie', 'akeddiet@cdc.gov', 9.39),
('13-300-4-02-0575', 'Lee Hiscocks', 'lhiscocksh@newsvine.com', 8.72),
('13-300-4-02-0577', 'Orville Milmith', 'omilmithg@ebay.com', 6.59),
('13-300-4-02-0580', 'Petronella Sweett', 'psweettd@1und1.de', 8.96),
('13-300-4-02-0589', 'Collie Caghan', 'ccaghanc@china.com.cn', 8.99),
('13-300-4-02-0590', 'Ciel Palmby', 'cpalmbyo@theguardian.com', 8.03),
('13-300-4-02-0591', 'Bryna Humby', 'bhumbyk@wp.com', 7.91),
('13-300-4-02-0593', 'Dene Roundtree', 'droundtreee@icio.us', 6.81),
('13-300-4-02-0594', 'Port Dillimore', 'pdillimore9@qq.com', 8.89),
('13-300-4-02-0599', 'Prince Eagleton', 'peagletonn@state.tx.us', 6.75),
('14-500-5-03-0502', 'Hedda Berecloth', 'hberecloth1@acquirethisname.com', 8.13),
('14-500-5-03-0504', 'Marijn Farlham', 'mfarlhaml@washingtonpost.com', 7.09),
('14-500-5-03-0516', 'Gracia Mallinar', 'gmallinar2@ifeng.com', 9.86),
('14-500-5-03-0519', 'Dix Priel', 'dprielt@soup.io', 7.23),
('14-500-5-03-0524', 'Ulrike Son', 'usonv@vinaora.com', 8.75),
('14-500-5-03-0526', 'Ranna Wilcocks', 'rwilcocksd@wunderground.com', 7.59),
('14-500-5-03-0531', 'Herculie Elmore', 'helmorer@myspace.com', 9.19),
('14-500-5-03-0536', 'Mordecai Tennet', 'mtennetw@vk.com', 6.18),
('14-500-5-03-0538', 'Shari Delacote', 'sdelacote0@xinhuanet.com', 6.86),
('14-500-5-03-0539', 'Irita Crimpe', 'icrimpej@wordpress.com', 8.13),
('14-500-5-03-0542', 'Joshua Bowbrick', 'jbowbrick7@uol.com.br', 7.28),
('14-500-5-03-0547', 'Gwenore Firks', 'gfirksc@theguardian.com', 9.21),
('14-500-5-03-0548', 'Peder Procter', 'pprocterb@bandcamp.com', 6.78),
('14-500-5-03-0549', 'Twyla Koppen', 'tkoppen5@cnet.com', 9.8),
('14-500-5-03-0552', 'Hammad Munnis', 'hmunnisf@yandex.ru', 7.27),
('14-500-5-03-0554', 'Davida Mensler', 'dmenslera@who.int', 9.07),
('14-500-5-03-0557', 'Emmet Pol', 'epolx@mysql.com', 9.08),
('14-500-5-03-0558', 'Lyndsie Ogilvy', 'logilvyn@europa.eu', 6.3),
('14-500-5-03-0559', 'Dermot Curless', 'dcurlessk@wikispaces.com', 8.9),
('14-500-5-03-0560', 'Irvin Testro', 'itestroi@istockphoto.com', 9.87),
('14-500-5-03-0565', 'Franky Frostdyke', 'ffrostdykeq@bbc.co.uk', 8.43),
('14-500-5-03-0571', 'Siward Soaper', 'ssoaperu@seesaa.net', 8.73),
('14-500-5-03-0574', 'Grenville Featonby', 'gfeatonbyp@free.fr', 6.93),
('14-500-5-03-0576', 'Alphonse Mor', 'amorm@netscape.com', 8.63),
('14-500-5-03-0579', 'Marc Feldbrin', 'mfeldbrino@webeden.co.uk', 6.36),
('14-500-5-03-0583', 'Berenice Tinner', 'btinner9@sun.com', 9.75),
('14-500-5-03-0584', 'Shoshana Melbourn', 'smelbourns@shop-pro.jp', 9.24),
('14-500-5-03-0585', 'Xylina Cobb', 'xcobb6@friendfeed.com', 6.9),
('14-500-5-03-0590', 'Rory Clail', 'rclail4@cloudflare.com', 9.44),
('14-500-5-03-0591', 'Geri Roistone', 'groistoneh@google.co.uk', 7.55),
('14-500-5-03-0593', 'Skipper Vipan', 'svipane@typepad.com', 6.99),
('14-500-5-03-0596', 'Mil Duxbarry', 'mduxbarry3@networkadvertising.org', 8.14);

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
