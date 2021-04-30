-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 09:38 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `res_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_chair`
--

CREATE TABLE `booking_chair` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `chair_id` int(11) DEFAULT NULL,
  `chair_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_chair`
--

INSERT INTO `booking_chair` (`id`, `booking_id`, `chair_id`, `chair_no`) VALUES
(1, '5ccbd8f5609b3', 38, 'TBL-4-1'),
(2, '5ccbd8f5609b3', 39, 'TBL-4-2'),
(3, '607ffdbfc0a83', 24, 'TBL-1-1'),
(4, '607ffdbfc0a83', 25, 'TBL-1-2'),
(5, '607ffdbfc0a83', 26, 'TBL-1-3'),
(6, '607ffdbfc0a83', 29, 'TBL-1-6'),
(7, '5ccbd8f5609b3', 38, 'TBL-4-1'),
(8, '60835fa2e7e8f', 33, 'TBL-2-4'),
(9, '608376c7eeb1b', 31, 'TBL-2-2'),
(10, '6083e4efc3df0', 28, 'TBL-1-5'),
(11, '6083e4efc3df0', 33, 'TBL-2-4'),
(12, '6083f26595e9b', 25, 'TBL-1-2'),
(13, '60840b4ae9186', 35, 'TBL-3-2'),
(14, '60840b4ae9186', 36, 'TBL-3-3'),
(15, '6084384513239', 33, 'TBL-2-4'),
(16, '6085215beee8c', 31, 'TBL-2-2'),
(17, '6085215beee8c', 32, 'TBL-2-3'),
(18, '608533620a50f', 47, 'TBL-2-2'),
(19, '60853435e9eb6', 50, 'TBL-3-2'),
(20, '6085377fbc274', 26, 'TBL-1-3'),
(21, '6085377fbc274', 27, 'TBL-1-4'),
(22, '6085377fbc274', 28, 'TBL-1-5'),
(23, '608589c655060', 47, 'TBL-2-2'),
(24, '608714bde62f6', 47, 'TBL-2-2'),
(25, '60871f0f1ec0c', 47, 'TBL-2-2'),
(26, '60871f52b1b73', 48, 'TBL-2-3'),
(27, '608720fb6e250', 18, 'TBL-5-2'),
(28, '608721f5dc217', 77, 'TBL-2-2'),
(29, '6087dab46debb', 47, 'TBL-2-2'),
(30, '6087dab46debb', 48, 'TBL-2-3'),
(31, '6087dab46debb', 50, 'TBL-3-2'),
(32, '6087ddd908855', 18, 'TBL-5-2'),
(33, '6087ddd908855', 19, 'TBL-5-3'),
(34, '6087e4147f233', 32, 'TBL-2-3'),
(35, '6087e4147f233', 33, 'TBL-2-4'),
(36, '6088128dc3c61', 47, 'TBL-2-2'),
(37, '6088128dc3c61', 48, 'TBL-2-3'),
(38, '6088128dc3c61', 49, 'TBL-3-1'),
(39, '6088128dc3c61', 50, 'TBL-3-2'),
(40, '60881365afada', 49, 'TBL-3-1'),
(41, '60881365afada', 50, 'TBL-3-2'),
(42, '60881365afada', 51, 'TBL-3-3'),
(43, '60881365afada', 52, 'TBL-3-4'),
(44, '60887f578e3bb', 31, 'TBL-2-2'),
(45, '60887f578e3bb', 32, 'TBL-2-3'),
(46, '60887f578e3bb', 33, 'TBL-2-4');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `make_date` date DEFAULT NULL,
  `make_time` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(30) DEFAULT NULL,
  `bill` float DEFAULT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0- reject, 1-confirmed',
  `reject` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `res_id`, `c_id`, `make_date`, `make_time`, `name`, `phone`, `booking_date`, `booking_time`, `bill`, `transactionid`, `status`, `reject`) VALUES
