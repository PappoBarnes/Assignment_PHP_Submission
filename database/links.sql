-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2018 at 06:02 PM
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
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text NOT NULL,
  `shoe_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `url`, `shoe_id`) VALUES
(1, 'https://www.flightclub.com/air-max-1-97-vf-sw-lt-blue-fury-lemon-wash-803324', 1),
(3, 'http://192.168.64.2/phpmyadmin/sql.php?server=1&db=u1774692&table=shoes&pos=0', 2),
(4, 'https://www.flightclub.com/nike-air-max-1-premium-black-clear-jade-white-050790', 3),
(5, 'https://www.flightclub.com/air-jordan-4-university-blue-black-803976', 4),
(6, 'https://www.flightclub.com/adidas-yeezy-boost-350-turtle-blugra-cwhite-201114', 5),
(8, 'https://www.flightclub.com/yeezy-wave-runner-700-mgsogr-cwhite-cblack-802501', 6),
(9, 'https://www.flightclub.com/yeezy-boost-700-mauve-mauve-mauve-805204?refSrc=219158&nosto=fallback-nosto-2', 7),
(10, 'https://www.flightclub.com/air-jordan-4-retro-nrg-black-court-purple-804154', 8),
(11, 'https://www.flightclub.com/new-balance-x-concepts-999-beige-navy-grey-802580', 9),
(12, 'https://www.flightclub.com/new-balance-cm1600-blue-tan-white-300601', 10),
(13, 'https://www.flightclub.com/new-balance-m997-turquoise-silver-300778', 12),
(14, 'https://www.stadiumgoods.com/gel-lyte-3-189780', 13),
(15, 'https://www.flightclub.com/yeezy-350-v2-white-cblack-red-800502', 14),
(16, 'https://www.flightclub.com/yeezy-boost-350-v2-cblack-cblack-red-800389?condition=used&size=9.5', 15),
(17, 'https://www.flightclub.com/adidas-yeezy-boost-350-v2-blutin-grethr-hirere-802390', 16),
(18, 'https://www.flightclub.com/adidas-yeezy-boost-350-v2-grey-borang-dgsogr-802389', 17),
(19, 'https://www.flightclub.com/yeezy-desert-rat-500-blush-blush-blush-803137', 18),
(20, 'https://www.flightclub.com/yeezy-500-utiblk-utiblk-utiblk-804366', 19),
(21, 'https://www.flightclub.com/yeezy-boost-350-v2-cwhite-cwhite-cwhite-800801', 20),
(22, 'https://www.flightclub.com/yeezy-boost-350-static-static-static-805221', 21),
(23, 'https://www.flightclub.com/yeezy-500-salt-salt-salt-805205', 22),
(24, 'https://www.flightclub.com/zx-500-restomod-orange-collegiate-royal-805188?size=10', 23),
(25, 'https://www.flightclub.com/deerupt-runner-shock-purple-red-night-shock-yellow-805589', 24),
(26, 'https://www.flightclub.com/yung-1-white-unity-purple-clear-lilac-805194', 25),
(27, 'https://www.flightclub.com/prophere-sgreen-cgreen-cblack-805687', 27),
(28, 'https://www.flightclub.com/air-max-1-black-black-university-red-800572', 28),
(29, 'https://www.flightclub.com/air-jordan-4-retro-green-clementine-black-wh-804513', 30),
(30, 'https://www.flightclub.com/air-jordan-4-cool-grey-white-800624', 31),
(31, 'https://www.flightclub.com/air-jordan-4-retro-black-safety-orange-game-royal-011575', 33),
(32, 'https://www.flightclub.com/air-jordan-4-retro-levis-nrg-white-white-white-804278', 34),
(33, 'https://www.flightclub.com/air-jordan-1-retro-high-og-nrg-white-black-rust-pink-802841', 35),
(34, 'https://www.flightclub.com/air-jordan-1-retro-high-white-white-803295', 36),
(35, 'https://www.flightclub.com/air-jordan-1-white-dark-powder-blue-cone-804093', 37),
(36, 'https://www.flightclub.com/the-10-air-jordan-1-white-black-varsity-red-801781', 38),
(37, 'https://www.flightclub.com/nike-air-presto-black-white-cone-803977', 39),
(38, 'https://www.flightclub.com/nike-air-presto-white-black-cone-804113', 40),
(39, 'https://www.flightclub.com/nike-air-presto-black-black-muslin-801820', 41),
(40, 'https://www.stadiumgoods.com/air-max-1-267635', 42),
(41, 'https://www.flightclub.com/air-jordan-1-retro-high-og-black-starfish-sail-012258', 43),
(42, 'https://www.flightclub.com/the-10-nike-air-max-90-sail-white-muslin-801893', 44),
(43, 'https://www.flightclub.com/nike-air-max-97-og-sp-white-cone-ice-blue-802441', 45),
(44, 'https://www.flightclub.com/the-10-nike-air-max-97-og-off-white-menta-wolf-grey-805150', 46),
(45, 'https://www.flightclub.com/air-max-97-black-white-cone-black-804892', 47),
(46, 'https://www.flightclub.com/vans-era-95-reissue-marshmallw-blk-prnt-403079', 48),
(47, 'https://www.flightclub.com/slip-on-pro-stv-navy-802456', 49),
(48, 'https://www.flightclub.com/vans-authentic-pro-supreme-supreme-checkers-blue-403073', 50),
(49, 'https://www.flightclub.com/creeper-velvet-royal-purple-purple-roypurple-800515', 51),
(50, 'https://www.flightclub.com/rs-0-srf-wb-pma-wht-chnse-rd-804224', 52),
(51, 'https://www.flightclub.com/puma-trinomic-rio-red-beach-glass-metallic-gold-310196', 53),
(52, 'https://www.flightclub.com/air-jordan-1-retro-high-og-golden-harvest-black-sail-805561', 54),
(53, 'https://www.flightclub.com/air-jordan-1-retro-hi-nrg-un-white-stormblue-varsity-red-805900', 55),
(54, 'https://www.flightclub.com/air-jordan-1-retro-high-og-nrg-sail-black-varsity-maize-805570', 56),
(55, 'https://www.flightclub.com/air-jordan-1-retro-high-black-uni-red-chrome-802741', 57),
(56, 'https://www.flightclub.com/air-jordan-1-high-dw-black-sport-red-white-011508', 58),
(57, 'https://www.flightclub.com/air-jordan-1-retro-high-og-nrg-white-black-igloo-802840', 59),
(58, 'https://www.flightclub.com/air-jordan-1-retro-high-black-uni-red-it-blu-blk-801708', 61),
(59, 'https://www.flightclub.com/air-jordan-1-high-retro-white-black-varsity-green-011063', 62),
(60, 'https://www.flightclub.com/air-jordan-1-retro-high-og-nrg-black-black-metallic-gold-803289', 63),
(61, 'https://www.stadiumgoods.com/air-max-1-premium-qs-88033', 64),
(62, '\r\nhttps://www.flightclub.com/nike-air-max-1-milano-qs-linen-linen-atomic-red-sail-051889', 65),
(63, 'https://www.flightclub.com/air-max-1-white-multi-color-804447', 66),
(64, 'https://www.flightclub.com/air-max-1-parra-f-f-white-multi-color-804731', 68),
(65, 'https://www.flightclub.com/air-max-97-bw-summit-white-hyper-cobalt-white-804014', 69),
(66, 'https://www.flightclub.com/pw-human-race-nmd-sample-maroon-white-802992', 70),
(67, '', NULL),
(68, 'https://www.flightclub.com/instapump-fury-og-hyper-green-rbk-red-801137', 71);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_links_shoes_shoes_id` (`shoe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `fk_links_shoes_shoes_id` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
