-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2019 at 07:52 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hexacomv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announce_id` int(11) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cashinvoice`
--

CREATE TABLE `cashinvoice` (
  `cashinvoice_id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `cash_no` int(255) NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int(255) NOT NULL,
  `cost` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chargeinvoice`
--

CREATE TABLE `chargeinvoice` (
  `chargeinvoice_id` int(255) NOT NULL,
  `charge_no` int(255) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `entity` varchar(20) NOT NULL,
  `person_incharge` varchar(255) DEFAULT NULL,
  `po_no` int(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `unit_price` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `date_received` datetime NOT NULL,
  `or_no` int(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `check_no` varchar(100) NOT NULL,
  `amount` int(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `cost` int(100) DEFAULT NULL,
  `net_cost` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_no` bigint(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `landline_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `first_name`, `last_name`, `contact_no`, `email`, `address`, `landline_no`, `created_at`, `updated_at`) VALUES
(80, 'Clarence', 'Juanata', 9351654564, 'rence.dappy@gmail.com', '12 Camp Allen', NULL, '2019-07-05 16:38:28', '2019-07-05 16:43:41'),
(81, 'Rachelle', 'Muyargas', 9351654456, 'rach@gmail.com', 'Bakakeng Norte', NULL, '2019-07-05 16:39:48', '2019-07-05 17:09:08'),
(82, 'Maria', 'Salud', 9351654789, 'maria@gmail.com', 'Zamora Baguio City', NULL, '2019-07-05 16:41:36', '2019-07-05 16:59:09'),
(83, 'Graeham', 'Solis', 9351654123, 'grae@gmail.com', '12 Gibraltar Street Baguio City', NULL, '2019-07-05 16:42:48', '2019-07-05 16:43:26'),
(84, 'Michael', 'Ampaguey', 98975462145, 'mj@ampaguey', '102 Itogon', NULL, '2019-07-05 16:54:28', '2019-07-05 16:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(255) NOT NULL,
  `inventory_owner_id` int(45) DEFAULT NULL,
  `inventory_item` varchar(255) NOT NULL,
  `inventory_brand` varchar(255) NOT NULL DEFAULT 'Generic',
  `inventory_model` varchar(255) NOT NULL DEFAULT 'not specified',
  `inventory_socket` varchar(255) NOT NULL DEFAULT 'not specified',
  `processor_socket` varchar(15) NOT NULL,
  `inventory_serial_no` varchar(255) NOT NULL DEFAULT 'no entry',
  `cost` int(255) NOT NULL,
  `inventory_supplier` varchar(255) NOT NULL,
  `date_received` datetime NOT NULL,
  `inventory_status` varchar(255) DEFAULT 'Available' COMMENT 'Available and Sold lang pwede dito, you can change it to enum tho hehe',
  `inventory_type` varchar(255) DEFAULT NULL COMMENT 'CPU\nMotherboard\nRAM\nGpu\nHard Drive / SSD (same lang)\nOS\nMS OFFICE\nPower Supply\nProcessor Cooling\nExtra Case Fan\nMonitor\nMouse\nKeyboard\nHeadset',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `inventory_owner_id`, `inventory_item`, `inventory_brand`, `inventory_model`, `inventory_socket`, `processor_socket`, `inventory_serial_no`, `cost`, `inventory_supplier`, `date_received`, `inventory_status`, `inventory_type`, `created_at`, `updated_at`) VALUES
(148, 58, 'Windows 10', 'Microsoft', 'Windows 10 pro', 'N/A', 'N/A', '55555', 5000, 'Tiongsan', '2019-06-26 00:00:00', 'Available', 'OS', '2019-07-05 20:11:12', '2019-07-05 22:11:13'),
(149, 60, 'Windows 10', 'Microsoft', 'Windows 10 pro', 'N/A', 'N/A', '55556', 5000, 'Tiongsan', '2019-06-26 00:00:00', 'Available', 'OS', '2019-07-05 20:13:34', '2019-07-05 22:22:59'),
(150, 59, 'Windows 10', 'Microsoft', 'Windows 10 pro', 'N/A', 'N/A', '55557', 5000, 'Tiongsan', '2019-06-26 00:00:00', 'Available', 'OS', '2019-07-05 20:13:58', '2019-07-05 22:12:27'),
(151, 58, 'CORSAIR VENGEANCE LED', 'CORSAIR', 'N/A', 'DDR4', 'N/A', '11111', 6604, 'Tiongsan', '2019-06-25 00:00:00', 'Available', 'RAM', '2019-07-05 20:29:22', '2019-07-05 22:11:13'),
(152, 58, 'ASUS P7P55D DELUXE motherboard', 'Asus', 'P7P55D Deluxe', 'DDR3 SDRAM', 'LGA 1156', '44444', 6301, 'Innovative', '2019-06-25 00:00:00', 'Available', 'Motherboard', '2019-07-05 20:30:04', '2019-07-05 22:11:13'),
(153, 58, 'Intel Core i5', 'Intel', '7600K', 'N\\A', 'LGA1151', '22222', 12550, 'Comerge', '2019-06-29 00:00:00', 'Available', 'CPU', '2019-07-05 20:30:04', '2019-07-05 22:11:13'),
(154, 60, 'Intel Core i5', 'Intel', '7600K', 'N\\A', 'LGA1151', '22223', 12550, 'Comerge', '2019-06-29 00:00:00', 'Available', 'CPU', '2019-07-05 20:30:57', '2019-07-05 22:22:59'),
(155, 60, 'Kingston Technology HyperX Predator', 'Kingston', 'N/A', 'DDR4', 'N/A', '11112', 5147, 'Innovative', '2019-06-27 00:00:00', 'Available', 'RAM', '2019-07-05 20:31:01', '2019-07-05 22:22:59'),
(156, 58, 'Ninja GT', 'NVIDIA', 'GT730 4GB DDR3', 'DDR3', 'N/A', '33333', 3700, 'Innovative', '2019-06-25 00:00:00', 'Available', 'GPU', '2019-07-05 20:32:03', '2019-07-05 22:11:13'),
(157, 59, 'G.SKILL Ripjaws X Series', 'G.SKILL', 'N/A', 'DDR3', 'N/A', '11113', 2423, 'Hinjitsu', '2019-06-27 00:00:00', 'Available', 'RAM', '2019-07-05 20:32:40', '2019-07-05 22:12:26'),
(158, 60, 'MSI MPG Z390 Gaming PRO Carbon', 'MSI', 'MPG Z390', 'DDR4', 'LGA 1151', '44445', 17951, 'Innovative', '2019-06-28 00:00:00', 'Available', 'Motherboard', '2019-07-05 20:33:05', '2019-07-05 22:22:59'),
(159, 59, 'Gigabyte GA-B85M-D3V Plus', 'Gigabyte', 'GA-B85M-D3V Plus', 'DDR3', 'LGA 1150', '44446', 3071, 'Hinjitsu', '2019-06-26 00:00:00', 'Available', 'Motherboard', '2019-07-05 20:35:21', '2019-07-05 22:12:26'),
(160, 60, 'GeForce', 'NVIDIA', 'GeForce GTX650ti', 'GDDR5', 'N/A', '33334', 2786, 'Innovative', '2019-06-24 00:00:00', 'Available', 'GPU', '2019-07-05 20:36:20', '2019-07-05 22:22:59'),
(161, 59, 'GeForce GTX1660', 'NVIDIA', 'GTX 1660 TI Twin X2 6GB', 'DDR6', 'N/A', '33335', 28720, 'Innovative', '2019-06-27 00:00:00', 'Available', 'GPU', '2019-07-05 20:40:27', '2019-07-05 22:12:26'),
(162, 59, 'AMD Ryzen 5', 'AMD', '2400g', 'N\\A', 'AM3', '22225', 10200, 'Comerge', '2019-06-29 00:00:00', 'Available', 'CPU', '2019-07-05 20:41:53', '2019-07-05 22:12:26'),
(163, 61, 'AMD Ryzen 5', 'AMD', '2400g', 'N\\A', 'AM3', '22226', 10200, 'Comerge', '2019-06-29 00:00:00', 'Available', 'CPU', '2019-07-05 20:42:07', '2019-07-05 22:24:15'),
(164, 84, 'ADATA XPG V1', 'ADATA', 'N/A', 'DDR3', 'N/A', '11114', 2417, 'Comerge', '2019-06-28 00:00:00', 'Sold', 'RAM', '2019-07-05 20:45:20', '2019-07-05 22:24:15'),
(165, 61, 'Colorful CVN B365M', 'Colorful', 'CVN B365M', 'DDR4', 'LGA 1151', '44447', 6406, 'Comerge', '2019-06-27 00:00:00', 'Available', 'Motherboard', '2019-07-05 20:47:45', '2019-07-05 22:24:15'),
(166, 58, 'Rapoo NK1800 Entry Level Membrane Wired Keyboard', 'Rapoo', 'NK1800', 'N/A', 'N/A', '77778', 299, 'Innovative', '2019-06-28 00:00:00', 'Available', 'Keyboard', '2019-07-05 20:52:10', '2019-07-05 22:11:13'),
(167, 60, 'Gigaware Midio RX-8 Dazzle Mechanical Feel Gaming Keyboard', 'Gigaware', 'Midio RX-8', 'N/A', 'N/A', '77779', 449, 'Innovative', '2019-06-25 00:00:00', 'Available', 'Keyboard', '2019-07-05 20:54:43', '2019-07-05 22:22:59'),
(168, 58, 'Corsair RM550x', 'Corsair', 'RM550x', 'N\\A', 'N\\A', '00000', 5900, 'Comerge', '2019-06-28 00:00:00', 'Available', 'Power Supply', '2019-07-05 20:54:50', '2019-07-05 22:11:13'),
(169, 60, 'Corsair RM550x', 'Corsair', 'RM550x', 'N\\A', 'N\\A', '00001', 5900, 'Comerge', '2019-06-28 00:00:00', 'Available', 'Power Supply', '2019-07-05 20:55:02', '2019-07-05 22:22:59'),
(170, 58, 'Wireless Optical Padless', 'A4Tech', 'Wireless Optical Padless Mouse G3-280N', 'N/A', 'N/A', '88888', 349, 'Innovative', '2019-07-25 00:00:00', 'Available', 'Mouse', '2019-07-05 20:55:25', '2019-07-05 22:11:13'),
(171, 59, 'Corsair SF450', 'Corsair', 'SF450', 'N\\A', 'N\\A', '00002', 8800, 'Comerge', '2019-06-28 00:00:00', 'Available', 'Power Supply', '2019-07-05 20:57:06', '2019-07-05 22:12:27'),
(172, NULL, 'Corsair SF450', 'Corsair', 'SF450', 'N\\A', 'N\\A', '00003', 8800, 'Comerge', '2019-06-28 00:00:00', 'Available', 'Power Supply', '2019-07-05 20:57:20', '2019-07-05 20:57:20'),
(173, 59, 'Gigaware Motospeed K70 104 Keys RGB Waterproof', 'Gigaware', 'K70', 'N/A', 'N/A', '77770', 579, 'Innovative', '2019-06-24 00:00:00', 'Available', 'Keyboard', '2019-07-05 20:57:23', '2019-07-05 22:12:27'),
(174, 58, 'ASUS 4K/UHD 28-Inch FreeSync Gaming Monitor', 'ASUS', 'MG28UQ', 'N/A', 'N/A', '99990', 15079, 'Innovative', '2019-06-29 00:00:00', 'Available', 'Monitor', '2019-07-05 20:58:25', '2019-07-05 22:11:13'),
(175, 60, 'M100R Optical Mouse', 'Logitech', 'M100R Optical Mouse', 'N/A', 'N/A', '88889', 188, 'Innovative', '2019-06-29 00:00:00', 'Available', 'Mouse', '2019-07-05 20:58:59', '2019-07-05 22:22:59'),
(176, 61, 'Redragon K557 KALA Mechanical Gaming Keyboard', 'Redragon', 'K557', 'N/A', 'N/A', '77771', 2125, 'Innovative', '2019-06-25 00:00:00', 'Available', 'Keyboard', '2019-07-05 20:59:23', '2019-07-05 22:24:15'),
(177, 60, 'LG 24-Inch LED-lit Monitor', 'LG', '24M47VQ', 'N/A', 'N/A', '99991', 7279, 'Innovative', '2019-06-29 00:00:00', 'Available', 'Monitor', '2019-07-05 20:59:47', '2019-07-05 22:22:59'),
(178, 61, 'Samsung 27-Inch Curved LED Monitor (LC27F398FWNXZA)', 'Samsung', 'C27F398', 'N/A', 'N/A', '99992', 10009, 'Hinjitsu', '2019-06-27 00:00:00', 'Available', 'Monitor', '2019-07-05 21:01:05', '2019-07-05 22:24:15'),
(179, 59, 'Wireless Mini Bluetooth Optical Mouse', 'OEM', '6D 1600DPI Optical Gaming Mouse', 'N/A', 'N/A', '88880', 416, 'Innovative', '2019-06-26 00:00:00', 'Available', 'Mouse', '2019-07-05 21:03:14', '2019-07-05 22:12:27'),
(180, 61, 'Wireless Mini Bluetooth Optical Mouse', 'OEM', '6D 1600DPI Optical Gaming Mouse', 'N/A', 'N/A', '88881', 416, 'Innovative', '2019-06-26 00:00:00', 'Available', 'Mouse', '2019-07-05 21:04:09', '2019-07-05 22:24:15'),
(181, 58, 'Kingston A400 240GB SSD SATA3', 'Kingston', 'A400', 'N/A', 'N/A', 'AAAAB', 1750, 'Tiongsan', '2019-06-29 00:00:00', 'Available', 'Hard Drive/SSD', '2019-07-05 21:06:22', '2019-07-05 22:11:13'),
(182, 58, 'H120 Ares Headset', 'Redragon', 'H120 Ares Gaming Headset', 'N/A', 'N/A', 'BBBBB', 480, 'Innovative', '2019-06-24 00:00:00', 'Available', 'Headset', '2019-07-05 21:07:44', '2019-07-05 22:11:13'),
(183, 58, 'Cooler Master MasterLiquid', 'Cooler Master', 'MasterLiquid Lite 240 Liquid Cooler', 'N\\A', 'N\\A', 'ddddd', 3000, 'Comerge', '2019-06-28 00:00:00', 'Available', 'Processor Cooling', '2019-07-05 21:08:05', '2019-07-05 22:11:13'),
(184, 60, 'SanDisk 500GB Ultra 3D NAND SATA III', 'SanDisk', 'SDSSDH3', 'N/A', 'N/A', 'AAAAC', 3649, 'Hinjitsu', '2019-06-28 00:00:00', 'Available', 'Hard Drive/SSD', '2019-07-05 21:09:49', '2019-07-05 22:22:59'),
(185, 60, 'Cooler Master MasterLiquid', 'Cooler Master', 'MasterLiquid Lite 240 Liquid Cooler', 'N\\A', 'N\\A', 'dddde', 3000, 'Comerge', '2019-06-29 00:00:00', 'Available', 'Processor Cooling', '2019-07-05 21:10:18', '2019-07-05 22:22:59'),
(186, 60, 'Gaming Bass Headset', 'AESOPCOM', 'Gaming LED Light HD Bass Headset with Mic', 'N/A', 'N/A', 'BBBBC', 349, 'Hinjitsu', '2019-06-24 00:00:00', 'Available', 'Headset', '2019-07-05 21:10:54', '2019-07-05 22:22:59'),
(187, 59, 'Western Digital WD Green 240GB SATA III Internal SSD', 'Western Digital', 'WDS240G2G0A', 'N/A', 'N/A', 'AAAAD', 1595, 'Hinjitsu', '2019-06-28 00:00:00', 'Available', 'Hard Drive/SSD', '2019-07-05 21:11:06', '2019-07-05 22:12:26'),
(188, NULL, 'Silicion Power Ace A55 256GB SSD 3D NAND SLC Cache Performance Boost SATA III', 'Silicon Power', 'Ace A55', 'N/A', 'N/A', 'AAAAE', 1750, 'Tiongsan', '2019-06-25 00:00:00', 'Available', 'Hard Drive/SSD', '2019-07-05 21:12:41', '2019-07-05 21:12:41'),
(189, NULL, 'Gaming Headset', 'Alcatroz', 'X-Craft HP5000 Gaming Headset', 'N/A', 'N/A', 'BBBBD', 999, 'Hinjitsu', '2019-06-24 00:00:00', 'Available', 'Headset', '2019-07-05 21:13:41', '2019-07-05 21:13:41'),
(190, 59, 'DeepCool ICE EDGE', 'DeepCool', 'ICE EDGE MINI FS V2.0', 'N\\A', 'N\\A', 'ddddf', 400, 'Comerge', '2019-06-29 00:00:00', 'Available', 'Processor Cooling', '2019-07-05 21:14:09', '2019-07-05 22:12:27'),
(191, 61, 'DeepCool ICE EDGE', 'DeepCool', 'ICE EDGE MINI FS V2.0', 'N\\A', 'N\\A', 'ddddg', 400, 'Comerge', '2019-06-29 00:00:00', 'Available', 'Processor Cooling', '2019-07-05 21:14:26', '2019-07-05 22:24:15'),
(192, 58, 'Office 365 Personal', 'Microsoft', 'Office 365 Personal', 'N/A', 'N/A', 'CCCCD', 3499, 'Innovative', '2019-06-26 00:00:00', 'Available', 'MS', '2019-07-05 21:18:16', '2019-07-05 22:11:13'),
(193, NULL, 'Seagate Barracuda 1TB SATA Internal Hard Disk Drive', 'Seagate', 'Barracuda', 'N/A', 'N/A', 'AAAAF', 2688, 'Innovative', '2019-06-29 00:00:00', 'Available', 'Hard Drive/SSD', '2019-07-05 21:18:24', '2019-07-05 21:18:24'),
(194, 59, 'Gaming Headset', 'Fantech', 'HG11 RGB Captain 7.1 Surround Sound Gaming Headset', 'N/A', 'N/A', 'BBBBE', 1210, 'Hinjitsu', '2019-06-25 00:00:00', 'Available', 'Headset', '2019-07-05 21:18:59', '2019-07-05 22:12:27'),
(195, 60, 'Microsoft Office 2019 Professional Plus', 'Microsoft', 'Office 2019 Professional Plus', 'N/A', 'N/A', 'CCCCE', 2547, 'Innovative', '2019-06-26 00:00:00', 'Available', 'MS', '2019-07-05 21:19:18', '2019-07-05 22:22:59'),
(196, 59, 'MICROSOFT OFFICE 365 PERSONAL 2019', 'Microsoft', 'OFFICE 365 PERSONAL 2019', 'N/A', 'N/A', 'CCCCF', 3199, 'Hinjitsu', '2019-06-30 00:00:00', 'Available', 'MS', '2019-07-05 21:20:19', '2019-07-05 22:12:27'),
(197, 61, 'HG14 7.1 Gaming Headset', 'Fantech', 'Captain HG14 7.1 Gaming Headset, True 7.1 Surround Sound with Noise Cancelling MIcrophone', 'N/A', 'N/A', 'BBBBF', 1209, 'Hinjitsu', '2019-07-23 00:00:00', 'Available', 'Headset', '2019-07-05 21:23:42', '2019-07-05 22:24:15'),
(198, NULL, 'Seagate Internal 1TB HDD Skyhawk Video Surveillance Hard Drive Disk', 'Seagate', 'Skyhawk', 'N/A', 'N/A', 'AAAAG', 2149, 'Innovative', '2019-06-29 00:00:00', 'Available', 'Hard Drive/SSD', '2019-07-05 21:53:52', '2019-07-05 21:53:52'),
(199, 61, 'Seagate Firecuda 1TB', 'Seagate', 'Firecuda', 'N/A', 'N/A', 'AAAAH', 3686, 'Innovative', '2019-06-29 00:00:00', 'Available', 'Hard Drive/SSD', '2019-07-05 21:54:43', '2019-07-05 22:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `officialreceipt`
--

CREATE TABLE `officialreceipt` (
  `or_no` int(100) NOT NULL,
  `cost` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `or_number` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL COMMENT 'may ari nang order',
  `order_type` varchar(50) NOT NULL COMMENT 'pc, service, individual_parts',
  `order_status` varchar(50) NOT NULL COMMENT 'Paid / Unpaid',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='orders of service, build pc and choose parts';

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `or_number`, `client_id`, `order_type`, `order_status`, `created_at`, `updated_at`) VALUES
(2, '123', 82, 'Service Parts', 'Paid', '2019-07-06 00:59:26', '2019-07-06 00:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL COMMENT 'orders.order_id',
  `inventory_id` int(11) NOT NULL COMMENT 'inventory.inventory_id',
  `pending_item` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `inventory_id`, `pending_item`, `created_at`, `updated_at`) VALUES
(3, 2, 164, NULL, '2019-07-06 00:59:27', '2019-07-06 00:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `po_no` int(255) NOT NULL,
  `supplier_id` int(255) NOT NULL,
  `dr_no` int(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `unit_price` int(255) NOT NULL,
  `total_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int(255) NOT NULL,
  `srf_no` int(255) NOT NULL,
  `invoice` double NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `purdet_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replacement`
--

CREATE TABLE `replacement` (
  `replace_id` int(255) NOT NULL,
  `srf_no` int(255) NOT NULL,
  `credit_no` int(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT 'Replacement',
  `price` double NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `date_recieved` datetime NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(255) NOT NULL,
  `order_id` int(255) DEFAULT NULL,
  `cost` int(255) NOT NULL DEFAULT '0',
  `user_id` int(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `order_id`, `cost`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 2, 2417, 6, '2019-07-06 01:03:19', '2019-07-06 01:03:19'),
(11, 2, 2417, 6, '2019-07-06 01:12:04', '2019-07-06 01:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(255) NOT NULL,
  `srf_no` int(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `warranty` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_finished` varchar(50) NOT NULL,
  `user_id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL COMMENT 'items sa inventory',
  `order_id` int(255) DEFAULT NULL,
  `service_cost` int(255) NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `accessories` varchar(255) DEFAULT NULL,
  `repair_model` varchar(255) DEFAULT NULL,
  `case_id` varchar(255) DEFAULT NULL,
  `unit_password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `srf_no`, `brand`, `warranty`, `description`, `status`, `date_finished`, `user_id`, `client_id`, `order_id`, `service_cost`, `serial`, `accessories`, `repair_model`, `case_id`, `unit_password`, `created_at`, `updated_at`) VALUES
(33, 0, 'Acer', 'Not Warranted', 'Reformat', 'Claimed', 'N/A', 6, 80, NULL, 500, '121245777884455', 'Charger', 'Aspire', 'Null', '123456789', '2019-07-05 16:38:29', '2019-07-05 08:51:13'),
(34, 1, 'Acer', 'Not Warranted', 'No Display', 'Waiting', 'N/A', 6, 81, NULL, 450, '1245477886655', 'Mouse, Bag', 'Swift', 'Null', '123456789', '2019-07-05 16:39:48', '2019-07-05 17:09:08'),
(35, 2, 'Apple', 'Not Warranted', 'Reformat', 'In Progress', 'N/A', 6, 82, 2, 500, '1234456788', 'Bag, charger', 'Macbook Pro', '45566', 'mariaonly', '2019-07-05 16:41:36', '2019-07-05 16:59:09'),
(36, 3, 'Acer', 'Not Warranted', 'Reformat', 'Claimed', 'N/A', 6, 83, NULL, 500, '125654877456654', 'Bag, Charger', 'Aspire', 'Null', 'graeham', '2019-07-05 16:42:48', '2019-07-05 08:55:11'),
(37, 4, 'Dell', 'Not Warranted', 'Replace LCD', 'Done', 'N/A', 6, 84, NULL, 500, '12377885544', 'Bag, Charger', 'Dell 5744', 'Null', 'password', '2019-07-05 16:54:28', '2019-07-05 16:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(100) DEFAULT NULL,
  `supplier_contactno` int(100) DEFAULT NULL,
  `supplier_contactperson` int(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contactno`, `supplier_contactperson`, `created_at`, `updated_at`) VALUES
(1, 'Bridge Distribution', '#12 Dimakita St. Natulog City', 2147483647, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Iontech Inc.', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'VST-MSI ECS INC', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Techtron', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Innovista', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Ubertech Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Phenomenal Solution', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Banbros commercial', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Solid Business Machines Inc.', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Philteq Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Nancom Technologies', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Accesories and Supplies Depot Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Claritrade Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Astech Pengson Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Grandtech International Enterprises', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 'Bridge Distribution', '#12 Dimakita St. Natulog City', 2147483647, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Iontech Inc.', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'VST-MSI ECS INC', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Techtron', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Innovista', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Ubertech Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Phenomenal Solution', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Banbros commercial', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Solid Business Machines Inc.', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Philteq Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Nancom Technologies', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Accesories and Supplies Depot Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Claritrade Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Astech Pengson Inc', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Grandtech International Enterprises', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` date NOT NULL,
  `type` enum('service engineer','Administrator') NOT NULL DEFAULT 'service engineer',
  `email` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `profile_pic` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `status` enum('Enable','Disabled') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `password`, `last_login`, `type`, `email`, `birthdate`, `profile_pic`, `created_at`, `updated_at`, `contact`, `gender`, `status`) VALUES
(6, 'Christopher', 'Bautista', 'Chris', '$2y$10$hb0m4v9MfMaXOQqmVFG45.EKE96lsfROkkZGOOgMZOtiTKTyBCCTC', '2019-07-06', 'service engineer', 'sample@email.com', '1996-03-22', '1556297842.jpg', '2019-03-03 08:00:00', '2019-07-05 17:52:01', '', '', 'Enable'),
(11, 'The', 'Admin', 'graebagani', '$2y$10$hb0m4v9MfMaXOQqmVFG45.EKE96lsfROkkZGOOgMZOtiTKTyBCCTC', '2019-07-06', 'Administrator', 'grae@gmail.com', '1982-01-24', NULL, '2019-04-16 22:20:58', '2019-07-05 17:52:01', '09267257920', 'Female', 'Enable'),
(13, 'Malou', 'Yusongco', 'Malou', '$2y$10$6VAK6PjXAqdrwQ00qVcAquPVhbgdSKjyd/4apvKFACi3DQHb3Rzbq', '2019-07-06', 'Administrator', 'admin@yahoo.com', '1996-08-12', NULL, '2019-06-02 13:44:07', '2019-07-05 17:52:01', '09234234125', 'Male', 'Enable'),
(14, 'Noreen', 'Dizon', 'Dizonoreanne', '$2y$10$655RLHR/YnfFwC7YSAhHp.w42AVyK2i.KfpfLOkvMQMuF3I/4H3Ji', '2019-07-06', 'service engineer', '2151789@slu.edu.ph', '1997-12-16', NULL, '2019-07-05 03:57:32', '2019-07-05 17:52:01', '09278022332', 'Female', 'Enable'),
(15, 'Macey', 'Alejo', 'maceyalejo', '$2y$10$Q69AnbID.zskoY/E0xy23umf7h5gEzzybMHMH1gSvzdGHB3d5m2CG', '2019-07-06', 'service engineer', 'msdralejo@gmail.com', '1995-07-02', NULL, '2019-07-05 03:57:37', '2019-07-05 17:52:01', '09562265311', 'Female', 'Enable'),
(16, 'Rach', 'Muyargas', 'Rach', '$2y$10$DCMKsQAeHOmGyy0g4.L70.mN7VlhzNHCyw6kITgi5mHVODi2UCbC.', '2019-07-06', 'service engineer', 'rachxmuyargas@gmail.com', '1998-09-22', NULL, '2019-07-05 03:57:54', '2019-07-05 17:52:01', '09558220838', 'Female', 'Enable'),
(17, 'Graeham', 'Solis', 'graeham', '$2y$10$cLEfNNoFObaNGMswqkEo7.8ZV05ys5TAEx6SbGM74nq0eHEpNE98G', '2019-07-06', 'service engineer', 'graesolis@gmail.com', '1997-11-20', NULL, '2019-07-05 03:59:54', '2019-07-05 17:52:01', '09123456789', 'Male', 'Disabled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announce_id`);

--
-- Indexes for table `cashinvoice`
--
ALTER TABLE `cashinvoice`
  ADD PRIMARY KEY (`cashinvoice_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `chargeinvoice`
--
ALTER TABLE `chargeinvoice`
  ADD PRIMARY KEY (`chargeinvoice_id`),
  ADD KEY `or_no` (`or_no`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `officialreceipt`
--
ALTER TABLE `officialreceipt`
  ADD PRIMARY KEY (`or_no`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`po_no`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`purdet_id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `replacement`
--
ALTER TABLE `replacement`
  ADD PRIMARY KEY (`replace_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announce_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cashinvoice`
--
ALTER TABLE `cashinvoice`
  MODIFY `cashinvoice_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chargeinvoice`
--
ALTER TABLE `chargeinvoice`
  MODIFY `chargeinvoice_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `officialreceipt`
--
ALTER TABLE `officialreceipt`
  MODIFY `or_no` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `purdet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replacement`
--
ALTER TABLE `replacement`
  MODIFY `replace_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`),
  ADD CONSTRAINT `purchase_details_ibfk_2` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`purchase_id`),
  ADD CONSTRAINT `purchase_details_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
