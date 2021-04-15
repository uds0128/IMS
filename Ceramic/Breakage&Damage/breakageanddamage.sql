-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2021 at 10:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imsdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `breakageanddamage`
--

CREATE TABLE `breakageanddamage` (
  `SysId` int(11) NOT NULL,
  `StockId` int(11) DEFAULT NULL,
  `BillingQty` int(11) DEFAULT NULL,
  `OtherQty` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT curdate(),
  `ModifiedDate` date DEFAULT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breakageanddamage`
--

INSERT INTO `breakageanddamage` (`SysId`, `StockId`, `BillingQty`, `OtherQty`, `CreatedDate`, `ModifiedDate`, `RecStatus`) VALUES
(3, 4, 4, 0, '2021-04-10', '2021-04-11', 1),
(4, 4, 2, 0, '2021-04-10', NULL, 1),
(5, 4, 2, 0, '2021-04-10', NULL, 1),
(6, 4, 7, 0, '2021-04-10', NULL, 1),
(7, 4, 2, 0, '2021-04-10', NULL, 1),
(8, 4, 2, 0, '2021-04-10', NULL, 1),
(9, 4, 2, 0, '2021-04-10', NULL, 1),
(10, 4, 2, 0, '2021-04-10', NULL, 1),
(11, 4, 2, 0, '2021-04-10', NULL, 1),
(12, 4, 4, 0, '2021-04-10', '2021-04-11', 1),
(13, 4, 2, 0, '2021-04-10', NULL, 1),
(14, 5, 0, 5, '2021-04-10', '2021-04-11', 1),
(15, 5, 0, 2, '2021-04-11', NULL, 1),
(16, 4, 2, 0, '2021-04-11', NULL, 1),
(17, 4, 2, 0, '2021-04-11', NULL, 1),
(18, 7, 0, 4, '2021-04-11', '2021-04-11', 1),
(19, 5, 0, 11, '2021-04-11', '2021-04-11', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakageanddamage`
--
ALTER TABLE `breakageanddamage`
  ADD PRIMARY KEY (`SysId`),
  ADD KEY `StockId` (`StockId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breakageanddamage`
--
ALTER TABLE `breakageanddamage`
  MODIFY `SysId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `breakageanddamage`
--
ALTER TABLE `breakageanddamage`
  ADD CONSTRAINT `breakageanddamage_ibfk_1` FOREIGN KEY (`StockId`) REFERENCES `stockdetails` (`StockId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
