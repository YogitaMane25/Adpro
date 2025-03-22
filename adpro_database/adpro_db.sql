-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2025 at 09:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adpro_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_schedules`
--

CREATE TABLE `ad_schedules` (
  `id` int(11) NOT NULL,
  `ad_date` date DEFAULT NULL,
  `before_agency_message` varchar(255) DEFAULT NULL,
  `before_client_message` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `on_date_agency_message` varchar(255) DEFAULT NULL,
  `on_date_client_message` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `p_media_id` int(11) DEFAULT NULL,
  `p_media_ro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agencies`
--

CREATE TABLE `agencies` (
  `id` int(11) NOT NULL,
  `accountno` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gst_no` varchar(255) DEFAULT NULL,
  `ifsccode` varchar(255) DEFAULT NULL,
  `instruction` varchar(255) DEFAULT NULL,
  `logopath` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `panno` varchar(255) DEFAULT NULL,
  `signpath` varchar(255) DEFAULT NULL,
  `stamppath` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agencies`
--

INSERT INTO `agencies` (`id`, `accountno`, `address`, `bankname`, `city`, `contact`, `email`, `gst_no`, `ifsccode`, `instruction`, `logopath`, `name`, `owner`, `panno`, `signpath`, `stamppath`, `status`, `website`, `state_id`) VALUES
(1, '123456789012', '123 Street, Business Park', 'Bank of America', 'New York', '+1-1234567890', 'contact@abcadvertising.com', '22AAAAA0000A1Z5', 'BOFAUS3N', 'Deliver projects on time', '/images/abc_logo.png', 'ABC Advertising', 'John Doe', 'AAAAA1234A', '/images/abc_signature.png', '/images/abc_stamp.png', 'ACTIVE', 'https://www.abcadvertising.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `gstno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emedias`
--

CREATE TABLE `emedias` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `gstno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emedia_ros`
--

CREATE TABLE `emedia_ros` (
  `id` int(11) NOT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `ccamount` decimal(38,2) DEFAULT NULL,
  `ccpercent` decimal(38,2) DEFAULT NULL,
  `centers` varchar(255) DEFAULT NULL,
  `cgstamount` decimal(38,2) DEFAULT NULL,
  `cgstpercent` decimal(38,2) DEFAULT NULL,
  `chequedate` date DEFAULT NULL,
  `chequeno` varchar(255) DEFAULT NULL,
  `comissionamount` decimal(38,2) DEFAULT NULL,
  `comissionpercent` decimal(38,2) DEFAULT NULL,
  `financialyear` date DEFAULT NULL,
  `igstamount` decimal(38,2) DEFAULT NULL,
  `igstpercent` decimal(38,2) DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `noofrecords` int(11) NOT NULL,
  `robillamount` decimal(38,2) DEFAULT NULL,
  `rodate` date DEFAULT NULL,
  `rono` int(11) NOT NULL,
  `sgstamount` decimal(38,2) DEFAULT NULL,
  `sgstpercent` decimal(38,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `totalspots` int(11) NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `emedia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emedia_ro_details`
--

CREATE TABLE `emedia_ro_details` (
  `id` int(11) NOT NULL,
  `bonuspaid` decimal(38,2) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `charges` decimal(38,2) DEFAULT NULL,
  `dailyspots` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `fromdate` date DEFAULT NULL,
  `fromtime` time(6) DEFAULT NULL,
  `noofdays` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `todate_date` date DEFAULT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `totalspots` int(11) NOT NULL,
  `totime` time(6) DEFAULT NULL,
  `emedia_ro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emedia_ro_invoices`
--

CREATE TABLE `emedia_ro_invoices` (
  `id` int(11) NOT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `ccamount` decimal(38,2) DEFAULT NULL,
  `ccpercent` decimal(38,2) DEFAULT NULL,
  `centers` varchar(255) DEFAULT NULL,
  `cgstamount` decimal(38,2) DEFAULT NULL,
  `cgstpercent` decimal(38,2) DEFAULT NULL,
  `chequedate` date DEFAULT NULL,
  `chequeno` varchar(255) DEFAULT NULL,
  `comissionamount` decimal(38,2) DEFAULT NULL,
  `comissionpercent` decimal(38,2) DEFAULT NULL,
  `financialyear` varchar(255) DEFAULT NULL,
  `igstamount` decimal(38,2) DEFAULT NULL,
  `igstpercent` decimal(38,2) DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `noofrecords` int(11) NOT NULL,
  `robillamount` decimal(38,2) DEFAULT NULL,
  `rodate` date DEFAULT NULL,
  `rono` int(11) NOT NULL,
  `sgstamount` decimal(38,2) DEFAULT NULL,
  `sgstpercent` decimal(38,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `totalspots` int(11) NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `emedia_id` int(11) DEFAULT NULL,
  `emediaro_id` int(11) DEFAULT NULL,
  `gst_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emedia_ro_invoice_details`
--

CREATE TABLE `emedia_ro_invoice_details` (
  `id` int(11) NOT NULL,
  `bonuspaid` decimal(38,2) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `charges` decimal(38,2) DEFAULT NULL,
  `dailyspots` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `fromdate` date DEFAULT NULL,
  `fromtime` time(6) DEFAULT NULL,
  `noofdays` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `todate` date DEFAULT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `totalspots` int(11) NOT NULL,
  `totime` time(6) DEFAULT NULL,
  `e_media_ro_detail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_medias`
--

CREATE TABLE `e_medias` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `gstno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `e_medias`
--

