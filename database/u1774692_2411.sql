-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2018 at 01:43 AM
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
(3, 1, 'Elephant', 'Back by popular demand, a Nike legend - the atmos x Air Max 1 - makes its long-awaited return. The undisputed winner of the Air Max Day 2016 Vote Back campaign, the model stays true to the OG 2007 design with striking Jade accents to the tongue, heel and patent leather Swoosh.</br> The meticulous colour-blocking and ever-popular print to the toe box, heel and lining are inspired by elephants in the water. One of Tinker Hatfield’s revolutionary sneaker designs.</br> \r\n\r\nManufacturer :908366 001</br> \r\n\r\nNickname:Atmos Elephant 2017</br> \r\n\r\nGender: Mens</br> \r\n\r\nMaterials: Multi, Rubber</br> ', 'images/elephant.jpg'),
(4, 8, 'Cactus Jacks', 'Following his popular Nike Air Force 1 collaboration with mix-and-match Swooshes, Travis Scott continued his reign as one of the sneaker worlds hottest collaborators in 2018 with the Air Jordan 4 Cactus Jack.</br> <br>\r\n\r\n\r\n\r\nManf Sku: AQ8766 700<br>\r\n\r\n\r\n\r\nNickname: Cactus Jacks<br>\r\n\r\n\r\n\r\nGender: Mens</br>\r\n\r\n\r\n\r\nColorway: Sky Blue / Black</br>\r\n\r\n\r\n\r\nMaterials: Multi, Rubber</br>\r\n\r\n\r\n\r\nPrice: &pound;250 - &pound:400</br>', 'images/cactus.jpg'),
(5, 5, 'Turtledove', 'After the success of the Yeezy Boost 750, adidas introduced a low-top option with the Yeezy Boost 350 to kick off summer 2015. Many would call the silhouette the more preferred of the two sneaker choices. Credit that greatly to the easy slip-on sock-like feel. The inaugural colorway earns the \"Turtledove\" name, as it sports Turtledove and Blue Grey woven throughout the uppers Primeknit construction and a white TPU sole that wraps around full-length Boost foam cushioning. The matching white heel tab sports red accents to complete the clean look. Needless to say that the Turtledove has reached legendary status.</br>Manf Sku: AQ8766 700<br>\r\nRelease Date: 6/27/15</br>\r\nNickname: Turtle Dove.</br>\r\nManufacturer Sku AQ4832 </br>\r\nGender: Mens</br>\r\nColorway:TURTLE/BLUGRA/CWHITE </br>\r\nMaterials: Boost, Primeknit</br>\r\nPrice: &pound;750 - &pound:1200</br> \r\n\r\n', 'images/350TD.jpg'),
(6, 7, 'Waverunner', 'Ride the wave! Adding another unique sneaker to his line Kanye West introduced the adidas Yeezy Boost 700 Wave Runner in 2017.</br>\r\nGender	Mens</br> \r\nColorway: MGSOGR/CWHITE/CBLACK</br>\r\nMaterials: Leather, Suede, Synthetics</br>\r\nPrice :&pound350.\r\n', 'images/700og.jpg'),
(7, 7, 'Waverunner', 'Ride the wave! Adding another unique sneaker to his line Kanye West The Adidas Yeezy Boost 700 Wave Runner in Mauve. .</br>\r\nManufacturer Sku: B75571</br>\r\nNickname: Wave Runner</br>\r\nGender	Mens</br> \r\nColorway: MGSOGR/CWHITE/CBLACK</br>\r\nMaterials: Leather, Suede, Synthetics</br>\r\nPrice :&pound250.', 'images/700m.jpg'),
(8, 9, 'Raptors', 'n 2018 Jordan Brand took the original black, purple, and red palette from the Air Jordan 7 and used it to create the Air Jordan 4 \"Raptors.\" The fierce colorway was rumoured to be designed by Drake, drawing inspiration from his beloved Toronto Raptors. The Air Jordan 4 \"Raptors\" has a premium black suede construction with a purple speckled midsole and bright red accents.\r\nManufacturer: AQ3816 065\r\nNickname: Raptors</br>\r\nGender: Mens</br>\r\nColorway: BLACK/COURT PURPLE</br>\r\nMaterials: Nubuck, Rubber</br>\r\nPrice : &pound169</br>', 'images/raptors.jpg'),
(9, 10, 'Complexcon', 'The Concepts x New Balance 999 “Hyannis” was released by the Boston sneaker shop in 2017 as an encore edition of the famous 2011 “Kennedy” colorway.\r\nManufacturer: M999CP1</br>\r\nNickname: Hyannis</br>\r\nGender: Mens</br>\r\nColorway: Beige/ tan/ navy</br>\r\nMaterials: Multi, Rubber</br>\r\nPrice: &pound300', 'images/complexconnb999.jpg'),
(10, 12, 'Social Status', 'Inspired by off-season sailing in the Hamptons, this premium edition of the New Balance 1600 by Social Status features a blue denim base with navy tumbled leather and accents in tan and teal.\r\nManufacturer: CM1600SS\r\nNickname: Winter in the Hamptons\r\nGender: Mens\r\nColorway: BLUE/GREEN\r\nMaterials: Rubber, Suede\r\nPrice: &pound59', 'images/social.jpg'),
(12, 13, 'City Rivalry', 'In 2016 New Balance and Concepts teamed up for the memorable “City Rivalry” pack, featuring the 997 and 998 in colorways inspired by the sports rivalry between Boston and New York City. This 997 represents New York City, featuring a bright green suede upper with reflective silver accents to signify the Statue of Liberty.\r\nManufacturer: M997NSY\r\nNickname: Concepts\r\nGender: Mens\r\nColorway: TEAL/GREY\r\nMaterials: Suede, Synthetics\r\nPrice &pound200', 'images/NBrivalry.jpg'),
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
(29, 1, 'Masters - Friends & Family', 'The Nike Air Max 1 “Master” Friends and Family edition in white is an extremely rare alternate colorway of the celebratory design that came out on Air Max Day 2017.\r\nManufacturer Sku: 910772 001 </br>\r\nNickname: Masters <br>\r\nGender: Mens</br>\r\nColorway: BLACK/BLACK-UNIVERSITY RED</br>\r\nMaterials:Multi, Rubber</br>\r\nPrice: &pound10,000</br>', 'images/ffmas.jpg'),
(30, 9, 'Undefeated', ' Model:	Air Jordan , Air Jordan 4 (IV) Colorway:	deep green/clem-black-dk Style Code:	  Year of Release:	2005 News & Updates:	Air Jordans Information:	Air Jordans , Air Jordan 4 (IV) Credits:	Click Here The Air Jordan 4 (IV) Retro – Undefeated are the rarest Air Jordan 4 (IV) of them all.  It features a green upper which has a faded look to it, with orange laces and accents.  IT was Jordan brand’s first collaboration, and is said to be inspired from the MA-1 Flight Jacket.  Only 79 pairs were ever produced!', 'images/undefeated4.jpg'),
(31, 9, 'Kaws', 'World-renowned artist KAWS joins forces with an icon of an entirely different world, uniting with Nike\'s Jordan brand to deliver a capsule collection that is surely destined to go down in history. Serving as the collection\'s sole footwear offering, the Air Jordan 4 Retro is given a complete overhaul, reworking the distinctive silhouette in an all-out suede execution. The shoe\'s suede upper features an embroidered rendition of the famed \'Companion\' artwork, with a suede trimmed midsole and glow-in-the-dark ice sole perfectly completing the design. To the sole, tongue and heel all feature the recognizable illustrations of Brian Donnelly, with the Jumpman logo completing proceedings from Nike\'s end.  Embroidered Suede Uppers Suede Overlays Tonal Midsole With Suede Overlays Glow-In-The-Dark Ice Sole Illustrated Sole Unit Style Code: 930155-003', 'images/kaws4.jpg'),
(32, 9, 'Oregon PE', 'DJ Clark Kent?resides in the elite footwear fraternity of those with the Air Jordan 4 “Jumpduck” Oregon PE. Detailed images show more of the collegiate colorway, highlighting the bright yellow outsole and green speckled accents. A white leather base benefits from dark grey lining, with school spirit popping up on the tongue, heel, and hang tag. Like the other Oregon exclusives, don?t expect these to release anytime soon.', 'images/oregon4.jpg'),
(33, 9, 'Cav\'s', 's it Knicks, or is it Cavs? Regardless of the name, you can consider these “copped” as Jordan Brand unveils the first new Retro colorway in adult sizes of the Air Jordan IV of 2012. The Black/Orange/Blue colorway was chosen as a tribute to Jordan’s historic jumpshot over Craig Ehlo in 1989, when MJ floated and froze in mid-air to knock down a series-winning jumper as the game expired. What concluded was one of the most iconic 5-second spans in the history of sports, as Jordan sank the jumper and pumped his fist in unbridled celebration.  The sneaker is predominantly black and features colors Game Royal and Safety Orange.', 'images/cavs4.jpg'),
(34, 9, 'Levi\'s - White', 'Introducing the Levis x Nike Air Jordan 4 White which launches alongside a darker colourway this month.  Few denim-crafted silhouettes create mayhem like these Jordan collaborations. Just like the first pair, this is a full homage to your favourite pair of jeans. A hard-wearing denim covers from heel to toe, on this pair featuring in a white wash colourway.  It’s the attention to detail which makes the Levi’s Jordan 4 White so appealing. Stitching gives the look and feel of a pair of jeans whilst all the iconic Jumpman detailing remains. That includes a visible Air Unit in the heel as well as metallic lace locks.  The only contrast to this white colourway comes in the form of a gum outsole underfoot as well as the tan leather Levi’s patch. To finish, Jumpman branding hits the tongue.', 'images/whitelevi4.jpg'),
(35, 17, 'Rust Pink', 'Jordan Brand paid tribute to Miami with a special two-colorway set of the Air Jordan 1 High featuring the pink and turquoise tones associated with South Beach. A special limited release in 2017, the “Rust Pink” edition is available here, featuring the original “Black Toe” color block, but with a muted pink shade replacing the usual red heel panels and outsole. The Air Jordan 1 Rust Pink joins its “Igloo” counterpart to become the two most sought-after Air Jordan 1’s of 2017 due to their extremely limited availability. Cop some South Beach vibes with your own pair now. Manufacturer Sku	861428 101 Nickname	Rust Pink Gender	Mens Colorway	WHITE/BLACK-RUST PINK Materials	Leather', 'images/rustpink.jpg'),
(36, 17, 'NRG Off White', 'Virgil Abloh continued to focus his design attention on the Air Jordan 1 in 2018 by dropping a massively anticipated white colorway. The Air Jordan 1 x Off-White “White” was even harder to come by than the initial “Chicago” colorway that came out in 2017. The white version released exclusively at select retailers in Europe, and instantly became one of the most sought after sneaker releases of the year.', 'images/nrg1.jpg'),
(37, 17, 'UNC - Off White', 'For his third edition of the monumental Off-White x Air Jordan 1, Virgil Abloh focused on the \"UNC\" colorway of Michael Jordan\'s first signature shoe. Released in June 2018, the Off-White x Air Jordan 1 \"UNC\" features the recognizable white and Carolina blue leather upper. The colors are complemented by Abloh\'s deconstructed aesthetic and signature details such as bright orange detailing and a red zip tie. Like the \"Chicago\" and all-white colorways before it, the Off-White x Air Jordan 1 \"UNC\" was an instant hit that was coveted by sneaker connoisseurs around the globe.', 'images/unc.jpg'),
(38, 17, 'Chicago - Off White', 'For his third edition of the monumental Off-White x Air Jordan 1, Virgil Abloh focused on the \"UNC\" colorway of Michael Jordan\'s first signature shoe. Released in June 2018, the Off-White x Air Jordan 1 \"UNC\" features the recognizable white and Carolina blue leather upper. The colors are complemented by Abloh\'s deconstructed aesthetic and signature details such as bright orange detailing and a red zip tie. Like the \"Chicago\" and all-white colorways before it, the Off-White x Air Jordan 1 \"UNC\" was an instant hit that was coveted by sneaker connoisseurs around the globe.', 'images/chicago.jpg'),
(39, 18, 'V2 - Black', 'Just like that previous design, Virgil takes a deconstructed approach and imparts that sense of Industrialism throughout. Lightweight mesh covers the upper of the Off-White x Nike Presto ‘White’. This clean colourway couldn’t be more perfect for the summer months. A beige coloured Swoosh sits across the sidewall with that signature orange tab, now synonymous with these exclusives.\r\n\r\nA chunky, deconstructed tongue brings even more comfort whilst “AIR” insignia gets stamped to the heel. With such a huge fan following, this latest Off-White is a guaranteed sellout.', 'images/blackpresto.jpeg'),
(40, 18, 'V2 - White', 'Just like that previous design, Virgil takes a deconstructed approach and imparts that sense of Industrialism throughout. Lightweight mesh covers the upper of the Off-White x Nike Presto ‘White’. This clean colourway couldn’t be more perfect for the summer months. A beige coloured Swoosh sits across the sidewall with that signature orange tab, now synonymous with these exclusives.\r\n\r\nA chunky, deconstructed tongue brings even more comfort whilst “AIR” insignia gets stamped to the heel. With such a huge fan following, this latest Off-White is a guaranteed sellout.', 'images/whitepresto.jpeg'),
(41, 18, 'OG - Multi', 'OFF WHITE founder and designer Virgil Abloh shook up sneaker culture with his highly anticipated \"The Ten\" footwear collection, created in collaboration with Nike. The collection assembles 10 models, broken up into two categories – \"REVEALING\" and \"GHOSTING.\" Comprised of both legacy designs and Nike\'s newest innovations, here we highlight Abloh\'s interpretation of the classic Air Presto shoe. The selected models are split in half under the aforementioned categories, with the \"REVEALING\" component arriving first in a hand-cut, open-source, and reconstructed look. The pair shares design cues with its counterparts, most notably the explicit \"AIR\" messaging and exposed stitching. A bold black leather Swoosh is woven into the knitted black patchwork-style upper. Straps, additional orange accents, sail-colored caging and a matching sole round out the shoe.', 'images/ogpresto.jpg'),
(42, 1, 'Watermelon', 'Without a shadow of a doubt, the Nike Air Max 1 is one of the most iconic sneaker models in history, and the Nike Air Max 1 Watermelon/South Beach perfectly embodies everything that is right about the silhouette. Unveiled as part of the Swoosh’s Air Max Day 2018 celebrations, the shoe takes some of Nike’s classic ’70s running features and combines them with a clean and modern design.\r\n\r\nPainted in a watermelon like colourway of green and pink, swathes of light grey and white can be seen throughout. Swoosh branding adorns the tongue, side panels, and heel portion, and the shoe sits on top of a foam midsole for comfort. An exposed Air unit can be seen around the back for that distinctive Air Max 1 aesthetic.\r\n\r\nIf you are still searching for something unique yet understated to rock this summer, then look no further than the Nike Air Max 1 South Beach! We recommend you go true to size for the perfect fit!', 'images/watermelon.jpg'),
(43, 17, 'Shatter Backboards', 'Here we take a closer look at the Jordan 1 Satin Shattered Backboard Orange Black Womens. The Jordan Brand has been creating some incredible women’s exclusive silhouettes this year as part of Nike’s Unlaced Initiative, and these reworked Jordan 1s are not to be missed.\r\n\r\nThe Jordan 1 Satin Shattered Backboard’s colour blocked design first appeared on the scene in 2015 and has been sought after by sneakerheads ever since. So we reckon that this women’s rendition will fly off the shelves in no time. The Jordan 1’s vibrant orange panels are highlighted by shimmering satin in this release, giving this sneaker a one-of-a-kind aesthetic.\r\n\r\nPremium black and white leather gives the Jordan 1 Satin Shattered Backboard a luxurious appeal. As a result, this stunning mid-top shoe can be taken from day to night in effortless style. Singing sensation and Nike ambassador SZA recently endorsed the Jordan 1 in a fashion-forward photoshoot, giving them certified A-List approval.', 'images/shatter.jpg'),
(44, 4, 'Off White 90', 'OFF WHITE founder and designer Virgil Abloh shook up sneaker culture with his highly anticipated \"The Ten\" footwear collection, created in collaboration with Nike. The collection assembles 10 models, split in half between two categories – \"REVEALING\" and \"GHOSTING.\" Comprised of both legacy designs and Nike\'s newest innovations, here we highlight Abloh\'s interpretation of Tinker Hatfield\'s Air Max 90. The \"REVEALING\" component hit retailers first in a hand-cut, open-source, and reconstructed look. The pair shares design cues with its counterparts, most notably the exposed stitching and bold Swoosh. Abloh dresses the Air Max 90 in suede, and nylon-like material, with paneling that gives it a high fashion look. The upper rests atop of a translucent sole unit. Additional orange accents complete the shoe.', 'images/ow90.jpg'),
(45, 20, 'OG White', 'Virgil Abloh put his unique twist on the Nike Air Max 97. Made in collaboration with Off-White, they were a part of \"The 10\" Collection, and dropped in the second set from the two brands, the \"Ghosting\" Pack. They come in a white, cone and ice blue colorway. Sporting a reconstructed translucent upper, featuring a semi-revealing material to tie-in with the theme. Various materials are found throughout, as well as a red zip-tie and branding on the tongue, black branding throughout the rest of the shoe, green lace tips and a translucent outsole. Their release date was November 1st, 2017 where they were available alongside the rest of the Off-White x Nike \"Ghosting\" Collection.', 'images/97owW.jpg'),
(46, 20, 'V2 - Menta', 'The Off-White x Nike Air Max 97 \"Menta\" is a refreshed edition of the remodeled Air Max 97 by Virgil Abloh. Originally released within the original “The Ten” collection in 2017, the modified Air Max 97 by Abloh stayed hot in 2018 with a number of new colorways, including this striking “Menta” rendition. The colorway features a Wolf Grey shade for its semi-transparent upper, midsole, and translucent rubber outsole accented with a multi-color fade across the printed Swooshes transitioning from Menta green, to bright blue, to red. Abloh’s signature details are also added, including the bold text on the medial side, exposed stitching, and a large blue zip-tie added to the laces. The Off-White x Nike Air Max 97 \"Menta\" released in October 2018 in extremely limited quantities.\r\nManufacturer Sku	AJ4585 101\r\nNickname	Menta\r\nGender	Mens\r\nColorway	OFF WHITE/MENTA-WOLF GREY', 'images/97menta.jpg'),
(47, 20, 'V2 - Black', 'The Off-White x Nike Air Max 97 \"Black\" is a stealthy edition of the incredibly popular design by Virgil Abloh. Following his first remodel of the classic Air Max model that released within the monumental “The Ten” collection in 2017, this 2018 release basically reverses the original white colorway. The Off-White x Nike Air Max 97 \"Black\" features a matte black finish across the upper with white Swooshes. All the rest of Abloh’s special detailing seen on other versions of his AM97 are also present, including the bold branding text on the medial side, “AIR” printed on the heel, and a large zip-tie added to the laces. The Off-White x Nike Air Max 97 \"Black\" released in October 2018 in extremely limited supplies.\r\nManufacturer Sku	AJ4585 001\r\nNickname	OFF-WHITE\r\nGender	Mens\r\nColorway	BLACK/WHITE-CONE-BLACK', 'images/97owb.jpg'),
(48, 24, 'Fear Of God', 'Era 95 Reissue (FOG) 4000328260\r\nManufacturer Sku	4000328260\r\nNickname	FEAR OF GOD\r\nGender	Mens\r\nColorway	(FOG) MARSHMALLWBLK/PRNT\r\nMaterials	Canvas', 'images/fogvan.jpg'),
(49, 22, 'Supreme 666', 'Slip-On PRO (Supreme) VN0A347VOX4\r\nManufacturer Sku	VN0A347VOX4\r\nNickname	Supreme 666\r\nGender	Mens\r\nColorway	(SUPREME 666) CHECKER\r\nMaterials	Canvas', 'images/supvan666.jpg'),
(50, 22, 'Authentic Supreme', 'The third and final Supreme x Vans collaboration of 2016 is rooted in simplicity, with their last go \'round channeling classic aspects of their respective brands’ DNAs. The release was comprised of a Sk8-Hi Pro and Authentic Pro, the latter of which we see here. The shoe sports a canvas upper in the classic Vans checkerboard motif. Supreme\'s signature Box Logo typography appears throughout the design. The insole appears in red and features Vans branding. A vulcanized sole unit completes the look. The Supreme x Vans collab is accented in three color options: black, blue, and red. Here is the black version.', 'images/supvan.jpg'),
(51, 25, 'Velvet', 'Comfortably slip into these royal purple pumas from the Rihanna Fenty Collection. This creeper features a velvet upper and a lace closure for a snug fit. A platform rubber outsole with ridged tooling provides traction on multiple surfaces.\r\nManufacturer Sku	364466 02\r\nGender	Womens\r\nColorway	ROYALPURPLE-PURPLE-ROYPURPLE\r\nMaterials	Rubber, Velvet', 'images/creeper.jpg'),
(52, 26, 'Sonic', 'Manufacturer Sku	368276 01\r\nGender	Mens\r\nColorway	SRF WB-PMA WHT-CHNSE RD\r\nMaterials	Multi, Rubber', 'images/sonic.jpg'),
(53, 27, 'Blood Bath', '\r\nThings get gruesome with this Bloodbath PUMA Blaze of Glory by Sneaker Freaker and Packer Shoes. The three-way collab features the classic PUMA model in a shark-inspired blood-red nubuck upper.\r\n\r\nManufacturer Sku: D97046 </br>\r\nNickname: Bloodbath <br>\r\nGender: Mens</br>\r\nColorway: RIORED0BEAGLASS-BLCK-METGOLD </br>\r\nMaterials: Multi, Rubber</br>\r\nPrice: &pound150</br>  ', 'images/bloodbath.jpg');

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
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
