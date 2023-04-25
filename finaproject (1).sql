-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 09:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finaproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passsword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `passsword`) VALUES
(2, 'admin@vis.com', '7488e331b8b64e5794da3fa4eb10ad5d');

-- --------------------------------------------------------

--
-- Table structure for table `claim`
--

CREATE TABLE `claim` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `policy` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `buydate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `lastdate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `claim`
--

INSERT INTO `claim` (`id`, `name`, `policy`, `address`, `email`, `number`, `info`, `file`, `uid`, `buydate`, `status`, `lastdate`) VALUES
(7, 'Anish Pandey', '', 'lalitpur', 'anishpaney12345@gmail.com', '9845886044', 'My bike is stolen. here is the document from police. hope you will process the requested as soon as possible.', 'D:\\Files\\download\\src\\main\\webapp\\files\\downloadPolice-report.jpg', 16, '2023-04-25', 'accepted', '2023-05-05'),
(8, 'Pradip Phyal ', '', 'Simara bara ', 'pradippp123@gmail.com', '984586666', 'My bike is stolen. here is the document from police. hope you will process the requested as soon as possible.', 'D:\\Files\\download\\src\\main\\webapp\\files\\downloadPolice-report.jpg', 17, '2023-04-25', 'rejected', '2023-05-05'),
(9, 'Ayush lamsal ', '', 'Jhapha ', 'ayushlamsal123@gmail.com', '98458884', 'My bike is stolen. here is the document from police. hope you will process the requested as soon as possible.', 'D:\\Files\\download\\src\\main\\webapp\\files\\downloadPolice-report.jpg', 18, '2023-04-25', 'rejected', '2023-05-05'),
(10, 'Shiva Thapaliya ', '', 'Simara bara', 'shiva123@gmail.com', '984586666', '\r\n\r\nMy car is stolen. here is the document from police. hope you will process the requested as soon as possible.', 'D:\\Files\\download\\src\\main\\webapp\\files\\downloadPolice-report.jpg', 19, '2023-04-25', 'accepted', '2023-05-05'),
(11, 'Sweta Gautam ', '', 'kathmandu', 'sweta123@gmail.com', '984586666', 'My Scooter is stolen. here is the document from police. hope you will process the requested as soon as possible.', 'D:\\Files\\download\\src\\main\\webapp\\files\\downloadPolice-report.jpg', 20, '2023-04-25', 'pending', '2023-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `EMAIL` varchar(100) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Occupation` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `idtype` varchar(50) NOT NULL,
  `idnumber` varchar(50) NOT NULL,
  `authority` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `plateno` varchar(50) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `motordmg` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `vperiod` varchar(50) NOT NULL,
  `mobilenumber` varchar(50) NOT NULL,
  `evalue` varchar(100) NOT NULL,
  `buydate` varchar(255) NOT NULL,
  `lastdate` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`EMAIL`, `Gender`, `Occupation`, `fullname`, `DOB`, `idtype`, `idnumber`, `authority`, `state`, `date`, `plateno`, `manufacturer`, `motordmg`, `plan`, `vperiod`, `mobilenumber`, `evalue`, `buydate`, `lastdate`, `id`, `uid`) VALUES