INSERT INTO `e_medias` (`id`, `address`, `contact`, `gstno`, `name`, `agency_id`, `state_id`) VALUES
(1, '456 Avenue, Tech Park', '+1-9876543210', '33BBBBB0000B1Z6', 'xyz digital media', 1, 2),
(2, '456 Avenue, Tech Park', '+1-9876543210', '33BBBBB0000B1Z6', 'xyz digital media', 1, 2),
(3, '456 Avenue, Tech Park', '+1-9876543210', '33BBBBB0000B1Z6', 'abc digital media', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `e_media_ro_invoices`
--

CREATE TABLE `e_media_ro_invoices` (
  `id` int(11) NOT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `ccamount` decimal(38,2) DEFAULT NULL,
  `ccpercent` decimal(38,2) DEFAULT NULL,
  `centers` varchar(255) DEFAULT NULL,
  `cgstamount` decimal(38,2) DEFAULT NULL,
  `cgstpercent` decimal(38,2) DEFAULT NULL,
  `chequedate` date DEFAULT NULL,
  `chequeno` varchar(255) DEFAULT NULL,
  `comissionamount` decimal(38,2) DEFAULT NULL,
  `comissionpercent` decimal(38,2) DEFAULT NULL,
  `financialyear` varchar(255) DEFAULT NULL,
  `igstamount` decimal(38,2) DEFAULT NULL,
  `igstpercent` decimal(38,2) DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `noofrecords` int(11) NOT NULL,
  `robillamount` decimal(38,2) DEFAULT NULL,
  `rodate` date DEFAULT NULL,
  `rono` int(11) NOT NULL,
  `sgstamount` decimal(38,2) DEFAULT NULL,
  `sgstpercent` decimal(38,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `totalspots` int(11) NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `emedia_id` int(11) DEFAULT NULL,
  `emediaro_id` int(11) DEFAULT NULL,
  `gst_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_media_ro_invoice_details`
--

CREATE TABLE `e_media_ro_invoice_details` (
  `id` int(11) NOT NULL,
  `bonuspaid` decimal(38,2) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `charges` decimal(38,2) DEFAULT NULL,
  `dailyspots` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `fromdate` date DEFAULT NULL,
  `fromtime` time(6) DEFAULT NULL,
  `noofdays` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `todate` date DEFAULT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `totalspots` int(11) NOT NULL,
  `totime` time(6) DEFAULT NULL,
  `e_media_ro_detail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_years`
--

CREATE TABLE `financial_years` (
  `id` int(11) NOT NULL,
  `enddate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_years`
--

INSERT INTO `financial_years` (`id`, `enddate`, `name`, `startdate`) VALUES
(1, '2025-07-31', 'FY 2024-2025', '2024-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `gsts`
--

CREATE TABLE `gsts` (
  `id` int(11) NOT NULL,
  `cgst_percent` decimal(38,2) DEFAULT NULL,
  `gst_code` varchar(255) DEFAULT NULL,
  `igst_percent` decimal(38,2) DEFAULT NULL,
  `sgst_percent` decimal(38,2) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gsts`
--

INSERT INTO `gsts` (`id`, `cgst_percent`, `gst_code`, `igst_percent`, `sgst_percent`, `title`, `agency_id`) VALUES
(1, 9.00, 'GST123456', 18.00, 9.00, 'Standard GST', 1);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `everyyear` date DEFAULT NULL,
  `hdate` date DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `everyyear`, `hdate`, `reason`, `agency_id`) VALUES
(1, '2025-01-01', '2025-01-01', 'New Year Holiday', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `bill_amount` decimal(38,2) DEFAULT NULL,
  `cgst_amount` decimal(38,2) DEFAULT NULL,
  `cgst_percent` decimal(38,2) DEFAULT NULL,
  `discount` decimal(38,2) DEFAULT NULL,
  `financial_year` varchar(255) DEFAULT NULL,
  `igst_amount` decimal(38,2) DEFAULT NULL,
  `igst_percent` decimal(38,2) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL,
  `sgst_amount` decimal(38,2) DEFAULT NULL,
  `sgst_percent` decimal(38,2) DEFAULT NULL,
  `taxable_amount` decimal(38,2) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `gst_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` decimal(38,2) DEFAULT NULL,
  `sr_no` int(11) DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sr_no` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmedias`
--

CREATE TABLE `pmedias` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `gstno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmedia_ros`
--

CREATE TABLE `pmedia_ros` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `cc_amount` double DEFAULT NULL,
  `cc_percent` double DEFAULT NULL,
  `centers` varchar(255) DEFAULT NULL,
  `cgst_amount` double DEFAULT NULL,
  `cgst_percent` double DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `commission_amount` double DEFAULT NULL,
  `commission_percent` double DEFAULT NULL,
  `financial_year` varchar(255) DEFAULT NULL,
  `free_days` int(11) DEFAULT NULL,
  `igst_amount` double DEFAULT NULL,
  `igst_percent` double DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `no_of_records` int(11) DEFAULT NULL,
  `paid_days` int(11) DEFAULT NULL,
  `ro_bill_amount` double DEFAULT NULL,
  `ro_date` date DEFAULT NULL,
  `ro_no` varchar(255) DEFAULT NULL,
  `sget_amount` double DEFAULT NULL,
  `sget_percent` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_charges` double DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `gst_id` int(11) DEFAULT NULL,
  `p_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmedia_ro_details`
--

CREATE TABLE `pmedia_ro_details` (
  `id` int(11) NOT NULL,
  `area` decimal(38,2) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `ccamount` decimal(38,2) DEFAULT NULL,
  `ccpercent` decimal(38,2) DEFAULT NULL,
  `cgstamount` decimal(38,2) DEFAULT NULL,
  `charges` decimal(38,2) DEFAULT NULL,
  `chequedate` date DEFAULT NULL,
  `chequeno` varchar(255) DEFAULT NULL,
  `comissionamount` decimal(38,2) DEFAULT NULL,
  `comissionpercent` decimal(38,2) DEFAULT NULL,
  `finalcharges` decimal(38,2) DEFAULT NULL,
  `gstamount` decimal(38,2) DEFAULT NULL,
  `height` decimal(38,2) DEFAULT NULL,
  `hue` varchar(255) DEFAULT NULL,
  `igstamount` decimal(38,2) DEFAULT NULL,
  `invoiceno` varchar(255) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `rate` decimal(38,2) DEFAULT NULL,
  `sgstamount` decimal(38,2) DEFAULT NULL,
  `srno` int(11) DEFAULT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `width` decimal(38,2) DEFAULT NULL,
  `p_media_ro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmedia_ro_invoices`
--

CREATE TABLE `pmedia_ro_invoices` (
  `id` int(11) NOT NULL,
  `billamount` decimal(38,2) DEFAULT NULL,
  `cgstamount` decimal(38,2) DEFAULT NULL,
  `cgstpercent` decimal(38,2) DEFAULT NULL,
  `commissionamount` decimal(38,2) DEFAULT NULL,
  `discountamount` decimal(38,2) DEFAULT NULL,
  `discountpercent` decimal(38,2) DEFAULT NULL,
  `financialyear` varchar(255) DEFAULT NULL,
  `igstamount` decimal(38,2) DEFAULT NULL,
  `igstpercent` decimal(38,2) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoiceno` varchar(255) DEFAULT NULL,
  `robillamount` decimal(38,2) DEFAULT NULL,
  `sgstamount` decimal(38,2) DEFAULT NULL,
  `sgstpercent` decimal(38,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `gst_id` int(11) DEFAULT NULL,
  `p_media_ro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmedia_ro_invoice_details`
--

CREATE TABLE `pmedia_ro_invoice_details` (
  `id` int(11) NOT NULL,
  `area` decimal(38,2) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `ccamount` decimal(38,2) DEFAULT NULL,
  `ccpercent` decimal(38,2) DEFAULT NULL,
  `cgstamount` decimal(38,2) DEFAULT NULL,
  `charges` decimal(38,2) DEFAULT NULL,
  `chequedate` date DEFAULT NULL,
  `chequeno` varchar(255) DEFAULT NULL,
  `comissionamount` decimal(38,2) DEFAULT NULL,
  `comissionpercent` decimal(38,2) DEFAULT NULL,
  `finalcharges` decimal(38,2) DEFAULT NULL,
  `gstamount` decimal(38,2) DEFAULT NULL,
  `height` decimal(38,2) DEFAULT NULL,
  `hue` varchar(255) DEFAULT NULL,
  `igstamount` decimal(38,2) DEFAULT NULL,
  `invoiceno` varchar(255) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `rate` decimal(38,2) DEFAULT NULL,
  `sgstamount` decimal(38,2) DEFAULT NULL,
  `srno` int(11) NOT NULL,
  `totalcharges` decimal(38,2) DEFAULT NULL,
  `width` decimal(38,2) DEFAULT NULL,
  `p_media_ro_detail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_medias`
--

CREATE TABLE `p_medias` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `gstno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_medias`
--

INSERT INTO `p_medias` (`id`, `address`, `contact`, `gstno`, `name`, `agency_id`, `state_id`) VALUES
(1, 'mumbai', '123456', 'asd3456', 'pudhari', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `p_media_ros`
--

CREATE TABLE `p_media_ros` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `cc_amount` double DEFAULT NULL,
  `cc_percent` double DEFAULT NULL,
  `centers` varchar(255) DEFAULT NULL,
  `cgst_amount` double DEFAULT NULL,
  `cgst_percent` double DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `commission_amount` double DEFAULT NULL,
  `commission_percent` double DEFAULT NULL,
  `financial_year` varchar(255) DEFAULT NULL,
  `free_days` int(11) DEFAULT NULL,
  `igst_amount` double DEFAULT NULL,
  `igst_percent` double DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `no_of_records` int(11) DEFAULT NULL,
  `paid_days` int(11) DEFAULT NULL,
  `ro_bill_amount` double DEFAULT NULL,
  `ro_date` date DEFAULT NULL,
  `ro_no` varchar(255) DEFAULT NULL,
  `sget_amount` double DEFAULT NULL,
  `sget_percent` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_charges` double DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `gst_id` int(11) DEFAULT NULL,
  `p_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`) VALUES
(1, 'maharashtra'),
(2, 'goa'),
(3, 'mp'),
(4, 'up');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `createdon` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_schedules`
--

CREATE TABLE `work_schedules` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `wdate` date DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_schedules`
--
ALTER TABLE `ad_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmj78j8lpcmulgdwdvobw2vybm` (`agency_id`),
  ADD KEY `FK1om0uuj5dx78ligk23kamdb7n` (`client_id`),
  ADD KEY `FKbt44j1jynv5b304w7bwrrd5i2` (`p_media_id`),
  ADD KEY `FK1acrmw3jymwcft4qn8wsvtr3q` (`p_media_ro_id`);

--
-- Indexes for table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK95vsxs5dwja5g7hlm0guykyum` (`state_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8aag9a82gn8eqay73fwbdyeup` (`agency_id`),
  ADD KEY `FKspx9yv0u6mnx6w6djpve9yeac` (`state_id`);

--
-- Indexes for table `emedias`
--
ALTER TABLE `emedias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKq42a6w3ktgd3u6hfvbg06fmnc` (`agency_id`),
  ADD KEY `FKhntt3ejitttp8c4cpdmkcd3jt` (`state_id`);

--
-- Indexes for table `emedia_ros`
--
ALTER TABLE `emedia_ros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjrm4w98snp7pygwcfxwc93ev4` (`agency_id`),
  ADD KEY `FK8fv1u9yn3w11y9g1170fej10w` (`client_id`),
  ADD KEY `FKt2d8iblo1pndhvm64xytroug0` (`emedia_id`);

--
-- Indexes for table `emedia_ro_details`
--
ALTER TABLE `emedia_ro_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKiv2q9et8gj4rfqrkfh1gsowyh` (`emedia_ro_id`);

--
-- Indexes for table `emedia_ro_invoices`
--
ALTER TABLE `emedia_ro_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKomj2tsifk9p35npoo4sswegf1` (`agency_id`),
  ADD KEY `FK4dvpuwnjaj77wdc0sffx13u9p` (`client_id`),
  ADD KEY `FKs6nsw4ubdhfx27g4v00s6prep` (`emedia_id`),
  ADD KEY `FKd8p21mcpoo56jnpfq2y42wihf` (`emediaro_id`),
  ADD KEY `FK4yk0fh1svlk7nnoje7grehclt` (`gst_id`);

--
-- Indexes for table `emedia_ro_invoice_details`
--
ALTER TABLE `emedia_ro_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK77xl98i6huuxuv5cbmn68a4gi` (`e_media_ro_detail_id`);

--
-- Indexes for table `e_medias`
--
ALTER TABLE `e_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKiyi54wmso05x4ynm3tk2xusgw` (`agency_id`),
  ADD KEY `FKmfme235smyow8vdo6ayuh95x8` (`state_id`);

--
-- Indexes for table `e_media_ro_invoices`
--
ALTER TABLE `e_media_ro_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8u9wfmcixn3mjfsq6d9nvq9nu` (`agency_id`),
  ADD KEY `FKgnmlae6l7ydervrfniwdwc4id` (`client_id`),
  ADD KEY `FK6yax94pxmys611vy82tdserg0` (`emediaro_id`),
  ADD KEY `FKbcwxsy7q31r4im54qwkfghphh` (`gst_id`),
  ADD KEY `FKhdxag8vldv40xjyjj0w4rlmdn` (`emedia_id`);

--
-- Indexes for table `e_media_ro_invoice_details`
--
ALTER TABLE `e_media_ro_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgwwfv2qxnn3ow1a974j9k11gn` (`e_media_ro_detail_id`);

--
-- Indexes for table `financial_years`
--
ALTER TABLE `financial_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gsts`
--
ALTER TABLE `gsts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKln18vdpximj27iwbu0drg2rou` (`agency_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKapphi9y37rv48g3hjbc1ex458` (`agency_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5yer3e7vh6y7gt4x0029kr2yi` (`agency_id`),
  ADD KEY `FK9ioqm804urbgy986pdtwqtl0x` (`client_id`),
  ADD KEY `FKn0ry4v37jlbgxnw61a5731bhs` (`gst_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK439lfpbc6j1k0cn26wtp8f96r` (`invoice_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmedias`
--
ALTER TABLE `pmedias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKiy06v6lholyfnnqe51qm9hl3i` (`agency_id`),
  ADD KEY `FKbc83oeimv67xy6uw27l1nk72e` (`state_id`);

--
-- Indexes for table `pmedia_ros`
--
ALTER TABLE `pmedia_ros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8ah0a9k7e6i2sm90fsi1v3yp6` (`agency_id`),
  ADD KEY `FK4h200bl7943atyno6e6sjx8kq` (`client_id`),
  ADD KEY `FKfm6vgeuv15mbscocolhsmlem6` (`gst_id`),
  ADD KEY `FKoe4riiyfkxsfsrntwbl9lc6cn` (`p_media_id`);

--
-- Indexes for table `pmedia_ro_details`
--
ALTER TABLE `pmedia_ro_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3uoa7jf4gt3whb1qqip0pei4w` (`p_media_ro_id`);

--
-- Indexes for table `pmedia_ro_invoices`
--
ALTER TABLE `pmedia_ro_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9r1jtguc4js7uqpk7kuta55dc` (`agency_id`),
  ADD KEY `FKrschk28h0kh97n03w1b4bh6xv` (`gst_id`),
  ADD KEY `FKjnjifd21jsyce1e3kwi8000sv` (`p_media_ro_id`);

--
-- Indexes for table `pmedia_ro_invoice_details`
--
ALTER TABLE `pmedia_ro_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn72aop25ger0frsxdsr17cpcu` (`p_media_ro_detail_id`);

--
-- Indexes for table `p_medias`
--
ALTER TABLE `p_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnrxuvid4ad5jcj4qe1af8ax41` (`agency_id`),
  ADD KEY `FKhnyifyaixdnd1fcwvvmhdrv25` (`state_id`);

--
-- Indexes for table `p_media_ros`
--
ALTER TABLE `p_media_ros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKo07b14vwxrtwha2uulw0blglj` (`agency_id`),
  ADD KEY `FK4dtfn3gwun8vxuwjl25ewn0cx` (`client_id`),
  ADD KEY `FK8lg0plbvsce2hvrg0oxq6vpcp` (`gst_id`),
  ADD KEY `FKpwfy11kh1992929y19hii7sav` (`p_media_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7bo7u275rpljcaj3paqbaxbp9` (`agency_id`),
  ADD KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`);

--
-- Indexes for table `work_schedules`
--
ALTER TABLE `work_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKq2dutlwbjm5l4clixv5a1lk1q` (`agency_id`),
  ADD KEY `FKj81w5rs9r89mvwhvwm6vuqiln` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_schedules`
--
ALTER TABLE `ad_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emedias`
--
ALTER TABLE `emedias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emedia_ros`
--
ALTER TABLE `emedia_ros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emedia_ro_details`
--
ALTER TABLE `emedia_ro_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emedia_ro_invoices`
--
ALTER TABLE `emedia_ro_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emedia_ro_invoice_details`
--
ALTER TABLE `emedia_ro_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_medias`
--
ALTER TABLE `e_medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `e_media_ro_invoices`
--
ALTER TABLE `e_media_ro_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_media_ro_invoice_details`
--
ALTER TABLE `e_media_ro_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_years`
--
ALTER TABLE `financial_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gsts`
--
ALTER TABLE `gsts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmedias`
--
ALTER TABLE `pmedias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmedia_ros`
--
ALTER TABLE `pmedia_ros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmedia_ro_details`
--
ALTER TABLE `pmedia_ro_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmedia_ro_invoices`
--
ALTER TABLE `pmedia_ro_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmedia_ro_invoice_details`
--
ALTER TABLE `pmedia_ro_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_medias`
--
ALTER TABLE `p_medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `p_media_ros`
--
ALTER TABLE `p_media_ros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_schedules`
--
ALTER TABLE `work_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad_schedules`
--
ALTER TABLE `ad_schedules`
  ADD CONSTRAINT `FK1acrmw3jymwcft4qn8wsvtr3q` FOREIGN KEY (`p_media_ro_id`) REFERENCES `p_media_ros` (`id`),
  ADD CONSTRAINT `FK1om0uuj5dx78ligk23kamdb7n` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FK52trx29ea7oxrjlyxevah9ptj` FOREIGN KEY (`p_media_ro_id`) REFERENCES `pmedia_ros` (`id`),
  ADD CONSTRAINT `FKbt44j1jynv5b304w7bwrrd5i2` FOREIGN KEY (`p_media_id`) REFERENCES `p_medias` (`id`),
  ADD CONSTRAINT `FKmj78j8lpcmulgdwdvobw2vybm` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKtpodyrtf10608drogyjcl6le1` FOREIGN KEY (`p_media_id`) REFERENCES `pmedias` (`id`);

--
-- Constraints for table `agencies`
--
ALTER TABLE `agencies`
  ADD CONSTRAINT `FK95vsxs5dwja5g7hlm0guykyum` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `FK8aag9a82gn8eqay73fwbdyeup` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKspx9yv0u6mnx6w6djpve9yeac` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `emedias`
--
ALTER TABLE `emedias`
  ADD CONSTRAINT `FKhntt3ejitttp8c4cpdmkcd3jt` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `FKq42a6w3ktgd3u6hfvbg06fmnc` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`);

--
-- Constraints for table `emedia_ros`
--
ALTER TABLE `emedia_ros`
  ADD CONSTRAINT `FK7fag78t29wksf9pm7qgnvqdx5` FOREIGN KEY (`emedia_id`) REFERENCES `emedias` (`id`),
  ADD CONSTRAINT `FK8fv1u9yn3w11y9g1170fej10w` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FKjrm4w98snp7pygwcfxwc93ev4` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKt2d8iblo1pndhvm64xytroug0` FOREIGN KEY (`emedia_id`) REFERENCES `e_medias` (`id`);

--
-- Constraints for table `emedia_ro_details`
--
ALTER TABLE `emedia_ro_details`
  ADD CONSTRAINT `FKiv2q9et8gj4rfqrkfh1gsowyh` FOREIGN KEY (`emedia_ro_id`) REFERENCES `emedia_ros` (`id`);

--
-- Constraints for table `emedia_ro_invoices`
--
ALTER TABLE `emedia_ro_invoices`
  ADD CONSTRAINT `FK4dvpuwnjaj77wdc0sffx13u9p` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FK4yk0fh1svlk7nnoje7grehclt` FOREIGN KEY (`gst_id`) REFERENCES `gsts` (`id`),
  ADD CONSTRAINT `FKd8p21mcpoo56jnpfq2y42wihf` FOREIGN KEY (`emediaro_id`) REFERENCES `emedia_ros` (`id`),
  ADD CONSTRAINT `FKomj2tsifk9p35npoo4sswegf1` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKs6nsw4ubdhfx27g4v00s6prep` FOREIGN KEY (`emedia_id`) REFERENCES `emedias` (`id`);

--
-- Constraints for table `emedia_ro_invoice_details`
--
ALTER TABLE `emedia_ro_invoice_details`
  ADD CONSTRAINT `FK77xl98i6huuxuv5cbmn68a4gi` FOREIGN KEY (`e_media_ro_detail_id`) REFERENCES `emedia_ro_details` (`id`);

--
-- Constraints for table `e_medias`
--
ALTER TABLE `e_medias`
  ADD CONSTRAINT `FKiyi54wmso05x4ynm3tk2xusgw` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKmfme235smyow8vdo6ayuh95x8` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `e_media_ro_invoices`
--
ALTER TABLE `e_media_ro_invoices`
  ADD CONSTRAINT `FK6yax94pxmys611vy82tdserg0` FOREIGN KEY (`emediaro_id`) REFERENCES `emedia_ros` (`id`),
  ADD CONSTRAINT `FK8u9wfmcixn3mjfsq6d9nvq9nu` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKbcwxsy7q31r4im54qwkfghphh` FOREIGN KEY (`gst_id`) REFERENCES `gsts` (`id`),
  ADD CONSTRAINT `FKbh3dbe0f26jiop6o4lk182aej` FOREIGN KEY (`emedia_id`) REFERENCES `emedias` (`id`),
  ADD CONSTRAINT `FKgnmlae6l7ydervrfniwdwc4id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FKhdxag8vldv40xjyjj0w4rlmdn` FOREIGN KEY (`emedia_id`) REFERENCES `e_medias` (`id`);

--
-- Constraints for table `e_media_ro_invoice_details`
--
ALTER TABLE `e_media_ro_invoice_details`
  ADD CONSTRAINT `FKgwwfv2qxnn3ow1a974j9k11gn` FOREIGN KEY (`e_media_ro_detail_id`) REFERENCES `emedia_ro_details` (`id`);

--
-- Constraints for table `gsts`
--
ALTER TABLE `gsts`
  ADD CONSTRAINT `FKln18vdpximj27iwbu0drg2rou` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`);

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `FKapphi9y37rv48g3hjbc1ex458` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `FK5yer3e7vh6y7gt4x0029kr2yi` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FK9ioqm804urbgy986pdtwqtl0x` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FKn0ry4v37jlbgxnw61a5731bhs` FOREIGN KEY (`gst_id`) REFERENCES `gsts` (`id`);

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `FK439lfpbc6j1k0cn26wtp8f96r` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `pmedias`
--
ALTER TABLE `pmedias`
  ADD CONSTRAINT `FKbc83oeimv67xy6uw27l1nk72e` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `FKiy06v6lholyfnnqe51qm9hl3i` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`);

--
-- Constraints for table `pmedia_ros`
--
ALTER TABLE `pmedia_ros`
  ADD CONSTRAINT `FK4h200bl7943atyno6e6sjx8kq` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FK8ah0a9k7e6i2sm90fsi1v3yp6` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKfm6vgeuv15mbscocolhsmlem6` FOREIGN KEY (`gst_id`) REFERENCES `gsts` (`id`),
  ADD CONSTRAINT `FKla7a2y3nrffcru51v87qsofn2` FOREIGN KEY (`p_media_id`) REFERENCES `pmedias` (`id`),
  ADD CONSTRAINT `FKoe4riiyfkxsfsrntwbl9lc6cn` FOREIGN KEY (`p_media_id`) REFERENCES `p_medias` (`id`);

--
-- Constraints for table `pmedia_ro_details`
--
ALTER TABLE `pmedia_ro_details`
  ADD CONSTRAINT `FK3uoa7jf4gt3whb1qqip0pei4w` FOREIGN KEY (`p_media_ro_id`) REFERENCES `p_media_ros` (`id`),
  ADD CONSTRAINT `FKeefoq4nqwis066jcffy92dbk4` FOREIGN KEY (`p_media_ro_id`) REFERENCES `pmedia_ros` (`id`);

--
-- Constraints for table `pmedia_ro_invoices`
--
ALTER TABLE `pmedia_ro_invoices`
  ADD CONSTRAINT `FK9r1jtguc4js7uqpk7kuta55dc` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKjnjifd21jsyce1e3kwi8000sv` FOREIGN KEY (`p_media_ro_id`) REFERENCES `p_media_ros` (`id`),
  ADD CONSTRAINT `FKjoq53udkjmgtbj7lkc7wjjl75` FOREIGN KEY (`p_media_ro_id`) REFERENCES `pmedia_ros` (`id`),
  ADD CONSTRAINT `FKrschk28h0kh97n03w1b4bh6xv` FOREIGN KEY (`gst_id`) REFERENCES `gsts` (`id`);

--
-- Constraints for table `pmedia_ro_invoice_details`
--
ALTER TABLE `pmedia_ro_invoice_details`
  ADD CONSTRAINT `FKn72aop25ger0frsxdsr17cpcu` FOREIGN KEY (`p_media_ro_detail_id`) REFERENCES `pmedia_ro_details` (`id`);

--
-- Constraints for table `p_medias`
--
ALTER TABLE `p_medias`
  ADD CONSTRAINT `FKhnyifyaixdnd1fcwvvmhdrv25` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `FKnrxuvid4ad5jcj4qe1af8ax41` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`);

--
-- Constraints for table `p_media_ros`
--
ALTER TABLE `p_media_ros`
  ADD CONSTRAINT `FK4dtfn3gwun8vxuwjl25ewn0cx` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FK8lg0plbvsce2hvrg0oxq6vpcp` FOREIGN KEY (`gst_id`) REFERENCES `gsts` (`id`),
  ADD CONSTRAINT `FKo07b14vwxrtwha2uulw0blglj` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKpwfy11kh1992929y19hii7sav` FOREIGN KEY (`p_media_id`) REFERENCES `p_medias` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK7bo7u275rpljcaj3paqbaxbp9` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `work_schedules`
--
ALTER TABLE `work_schedules`
  ADD CONSTRAINT `FKj81w5rs9r89mvwhvwm6vuqiln` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKq2dutlwbjm5l4clixv5a1lk1q` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
