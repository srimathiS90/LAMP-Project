-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 16, 2016 at 03:08 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamp_final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `Category_ID` varchar(10) NOT NULL,
  `CategoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`Category_ID`, `CategoryName`) VALUES
('1', 'forsales'),
('2', 'services'),
('3', 'Jobs');

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `Location_ID` varchar(10) NOT NULL,
  `Region_ID` varchar(10) NOT NULL,
  `LocationName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`Location_ID`, `Region_ID`, `LocationName`) VALUES
('11', '1', 'cupertino'),
('21', '2', 'mumbai'),
('31', '3', 'stockholm');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `id`) VALUES
('lamp', '1', 12);

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `Post_ID` int(11) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Price` float NOT NULL,
  `Description` varchar(60) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Agreement` varchar(60) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Image_1` varchar(60) NOT NULL,
  `Image_2` varchar(20) NOT NULL,
  `Image_3` varchar(20) NOT NULL,
  `Image_4` varchar(20) NOT NULL,
  `SubCategory_ID` varchar(10) NOT NULL,
  `Location_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`Post_ID`, `Title`, `Price`, `Description`, `Email`, `Agreement`, `TimeStamp`, `Image_1`, `Image_2`, `Image_3`, `Image_4`, `SubCategory_ID`, `Location_ID`) VALUES
(102, 'Couch - 3 seater', 1200, 'A sofa -set', 'swed@gmail.com', 'checked', '2015-04-14 05:15:07', '', '', '', '', '13', '31'),
(103, 'Systems Engineer', 12000, '', '', 'checked', '2015-04-08 07:59:09', '', '', '', '', '31', '31'),
(104, 'DVD Player', 120, 'A new range og config 3.0', 'asd@gmail.com', 'checked', '2015-04-08 08:00:00', '', '', '', '', '12', '11'),
(105, 'Bank Loan', 12001, 'A new loan with less interest', 'contact@gmail.com', 'checked', '2015-04-08 08:01:08', '', '', '', '', '22', '21'),
(106, 'DVD Player', 789, 'An Samsung bluray Player', 'samsung@gmail.com', 'checked', '2015-04-08 09:56:14', '', '', '', '', '12', '21'),
(107, 'Alice in wonderland', 20, 'author:Lewis Caroll', 'alice@gmail.com', 'checked', '2015-04-14 04:33:05', '', '', '', '', '11', '11'),
(108, 'Mac - Air', 1200, 'Mac book', 'mac@yahoo.co.in', 'checked', '2015-04-14 04:34:00', '', '', '', '', '21', '21'),
(109, 'BMW 328i', 50000, '1 year old white BMV in good contion', 'lessions@gmail.com', 'checked', '2015-04-14 05:20:59', '', '', '', '', '23', '31'),
(110, 'Front end intern', 500, 'An unpaid internship available at cupertino', 'jobs@hotmail.com', 'checked', '2015-04-14 04:50:05', '', '', '', '', '32', '21'),
(111, 'Animal care', 0, 'Volunteering for animal shelter', 'volunteer@redcross.o', 'checked', '2015-04-14 04:48:03', '', '', '', '', '33', '11'),
(112, 'Samsung LED TV', 2000, 'Samsung smart tv with wifi connevtivity', 'samsung@gmail.com', 'checked', '2015-04-14 04:55:31', '', '', '', '', '12', '11'),
(113, 'Introduction to LAMP', 25.6, 'Beginners guide to LAMP stack', 'lamp@gmail.com', 'checked', '2015-04-14 04:58:09', '', '', '', '', '11', '21'),
(114, 'Kane and Abel', 20, 'Authored by Jeffery Archer', 'kaa@jefferybooks.org', 'checked', '2015-04-14 05:02:01', '', '', '', '', '11', '31'),
(115, 'Table Lamp', 40, 'Ashley table lamp with 2 LED', 'ashley@hotmail.com', 'checked', '2015-04-14 05:03:00', '', '', '', '', '13', '21'),
(116, 'Recliner', 400, 'Brown faux leather recliner - single', 'ashley@hotmail.com', 'checked', '2015-04-14 05:03:28', '', '', '', '', '13', '21'),
(117, 'HP', 600, '15 inches HP touchscreen', 'hp@yahoo.com', 'checked', '2015-04-14 05:04:38', '', '', '', '', '21', '11'),
(118, 'Lenovo', 600, '15 inches Lenovo thinkpad in good condition', 'jack@yahoo.com', 'checked', '2015-04-14 05:05:07', '', '', '', '', '21', '31'),
(119, 'Fixed Deposit', 6000.5, 'Fixed Deposit at 9% intererst', 'poly@yahoo.com', 'checked', '2015-04-14 05:15:20', '', '', '', '', '22', '21'),
(120, 'Tax returns', 6000.5, 'File your income tax at less cost', 'mohan@yahoo.com', 'checked', '2015-04-14 05:06:44', '', '', '', '', '22', '31'),
(121, 'Clerk', 100, 'A bank clerk position opened', 'mohan@yahoo.com', 'checked', '2015-04-14 05:09:08', '', '', '', '', '31', '21'),
(122, 'High school teacher', 3500, 'A teacher for tenth grade required', 'school@gmail.com', 'checked', '2015-04-14 05:10:40', '', '', '', '', '31', '11'),
(123, 'UI-UX designer', 3500, 'A part time job for UI designer opened', 'jobs@gmail.com', 'checked', '2015-04-14 05:11:24', '', '', '', '', '32', '31'),
(124, 'Python developer', 14000, 'A python developer full time position opened at yahoo', 'jobs@yahoo.com', 'checked', '2015-04-14 05:12:24', '', '', '', '', '32', '31'),
(125, 'Consultants', 14000, 'An experienced software consultanat requierd to lead a team', 'jobs@yahoo.com', 'checked', '2015-04-14 05:15:28', '', '', '', '', '33', '21'),
(126, 'Music advisor', 8000, 'An experienced musician required to advice a bunch of newbie', 'jobs@beats.com', 'checked', '2015-04-14 05:13:50', '', '', '', '', '33', '11'),
(127, 'Mahindra Truck', 40000, 'A 5 year old Mahindra Truck availabale', 'ramesh@gmail.com', 'checked', '2015-04-14 05:19:07', '', '', '', '', '23', '21'),
(128, 'Nissan Sunny', 2000, 'A 15 year old nissan sunny in good condition', 'marc.johnson@gmail.c', 'checked', '2015-04-14 05:19:53', '', '', '', '', '23', '31'),
(129, 'High chair', 150.8, 'Rarely used wooden high chair', 'jessica.spencer@hotm', 'checked', '2015-04-14 05:24:26', '', '', '', '', '13', '21'),
(130, 'Wings of fire', 20, 'Author - A.P.J. Abdul kalam\r\nAutobiography', 'sonia.kapoor@hotmail', 'checked', '2015-04-14 05:27:50', '', '', '', '', '11', '11');

