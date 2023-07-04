-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2023 at 01:02 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ustcoden_pramesh`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtocart`
--

CREATE TABLE `addtocart` (
  `iAddtocartId` int(11) NOT NULL,
  `iUserId` int(11) DEFAULT NULL,
  `vCookie` varchar(255) DEFAULT NULL,
  `iProductId` int(11) DEFAULT NULL,
  `vSize` varchar(255) DEFAULT NULL,
  `iOptionId` varchar(255) DEFAULT NULL,
  `vProductName` varchar(255) NOT NULL,
  `vPrice` varchar(255) NOT NULL,
  `vTotal` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vQty` varchar(255) NOT NULL,
  `dtAddedDate` datetime NOT NULL,
  `iTotalQty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addtocart`
--

INSERT INTO `addtocart` (`iAddtocartId`, `iUserId`, `vCookie`, `iProductId`, `vSize`, `iOptionId`, `vProductName`, `vPrice`, `vTotal`, `vImage`, `vQty`, `dtAddedDate`, `iTotalQty`) VALUES
(7, NULL, '1680184471094', 97, '', NULL, 'Bridal Lengha', '10000', '10000', 'https://prameshsilks.com/backend/image/Product/1643798345_0.jpeg', '2', '2023-03-30 07:35:21', NULL),
(10, NULL, '1683002190101', 2, '', NULL, 'Red Saree', '4000', '4000', 'https://prameshsilks.com/backend/image/Product/1640686648_1.jpeg', '9', '2023-05-02 10:56:03', NULL),
(24, NULL, '1687437408545', 13, 'S', '1', 'Gujrati Sarees', '1800', '3600', 'https://prameshsilks.com/backend/image/Product/1640933550_0.jpeg', '2', '2023-06-22 06:10:48', NULL),
(35, NULL, '1687017197938', 1, 'S', '1', 'Red Saree', '2000', '4000', 'https://prameshsilks.com/backend/image/Product/1640686570_0.jpeg', '4', '2023-07-01 11:11:53', NULL),
(36, NULL, '1687017197938', 1, 'M', '9', 'Red Saree', '3000', '6000', 'https://prameshsilks.com/backend/image/Product/1640686570_0.jpeg', '4', '2023-07-01 11:12:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `iAdminId` int(11) NOT NULL,
  `vUserName` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vPassword` varchar(255) NOT NULL,
  `eStatus` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`iAdminId`, `vUserName`, `vEmail`, `vPassword`, `eStatus`) VALUES
