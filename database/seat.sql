-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 10:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_ID` int(11) NOT NULL,
  `pName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Bo_Place` varchar(50) NOT NULL,
  `De_Place` varchar(50) NOT NULL,
  `SeatNum` varchar(50) NOT NULL,
  `busID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_ID`, `pName`, `Email`, `Bo_Place`, `De_Place`, `SeatNum`, `busID`) VALUES
(34, 'kasun', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '43,44,', 2),
(35, 'nimal', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '2,', 1),
(36, 'gihan', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '2,', 1),
(37, 'Kamla', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '2,', 1),
(38, 'heshan', 'it20611910@my.sliit.lk', 'Maharagama', 'kottawa', '8,', 1),
(39, 'heshan2', 'it20611910@my.sliit.lk', 'Maharagama', 'kottawa', '8,', 1),
(40, 'seven', 'mkushan14@gmail.com', 'Maharagama', 'kottawa', '19,20,21,22,23,24,25,26,27,28,47,48,49,50,', 1),
(41, 'heshan2', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '8,', 1),
(42, 'Kamla', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '10,', 1),
(43, 'Heshan Madhuranga', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '10,', 2),
(44, 'Kamla perera89', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '15,16,', 2),
(45, 'Kamla pereralhuij', 'mheahan27@gamil.com', 'Maharagama', 'kottawa', '13,14,', 2),
(46, 'Kamla perera', 'saweliw572@clsn1.com', 'Maharagama', 'kottawa', '10,13,', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_ID`),
  ADD KEY `seatforeign` (`busID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seatforeign` FOREIGN KEY (`busID`) REFERENCES `busreservation` (`BRID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
