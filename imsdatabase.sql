-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 04:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

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
-- Table structure for table `brandmapp`
--

CREATE TABLE `brandmapp` (
  `BrandMapping` int(11) NOT NULL,
  `SubcategoryId` int(11) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brandmapp`
--

INSERT INTO `brandmapp` (`BrandMapping`, `SubcategoryId`, `BrandId`, `RecStatus`) VALUES
(1, 1, 1, 1),
(3, 2, 1, 1),
(5, 3, 3, 1),
(6, 4, 3, 1),
(7, 1, 4, 1),
(8, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brandnames`
--

CREATE TABLE `brandnames` (
  `BrandId` int(11) NOT NULL,
  `BrandName` varchar(70) DEFAULT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brandnames`
--

INSERT INTO `brandnames` (`BrandId`, `BrandName`, `RecStatus`) VALUES
(1, 'J. K. LAKSHMI', 1),
(2, 'SANDHI CEMENT', 1),
(3, 'JAGUAR CERAMIC', 1),
(4, 'Color Cement', 1);

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
  `ModifiedDate` datetime DEFAULT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breakageanddamage`
--

INSERT INTO `breakageanddamage` (`SysId`, `StockId`, `BillingQty`, `OtherQty`, `CreatedDate`, `ModifiedDate`, `RecStatus`) VALUES
(1, 5, 10, 0, '2021-04-14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btblcustomermst`
--

CREATE TABLE `btblcustomermst` (
  `CustomerId` int(10) NOT NULL,
  `CustomerName` text NOT NULL,
  `MobileNo` bigint(10) NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `GSTNo` varchar(16) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `btblexpencemst`
--

CREATE TABLE `btblexpencemst` (
  `ExpanceId` int(10) NOT NULL,
  `Discription` text NOT NULL,
  `ExpanceDate` date NOT NULL,
  `Amount` float NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `btblqutationdetails`
--

CREATE TABLE `btblqutationdetails` (
  `ItemNo` int(11) NOT NULL,
  `Discription` text NOT NULL,
  `Qty` int(10) NOT NULL,
  `Rate` float NOT NULL,
  `Gst` int(10) NOT NULL,
  `CreatedDate` date NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL DEFAULT 1,
  `QutationId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `btblqutationmst`
--

CREATE TABLE `btblqutationmst` (
  `QutationId` int(10) NOT NULL,
  `Name` text NOT NULL,
  `QDate` date NOT NULL,
  `TotalPrice` float NOT NULL,
  `TotalGST` float NOT NULL,
  `TotalAmount` float NOT NULL,
  `CreatedDate` date NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `btblvendormst`
--

CREATE TABLE `btblvendormst` (
  `VendorId` int(10) NOT NULL,
  `VendorName` text NOT NULL,
  `MobileNo` bigint(10) NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `GSTNo` varchar(16) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `active_status`) VALUES
(1, 'CEMENT', 1),
(2, 'CERAMIC', 1),
(3, 'SANITRYWARE', 1),
(4, 'BATHROOM FITTINGS', 1),
(5, 'STONE', 1),
(6, 'KITCHEN SINK', 1),
(7, 'CHEMICALS', 1),
(8, 'HARDWARE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `challandetails`
--

CREATE TABLE `challandetails` (
  `ChallanId` int(11) DEFAULT NULL,
  `StockId` int(11) DEFAULT NULL,
  `BillingQty` int(11) DEFAULT NULL,
  `OtherQty` int(11) DEFAULT NULL,
  `SellingPrice` float DEFAULT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `challandetails`
--

INSERT INTO `challandetails` (`ChallanId`, `StockId`, `BillingQty`, `OtherQty`, `SellingPrice`, `RecStatus`) VALUES
(1, 1, 10, 0, 3100, 1),
(1, 7, 0, 10, 2450, 1);

-- --------------------------------------------------------

--
-- Table structure for table `challanmst`
--

CREATE TABLE `challanmst` (
  `ChallanId` int(11) NOT NULL,
  `ChallanNo` int(11) DEFAULT 0,
  `ChallanDate` datetime NOT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `TotalAmount` float DEFAULT NULL,
  `Discount` float DEFAULT 0,
  `TransportCost` float DEFAULT NULL,
  `AmountToBePaid` float DEFAULT NULL,
  `RoundOffDeade` float DEFAULT 0,
  `DueAmount` float DEFAULT 0,
  `RecStatus` tinyint(1) DEFAULT 1,
  `ExtraCostDesc` text DEFAULT NULL,
  `ExtraCost` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `challanmst`
--

INSERT INTO `challanmst` (`ChallanId`, `ChallanNo`, `ChallanDate`, `CustomerId`, `CreatedDate`, `ModifiedDate`, `TotalAmount`, `Discount`, `TransportCost`, `AmountToBePaid`, `RoundOffDeade`, `DueAmount`, `RecStatus`, `ExtraCostDesc`, `ExtraCost`) VALUES
(1, 2021040001, '2021-04-14 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 71000, 0, 0, NULL, 0, 0, 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `challanno`
--

CREATE TABLE `challanno` (
  `month` varchar(6) NOT NULL,
  `last_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `challanno`
--

INSERT INTO `challanno` (`month`, `last_no`) VALUES
('202104', 2);

-- --------------------------------------------------------

--
-- Table structure for table `grademapp`
--

CREATE TABLE `grademapp` (
  `GradeMappId` int(11) NOT NULL,
  `Subcategory_id` int(11) DEFAULT NULL,
  `GradeId` int(11) DEFAULT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grademapp`
--

INSERT INTO `grademapp` (`GradeMappId`, `Subcategory_id`, `GradeId`, `RecStatus`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 1, 1),
(4, 2, 2, 1),
(5, 3, 3, 1),
(6, 3, 4, 1),
(7, 3, 5, 1),
(8, 3, 6, 1),
(9, 4, 3, 1),
(10, 4, 4, 1),
(11, 4, 5, 1),
(12, 4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GradeId` int(11) NOT NULL,
  `GradeText` varchar(20) DEFAULT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GradeId`, `GradeText`, `RecStatus`) VALUES
(1, 'TRADE', 1),
(2, 'NON-TRADE', 1),
(3, 'PREMIUM', 1),
(4, 'STANDARD', 1),
(5, 'COMMERCIAL', 1),
(6, 'ECONOMICAL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoicedetails`
--

CREATE TABLE `invoicedetails` (
  `InvoiceId` int(30) NOT NULL,
  `StockId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SellingPrice` float NOT NULL,
  `RecStatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoicedetails`
--

INSERT INTO `invoicedetails` (`InvoiceId`, `StockId`, `Quantity`, `SellingPrice`, `RecStatus`) VALUES
(1, 1, 10, 3100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoicemst`
--

CREATE TABLE `invoicemst` (
  `InvoiceId` int(30) NOT NULL,
  `InvoiceNo` varchar(10) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `InvoiceDate` datetime NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `Discount` float NOT NULL,
  `TransportationCost` float NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` datetime NOT NULL,
  `RecStatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoicemst`
--

INSERT INTO `invoicemst` (`InvoiceId`, `InvoiceNo`, `CustomerId`, `InvoiceDate`, `TotalAmount`, `Discount`, `TransportationCost`, `CreatedDate`, `ModifiedDate`, `RecStatus`) VALUES
(1, '2021040001', 2, '2021-04-14 00:00:00', 32550, 0, 0, '2021-04-14 20:07:01', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoiceno`
--

CREATE TABLE `invoiceno` (
  `month` varchar(6) NOT NULL,
  `last_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoiceno`
--

INSERT INTO `invoiceno` (`month`, `last_no`) VALUES
('202104', 2);

-- --------------------------------------------------------

--
-- Table structure for table `productmst`
--

CREATE TABLE `productmst` (
  `ProductID` int(11) NOT NULL,
  `ProductSubCategoryID` int(11) DEFAULT NULL,
  `ProductTypeColor` varchar(50) DEFAULT 'N/A',
  `SizeOrDimension` varchar(50) DEFAULT 'N/A',
  `QtyPerUnit` int(11) NOT NULL,
  `PackingUnit` varchar(15) NOT NULL,
  `Code` varchar(30) DEFAULT 'N/A',
  `CreatedDate` date DEFAULT current_timestamp(),
  `ModifiedDate` date DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `GradeId` int(11) DEFAULT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productmst`
--

INSERT INTO `productmst` (`ProductID`, `ProductSubCategoryID`, `ProductTypeColor`, `SizeOrDimension`, `QtyPerUnit`, `PackingUnit`, `Code`, `CreatedDate`, `ModifiedDate`, `BrandId`, `GradeId`, `RecStatus`) VALUES
(1, 2, 'GRAY', 'N/A', 50, 'KG', 'Cgcjk50', '2021-04-14', NULL, 1, 1, 1),
(2, 2, 'GRAY', 'N/A', 50, 'KG', 'Cgcjk50', '2021-04-14', NULL, 1, 2, 1),
(3, 1, 'WHITE', 'N/A', 30, 'KG', 'Cwcsc30', '2021-04-14', NULL, 2, 1, 1),
(4, 1, 'WHITE', 'N/A', 30, 'KG', 'Cwcsc30', '2021-04-14', NULL, 2, 2, 1),
(5, 1, 'Color', 'N/A', 25, 'KG', 'Cwccc25', '2021-04-14', '2021-04-14', 4, 1, 1),
(6, 1, 'Color', 'N/A', 25, 'KG', 'Cwccc25', '2021-04-14', '2021-04-14', 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `returndetails`
--

CREATE TABLE `returndetails` (
  `ReturnId` int(10) NOT NULL,
  `ChallanId` int(10) NOT NULL,
  `StockId` int(10) NOT NULL,
  `BillingReturnQty` int(10) NOT NULL,
  `OtherReturnQty` int(10) NOT NULL,
  `ReturnAmount` int(10) NOT NULL,
  `Createddate` datetime NOT NULL,
  `Modifieddate` datetime NOT NULL,
  `RecStatus` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returndetails`
--

INSERT INTO `returndetails` (`ReturnId`, `ChallanId`, `StockId`, `BillingReturnQty`, `OtherReturnQty`, `ReturnAmount`, `Createddate`, `Modifieddate`, `RecStatus`) VALUES
(1, 1, 1, 5, 0, 12250, '2021-04-14 20:04:21', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stockdetails`
--

CREATE TABLE `stockdetails` (
  `StockId` int(100) NOT NULL,
  `SysId` int(100) NOT NULL,
  `BillingQty` int(100) NOT NULL,
  `OtherQty` int(100) NOT NULL,
  `VirtualQty` int(100) NOT NULL,
  `DateAdded` date NOT NULL DEFAULT current_timestamp(),
  `InwardId` int(100) NOT NULL,
  `Createdate` date NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stockdetails`
--

INSERT INTO `stockdetails` (`StockId`, `SysId`, `BillingQty`, `OtherQty`, `VirtualQty`, `DateAdded`, `InwardId`, `Createdate`, `ModifiedDate`) VALUES
(1, 1, 90, 0, 90, '2021-04-14', 1, '2021-04-14', '2021-04-14'),
(2, 2, 100, 0, 100, '2021-04-14', 1, '2021-04-14', NULL),
(3, 3, 0, 100, 0, '2021-04-14', 2, '2021-04-14', NULL),
(4, 4, 0, 100, 0, '2021-04-14', 2, '2021-04-14', NULL),
(5, 5, 90, 0, 100, '2021-04-14', 3, '2021-04-14', '2021-04-14'),
(6, 6, 100, 0, 100, '2021-04-14', 3, '2021-04-14', NULL),
(7, 7, 0, 90, 0, '2021-04-14', 4, '2021-04-14', '2021-04-14'),
(8, 8, 0, 100, 0, '2021-04-14', 4, '2021-04-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stockmst`
--

CREATE TABLE `stockmst` (
  `SysId` int(11) NOT NULL,
  `BillingQty` int(11) DEFAULT 0,
  `OtherQty` int(11) DEFAULT 0,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stockmst`
--

INSERT INTO `stockmst` (`SysId`, `BillingQty`, `OtherQty`, `RecStatus`) VALUES
(1, 100, 0, 1),
(2, 100, 0, 1),
(3, 0, 100, 1),
(4, 0, 100, 1),
(5, 100, 0, 1),
(6, 100, 0, 1),
(7, 0, 100, 1),
(8, 0, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(30) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT 1,
  `ProductHSNCode` varchar(8) DEFAULT NULL,
  `ProductGST` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcategory_id`, `subcategory_name`, `category_id`, `active_status`, `ProductHSNCode`, `ProductGST`) VALUES
(1, 'WHITE CEMENT', 1, 1, '01010101', 5),
(2, 'GREY CEMENT', 1, 1, '01010102', 5),
(3, 'VITRIFIED TILES', 2, 1, '02020201', 5),
(4, 'WALL TILES', 2, 1, '02020202', 5);

-- --------------------------------------------------------

--
-- Table structure for table `systable`
--

CREATE TABLE `systable` (
  `SysId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `BasePrice` float DEFAULT NULL,
  `BatchNo` varchar(100) NOT NULL,
  `RecStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `systable`
--

INSERT INTO `systable` (`SysId`, `ProductId`, `BasePrice`, `BatchNo`, `RecStatus`) VALUES
(1, 1, 3000, '115', 1),
(2, 2, 3000, '115', 1),
(3, 3, 3200, '125', 1),
(4, 4, 3100, '125', 1),
(5, 5, 2000, '125', 1),
(6, 6, 2000, '125', 1),
(7, 1, 2500, '1125', 1),
(8, 2, 2500, '1125', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomermst`
--

CREATE TABLE `tblcustomermst` (
  `CustomerId` int(10) NOT NULL,
  `CustomerName` text NOT NULL,
  `MobileNo` bigint(10) NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `GSTNo` varchar(16) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcustomermst`
--

INSERT INTO `tblcustomermst` (`CustomerId`, `CustomerName`, `MobileNo`, `Email`, `Address`, `GSTNo`, `CreatedDate`, `ModifiedDate`, `RecStatus`) VALUES
(1, 'Rohan Jethloja', 9999999999, 'example@gmail.com', 'Morbi', '24AAAAA0000A1Z5', '2021-04-14', '2021-04-14', 1),
(2, 'Kesha Shah', 9898258955, 'example123@gmail.com', 'Rajkot', '24AABAA0000A1Z5', '2021-04-14', '2021-04-14', 1),
(3, 'Udhhav Savani', 9909194973, 'example789@gmail.com', 'Surat', '24AAABB0000A1Z5', '2021-04-14', '2021-04-14', 1),
(4, 'Vraj Shah', 9797254878, 'examaple@gmail.com', 'Ahemdabad', '24AAAAA0000A1Z6', '2021-04-14', '2021-04-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblexpencemst`
--

CREATE TABLE `tblexpencemst` (
  `ExpanceId` int(10) NOT NULL,
  `Discription` text NOT NULL,
  `ExpanceDate` date NOT NULL,
  `Amount` float NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblexpencemst`
--

INSERT INTO `tblexpencemst` (`ExpanceId`, `Discription`, `ExpanceDate`, `Amount`, `CreatedDate`, `ModifiedDate`, `RecStatus`) VALUES
(1, 'Stationary Item', '2021-04-14', 200, '2021-04-14', '2021-04-14', 1),
(2, 'Tea Expanse', '2021-03-31', 2500, '2021-04-14', '2021-04-14', 1),
(3, 'Laptop Repair Charge', '2021-04-01', 1500, '2021-04-14', '2021-04-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblinwardbillmst`
--

CREATE TABLE `tblinwardbillmst` (
  `InwardId` int(100) NOT NULL,
  `InwardDate` datetime NOT NULL,
  `VendorId` int(100) NOT NULL,
  `TotalGST` float(100,2) NOT NULL,
  `Transport_extracost` float(100,2) NOT NULL,
  `TotalAmount` float(100,2) NOT NULL,
  `AmountPaid` float(100,2) NOT NULL,
  `AmountPending` float(100,2) NOT NULL,
  `UploadBill` longtext NOT NULL,
  `PaymentMode` varchar(10) NOT NULL,
  `TotalDiscount` float(100,2) NOT NULL,
  `Notes` varchar(200) NOT NULL,
  `StockMstSysId` int(100) NOT NULL,
  `CreatedDate` date NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` date NOT NULL,
  `RecStatus` varchar(1) NOT NULL DEFAULT 'A',
  `StockType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinwardbillmst`
--

INSERT INTO `tblinwardbillmst` (`InwardId`, `InwardDate`, `VendorId`, `TotalGST`, `Transport_extracost`, `TotalAmount`, `AmountPaid`, `AmountPending`, `UploadBill`, `PaymentMode`, `TotalDiscount`, `Notes`, `StockMstSysId`, `CreatedDate`, `ModifiedDate`, `RecStatus`, `StockType`) VALUES
(1, '2021-04-01 00:00:00', 1, 30000.00, 0.00, 630000.00, 630000.00, 0.00, '1_', 'credit', 0.00, 'xyx', 0, '2021-04-14', '0000-00-00', 'A', 'bill'),
(2, '2021-04-05 00:00:00', 3, 31500.00, 0.00, 661500.00, 661500.00, 0.00, '2_', 'cash', 0.00, 'payment is done', 0, '2021-04-14', '0000-00-00', 'A', 'other'),
(3, '2021-04-05 00:00:00', 4, 20000.00, 0.00, 420000.00, 420000.00, 0.00, '3_', 'cash', 0.00, 'payment is done', 0, '2021-04-14', '0000-00-00', 'A', 'bill'),
(4, '2021-04-10 00:00:00', 2, 25000.00, 0.00, 525000.00, 5000.00, 520000.00, '4_', 'cash', 0.00, 'payment is pending', 0, '2021-04-14', '0000-00-00', 'A', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `tblinwarddetails`
--

CREATE TABLE `tblinwarddetails` (
  `InwardNo` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `InwardId` int(10) NOT NULL,
  `Qty` int(10) NOT NULL,
  `Price` float NOT NULL,
  `CGST` float NOT NULL,
  `SGST` float NOT NULL,
  `TotalCost` float NOT NULL,
  `Discount` float NOT NULL,
  `StockMstSysId` int(10) NOT NULL,
  `CreatedDate` date NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` date NOT NULL,
  `RecStatus` varchar(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinwarddetails`
--

INSERT INTO `tblinwarddetails` (`InwardNo`, `ProductId`, `InwardId`, `Qty`, `Price`, `CGST`, `SGST`, `TotalCost`, `Discount`, `StockMstSysId`, `CreatedDate`, `ModifiedDate`, `RecStatus`) VALUES
(1, 1, 1, 100, 3000, 7500, 7500, 315000, 0, 0, '2021-04-14', '0000-00-00', 'A'),
(2, 2, 1, 100, 3000, 7500, 7500, 315000, 0, 0, '2021-04-14', '0000-00-00', 'A'),
(3, 3, 2, 100, 3200, 8000, 8000, 336000, 0, 0, '2021-04-14', '0000-00-00', 'A'),
(4, 4, 2, 100, 3100, 7750, 7750, 325500, 0, 0, '2021-04-14', '0000-00-00', 'A'),
(5, 5, 3, 100, 2000, 5000, 5000, 210000, 0, 0, '2021-04-14', '0000-00-00', 'A'),
(6, 6, 3, 100, 2000, 5000, 5000, 210000, 0, 0, '2021-04-14', '0000-00-00', 'A'),
(7, 7, 4, 100, 2500, 6250, 6250, 262500, 0, 0, '2021-04-14', '0000-00-00', 'A'),
(8, 8, 4, 100, 2500, 6250, 6250, 262500, 0, 0, '2021-04-14', '0000-00-00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tblinwardpayment`
--

CREATE TABLE `tblinwardpayment` (
  `InwardId` int(10) NOT NULL,
  `PaymentDate` datetime NOT NULL,
  `AmountPaid` float NOT NULL,
  `AmountPending` float NOT NULL,
  `Status` text NOT NULL,
  `PaymentMode` text NOT NULL,
  `RoundOffDade` float NOT NULL,
  `StockMstSysId` int(10) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `RecStatus` varchar(1) NOT NULL DEFAULT '1',
  `ChallanId` int(11) DEFAULT NULL,
  `PaymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinwardpayment`
--

INSERT INTO `tblinwardpayment` (`InwardId`, `PaymentDate`, `AmountPaid`, `AmountPending`, `Status`, `PaymentMode`, `RoundOffDade`, `StockMstSysId`, `CreatedDate`, `ModifiedDate`, `RecStatus`, `ChallanId`, `PaymentID`) VALUES
(0, '2021-04-14 00:00:00', 71000, 0, 'Complete', 'Customer', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 1, 1),
(0, '2021-04-14 00:00:00', 71000, 0, 'Complete', 'Customer', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblqutationdetails`
--

CREATE TABLE `tblqutationdetails` (
  `ItemNo` int(11) NOT NULL,
  `Discription` text NOT NULL,
  `Qty` int(10) NOT NULL,
  `Rate` float NOT NULL,
  `Gst` int(10) NOT NULL,
  `CreatedDate` date NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL DEFAULT 1,
  `QutationId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblqutationdetails`
--

INSERT INTO `tblqutationdetails` (`ItemNo`, `Discription`, `Qty`, `Rate`, `Gst`, `CreatedDate`, `ModifiedDate`, `RecStatus`, `QutationId`) VALUES
(0, 'White cement', 10, 2500, 5, '2021-04-14', '0000-00-00', 1, 1),
(0, 'Gray Cement', 25, 2500, 12, '2021-04-14', '0000-00-00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblqutationmst`
--

CREATE TABLE `tblqutationmst` (
  `QutationId` int(10) NOT NULL,
  `Name` text NOT NULL,
  `QDate` date NOT NULL,
  `TotalPrice` float NOT NULL,
  `TotalGST` float NOT NULL,
  `TotalAmount` float NOT NULL,
  `CreatedDate` date NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblqutationmst`
--

INSERT INTO `tblqutationmst` (`QutationId`, `Name`, `QDate`, `TotalPrice`, `TotalGST`, `TotalAmount`, `CreatedDate`, `ModifiedDate`, `RecStatus`) VALUES
(1, 'Jethloja Rohan', '2021-04-14', 25000, 1250, 26250, '2021-04-14', '0000-00-00', 1),
(2, 'Udhhav Savani', '2021-04-01', 62500, 7500, 70000, '2021-04-14', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblvendormst`
--

CREATE TABLE `tblvendormst` (
  `VendorId` int(10) NOT NULL,
  `VendorName` text NOT NULL,
  `MobileNo` bigint(10) NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `GSTNo` varchar(16) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `RecStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblvendormst`
--

INSERT INTO `tblvendormst` (`VendorId`, `VendorName`, `MobileNo`, `Email`, `Address`, `GSTNo`, `CreatedDate`, `ModifiedDate`, `RecStatus`) VALUES
(1, 'Jethloja Rohan', 9909194973, 's@g.com', 'Morbi', '24AAAAA0000A1Z5', '2021-04-14', '2021-04-14', 1),
(2, 'Kesha Shah', 9898254877, 's2g@g.com', 'Rajkot', '24ABABA0000A1Z5', '2021-04-14', '2021-04-14', 1),
(3, 'Vraj Shah', 9889899888, 's@g258.com', 'Ahemdabad', '24AAABA0000A1Z5', '2021-04-14', '2021-04-14', 1),
(4, 'Uddhav Savani', 7875812129, 's12@gmail.com', 'Surat', '24ABCBA0000A1Z5', '2021-04-14', '2021-04-14', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brandmapp`
--
ALTER TABLE `brandmapp`
  ADD PRIMARY KEY (`BrandMapping`),
  ADD KEY `SubcategoryId` (`SubcategoryId`),
  ADD KEY `BrandId` (`BrandId`);

--
-- Indexes for table `brandnames`
--
ALTER TABLE `brandnames`
  ADD PRIMARY KEY (`BrandId`);

--
-- Indexes for table `breakageanddamage`
--
ALTER TABLE `breakageanddamage`
  ADD PRIMARY KEY (`SysId`),
  ADD KEY `StockId` (`StockId`);

--
-- Indexes for table `btblcustomermst`
--
ALTER TABLE `btblcustomermst`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `btblexpencemst`
--
ALTER TABLE `btblexpencemst`
  ADD PRIMARY KEY (`ExpanceId`);

--
-- Indexes for table `btblqutationdetails`
--
ALTER TABLE `btblqutationdetails`
  ADD KEY `fk_foreign_key_name` (`QutationId`);

--
-- Indexes for table `btblqutationmst`
--
ALTER TABLE `btblqutationmst`
  ADD PRIMARY KEY (`QutationId`);

--
-- Indexes for table `btblvendormst`
--
ALTER TABLE `btblvendormst`
  ADD PRIMARY KEY (`VendorId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `challandetails`
--
ALTER TABLE `challandetails`
  ADD KEY `ChallanId` (`ChallanId`),
  ADD KEY `StockId` (`StockId`);

--
-- Indexes for table `challanmst`
--
ALTER TABLE `challanmst`
  ADD PRIMARY KEY (`ChallanId`),
  ADD KEY `CustomerId` (`CustomerId`);

--
-- Indexes for table `challanno`
--
ALTER TABLE `challanno`
  ADD PRIMARY KEY (`month`);

--
-- Indexes for table `grademapp`
--
ALTER TABLE `grademapp`
  ADD PRIMARY KEY (`GradeMappId`),
  ADD KEY `Subcategory_id` (`Subcategory_id`),
  ADD KEY `GradeId` (`GradeId`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GradeId`);

--
-- Indexes for table `invoicedetails`
--
ALTER TABLE `invoicedetails`
  ADD KEY `InvoiceId` (`InvoiceId`),
  ADD KEY `StockId` (`StockId`);

--
-- Indexes for table `invoicemst`
--
ALTER TABLE `invoicemst`
  ADD PRIMARY KEY (`InvoiceId`),
  ADD KEY `CustomerId` (`CustomerId`);

--
-- Indexes for table `invoiceno`
--
ALTER TABLE `invoiceno`
  ADD PRIMARY KEY (`month`);

--
-- Indexes for table `productmst`
--
ALTER TABLE `productmst`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ProductSubCategoryID` (`ProductSubCategoryID`);

--
-- Indexes for table `returndetails`
--
ALTER TABLE `returndetails`
  ADD PRIMARY KEY (`ReturnId`);

--
-- Indexes for table `stockdetails`
--
ALTER TABLE `stockdetails`
  ADD PRIMARY KEY (`StockId`);

--
-- Indexes for table `stockmst`
--
ALTER TABLE `stockmst`
  ADD KEY `SysId` (`SysId`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `systable`
--
ALTER TABLE `systable`
  ADD PRIMARY KEY (`SysId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `tblcustomermst`
--
ALTER TABLE `tblcustomermst`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `tblexpencemst`
--
ALTER TABLE `tblexpencemst`
  ADD PRIMARY KEY (`ExpanceId`);

--
-- Indexes for table `tblinwardbillmst`
--
ALTER TABLE `tblinwardbillmst`
  ADD PRIMARY KEY (`InwardId`);

--
-- Indexes for table `tblinwarddetails`
--
ALTER TABLE `tblinwarddetails`
  ADD PRIMARY KEY (`InwardNo`);

--
-- Indexes for table `tblinwardpayment`
--
ALTER TABLE `tblinwardpayment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `tblqutationdetails`
--
ALTER TABLE `tblqutationdetails`
  ADD KEY `fk_foreign_key_name` (`QutationId`);

--
-- Indexes for table `tblqutationmst`
--
ALTER TABLE `tblqutationmst`
  ADD PRIMARY KEY (`QutationId`);

--
-- Indexes for table `tblvendormst`
--
ALTER TABLE `tblvendormst`
  ADD PRIMARY KEY (`VendorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brandmapp`
--
ALTER TABLE `brandmapp`
  MODIFY `BrandMapping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brandnames`
--
ALTER TABLE `brandnames`
  MODIFY `BrandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `breakageanddamage`
--
ALTER TABLE `breakageanddamage`
  MODIFY `SysId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `btblcustomermst`
--
ALTER TABLE `btblcustomermst`
  MODIFY `CustomerId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btblexpencemst`
--
ALTER TABLE `btblexpencemst`
  MODIFY `ExpanceId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btblqutationmst`
--
ALTER TABLE `btblqutationmst`
  MODIFY `QutationId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btblvendormst`
--
ALTER TABLE `btblvendormst`
  MODIFY `VendorId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `challanmst`
--
ALTER TABLE `challanmst`
  MODIFY `ChallanId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grademapp`
--
ALTER TABLE `grademapp`
  MODIFY `GradeMappId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GradeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoicemst`
--
ALTER TABLE `invoicemst`
  MODIFY `InvoiceId` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productmst`
--
ALTER TABLE `productmst`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `returndetails`
--
ALTER TABLE `returndetails`
  MODIFY `ReturnId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stockdetails`
--
ALTER TABLE `stockdetails`
  MODIFY `StockId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `systable`
--
ALTER TABLE `systable`
  MODIFY `SysId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcustomermst`
--
ALTER TABLE `tblcustomermst`
  MODIFY `CustomerId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblexpencemst`
--
ALTER TABLE `tblexpencemst`
  MODIFY `ExpanceId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblinwardbillmst`
--
ALTER TABLE `tblinwardbillmst`
  MODIFY `InwardId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblinwarddetails`
--
ALTER TABLE `tblinwarddetails`
  MODIFY `InwardNo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblinwardpayment`
--
ALTER TABLE `tblinwardpayment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblqutationmst`
--
ALTER TABLE `tblqutationmst`
  MODIFY `QutationId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblvendormst`
--
ALTER TABLE `tblvendormst`
  MODIFY `VendorId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brandmapp`
--
ALTER TABLE `brandmapp`
  ADD CONSTRAINT `brandmapp_ibfk_1` FOREIGN KEY (`SubcategoryId`) REFERENCES `subcategories` (`subcategory_id`),
  ADD CONSTRAINT `brandmapp_ibfk_2` FOREIGN KEY (`BrandId`) REFERENCES `brandnames` (`BrandId`);

--
-- Constraints for table `breakageanddamage`
--
ALTER TABLE `breakageanddamage`
  ADD CONSTRAINT `breakageanddamage_ibfk_1` FOREIGN KEY (`StockId`) REFERENCES `stockdetails` (`StockId`);

--
-- Constraints for table `grademapp`
--
ALTER TABLE `grademapp`
  ADD CONSTRAINT `grademapp_ibfk_1` FOREIGN KEY (`Subcategory_id`) REFERENCES `subcategories` (`subcategory_id`),
  ADD CONSTRAINT `grademapp_ibfk_2` FOREIGN KEY (`GradeId`) REFERENCES `grades` (`GradeId`);

--
-- Constraints for table `productmst`
--
ALTER TABLE `productmst`
  ADD CONSTRAINT `productmst_ibfk_1` FOREIGN KEY (`ProductSubCategoryID`) REFERENCES `subcategories` (`subcategory_id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
