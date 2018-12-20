-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2018 at 03:44 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1774692`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'New Balance'),
(4, 'Asics'),
(5, 'Vans'),
(6, 'Puma'),
(7, 'Saucony'),
(8, 'Air Jordan'),
(10, 'Reebok');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(10) UNSIGNED NOT NULL,
  `model` varchar(50) NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `model`, `brand_id`) VALUES
(1, 'Air Max', 1),
(2, 'IV', 8),
(3, 'Yeezy', 2),
(4, 'NB900', 3),
(5, 'Gel Lite', 4),
(6, '1', 8),
(7, 'III', 8),
(10, 'V', 8),
(11, 'VI', 8),
(12, '999', 3),
(13, 'NB500', 3),
(14, 'CM', 3),
(15, 'M', 3),
(16, 'Off - White', 1),
(17, 'Originals', 2),
(24, 'vapormax', 1),
(25, 'Slip On', 5),
(26, 'Sk Hi', 5),
(27, 'Old Skool', 5),
(28, 'Era 95', 5),
(29, 'Rhianna', 6),
(30, 'RS', 6),
(31, 'SF X PACKER', 6);

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `style` varchar(50) NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `style`, `model_id`) VALUES
(1, 'ONE', 1),
(2, '3', 2),
(3, '4', 2),
(4, '90', 1),
(5, '350', 3),
(6, '500', 3),
(7, '700', 3),
(8, 'Travis Scott', 2),
(9, 'Retro', 2),
(10, 'Concepts', 12),
(11, 'MT', 13),
(12, '1600', 14),
(13, '977', 15),
(14, 'III', 5),
(15, 'Dragon Ball Z', 17),
(16, 'Gazelle', 17),
(17, 'Retro - Hi OG', 6),
(18, 'Presto', 16),
(19, '90', 1),
(20, '97', 1),
(21, '180', 1),
(22, 'Pro', 27),
(23, 'ReIssue', 26),
(24, 'FOG', 28),
(25, 'Creeper', 29),
(26, 'Zero', 30),
(27, 'Blaze Of Glory', 31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk__models__brands__brand_id` (`brand_id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk__styles__models__model_id` (`model_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `fk__models__brands__brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `styles`
--
ALTER TABLE `styles`
  ADD CONSTRAINT `fk__styles__models__model_id` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
