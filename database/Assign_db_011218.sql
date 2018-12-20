-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2018 at 08:52 PM
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
(31, 'SF X PACKER', 6),
(32, 'Pharell', 2),
(33, 'EQT', 2),
(34, 'Instapump', 10),
(35, 'Workout', 10);

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `style_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`id`, `style_id`, `name`, `description`, `image`) VALUES
(1, 1, 'Sean Wotherspoon', 'This limited-edition trainer releases alongside several other designs as part of the Air Max Day celebrations. This annual event takes place in March, now recognised as one of the biggest month&apos;s in the calendar for sneakerheads.</br>\r\n\r\n\r\nManuf  Sku:	AJ4219 400 </br>\r\nNickname:       Sean Wotherspoon</br>\r\nGender:         Mens</br>\r\nColorway:       LT BLUE FURY/LEMON WASH</br>\r\nMaterials:      Multi, Rubber</br>\r\nPrice est:      &pound;450 - &pound;700', 'images/sw.jpg'),
(2, 1, 'Animal', '\r\nThe Air Max 1 Animal Pack 2.0 is contrasted by a bold hit of red which features to a Swoosh along the side.<br>\r\nManf Sku	AQ0928 700<br>\r\nNickname	Atmos Animal Pack 2.0<br>\r\nGender	        Mens<br>\r\nColorway	WHEAT/SPORT RED-BISON-CLASSIC<br>\r\nMaterials	Multi, Rubber<br>\r\nPrice           &pound;200 - &pound:300<br>', 'images/animal.jpg'),
(3, 1, 'Elephant', 'Back by popular demand, a Nike legend - the atmos x Air Max 1 - makes its long-awaited return. The undisputed winner of the Air Max Day 2016 Vote Back campaign, the model stays true to the OG 2007 design with striking Jade accents to the tongue, heel and patent leather Swoosh.</br> The meticulous colour-blocking and ever-popular print to the toe box, heel and lining are inspired by elephants in the water. One of Tinker Hatfield&#39;s revolutionary sneaker designs.</br> \r\n\r\nManufacturer :908366 001</br> \r\n\r\nNickname:Atmos Elephant 2017</br> \r\n\r\nGender: Mens</br> \r\n\r\nMaterials: Multi, Rubber</br> ', 'images/elephant.jpg'),
(4, 8, 'Cactus Jacks', 'Following his popular Nike Air Force 1 collaboration with mix-and-match Swooshes, Travis Scott continued his reign as one of the sneaker worlds hottest collaborators in 2018 with the Air Jordan 4 Cactus Jack.</br> <br>\r\n\r\n\r\n\r\nManf Sku: AQ8766 700<br>\r\n\r\n\r\n\r\nNickname: Cactus Jacks<br>\r\n\r\n\r\n\r\nGender: Mens</br>\r\n\r\n\r\n\r\nColorway: Sky Blue / Black</br>\r\n\r\n\r\n\r\nMaterials: Multi, Rubber</br>\r\n\r\n\r\n\r\nPrice: &pound;250 - &pound:400</br>', 'images/cactus.jpg'),
(5, 5, 'Turtledove', 'After the success of the Yeezy Boost 750, adidas introduced a low-top option with the Yeezy Boost 350 to kick off summer 2015. Many would call the silhouette the more preferred of the two sneaker choices. Credit that greatly to the easy slip-on sock-like feel. The inaugural colorway earns the \"Turtledove\" name, as it sports Turtledove and Blue Grey woven throughout the uppers Primeknit construction and a white TPU sole that wraps around full-length Boost foam cushioning. The matching white heel tab sports red accents to complete the clean look. Needless to say that the Turtledove has reached legendary status.</br>Manf Sku: AQ8766 700<br>\r\nRelease Date: 6/27/15</br>\r\nNickname: Turtle Dove.</br>\r\nManufacturer Sku AQ4832 </br>\r\nGender: Mens</br>\r\nColorway:TURTLE/BLUGRA/CWHITE </br>\r\nMaterials: Boost, Primeknit</br>\r\nPrice: &pound;750 - &pound:1200</br> \r\n\r\n', 'images/350TD.jpg'),
(6, 7, 'Waverunner', 'Ride the wave! Adding another unique sneaker to his line Kanye West introduced the adidas Yeezy Boost 700 Wave Runner in 2017.</br>\r\nGender	Mens</br> \r\nColorway: MGSOGR/CWHITE/CBLACK</br>\r\nMaterials: Leather, Suede, Synthetics</br>\r\nPrice :&pound350.\r\n', 'images/700og.jpg'),
(7, 7, 'Waverunner', 'Ride the wave! Adding another unique sneaker to his line Kanye West The Adidas Yeezy Boost 700 Wave Runner in Mauve. .</br>\r\nManufacturer Sku: B75571</br>\r\nNickname: Wave Runner</br>\r\nGender	Mens</br> \r\nColorway: MGSOGR/CWHITE/CBLACK</br>\r\nMaterials: Leather, Suede, Synthetics</br>\r\nPrice :&pound250.', 'images/700m.jpg'),
(8, 9, 'Raptors', 'n 2018 Jordan Brand took the original black, purple, and red palette from the Air Jordan 7 and used it to create the Air Jordan 4 \"Raptors.\" The fierce colorway was rumoured to be designed by Drake, drawing inspiration from his beloved Toronto Raptors. The Air Jordan 4 \"Raptors\" has a premium black suede construction with a purple speckled midsole and bright red accents.<br>\r\nManufacturer: AQ3816 065\r\nNickname: Raptors</br>\r\nGender: Mens</br>\r\nColorway: BLACK/COURT PURPLE</br>\r\nMaterials: Nubuck, Rubber</br>\r\nPrice : &pound169</br>', 'images/raptors.jpg'),
(9, 10, 'Complexcon', 'The Concepts x New Balance 999 &#34;Hyannis&#34; was released by the Boston sneaker shop in 2017 as an encore edition of the famous 2011 &#34;Kennedy&#34; colorway.\r\nManufacturer: M999CP1</br>\r\nNickname: Hyannis</br>\r\nGender: Mens</br>\r\nColorway: Beige/ tan/ navy</br>\r\nMaterials: Multi, Rubber</br>\r\nPrice: &pound300', 'images/complexconnb999.jpg'),
(10, 12, 'Social Status', 'Inspired by off-season sailing in the Hamptons, this premium edition of the New Balance 1600 by Social Status features a blue denim base with navy tumbled leather and accents in tan and teal.\r\nManufacturer: CM1600SS\r\nNickname: Winter in the Hamptons\r\nGender: Mens\r\nColorway: BLUE/GREEN\r\nMaterials: Rubber, Suede\r\nPrice: &pound59', 'images/social.jpg'),
(12, 13, 'City Rivalry', 'In 2016 New Balance and Concepts teamed up for the memorable &#34;City Rivalry&#34; pack, featuring the 997 and 998 in colorways inspired by the sports rivalry between Boston and New York City. This 997 represents New York City, featuring a bright green suede upper with reflective silver accents to signify the Statue of Liberty.\r\nManufacturer: M997NSY\r\nNickname: Concepts\r\nGender: Mens\r\nColorway: TEAL/GREY\r\nMaterials: Suede, Synthetics\r\nPrice &pound200', 'images/NBrivalry.jpg'),
(13, 14, 'Limited', 'Manufacturer: H51NK 0190</br>\r\nNickname: AFew- Koi</br>\r\nGender: Mens</br>\r\nColorway: WHITE/BLACK</br>\r\nMaterials: Multi, Rubber</br>\r\nPrice: &pound500\r\n', 'images/limited.jpg'),
(14, 5, 'Zebra\"s', 'The Yeezy Zebra shifted the game. Before its release, the Yeezy Boost 350 V2 had mostly relied on its functional silhouette &#45; a winning combination of a woven Prime&#45;knit upper and a full length Boost midsole wrapped in a rubber TPU casing &#45; as opposed to ambitious colorway options. But that changed with this extremely sought after Yeezy Boost 350 V2 &#34;Zebra&#34; release. Upon hitting retailers on February 25th, 2017, it became clear just how limited these shoes actually are, with pairs only being available directly from adidas and one other major retail door. This iteration of the Yeezy Boost 350 V2 sees white and black upper distributed equally throughout the upper, with red &#34;SPLY-350&#34; messaging and a white rubber sole.<br> Manufacturer: CP9654</br>\r\nRelease Date: 02/25/2017</br>\r\nNickname: Zebra Gender	</br>\r\nMens Colorway: WHITE/CBACK/RED</br>\r\nMaterials: Boost, Primeknit<br>\r\nPrice: &pound180.', 'images/zebra.jpg'),
(15, 5, 'Breds', 'This first Yeezy sighting of 2017 is this adidas Yeezy Boost 350 V2 (CP9652), affectionately referred to as the \"Black Red\" colorway. Anchored by a woven black Primeknit upper and a matching TPU midsole (that covers Boost cushioning), the shoe features an tonal black look that\'s offset by red \"SPLY-350\" messaging in reverse on the side panel. The stripe the Yeezy Boost 350 V2 model is known for does not appear, but that doesn\'t take away from the overall freshness of the shoe. Instead, this iteration of the adidas Yeezy Boost 350 V2 is a reminder that sometimes simple is better.</br>\r\nManufacturer Sku: CP9652 </br>\r\nNickname: Black Red \r\n</br>\r\nGender	Mens</br>\r\nColorway: CBLACK/CBLACK/RED </br>\r\nMaterials: Boost, Primeknit</br>\r\nPrice: &pound700 - &pound1200', 'images/bred.jpg'),
(16, 5, 'Blue Tints', 'Adidas Yeezy madness was as strong as ever during the Holiday 2017 season, with not one, not two, but three colorways of the adidas Yeezy Boost 350 V2 dropping between November and Christmas. Here is the colorway that&#39;s arguably the best of the three, the &#34;Blue Tint&#34; version, featuring an icy light blue upper with the &#34;Zebra&#34; stripe pattern across the Primeknit.</br>\r\nThe Blue Tint Yeezy will no doubt go down as an all-time classic colorway for the Yeezy Boost 350 v2, with a perfect balance of unique color and wearability. If you missed out on a pair at retail, you can rest assured that your friends here at Stadium Goods have you covered. </br>\r\nManufacturer Sku: B37571 </br>\r\nNickname: Blue Tints </br>\r\nGender	Mens</br>\r\nColorway: BLUTIN/GRETHR/HIRERE  </br>\r\nMaterials: Boost, Primeknit</br>\r\nPrice: &pound700 - &pound1200</br>\r\n', 'images/bluetint.jpg'),
(17, 5, 'Beluga V2', 'Manufacturer: BB1826</br>\r\nNickname: Beluga</br>\r\nGender: Mens\r\nColorway: STEGRY/BELUGA/SOLRED</br>\r\nMaterials: Boost, Synthetics</br>\r\nPrice: &pound400 - &pound700', 'images/v2bel.jpg'),
(18, 6, 'Dessert Rat', '	\r\nManufacturer Sku: DB2908 </br>\r\nNickname: Blush <br>\r\nGender: Mens</br>\r\nColorway: SUPCOL/SUPCOL/SUPCOL   </br>\r\nMaterials: Rubber, Suede</br>\r\nPrice: &pound200</br>', 'images/blush.jpg'),
(19, 6, 'Utility Black', 'Manufacturer Sku: F36640 </br>\r\nNickname: Utility <br>\r\nGender: Mens</br>\r\nColorway: UTIBLK/UTIBLK/UTIBLK  </br>\r\nMaterials: Rubber, Suede</br>\r\nPrice: &pound250</br> \r\n\r\n\r\n\r\n', 'images/utilblk.jpg'),
(20, 5, 'Triple White', '\r\n\r\nManufacturer Sku: CP9366 </br>\r\nNickname: Triple White <br>\r\nGender: Mens</br>\r\nColorway: CWHITE/CWHITE/CWHITE     </br>\r\nMaterials: Boost, Primeknit</br>\r\nPrice: &pound200</br>', 'images/3white.jpg'),
(21, 5, 'Static', 'Manufacturer Sku: F36640 </br>\r\nNickname: Static <br>\r\nGender: Mens</br>\r\nColorway: Wolf Grey  </br>\r\nMaterials: Prime knit , Boost</br>\r\nPrice: &pound550</br> ', 'images/static.jpg'),
(22, 6, 'Salt', 'Manufacturer Sku: EE7287 </br>\r\nNickname: Salt <br>\r\nGender: Mens</br>\r\nColorway: SALT/SALT/SALT </br>\r\nMaterials: Rubber, Suede</br>\r\nPrice: &pound250</br> \r\n\r\n\r\n\r\n', 'images/salt.jpg'),
(23, 15, 'Goku Son', 'The Dragon Ball Z x adidas ZX 500 RM \"Goku\" came out of the epic collaboration between the famous Japanese manga franchise and the Three Stripes. <br>\r\nManufacturer Sku: D97046 </br>\r\nNickname: Dragon Ball Z - Goku  <br>\r\nGender: Mens</br>\r\nColorway: ORANGE/COLLEGIATEROYAL/HI-RES </br>\r\nMaterials: Boost, Denim</br>\r\nPrice: &pound350</br>  \r\n', 'images/gokuson.jpg'),
(24, 15, 'Gohan Son', '\r\nManufacturer Sku: Deerupt Runner D97052 </br>\r\nNickname: Dragon Ball Z - Gohan   <br>\r\nGender: Mens</br>\r\nColorway: SHOPUR/REDNIT/SHOYEL</br>\r\nMaterials: Boost, Knit</br>\r\nPrice: &pound109</br>  ', 'images/gohanson.jpg'),
(25, 15, 'Frieza', 'The Dragon Ball Z x adidas Yung-1 &#34;Frieza&#34; is one of the collectible releases from the collaboration between the famous Japanese manga franchise and adidas. The Dragon Ball Z x adidas Yung-1 &#34;Frieza&#34; was one of seven shoes in the collection \r\nManufacturer Sku: D97046 </br>\r\nNickname: Dragon Ball Z - Frieza <br>\r\nGender: Mens</br>\r\nColorway: CLOUD WHITE/UNITY PURPLE/CLEAR</br>\r\nMaterials: Boost, Nylon</br>\r\nPrice: &pound160</br>  \r\n\r\n\r\n\r\n	', 'images/frieza.jpg'),
(27, 15, 'Cell', 'Manufacturer Sku: D97046 </br>\r\nNickname: Dragon Ball Z - Cell  <br>\r\nGender: Mens</br>\r\nColorway: ORANGE/COLLEGIATEROYAL/HI-RES </br>\r\nMaterials: RUBBER NYLON</br>\r\nPrice: &pound140</br>  ', 'images/cell.jpeg'),
(28, 1, 'Masters', 'Nike executes the \"What the\" concept masterfully for this festive Air Max Day 2017 release: the Air Max 1 \"Master\".\r\n\r\n\r\nManufacturer Sku: 910772 001 </br>\r\nNickname: Masters <br>\r\nGender: Mens</br>\r\nColorway: BLACK/BLACK-UNIVERSITY RED</br>\r\nMaterials:Multi, Rubber</br>\r\nPrice: &pound340</br>  \r\n\r\n', 'images/masters.jpg'),
(30, 9, 'Undefeated', 'Undefeated are the rarest Air Jordan 4 (IV) of them all.  It features a green upper which has a faded look to it, with orange laces and accents.  IT was Jordan brand&#39;s first collaboration, and is said to be inspired from the MA-1 Flight Jacket.  Only 79 pairs were ever produced!\r\n<br>\r\nManufacturer: 930155 003 </br>\r\nNickname: Kaws </br>\r\nGender: Mens </br>\r\nColorway: deep green/clem-black-dk </br>\r\nMaterials: Suede </br>\r\nPrice :&pound;25,000\r\n', 'images/undefeated4.jpg'),
(31, 9, 'Kaws', 'World-renowned artist KAWS joins forces with an icon of an entirely different world, uniting with Nike\'s Jordan brand to deliver a capsule collection that is surely destined to go down in history. </br>\r\nManufacturer: 930155 003 </br>\r\nNickname: Kaws </br>\r\nGender: Mens </br>\r\nColorway: COOL GREY/WHITE </br>\r\nMaterials: Suede </br>', 'images/kaws4.jpg'),
(32, 9, 'Oregon PE', 'DJ Clark Kent?resides in the elite footwear fraternity of those with the Air Jordan 4 &#34;Jumpduck&#34; Oregon PE. Detailed images show more of the collegiate colorway, highlighting the bright yellow outsole and green speckled accents. A white leather base benefits from dark grey lining, with school spirit popping up on the tongue, heel, and hang tag. Like the other Oregon exclusives, don?t expect these to release anytime soon.<br>\r\n\r\nManufacturer: 675944 </br>\r\nNickname: Jumpduck </br>\r\nGender: Mens </br>\r\nColorway: VOLT/WHITE </br>\r\nMaterials: Leather, Rubber </br>\r\nPrice &pound;12,000', 'images/oregon4.jpg'),
(33, 9, 'Cav\'s', 'Is it Knicks, or is it Cavs? Regardless of the name, you can consider these &#39;copped&#39; as Jordan Brand unveils the first new Retro colorway in adult sizes of the Air Jordan IV of 2012. The Black/Orange/Blue colorway was chosen as a tribute to Jordan&#39;s historic jumpshot over Craig Ehlo in 1989, when MJ floated and froze in mid-air to knock down a series-winning jumper as the game expired. What concluded was one of the most iconic 5-second spans in the history of sports, as Jordan sank the jumper and pumped his fist in unbridled celebration.  The sneaker is predominantly black and features colors Game Royal and Safety Orange.', 'images/cavs4.jpg'),
(34, 9, 'Levi\'s - White', 'Introducing the Levis x Nike Air Jordan 4 White which launches alongside a darker colourway this month.  <br> Few denim-crafted silhouettes create mayhem like these Jordan collaborations. Just like the first pair, this is a full homage to your favourite pair of jeans.<br> A hard-wearing denim covers from heel to toe, on this pair featuring in a white wash colourway.\r\n<br>\r\nManufacturer: 77368 </br>\r\nNickname: Levi 4\'s </br>\r\nGender: Mens </br>\r\nColorway: WHITE </br>\r\nMaterials: Denim, Rubber </br>\r\nPrice &pound;300', 'images/whitelevi4.jpg'),
(35, 17, 'Rust Pink', 'Jordan Brand paid tribute to Miami with a special two-colorway set of the Air Jordan 1 High featuring the pink and turquoise tones associated with South Beach.<br>\r\n Manufacturer Sku: 861428 101 <br>Nickname:	Rust Pink <br>Gender: Mens <br>Colorway:	WHITE/BLACK-RUST PINK <br>Materials: Leather<br>Price:&#163;2,000', 'images/rustpink.jpg'),
(36, 17, 'NRG Off White', 'Virgil Abloh continued to focus his design attention on the Air Jordan 1 in 2018 by dropping a massively anticipated white colorway. The Air Jordan 1 x Off-White &#34;White&#34; was even harder to come by than the initial &#34;Chicago&#34; colorway that came out in 2017. The white version released exclusively at select retailers in Europe, and instantly became one of the most sought after sneaker releases of the year.<br>\r\nManufacturer Sku: AQ0818 100<br>\r\nNickname: Off-White<br>\r\nGender: Mens<br>\r\nColorway: WHITE/WHITE<br>\r\nMaterials: Leather, Rubber<br>\r\nPrice:&#163;;2,000', 'images/nrg1.jpg'),
(37, 17, 'UNC - Off White', 'For his third edition of the monumental Off-White x Air Jordan 1, Virgil Abloh focused on the \"UNC\" colorway of Michael Jordan\'s first signature shoe.Manufacturer Sku: AQ0818 100<br>\r\nNickname: Off-White<br>\r\nGender: Mens<br>\r\nColorway: WHITE/POWDERBLUE<br>\r\nMaterials: Leather, Rubber<br>\r\nPrice:&#163;;1,000', 'images/unc.jpg'),
(38, 17, 'Chicago - Off White', 'For his third edition of the monumental Off-White x Air Jordan 1, Virgil Abloh focused on the \"UNC\" colorway of Michael Jordan\'s first signature shoe.Manufacturer Sku: AQ0818 100<br>\r\nNickname: Off-White<br>\r\nGender: Mens<br>\r\nColorway: WHITE/RED<br>\r\nMaterials: Leather, Rubber<br>\r\nPrice:&#163;;2,000', 'images/chicago.jpg'),
(39, 18, 'Black', ' Lightweight mesh covers the upper of the Off-White x Nike Presto. This clean colourway couldn&#39;t be more perfect for the summer months. A beige coloured Swoosh sits across the sidewall with that signature orange tab, now synonymous with these exclusives.<br>\r\n\r\nManufacturer Sku: AQ0818 100<br>\r\nNickname: Off-White<br>\r\nGender: Mens<br>\r\nColorway: BLACK/BLACK<br>\r\nMaterials: Leather, Rubber<br>\r\nPrice:&#163;500', 'images/blackpresto.jpeg'),
(40, 18, 'White', 'Just like that previous design, Virgil takes a deconstructed approach and imparts that sense of Industrialism throughout. Lightweight mesh covers the upper of the Off-White x Nike Presto 	&#34;White&#34;. This clean colourway couldn&#39;t be more perfect for the summer months. A beige coloured Swoosh sits across the sidewall with that signature orange tab, now synonymous with these exclusives.\r\nManufacturer Sku: AQ0818 100<br>\r\nNickname: Off-White<br>\r\nGender: Mens<br>\r\nColorway: WHITE/WHITE<br>\r\nMaterials: Mesh, Rubber<br>\r\nPrice:&#163;700\r\n\r\n', 'images/whitepresto.jpeg'),
(41, 18, ' OG - Multi', 'OFF WHITE founder and designer Virgil Abloh shook up sneaker culture with his highly anticipated &#34;The Ten&#34; footwear collection, created in collaboration with Nike. The collection assembles 10 models, broken up into two categories 	&#45;	&#34;REVEALING&#34; and 	&#34;GHOSTING.&#34;\r\n<br>\r\nManufacturer Sku: AQ0818 100<br>\r\nNickname: Off-White<br>\r\nGender: Mens<br>\r\nColorway: GREY/GREY<br>\r\nMaterials: Leather, Rubber<br>\r\nPrice:&#163;700<br>', 'images/ogpresto.jpg'),
(42, 1, 'Watermelon', 'With its white, green, and pink colors, the Nike Air Max 1 &#34;Watermelon&#34; is packed with summer vibes. The &#34;Watermelon&#34; Air Max 1 is a refreshing take on the classic sneaker, with a green suede mudguard that is accented with a bright pink Swoosh.<br> The rest of the upper features a combination of leather and mesh. The Air Sole construction brings cushioned support to the midsole for all day comfort.<br>\r\nManufacturer Sku: AH8145 106<br>\r\nNickname: Watermelon<br>\r\nGender: Mens<br>\r\nColorway: SUMMIT WHITE/SUNSET PULSE<br>\r\nMaterials: Multi, Rubber<br>\r\nPrice: &pound;140', 'images/watermelon.jpg'),
(43, 17, 'Shatter Backboards', 'Released in 2015, the 	&#34;Shattered Backboard	&#34; Air Jordan 1 High is inspired by an exhibition game Michael Jordan participated in back in 1985 in Trieste, Italy where he broke the glass backboard after a dunk.<br>\r\nManufacturer Sku: 555088 005<br>\r\nRelease Date: 6/27/15<br>\r\nNickname: Shattered Backboard<br>\r\nGender: Mens<br>\r\nColorway: BLACK/STARFISH-SAIL<br>\r\nMaterials: Leather<br>\r\nPrice: &pound;1,000', 'images/shatter.jpg'),
(44, 4, 'Off White 90', 'OFF WHITE founder and designer Virgil Abloh shook up sneaker culture with his highly anticipated \"The Ten\" footwear collection<br>\r\n\r\nManufacturer Sku:AA7293 100<br>\r\nNickname: Off-White<br>\r\nGender: Mens<br>\r\nColorway: SAIL/WHITE-MUSLIN<br>\r\nMaterials: Multi, Rubber<br>\r\nPrice: &pound;500', 'images/ow90.jpg'),
(45, 20, 'OG White', 'Virgil Abloh put his unique twist on the Nike Air Max 97. Made in collaboration with Off-White, they were a part of &#34;The 10&#34; Collection, and dropped in the second set from the two brands, the &#34;Ghosting Pack.&#34;<br>\r\nManufacturer Sku: AQ0818 100<br>\r\nNickname: Off-White<br>\r\nGender: Mens<br>\r\nColorway: WHITE/WHITE<br>\r\nMaterials: Leather, Rubber<br>\r\nPrice:&#163;500', 'images/97owW.jpg'),
(46, 20, 'V2 - Menta', 'The Off-White x Nike Air Max 97 &#34;Menta&#34; is a refreshed edition of the remodeled Air Max 97 by Virgil Abloh. Originally released within the original &#34;The Ten&#34; collection in 2017, the modified Air Max 97 by Abloh stayed hot in 2018 with a number of new colorways, including this striking &#34;Menta&#34; rendition.\r\n<br>\r\nManufacturer Sku: AJ4585 101 <br>\r\nNickname: Menta<br>\r\nGender: Mens<br>\r\nColorway: OFF WHITE/MENTA-WOLF GREY<br>\r\nMaterials: Leather, Rubber<br>\r\nPrice:&#163;700<br>\r\n', 'images/97menta.jpg'),
(47, 20, 'V2 - Black', 'The Off-White x Nike Air Max 97 \"Black\" features a matte black finish across the upper with white Swooshes.\r\n<br>\r\nManufacturer Sku: AJ4585 101 <br>\r\nNickname: Menta<br>\r\nGender: Mens<br>\r\nColorway: OFF WHITE/MENTA-WOLF GREY<br>\r\nMaterials: Leather, Rubber<br>\r\nPrice:&#163;700<br>\r\n', 'images/97owb.jpg'),
(48, 24, 'Fear Of God', 'Era 95 Reissue(FOG)<br>\r\nManufacturer Sku: 4000328260<br>\r\nNickname:FEAR OF GOD<br>\r\nGender:Mens<br>\r\nColorway:(FOG) MARSHMALLWBLK/PRNT<br>\r\nMaterials:Canvas<br>', 'images/fogvan.jpg'),
(49, 22, 'Supreme 666', 'Slip-On PRO (Supreme):VN0A347VOX4<br>\r\nManufacturer Sku: VN0A347VOX4<br>\r\nNickname: Supreme 666<br>\r\nGender: Mens<br>\r\nColorway: (SUPREME 666) CHECKER<br>\r\nMaterials: Canvas<br>', 'images/supvan666.jpg'),
(50, 22, 'Authentic Supreme', 'The third and final Supreme x Vans collaboration of 2016 is rooted in simplicity, with their last go round channeling classic aspects of their respective brands DNAs. The release was comprised of a Sk8-Hi Pro and Authentic Pro, the latter of which we see here. The shoe sports a canvas upper in the classic Vans checkerboard motif. Supreme\'s signature Box Logo typography appears throughout the design. <br>\r\nSlip-On PRO (Supreme):VN0A347VOX4<br>\r\nManufacturer Sku: VN0A347VOX4<br>\r\nNickname: Supreme 666<br>\r\nGender: Mens<br>\r\nColorway: (SUPREME )<br>\r\nMaterials: Canvas<br>', 'images/supvan.jpg'),
(51, 25, 'Velvet', 'Comfortably slip into these royal purple pumas from the Rihanna Fenty Collection. This creeper features a velvet upper and a lace closure for a snug fit. A platform rubber outsole with ridged tooling provides traction on multiple surfaces.<br>\r\nManufacturer Sku: 364466 02<br>\r\nGender: Womens<br>\r\nColorway: ROYALPURPLE-PURPLE-ROYPURPLE<br>\r\nMaterials: Rubber, Velvet<br>', 'images/creeper.jpg'),
(52, 26, 'Sonic', 'Manufacturer Sku:368276 01<br>\r\nGender:Mens<br>\r\nColorway:SRF WB-PMA WHT-CHNSE RD<br>\r\nMaterials:Multi, Rubber<br>', 'images/sonic.jpg'),
(53, 27, 'Blood Bath', '\r\nThings get gruesome with this Bloodbath PUMA Blaze of Glory by Sneaker Freaker and Packer Shoes. The three-way collab features the classic PUMA model in a shark-inspired blood-red nubuck upper.\r\n\r\nManufacturer Sku: D97046 </br>\r\nNickname: Bloodbath <br>\r\nGender: Mens</br>\r\nColorway: RIORED0BEAGLASS-BLCK-METGOLD </br>\r\nMaterials: Multi, Rubber</br>\r\nPrice: &pound150</br>  ', 'images/bloodbath.jpg'),
(54, 17, '&#34;Rookie of the Year&#34;', 'The Air Jordan 1 &#34;Rookie of the Year&#34; is a unique colorway commemorating Michael Jordan&#39;s Rookie of the Year honors in 1985. When Jordan won the award after his debut NBA season in 1984-85, the Chicago Bulls star accepted the trophy wearing a tan-colored jacket, which inspires the primary color on this shoe.<br>\r\nThe Air Jordan 1 &#34;Rookie of the Year&#34; released in November 2018.<br>\r\nManufacturer Sku: 555088 700<br>\r\nGender: Mens<br>\r\nColorway: GOLDEN HARVEST/BLACK-SAIL<br>\r\nPrice: &pound; 300\r\n', 'images/roty.jpg'),
(55, 17, 'The Union x Air Jordan 1', 'The Union x Air Jordan 1 &#39;Storm Blue&#39; is one of two special editions of Michael Jordan\'s first signature shoe from the Los Angeles menswear boutique. The cut and paste theme of the collaboration by Union combines two original colorways of the Air Jordan 1 into one shoe. For the \"Storm Blue\" colorway. <br>\r\nThe Union x Air Jordan 1 \"Storm Blue\" was released in limited quantities in November 2018.<br>\r\nManufacturer Sku:BV1300 146<br>\r\nGender:Mens<br>\r\nColorway: WHITE/STORMBLUE-VARSITY RED<br>\r\nPrice: &pound; 900', 'images/unionaj1.jpg'),
(56, 17, 'Not For Resale', 'The Air Jordan 1 &#34;Not For Resale - Maize&#34; is one of two versions of the special graphic edition of Michael Jordan\'s first signature shoe that encourages users to wear their pairs. The unique colorway features numerous messages across the upper that provide tongue-in-cheek references to sneaker culture, including &#34;NOT FOR RESALE&#34; on the midsole and &#34;NO PHOTOS,&#34; &#34;PLEASE CREASE,&#34; and &#34;WEAR ME&#34; across the upper. More statements are found on the interior, including &#34;GENERAL RELEASE&#34; and &#34;NO L&#39;s.&#34; This colorway features a black, white, and yellow color palette. The Air Jordan 1 &#34;Not For Resale - Yellow&#34; released in December 2018.<br>\r\nManufacturer Sku:861428 107<br>\r\nNickname: Not For Resale - Maize<br>\r\nGender: Mens<br>\r\nColorway: SAIL/BLACK-VARSITY MAIZE<br>', 'images/notresell.jpeg'),
(57, 17, 'Legends Of Summer', 'Produced in extremely limited quantities for Justin Timberlake&#39;s Legends of Summer Tour, this friends and family edition of the Air Jordan 1 features an all-black colorway built in premium leather, sued. One of the rarest Air Jordan 1 colorways in the world.<br>\r\nManufacturer Sku: 417485 977<br>\r\nNickname: Legends of Summer<br>\r\nGender: Mens<br>\r\nColorway: UNI RED/WHITE<br>\r\nMaterials: Leather, Suede<br>', 'images/legends.jpg'),
(58, 17, 'Dave White', 'his special limited edition colorway of the Air Jordan 1 by artist Dave White features a wild redesign of the iconic silhouette with everything from elephant print paneling to a faded midsole.<br>\r\nManufacturer Sku: 464803 001<br>\r\nNickname: Dave White<br>\r\nGender: Mens<br>\r\nColorway: BLACK/SPORT RED-WHITE<br>\r\nMaterials: Leather, Rubber<br>', 'images/davewhite.jpg'),
(59, 17, 'Igloo', 'Miami&#39;s annual art festival meant one thing for sneakerheads in 2017: the release of the Air Jordan 1 High 	&#34;Miami&#34; pack featuring two colorways of the iconic model with tropical vibes. Also including a &#34;Rust Pink	&#34; edition, here we have the minty &#34;Igloo&#34; Jordan 1 which takes its color inspiration from the iconic Art Deco architecture of Miami. Released only by select Miami sneaker shops, the Air Jordan 1 Miami pack easily makes for the two most sought-after colorways of the shoe to release in 2017 and that	&#39;s counting the highly popular &#34;Gold Top Three	&#34;version.<br>\r\nManufacturer Sku: 861428 100<br>\r\nNickname: Igloo<br>\r\nGender: Mens<br>\r\nColorway: WHITE/BLACK-IGLOO<br>\r\nMaterials:Leather<br>', 'images/igloo.jpg'),
(61, 17, 'Quai 54 Friends & Family', 'The Quai 54 streetball tournament in France has inspired Jordan Brand to produce some of the most limited and coveted sneakers in their history, and what you see here is certainly no exception. Given only to friends and family of Quai 54 and Jordan Brand, this Air Jordan 1 High from the 2017 tournament features a distinct &#39;split&#39; color block with the left shoe in red on the lateral side and black on the medial, and the right shoe with bright blue on the lateral side and black on the medial. The friends and family Air Jordan 1 Quai 54 is no doubt one of the most unique looks for the silhouette ever.<br>\r\nManufacturer Sku: 767119 XC<br>\r\nNickname: Quai 54 Friends & Family<br>\r\nPrice: &pound:1,800\r\nGender: Mens<br>\r\nColorway: BLACK/UNI RED-IT BLU-BLK<br>', 'images/quai.jpg'),
(62, 17, 'Boston Celtics', 'Inspired by the Boston Celtics, this Air Jordan 1 in green, gold, and white even comes complete with a tonal parquet court graphic on the green panels to reference the iconic court design of the Boston Garden.<br>\r\nManufacturer Sku	555088 315<br>\r\nNickname: Celtics<br>\r\nGender: Mens<br>\r\nColorway: CLOVER/METALLIC GOLD-WHITE-BLK<br>\r\nMaterials: Leather<br>', 'images/celtics.jpg'),
(63, 17, 'Gold Toe', 'Not to be confused with the &#34;Gold Top Three&#34;colorway, the Air Jordan 1 High OG released in a second white, black, and gold patent leather combination in 2018 for the NBA All-Star Weekend festivities. The &#34;Gold Toe&#34; Air Jordan 1 features—you guessed it gold color blocking on the toe panels, while a &#34;Black Toe&#34;-style colorblock is found on each lateral side and a &#34;Bred&#34; style block is on each medial side. You just can&#34;t go wrong with a gold pair of Air Jordan 1s. The Air Jordan 1 Gold Toe is a must-have for any fan of the iconic silhouette.<br>\r\nManufacturer Sku: 861428 007 <br>\r\nNickname: Gold Toe<br>\r\nGender: Mens\r\nColorway: BLACK/METALLIC GOLD-SUMMIT WHI<br>\r\nMaterials: Leather, Rubber<br>', 'images/goldtoe.jpg'),
(64, 1, 'Chlorophyll', 'Now one of the most sought after Air Max 1&#34;s ever, this is Pattas famed &#34;Chlorophyll&#34; colorway in the original look with green denim paneling.&#34; The sneaker released for their 5th anniversary in 2009 in limited quantities, and is now becoming increasingly rare in deadstock condition.<br>\r\nManufacturer Sku: 366379 100<br>\r\nNickname: Patta - Chlorophyll<br>\r\nGender: Mens<br>\r\nColorway: WHITE/CHLOROPHYLL-MATTE SILVER<br>\r\nMaterials: Canvas, Leather, Synthetics<br>', 'images/chloro.jpeg'),
(65, 1, 'Milan', 'From the Home Turf pack from 2013 representing various cities around the globe, this clean version of the Air Max 1 was designed for Milan. The sought after colorway features a premium suede upper in tonal tan with bright pink accents throughout.<br>\r\nManufacturer Sku: 587922 226<br>\r\nNickname:Milan<br>\r\nGender: Mens<br>\r\nColorway: LINEN/LINEN-ATOMIC RED-SAIL<br>\r\nMaterials: Leather, Suede<br>\r\nPrice: %pound; 280', 'images/milan.jpg'),
(66, 1, 'Piet Parra 2018', 'Dutch artist Parra is responsible for some of the most sought-after Nike Air Max 1 sneakers ever. In 2018 Parra renewed his collaboration with Nike, using the Air Max 1 as his canvas yet again. The 2018 Parra x Nike Air Max 1 is his most unique take on the shoe yet. The stripes and polka dots on the sneaker are modeled after Parra&#39;s abstract paintings of Dutch cityscapes and countrysides. With the colorful patterns on the mudguard and heel, the rest of the shoe&#39;s upper features a clean blend of light grey and white with a blue Swoosh and a multi-colored outsole. The Parra x Nike Air Max 1 for 2018 is another unforgettable work of sneaker art by the revered artist and sneaker aficionado.<br>\r\nManufacturer Sku: AT3057 100<br>\r\nNickname:Parra<br>\r\nGender: Mens<br>\r\nColorway: White/Pure Platinum<br>', 'images/pietparra.jpg'),
(68, 1, 'F&F \"Piet Parra 2018\"', 'The Parra x Nike Air Max 1 &#34;Friends & Family&#34; is the extremely rare alternate edition of the popular 2018 release by the Dutch artist and Air Max aficionado. The shoe features the same multi-colored and multi-patterned design of the retail version, but replaces the midfoot&#39;s construction with a Swooshless cloud graphic panel. <br>It also features premium tumbled leather on the upper in place of the standard version&#39;s felt textile material. The Parra x Nike Air Max 1 &#34;Friends & Family&#34; was only given to Parra&#39;s inner circle and select friends and family of Nike, and was never released at retail.<br>\r\nManufacturer Sku: AQ9973 100<br>\r\nNickname: Friends & Family<br>\r\nGender: Mens<br>\r\nColorway: WHITE/MULTI-COLOR<br>', 'images/f&fparra.jpg'),
(69, 20, 'Skepta II', 'This Air Max hybrid design is the brainchild of famed grime and hip-hop artist Skepta. The Skepta x Nike Air Max 97/BW released in 2018 and came on the heels of Skepta\'s Air Max 97 project in 2017. The sneaker combines the upper of Air Max BW, which first came out in 1991, with the full-length Air sole of the Air Max 97. For the colorway, Skepta opted for a clean look. The bright white upper features blue accents on the left foot and red accents on the right.<br>\r\nManufacturer Sku: AO2113 100<br>\r\nColorway: SUMMIT WHITE/HYPER COBALT<br>\r\nMaterials: Multi, Rubber<br>\r\nGender: Mens<br>\r\nPrice: &pound;250-350', 'images/skepta2.jpg'),
(70, 28, 'Crimson <br> Noble F&F', ' The rarest colorway of Pharrell&#34;s adidas NMD of all, this burgundy version was given out only to friends and family. The upper features tonal embroidery with Japanese characters that fittingly translate to &#34;friends&#34; and &#34;family&#34; on opposite feet.\r\nManufacturer Sku	BB0617<br>\r\nNickname	Friends and Family<br>\r\nGender	Mens<br>\r\nColorway	MAROON/WHITE<br>\r\nMaterials	Boost, Synthetics<br>\r\nPrice: &pound:5,000<br>', 'images/pwnoble.jpg'),
(71, 29, 'Packers', 'Instapump Fury OG PAckers V69975<br>\r\nManufacturer Sku	V69975<br>\r\nGender	Mens<br>\r\nColorway	CAMO-PRIMAL GREEN/DKBROWN<br>', 'images/furyOG.jpg'),
(72, 30, 'Black', 'Workout Plus CN2126\r\nManufacturer Sku	CN2126\r\nGender	Mens\r\nColorway	BLACK/CARBON/RED/ROYAL', 'images/workout.jpg');

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
(27, 'Blaze Of Glory', 31),
(28, 'Human Race', 32),
(29, 'Fury OG', 34),
(30, 'Lo', 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_links_shoes_shoes_id` (`shoe_id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk__models__brands__brand_id` (`brand_id`);

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk__shoes__styles__style_id` (`style_id`) USING BTREE;

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
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `fk_links_shoes_shoes_id` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`id`);

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `fk__models__brands__brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `shoes`
--
ALTER TABLE `shoes`
  ADD CONSTRAINT `fk__shoess__styles__style_id` FOREIGN KEY (`style_id`) REFERENCES `styles` (`id`);

--
-- Constraints for table `styles`
--
ALTER TABLE `styles`
  ADD CONSTRAINT `fk__styles__models__model_id` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