-- --------------------------------------------------------

--
-- Table structure for table `Region`
--

CREATE TABLE `Region` (
  `Region_ID` varchar(10) NOT NULL,
  `RegionName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Region`
--

INSERT INTO `Region` (`Region_ID`, `RegionName`) VALUES
('1', 'USA'),
('2', 'india'),
('3', 'sweden');

-- --------------------------------------------------------

--
-- Table structure for table `SubCategory`
--

CREATE TABLE `SubCategory` (
  `SubCategory_ID` varchar(10) NOT NULL,
  `Category_ID` varchar(10) NOT NULL,
  `SubCategoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubCategory`
--

INSERT INTO `SubCategory` (`SubCategory_ID`, `Category_ID`, `SubCategoryName`) VALUES
('11', '1', 'Books'),
('12', '1', 'Electronics'),
('13', '1', 'Household'),
('21', '2', 'Computer'),
('22', '2', 'Financial'),
('23', '2', 'Automobiles'),
('31', '3', 'Full-time'),
('32', '3', 'Part-time'),
('33', '3', 'Volunteering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD UNIQUE KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD UNIQUE KEY `Location_ID` (`Location_ID`),
  ADD KEY `Region_ibfk_1` (`Region_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`Post_ID`),
  ADD KEY `Location_ibfk_1` (`Location_ID`),
  ADD KEY `SubCategory_ibfk_1` (`SubCategory_ID`);

--
-- Indexes for table `Region`
--
ALTER TABLE `Region`
  ADD UNIQUE KEY `Region_ID` (`Region_ID`);

--
-- Indexes for table `SubCategory`
--
ALTER TABLE `SubCategory`
  ADD UNIQUE KEY `SubCategory_ID` (`SubCategory_ID`),
  ADD KEY `Category_ibfk_1` (`Category_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `Post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Location`
--
ALTER TABLE `Location`
  ADD CONSTRAINT `Region_ibfk_1` FOREIGN KEY (`Region_ID`) REFERENCES `Region` (`Region_ID`);

--
-- Constraints for table `Posts`
--
ALTER TABLE `Posts`
  ADD CONSTRAINT `Location_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `Location` (`Location_ID`),
  ADD CONSTRAINT `SubCategory_ibfk_1` FOREIGN KEY (`SubCategory_ID`) REFERENCES `SubCategory` (`SubCategory_ID`);

--
-- Constraints for table `SubCategory`
--
ALTER TABLE `SubCategory`
  ADD CONSTRAINT `Category_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `Category` (`Category_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