('anishpandey12345@gmail.com', 'Male', 'Accounttant ', 'Anish paney ', '2001-04-11', 'Citizenship', '123456789', 'Nepal Governmnet', 'Bagmati', '2009-04-13', 'Ba 1256666', 'Honda ', 'None', 'All Risk', '1 year', '9845860448', '300000', '2023-04-25', '2023-10-25', 6, 16),
('pradippp123@gmail.com', 'Male', 'Teacher ', 'Pradip Phuyal ', '2023-04-20', 'Citizenship', '1125355', 'Nepal Governmnet', 'Madesh', '2021-03-10', 'Ba 1256666', 'Mahendra ', 'Motor', 'Obligatory', '2 years', '9845680448', '250000', '2023-04-25', '2023-10-25', 7, 17),
('ayushlamsal123@gmail.com ', 'Male', 'Waiter', 'Ayush Lamsal', '2011-05-11', 'Citizenship', '12546888', 'Nepal Governmnet', 'Province 1 ', '2022-05-03', 'Ba 1256666', 'Suzuki ', 'Motor', 'Obligatory', '2 years', '984586666', '5000000', '2023-04-25', '2023-10-25', 8, 18),
('shiva123@gmail.com ', 'Male', 'Accounttant', 'Shiva Thapaliya ', '2007-06-12', 'Citizenship', '58695547', 'Nepal Governmnet', 'Madesh', '2020-05-13', 'Ba 1256666', 'BMW ', 'Wheels', 'Obligatory', '3 years', '984586666', '50000000', '2023-04-25', '2023-10-25', 9, 19),
('sweta123@gmail.com', 'Female', 'Staff Nurse ', 'Sweta gautam', '2007-02-06', 'Citizenship', '569855465', 'Nepal Governmnet', 'Bagmati', '2023-03-28', 'Ba 1256666', 'Aprilla ', 'Motor', 'Obligatory', '3 years', '9845860442', '790000', '2023-04-25', '2023-10-25', 10, 20),
('sweta123@gmail.com', 'Female', 'Staff Nurse', 'Sweta gautam', '2023-04-12', 'Citizenship', '1213256', 'Nepal Governmnet', 'Bagmati', '2023-04-10', 'Ba 1256666', 'Hero', 'Wheels', 'All Risk', '3 years', '984586666', '358000', '2023-04-25', '2023-10-25', 11, 20);

-- --------------------------------------------------------

--
-- Table structure for table `login_users`
--

CREATE TABLE `login_users` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_users`
--

INSERT INTO `login_users` (`uid`, `username`, `email`, `password`, `status`) VALUES
(14, ' sun1t', 'sandiprai2058@gmail.com', '47bce5c74f589f4867dbd57e9ca9f808', 'active'),
(16, 'Anish paney', 'anishpaney12345@gmail.com', '80ec08504af83331911f5882349af59d', 'active'),
(17, 'Pradip Phuyal ', 'pradippp123@gmail.com', '80ec08504af83331911f5882349af59d', 'active'),
(18, 'Ayush lamsal ', 'ayushlamsal123@gmail.com', '80ec08504af83331911f5882349af59d', 'active'),
(19, 'Shiva Thapaliya ', 'shiva123@gmail.com ', '80ec08504af83331911f5882349af59d', 'active'),
(20, 'Sweta Gautam ', 'sweta123@gmail.com', '80ec08504af83331911f5882349af59d', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `Name` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Evalue` int(11) NOT NULL,
  `Premium` double NOT NULL,
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`Name`, `PhoneNumber`, `Evalue`, `Premium`, `id`, `uid`) VALUES
('Anish paney ', '9845860448', 300000, 6000, 8, 16),
('Pradip Phuyal ', '9845680448', 250000, 3750, 9, 17),
('Ayush Lamsal', '984586666', 5000000, 125000, 10, 18),
('Shiva Thapaliya ', '984586666', 50000000, 1250000, 11, 19),
('Sweta gautam', '9845860442', 790000, 11850, 12, 20),
('Sweta gautam', '984586666', 358000, 7160, 13, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claim`
--
ALTER TABLE `claim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `claim_login_users_uid_fk` (`uid`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD UNIQUE KEY `uid` (`id`),
  ADD KEY `fk_details_login_user` (`uid`);

--
-- Indexes for table `login_users`
--
ALTER TABLE `login_users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_premium_login_user` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `claim`
--
ALTER TABLE `claim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login_users`
--
ALTER TABLE `login_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `premium`
--
ALTER TABLE `premium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `claim`
--
ALTER TABLE `claim`
  ADD CONSTRAINT `claim_login_users_uid_fk` FOREIGN KEY (`uid`) REFERENCES `login_users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `fk_details_login_user` FOREIGN KEY (`uid`) REFERENCES `login_users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `premium`
--
ALTER TABLE `premium`
  ADD CONSTRAINT `fk_premium_login_user` FOREIGN KEY (`uid`) REFERENCES `login_users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
