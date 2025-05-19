-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 02:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posprac`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `name`, `color`) VALUES
(1, 'Coffee', '#D2B48C'),
(2, 'Iced Coffee', '#F5E0C3'),
(3, 'Milktea', '#E6D3F5'),
(4, 'Smoothies', '#D5E8D4'),
(5, 'Sandwich', '#F7E7CE'),
(6, 'Breakfast', '#FFF5BA'),
(7, 'Pasta', '#D5E8D4'),
(8, 'Meal', '#FFD8B1'),
(9, 'Desserts', '#FBCFE8'),
(10, 'Add-ons', '#D0E8F2');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productsID` int(4) NOT NULL,
  `categoryID` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `img` varchar(30) NOT NULL,
  `code` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `sizes` varchar(6) DEFAULT NULL,
  `sizeCode` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productsID`, `categoryID`, `name`, `img`, `code`, `price`, `sizes`, `sizeCode`) VALUES
(1, 1, 'Espresso', 'Espresso.png', 'ESP', 90, '16oz', '(16oz)'),
(2, 1, 'Espresso', 'Espresso.png', 'ESP', 110, '22oz', '(22oz)'),
(3, 1, 'Americano', 'Americano.png', 'AME', 100, '16oz', '(16oz)'),
(4, 1, 'Americano', 'Americano.png', 'AME', 120, '22oz', '(22oz)'),
(5, 1, 'Cappuccino', 'Capuccino.png', 'CAP', 120, '16oz', '(16oz)'),
(6, 1, 'Cappuccino', 'Capuccino.png', 'CAP', 140, '22oz', '(22oz)'),
(7, 1, 'Mocha', 'mocha.png', 'MOC', 130, '16oz', '(16oz)'),
(8, 1, 'Mocha', 'mocha.png', 'MOC', 150, '22oz', '(22oz)'),
(9, 1, 'Matcha Latte', 'matchaLatte.png', 'MLT', 115, '16oz', '(16oz)'),
(10, 1, 'Matcha Latte', 'matchaLatte.png', 'MLT', 135, '22oz', '(22oz)'),
(11, 1, 'Caramel Macchiato', 'caramelMacchiato.png', 'CAM', 125, '16oz', '(16oz)'),
(12, 1, 'Caramel Macchiato', 'caramelMacchiato.png', 'CAM', 145, '22oz', '(22oz)'),
(13, 1, 'Salted Caramel', 'saltedCaramel.png', 'SAL', 140, '16oz', '(16oz)'),
(14, 1, 'Salted Caramel', 'saltedCaramel.png', 'SAL', 160, '22oz', '(22oz)'),
(15, 1, 'Spanish Latte', 'spanishLatte.png', 'SPA', 150, '16oz', '(16oz)'),
(16, 1, 'Spanish Latte', 'spanishLatte.png', 'SPA', 170, '22oz', '(22oz)'),
(17, 1, 'Matcha Coffee', 'matchaLatte.png', 'MCF', 110, '16oz', '(16oz)'),
(18, 1, 'Matcha Coffee', 'matchaLatte.png', 'MCF', 130, '22oz', '(22oz)'),
(19, 1, 'Brewed Coffee', 'brewedCoffee.png', 'BWC', 90, '16oz', '(16oz)'),
(20, 1, 'Brewed Coffee', 'brewedCoffee.png', 'BWC', 110, '22oz', '(22oz)'),
(21, 2, 'Iced Americano', 'icedAmericano.png', 'IAM', 110, '16oz', '(16oz)'),
(22, 2, 'Iced Americano', 'icedAmericano.png', 'IAM', 130, '22oz', '(22oz)'),
(23, 2, 'Iced Mocha', 'icedMocha.png', 'IMO', 125, '16oz', '(16oz)'),
(24, 2, 'Iced Mocha', 'icedMocha.png', 'IMO', 145, '22oz', '(22oz)'),
(25, 2, 'Cold Brew', 'coldBrew.png', 'CBW', 130, '16oz', '(16oz)'),
(26, 2, 'Cold Brew', 'coldBrew.png', 'CBW', 150, '22oz', '(22oz)'),
(27, 2, 'Cheese Cake', 'cheeseCake.png', 'CHC', 150, '16oz', '(16oz)'),
(28, 2, 'Cheese Cake', 'cheeseCake.png', 'CHC', 170, '22oz', '(22oz)'),
(29, 2, 'Iced Salted Caramel', 'icedSaltedCaramel.png', 'ISC', 120, '16oz', '(16oz)'),
(30, 2, 'Iced Salted Caramel', 'icedSaltedCaramel.png', 'ISC', 140, '22oz', '(22oz)'),
(31, 2, 'Iced Macchiato', 'icedMacchiato.png', 'IMA', 125, '16oz', '(16oz)'),
(32, 2, 'Iced Macchiato', 'icedMacchiato.png', 'IMA', 145, '22oz', '(22oz)'),
(33, 2, 'Iced Caramel Latte', 'icedCaramelLatte.png', 'ICL', 135, '16oz', '(16oz)'),
(34, 2, 'Iced Caramel Latte', 'icedCaramelLatte.png', 'ICL', 155, '22oz', '(22oz)'),
(35, 2, 'Iced Spanish Latte', 'icedSpanishLatte.png', 'ISL', 140, '16oz', '(16oz)'),
(36, 2, 'Iced Spanish Latte', 'icedSpanishLatte.png', 'ISL', 160, '22oz', '(22oz)'),
(37, 2, 'Iced White Chocolate', 'icedWhiteChocolate.png', 'IWC', 140, '16oz', '(16oz)'),
(38, 2, 'Iced White Chocolate', 'icedWhiteChocolate.png', 'IWC', 160, '22oz', '(22oz)'),
(39, 2, 'Iced Vanilla Latte', 'icedVanillaLatte.png', 'IVL', 135, '16oz', '(16oz)'),
(40, 2, 'Iced Vanilla Latte', 'icedVanillaLatte.png', 'IVL', 155, '22oz', '(22oz)'),
(41, 2, 'Iced Hazelnut Latte', 'icedChocoHM.png', 'IHL', 135, '16oz', '(16oz)'),
(42, 2, 'Iced Hazelnut Latte', 'icedChocoHM.png', 'IHL', 155, '22oz', '(22oz)'),
(43, 2, 'Iced Matcha Latte', 'icedMatchaLatte.png', 'IML', 140, '16oz', '(16oz)'),
(44, 2, 'Iced Matcha Latte', 'icedMatchaLatte.png', 'IML', 160, '22oz', '(22oz)'),
(45, 3, 'Taro Milk Tea', 'taro.png', 'TMT', 130, '16oz', '(16oz)'),
(46, 3, 'Taro Milk Tea', 'taro.png', 'TMT', 150, '22oz', '(22oz)'),
(47, 3, 'Matcha Milk Tea', 'matcha.png', 'MMT', 135, '16oz', '(16oz)'),
(48, 3, 'Matcha Milk Tea', 'matcha.png', 'MMT', 155, '22oz', '(22oz)'),
(49, 3, 'Okinawa', 'okinawa.png', 'HMT', 140, '16oz', '(16oz)'),
(50, 3, 'Okinawa', 'okinawa.png', 'HMT', 160, '22oz', '(22oz)'),
(51, 3, 'Strawberry Milk Tea', 'strawberry.png', 'SMT', 130, '16oz', '(16oz)'),
(52, 3, 'Strawberry Milk Tea', 'strawberry.png', 'SMT', 150, '22oz', '(22oz)'),
(53, 3, 'Wintermelon Milk Tea', 'wintermelon.png', 'WMT', 125, '16oz', '(16oz)'),
(54, 3, 'Wintermelon Milk Tea', 'wintermelon.png', 'WMT', 145, '22oz', '(22oz)'),
(55, 3, 'Chocolate Milk Tea', 'chocolate.png', 'CMT2', 140, '16oz', '(16oz)'),
(56, 3, 'Chocolate Milk Tea', 'chocolate.png', 'CMT2', 160, '22oz', '(22oz)'),
(57, 3, 'Choco Brown Sugar Mi', 'cbst.png', 'CBSMT', 145, '16oz', '(16oz)'),
(58, 3, 'Choco Brown Sugar Mi', 'cbst.png', 'CBSMT', 165, '22oz', '(22oz)'),
(59, 3, 'Cookies and Cream Mi', 'cnc.png', 'CCMT', 150, '16oz', '(16oz)'),
(60, 3, 'Cookies and Cream Mi', 'cnc.png', 'CCMT', 170, '22oz', '(22oz)'),
(61, 3, 'Caramel Milk Tea', 'caramel.png', 'CMT3', 150, '16oz', '(16oz)'),
(62, 3, 'Caramel Milk Tea', 'caramel.png', 'CMT3', 170, '22oz', '(22oz)'),
(63, 3, 'Ube Milk Tea', 'ube.png', 'UMT', 140, '16oz', '(16oz)'),
(64, 3, 'Ube Milk Tea', 'ube.png', 'UMT', 160, '22oz', '(22oz)'),
(65, 4, 'Strawberry Smoothie', 'strawb.png', 'SSM', 140, '16oz', '(16oz)'),
(66, 4, 'Strawberry Smoothie', 'strawb.png', 'SSM', 160, '22oz', '(22oz)'),
(67, 4, 'Mango Smoothie', 'mango.png', 'MSM', 140, '16oz', '(16oz)'),
(68, 4, 'Mango Smoothie', 'mango.png', 'MSM', 160, '22oz', '(22oz)'),
(69, 4, 'Banana Smoothie', 'banana.png', 'BSM', 135, '16oz', '(16oz)'),
(70, 4, 'Banana Smoothie', 'banana.png', 'BSM', 155, '22oz', '(22oz)'),
(71, 4, 'Berry Blast Smoothie', 'bbs.png', 'BBS', 150, '16oz', '(16oz)'),
(72, 4, 'Berry Blast Smoothie', 'bbs.png', 'BBS', 170, '22oz', '(22oz)'),
(73, 4, 'Green Apple Smoothie', 'greenApple.png', 'GAS', 145, '16oz', '(16oz)'),
(74, 4, 'Green Apple Smoothie', 'greenApple.png', 'GAS', 165, '22oz', '(22oz)'),
(75, 5, 'Ham & Cheese Sandwic', 'hc.png', 'HCS', 150, ' ', ' '),
(76, 5, 'Tuna Sandwich', 'tuna.png', 'TNS', 145, ' ', ' '),
(77, 5, 'Chicken Sandwich', 'chicken.png', 'CHS', 150, ' ', ' '),
(78, 5, 'Egg Salad Sandwich', 'egg.png', 'ESS', 140, ' ', ' '),
(79, 5, 'Veggie Sandwich', 'veggie.png', 'VGS', 135, ' ', ' '),
(80, 6, 'Pancakes', 'pancake.png', 'PNC', 120, ' ', ' '),
(81, 6, 'Waffles', 'waffle.png', 'WFL', 125, ' ', ' '),
(82, 6, 'French Toast', 'french.png', 'FRT', 130, ' ', ' '),
(83, 6, 'Bacon and Eggs', 'bne.png', 'BAE', 140, ' ', ' '),
(84, 6, 'Omelette', 'omelette.png', 'OML', 130, ' ', ' '),
(85, 7, 'Filipino-style Spagh', 'spag.png', 'FSP', 150, ' ', ' '),
(86, 7, 'Pancit Canton', 'pc.png', 'PCN', 140, ' ', ' '),
(87, 7, 'Sopas (Macaroni Soup', 'sopas.png', 'SOP', 130, ' ', ' '),
(88, 7, 'Pancit Bihon', 'pb.png', 'PBN', 145, ' ', ' '),
(89, 7, 'Pansit Palabok', 'pp.png', 'PLB', 160, ' ', ' '),
(90, 8, 'Chicken Rice Meal', 'crm.png', 'CRM', 159, ' ', ' '),
(91, 8, 'Chicken Fillet', 'chickF.png', 'CFT', 160, ' ', ' '),
(92, 8, 'Sisig', 'ssg.png', 'SSG', 170, ' ', ' '),
(93, 8, 'Chao Fan', 'cf.png', 'CFN', 120, ' ', ' '),
(94, 8, 'Beef Stew', 'bs.png', 'BSW', 220, ' ', ' '),
(95, 8, 'Grilled Fish', 'gf.png', 'GF', 180, ' ', ' '),
(96, 8, 'Vegetable Stir-fry', 'vs.png', 'VSF', 200, ' ', ' '),
(97, 8, 'Pork Adobo', 'pa.png', 'PAD', 240, ' ', ' '),
(98, 9, 'Chocolate Cake', 'cc.png', 'CHK', 150, ' ', ' '),
(99, 9, 'Cheesecake', 'chc.png', 'CHSCK', 160, ' ', ' '),
(100, 9, 'Brownie', 'br.png', 'BRN', 100, ' ', ' '),
(101, 9, 'Ice Cream', 'ic.png', 'ICR', 90, ' ', ' '),
(102, 9, 'Tiramisu', 'tir.png', 'TRM', 160, ' ', ' '),
(103, 10, 'Extra Rice', 'er.png', 'EXS', 15, ' ', ' '),
(104, 10, 'Whipped Cream', 'wc.png', 'WPC', 20, ' ', ' '),
(105, 10, 'Almond Milk', 'am.png', 'ALM', 25, ' ', ' '),
(106, 10, 'Soy Milk', 'sm.png', 'SOY', 25, ' ', ' '),
(107, 10, 'Caramel Drizzle', 'cd.png', 'CMD', 20, ' ', ' ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productsID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productsID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