(2, '607ffdbfc0a83', 4, 12, '2021-04-21', '04:26:07pm', 'demo', '7993757995', '2021-04-22', '10:00am', 325, '1', 0, 0),
(3, '60835fa2e7e8f', 4, 12, '2021-04-24', '06:00:34am', 'demo', '7993757995', '2021-04-27', '10:00am', 3800, '12', 0, 0),
(4, '608376c7eeb1b', 4, 12, '2021-04-24', '07:39:19am', 'demo', '7993757995', '2021-04-26', '10:00am', 4480, '123', 0, 0),
(5, '6083e4efc3df0', 4, 12, '2021-04-24', '03:29:19pm', 'demo', '7993757995', '2021-04-26', '10:00am', 1900, '123', 0, 0),
(6, '6083f26595e9b', 4, 12, '2021-04-24', '04:26:45pm', 'demo', '7993757995', '2021-04-27', '10:00am', 1900, '123', 0, 0),
(7, '60840b4ae9186', 4, 12, '2021-04-24', '06:12:58pm', 'demo', '7993757995', '2021-04-27', '6:15pm', 2200, '4', 0, 0),
(8, '6084384513239', 4, 12, '2021-04-24', '09:24:53pm', 'demo', '7993757995', '2021-04-30', '10:00am', 1900, '123', 0, 0),
(9, '6085215beee8c', 4, 23, '2021-04-25', '01:59:23pm', 'elqldk', '13', '2021-04-30', '8:45pm', 1900, 'sf', 0, 0),
(10, '608533620a50f', 5, 23, '2021-04-25', '03:16:17pm', 'elqldk', '13', '2021-04-28', '10:00am', 1900, '12', 0, 0),
(11, '60853435e9eb6', 5, 23, '2021-04-25', '03:19:49pm', 'elqldk', '13', '2021-04-28', '10:00am', 1900, '12345', 0, 0),
(12, '6085377fbc274', 4, 23, '2021-04-25', '03:33:51pm', 'elqldk', '13', '2021-04-29', '6:15pm', 5700, 'xxx', 0, 0),
(13, '608589c655060', 5, 23, '2021-04-25', '09:24:54pm', 'elqldk', '13', '2021-04-26', '10:00am', 7600, 'df', 0, 0),
(14, '608714bde62f6', 5, 23, '2021-04-27', '01:30:05am', 'elqldk', '13', '2021-04-27', '10:00am', 0, '12345', 0, 0),
(15, '60871f0f1ec0c', 5, 23, '2021-04-27', '02:14:07am', 'elqldk', '13', '2021-05-02', '10:00am', 4630, '13', 0, 0),
(16, '60871f52b1b73', 5, 23, '2021-04-27', '02:15:14am', 'elqldk', '13', '2021-04-27', '10:00am', 4480, '12345', 0, 0),
(17, '608720fb6e250', 14, 23, '2021-04-27', '02:22:19am', 'elqldk', '13', '2021-04-27', '10:00am', 8160, '123', 0, 0),
(18, '608721f5dc217', 18, 23, '2021-04-27', '02:26:29am', 'elqldk', '13', '2021-04-05', '10:00am', 11540, '11e', 0, 0),
(19, '6087dab46debb', 5, 23, '2021-04-27', '03:34:44pm', 'elqldk', '13', '2021-04-28', '6:15pm', 13660, 'xxx', 0, 0),
(20, '6087ddd908855', 14, 23, '2021-04-27', '03:48:09pm', 'elqldk', '13', '2021-04-28', '1:15pm', 13700, '123', 0, 0),
(21, '6087e4147f233', 4, 23, '2021-04-27', '04:14:44pm', 'elqldk', '13', '2021-04-30', '3:15pm', 1900, '111', 0, 0),
(22, '6088128dc3c61', 5, 23, '2021-04-27', '07:33:01pm', 'elqldk', '13', '2021-04-29', '3:15pm', 14120, '123', 0, 0),
(23, '60881365afada', 5, 23, '2021-04-27', '07:36:37pm', 'elqldk', '13', '2021-04-30', '8:00pm', 8580, '123', 0, 0),
(24, '60887f578e3bb', 4, 23, '2021-04-28', '03:17:11am', 'elqldk', '13', '2021-04-30', '8:00pm', 12220, '123', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_menus`
--

CREATE TABLE `booking_menus` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_menus`
--

INSERT INTO `booking_menus` (`id`, `booking_id`, `item_id`, `qty`) VALUES
(1, '5ccbd8f5609b3', 4, 2),
(2, '5ccbd8f5609b3', 5, 2),
(3, '607ffdbfc0a83', 4, 2),
(4, '607ffdbfc0a83', 5, 1),
(5, '607ffdbfc0a83', 6, 1),
(6, '60835fa2e7e8f', 4, 2),
(7, '608376c7eeb1b', 4, 1),
(8, '608376c7eeb1b', 5, 1),
(9, '6083e4efc3df0', 4, 1),
(10, '6083f26595e9b', 4, 1),
(11, '60840b4ae9186', 5, 0),
(12, '60840b4ae9186', 6, 1),
(13, '6084384513239', 4, 1),
(14, '6085215beee8c', 4, 1),
(15, '608533620a50f', 10, 1),
(16, '60853435e9eb6', 10, 1),
(17, '6085377fbc274', 4, 3),
(18, '608589c655060', 10, 4),
(19, '608714bde62f6', 11, 0),
(20, '60871f0f1ec0c', 8, 1),
(21, '60871f0f1ec0c', 9, 1),
(22, '60871f0f1ec0c', 10, 1),
(23, '60871f0f1ec0c', 11, 1),
(24, '60871f52b1b73', 10, 1),
(25, '60871f52b1b73', 11, 1),
(26, '608720fb6e250', 13, 1),
(27, '608720fb6e250', 14, 1),
(28, '608720fb6e250', 15, 1),
(29, '608720fb6e250', 16, 1),
(30, '608721f5dc217', 21, 2),
(31, '608721f5dc217', 22, 3),
(32, '6087dab46debb', 10, 1),
(33, '6087dab46debb', 11, 2),
(34, '6087dab46debb', 12, 3),
(35, '6087ddd908855', 13, 1),
(36, '6087ddd908855', 14, 2),
(37, '6087ddd908855', 15, 1),
(38, '6087ddd908855', 16, 3),
(39, '6087e4147f233', 4, 1),
(40, '6088128dc3c61', 10, 2),
(41, '6088128dc3c61', 11, 4),
(42, '60881365afada', 10, 2),
(43, '60881365afada', 11, 1),
(44, '60881365afada', 12, 1),
(45, '60887f578e3bb', 4, 1),
(46, '60887f578e3bb', 5, 2),
(47, '60887f578e3bb', 6, 1),
(48, '60887f578e3bb', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Lawsons Bay Colony'),
(2, 'MVP'),
(3, 'Gajuwaka'),
(4, 'VIP Road'),
(6, 'Beach Road');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `madeby` varchar(300) DEFAULT NULL,
  `food_type` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `res_id`, `item_name`, `madeby`, `food_type`, `price`, `image`) VALUES
(4, 4, 'CARIBBEAN', 'African, Creole, and Latin American.', 'Fast Food', 1900, 'barbecue.jpg'),
(5, 4, 'KOREAN', 'Rice, Vegetables, and Meat', 'Fast Food', 2580, 'naan.jpg'),
(6, 4, 'INDIAN', 'Diversity and complexity of ingredients, spices, and flavours is characteristic of Indian cuisine', 'Fast Food', 2200, 'chicken.jpg'),
(7, 4, 'GERMAN', ' Appetizing dumplings to Wursts (sausages) to delicious pastries', 'Fast Food', 1480, 'rice.jpg'),
(8, 0, 'Moong Dal', 'Moong dal', 'Fast Food', 30, 'moong dal.jpg'),
(9, 0, 'Fish Curry', 'Rui Fish', 'Fast Food', 120, 'fish curry.jpg'),
(10, 5, 'CARIBBEAN', 'African, Creole, and Latin American.', 'Fast Food', 1900, 'barbecue.jpg'),
(11, 5, 'KOREAN', 'Rice, Vegetables, and Meat', 'Fast Food', 2580, 'naan.jpg'),
(12, 5, 'INDIAN', 'Diversity and complexity of ingredients, spices, and flavours is characteristic of Indian cuisine', 'Fast Food', 2200, 'chicken.jpg'),
(13, 14, 'INDIAN', 'Diversity and complexity of ingredients, spices, and flavours is characteristic of Indian cuisine', 'Fast Food', 2200, 'chicken.jpg'),
(14, 14, 'KOREAN', 'Rice, Vegetables, and Meat', 'Fast Food', 2580, 'naan.jpg'),
(15, 14, 'CARIBBEAN', 'African, Creole, and Latin American.', 'Fast Food', 1900, 'barbecue.jpg'),
(16, 14, 'GERMAN', ' Appetizing dumplings to Wursts (sausages) to delicious pastries', 'Fast Food', 1480, 'rice.jpg'),
(17, 7, 'CARIBBEAN', 'African, Creole, and Latin American.', 'Fast Food', 1900, 'barbecue.jpg'),
(18, 7, 'KOREAN', 'Rice, Vegetables, and Meat', 'Fast Food', 2580, 'naan.jpg'),
(19, 7, 'INDIAN', 'Diversity and complexity of ingredients, spices, and flavours is characteristic of Indian cuisine', 'Fast Food', 2200, 'chicken.jpg'),
(20, 7, 'GERMAN', ' Appetizing dumplings to Wursts (sausages) to delicious pastries', 'Fast Food', 1480, 'rice.jpg'),
(21, 18, 'CARIBBEAN', 'African, Creole, and Latin American.', 'Fast Food', 1900, 'barbecue.jpg'),
(22, 18, 'KOREAN', 'Rice, Vegetables, and Meat', 'Fast Food', 2580, 'naan.jpg'),
(23, 18, 'INDIAN', 'Diversity and complexity of ingredients, spices, and flavours is characteristic of Indian cuisine', 'Fast Food', 2200, 'chicken.jpg'),
(24, 18, 'GERMAN', ' Appetizing dumplings to Wursts (sausages) to delicious pastries', 'Fast Food', 1480, 'rice.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_chair`
--

CREATE TABLE `restaurant_chair` (
  `id` int(11) NOT NULL,
  `tbl_id` int(11) DEFAULT NULL,
  `chair_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_chair`
--

INSERT INTO `restaurant_chair` (`id`, `tbl_id`, `chair_no`) VALUES
(14, 14, 'TBL-1-1'),
(15, 14, 'TBL-1-2'),
(16, 14, 'TBL-1-3'),
(17, 15, 'TBL-5-1'),
(18, 15, 'TBL-5-2'),
(19, 15, 'TBL-5-3'),
(20, 15, 'TBL-5-4'),
(21, 13, 'TBL-2-2'),
(22, 16, 'TBL-1-2'),
(23, 16, 'TBL-1-1'),
(24, 3, 'TBL-1-1'),
(25, 3, 'TBL-1-2'),
(26, 3, 'TBL-1-3'),
(27, 3, 'TBL-1-4'),
(28, 3, 'TBL-1-5'),
(29, 3, 'TBL-1-6'),
(30, 4, 'TBL-2-1'),
(31, 4, 'TBL-2-2'),
(32, 4, 'TBL-2-3'),
(33, 4, 'TBL-2-4'),
(34, 5, 'TBL-3-1'),
(35, 5, 'TBL-3-2'),
(36, 5, 'TBL-3-3'),
(37, 5, 'TBL-3-4'),
(38, 6, 'TBL-4-1'),
(39, 6, 'TBL-4-2'),
(40, 6, 'TBL-4-3'),
(41, 7, 'TBL-1-1'),
(42, 7, 'TBL-1-2'),
(43, 7, 'TBL-1-3'),
(44, 7, 'TBL-1-4'),
(45, 7, 'TBL-1-5'),
(46, 8, 'TBL-2-1'),
(47, 8, 'TBL-2-2'),
(48, 8, 'TBL-2-3'),
(49, 9, 'TBL-3-1'),
(50, 9, 'TBL-3-2'),
(51, 9, 'TBL-3-3'),
(52, 9, 'TBL-3-4'),
(53, 10, 'TBL-4-1'),
(54, 10, 'TBL-4-2'),
(55, 11, 'TBL-1-1'),
(56, 11, 'TBL-1-2'),
(57, 11, 'TBL-1-3'),
(58, 11, 'TBL-1-4'),
(59, 13, 'TBL-1-4'),
(60, 13, 'TBL-1-3'),
(61, 12, 'TBL-2-1'),
(62, 12, 'TBL-2-2'),
(72, 68, 'TBL-1-1'),
(73, 68, 'TBL-1-2'),
(74, 68, 'TBL-1-3'),
(75, 68, 'TBL-1-4'),
(76, 69, 'TBL-2-1'),
(77, 69, 'TBL-2-2'),
(78, 70, 'TBL-3-1'),
(79, 70, 'TBL-3-2'),
(80, 70, 'TBL-3-3');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_info`
--

CREATE TABLE `restaurant_info` (
  `id` int(11) NOT NULL,
  `restaurent_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `location` int(11) NOT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `bkashnumber` varchar(20) DEFAULT NULL,
  `approve_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not approve,1-approve ',
  `role` int(20) DEFAULT NULL COMMENT '1 = restaurant, 2 = customer '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_info`
--

INSERT INTO `restaurant_info` (`id`, `restaurent_name`, `email`, `phone`, `address`, `location`, `logo`, `password`, `bkashnumber`, `approve_status`, `role`) VALUES
(4, 'Brew N Bistro Cafe', 'brew@gmail.com', '01821356478', '102, Beach Rd, near KKR Gowtham School, Lawsons Bay Colony', 1, 'park.jpg', '123', '01821356478', 0, 1),
(5, 'Passion Hut', 'hut@gmail.com', '01821356478', '2 4M 2, L.I.G - 41, Sector- 6, MVP Colony', 2, 'passion.jpg', '123', '01821356478', 0, 1),
(7, 'Six degrees', 'six@gmail.com', '01821356478', '1-83-29, MVP Double Rd, MVP Sector 7', 2, 'deg.jpg', '123', '01821356478', 0, 1),
(12, 'demo', 'pusulurudivya@gmail.com', '7993757995', 'fgakdm', 0, '4.jpg', 'divya2000', NULL, 0, 2),
(14, 'The Vizag Drive In', 'drive@gmail.com', '01821356478', ' 4-72-12, Beach Road, Lawsons Bay Colony', 1, 'bibiana.jpg', '123', '01821356478', 0, 1),
(17, 'The Bowl Concepts', 'bowl@gmail.com', '123445678', 'Sector 9 Drive In, MVP Double Rd, MVP Colony', 0, 'bowl.jpg', '123', NULL, 0, 2),
(18, 'BRUNCH & SUPPER', 'brunch@gmail.com', '81216 63334', 'Indira Colony, Gajuwaka', 3, 'brunch.jpg', '123', NULL, 0, 1),
(19, 'SOMAA RESTOBAR', 'somaa@gmail.com', '92111 12666', '4TH FLOOR, VIP CENTER, VIP Rd', 4, 'soma.jpg', '123', NULL, 0, 1),
(20, 'MYZ - UNO Vizag', 'uno@gmail.com', '91211 48393', 'Central building, 4, VIP Rd', 4, 'uno.jpg', '123', NULL, 0, 1),
(21, 'Barbeque Nation ', 'barb@gmail.com', '8035002037', 'East Wing Near Harbour Park Road near Harbour Park', 5, 'bbq.jpg', '123', NULL, 0, 1),
(22, 'The Gateway Hotel', 'gate@gmail.com', '891 662 3670', 'Beach Road, Visakhapatnam', 6, 'gate.jpg', '123', NULL, 0, 1),
(23, 'elqldk', 'elqldk@gmail.com', '13', 'sdf', 0, 'uno.jpg', '123', NULL, 0, 2),
(24, 'hk', 'hk@gmail.com', '1345', 'ewrey', 0, 'uno.jpg', '123', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`id`, `res_id`, `table_name`) VALUES
(3, 4, 'TBL-1'),
(4, 4, 'TBL-2'),
(5, 4, 'TBL-3'),
(6, 4, 'TBL-4'),
(7, 5, 'TBL-1'),
(8, 5, 'TBL-2'),
(9, 5, 'TBL-3'),
(10, 5, 'TBL-4'),
(11, 7, 'TBL-1'),
(12, 7, 'TBL-2'),
(13, 4, 'TBL-3'),
(14, 14, 'TBL-1'),
(15, 14, 'TBL-2'),
(16, 14, 'TBL-3'),
(17, 15, 'TBL-1'),
(18, 15, 'TBL-2'),
(19, 15, 'TBL-3'),
(20, 15, 'TBL-4'),
(22, 16, 'TBL-2'),
(23, 16, 'TBL-1'),
(68, 18, 'TBL-1'),
(69, 18, 'TBL-2'),
(70, 18, 'TBL-3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_chair`
--
ALTER TABLE `booking_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_menus`
--
ALTER TABLE `booking_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_chair`
--
ALTER TABLE `booking_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `booking_menus`
--
ALTER TABLE `booking_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