(2, 'Jayesh Chotaliya', 'admin@gmail.com ', 'e10adc3949ba59abbe56e057f20f883e', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `all_cities`
--

CREATE TABLE `all_cities` (
  `city_name` text,
  `city_code` text,
  `state_code` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_cities`
--

INSERT INTO `all_cities` (`city_name`, `city_code`, `state_code`) VALUES
('Alipur', '101', '1'),
('Andaman Island', '102', '1'),
('Anderson Island', '103', '1'),
('Arainj-Laka-Punga', '104', '1'),
('Austinabad', '105', '1'),
('Bamboo Flat', '106', '1'),
('Barren Island', '107', '1'),
('Beadonabad', '108', '1'),
('Betapur', '109', '1'),
('Bindraban', '110', '1'),
('Bonington', '111', '1'),
('Brookesabad', '112', '1'),
('Cadell Point', '113', '1'),
('Calicut', '114', '1'),
('Chetamale', '115', '1'),
('Cinque Islands', '116', '1'),
('Defence Island', '117', '1'),
('Digilpur', '118', '1'),
('Dolyganj', '119', '1'),
('Flat Island', '120', '1'),
('Geinyale', '121', '1'),
('Great Coco Island', '122', '1'),
('Haddo', '123', '1'),
('Havelock Island', '124', '1'),
('Henry Lawrence Island', '125', '1'),
('Herbertabad', '126', '1'),
('Hobdaypur', '127', '1'),
('Ilichar', '128', '1'),
('Ingoie', '128', '1'),
('Inteview Island', '130', '1'),
('Jangli Ghat', '131', '1'),
('Jhon Lawrence Island', '132', '1'),
('Karen', '133', '1'),
('Kartara', '134', '1'),
('KYD Islannd', '135', '1'),
('Landfall Island', '136', '1'),
('Little Andmand', '137', '1'),
('Little Coco Island', '138', '1'),
('Long Island', '138', '1'),
('Maimyo', '140', '1'),
('Malappuram', '141', '1'),
('Manglutan', '142', '1'),
('Manpur', '143', '1'),
('Mitha Khari', '144', '1'),
('Neill Island', '145', '1'),
('Nicobar Island', '146', '1'),
('North Brother Island', '147', '1'),
('North Passage Island', '148', '1'),
('North Sentinel Island', '149', '1'),
('Nothen Reef Island', '150', '1'),
('Outram Island', '151', '1'),
('Pahlagaon', '152', '1'),
('Palalankwe', '153', '1'),
('Passage Island', '154', '1'),
('Phaiapong', '155', '1'),
('Phoenix Island', '156', '1'),
('Port Blair', '157', '1'),
('Preparis Island', '158', '1'),
('Protheroepur', '159', '1'),
('Rangachang', '160', '1'),
('Rongat', '161', '1'),
('Rutland Island', '162', '1'),
('Sabari', '163', '1'),
('Saddle Peak', '164', '1'),
('Shadipur', '165', '1'),
('Smith Island', '166', '1'),
('Sound Island', '167', '1'),
('South Sentinel Island', '168', '1'),
('Spike Island', '169', '1'),
('Tarmugli Island', '170', '1'),
('Taylerabad', '171', '1'),
('Titaije', '172', '1'),
('Toibalawe', '173', '1'),
('Tusonabad', '174', '1'),
('West Island', '175', '1'),
('Wimberleyganj', '176', '1'),
('Yadita', '177', '1');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `iBannerId` int(11) NOT NULL,
  `vTitle` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `tDescription` text NOT NULL,
  `iOrder` int(11) NOT NULL,
  `dtAddedDate` datetime NOT NULL,
  `vBannerType` varchar(255) NOT NULL DEFAULT '1',
  `eShowtype` enum('Desktop','Mobile','','') NOT NULL,
  `eStatus` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`iBannerId`, `vTitle`, `vImage`, `tDescription`, `iOrder`, `dtAddedDate`, `vBannerType`, `eShowtype`, `eStatus`) VALUES
(7, 'Banner ', 'https://prameshsilks.com/backend/image/banner/1640321079.jpeg', 'Wine Purple Woven Kanjivaram Saree - Special Wedding EditionWine Purple Woven Kanjivaram Saree - Special Wedding EditionWine Purple Woven Kanjivaram Saree - Special Wedding EditionWine Purple Woven Kanjivaram Saree - Special Wedding EditionWine Purple Woven Kanjivaram Saree - Special Wedding Edition', 1, '2023-01-31 10:28:00', '1', 'Desktop', 'Active'),
(9, 'Navigate to the section', 'https://prameshsilks.com/backend/image/banner/1640321044.jpeg', 'Note: If \"title banner\" does not appear in your list of content, you may not be part of the \"Graphic Designers\" permissions group.Note: If \"title banner\" does not appear in your list of content, you may not be part of the \"Graphic Designers\" permissions group.', 2, '2022-08-10 04:47:52', '1', 'Desktop', 'Active'),
(10, 'Perfectblue Women\'s Linen Saree', 'https://prameshsilks.com/backend/image/banner/1640321029.jpeg', 'Care Instructions: Dry Clean Only\n80% Cotton and 20% silk , Material: Linen\nWith blouse piece , 6 yards', 3, '2021-12-24 05:43:49', '1', 'Desktop', 'Active'),
(11, 'Mimosa By Kupinda Women\'s Crepe', 'https://prameshsilks.com/backend/image/banner/1638339541.png', 'Color: Navy Blue\nSaree Length: 5.4 M; Blouse Length: 0.80 M\nIncluded Component: Saree With Blouse Piece\nWash Care: Dry Clean Only', 4, '2021-12-01 07:19:01', '1', 'Desktop', 'Active'),
(12, 'Navy Blue (4009-2119-NVY)', 'https://prameshsilks.com/backend/image/banner/1635335502.jpeg', '10% Instant Discount up to INR 1500 on Kotak Bank Credit Card Transactions. Minimum purchase of INR 5000', 5, '2021-12-01 11:59:35', '2', 'Desktop', 'Inactive'),
(13, 'ANNI DESIGNER Women\'s Banarasi Silk Printed Saree', 'https://prameshsilks.com/backend/image/banner/1638960939.png', 'ANNI DESIGNER Women\'s Banarasi Silk Printed SareeANNI DESIGNER Women\'s Banarasi Silk Printed SareeANNI DESIGNER Women\'s Banarasi Silk Printed Saree', 6, '2021-12-08 11:55:39', '2', 'Desktop', 'Active'),
(14, 'Yashika Women\'s Art Silk Saree', 'https://prameshsilks.com/backend/image/banner/1638780080.png', 'Yashika Women\'s Art Silk SareeYashika Women\'s Art Silk SareeYashika Women\'s Art Silk SareeYashika Women\'s Art Silk Saree', 6, '2021-12-06 09:41:20', '2', 'Desktop', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `iCategoryId` int(11) NOT NULL,
  `vTitle` varchar(255) NOT NULL,
  `vProductType` int(11) DEFAULT NULL,
  `vImage` varchar(255) NOT NULL,
  `dtAddedDate` datetime NOT NULL,
  `eStatus` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`iCategoryId`, `vTitle`, `vProductType`, `vImage`, `dtAddedDate`, `eStatus`) VALUES
(1, 'SAREES', 0, 'https://prameshsilks.com/backend/image/category/1638766459.png', '2021-12-08 07:41:13', 'Active'),
(2, 'LEHNGAS', 0, 'https://prameshsilks.com/backend/image/category/1638766492.png', '2021-12-08 07:41:59', 'Active'),
(3, 'DRESSES', 0, 'https://prameshsilks.com/backend/image/category/1638766518.png', '2021-12-08 07:42:49', 'Active'),
(4, 'DUPATTAS', 0, 'https://prameshsilks.com/backend/image/category/1638766546.png', '2022-01-06 11:17:52', 'Active'),
(5, 'ACCESSORIES', 0, 'https://prameshsilks.com/backend/image/category/1638766569.png', '2021-12-08 07:43:50', 'Active'),
(6, 'STORIES', 0, 'https://prameshsilks.com/backend/image/category/1638766612.png', '2022-01-03 07:45:59', 'Active'),
(7, 'PATOLA', 1, 'https://prameshsilks.com/backend/image/category/1639030176.png', '2021-12-09 07:21:58', 'Active'),
(8, 'PAITHANI', 1, 'https://prameshsilks.com/backend/image/category/1639031742.png', '2021-12-09 07:35:42', 'Active'),
(9, 'ART SILK', 1, 'https://prameshsilks.com/backend/image/category/1639031776.png', '2021-12-09 07:36:16', 'Active'),
(10, 'Silk Sarees', 1, 'https://prameshsilks.com/backend/image/category/1639031797.png', '2021-12-09 07:36:37', 'Active'),
(11, 'Bandhni', 1, 'https://prameshsilks.com/backend/image/category/1639031986.png', '2021-12-09 07:39:46', 'Active'),
(12, 'Kanjeevaram', 1, 'https://prameshsilks.com/backend/image/category/1639032328.png', '2021-12-09 07:45:28', 'Active'),
(14, 'Silk Bandhani', 1, 'https://prameshsilks.com/backend/image/category/1641458434.jpeg', '2023-07-04 11:46:22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `iCheckoutDetailId` int(11) NOT NULL,
  `iUserId` int(11) NOT NULL,
  `iProductId` varchar(20) NOT NULL,
  `iOptionId` varchar(255) DEFAULT NULL,
  `vFirstName` varchar(255) NOT NULL,
  `vLastName` varchar(255) NOT NULL,
  `vPhone` varchar(255) NOT NULL,
  `tAddress` text NOT NULL,
  `vCity` varchar(255) NOT NULL,
  `vState` varchar(255) NOT NULL,
  `vCountry` varchar(255) NOT NULL,
  `vZipcode` varchar(255) NOT NULL,
  `vBillingFirstName` varchar(255) DEFAULT NULL,
  `vBillingLastName` varchar(255) DEFAULT NULL,
  `vBillingPhone` varchar(255) DEFAULT NULL,
  `vBillingAddress` text,
  `vBillingCity` varchar(255) DEFAULT NULL,
  `vBillingState` varchar(255) DEFAULT NULL,
  `vBillingCountry` varchar(255) DEFAULT NULL,
  `vBillingZipcode` varchar(255) DEFAULT NULL,
  `tOrderComment` text,
  `dtAddedDate` datetime NOT NULL,
  `iOrderId` int(11) DEFAULT NULL,
  `ePaymentStatus` enum('Pending','Complete','Refunded','Failed','Cancelled') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`iCheckoutDetailId`, `iUserId`, `iProductId`, `iOptionId`, `vFirstName`, `vLastName`, `vPhone`, `tAddress`, `vCity`, `vState`, `vCountry`, `vZipcode`, `vBillingFirstName`, `vBillingLastName`, `vBillingPhone`, `vBillingAddress`, `vBillingCity`, `vBillingState`, `vBillingCountry`, `vBillingZipcode`, `tOrderComment`, `dtAddedDate`, `iOrderId`, `ePaymentStatus`) VALUES
(1, 1, '120,120,120,120,120', '2,1,9,10,7', 'jayesh', 'chotaliya', '9157535754', 'Ahmedabad ', 'K', 'K', 'AR', '635241', 'jayesh', 'chotaliya', '9157535754', 'Ahmedabad ', 'K', 'K', 'AR', '635241', '', '2022-01-24 09:46:42', NULL, 'Pending'),
(2, 1, '120,120,120,120,120', '2,1,9,10,7', 'yamin', 'rajkls', '9157535754', 'Ahmedabad', 'GJ', 'GJ', 'IN', '965241', 'yamin', 'rajkls', '9157535754', 'Ahmedabad', 'GJ', 'GJ', 'IN', '965241', '', '2022-01-24 11:48:10', NULL, 'Pending'),
(3, 1, '120', '1', 'wsdwdsd', 'sdsd', '2323232323', '23232323', '23', '23', 'DZ', '965241', 'wsdwdsd', 'sdsd', '2323232323', '23232323', '23', '23', 'DZ', '965241', '', '2022-01-24 11:53:59', NULL, 'Pending'),
(4, 1, '120', '1', 'eertrt', 'rtrtrtrt', '7687685', '+65656+5+', '05', '05', 'AG', '6564651', 'eertrt', 'rtrtrtrt', '7687685', '+65656+5+', '05', '05', 'AG', '6564651', '', '2022-01-24 11:59:38', NULL, 'Pending'),
(5, 4, '120', '1', 'wsds', 'sdd', '232323232', 'afsdsf', '16', '16', 'DZ', '965241', 'wsds', 'sdd', '232323232', 'afsdsf', '16', '16', 'DZ', '965241', '', '2022-01-24 12:10:14', NULL, 'Pending'),
(6, 4, '120,120', '2,1', 'jayesh', 'chotaliya', '565656565454', 'dfdfdfd', 'MZ', 'MZ', 'IN', '9635241', 'jayesh', 'chotaliya', '565656565454', 'dfdfdfd', 'MZ', 'MZ', 'IN', '9635241', 'New Product Added ', '2022-02-16 03:40:25', NULL, 'Pending'),
(7, 93, '24,18', '', 'sdfsdf', 'sdfsdf', '1245789854', 'sdfsdfsdf', 'GJ', 'GJ', 'IN', '124578', 'sdfsdf', 'sdfsdf', '1245789854', 'sdfsdfsdf', 'GJ', 'GJ', 'IN', '124578', '', '2022-12-14 05:46:17', NULL, 'Pending'),
(8, 93, '24,18', '', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2022-12-19 03:10:22', NULL, 'Pending'),
(9, 93, '1', '1', 'test', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'test', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2023-01-03 04:44:08', NULL, 'Pending'),
(10, 93, '7', '1', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2023-01-03 05:06:56', NULL, 'Pending'),
(11, 96, '1', '1', 'khushal', 'dayala', '7096895211', 'test', 'GJ', 'GJ', 'IN', '380052', 'khushal', 'dayala', '7096895211', 'test', 'GJ', 'GJ', 'IN', '380052', 'test', '2023-01-03 05:35:07', NULL, 'Pending'),
(12, 3, '1', '', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2023-03-21 04:38:15', NULL, 'Pending'),
(13, 3, '1', '', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2023-03-21 04:39:08', NULL, 'Pending'),
(14, 3, '1', '', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2023-03-21 04:39:21', NULL, 'Pending'),
(15, 3, '1', '', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'newuesr', 'khushaldayala', '07096895211', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2023-03-21 04:54:42', NULL, 'Pending'),
(16, 3, '1', '', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', '', '2023-06-16 06:03:08', NULL, 'Pending'),
(17, 3, '1', '', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', '', '2023-06-16 06:03:08', NULL, 'Pending'),
(18, 3, '1', '', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', '', '2023-06-16 06:03:08', NULL, 'Pending'),
(19, 3, '1', '', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', '', '2023-06-16 06:04:21', NULL, 'Pending'),
(20, 3, '1', '', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', '', '2023-06-16 06:05:29', NULL, 'Pending'),
(21, 3, '1', '', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', 'test', 'test', '7096895211', 'this is the test address', 'GJ', 'GJ', 'IN', '380052', '', '2023-06-16 06:13:49', NULL, 'Pending'),
(22, 6, '3', '', 'harshit', 'pansuriya', '1234567890', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'harshit', 'pansuriya', '1234567890', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2023-06-30 04:04:57', NULL, 'Pending'),
(23, 6, '3', '', 'harshit', 'pansuriya', '1234567890', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', 'harshit', 'pansuriya', '1234567890', 'ahmedabad', 'GJ', 'GJ', 'IN', '380052', '', '2023-06-30 04:05:17', NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `iColorId` int(11) NOT NULL,
  `vColor` varchar(255) NOT NULL,
  `dtAddedDate` datetime NOT NULL,
  `eStatus` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`iColorId`, `vColor`, `dtAddedDate`, `eStatus`) VALUES
(3, 'Yellow', '2021-12-29 07:03:03', 'Active'),
(4, 'Black', '2021-12-29 07:03:30', 'Active'),
(5, 'Red', '2021-12-29 07:03:49', 'Active'),
(6, 'White', '2021-12-29 07:04:03', 'Active'),
(7, 'pink', '2022-02-08 11:45:36', 'Active'),
(8, 'Green', '2021-12-29 07:05:19', 'Active'),
(9, 'Blue', '2021-12-29 07:05:35', 'Active'),
(10, 'Gold', '2021-12-29 07:05:50', 'Active'),
(11, 'Grey', '2021-12-29 07:06:02', 'Active'),
(12, 'Silver', '2021-12-29 07:08:06', 'Active'),
(13, 'Orange', '2021-12-29 07:08:18', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `iContactId` int(11) NOT NULL,
  `vUserName` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vMobile` varchar(255) NOT NULL,
  `vSubject` varchar(255) NOT NULL,
  `vMessage` varchar(255) NOT NULL,
  `dtAddedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`iContactId`, `vUserName`, `vEmail`, `vMobile`, `vSubject`, `vMessage`, `dtAddedDate`) VALUES
(1, 'jaeysh', 'jayeshchotaliya0@gmail.com', '9157535754', 'jayesh', 'jayesh chotaliya', '2022-01-18 01:42:39'),
(2, 'jaeysh', 'jayeshchotaliya0@gmail.com', '9157535754', 'jayesh', 'jayesh chotaliya', '2022-01-18 01:43:27'),
(3, 'jaeysh', 'jayeshchotaliya0@gmail.com', '9157535754', 'jayesh', 'jayesh chotaliya', '2022-01-18 01:43:48'),
(4, 'fgf', 'jayeshchotaliya00@gmail.com', '5656756565', 'jayesh', '565656565', '2022-01-18 01:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `phone` int(5) NOT NULL,
  `code` char(2) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `phone`, `code`, `name`) VALUES
(1, 93, 'AF', 'Afghanistan'),
(2, 358, 'AX', 'Aland Islands'),
(3, 355, 'AL', 'Albania'),
(4, 213, 'DZ', 'Algeria'),
(5, 1684, 'AS', 'American Samoa'),
(6, 376, 'AD', 'Andorra'),
(7, 244, 'AO', 'Angola'),
(8, 1264, 'AI', 'Anguilla'),
(9, 672, 'AQ', 'Antarctica'),
(10, 1268, 'AG', 'Antigua and Barbuda'),
(11, 54, 'AR', 'Argentina'),
(12, 374, 'AM', 'Armenia'),
(13, 297, 'AW', 'Aruba'),
(14, 61, 'AU', 'Australia'),
(15, 43, 'AT', 'Austria'),
(16, 994, 'AZ', 'Azerbaijan'),
(17, 1242, 'BS', 'Bahamas'),
(18, 973, 'BH', 'Bahrain'),
(19, 880, 'BD', 'Bangladesh'),
(20, 1246, 'BB', 'Barbados'),
(21, 375, 'BY', 'Belarus'),
(22, 32, 'BE', 'Belgium'),
(23, 501, 'BZ', 'Belize'),
(24, 229, 'BJ', 'Benin'),
(25, 1441, 'BM', 'Bermuda'),
(26, 975, 'BT', 'Bhutan'),
(27, 591, 'BO', 'Bolivia'),
(28, 599, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(29, 387, 'BA', 'Bosnia and Herzegovina'),
(30, 267, 'BW', 'Botswana'),
(31, 55, 'BV', 'Bouvet Island'),
(32, 55, 'BR', 'Brazil'),
(33, 246, 'IO', 'British Indian Ocean Territory'),
(34, 673, 'BN', 'Brunei Darussalam'),
(35, 359, 'BG', 'Bulgaria'),
(36, 226, 'BF', 'Burkina Faso'),
(37, 257, 'BI', 'Burundi'),
(38, 855, 'KH', 'Cambodia'),
(39, 237, 'CM', 'Cameroon'),
(40, 1, 'CA', 'Canada'),
(41, 238, 'CV', 'Cape Verde'),
(42, 1345, 'KY', 'Cayman Islands'),
(43, 236, 'CF', 'Central African Republic'),
(44, 235, 'TD', 'Chad'),
(45, 56, 'CL', 'Chile'),
(46, 86, 'CN', 'China'),
(47, 61, 'CX', 'Christmas Island'),
(48, 672, 'CC', 'Cocos (Keeling) Islands'),
(49, 57, 'CO', 'Colombia'),
(50, 269, 'KM', 'Comoros'),
(51, 242, 'CG', 'Congo'),
(52, 242, 'CD', 'Congo, Democratic Republic of the Congo'),
(53, 682, 'CK', 'Cook Islands'),
(54, 506, 'CR', 'Costa Rica'),
(55, 225, 'CI', 'Cote D\'Ivoire'),
(56, 385, 'HR', 'Croatia'),
(57, 53, 'CU', 'Cuba'),
(58, 599, 'CW', 'Curacao'),
(59, 357, 'CY', 'Cyprus'),
(60, 420, 'CZ', 'Czech Republic'),
(61, 45, 'DK', 'Denmark'),
(62, 253, 'DJ', 'Djibouti'),
(63, 1767, 'DM', 'Dominica'),
(64, 1809, 'DO', 'Dominican Republic'),
(65, 593, 'EC', 'Ecuador'),
(66, 20, 'EG', 'Egypt'),
(67, 503, 'SV', 'El Salvador'),
(68, 240, 'GQ', 'Equatorial Guinea'),
(69, 291, 'ER', 'Eritrea'),
(70, 372, 'EE', 'Estonia'),
(71, 251, 'ET', 'Ethiopia'),
(72, 500, 'FK', 'Falkland Islands (Malvinas)'),
(73, 298, 'FO', 'Faroe Islands'),
(74, 679, 'FJ', 'Fiji'),
(75, 358, 'FI', 'Finland'),
(76, 33, 'FR', 'France'),
(77, 594, 'GF', 'French Guiana'),
(78, 689, 'PF', 'French Polynesia'),
(79, 262, 'TF', 'French Southern Territories'),
(80, 241, 'GA', 'Gabon'),
(81, 220, 'GM', 'Gambia'),
(82, 995, 'GE', 'Georgia'),
(83, 49, 'DE', 'Germany'),
(84, 233, 'GH', 'Ghana'),
(85, 350, 'GI', 'Gibraltar'),
(86, 30, 'GR', 'Greece'),
(87, 299, 'GL', 'Greenland'),
(88, 1473, 'GD', 'Grenada'),
(89, 590, 'GP', 'Guadeloupe'),
(90, 1671, 'GU', 'Guam'),
(91, 502, 'GT', 'Guatemala'),
(92, 44, 'GG', 'Guernsey'),
(93, 224, 'GN', 'Guinea'),
(94, 245, 'GW', 'Guinea-Bissau'),
(95, 592, 'GY', 'Guyana'),
(96, 509, 'HT', 'Haiti'),
(97, 0, 'HM', 'Heard Island and Mcdonald Islands'),
(98, 39, 'VA', 'Holy See (Vatican City State)'),
(99, 504, 'HN', 'Honduras'),
(100, 852, 'HK', 'Hong Kong'),
(101, 36, 'HU', 'Hungary'),
(102, 354, 'IS', 'Iceland'),
(103, 91, 'IN', 'India'),
(104, 62, 'ID', 'Indonesia'),
(105, 98, 'IR', 'Iran, Islamic Republic of'),
(106, 964, 'IQ', 'Iraq'),
(107, 353, 'IE', 'Ireland'),
(108, 44, 'IM', 'Isle of Man'),
(109, 972, 'IL', 'Israel'),
(110, 39, 'IT', 'Italy'),
(111, 1876, 'JM', 'Jamaica'),
(112, 81, 'JP', 'Japan'),
(113, 44, 'JE', 'Jersey'),
(114, 962, 'JO', 'Jordan'),
(115, 7, 'KZ', 'Kazakhstan'),
(116, 254, 'KE', 'Kenya'),
(117, 686, 'KI', 'Kiribati'),
(118, 850, 'KP', 'Korea, Democratic People\'s Republic of'),
(119, 82, 'KR', 'Korea, Republic of'),
(120, 381, 'XK', 'Kosovo'),
(121, 965, 'KW', 'Kuwait'),
(122, 996, 'KG', 'Kyrgyzstan'),
(123, 856, 'LA', 'Lao People\'s Democratic Republic'),
(124, 371, 'LV', 'Latvia'),
(125, 961, 'LB', 'Lebanon'),
(126, 266, 'LS', 'Lesotho'),
(127, 231, 'LR', 'Liberia'),
(128, 218, 'LY', 'Libyan Arab Jamahiriya'),
(129, 423, 'LI', 'Liechtenstein'),
(130, 370, 'LT', 'Lithuania'),
(131, 352, 'LU', 'Luxembourg'),
(132, 853, 'MO', 'Macao'),
(133, 389, 'MK', 'Macedonia, the Former Yugoslav Republic of'),
(134, 261, 'MG', 'Madagascar'),
(135, 265, 'MW', 'Malawi'),
(136, 60, 'MY', 'Malaysia'),
(137, 960, 'MV', 'Maldives'),
(138, 223, 'ML', 'Mali'),
(139, 356, 'MT', 'Malta'),
(140, 692, 'MH', 'Marshall Islands'),
(141, 596, 'MQ', 'Martinique'),
(142, 222, 'MR', 'Mauritania'),
(143, 230, 'MU', 'Mauritius'),
(144, 269, 'YT', 'Mayotte'),
(145, 52, 'MX', 'Mexico'),
(146, 691, 'FM', 'Micronesia, Federated States of'),
(147, 373, 'MD', 'Moldova, Republic of'),
(148, 377, 'MC', 'Monaco'),
(149, 976, 'MN', 'Mongolia'),
(150, 382, 'ME', 'Montenegro'),
(151, 1664, 'MS', 'Montserrat'),
(152, 212, 'MA', 'Morocco'),
(153, 258, 'MZ', 'Mozambique'),
(154, 95, 'MM', 'Myanmar'),
(155, 264, 'NA', 'Namibia'),
(156, 674, 'NR', 'Nauru'),
(157, 977, 'NP', 'Nepal'),
(158, 31, 'NL', 'Netherlands'),
(159, 599, 'AN', 'Netherlands Antilles'),
(160, 687, 'NC', 'New Caledonia'),
(161, 64, 'NZ', 'New Zealand'),
(162, 505, 'NI', 'Nicaragua'),
(163, 227, 'NE', 'Niger'),
(164, 234, 'NG', 'Nigeria'),
(165, 683, 'NU', 'Niue'),
(166, 672, 'NF', 'Norfolk Island'),
(167, 1670, 'MP', 'Northern Mariana Islands'),
(168, 47, 'NO', 'Norway'),
(169, 968, 'OM', 'Oman'),
(170, 92, 'PK', 'Pakistan'),
(171, 680, 'PW', 'Palau'),
(172, 970, 'PS', 'Palestinian Territory, Occupied'),
(173, 507, 'PA', 'Panama'),
(174, 675, 'PG', 'Papua New Guinea'),
(175, 595, 'PY', 'Paraguay'),
(176, 51, 'PE', 'Peru'),
(177, 63, 'PH', 'Philippines'),
(178, 64, 'PN', 'Pitcairn'),
(179, 48, 'PL', 'Poland'),
(180, 351, 'PT', 'Portugal'),
(181, 1787, 'PR', 'Puerto Rico'),
(182, 974, 'QA', 'Qatar'),
(183, 262, 'RE', 'Reunion'),
(184, 40, 'RO', 'Romania'),
(185, 70, 'RU', 'Russian Federation'),
(186, 250, 'RW', 'Rwanda'),
(187, 590, 'BL', 'Saint Barthelemy'),
(188, 290, 'SH', 'Saint Helena'),
(189, 1869, 'KN', 'Saint Kitts and Nevis'),
(190, 1758, 'LC', 'Saint Lucia'),
(191, 590, 'MF', 'Saint Martin'),
(192, 508, 'PM', 'Saint Pierre and Miquelon'),
(193, 1784, 'VC', 'Saint Vincent and the Grenadines'),
(194, 684, 'WS', 'Samoa'),
(195, 378, 'SM', 'San Marino'),
(196, 239, 'ST', 'Sao Tome and Principe'),
(197, 966, 'SA', 'Saudi Arabia'),
(198, 221, 'SN', 'Senegal'),
(199, 381, 'RS', 'Serbia'),
(200, 381, 'CS', 'Serbia and Montenegro'),
(201, 248, 'SC', 'Seychelles'),
(202, 232, 'SL', 'Sierra Leone'),
(203, 65, 'SG', 'Singapore'),
(204, 1, 'SX', 'Sint Maarten'),
(205, 421, 'SK', 'Slovakia'),
(206, 386, 'SI', 'Slovenia'),
(207, 677, 'SB', 'Solomon Islands'),
(208, 252, 'SO', 'Somalia'),
(209, 27, 'ZA', 'South Africa'),
(210, 500, 'GS', 'South Georgia and the South Sandwich Islands'),
(211, 211, 'SS', 'South Sudan'),
(212, 34, 'ES', 'Spain'),
(213, 94, 'LK', 'Sri Lanka'),
(214, 249, 'SD', 'Sudan'),
(215, 597, 'SR', 'Suriname'),
(216, 47, 'SJ', 'Svalbard and Jan Mayen'),
(217, 268, 'SZ', 'Swaziland'),
(218, 46, 'SE', 'Sweden'),
(219, 41, 'CH', 'Switzerland'),
(220, 963, 'SY', 'Syrian Arab Republic'),
(221, 886, 'TW', 'Taiwan, Province of China'),
(222, 992, 'TJ', 'Tajikistan'),
(223, 255, 'TZ', 'Tanzania, United Republic of'),
(224, 66, 'TH', 'Thailand'),
(225, 670, 'TL', 'Timor-Leste'),
(226, 228, 'TG', 'Togo'),
(227, 690, 'TK', 'Tokelau'),
(228, 676, 'TO', 'Tonga'),
(229, 1868, 'TT', 'Trinidad and Tobago'),
(230, 216, 'TN', 'Tunisia'),
(231, 90, 'TR', 'Turkey'),
(232, 7370, 'TM', 'Turkmenistan'),
(233, 1649, 'TC', 'Turks and Caicos Islands'),
(234, 688, 'TV', 'Tuvalu'),
(235, 256, 'UG', 'Uganda'),
(236, 380, 'UA', 'Ukraine'),
(237, 971, 'AE', 'United Arab Emirates'),
(238, 44, 'GB', 'United Kingdom'),
(239, 1, 'US', 'United States'),
(240, 1, 'UM', 'United States Minor Outlying Islands'),
(241, 598, 'UY', 'Uruguay'),
(242, 998, 'UZ', 'Uzbekistan'),
(243, 678, 'VU', 'Vanuatu'),
(244, 58, 'VE', 'Venezuela'),
(245, 84, 'VN', 'Viet Nam'),
(246, 1284, 'VG', 'Virgin Islands, British'),
(247, 1340, 'VI', 'Virgin Islands, U.s.'),
(248, 681, 'WF', 'Wallis and Futuna'),
(249, 212, 'EH', 'Western Sahara'),
(250, 967, 'YE', 'Yemen'),
(251, 260, 'ZM', 'Zambia'),
(252, 263, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `fabric`
--

CREATE TABLE `fabric` (
  `iFabricId` int(11) NOT NULL,
  `iCategoryId` varchar(10) DEFAULT NULL,
  `vTitle` varchar(255) NOT NULL,
  `dtAddedDate` datetime DEFAULT NULL,
  `eStatus` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fabric`
--

INSERT INTO `fabric` (`iFabricId`, `iCategoryId`, `vTitle`, `dtAddedDate`, `eStatus`) VALUES
(1, '1', 'Pure', '2022-05-13 10:00:03', 'Active'),
(2, '1', 'Art', '2022-02-12 11:40:40', 'Active'),
(3, '1', 'By Material', NULL, 'Active'),
(4, '2', 'Lehngas(Type) ', NULL, 'Active'),
(5, '2', 'Lehngas(Material) ', NULL, 'Active'),
(6, '2', 'LEHNGAS(Style) ', NULL, 'Active'),
(7, '3', 'Dresses(Type) ', NULL, 'Active'),
(8, '3', 'Dresses(Style) ', NULL, 'Active'),
(9, '3', 'Dresses(Material) ', NULL, 'Active'),
(10, '4', 'Dupattas(Type) ', NULL, 'Active'),
(11, '4', 'Dupattas(Material ) ', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `firstpage_stories`
--

CREATE TABLE `firstpage_stories` (
  `iFirstPageStoriesId` int(11) NOT NULL,
  `iStoriesId` varchar(10) DEFAULT NULL,
  `vImage` varchar(255) DEFAULT NULL,
  `eType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `firstpage_stories`
--

INSERT INTO `firstpage_stories` (`iFirstPageStoriesId`, `iStoriesId`, `vImage`, `eType`) VALUES
(4, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644917482_0.png', '0'),
(5, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644917482_1.jpeg', '0'),
(6, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644917482_2.jpeg', '0'),
(7, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644917482_3.jpeg', '0'),
(8, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644917482_4.jpeg', '0'),
(9, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644917482_5.jpeg', '0'),
(10, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644917482_6.png', '0'),
(11, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644919096_0.jpeg', '0'),
(12, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644919096_1.jpeg', '0'),
(13, '2', 'https://prameshsilks.com/backend/image/Stories/firstpage/1644919116_0.jpeg', '0'),
(14, '12', 'https://prameshsilks.com/backend/image/Stories/firstpage/1687020944_0.jpeg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `image_content`
--

CREATE TABLE `image_content` (
  `iContentId` int(11) NOT NULL,
  `vTitle` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `tDescription` text NOT NULL,
  `dtAddedDate` datetime NOT NULL,
  `vImageType` varchar(11) NOT NULL DEFAULT '1',
  `eStatus` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_content`
--

INSERT INTO `image_content` (`iContentId`, `vTitle`, `vImage`, `tDescription`, `dtAddedDate`, `vImageType`, `eStatus`) VALUES
(2, 'Extracting Components with Keys 001', 'https://prameshsilks.com/backend/image/Image_content/1635405122.jpeg', '', '2021-10-28 09:17:08', '1', 'Inactive'),
(4, ' I uploaded a .PNG, and then dumped the upload data', 'https://prameshsilks.com/backend/image/Image_content/1635225412.jpeg', ' I uploaded a .PNG, and then dumped the upload data', '2021-10-26 11:22:46', '1', 'Inactive'),
(6, 'Extracting Components with Key', 'https://prameshsilks.com/backend/image/Image_content/1635347679.jpeg', 'Extracting Components Extracting ComponentsExtracting ComponentsExtracting Components df', '2021-10-27 05:14:39', '1', 'Inactive'),
(7, 'did you try using mime types instead of extensions ', 'https://prameshsilks.com/backend/image/Image_content/1638775204.png', 'did you try using mime types instead of extensions  50 % off', '2023-01-20 10:43:37', '1', 'Active'),
(8, 'Diwali', 'https://prameshsilks.com/backend/image/Image_content/1638360043.png', '50 % off', '2023-01-20 10:55:53', '3', 'Active'),
(11, 'first', 'https://prameshsilks.com/backend/image/Image_content/1638365400.png', 'sfdfdffd', '2023-06-19 06:37:54', '2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `news_letter`
--

CREATE TABLE `news_letter` (
  `iNewsLetterId` int(11) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `dtAddedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_letter`
--

INSERT INTO `news_letter` (`iNewsLetterId`, `vEmail`, `dtAddedDate`) VALUES
(5, 'jayeshchotaliya0@gmail.com', '2022-01-19 10:14:44'),
(10, 'davi9696sd@gmail.com', '2023-05-06 03:08:25'),
(12, 'harsh@gmail.com', '2023-06-19 05:45:49'),
(13, 'yash@gmail.com', '2023-06-19 05:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `iOrderId` int(11) NOT NULL,
  `iUserId` varchar(255) NOT NULL,
  `vTransactionId` varchar(255) NOT NULL,
  `iProductId` varchar(20) NOT NULL,
  `vOrderAmount` int(11) NOT NULL,
  `vOrderQty` varchar(20) NOT NULL,
  `tOrderShipAddress1` text NOT NULL,
  `tOrderShipAddress2` text NOT NULL,
  `vOrderState` varchar(255) NOT NULL,
  `vOrderCity` varchar(255) NOT NULL,
  `vOrderZip` varchar(255) NOT NULL,
  `vOrderCountry` varchar(255) NOT NULL,
  `vOrderPhone` int(11) NOT NULL,
  `vOrderEmail` int(11) NOT NULL,
  `dtAddedDate` datetime NOT NULL,
  `eOrderStatus` enum('Complete','Pending','Rejected','') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`iOrderId`, `iUserId`, `vTransactionId`, `iProductId`, `vOrderAmount`, `vOrderQty`, `tOrderShipAddress1`, `tOrderShipAddress2`, `vOrderState`, `vOrderCity`, `vOrderZip`, `vOrderCountry`, `vOrderPhone`, `vOrderEmail`, `dtAddedDate`, `eOrderStatus`) VALUES
(1, '1', 'ORDER-GGDG-525200100200', '1,5,8', 15000, '2,1,3', 'Ahmedabad', 'Ahmedabad ', 'Gujrat', 'Ahmedabad ', '380015', 'India', 2147483647, 0, '2021-11-12 11:55:23', 'Complete'),
(2, '1', 'ORDER-GGDG-52520085', '1', 15000, '2', 'Ahmedabad', 'Ahmedabad ', 'Gujrat', 'Ahmedabad ', '380015', 'India', 2147483647, 0, '2021-11-12 12:19:27', 'Complete'),
(3, '1', 'ORDER-GGDG-566654654546', '1', 2000, '2', 'Ahmedabad', 'Ahmedabad ', 'Gujrat', 'Ahmedabad ', '380015', 'India', 2147483647, 0, '2021-11-12 12:19:27', 'Rejected'),
(4, '1', 'ORDER-G-566654654546', '1', 2500, '2', 'Ahmedabad', 'Ahmedabad ', 'Gujrat', 'Ahmedabad ', '380015', 'India', 2147483647, 0, '2021-11-12 12:19:27', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `order_note`
--

CREATE TABLE `order_note` (
  `iOrderNoteId` int(11) NOT NULL,
  `iOrderId` int(11) NOT NULL,
  `tDesc` text NOT NULL,
  `dtAddedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_note`
--

INSERT INTO `order_note` (`iOrderNoteId`, `iOrderId`, `tDesc`, `dtAddedDate`) VALUES
(1, 4, 'yamin', '2022-05-11 09:52:46'),
(2, 3, 'jkjkjkj', '2022-02-16 07:17:59'),
(3, 1, 'hello Pramesh', '2022-02-23 12:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `iProductId` int(11) NOT NULL,
  `vWishlist` varchar(11) DEFAULT NULL,
  `iColorId` int(11) NOT NULL,
  `iFabricId` int(11) DEFAULT NULL,
  `vProductName` varchar(255) NOT NULL,
  `iDescription` text,
  `tMoreInformation` text,
  `iSubcategoryId` varchar(11) NOT NULL,
  `iCategoryId` int(11) NOT NULL,
  `dtAddedDate` datetime NOT NULL,
  `vHomePageDisplay` varchar(11) NOT NULL DEFAULT '2',
  `eStatus` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`iProductId`, `vWishlist`, `iColorId`, `iFabricId`, `vProductName`, `iDescription`, `tMoreInformation`, `iSubcategoryId`, `iCategoryId`, `dtAddedDate`, `vHomePageDisplay`, `eStatus`) VALUES
(1, '1', 5, 1, 'Red Saree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2023-06-21 06:06:55', '2', 'Active'),
(2, '1', 0, NULL, 'Red Saree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2021-12-23 11:03:50', '2', 'Active'),
(3, '1', 0, NULL, 'CreamSaree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2021-12-23 10:47:35', '2', 'Active'),
(5, '1', 0, NULL, 'CreamSaree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2021-12-23 10:53:49', '2', 'Active'),
(6, NULL, 0, NULL, 'Blue Saree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2021-12-23 10:54:39', '2', 'Active'),
(7, '0', 0, NULL, 'Blue Saree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2021-12-23 10:56:01', '2', 'Active'),
(8, '0', 0, NULL, 'Bridal Saree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2021-12-28 11:21:02', '2', 'Active'),
(9, '0', 0, NULL, 'Pink Saree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2021-12-23 11:04:12', '2', 'Active'),
(10, NULL, 0, NULL, 'purple saree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '1', 1, '2021-12-23 11:05:11', '2', 'Active'),
(11, NULL, 0, NULL, 'Banarasi New Brand', 'Bulbul Ahmed Photography PROFESSIONAL FASHION, WEDDING & PRODUCT PHOTOGRAPHER | GRAPHICS DESIGNER Talk: 01971961962 bulbul252@gmail.com FB: https://www.facebook.com/blueboy252/', 'Bulbul Ahmed Photography PROFESSIONAL FASHION, WEDDING & PRODUCT PHOTOGRAPHER | GRAPHICS DESIGNER Talk: 01971961962 bulbul252@gmail.com FB: https://www.facebook.com/blueboy252/Bulbul Ahmed Photography PROFESSIONAL FASHION, WEDDING & PRODUCT PHOTOGRAPHER | GRAPHICS DESIGNER Talk: 01971961962 bulbul252@gmail.com FB: https://www.facebook.com/blueboy252/', '1', 1, '2021-12-23 11:07:00', '1', 'Active'),
(12, '0', 5, 1, 'Golden Saree', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', 'Woman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree DressWoman Wearing Red and Gold Saree Dress', '2', 1, '2022-01-04 02:36:13', '1', 'Active'),
(13, NULL, 13, 1, 'Gujrati Sarees', 'London, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United Kingdom', 'London, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United KingdomLondon, United Kingdom', '2', 1, '2022-01-05 06:45:16', '1', 'Active'),
(17, '1', 0, NULL, 'Wide saree', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', '2', 1, '2021-12-23 11:11:49', '2', 'Active'),
(18, NULL, 0, NULL, 'Silk New Sarees', 'Free to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash License', 'Free to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash LicenseFree to use under the Unsplash License', '3', 1, '2021-12-23 11:12:04', '1', 'Active'),
(19, NULL, 0, NULL, 'Titan saree', 'Serious Indian bride in traditional apparelSerious\n\nIndian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', 'Serious Indian bride in traditional apparelSerious \n\nIndian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', '2', 1, '2021-12-23 11:15:58', '2', 'Active'),
(20, NULL, 0, NULL, 'Bridal Saree', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', '2', 1, '2021-12-23 11:23:26', '2', 'Active'),
(21, NULL, 0, NULL, 'green Saree', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', '2', 1, '2021-12-23 11:25:46', '2', 'Active'),
(22, NULL, 0, NULL, 'pink saree', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', '2', 1, '2021-12-23 11:27:32', '2', 'Active'),
(23, NULL, 0, NULL, 'Sidals Saree', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', 'Serious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparelSerious Indian bride in traditional apparel', '2', 1, '2021-12-23 11:30:49', '2', 'Active'),
(24, NULL, 0, NULL, 'assian saree', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', '3', 1, '2021-12-23 11:48:12', '2', 'Active'),
(25, NULL, 0, NULL, 'Pink Saree', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', '3', 1, '2021-12-23 11:49:15', '2', 'Active'),
(26, NULL, 0, NULL, 'Red Saree', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', '3', 1, '2021-12-23 11:50:11', '2', 'Active'),
(27, NULL, 0, NULL, 'Bridal Saree', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', '3', 1, '2021-12-23 11:52:05', '2', 'Active'),
(28, NULL, 0, NULL, 'purple saree', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', '3', 1, '2021-12-23 11:53:13', '2', 'Active'),
(29, NULL, 0, NULL, 'Kajal Saree', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', '3', 1, '2021-12-23 11:54:24', '2', 'Active'),
(30, '0', 0, NULL, 'Blue Saree', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', '3', 1, '2021-12-23 11:55:37', '2', 'Active'),
(31, NULL, 0, NULL, 'Yellow Saree', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', 'We believe that a saree jacket is the best way to lure off the millennials and Gen Z\'s into donning these gorgeous and scintillating outfits for the upcoming wedding season. ', '4', 1, '2021-12-23 12:15:01', '2', 'Active'),
(32, NULL, 4, 2, 'purple saree', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', '4', 1, '2022-01-10 11:50:39', '2', 'Active'),
(33, NULL, 13, 2, 'Bridal Saree', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', '4', 1, '2022-01-10 11:51:34', '2', 'Active'),
(34, NULL, 0, NULL, 'Blue Saree', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', '4', 1, '2021-12-23 12:24:26', '2', 'Active'),
(35, NULL, 0, NULL, 'Pink Saree', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', '4', 1, '2021-12-23 12:25:13', '2', 'Active'),
(36, NULL, 0, NULL, 'Bold Saree', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', '4', 1, '2021-12-23 12:27:11', '2', 'Active'),
(37, NULL, 0, NULL, 'Black  Saree', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', '4', 1, '2021-12-23 12:28:32', '2', 'Active'),
(38, NULL, 0, NULL, 'green Saree', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', 'Arranged Marriages are most common in Indian Society...But what comes ahead is a marriage just to fulfil the wish of the elders of the house. Arushi and Vikrant have their own fears. One fears of…', '4', 1, '2021-12-23 12:30:25', '2', 'Active'),
(39, '1', 0, NULL, 'Crush Saree', 'Happy young female enjoying coffee at home on day off', 'Happy young female enjoying coffee at home on day off', '6', 1, '2021-12-23 12:37:46', '2', 'Active'),
(40, NULL, 0, NULL, 'Bridal Saree', 'Happy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day off', 'Happy youngHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day off female enjoying coffee at home on day off', '6', 1, '2021-12-23 12:44:07', '2', 'Active'),
(41, NULL, 0, NULL, 'Blue Saree', 'Happy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day off', 'Happy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day off', '6', 1, '2021-12-23 12:39:24', '2', 'Active'),
(42, NULL, 0, NULL, 'Cream Saree', 'Happy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day off', 'Happy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day off', '6', 1, '2021-12-23 12:40:27', '2', 'Active'),
(43, NULL, 0, NULL, 'Kinz saree', 'Happy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day off', 'Happy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day offHappy young female enjoying coffee at home on day off', '6', 1, '2021-12-23 12:43:43', '2', 'Active'),
(44, NULL, 0, NULL, 'green Saree', 'Top 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten Views', 'Top 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten Views', '6', 1, '2021-12-23 12:52:42', '2', 'Active'),
(45, NULL, 0, NULL, 'Red Saree', 'Top 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten Views', 'Top 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten Views', '6', 1, '2021-12-23 12:50:00', '2', 'Active'),
(46, NULL, 0, NULL, 'Golden Saree', 'Top 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten Views', 'Top 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten ViewsTop 10 Most Beautiful Women in the world 2021 | Top Ten Views', '6', 1, '2021-12-23 02:00:19', '2', 'Active'),
(47, NULL, 0, NULL, 'Bridal Saree', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', '5', 1, '2021-12-23 01:18:19', '2', 'Active'),
(49, NULL, 0, NULL, 'Luxury Saree', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', '5', 1, '2021-12-23 01:11:27', '2', 'Active'),
(50, NULL, 0, NULL, 'Blue Saree', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', '5', 1, '2021-12-23 01:14:51', '2', 'Active'),
(51, NULL, 0, NULL, 'Cream Saree', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', '5', 1, '2021-12-23 01:19:06', '2', 'Active'),
(52, NULL, 0, NULL, 'Blue Saree', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', '5', 1, '2021-12-23 01:19:42', '2', 'Active'),
(53, NULL, 0, NULL, 'Pink Saree', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', '5', 1, '2021-12-23 01:20:38', '2', 'Active'),
(54, NULL, 0, NULL, 'Black  Saree', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', 'Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.Sabyasachi Winter 2019 bridal.', '5', 1, '2021-12-23 01:21:50', '2', 'Active'),
(55, NULL, 0, NULL, 'Luxury Saree', 'https://www.upwork.com/resources/ways-to-improve-client-communication-skillshttps://www.upwork.com/resources/ways-to-improve-client-communication-skillshttps://www.upwork.com/resources/ways-to-improve-client-communication-skills', 'https://www.upwork.com/resources/ways-to-improve-client-communication-skillshttps://www.upwork.com/resources/ways-to-improve-client-communication-skillshttps://www.upwork.com/resources/ways-to-improve-client-communication-skills', '5', 1, '2021-12-23 01:24:10', '2', 'Active'),
(56, NULL, 0, NULL, 'Lovely saree', 'Jacket Lehenga Choli - Shop Now jacket Style Lehengas from Mongoosekart,100% Best product,best price,Fastest delivery available.Jacket Lehenga Choli - Shop Now jacket Style Lehengas from Mongoosekart,100% Best product,best price,Fastest delivery available.Jacket Lehenga Choli - Shop Now jacket Style Lehengas from Mongoosekart,100% Best product,best price,Fastest delivery available.', 'Jacket Lehenga Choli - Shop Now jacket Style Lehengas from Mongoosekart,100% Best product,best price,Fastest delivery available.Jacket Lehenga Choli - Shop Now jacket Style Lehengas from Mongoosekart,100% Best product,best price,Fastest delivery available.Jacket Lehenga Choli - Shop Now jacket Style Lehengas from Mongoosekart,100% Best product,best price,Fastest delivery available.', '7', 1, '2021-12-23 01:26:41', '2', 'Active'),
(57, NULL, 0, NULL, 'Shrdh saree', 'Teal Blue Designer Embroidered Silk Party Wedding SareeTeal Blue Designer Embroidered Silk Party Wedding SareeTeal Blue Designer Embroidered Silk Party Wedding SareeTeal Blue Designer Embroidered Silk Party Wedding Saree', 'Teal Blue Designer Embroidered Silk Party Wedding SareeTeal Blue Designer Embroidered Silk Party Wedding SareeTeal Blue Designer Embroidered Silk Party Wedding Saree', '7', 1, '2021-12-23 01:36:54', '2', 'Active'),
(59, NULL, 0, NULL, 'green Saree', 'The daffodil yellow & army green pant suit is crafted in pure georgette along with a dull santoon bottom/inner and a pure georgette dupatta. The outfit exhibits intricate heavy resham embroidery that is beautifully enhanced with sequins, floral motifs along with stones and a lace border. ', 'The daffodil yellow & army green pant suit is crafted in pure georgette along with a dull santoon bottom/inner and a pure georgette dupatta. The outfit exhibits intricate heavy resham embroidery that is beautifully enhanced with sequins, floral motifs along with stones and a lace border. ', '7', 1, '2021-12-23 01:48:54', '2', 'Active'),
(60, NULL, 0, NULL, 'Pink Saree', 'The daffodil yellow & army green pant suit is crafted in pure georgette along with a dull santoon bottom/inner and a pure georgette dupatta. The outfit exhibits intricate heavy resham embroidery that is beautifully enhanced with sequins, floral motifs along with stones and a lace border. ', 'The daffodil yellow & army green pant suit is crafted in pure georgette along with a dull santoon bottom/inner and a pure georgette dupatta. The outfit exhibits intricate heavy resham embroidery that is beautifully enhanced with sequins, floral motifs along with stones and a lace border. ', '7', 1, '2021-12-23 01:49:35', '2', 'Active'),
(61, NULL, 0, NULL, 'CreamSaree', 'The daffodil yellow & army green pant suit is crafted in pure georgette along with a dull santoon bottom/inner and a pure georgette dupatta. The outfit exhibits intricate heavy resham embroidery that is beautifully enhanced with sequins, floral motifs along with stones and a lace border. ', 'The daffodil yellow & army green pant suit is crafted in pure georgette along with a dull santoon bottom/inner and a pure georgette dupatta. The outfit exhibits intricate heavy resham embroidery that is beautifully enhanced with sequins, floral motifs along with stones and a lace border. ', '7', 1, '2021-12-23 01:50:53', '2', 'Active'),
(62, NULL, 0, NULL, 'Back Less saree', 'The daffodil yellow & army green pant suit is crafted in pure georgette along with a dull santoon bottom/inner and a pure georgette dupatta. The outfit exhibits intricate heavy resham embroidery that is beautifully enhanced with sequins, floral motifs along with stones and a lace border. ', 'The daffodil yellow & army green pant suit is crafted in pure georgette along with a dull santoon bottom/inner and a pure georgette dupatta. The outfit exhibits intricate heavy resham embroidery that is beautifully enhanced with sequins, floral motifs along with stones and a lace border. ', '7', 1, '2021-12-23 01:52:51', '2', 'Active'),
(63, NULL, 0, NULL, 'Luxury Saree', '@sareecom_india·Official Saree.com Account. Sarees, lehengas, salwar kameez, Indo western and bridal collections by Asopalav. Follow us for Latest Indian Fashion Dresses.', '@sareecom_india·Official Saree.com Account. Sarees, lehengas, salwar kameez, Indo western and bridal collections by Asopalav. Follow us for Latest Indian Fashion Dresses.', '7', 1, '2021-12-23 01:56:13', '2', 'Active'),
(64, NULL, 0, NULL, 'Prachi Saree', '@sareecom_india·Official Saree.com Account. Sarees, lehengas, salwar kameez, Indo western and bridal collections by Asopalav. Follow us for Latest Indian Fashion Dresses.', '@sareecom_india·Official Saree.com Account. Sarees, lehengas, salwar kameez, Indo western and bridal collections by Asopalav. Follow us for Latest Indian Fashion Dresses.', '7', 1, '2021-12-23 01:58:48', '2', 'Active'),
(65, NULL, 0, NULL, 'Bridal Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2021-12-24 10:06:06', '2', 'Active'),
(66, NULL, 0, NULL, 'Sonal Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2021-12-24 10:07:08', '2', 'Active'),
(67, NULL, 0, NULL, 'Nece lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2021-12-24 10:08:35', '2', 'Active'),
(68, NULL, 0, NULL, 'Mansi Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2021-12-24 10:10:42', '2', 'Active'),
(69, NULL, 0, NULL, 'Shrdha lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2021-12-24 10:11:41', '2', 'Active'),
(70, NULL, 4, 2, 'Shrdha lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2022-01-10 11:50:23', '2', 'Active'),
(71, NULL, 0, NULL, 'Luxury Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2021-12-24 10:17:57', '2', 'Active'),
(72, NULL, 0, NULL, 'Black Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2021-12-24 10:22:23', '2', 'Active'),
(73, NULL, 0, NULL, 'Red Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '28', 2, '2021-12-24 10:24:04', '2', 'Active'),
(74, NULL, 0, NULL, 'Sonam lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '29', 2, '2021-12-24 10:28:16', '2', 'Active'),
(75, NULL, 0, NULL, 'Blue Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '29', 2, '2021-12-24 10:29:16', '2', 'Active'),
(76, NULL, 0, NULL, 'Bridal Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '29', 2, '2021-12-24 10:31:59', '2', 'Active'),
(77, NULL, 4, 2, 'Titan Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '29', 2, '2022-01-10 11:50:11', '2', 'Active'),
(78, NULL, 0, NULL, 'Red Saree', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '29', 2, '2021-12-24 10:34:49', '2', 'Active'),
(79, NULL, 0, NULL, 'Marun Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '29', 2, '2021-12-24 10:36:39', '2', 'Active'),
(80, NULL, 4, 2, 'Denim Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '29', 2, '2022-01-10 11:49:40', '2', 'Active'),
(82, NULL, 0, NULL, 'Royal Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '31', 2, '2021-12-24 10:43:17', '2', 'Active'),
(83, NULL, 0, NULL, 'Green Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '31', 2, '2021-12-24 10:43:31', '2', 'Active'),
(84, NULL, 0, NULL, 'Blue lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '31', 2, '2021-12-24 10:46:34', '2', 'Active'),
(85, NULL, 0, NULL, 'Super Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '31', 2, '2021-12-24 10:47:19', '2', 'Active'),
(86, NULL, 0, NULL, 'Sonal Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '31', 2, '2021-12-24 10:48:21', '2', 'Active'),
(87, NULL, 0, NULL, 'Good Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '31', 2, '2021-12-24 10:49:16', '2', 'Active'),
(88, NULL, 0, NULL, 'Blouse Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '31', 2, '2021-12-24 10:50:06', '2', 'Active'),
(89, NULL, 0, NULL, 'Cream Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '31', 2, '2021-12-24 10:50:58', '2', 'Active'),
(90, NULL, 4, 2, 'Bridal Saree', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '32', 2, '2022-01-10 11:49:54', '1', 'Active'),
(91, NULL, 0, NULL, 'Pink Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '32', 2, '2021-12-24 10:53:02', '2', 'Active'),
(92, NULL, 0, NULL, 'Titan Lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '32', 2, '2021-12-24 10:53:57', '2', 'Active'),
(93, NULL, 0, NULL, 'Nice lengha', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', 'While weddings are supposed to be everything vivacious, we are also aware of the fact that many of us absolutely love the colour black. So much so, that we wish to have at least one black outfit…', '32', 2, '2021-12-24 10:55:03', '2', 'Active'),
(94, NULL, 0, NULL, 'Purple Lengha', 'If u want more information about this call me /dm me on this number=8949110634If u want more information about this call me /dm me on this number=8949110634If u want more information about this call me /dm me on this number=8949110634', 'If u want more information about this call me /dm me on this number=8949110634If u want more information about this call me /dm me on this number=8949110634If u want more information about this call me /dm me on this number=8949110634', '34', 2, '2021-12-24 11:03:48', '2', 'Active'),
(95, NULL, 0, NULL, 'Lovely Lengha', 'If u want more information about this call me /dm me on thisIf u want more information about this call me /dm me on thisIf u want more information about this call me /dm me on this', 'If u want more information about this call me /dm me on thisIf u want more information about this call me /dm me on thisIf u want more information about this call me /dm me on this', '34', 2, '2021-12-24 11:04:54', '2', 'Active'),
(96, NULL, 5, 2, 'Red Lengha', 'If u want more information about this call me /dm me on thisIf u want more information about this call me /dm me on thisIf u want more information about this call me /dm me on this', 'If u want more information about this call me /dm me on thisIf u want more information about this call me /dm me on thisIf u want more information about this call me /dm me on this', '34', 2, '2022-01-08 01:24:30', '2', 'Active'),
(97, NULL, 0, NULL, 'Bridal Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', '34', 2, '2021-12-24 11:12:17', '1', 'Active'),
(98, NULL, 0, NULL, 'Luxury Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', '34', 2, '2021-12-24 11:13:18', '2', 'Active'),
(99, NULL, 5, 2, 'Pink Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', '34', 2, '2022-01-08 01:24:14', '2', 'Active'),
(100, NULL, 0, NULL, 'White Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', '34', 2, '2021-12-24 11:15:19', '2', 'Active'),
(101, NULL, 0, NULL, 'Blue Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', '34', 2, '2021-12-24 11:16:22', '2', 'Active'),
(102, NULL, 6, 1, 'Cream Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', '35', 2, '2022-01-10 11:49:09', '2', 'Active'),
(103, NULL, 0, NULL, 'Back Less Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', '35', 2, '2021-12-24 11:20:07', '2', 'Active'),
(104, NULL, 13, 2, 'Top Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', '35', 2, '2023-06-12 06:38:40', '2', 'Active'),
(105, NULL, 9, 1, 'Multi lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', '35', 2, '2022-02-08 12:18:07', '2', 'Active'),
(106, NULL, 5, 3, 'Purple Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', '35', 2, '2022-01-08 01:24:03', '2', 'Active'),
(107, NULL, 0, NULL, 'Black Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', '35', 2, '2021-12-24 11:22:42', '2', 'Active');
INSERT INTO `product` (`iProductId`, `vWishlist`, `iColorId`, `iFabricId`, `vProductName`, `iDescription`, `tMoreInformation`, `iSubcategoryId`, `iCategoryId`, `dtAddedDate`, `vHomePageDisplay`, `eStatus`) VALUES
(108, NULL, 0, NULL, 'Pink Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\nMore', '35', 2, '2021-12-24 11:23:46', '2', 'Active'),
(109, NULL, 4, 1, 'Jeans Lengha', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', 'Whatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMoreWhatapp on 9662767416 #kurtis #designersuits #indowestern #indianbride #goldjewellery #designersaree #recipe #christmas #dinner #chicken #dessert #thanksgiving #aesthetic #freecrochetpattern #tiktok…\r\nMore', '35', 2, '2022-01-10 11:48:57', '2', 'Active'),
(110, NULL, 5, 2, 'Party dress', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '47', 3, '2022-01-08 01:23:48', '2', 'Active'),
(111, NULL, 0, NULL, 'Simple Dress', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '43', 3, '2021-12-24 11:45:10', '2', 'Active'),
(112, NULL, 6, 1, 'Western dress ', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '33', 3, '2022-01-08 01:24:55', '2', 'Active'),
(113, NULL, 5, 1, 'Green Dress', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '', 3, '2022-02-02 04:09:37', '2', 'Active'),
(114, NULL, 9, 2, 'Nice Dress', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '42', 3, '2022-01-08 01:25:14', '2', 'Active'),
(115, NULL, 7, 2, 'Pink Dress', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations5 regal lehengas from Shraddha Kapoor’s collection that are perfect for intimate celebrations', '43', 3, '2022-01-08 01:24:43', '2', 'Active'),
(120, NULL, 11, 1, 'Branded Sarees (Banarasi)', 'New Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded Sarees New Branded Sarees New Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded Sarees', 'New Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded SareesNew Branded Sarees', '25', 1, '2023-06-19 05:38:43', '2', 'Active'),
(122, NULL, 11, 906, 'ySArees', 'aa', 'aaa', '51', 1, '2022-05-13 09:47:05', '1', 'Active'),
(123, NULL, 11, 906, 'ySArees', 'aa', 'aaa', '51', 1, '2022-05-13 09:47:16', '1', 'Active'),
(124, NULL, 11, 906, 'ySArees', 'aa', 'aaa', '51', 1, '2022-05-13 09:47:21', '1', 'Active'),
(125, NULL, 11, 906, 'ySArees', 'aa', 'aaa', '51', 1, '2022-05-13 09:47:35', '1', 'Active'),
(126, NULL, 11, 906, 'ySArees', 'aa', 'aaa', '51', 1, '2022-05-13 09:47:36', '1', 'Active'),
(127, NULL, 11, 906, 'ySArees', 'aa', 'aaa', '51', 1, '2022-05-13 09:47:46', '1', 'Active'),
(128, NULL, 11, 906, 'ySArees', 'aa', 'aaa', '51', 1, '2022-05-13 09:47:47', '1', 'Active'),
(129, NULL, 3, 906, 'ySArees', 'aaaass', 'asdd', '121', 1, '2022-05-13 09:48:53', '1', 'Active'),
(130, NULL, 10, 906, 'ysareees', 'rr', 'rrr', '27', 1, '2022-05-13 09:50:11', '1', 'Active'),
(131, NULL, 10, 906, 'ysareees', 'rr', 'rrr', '27', 1, '2022-05-13 09:50:17', '2', 'Active'),
(132, NULL, 8, 6, 'jhu8 yh7 ', 'mko', 'i9i', '58', 12, '2022-05-13 10:06:33', '1', 'Active'),
(133, NULL, 8, 906, 'ysaree', 'uiyui', 'yuyu', '27', 1, '2022-05-13 10:07:32', '1', 'Active'),
(134, NULL, 8, 906, 'ysaree', 'uiyui', 'yuyu', '27', 1, '2022-05-13 10:07:40', '1', 'Active'),
(135, NULL, 5, 906, 'ysaree', 'trtrt', 'rtrt', '27', 1, '2022-05-13 10:08:08', '1', 'Active'),
(136, NULL, 13, 12, 'ysaree', 'sdsd', 'sdsdd', '106', 3, '2022-05-13 12:11:51', '1', 'Active'),
(137, NULL, 13, 12, 'ysaree', 'sdsd', 'sdsdd', '106', 3, '2022-05-13 12:12:04', '2', 'Active'),
(138, NULL, 13, 12, 'ysaree', 'sdsd', 'sdsdd', '106', 3, '2022-05-13 12:12:09', '2', 'Active'),
(140, NULL, 4, 6, 'testing saree', 'ds', 'ssdsd', '83', 2, '2022-05-14 01:50:43', '1', 'Active'),
(141, NULL, 13, 906, 'latest testing', 'sdsdfsfdsdf', 'sfsdfsdfsdf', '41', 2, '2022-05-14 02:24:14', '2', 'Active'),
(142, NULL, 11, 9, 'dsdsds', 'sdd', 'sdsd', '38', 2, '2022-08-12 10:29:39', '1', 'Active'),
(144, NULL, 9, 11, 'saree', 'dsds', 'jayeshjayeshjayeshjayeshjayeshjayeshjayesh', '24', 1, '2023-06-21 05:17:21', '2', 'Active'),
(148, NULL, 12, 2, 'test', 'This is the testing.', 'This is the testing of the more information.', '28', 2, '2023-02-01 04:40:04', '2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `iImageId` int(11) NOT NULL,
  `iProductId` int(11) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vType` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`iImageId`, `iProductId`, `vImage`, `vType`) VALUES
(15, 6, 'https://prameshsilks.com/backend/image/Product/1640256879_0.jpeg', 1),
(16, 6, 'https://prameshsilks.com/backend/image/Product/1640256879_1.jpeg', 1),
(17, 6, 'https://prameshsilks.com/backend/image/Product/1640256879_2.jpeg', 0),
(39, 16, 'https://prameshsilks.com/backend/image/Product/1640257905_0.jpeg', 1),
(40, 16, 'https://prameshsilks.com/backend/image/Product/1640257912_1.jpeg', 1),
(75, 34, 'https://prameshsilks.com/backend/image/Product/1640262257_0.jpeg', 1),
(76, 34, 'https://prameshsilks.com/backend/image/Product/1640262257_1.jpeg', 1),
(77, 35, 'https://prameshsilks.com/backend/image/Product/1640262313_0.jpeg', 1),
(78, 35, 'https://prameshsilks.com/backend/image/Product/1640262313_1.jpeg', 1),
(79, 36, 'https://prameshsilks.com/backend/image/Product/1640262431_0.jpeg', 1),
(80, 36, 'https://prameshsilks.com/backend/image/Product/1640262431_1.jpeg', 1),
(81, 36, 'https://prameshsilks.com/backend/image/Product/1640262431_2.jpeg', 0),
(82, 37, 'https://prameshsilks.com/backend/image/Product/1640262512_0.jpeg', 1),
(83, 37, 'https://prameshsilks.com/backend/image/Product/1640262512_1.jpeg', 1),
(84, 38, 'https://prameshsilks.com/backend/image/Product/1640262580_0.jpeg', 1),
(85, 38, 'https://prameshsilks.com/backend/image/Product/1640262580_1.jpeg', 1),
(86, 39, 'https://prameshsilks.com/backend/image/Product/1640263066_0.jpeg', 1),
(87, 39, 'https://prameshsilks.com/backend/image/Product/1640263066_1.jpeg', 1),
(89, 40, 'https://prameshsilks.com/backend/image/Product/1640263123_1.jpeg', 1),
(90, 41, 'https://prameshsilks.com/backend/image/Product/1640263164_0.jpeg', 1),
(91, 41, 'https://prameshsilks.com/backend/image/Product/1640263164_1.jpeg', 1),
(92, 42, 'https://prameshsilks.com/backend/image/Product/1640263227_0.jpeg', 1),
(93, 42, 'https://prameshsilks.com/backend/image/Product/1640263227_1.jpeg', 1),
(94, 43, 'https://prameshsilks.com/backend/image/Product/1640263274_0.jpeg', 1),
(96, 40, 'https://prameshsilks.com/backend/image/Product/1640263364_0.jpeg', 1),
(97, 43, 'https://prameshsilks.com/backend/image/Product/1640263390_0.jpeg', 1),
(101, 44, 'https://prameshsilks.com/backend/image/Product/1640263751_0.jpeg', 1),
(102, 44, 'https://prameshsilks.com/backend/image/Product/1640263751_1.jpeg', 1),
(104, 45, 'https://prameshsilks.com/backend/image/Product/1640263800_0.jpeg', 1),
(105, 45, 'https://prameshsilks.com/backend/image/Product/1640263800_1.jpeg', 1),
(106, 46, 'https://prameshsilks.com/backend/image/Product/1640686570_0.jpeg', 1),
(107, 44, 'https://prameshsilks.com/backend/image/Product/1640263948_0', NULL),
(108, 47, 'https://prameshsilks.com/backend/image/Product/1640264806_0.jpeg', 1),
(109, 47, 'https://prameshsilks.com/backend/image/Product/1640264806_1.jpeg', 1),
(112, 49, 'https://prameshsilks.com/backend/image/Product/1640265087_0.png', 1),
(113, 49, 'https://prameshsilks.com/backend/image/Product/1640265087_1.png', 1),
(114, 50, 'https://prameshsilks.com/backend/image/Product/1640265182_0.jpeg', 1),
(115, 50, 'https://prameshsilks.com/backend/image/Product/1640265233_0.jpeg', 1),
(116, 50, 'https://prameshsilks.com/backend/image/Product/1640265267_0', NULL),
(117, 51, 'https://prameshsilks.com/backend/image/Product/1640265546_0.jpeg', 1),
(118, 51, 'https://prameshsilks.com/backend/image/Product/1640265546_1.jpeg', 1),
(119, 52, 'https://prameshsilks.com/backend/image/Product/1640265582_0.jpeg', 1),
(120, 52, 'https://prameshsilks.com/backend/image/Product/1640265582_1.jpeg', 1),
(121, 53, 'https://prameshsilks.com/backend/image/Product/1640265638_0.jpeg', 1),
(122, 53, 'https://prameshsilks.com/backend/image/Product/1640265638_1.jpeg', 1),
(123, 54, 'https://prameshsilks.com/backend/image/Product/1640265710_0.jpeg', 1),
(124, 54, 'https://prameshsilks.com/backend/image/Product/1640265710_1.jpeg', 1),
(125, 55, 'https://prameshsilks.com/backend/image/Product/1640265850_0.jpeg', 1),
(126, 55, 'https://prameshsilks.com/backend/image/Product/1640265850_1.png', 1),
(127, 55, 'https://prameshsilks.com/backend/image/Product/1640265850_2.jpeg', 0),
(128, 56, 'https://prameshsilks.com/backend/image/Product/1640266001_0.jpeg', 1),
(129, 56, 'https://prameshsilks.com/backend/image/Product/1640266001_1.jpeg', 1),
(130, 57, 'https://prameshsilks.com/backend/image/Product/1640266614_0.jpeg', 1),
(131, 57, 'https://prameshsilks.com/backend/image/Product/1640266614_1.png', 1),
(134, 59, 'https://prameshsilks.com/backend/image/Product/1640267334_0.jpeg', 1),
(135, 59, 'https://prameshsilks.com/backend/image/Product/1640267334_1.jpeg', 1),
(136, 60, 'https://prameshsilks.com/backend/image/Product/1640267375_0.jpeg', 1),
(137, 60, 'https://prameshsilks.com/backend/image/Product/1640267375_1.jpeg', 1),
(138, 61, 'https://prameshsilks.com/backend/image/Product/1640267453_0.jpeg', 1),
(139, 61, 'https://prameshsilks.com/backend/image/Product/1640267453_1.jpeg', 1),
(140, 62, 'https://prameshsilks.com/backend/image/Product/1640267571_0.jpeg', 1),
(141, 62, 'https://prameshsilks.com/backend/image/Product/1640267571_1.jpeg', 1),
(142, 63, 'https://prameshsilks.com/backend/image/Product/1640267773_0.jpeg', 1),
(143, 63, 'https://prameshsilks.com/backend/image/Product/1640267773_1.jpeg', 1),
(145, 64, 'https://prameshsilks.com/backend/image/Product/1643798282_1.png', 1),
(146, 64, 'https://prameshsilks.com/backend/image/Product/1643798148_1.jpeg', 1),
(149, 64, 'https://prameshsilks.com/backend/image/Product/1643798255_0.jpeg', NULL),
(150, 46, 'https://prameshsilks.com/backend/image/Product/1640686570_0.jpeg', 1),
(151, 46, 'https://prameshsilks.com/backend/image/Product/1640686570_0.jpeg', NULL),
(152, 65, 'https://prameshsilks.com/backend/image/Product/1640340366_0.jpeg', 1),
(153, 65, 'https://prameshsilks.com/backend/image/Product/1640340366_1.jpeg', 1),
(154, 66, 'https://prameshsilks.com/backend/image/Product/1640340428_0.jpeg', 1),
(155, 66, 'https://prameshsilks.com/backend/image/Product/1640340428_1.jpeg', 1),
(156, 67, 'https://prameshsilks.com/backend/image/Product/1640340478_0.jpeg', 0),
(157, 67, 'https://prameshsilks.com/backend/image/Product/1640340478_1.jpeg', 1),
(158, 67, 'https://prameshsilks.com/backend/image/Product/1640340478_2.jpeg', 1),
(160, 68, 'https://prameshsilks.com/backend/image/Product/1640340558_0.jpeg', 0),
(161, 68, 'https://prameshsilks.com/backend/image/Product/1640340558_1.jpeg', 1),
(164, 69, 'https://prameshsilks.com/backend/image/Product/1640340701_0.jpeg', 1),
(165, 69, 'https://prameshsilks.com/backend/image/Product/1640340701_1.jpeg', 1),
(166, 70, 'https://prameshsilks.com/backend/image/Product/1640340747_0.jpeg', 1),
(167, 70, 'https://prameshsilks.com/backend/image/Product/1640340747_1.jpeg', 1),
(168, 71, 'https://prameshsilks.com/backend/image/Product/1640340824_0.jpeg', 1),
(169, 71, 'https://prameshsilks.com/backend/image/Product/1640340824_1.jpeg', 1),
(171, 72, 'https://prameshsilks.com/backend/image/Product/1640341248_0.jpeg', 1),
(172, 72, 'https://prameshsilks.com/backend/image/Product/1640341248_1.png', 1),
(174, 73, 'https://prameshsilks.com/backend/image/Product/1640341444_0.png', 1),
(175, 73, 'https://prameshsilks.com/backend/image/Product/1640341444_1.jpeg', 1),
(176, 70, 'https://prameshsilks.com/backend/image/Product/1640341683_0.jpeg', NULL),
(177, 74, 'https://prameshsilks.com/backend/image/Product/1640341696_0.jpeg', 1),
(178, 74, 'https://prameshsilks.com/backend/image/Product/1640341696_1.jpeg', 1),
(179, 75, 'https://prameshsilks.com/backend/image/Product/1640341756_0.jpeg', 1),
(180, 75, 'https://prameshsilks.com/backend/image/Product/1640341756_1.jpeg', 1),
(182, 76, 'https://prameshsilks.com/backend/image/Product/1640341873_0.jpeg', 1),
(183, 76, 'https://prameshsilks.com/backend/image/Product/1640341873_1.jpeg', 1),
(184, 77, 'https://prameshsilks.com/backend/image/Product/1640342029_0.jpeg', 1),
(185, 77, 'https://prameshsilks.com/backend/image/Product/1640342029_1.jpeg', 1),
(186, 78, 'https://prameshsilks.com/backend/image/Product/1640342089_0.jpeg', 1),
(187, 78, 'https://prameshsilks.com/backend/image/Product/1640342089_1.jpeg', 1),
(188, 79, 'https://prameshsilks.com/backend/image/Product/1640342199_0.jpeg', 1),
(189, 79, 'https://prameshsilks.com/backend/image/Product/1640342199_1.jpeg', 1),
(190, 80, 'https://prameshsilks.com/backend/image/Product/1640342346_0.jpeg', 1),
(191, 80, 'https://prameshsilks.com/backend/image/Product/1640342346_1.jpeg', 1),
(193, 82, 'https://prameshsilks.com/backend/image/Product/1640342525_0.jpeg', 1),
(194, 82, 'https://prameshsilks.com/backend/image/Product/1640342525_1.jpeg', 1),
(195, 83, 'https://prameshsilks.com/backend/image/Product/1640342571_0.jpeg', 1),
(196, 83, 'https://prameshsilks.com/backend/image/Product/1640342571_1.jpeg', 1),
(197, 84, 'https://prameshsilks.com/backend/image/Product/1640342794_0.jpeg', 1),
(198, 84, 'https://prameshsilks.com/backend/image/Product/1640342794_1.jpeg', 1),
(199, 85, 'https://prameshsilks.com/backend/image/Product/1640342839_0.jpeg', 1),
(200, 85, 'https://prameshsilks.com/backend/image/Product/1640342839_1.jpeg', 1),
(201, 86, 'https://prameshsilks.com/backend/image/Product/1640342901_0.jpeg', 1),
(202, 86, 'https://prameshsilks.com/backend/image/Product/1640342901_1.jpeg', 1),
(203, 87, 'https://prameshsilks.com/backend/image/Product/1640342956_0.jpeg', 1),
(204, 87, 'https://prameshsilks.com/backend/image/Product/1640342956_1.jpeg', 1),
(205, 88, 'https://prameshsilks.com/backend/image/Product/1640343006_0.jpeg', 1),
(206, 88, 'https://prameshsilks.com/backend/image/Product/1640343006_1.jpeg', 1),
(207, 89, 'https://prameshsilks.com/backend/image/Product/1640343058_0.jpeg', 1),
(208, 89, 'https://prameshsilks.com/backend/image/Product/1640343058_1.jpeg', 1),
(209, 90, 'https://prameshsilks.com/backend/image/Product/1640343136_0.png', 1),
(210, 90, 'https://prameshsilks.com/backend/image/Product/1640343136_1.jpeg', 1),
(211, 91, 'https://prameshsilks.com/backend/image/Product/1640343182_0.jpeg', 1),
(212, 91, 'https://prameshsilks.com/backend/image/Product/1640343182_1.jpeg', 1),
(213, 92, 'https://prameshsilks.com/backend/image/Product/1640343237_0.jpeg', 1),
(214, 92, 'https://prameshsilks.com/backend/image/Product/1640343237_1.jpeg', 1),
(215, 93, 'https://prameshsilks.com/backend/image/Product/1640343303_0.jpeg', 1),
(216, 93, 'https://prameshsilks.com/backend/image/Product/1640343303_1.jpeg', 1),
(217, 94, 'https://prameshsilks.com/backend/image/Product/1640343828_0.jpeg', 1),
(218, 94, 'https://prameshsilks.com/backend/image/Product/1640343828_1.jpeg', 1),
(219, 95, 'https://prameshsilks.com/backend/image/Product/1640343894_0.jpeg', 1),
(220, 95, 'https://prameshsilks.com/backend/image/Product/1640343894_1.jpeg', 1),
(221, 96, 'https://prameshsilks.com/backend/image/Product/1640343933_0.jpeg', 1),
(222, 96, 'https://prameshsilks.com/backend/image/Product/1640343933_1.jpeg', 1),
(225, 98, 'https://prameshsilks.com/backend/image/Product/1640344398_0.jpeg', 1),
(226, 98, 'https://prameshsilks.com/backend/image/Product/1640344398_1.jpeg', 1),
(227, 99, 'https://prameshsilks.com/backend/image/Product/1640344470_0.jpeg', 1),
(228, 99, 'https://prameshsilks.com/backend/image/Product/1640344470_1.jpeg', 1),
(229, 100, 'https://prameshsilks.com/backend/image/Product/1640344519_0.jpeg', 1),
(230, 100, 'https://prameshsilks.com/backend/image/Product/1640344519_1.png', 1),
(251, 111, 'https://prameshsilks.com/backend/image/Product/1640346093_0.jpeg', 1),
(252, 111, 'https://prameshsilks.com/backend/image/Product/1640346093_1.jpeg', 1),
(294, 1, 'https://prameshsilks.com/backend/image/Product/1640686570_0.jpeg', 1),
(295, 1, 'https://prameshsilks.com/backend/image/Product/1640686570_1.jpeg', 1),
(298, 2, 'https://prameshsilks.com/backend/image/Product/1640686648_1.jpeg', 1),
(300, 3, 'https://prameshsilks.com/backend/image/Product/1640686691_0.jpeg', 1),
(301, 3, 'https://prameshsilks.com/backend/image/Product/1640686691_1.jpeg', 1),
(303, 5, 'https://prameshsilks.com/backend/image/Product/1640686751_0.jpeg', 1),
(304, 5, 'https://prameshsilks.com/backend/image/Product/1640686751_1.jpeg', 1),
(305, 5, 'https://prameshsilks.com/backend/image/Product/1640686760_0', NULL),
(306, 7, 'https://prameshsilks.com/backend/image/Product/1640686791_0.jpeg', 1),
(307, 7, 'https://prameshsilks.com/backend/image/Product/1640686791_1.jpeg', 1),
(309, 8, 'https://prameshsilks.com/backend/image/Product/1640686848_0.jpeg', 1),
(310, 8, 'https://prameshsilks.com/backend/image/Product/1640686848_1.jpeg', 1),
(311, 8, 'https://prameshsilks.com/backend/image/Product/1640686855_0', NULL),
(312, 9, 'https://prameshsilks.com/backend/image/Product/1640686886_0.jpeg', 1),
(313, 9, 'https://prameshsilks.com/backend/image/Product/1640686886_1.jpeg', 1),
(314, 9, 'https://prameshsilks.com/backend/image/Product/1640686893_0', NULL),
(315, 10, 'https://prameshsilks.com/backend/image/Product/1640686924_0.jpeg', 1),
(316, 10, 'https://prameshsilks.com/backend/image/Product/1640686924_1.jpeg', 1),
(317, 10, 'https://prameshsilks.com/backend/image/Product/1640686933_0', NULL),
(318, 11, 'https://prameshsilks.com/backend/image/Product/1640686966_0.jpeg', 1),
(326, 1, 'https://prameshsilks.com/backend/image/Product/1640771569_4.jpeg', 0),
(331, 11, 'https://prameshsilks.com/backend/image/Product/1640933331_0.jpeg', 1),
(332, 12, 'https://prameshsilks.com/backend/image/Product/1640933420_0.jpeg', 1),
(333, 12, 'https://prameshsilks.com/backend/image/Product/1640933420_1.jpeg', 1),
(334, 12, 'https://prameshsilks.com/backend/image/Product/1640933420_2.jpeg', NULL),
(335, 13, 'https://prameshsilks.com/backend/image/Product/1640933550_0.jpeg', 1),
(336, 13, 'https://prameshsilks.com/backend/image/Product/1640933550_1.jpeg', 1),
(337, 17, 'https://prameshsilks.com/backend/image/Product/1640933590_0.jpeg', 1),
(338, 17, 'https://prameshsilks.com/backend/image/Product/1640933590_1.jpeg', 1),
(339, 18, 'https://prameshsilks.com/backend/image/Product/1640933630_0.jpeg', 1),
(340, 18, 'https://prameshsilks.com/backend/image/Product/1640933630_1.jpeg', 1),
(341, 19, 'https://prameshsilks.com/backend/image/Product/1640933670_0.jpeg', 1),
(342, 19, 'https://prameshsilks.com/backend/image/Product/1640933670_1.jpeg', 1),
(343, 20, 'https://prameshsilks.com/backend/image/Product/1640933732_0.jpeg', 1),
(344, 20, 'https://prameshsilks.com/backend/image/Product/1640933732_1.jpeg', 1),
(345, 21, 'https://prameshsilks.com/backend/image/Product/1640933777_0.jpeg', 1),
(346, 21, 'https://prameshsilks.com/backend/image/Product/1640933777_1.jpeg', 1),
(347, 22, 'https://prameshsilks.com/backend/image/Product/1640933836_0.jpeg', 1),
(348, 22, 'https://prameshsilks.com/backend/image/Product/1640933836_1.jpeg', 1),
(349, 23, 'https://prameshsilks.com/backend/image/Product/1640933871_0.jpeg', 1),
(350, 23, 'https://prameshsilks.com/backend/image/Product/1640933871_1.jpeg', 1),
(351, 24, 'https://prameshsilks.com/backend/image/Product/1640933910_0.jpeg', 1),
(352, 24, 'https://prameshsilks.com/backend/image/Product/1640933910_1.jpeg', 1),
(353, 25, 'https://prameshsilks.com/backend/image/Product/1640933958_0.jpeg', 1),
(354, 25, 'https://prameshsilks.com/backend/image/Product/1640933958_1.jpeg', 1),
(355, 26, 'https://prameshsilks.com/backend/image/Product/1640934008_0.jpeg', 1),
(356, 26, 'https://prameshsilks.com/backend/image/Product/1640934008_1.jpeg', 1),
(357, 27, 'https://prameshsilks.com/backend/image/Product/1640934048_0.jpeg', 1),
(358, 27, 'https://prameshsilks.com/backend/image/Product/1640934048_1.jpeg', 1),
(359, 28, 'https://prameshsilks.com/backend/image/Product/1640934992_0.jpeg', 1),
(360, 28, 'https://prameshsilks.com/backend/image/Product/1640934992_1.jpeg', 1),
(361, 29, 'https://prameshsilks.com/backend/image/Product/1640935145_0.jpeg', 1),
(362, 29, 'https://prameshsilks.com/backend/image/Product/1640935145_1.jpeg', 1),
(363, 30, 'https://prameshsilks.com/backend/image/Product/1640935180_0.jpeg', 1),
(364, 30, 'https://prameshsilks.com/backend/image/Product/1640935180_1.jpeg', 1),
(365, 31, 'https://prameshsilks.com/backend/image/Product/1640935223_0.jpeg', 1),
(366, 31, 'https://prameshsilks.com/backend/image/Product/1640935223_1.jpeg', 1),
(367, 32, 'https://prameshsilks.com/backend/image/Product/1640935260_0.jpeg', 1),
(368, 32, 'https://prameshsilks.com/backend/image/Product/1640935260_1.jpeg', 1),
(369, 33, 'https://prameshsilks.com/backend/image/Product/1640935473_0.jpeg', 1),
(370, 33, 'https://prameshsilks.com/backend/image/Product/1640935473_1.jpeg', 1),
(375, 120, 'https://prameshsilks.com/backend/image/Product/1642746321_0.jpeg', 1),
(376, 120, 'https://prameshsilks.com/backend/image/Product/1642746321_1.jpeg', 1),
(377, 120, 'https://prameshsilks.com/backend/image/Product/1642746321_2.jpeg', 0),
(378, 120, 'https://prameshsilks.com/backend/image/Product/1642746321_3.jpeg', 0),
(379, 120, 'https://prameshsilks.com/backend/image/Product/1642746321_4.jpeg', 0),
(380, 120, 'https://prameshsilks.com/backend/image/Product/1642746321_5.jpeg', 0),
(384, 115, 'https://prameshsilks.com/backend/image/Product/1643797242_0.png', 1),
(385, 115, 'https://prameshsilks.com/backend/image/Product/1643797242_1.png', 1),
(386, 114, 'https://prameshsilks.com/backend/image/Product/1643797266_0.jpeg', 1),
(387, 114, 'https://prameshsilks.com/backend/image/Product/1643797266_1.jpeg', 1),
(389, 113, 'https://prameshsilks.com/backend/image/Product/1643798034_0.jpeg', 1),
(390, 113, 'https://prameshsilks.com/backend/image/Product/1643798034_1.jpeg', 1),
(391, 112, 'https://prameshsilks.com/backend/image/Product/1643798063_0.jpeg', 1),
(392, 112, 'https://prameshsilks.com/backend/image/Product/1643798063_1.jpeg', 1),
(393, 112, 'https://prameshsilks.com/backend/image/Product/1643798063_2.jpeg', 0),
(394, 110, 'https://prameshsilks.com/backend/image/Product/1643798099_0.webp', 1),
(395, 110, 'https://prameshsilks.com/backend/image/Product/1643798099_1.jpeg', 1),
(396, 109, 'https://prameshsilks.com/backend/image/Product/1643798122_0.png', 1),
(397, 109, 'https://prameshsilks.com/backend/image/Product/1643798122_1.png', 1),
(398, 109, 'https://prameshsilks.com/backend/image/Product/1643798122_2.png', NULL),
(399, 108, 'https://prameshsilks.com/backend/image/Product/1643798148_0.jpeg', 1),
(400, 108, 'https://prameshsilks.com/backend/image/Product/1643798148_1.jpeg', 1),
(401, 107, 'https://prameshsilks.com/backend/image/Product/1643798171_0.jpeg', 1),
(402, 107, 'https://prameshsilks.com/backend/image/Product/1643798171_1.jpeg', 1),
(403, 106, 'https://prameshsilks.com/backend/image/Product/1643798199_0.jpeg', 1),
(404, 106, 'https://prameshsilks.com/backend/image/Product/1643798199_1.jpeg', 1),
(405, 105, 'https://prameshsilks.com/backend/image/Product/1643798238_0.jpeg', 1),
(406, 105, 'https://prameshsilks.com/backend/image/Product/1643798238_1.jpeg', 1),
(407, 104, 'https://prameshsilks.com/backend/image/Product/1643798255_0.jpeg', 1),
(408, 104, 'https://prameshsilks.com/backend/image/Product/1643798255_1.jpeg', 1),
(409, 103, 'https://prameshsilks.com/backend/image/Product/1643798282_0.png', 1),
(410, 103, 'https://prameshsilks.com/backend/image/Product/1643798282_1.png', 1),
(411, 102, 'https://prameshsilks.com/backend/image/Product/1643798304_0.jpeg', 1),
(412, 102, 'https://prameshsilks.com/backend/image/Product/1643798304_1.jpeg', 1),
(413, 101, 'https://prameshsilks.com/backend/image/Product/1643798325_0.jpeg', 1),
(414, 101, 'https://prameshsilks.com/backend/image/Product/1643798325_1.jpeg', 1),
(415, 97, 'https://prameshsilks.com/backend/image/Product/1643798345_0.jpeg', 1),
(416, 97, 'https://prameshsilks.com/backend/image/Product/1643798345_1.jpeg', 1),
(417, 97, 'https://prameshsilks.com/backend/image/Product/1643798345_2.jpeg', NULL),
(419, 132, 'https://prameshsilks.com/backend/image/Product/1652416593_0.jpeg', 1),
(420, 135, 'https://prameshsilks.com/backend/image/Product/1652416688_0.jpeg', 1),
(422, 140, 'https://prameshsilks.com/backend/image/Product/1652516443_0.jpeg', 1),
(423, 141, 'https://prameshsilks.com/backend/image/Product/1652518454_0.jpeg', 1),
(424, 141, 'https://prameshsilks.com/backend/image/Product/1652518454_1.jpeg', 1),
(425, 141, 'https://prameshsilks.com/backend/image/Product/1652518454_2.jpeg', 0),
(426, 142, 'https://prameshsilks.com/backend/image/Product/1660280379_0.png', 1),
(429, 144, 'https://prameshsilks.com/backend/image/Product/1643798282_1.png', 1),
(433, 148, 'https://prameshsilks.com/backend/image/Product/1675249749_0.png', 1),
(435, 149, 'https://prameshsilks.com/backend/image/Product/1678173623_0.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `iProduct_variantsId` int(11) NOT NULL,
  `iProductId` int(11) NOT NULL,
  `vPrice` varchar(255) DEFAULT NULL,
  `vQty` varchar(255) DEFAULT NULL,
  `vSku` varchar(255) DEFAULT NULL,
  `iVariantId` int(11) NOT NULL,
  `iOptionId` int(11) DEFAULT NULL,
  `vColor` varchar(255) DEFAULT NULL,
  `vWeight` varchar(255) NOT NULL,
  `dtAddedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`iProduct_variantsId`, `iProductId`, `vPrice`, `vQty`, `vSku`, `iVariantId`, `iOptionId`, `vColor`, `vWeight`, `dtAddedDate`) VALUES
(2, 2, '4000', '12', 'Ak-201000', 7, 0, NULL, '171', '2021-12-23 10:44:55'),
(3, 3, '4500', '15', 'Ak-201000', 7, 0, NULL, '222', '2021-12-23 10:46:30'),
(6, 3, '1500', '7', 'Ak-201000', 0, 0, NULL, '297', '2021-12-23 10:47:35'),
(7, 5, '8000', '5', 'Ak-201000', 0, 2, NULL, '121', '2021-12-23 10:53:49'),
(8, 7, '5999', '3', 'Ak-201000', 7, 1, NULL, '213', '2021-12-23 10:56:01'),
(9, 8, '9000', '1', 'Ak-201000', 0, 1, NULL, '201', '2021-12-23 10:57:22'),
(10, 2, '4999', '8', 'Ak-201000', 0, 0, NULL, '270', '2021-12-23 11:03:50'),
(11, 9, '7000', '9', 'Ak-201000', 7, 0, NULL, '245', '2021-12-23 11:04:12'),
(12, 10, '5000', '6', 'Ak-201000', 0, 0, NULL, '117', '2021-12-23 11:05:11'),
(13, 11, '4500', '2', 'Ak-201000', 0, 0, NULL, '150', '2021-12-23 11:07:00'),
(14, 12, '9000', '6', 'Ak-201000', 0, 0, NULL, '100', '2021-12-23 11:08:03'),
(21, 17, '1500', '10', 'Ak-201000', 0, 0, NULL, '152', '2021-12-23 11:11:49'),
(22, 18, '4500', '15', 'Ak-201000', 0, 0, NULL, '159', '2021-12-23 11:12:04'),
(23, 19, '1900', '15', 'Ak-201000', 0, 0, NULL, '241', '2021-12-23 11:15:58'),
(24, 20, '1500', '14', 'Ak-201000', 0, 0, NULL, '225', '2021-12-23 11:19:58'),
(25, 20, '1500', '8', 'Ak-201000', 0, 0, NULL, '106', '2021-12-23 11:21:07'),
(26, 20, '1200', '13', 'Ak-201000', 0, 0, NULL, '155', '2021-12-23 11:22:22'),
(27, 20, '1800', '11', 'Ak-201000', 0, 0, NULL, '155', '2021-12-23 11:23:26'),
(28, 21, '1600', '1', 'Ak-201000', 0, 0, NULL, '213', '2021-12-23 11:25:46'),
(29, 22, '1600', '15', 'Ak-201000', 0, 0, NULL, '298', '2021-12-23 11:27:32'),
(30, 23, '3000', '13', 'Ak-201000', 7, 0, NULL, '154', '2021-12-23 11:30:49'),
(31, 24, '1100', '3', 'Ak-201000', 0, 0, NULL, '175', '2021-12-23 11:48:12'),
(32, 25, '3000', '4', 'Ak-201000', 0, 0, NULL, '115', '2021-12-23 11:49:15'),
(33, 26, '4500', '14', 'Ak-201000', 0, 0, NULL, '150', '2021-12-23 11:50:11'),
(34, 27, '4000', '11', 'Ak-201000', 7, 0, NULL, '104', '2021-12-23 11:52:05'),
(35, 28, '5000', '13', 'Ak-201000', 0, 0, NULL, '171', '2021-12-23 11:53:14'),
(36, 29, '6000', '3', 'Ak-201000', 0, 0, NULL, '242', '2021-12-23 11:54:24'),
(37, 30, '7000', '3', 'Ak-201000', 0, 0, NULL, '201', '2021-12-23 11:55:37'),
(38, 31, '5999', '6', 'Ak-201000', 0, 0, NULL, '177', '2021-12-23 12:15:01'),
(39, 32, '5999', '5', 'Ak-201000', 0, 0, NULL, '185', '2021-12-23 12:23:07'),
(40, 33, '9999', '7', 'Ak-201000', 0, 0, NULL, '294', '2021-12-23 12:23:48'),
(41, 34, '4580', '6', 'Ak-201000', 0, 0, NULL, '215', '2021-12-23 12:24:17'),
(42, 34, '5000', '6', 'Ak-201000', 0, 0, NULL, '295', '2021-12-23 12:24:26'),
(43, 35, '7000', '11', 'Ak-201000', 0, 0, NULL, '130', '2021-12-23 12:25:13'),
(44, 36, '7000', '7', 'Ak-201000', 0, 0, NULL, '267', '2021-12-23 12:27:11'),
(45, 37, '9000', '4', 'Ak-201000', 0, 0, NULL, '243', '2021-12-23 12:28:32'),
(46, 38, '1250', '10', 'Ak-201000', 0, 0, NULL, '116', '2021-12-23 12:29:40'),
(47, 38, '1000', '11', 'Ak-201000', 0, 0, NULL, '150', '2021-12-23 12:29:59'),
(48, 39, '1500', '6', 'Ak-201000', 0, 0, NULL, '104', '2021-12-23 12:37:46'),
(49, 40, '5000', '14', 'Ak-201000', 0, 0, NULL, '172', '2021-12-23 12:38:43'),
(50, 41, '4000', '4', 'Ak-201000', 0, 0, NULL, '247', '2021-12-23 12:39:24'),
(51, 42, '4500', '8', 'Ak-201000', 0, 0, NULL, '220', '2021-12-23 12:40:27'),
(52, 43, '9000', '13', 'Ak-201000', 0, 0, NULL, '258', '2021-12-23 12:41:14'),
(53, 40, '1600', '11', 'Ak-201000', 0, 0, NULL, '132', '2021-12-23 12:42:48'),
(54, 43, '2500', '1', 'Ak-201000', 0, 0, NULL, '187', '2021-12-23 12:43:12'),
(55, 43, '1520', '2', 'Ak-201000', 0, 0, NULL, '237', '2021-12-23 12:43:43'),
(56, 40, '1250', '5', 'Ak-201000', 0, 0, NULL, '126', '2021-12-23 12:44:07'),
(57, 44, '5000', '5', 'Ak-201000', 0, 0, NULL, '219', '2021-12-23 12:49:11'),
(58, 45, '8000', '7', 'Ak-201000', 0, 0, NULL, '217', '2021-12-23 12:50:00'),
(59, 46, '1500', '5', 'Ak-201000', 0, 0, NULL, '127', '2021-12-23 12:52:07'),
(60, 44, '5630', '3', 'Ak-201000', 0, 0, NULL, '286', '2021-12-23 12:52:42'),
(61, 47, '1000', '1', 'Ak-201000', 0, 0, NULL, '152', '2021-12-23 01:06:46'),
(64, 49, '6999', '11', 'Ak-201000', 0, 0, NULL, '199', '2021-12-23 01:11:27'),
(65, 50, '6000', '4', 'Ak-201000', 0, 0, NULL, '239', '2021-12-23 01:13:02'),
(68, 47, '4780', '2', 'Ak-201000', 0, 0, NULL, '100', '2021-12-23 01:18:19'),
(69, 51, '1600', '12', 'Ak-201000', 0, 0, NULL, '283', '2021-12-23 01:19:06'),
(70, 52, '6000', '9', 'Ak-201000', 0, 0, NULL, '216', '2021-12-23 01:19:42'),
(71, 53, '2020', '8', 'Ak-201000', 0, 0, NULL, '133', '2021-12-23 01:20:38'),
(72, 54, '1599', '14', 'Ak-201000', 0, 0, NULL, '115', '2021-12-23 01:21:50'),
(73, 55, '1500', '15', 'Ak-201000', 0, 0, NULL, '279', '2021-12-23 01:24:10'),
(74, 56, '4500', '1', 'Ak-201000', 0, 0, NULL, '148', '2021-12-23 01:26:41'),
(75, 57, '5000', '4', 'Ak-201000', 0, 0, NULL, '204', '2021-12-23 01:36:54'),
(77, 59, '5000', '15', 'Ak-201000', 0, 0, NULL, '277', '2021-12-23 01:48:54'),
(78, 60, '9000', '6', 'Ak-201000', 0, 0, NULL, '273', '2021-12-23 01:49:35'),
(79, 61, '8000', '14', 'Ak-201000', 0, 0, NULL, '233', '2021-12-23 01:50:53'),
(80, 62, '1500', '7', 'Ak-201000', 0, 0, NULL, '247', '2021-12-23 01:52:51'),
(81, 63, '1600', '8', 'Ak-201000', 0, 0, NULL, '236', '2021-12-23 01:56:13'),
(82, 64, '1200', '2', 'Ak-201000', 0, 0, NULL, '140', '2021-12-23 01:57:09'),
(83, 64, '9630', '15', 'Ak-201000', 0, 0, NULL, '292', '2021-12-23 01:57:41'),
(84, 64, '1200', '10', 'Ak-201000', 0, 0, NULL, '140', '2021-12-23 01:58:11'),
(85, 64, '3620', '5', 'Ak-201000', 0, 0, NULL, '127', '2021-12-23 01:58:48'),
(86, 46, '2300', '11', 'Ak-201000', 0, 0, NULL, '115', '2021-12-23 02:00:19'),
(87, 65, '5000', '7', 'Ak-201000', 0, 0, NULL, '292', '2021-12-24 10:06:06'),
(88, 66, '4000', '4', 'Ak-201000', 0, 0, NULL, '218', '2021-12-24 10:07:08'),
(89, 67, '6000', '11', 'Ak-201000', 0, 0, NULL, '115', '2021-12-24 10:07:58'),
(90, 67, '2500', '13', 'Ak-201000', 0, 0, NULL, '220', '2021-12-24 10:08:35'),
(91, 68, '6000', '15', 'Ak-201000', 0, 0, NULL, '257', '2021-12-24 10:09:18'),
(92, 68, '3620', '8', 'Ak-201000', 0, 0, NULL, '124', '2021-12-24 10:10:42'),
(93, 70, '9000', '9', 'Ak-201000', 0, 0, NULL, '149', '2021-12-24 10:12:27'),
(95, 71, '9000', '4', 'Ak-201000', 0, 0, NULL, '272', '2021-12-24 10:17:38'),
(96, 72, '8900', '8', 'Ak-201000', 0, 0, NULL, '217', '2021-12-24 10:19:34'),
(97, 73, '6450', '13', 'Ak-201000', 0, 0, NULL, '167', '2021-12-24 10:24:04'),
(98, 74, '5000', '10', 'Ak-201000', 0, 0, NULL, '287', '2021-12-24 10:28:16'),
(99, 75, '8000', '12', 'Ak-201000', 0, 0, NULL, '233', '2021-12-24 10:29:16'),
(100, 76, '4700', '14', 'Ak-201000', 0, 0, NULL, '206', '2021-12-24 10:30:02'),
(101, 76, '3698', '5', 'Ak-201000', 0, 0, NULL, '229', '2021-12-24 10:31:32'),
(102, 76, '7890', '12', 'Ak-201000', 0, 0, NULL, '228', '2021-12-24 10:31:59'),
(103, 77, '1000', '14', 'Ak-201000', 0, 0, NULL, '156', '2021-12-24 10:33:49'),
(104, 78, '5600', '2', 'Ak-201000', 0, 0, NULL, '194', '2021-12-24 10:34:49'),
(105, 79, '4800', '12', 'Ak-201000', 0, 0, NULL, '201', '2021-12-24 10:36:39'),
(106, 80, '9000', '9', 'Ak-201000', 0, 0, NULL, '126', '2021-12-24 10:39:06'),
(107, 81, '8000', '10', 'Ak-201000', 0, 0, NULL, '126', '2021-12-24 10:40:10'),
(108, 82, '6000', '7', 'Ak-201000', 0, 0, NULL, '154', '2021-12-24 10:42:05'),
(109, 83, '1500', '3', 'Ak-201000', 0, 0, NULL, '292', '2021-12-24 10:42:51'),
(110, 82, '1500', '10', 'Ak-201000', 0, 0, NULL, '297', '2021-12-24 10:43:17'),
(111, 83, '4560', '12', 'Ak-201000', 0, 0, NULL, '111', '2021-12-24 10:43:31'),
(112, 84, '7800', '12', 'Ak-201000', 0, 0, NULL, '166', '2021-12-24 10:46:34'),
(113, 85, '7800', '10', 'Ak-201000', 0, 0, NULL, '197', '2021-12-24 10:47:19'),
(114, 86, '7900', '13', 'Ak-201000', 0, 0, NULL, '189', '2021-12-24 10:48:21'),
(115, 87, '4500', '6', 'Ak-201000', 0, 0, NULL, '252', '2021-12-24 10:49:16'),
(116, 88, '5600', '3', 'Ak-201000', 0, 0, NULL, '194', '2021-12-24 10:50:06'),
(117, 89, '8900', '13', 'Ak-201000', 0, 0, NULL, '116', '2021-12-24 10:50:58'),
(118, 90, '5000', '11', 'Ak-201000', 0, 0, NULL, '297', '2021-12-24 10:52:16'),
(119, 91, '8500', '1', 'Ak-201000', 0, 0, NULL, '238', '2021-12-24 10:53:02'),
(120, 92, '9600', '1', 'Ak-201000', 0, 0, NULL, '199', '2021-12-24 10:53:57'),
(121, 93, '4500', '1', 'Ak-201000', 0, 0, NULL, '183', '2021-12-24 10:55:03'),
(122, 94, '4500', '1', 'Ak-201000', 0, 0, NULL, '216', '2021-12-24 11:03:48'),
(123, 95, '7800', '2', 'Ak-201000', 0, 0, NULL, '235', '2021-12-24 11:04:54'),
(124, 96, '8900', '6', 'Ak-201000', 0, 0, NULL, '224', '2021-12-24 11:05:33'),
(125, 97, '10000', '11', 'Ak-201000', 0, 0, NULL, '118', '2021-12-24 11:12:17'),
(126, 98, '5000', '4', 'Ak-201000', 0, 0, NULL, '218', '2021-12-24 11:13:18'),
(127, 99, '5600', '2', 'Ak-201000', 0, 0, NULL, '234', '2021-12-24 11:14:30'),
(128, 100, '8900', '14', 'Ak-201000', 0, 0, NULL, '219', '2021-12-24 11:15:19'),
(129, 101, '7890', '2', 'Ak-201000', 0, 0, NULL, '292', '2021-12-24 11:16:22'),
(130, 102, '4500', '12', 'Ak-201000', 0, 0, NULL, '104', '2021-12-24 11:17:47'),
(131, 103, '5600', '9', 'Ak-201000', 0, 0, NULL, '144', '2021-12-24 11:18:45'),
(132, 104, '5600', '9', 'Ak-201000', 0, 0, NULL, '107', '2021-12-24 11:19:51'),
(133, 103, '1250', '4', 'Ak-201000', 0, 0, NULL, '205', '2021-12-24 11:20:07'),
(134, 105, '8900', '6', 'Ak-201000', 0, 0, NULL, '205', '2021-12-24 11:21:07'),
(135, 106, '4500', '1', 'Ak-201000', 0, 0, NULL, '112', '2021-12-24 11:21:58'),
(136, 107, '9600', '2', 'Ak-201000', 0, 0, NULL, '243', '2021-12-24 11:22:42'),
(137, 108, '7000', '8', 'Ak-201000', 0, 0, NULL, '182', '2021-12-24 11:23:46'),
(138, 109, '5900', '1', 'Ak-201000', 0, 0, NULL, '280', '2021-12-24 11:24:50'),
(143, 114, '9500', '11', 'Ak-201000', 0, 0, NULL, '154', '2021-12-24 11:44:19'),
(145, 110, '5600', '8', 'Ak-201000', 1, 9, NULL, '230', '2021-12-24 11:46:01'),
(146, 110, '5600', '5', 'Ak-201000', 1, 10, NULL, '189', '2021-12-24 11:46:01'),
(147, 112, '5600', '14', 'Ak-201000', 1, 7, NULL, '154', '2021-12-24 11:46:47'),
(148, 112, '5600', '12', 'Ak-201000', 1, 10, NULL, '105', '2021-12-24 11:46:47'),
(149, 113, '9000', '1', 'Ak-201000', 1, 2, NULL, '161', '2021-12-24 11:47:35'),
(150, 113, '9000', '15', 'Ak-201000', 1, 9, NULL, '193', '2021-12-24 11:47:35'),
(151, 115, '8900', '12', 'Ak-201000', 1, 2, NULL, '183', '2021-12-24 11:49:13'),
(152, 115, '8900', '15', 'Ak-201000', 1, 9, NULL, '237', '2021-12-24 11:49:13'),
(155, 114, '9500', '7', 'Ak-201000', 1, 7, NULL, '136', '2021-12-24 11:51:28'),
(156, 114, '9500', '6', 'Ak-201000', 1, 10, NULL, '270', '2021-12-24 11:51:28'),
(159, 8, '1520', '9', 'Ak-201000', 0, 0, NULL, '243', '2021-12-28 11:21:02'),
(161, 115, '2560', '11', 'Ak-201000', 1, 0, NULL, '103', '2022-01-04 12:02:45'),
(165, 13, '1800', '12', 'Ak-201000', 1, 2, NULL, '288', '2022-01-05 06:43:46'),
(166, 13, '1500', '14', 'Ak-201000', 1, 1, NULL, '231', '2022-01-05 06:43:46'),
(167, 13, '1900', '1', 'Ak-201000', 1, 7, NULL, '190', '2022-01-05 06:45:16'),
(168, 13, '2200', '7', 'Ak-201000', 1, 9, NULL, '159', '2022-01-05 06:45:16'),
(171, 110, '2300', '2', 'Ak-201000', 1, 0, NULL, '123', '2022-01-08 01:23:48'),
(172, 106, '2500', '2', 'Ak-201000', 0, 0, NULL, '241', '2022-01-08 01:24:03'),
(173, 99, '2100', '3', 'Ak-201000', 0, 0, NULL, '136', '2022-01-08 01:24:14'),
(174, 96, '2250', '10', 'Ak-201000', 0, 0, NULL, '256', '2022-01-08 01:24:30'),
(175, 115, '2300', '12', 'Ak-201000', 1, 0, NULL, '175', '2022-01-08 01:24:43'),
(176, 112, '2400', '12', 'Ak-201000', 1, 0, NULL, '206', '2022-01-08 01:24:55'),
(177, 114, '2600', '9', 'Ak-201000', 1, 0, NULL, '204', '2022-01-08 01:25:14'),
(178, 109, '2500', '8', 'Ak-201000', 0, 0, NULL, '104', '2022-01-10 11:48:57'),
(179, 102, '2800', '13', 'Ak-201000', 0, 0, NULL, '206', '2022-01-10 11:49:09'),
(180, 80, '2900', '11', 'Ak-201000', 0, 0, NULL, '222', '2022-01-10 11:49:40'),
(181, 90, '3000', '1', 'Ak-201000', 0, 0, NULL, '192', '2022-01-10 11:49:54'),
(182, 77, '6000', '3', 'Ak-201000', 0, 0, NULL, '194', '2022-01-10 11:50:11'),
(183, 70, '2900', '8', 'Ak-201000', 0, 0, NULL, '293', '2022-01-10 11:50:23'),
(184, 32, '3100', '3', 'Ak-201000', 0, 0, NULL, '184', '2022-01-10 11:50:39'),
(185, 33, '2800', '7', 'Ak-201000', 0, 0, NULL, '142', '2022-01-10 11:51:34'),
(189, 120, '1500', '8', 'Ak-201000', 1, 1, NULL, '260', '2022-01-21 07:25:21'),
(190, 120, '1500', '3', 'Ak-201000', 1, 2, 'XS', '173', '2022-01-21 07:25:21'),
(191, 120, '1500', '5', 'Ak-201000', 1, 10, NULL, '184', '2022-01-21 07:25:21'),
(192, 120, '1500', '1', 'Ak-201000', 1, 9, 'M', '102', '2022-01-21 07:25:21'),
(193, 113, '6200', '5', 'Ak-201000', 1, 0, NULL, '259', '2022-02-02 04:09:37'),
(195, 105, '3200', '7', 'Ak-201000', 0, 0, NULL, '288', '2022-02-08 12:18:07'),
(207, 149, '2000', '4', 'Ak-201000', 0, 0, NULL, '162', '2023-02-01 04:44:08'),
(211, 144, '3000', '3', 'Ak-201000', 11, 15, NULL, '264', '2023-06-21 05:17:21'),
(212, 144, '2000', '10', 'Ak-201000', 11, 16, NULL, '272', '2023-06-21 05:17:21'),
(213, 1, '3000', '15', 'Ak-201000', 11, 15, NULL, '300', '2023-06-21 06:06:55'),
(214, 1, '2000', '16', 'Ak-201000', 11, 16, NULL, '200', '2023-06-21 06:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`id`, `state`) VALUES
(1, 'ANDAMAN AND NICOBAR ISLANDS'),
(2, 'ANDHRA PRADESH'),
(3, 'ARUNACHAL PRADESH'),
(4, 'ASSAM'),
(5, 'BIHAR'),
(6, 'CHATTISGARH'),
(7, 'CHANDIGARH'),
(8, 'DAMAN AND DIU'),
(9, 'DELHI'),
(10, 'DADRA AND NAGAR HAVELI'),
(11, 'GOA'),
(12, 'GUJARAT'),
(13, 'HIMACHAL PRADESH'),
(14, 'HARYANA'),
(15, 'JAMMU AND KASHMIR'),
(16, 'JHARKHAND'),
(17, 'KERALA'),
(18, 'KARNATAKA'),
(19, 'LAKSHADWEEP'),
(20, 'MEGHALAYA'),
(21, 'MAHARASHTRA'),
(22, 'MANIPUR'),
(23, 'MADHYA PRADESH'),
(24, 'MIZORAM'),
(25, 'NAGALAND'),
(26, 'ORISSA'),
(27, 'PUNJAB'),
(28, 'PONDICHERRY'),
(29, 'RAJASTHAN'),
(30, 'SIKKIM'),
(31, 'TAMIL NADU'),
(32, 'TRIPURA'),
(33, 'UTTARAKHAND'),
(34, 'UTTAR PRADESH'),
(35, 'WEST BENGAL'),
(36, 'TELANGANA');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `iStoriesId` int(11) NOT NULL,
  `vStories1_image` varchar(255) NOT NULL,
  `vStories1_Title` varchar(255) NOT NULL,
  `vStories1_Desc` varchar(255) NOT NULL,
  `vSecond_image1` varchar(255) NOT NULL,
  `vSecond_image2` varchar(255) NOT NULL,
  `vSecond_image3` varchar(255) NOT NULL,
  `vVideo_Link1` varchar(255) NOT NULL,
  `vVideo_Link2` varchar(255) NOT NULL,
  `vVideo_Link3` varchar(255) NOT NULL,
  `vVideo_Link4` varchar(255) NOT NULL,
  `vVideo_Title` varchar(255) NOT NULL,
  `vVideo_Desc` varchar(255) NOT NULL,
  `vSecond_image` varchar(255) NOT NULL,
  `vSecond_Title` varchar(255) NOT NULL,
  `vSecond_Desc` varchar(255) NOT NULL,
  `eStatus` enum('Active','Inactive') DEFAULT 'Active',
  `dtAddedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`iStoriesId`, `vStories1_image`, `vStories1_Title`, `vStories1_Desc`, `vSecond_image1`, `vSecond_image2`, `vSecond_image3`, `vVideo_Link1`, `vVideo_Link2`, `vVideo_Link3`, `vVideo_Link4`, `vVideo_Title`, `vVideo_Desc`, `vSecond_image`, `vSecond_Title`, `vSecond_Desc`, `eStatus`, `dtAddedDate`) VALUES
(12, 'https://prameshsilks.com/backend/image/Stories/1687021060.jpeg', 'Welcome To The Garden Of Good Earth.', 'For 25 years, we have been nurturing a homegrown design and lifestyle brand that celebrates style from an Indian perspective. DISCOVER OUR SHOP', 'https://prameshsilks.com/backend/image/Stories/secondimg11660799553.jpeg', 'https://prameshsilks.com/backend/image/Stories/secondimg21660799553.jpeg', 'https://prameshsilks.com/backend/image/Stories/secondimg31660799553.jpeg', 'https://www.youtube.com/watch?v=OJoHJwDK-VQ', 'https://www.youtube.com/embed/adNaPpekCX8', 'https://www.youtube.com/embed/adNaPpekCX8', 'https://www.youtube.com/embed/adNaPpekCX8', 'Welcome To The Garden Of Good Earth.', 'For 25 years, we have been nurturing a homegrown design and lifestyle brand that celebrates style from an Indian perspective. DISCOVER OUR SHOP', 'https://prameshsilks.com/backend/image/Stories/1660799553.jpeg', 'ss', 'ss', 'Active', '2023-06-17 10:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `stories_second_page`
--

CREATE TABLE `stories_second_page` (
  `iSecond_Page_Id` int(11) NOT NULL,
  `iStoriesId` int(10) NOT NULL,
  `vImage1` varchar(255) NOT NULL,
  `vTitle1` varchar(255) NOT NULL,
  `tDesc1` text NOT NULL,
  `vImage2` varchar(255) NOT NULL,
  `vSubTitle` varchar(255) NOT NULL,
  `tDesc2` text NOT NULL,
  `vImage3` varchar(255) NOT NULL,
  `tDesc3` text NOT NULL,
  `vImage4` text NOT NULL,
  `eStatus` enum('Active','Inactive') NOT NULL,
  `dtAddedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `iSubcategoryId` int(11) NOT NULL,
  `iCategoryId` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `iFabricId` int(11) DEFAULT NULL,
  `vSubTitle` varchar(255) NOT NULL,
  `vProductType` varchar(255) NOT NULL,
  `dtAddedDate` datetime NOT NULL,
  `eStatus` enum('Active','InActive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`iSubcategoryId`, `iCategoryId`, `vImage`, `iFabricId`, `vSubTitle`, `vProductType`, `dtAddedDate`, `eStatus`) VALUES
(1, '1', 'https://prameshsilks.com/backend/image/subcategory/1652413117.jpeg', 1, 'Banarasi ', '0', '2022-02-01 10:20:26', 'Active'),
(3, '1', 'https://prameshsilks.com/backend/image/category/1641458434.jpeg', 1, 'Amdavadi', '0', '2022-02-01 10:20:14', 'Active'),
(10, '1', 'https://prameshsilks.com/backend/image/category/1641458434.jpeg', 1, 'Madhubani', '0', '2022-02-01 10:18:48', 'Active'),
(23, '1', 'https://prameshsilks.com/backend/image/subcategory/1641881838.jpeg', 3, 'Tissue', '0', '2022-02-01 10:01:25', 'Active'),
(24, '1', 'https://prameshsilks.com/backend/image/subcategory/1641881806.jpeg', 3, 'Kora', '0', '2022-02-01 10:01:20', 'Active'),
(25, '1', 'https://prameshsilks.com/backend/image/subcategory/1641881790.jpeg', 3, 'Kota', '0', '2022-02-01 10:01:13', 'Active'),
(26, '1', 'https://prameshsilks.com/backend/image/subcategory/1641881770.jpeg', 3, 'Organza', '0', '2022-02-01 10:01:08', 'Active'),
(27, '1', 'https://prameshsilks.com/backend/image/subcategory/1641881730.jpeg', 3, 'Twill ', '0', '2022-02-01 10:01:01', 'Active'),
(28, '2', 'https://prameshsilks.com/backend/image/subcategory/1641881175.jpeg', 4, 'Bridal', '0', '2022-02-01 10:00:55', 'Active'),
(29, '2', 'https://prameshsilks.com/backend/image/subcategory/1641881157.jpeg', 4, 'Siders', '0', '2022-02-01 10:00:44', 'Active'),
(30, '1', 'https://prameshsilks.com/backend/image/subcategory/1641881140.jpeg', 4, 'Spaghetti top', '0', '2022-02-01 10:00:38', 'Active'),
(31, '2', 'https://prameshsilks.com/backend/image/subcategory/1641881118.jpeg', 4, 'Sharara', '0', '2022-02-01 10:00:31', 'Active'),
(32, '2', 'https://prameshsilks.com/backend/image/subcategory/1641881089.jpeg', 4, 'Paplone ', '0', '2022-02-01 10:00:26', 'Active'),
(34, '2', 'https://prameshsilks.com/backend/image/subcategory/1641878881.jpeg', 5, 'Silk', '0', '2022-02-01 10:00:19', 'Active'),
(35, '2', 'https://prameshsilks.com/backend/image/subcategory/1641878841.jpeg', 5, 'Raw silk', '0', '2022-02-01 09:59:27', 'Active'),
(37, '2', 'https://prameshsilks.com/backend/image/subcategory/1641878578.jpeg', 5, 'Organza', '0', '2022-02-01 09:59:17', 'Active'),
(38, '2', 'https://prameshsilks.com/backend/image/subcategory/1687176617.jpeg', 5, 'Net', '0', '2023-06-19 05:40:17', 'Active'),
(39, '2', 'https://prameshsilks.com/backend/image/subcategory/1687176594.jpeg', 6, 'Machine work', '0', '2023-06-19 05:39:54', 'Active'),
(40, '2', 'https://prameshsilks.com/backend/image/subcategory/1687176746.png', 6, 'Hand work', '0', '2023-06-19 05:42:26', 'Active'),
(41, '2', 'https://prameshsilks.com/backend/image/subcategory/1652413117.jpeg', 6, 'Weaving', '0', '2022-02-01 09:58:55', 'Active'),
(42, '3', 'https://prameshsilks.com/backend/image/subcategory/1687176723.png', 6, 'Daily wear', '0', '2023-06-19 05:42:03', 'Active'),
(44, '3', 'https://prameshsilks.com/backend/image/subcategory/1687176698.jpeg', 6, 'Festive wear', '0', '2023-06-19 05:41:38', 'Active'),
(46, '3', 'https://prameshsilks.com/backend/image/subcategory/1645183708.jpeg', 7, 'Pita work', '0', '2022-02-01 09:57:09', 'Active'),
(48, '5', 'https://prameshsilks.com/backend/image/subcategory/1645183647.jpeg', 12, 'Jewelry ', '0', '2022-02-01 09:56:40', 'Active'),
(49, '5', 'https://prameshsilks.com/backend/image/subcategory/1645183616.jpeg', 12, 'Handbag', '0', '2022-02-01 09:56:29', 'Active'),
(50, '5', 'https://prameshsilks.com/backend/image/subcategory/1645183512.jpeg', 12, 'Clutches', '0', '2022-02-01 09:56:11', 'Active'),
(51, '1', 'https://prameshsilks.com/backend/image/subcategory/1645183449.png', 1, 'PATOLA', '1', '2022-02-01 09:55:51', 'Active'),
(52, '7', 'https://prameshsilks.com/backend/image/subcategory/1687176670.png', 1, 'Patola Silk Saree', '1', '2023-06-19 05:41:10', 'Active'),
(57, '1', 'https://prameshsilks.com/backend/image/subcategory/1642513026.jpeg', 2, 'Art Banarasi', '0', '2022-02-01 09:55:07', 'Active'),
(58, '12', 'https://prameshsilks.com/backend/image/subcategory/1641996852.jpeg', 1, 'Art Banarasi', '0', '2022-02-01 09:54:54', 'Active'),
(59, '3', 'https://prameshsilks.com/backend/image/subcategory/1641996844.jpeg', 7, 'Printed', '0', '2022-02-01 09:54:40', 'Active'),
(60, '3', 'https://prameshsilks.com/backend/image/subcategory/1641996837.jpeg', 7, 'Ikat', '0', '2022-02-01 09:54:28', 'Active'),
(62, '3', 'https://prameshsilks.com/backend/image/subcategory/1641996830.png', 8, 'Silk', '0', '2022-02-01 09:54:05', 'Active'),
(63, '3', 'https://prameshsilks.com/backend/image/subcategory/1641996823.jpeg', 8, 'Tussar silk', '0', '2022-02-01 09:53:54', 'Active'),
(64, '3', 'https://prameshsilks.com/backend/image/subcategory/1641996817.jpeg', 8, 'Dola silk', '0', '2022-02-01 09:53:43', 'Active'),
(65, '3', 'https://prameshsilks.com/backend/image/subcategory/1641996811.png', 8, 'Cottan', '0', '2022-02-01 09:53:22', 'Active'),
(66, '3', 'https://prameshsilks.com/backend/image/subcategory/1641996805.jpeg', 8, 'Chanderi', '0', '2022-02-01 09:53:12', 'Active'),
(67, '3', 'https://prameshsilks.com/backend/image/subcategory/1641996798.jpeg', 8, 'Georgette', '0', '2022-02-01 09:53:01', 'Active'),
(68, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996791.jpeg', 9, 'Bandhej', '0', '2022-02-01 09:53:31', 'Active'),
(69, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996783.jpeg', 9, 'Patola', '0', '2022-02-01 09:52:39', 'Active'),
(73, '15', 'https://prameshsilks.com/backend/image/subcategory/1641996745.jpeg', 1, 'Testing', '0', '2022-02-09 04:20:04', 'Active'),
(74, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996695.jpeg', 10, 'Georgette', '0', '2022-02-23 04:48:28', 'Active'),
(75, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996689.jpeg', 10, 'Phulkari', '0', '2022-02-23 04:49:03', 'Active'),
(76, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996682.jpeg', 10, 'Net Dupatta', '0', '2022-02-23 04:49:41', 'Active'),
(77, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996674.jpeg', 10, 'Gota Patti', '0', '2022-02-23 04:50:03', 'Active'),
(78, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996624.jpeg', 10, 'Madhubani', '0', '2022-02-23 04:50:32', 'Active'),
(80, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996615.png', 10, 'Jaal Work', '0', '2022-02-23 04:51:34', 'Active'),
(81, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996594.jpeg', 10, 'Pom Pom', '0', '2022-02-23 04:51:54', 'Active'),
(82, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996581.jpeg', 10, 'Sequin', '0', '2022-02-23 04:52:16', 'Active'),
(83, '2', 'https://prameshsilks.com/backend/image/subcategory/1641996569.jpeg', 4, 'Kalamkari', '0', '2022-02-23 04:53:36', 'Active'),
(84, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996559.jpeg', 11, 'Floral', '0', '2022-02-23 04:55:45', 'Active'),
(85, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996548.jpeg', 11, 'Kantha', '0', '2022-02-23 04:56:08', 'Active'),
(86, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996537.jpeg', 11, 'Tussar', '0', '2022-02-23 04:56:32', 'Active'),
(87, '4', 'https://prameshsilks.com/backend/image/subcategory/1641996417.jpeg', 11, 'Zardosi', '0', '2022-02-23 04:57:03', 'Active'),
(88, '4', 'https://prameshsilks.com/backend/image/subcategory/1641891866.jpeg', 11, 'Buti', '0', '2022-02-23 04:57:36', 'Active'),
(89, '4', 'https://prameshsilks.com/backend/image/subcategory/1641891845.jpeg', 11, 'Banarasi', '0', '2022-02-23 04:58:03', 'Active'),
(90, '4', 'https://prameshsilks.com/backend/image/subcategory/1641891828.jpeg', 9, 'Gotapp', '0', '2022-02-23 04:58:24', 'Active'),
(91, '4', 'https://prameshsilks.com/backend/image/subcategory/1641882568.jpeg', 11, 'Digital', '0', '2022-02-23 04:58:46', 'Active'),
(92, '4', 'https://prameshsilks.com/backend/image/subcategory/1641882544.jpeg', 11, 'Madhubani', '0', '2022-02-23 04:59:04', 'Active'),
(93, '4', 'https://prameshsilks.com/backend/image/subcategory/1641882517.jpeg', 10, 'Chanderi', '0', '2022-02-23 05:16:20', 'Active'),
(94, '4', 'https://prameshsilks.com/backend/image/subcategory/1641882490.jpeg', 10, 'Bandhani', '0', '2022-02-23 05:16:40', 'Active'),
(96, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882458.jpeg', 7, 'Kanjeevaram', '0', '2022-02-24 02:43:34', 'Active'),
(98, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882420.jpeg', 7, 'Bomkai', '0', '2022-02-24 02:44:54', 'Active'),
(99, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882333.jpeg', 7, 'Chanderi', '0', '2022-02-24 02:45:14', 'Active'),
(100, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882305.jpeg', 7, 'Tant', '0', '2022-02-24 02:45:34', 'Active'),
(101, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882271.jpeg', 7, 'Chikankari', '0', '2022-02-24 02:46:06', 'Active'),
(102, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882240.jpeg', 9, 'Kanjeevaram', '0', '2022-02-24 02:46:42', 'Active'),
(103, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882191.jpeg', 9, 'Nauvari', '0', '2022-02-24 02:47:03', 'Active'),
(104, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882163.jpeg', 9, 'Muga', '0', '2022-02-24 02:47:33', 'Active'),
(105, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882121.jpeg', 9, 'Bandhej ', '0', '2022-02-24 02:47:56', 'Active'),
(106, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882031.jpeg', 9, 'Patan', '0', '2022-02-24 02:48:23', 'Active'),
(107, '3', 'https://prameshsilks.com/backend/image/subcategory/1641882006.jpeg', 9, 'Patola', '0', '2022-02-24 02:48:50', 'Active'),
(108, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881986.jpeg', 8, 'Kasavu`', '0', '2022-02-24 02:49:39', 'Active'),
(109, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881959.jpeg', 8, 'Dharmavaram ', '0', '2022-02-24 02:50:04', 'Active'),
(110, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881941.jpeg', 8, 'Chanderi ', '0', '2022-02-24 02:50:19', 'Active'),
(111, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881876.jpeg', 8, 'Paithani', '0', '2022-02-24 02:50:37', 'Active'),
(112, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881859.jpeg', 8, 'Sambalpuri ', '0', '2022-02-24 02:50:57', 'Active'),
(113, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881838.jpeg', 9, 'Sambalpuri ', '0', '2022-02-24 02:51:28', 'Active'),
(114, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881806.jpeg', 9, 'Bomkai ', '0', '2022-02-24 02:51:46', 'Active'),
(115, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881790.jpeg', 9, 'Bomkai ', '0', '2022-02-24 02:52:00', 'Active'),
(116, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881770.jpeg', 9, 'Phulkari ', '0', '2022-02-24 02:52:32', 'Active'),
(117, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881175.jpeg', 9, 'Leheriya ', '0', '2022-02-24 02:52:49', 'Active'),
(118, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881157.jpeg', 9, 'Kalamkari ', '0', '2022-02-24 02:53:11', 'Active'),
(119, '3', 'https://prameshsilks.com/backend/image/subcategory/1641881140.jpeg', 9, 'Pochampalli ', '0', '2022-02-24 02:53:45', 'Active'),
(120, '1', 'https://prameshsilks.com/backend/image/subcategory/1641881118.jpeg', 906, 'Newskon', '0', '2022-02-24 02:55:43', 'Active'),
(121, '1', 'https://prameshsilks.com/backend/image/subcategory/1641881089.jpeg', 906, 'Newskon', '0', '2022-02-24 02:56:10', 'Active'),
(122, '1', 'https://prameshsilks.com/backend/image/subcategory/1641878881.jpeg', 906, 'Newskon', '0', '2022-02-24 02:56:24', 'Active'),
(123, '5', 'https://prameshsilks.com/backend/image/subcategory/1641878841.jpeg', 1, 'Newskon', '0', '2023-06-14 10:52:29', 'Active'),
(124, '5', 'https://prameshsilks.com/backend/image/subcategory/1641878578.jpeg', 1, 'Newskon', '0', '2022-02-24 02:58:22', 'Active'),
(125, '5', 'https://prameshsilks.com/backend/image/subcategory/1641881730.jpeg', 8, 'Newskon', '1', '2023-06-17 10:50:20', 'Active'),
(126, '5', 'https://prameshsilks.com/backend/image/subcategory/1641881752.jpeg', 1, 'Newskon', '0', '2023-06-14 10:21:19', 'Active'),
(128, '16', 'https://prameshsilks.com/backend/image/subcategory/1652413117.jpeg', 12, 'Ysarees', '0', '2022-05-13 09:09:25', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tearms_page`
--

CREATE TABLE `tearms_page` (
  `iTermsPage` int(11) NOT NULL,
  `tAboutus` text NOT NULL,
  `tExchange` text NOT NULL,
  `tTermsCondition` text NOT NULL,
  `dtAddedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tearms_page`
--

INSERT INTO `tearms_page` (`iTermsPage`, `tAboutus`, `tExchange`, `tTermsCondition`, `dtAddedDate`) VALUES
(7, '<p>this is the about testing</p>\n', '<p>this is the testing for returns exchanges</p>\n', '<p>Hello,</p>\r\n<p>This is the added by testing.</p>\r\n<p></p>\r\n<p>Thanks &amp; Regards</p>\r\n<p>Pramesh.</p>\r\n', '2023-06-19 06:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iUserId` int(11) NOT NULL,
  `vGoogleId` varchar(255) DEFAULT NULL,
  `vOTP` varchar(255) DEFAULT NULL,
  `dtOTPDate` datetime DEFAULT NULL,
  `vFirstName` varchar(255) NOT NULL,
  `vLastName` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vPassword` varchar(255) DEFAULT NULL,
  `dtAddedDate` datetime NOT NULL,
  `dtUpdatedDate` datetime NOT NULL,
  `eStatus` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iUserId`, `vGoogleId`, `vOTP`, `dtOTPDate`, `vFirstName`, `vLastName`, `vEmail`, `vPassword`, `dtAddedDate`, `dtUpdatedDate`, `eStatus`) VALUES
(5, NULL, '', '0000-00-00 00:00:00', 'hardik', 'patel', 'jayeshchotaliya0@gmail.com', 'fae6c0a2c7f6229dde5eb159a0162b04', '2023-06-19 04:35:38', '2023-06-19 04:35:38', 'Active'),
(6, NULL, NULL, NULL, 'harshit', 'pansuriya', 'harshit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-19 04:36:20', '2023-06-19 04:36:20', 'Active'),
(8, NULL, NULL, NULL, 'harshit', 'pansuriya', 'harshit@gmail.com', NULL, '2023-06-30 04:04:57', '2023-06-30 04:04:57', 'Active'),
(9, NULL, NULL, NULL, 'harshit', 'pansuriya', 'test@gmail.com', NULL, '2023-06-30 04:05:17', '2023-06-30 04:05:17', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `iVariantId` int(11) NOT NULL,
  `vLabel` varchar(255) NOT NULL,
  `dtAddedDate` datetime DEFAULT NULL,
  `eStatus` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`iVariantId`, `vLabel`, `dtAddedDate`, `eStatus`) VALUES
(11, 'Size', '2022-09-07 09:45:40', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `variants_options`
--

CREATE TABLE `variants_options` (
  `iOptionId` int(11) NOT NULL,
  `iVariantId` int(11) NOT NULL,
  `vOptions` varchar(255) NOT NULL,
  `eStatus` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `dtAddedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variants_options`
--

INSERT INTO `variants_options` (`iOptionId`, `iVariantId`, `vOptions`, `eStatus`, `dtAddedDate`) VALUES
(1, 1, 'S', 'Active', '2021-12-02 08:22:48'),
(2, 1, 'XS', 'Active', '2021-12-02 08:22:34'),
(3, 2, 'black', 'Inactive', '2021-11-04 18:14:45'),
(4, 2, 'red', 'Inactive', '2021-11-26 18:14:48'),
(5, 2, 'Blue', 'Active', '2021-11-15 01:41:09'),
(7, 1, 'XL', 'Active', '2021-12-02 08:22:22'),
(9, 1, 'M', 'Active', '2021-12-02 08:23:02'),
(10, 1, 'L', 'Active', '2022-08-03 02:44:08'),
(14, 12, 'ewewe', 'Active', '2022-09-06 05:18:06'),
(15, 11, 'M', 'Active', '2022-09-07 09:45:58'),
(16, 11, 'S', 'Active', '2022-09-07 09:46:07'),
(17, 11, 'XL', 'Active', '2023-06-19 06:06:07'),
(18, 11, 'XXL', 'Active', '2023-06-19 06:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `iWishlistId` int(11) NOT NULL,
  `iUserId` varchar(10) NOT NULL,
  `iProductId` varchar(10) NOT NULL,
  `vProductName` varchar(255) NOT NULL,
  `vPrice` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `dtAddedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`iWishlistId`, `iUserId`, `iProductId`, `vProductName`, `vPrice`, `vImage`, `dtAddedDate`) VALUES
(88, '9', '17', 'Wide saree', '15000', 'https://prameshsilks.com/backend/image/Product/1640933590_0.jpeg', '2022-08-03 02:38:59'),
(89, '93', '143', 'test', '1000', 'https://prameshsilks.com/backend/image/Product/1662524209_0.jpeg', '2022-09-07 11:11:53'),
(90, '93', '39', 'Crush Saree', '15000', 'https://prameshsilks.com/backend/image/Product/1640263066_0.jpeg', '2022-09-08 04:03:48'),
(106, '93', '3', 'CreamSaree', '4500', 'https://prameshsilks.com/backend/image/Product/1640686691_0.jpeg', '2022-09-09 02:57:20'),
(107, '93', '5', 'CreamSaree', '8000', 'https://prameshsilks.com/backend/image/Product/1640686751_0.jpeg', '2022-09-09 02:57:21'),
(131, '3', '1', 'Red Saree', '5000', 'https://prameshsilks.com/backend/image/Product/1640686570_0.jpeg', '2023-04-05 10:10:44'),
(132, '3', '2', 'Red Saree', '4000', 'https://prameshsilks.com/backend/image/Product/1640686648_1.jpeg', '2023-06-16 06:10:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addtocart`
--
ALTER TABLE `addtocart`
  ADD PRIMARY KEY (`iAddtocartId`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`iAdminId`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`iBannerId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`iCategoryId`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`iCheckoutDetailId`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`iColorId`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`iContactId`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabric`
--
ALTER TABLE `fabric`
  ADD PRIMARY KEY (`iFabricId`);

--
-- Indexes for table `firstpage_stories`
--
ALTER TABLE `firstpage_stories`
  ADD PRIMARY KEY (`iFirstPageStoriesId`);

--
-- Indexes for table `image_content`
--
ALTER TABLE `image_content`
  ADD PRIMARY KEY (`iContentId`);

--
-- Indexes for table `news_letter`
--
ALTER TABLE `news_letter`
  ADD PRIMARY KEY (`iNewsLetterId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`iOrderId`);

--
-- Indexes for table `order_note`
--
ALTER TABLE `order_note`
  ADD PRIMARY KEY (`iOrderNoteId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`iProductId`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`iImageId`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`iProduct_variantsId`);

--
-- Indexes for table `state_list`
--
ALTER TABLE `state_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`iStoriesId`);

--
-- Indexes for table `stories_second_page`
--
ALTER TABLE `stories_second_page`
  ADD PRIMARY KEY (`iSecond_Page_Id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`iSubcategoryId`);

--
-- Indexes for table `tearms_page`
--
ALTER TABLE `tearms_page`
  ADD PRIMARY KEY (`iTermsPage`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iUserId`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`iVariantId`);

--
-- Indexes for table `variants_options`
--
ALTER TABLE `variants_options`
  ADD PRIMARY KEY (`iOptionId`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`iWishlistId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addtocart`
--
ALTER TABLE `addtocart`
  MODIFY `iAddtocartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `iAdminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `iBannerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `iCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `iCheckoutDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `iColorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `iContactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `fabric`
--
ALTER TABLE `fabric`
  MODIFY `iFabricId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;

--
-- AUTO_INCREMENT for table `firstpage_stories`
--
ALTER TABLE `firstpage_stories`
  MODIFY `iFirstPageStoriesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `image_content`
--
ALTER TABLE `image_content`
  MODIFY `iContentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `news_letter`
--
ALTER TABLE `news_letter`
  MODIFY `iNewsLetterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `iOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_note`
--
ALTER TABLE `order_note`
  MODIFY `iOrderNoteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `iProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `iImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `iProduct_variantsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `state_list`
--
ALTER TABLE `state_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `iStoriesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stories_second_page`
--
ALTER TABLE `stories_second_page`
  MODIFY `iSecond_Page_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `iSubcategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tearms_page`
--
ALTER TABLE `tearms_page`
  MODIFY `iTermsPage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iUserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `iVariantId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `variants_options`
--
ALTER TABLE `variants_options`
  MODIFY `iOptionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `iWishlistId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
