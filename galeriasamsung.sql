-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2025 a las 12:59:28
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `galeriasamsung`
--
CREATE DATABASE IF NOT EXISTS `galeriasamsung` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `galeriasamsung`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `samsunggalaxy`
--

DROP TABLE IF EXISTS `samsunggalaxy`;
CREATE TABLE IF NOT EXISTS `samsunggalaxy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `versionAndroid` varchar(50) NOT NULL,
  `versionActualizada` varchar(50) NOT NULL,
  `interfaz` varchar(50) NOT NULL,
  `anio` int(10) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `samsunggalaxy`
--

INSERT INTO `samsunggalaxy` (`id`, `nombre`, `modelo`, `versionAndroid`, `versionActualizada`, `interfaz`, `anio`, `imagen`) VALUES
(1, 'Samsung Galaxy', 'GT-I7500', '1.5', '2.1', 'Android Stock', 2009, 'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2017/04/03/14912339185464.jpg'),
(2, 'Galaxy Spica', 'GT-I5700', '1.6', '2.1', 'Android Stock', 2009, 'https://i.ebayimg.com/images/g/OlsAAOSwbShdCqDf/s-l400.jpg'),
(3, 'Galaxy S', 'GT-I9000', '2.1', '2.3.6', 'TouchWiz 3.0', 2010, 'https://imei24.com/img/samsung/13_51_35_Samsung-I9000-Galaxy-S-163.jpg'),
(4, 'Galaxy 3', 'GT-I5800', '2.1', '2.2', 'TouchWiz 3.0', 2010, 'https://images.samsung.com/is/image/samsung/mx_GT-I5800CWLTMM_001_Front?$624_624_PNG$'),
(5, 'Galaxy 5', 'GT-I5500', '2.1', '2.2', 'Android Stock', 2010, 'https://imei24.com/img/samsung/10_15_02_14242-samsungeuropaimg3.jpg'),
(6, 'Galaxy Apollo', 'GT-I5801', '2.1', '2.2', 'TouchWiz 3.0', 2010, 'https://imei.org/storage/files/images/8260/preview/samsung-i5801-galaxy-apollo-1.png'),
(7, 'Galaxy Nexus S', 'GT-I9023', '2.3', '4.1.2', 'Android Stock', 2010, 'https://jm24.fr/images/stories/virtuemart/product/24-03-samsung-google-nexus-s-i9023-noir-reconditionne-grade-b.jpg'),
(8, 'Galaxy Ace', 'GT-S5830', '2.2', '2.3.6', 'TouchWiz 3.0', 2011, 'https://i.ebayimg.com/images/g/OLAAAOSwZQxW6X6Y/s-l1200.jpg'),
(9, 'Galaxy Fit', 'GT-S5670', '2.2', '2.3.6', 'TouchWiz 3.0', 2011, 'https://imei.org/storage/files/images/8173/preview/samsung-galaxy-fit-s5670-1.png'),
(10, 'Galaxy Gio', 'GT-S5660', '2.2', '2.3.6', 'TouchWiz 3.0', 2011, 'https://i.ebayimg.com/images/g/qr4AAOSwN-FkEoTq/s-l1200.jpg'),
(11, 'Galaxy Mini', 'GT-S5570', '2.2', '2.3.6', 'TouchWiz 3.0', 2011, 'https://imei.org/storage/files/images/8175/preview/samsung-galaxy-mini-s5570-2.png'),
(12, 'Galaxy SL', 'GT-I9003', '2.2', '2.3.6', 'TouchWiz 3.0', 2011, 'https://www.techspot.com/images/products/2011/smartphones/org/632524847_1396253842_o.jpg'),
(13, 'Galaxy S II', 'GT-I9100', '2.3', '4.1.2', 'TouchWiz 4.0', 2011, 'https://imei.org/storage/files/images/8160/preview/samsung-i9100-galaxy-s-ii-1.png'),
(14, 'Galaxy Pro', 'GT-B7510', '2.2', '2.3.6', 'TouchWiz 3.0', 2011, 'https://images.samsung.com/is/image/samsung/es_GT-B7510ISAFOP_001_Front?$624_624_PNG$'),
(15, 'Galaxy S Plus', 'GT-I9001', '2.3', '2.3.6', 'TouchWiz 3.0', 2011, 'https://imei.org/storage/files/images/8139/preview/samsung-i9001-galaxy-s-plus-2.png'),
(16, 'Galaxy R', 'GT-I9103', '2.3', '4.0.4', 'TouchWiz 4.0', 2011, 'https://imei.org/storage/files/images/8121/preview/samsung-i9103-galaxy-r-2.png'),
(17, 'Galaxy Y', 'GT-S5369', '2.3', '2.3.6', 'TouchWiz 4.0', 2011, 'https://www.tuexperto.com/wp-content/uploads/2011/09/samsung-galaxy-y-011.jpg'),
(18, 'Galaxy Y Pro', 'GT-B5510', '2.3', '2.3.6', 'TouchWiz 4.0', 2011, 'https://loquehice.wordpress.com/wp-content/uploads/2012/06/im1-sgy-gt-b55101.jpg'),
(19, 'Galaxy Xcover', 'GT-S5690', '2.3', '2.3.6', 'TouchWiz 4.0', 2011, 'https://i.ebayimg.com/images/g/sRUAAOSwhLtlNEQ7/s-l1200.jpg'),
(20, 'Galaxy Note', 'GT-N7000', '2.3.5', '4.1.2', 'TouchWiz UX', 2011, 'https://imei.org/storage/files/images/8099/preview/samsung-galaxy-note-n7000-1.png'),
(21, 'Galaxy Nexus', 'GT-I9250', '4.0', '4.3', 'Android Stock', 2011, 'https://m.media-amazon.com/images/I/81hNt1vGNJL._AC_UF894,1000_QL80_.jpg'),
(22, 'Galaxy Ace Plus', 'GT-S7500', '2.3', '2.3', 'TouchWiz 3.0', 2012, 'https://imei.org/storage/files/images/8066/preview/samsung-galaxy-ace-plus-s7500-1.png'),
(23, 'Galaxy Ace 2', 'GT-I8160', '2.3', '4.1', 'TouchWiz 4.0', 2012, 'https://imei.org/storage/files/images/8046/preview/samsung-galaxy-ace-2-i8160-1.png'),
(24, 'Galaxy Mini 2', 'GT-S6500', '2.3', '4.1', 'TouchWiz 4.0', 2012, 'https://i.ebayimg.com/images/g/W7kAAOSwKzdh8IAE/s-l1200.jpg'),
(25, 'Galaxy Pocket', 'GT-S5300', '2.3', '4.1', 'TouchWiz 4.0', 2012, 'https://imei.org/storage/files/images/8038/preview/samsung-galaxy-pocket-s5300-1.png'),
(26, 'Galaxy Ace Advance', 'GT-S6800', '2.3', '4.1', 'TouchWiz 4.0', 2012, 'https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-ace-advance-s6800-white.jpg'),
(27, 'Galaxy S3', 'GT-I9300', '4.0', '4.3', 'TouchWiz Nature UX 1.0', 2012, 'https://m.media-amazon.com/images/I/71bYGf6u0IL.jpg'),
(28, 'Galaxy Chat', 'GT-B5330', '4.0', '4.1', 'TouchWiz Nature UX 1.0', 2012, 'https://imei.org/storage/files/images/8017/preview/samsung-galaxy-chat-b5330-1.png'),
(29, 'Galaxy Note 2', 'GT-N7100', '4.1', '4.4', 'TouchWiz Nature UX 2.0', 2012, 'https://4.imimg.com/data4/KW/DK/ANDROID-46478244/product-500x500.jpeg'),
(30, 'Galaxy Express', 'GT-I8730', '4.0', '4.1', 'TouchWiz Nature UX 1.0', 2012, 'https://imei.org/storage/files/images/7971/preview/samsung-galaxy-express-i8730-2.png'),
(31, 'Galaxy Music', 'GT-S6010', '4.0', '4.1', 'TouchWiz Nature UX 1.0', 2012, 'https://images.icecat.biz/img/norm/high/16939073-2485.jpg'),
(32, 'Galaxy S3 Mini', 'GT-I8190', '4.1', '4.2', 'TouchWiz Nature UX 1.0', 2012, 'https://i.ebayimg.com/images/g/244AAOSwL7VWqJ0g/s-l400.jpg'),
(33, 'Galaxy Premier', 'GT-I9260', '4.1', '4.2', 'TouchWiz Nature UX 1.0', 2012, 'https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-premier-i9260-new.jpg'),
(34, 'Galaxy Grand', 'GT-I9080', '4.1', '4.2', 'TouchWiz Nature UX 1.0', 2012, 'https://preview.free3d.com/img/2013/02/2202322297241470475/uok5nr46.jpg'),
(35, 'Galaxy S2 Plus', 'GT-I9105', '4.1.2', '4.2.2', 'TouchWiz 4.0', 2013, 'https://imei.org/storage/files/images/7974/preview/samsung-i9105-galaxy-s-ii-plus-1.png'),
(36, 'Galaxy Xcover 2', 'GT-S7710', '4.1.2', '4.2.2', 'TouchWiz 4.0', 2013, 'https://imei.org/storage/files/images/7972/preview/samsung-s7710-galaxy-xcover-2-1.png'),
(37, 'Galaxy Young', 'GT-S6310', '4.1.2', '4.1.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7969/preview/samsung-galaxy-young-s6310-2.png'),
(38, 'Galaxy S4', 'GT-I9500', '4.2.2', '5.0.1', 'TouchWiz Nature UX 2', 2013, 'https://imei.org/storage/files/images/7956/preview/samsung-i9500-galaxy-s4-1.png'),
(39, 'Galaxy Mega 5.8', 'GT-I9150', '4.2.2', '4.4.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7950/preview/samsung-galaxy-mega-58-i9150-1.png'),
(40, 'Galaxy Mega 6.3', 'GT-I9200', '4.2.2', '4.4.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7949/preview/samsung-galaxy-mega-63-i9200-1.png'),
(41, 'Galaxy Pocket Neo', 'GT-S5310', '4.1.2', '4.1.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7953/preview/samsung-galaxy-pocket-neo-s5310-1.png'),
(42, 'Galaxy Star', 'GT-S5280', '4.1.2', '4.1.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7954/preview/samsung-galaxy-star-s5280-1.png'),
(43, 'Galaxy S4 Mini', 'GT-i9195', '4.2.2', '4.4.2', 'TouchWiz Nature UX 2', 2013, 'https://i.ebayimg.com/images/g/hHYAAOSwG1Zg7Xp5/s-l1200.jpg'),
(44, 'Galaxy Core', 'GT-I8260', '4.1.2', '4.2.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7946/preview/samsung-galaxy-core-i8260-2.png'),
(45, 'Galaxy Ace 3', 'GT-S7270', '4.2.2', '4.4.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7938/preview/samsung-galaxy-ace-3-1.png'),
(46, 'Galaxy Trend', 'GT-S7392', '4.1.2', '4.1.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/8011/preview/samsung-galaxy-s-duos-s7562-1.png'),
(47, 'Galaxy Note 3', 'SM-N9000', '4.3', '5.0', 'TouchWiz Nature UX 2', 2013, 'https://imei.org/storage/files/images/7931/preview/samsung-galaxy-note-3-2.png'),
(48, 'Galaxy Core Plus', 'SM-G3500', '4.2', '4.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7926/preview/samsung-galaxy-core-plus-1.png'),
(49, 'Galaxy Express 2', 'SM-G3815', '4.2.2', '4.4.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7921/preview/samsung-galaxy-express-2-1.png'),
(50, 'Galaxy Trend Lite', 'GT-S7390', '4.1.2', '4.1.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7925/preview/samsung-galaxy-fresh-s7390-1.png'),
(51, 'Galaxy Trend Plus', 'GT-S7580', '4.2.2', '4.2.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7917/preview/samsung-galaxy-s-duos-2-s7582-1.png'),
(52, 'Galaxy Light', 'SGH-T399', '4.2.2', '4.4.2', 'TouchWiz Nature UX', 2013, 'https://imei24.com/img/samsung/13_38_49_Samsung-Galaxy-LIght-SGH-T399.jpg'),
(53, 'Galaxy Golden', 'GT-I9230', '4.1.2', '4.2.2', 'TouchWiz Nature UX', 2013, 'https://imei.org/storage/files/images/7919/preview/samsung-i9230-galaxy-golden-1.png'),
(54, 'Galaxy Grand Neo', 'GT-I9060', '4.2.2', '4.2.2', 'TouchWiz Nature UX', 2014, 'https://imei.org/storage/files/images/7901/preview/samsung-galaxy-grand-neo-1.png'),
(55, 'Galaxy Note 3 Neo', 'SM-N750', '4.3', '5.1.1', 'TouchWiz Nature UX 2', 2014, 'https://imei.org/storage/files/images/7898/preview/samsung-galaxy-note-3-neo-1.png'),
(56, 'Galaxy S5', 'SM-G900F', '4.4.2', '6.0.1', 'TouchWiz Nature UX 3', 2014, 'https://imei.org/storage/files/images/7891/preview/samsung-galaxy-s5-1.png'),
(57, 'Galaxy Ace Style', 'SM-G310', '4.4.2', '4.4.2', 'TouchWiz Essence', 2014, 'https://imei.org/storage/files/images/7875/preview/samsung-galaxy-ace-style-1.png'),
(58, 'Galaxy Ace 4', 'SM-G357', '4.4.2', '4.4.2', 'TouchWiz Essence', 2014, 'https://imei.org/storage/files/images/7831/preview/samsung-galaxy-ace-style-lte-g357-1.png'),
(59, 'Galaxy Core 2', 'SM-G355', '4.4.2', '4.4.2', 'TouchWiz Essence', 2014, 'https://tiendaecos.com/wp-content/uploads/2015/07/Samsung-Galaxy-Core-2-unveiled.jpg'),
(60, 'Galaxy S5 Mini', 'SM-G800', '4.4.2', '6.0.1', 'TouchWiz Nature UX 3', 2014, 'https://image.alza.cz/products/RS151a2/RS151a2.jpg?width=500&height=500'),
(61, 'Galaxy Star 2', 'SM-G130', '4.4.2', '4.4.2', 'TouchWiz Essence', 2014, 'https://gsm-img.gishan.cc/5870/7.jpg'),
(62, 'Galaxy Young 2', 'SM-G130', '4.4.2', '4.4.2', 'TouchWiz Essence', 2014, 'https://imei24.com/img/samsung/12_15_29_Galaxy_young_2.jpg'),
(63, 'Galaxy Trend 2', 'SM-G318', '4.4.2', '4.4.2', 'TouchWiz Essence', 2014, 'https://es.static.webuy.com/product_images/M%C3%B3viles/Moviles%20-%20Android/SSAMSMG318HLIBB_l.jpg'),
(64, 'Galaxy Alpha', 'SM-G850', '4.4.4', '5.0.2', 'TouchWiz Nature UX 3', 2014, 'https://i.ebayimg.com/images/g/1LQAAOSwHQ9WVnKd/s-l400.jpg'),
(65, 'Galaxy Grand Prime', 'SM-G530', '4.4.4', '5.1.1', 'TouchWiz Nature UX 3', 2014, 'https://i.ebayimg.com/images/g/ukwAAOSwnc1a58X2/s-l1200.jpg'),
(66, 'Galaxy Mega 2', 'SM-G750', '4.4.4', '5.1.1', 'TouchWiz Nature UX 3', 2014, 'https://sdtekimg.com/phoneimg/samsung/samsung-galaxy-mega-2.jpg'),
(67, 'Galaxy Note 4', 'SM-N910', '4.4.4', '6.0.1', 'TouchWiz Nature UX 3', 2014, 'https://i.ebayimg.com/images/g/HWMAAOSwS0tekyqU/s-l1200.jpg'),
(68, 'Galaxy Note Edge', 'SM-N915', '4.4.4', '6.0.1', 'TouchWiz Nature UX 3', 2014, 'https://techmanic.co.uk/dx-images/products/img-1633504579170.jpg'),
(69, 'Galaxy Pocket 2', 'SM-G110', '4.4.2', '4.4.2', 'TouchWiz Essence', 2014, 'https://media.solotodo.com/media/products/pocket_2_white.jpg'),
(70, 'Galaxy A3', 'SM-A300', '4.4.4', '6.0.1', 'TouchWiz Nature UX 3', 2014, 'https://es.static.webuy.com/product_images/M%C3%B3viles/Moviles%20-%20Android/SSAMSMA300FULIBC_l.jpg'),
(71, 'Galaxy A5', 'SM-A500', '4.4.4', '6.0.1', 'TouchWiz Nature UX 3', 2014, 'https://media.solotodo.com/media/products/Samsung-Galaxy-A5-Pearl-White.jpg'),
(72, 'Galaxy Core Prime', 'SM-G360', '4.4.4', '5.1.1', 'TouchWiz Nature UX 3', 2014, 'https://i.ebayimg.com/images/g/NjoAAOSwfa9Zq6Le/s-l1200.jpg'),
(73, 'Galaxy A7', 'SM-A700', '4.4.4', '6.0.1', 'TouchWiz Nature UX 3', 2015, 'https://www.teknozone.it/img/catalogo/a7w.jpg'),
(74, 'Galaxy J1', 'SM-J100', '4.4.4', '5.1.1', 'TouchWiz Essence', 2015, 'https://thumbs.ielectro.es/product/grans/89667.webp'),
(75, 'Galaxy S6', 'SM-G920', '5.0.2', '7.0', 'TouchWiz Nature UX 4', 2015, 'https://es.static.webuy.com/product_images/M%C3%B3viles/Moviles%20-%20Android/SSAMG920F32GNLIBB_l.jpg'),
(76, 'Galaxy S6 Edge', 'SM-G925', '5.0.2', '7.0', 'TouchWiz Nature UX 4', 2015, 'https://i.ebayimg.com/00/s/MTYwMFgxNjAw/z/4C4AAOSwH5NcrhLO/$_57.JPG?set_id=8800005007'),
(77, 'Galaxy Xcover 3', 'SM-G388', '4.4.4', '6.0.1', 'TouchWiz Essence', 2015, 'https://prod-api.mediaexpert.pl/api/images/gallery/thumbnails/images/10/1000299/Smartfon-SAMSUNG-Galaxy-Xcover-3-SM-G388-Srebrny-front-tyl-1.jpg'),
(78, 'Galaxy J5', 'SM-J500', '5.1', '6.0.1', 'TouchWiz Essence', 2015, 'https://i.ebayimg.com/images/g/BxcAAOSwB-1dioa~/s-l1200.jpg'),
(79, 'Galaxy J7', 'SM-J700', '5.1', '6.0.1', 'TouchWiz Essence', 2015, 'https://m.media-amazon.com/images/I/81ROOLfEMKL.jpg'),
(80, 'Galaxy Folder', 'SM-G150', '5.1', '5.1', 'TouchWiz', 2015, 'https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-folder-SM-G150-2.jpg'),
(81, 'Galaxy Note 5', 'SM-N920', '5.1.1', '7.0', 'TouchWiz Nature UX 4', 2015, 'https://m.media-amazon.com/images/I/614WcIiWpxL._AC_UF1000,1000_QL80_.jpg'),
(82, 'Galaxy S5 Neo', 'SM-G903', '5.1.1', '7.0', 'TouchWiz Nature UX 3', 2015, 'https://i.ebayimg.com/images/g/40AAAOSwfMRf4HTK/s-l400.jpg'),
(83, 'Galaxy J1 Ace', 'SM-J110', '4.4.4', '5.1.1', 'TouchWiz Essence', 2015, 'https://imei24.com/img/samsung/12_40_41_Samsung-Galaxy-J1-Ace-456.jpg'),
(84, 'Galaxy J2', 'SM-J200', '5.1.1', '6.0.1', 'TouchWiz Essence', 2015, 'https://i.blogs.es/c639c2/galaxy-j2/650_1200.webp'),
(85, 'Galaxy J3', 'SM-J320', '5.1.1', '6.0.1', 'TouchWiz Essence', 2015, 'https://www.movilescomponentes.com/2578-medium_default/samsung-galaxy-j3-sm-j320fn.jpg'),
(86, 'Galaxy A3 2016', 'SM-A310', '5.1.1', '7.0', 'TouchWiz Nature UX 4', 2015, 'https://m.media-amazon.com/images/I/71sotukg61L.jpg'),
(87, 'Galaxy A5 2016', 'SM-A510', '5.1.1', '7.0', 'TouchWiz Nature UX 4', 2015, 'https://images.tcdn.com.br/img/img_prod/794026/samsung_galaxy_a5_2016_16_gb_rosa_2_gb_ram_23577_3_0023b30cf133e3043bc3be64528dbc6f.jpg'),
(88, 'Galaxy A7 2016', 'SM-A710', '5.1.1', '7.0', 'TouchWiz Nature UX 4', 2015, 'https://m.media-amazon.com/images/I/7122h+6BL9L.jpg'),
(89, 'Galaxy J1 2016', 'SM-J120', '5.1.1', '6.0.1', 'TouchWiz Essence', 2016, 'https://telecomtalk.info/wp-content/uploads/2016/03/J1-2016-SM-J120.jpg.webp'),
(90, 'Galaxy S7', 'SM-G930', '6.0', '8.0', 'TouchWiz Grace UX', 2016, 'https://img.joomcdn.net/9cb91b1a12fcb21b5926948c108a0190e174e6b7_original.jpeg'),
(91, 'Galaxy S7 Edge', 'SM-G935', '6.0', '8.0', 'TouchWiz Grace UX', 2016, 'https://ae01.alicdn.com/kf/Hc553a8eb9ce8437ea44a974ae2f82610b.jpg'),
(92, 'Galaxy J5 2016', 'SM-J510', '6.0.1', '7.1.1', 'TouchWiz Essence', 2016, 'https://m.media-amazon.com/images/I/41G7guN4fCL._AC_UF1000,1000_QL80_.jpg'),
(93, 'Galaxy J7 2016', 'SM-J710', '6.0.1', '8.1', 'TouchWiz Essence', 2016, 'https://i.ebayimg.com/images/g/bL8AAOSwN5phm1~F/s-l1200.jpg'),
(94, 'Galaxy J2 2016', 'SM-J210', '6.0.1', '6.0.1', 'TouchWiz Essence', 2016, 'https://www.techspot.com/images/products/2016/smartphones/org/936481115_2020046300_o.jpg'),
(95, 'Galaxy J7 Prime', 'SM-G610', '6.0.1', '8.1', 'TouchWiz Grace UX', 2016, 'https://i.ebayimg.com/images/g/0yAAAOSw5rZghApY/s-l1600.jpg'),
(96, 'Galaxy J5 Prime', 'SM-G570', '6.0.1', '8.0', 'TouchWiz Grace UX', 2016, 'https://5.imimg.com/data5/UI/HY/MY-53330638/samsung-galaxy-j5-prime-500x500.png'),
(97, 'Galaxy Grand Prime Plus', 'SM-G532', '6.0.1', '6.0.1', 'TouchWiz Essence', 2016, 'https://www.gizmochina.com/wp-content/uploads/2017/03/Samsung-Galaxy-Grand-Prime-Plus-500x500.jpg'),
(98, 'Galaxy J1 Mini', 'SM-J105', '5.1.1', '6.0.1', 'TouchWiz Essence', 2016, 'https://www.movilescomponentes.com/2591-medium_default/samsung-galaxy-j1-mini-sm-j105h-ds.jpg'),
(99, 'Galaxy J1 Mini Prime', 'SM-J106', '6.0.1', '6.0.1', 'TouchWiz Essence', 2016, 'https://imei.org/storage/files/images/7716/preview/samsung-galaxy-j1-mini-prime-1.png'),
(100, 'Galaxy S8', 'SM-G950', '7.0', '9.0', 'Samsung Experience 9.0', 2017, 'https://cdn.alloallo.media/catalog/product/samsung/galaxy-s/galaxy-s8/galaxy-s8-coral-blue.jpg'),
(101, 'Galaxy S8+', 'SM-G955', '7.0', '9.0', 'Samsung Experience 9.0', 2017, 'https://m.media-amazon.com/images/I/51EEplY3AhL.jpg'),
(102, 'Galaxy Xcover 4', 'SM-G390', '7.0', '9.0', 'Samsung Experience 9.5', 2017, 'https://i.ebayimg.com/images/g/A5cAAOSwK2xgHrhe/s-l1200.jpg'),
(103, 'Galaxy J3 2017', 'SM-J330', '7.0', '9.0', 'Samsung Experience 9.5', 2017, 'https://m.media-amazon.com/images/I/51lLf0bA+lL.jpg'),
(104, 'Galaxy J5 2017', 'SM-J530', '7.0', '9.0', 'Samsung Experience 9.5', 2017, 'https://d2e6ccujb3mkqf.cloudfront.net/8751a009-1c10-442e-b5bb-6ad6b815ab9b-1_433ac806-5245-4163-bbd7-b2943e337751.jpg'),
(105, 'Galaxy J7 2017', 'SM-J730', '7.0', '9.0', 'Samsung Experience 9.5', 2017, 'https://www.movilescomponentes.com/2859-large_default/samsung-galaxy-j7-2017-j730.jpg'),
(106, 'Galaxy J7 Max', 'SM-G615', '7.0', '8.1', 'Samsung Experience 9.5', 2017, 'https://imei.org/storage/files/images/7703/preview/samsung-galaxy-j7-max-1.png'),
(107, 'Galaxy Note 8', 'SM-N950', '7.1.1', '9.0', 'Samsung Experience 9.5', 2017, 'https://cf5.certideal.com/18083-thickbox_default/galaxy-note-8-64-gb-gris.jpg'),
(108, 'Galaxy J2 2017', 'SM-J200', '7.0', '8.1', 'Samsung Experience 9.0', 2017, 'https://imei.org/storage/files/images/7694/preview/samsung-galaxy-j2-2017-2.png'),
(109, 'Galaxy A3 2017', 'SM-A320', '6.0.1', '8.0', 'Samsung Experience 9.0', 2017, 'https://d2e6ccujb3mkqf.cloudfront.net/702394fa-44f3-48cc-b0d6-333973d8e583-1_949b12c3-fdf8-46e5-b350-651dd81d871a.jpg'),
(110, 'Galaxy A5 2017', 'SM-A520', '6.0.1', '8.0', 'Samsung Experience 9.0', 2017, 'https://m.media-amazon.com/images/I/51SQ1GLtMHL._AC_UF894,1000_QL80_.jpg'),
(111, 'Galaxy A7 2017', 'SM-A720', '6.0.1', '8.0', 'Samsung Experience 9.0', 2017, 'https://imei.org/storage/files/images/7719/preview/samsung-galaxy-a7-2017-1.png'),
(112, 'Galaxy A8 2018', 'SM-A530', '7.1.1', '9.0', 'Samsung Experience 9.5', 2017, 'https://www.teamequipalia.es/3636-thickbox_default/samsung-galaxy-a8-2018-smartphone.jpg'),
(113, 'Galaxy A8+ 2018', 'SM-A730', '7.1.1', '9.0', 'Samsung Experience 9.5', 2017, 'https://www.muycomputer.com/wp-content/uploads/2017/12/Galaxy-A8-2018-1.jpg'),
(114, 'Galaxy S9', 'SM-G960', '8.0', '10', 'Samsung One UI 2.5', 2018, 'https://cdn.alloallo.media/catalog/product/samsung/galaxy-s/galaxy-s9/galaxy-s9-lilac-purple.jpg'),
(115, 'Galaxy S9+', 'SM-G965', '8.0', '10', 'Samsung One UI 2.5', 2018, 'https://m.media-amazon.com/images/I/51ea1BFcfbL._AC_UF1000,1000_QL80_.jpg'),
(116, 'Galaxy J2 Core', 'SM-J260', '8.1', '8.1', 'Samsung Experience 9.5', 2018, 'https://elchapuzasinformatico.com/wp-content/uploads/2018/08/Samsung-Galaxy-J2-Core.jpg'),
(117, 'Galaxy J2 Pro', 'SM-J250', '7.1', '8.1', 'Samsung Experience 9.5', 2018, 'https://cdn.shoppub.io/cdn-cgi/image/w=1000,h=1000,q=80,f=auto/oficinadosbits/media/uploads/produtos/foto/ngtrcurb/file.png'),
(118, 'Galaxy J4', 'SM-J400', '8.0', '10', 'Samsung One UI 2.0', 2018, 'https://i.ebayimg.com/images/g/F54AAOSwV2xlTnVg/s-l1200.jpg'),
(119, 'Galaxy J4+', 'SM-J415', '8.1', '10', 'Samsung One UI 2.0', 2018, 'https://es.static.webuy.com/product_images/M%C3%B3viles/Moviles%20-%20Android/SSAMJ415FND32GNLIBC_l.jpg'),
(120, 'Galaxy J6', 'SM-J600', '8.0', '10', 'Samsung One UI 2.0', 2018, 'https://d2e6ccujb3mkqf.cloudfront.net/62f57952-4f85-4daa-ad86-9d020c2fcfe6-1_16a8c035-60e2-4fbc-9dd8-ff9ffa650422.jpg'),
(121, 'Galaxy J6+', 'SM-J610', '8.1', '10', 'Samsung One UI 2.0', 2018, 'https://m.media-amazon.com/images/I/518LLerLpfL._AC_UF894,1000_QL80_.jpg'),
(122, 'Galaxy J8', 'SM-J810', '8.0', '10', 'Samsung One UI 2.0', 2018, 'https://i.blogs.es/ee46c1/galaxy-j8/1366_2000.jpg'),
(123, 'Galaxy J3 2018', 'SM-J337', '8.0', '9.0', 'Samsung Experience 9.5', 2018, 'https://i.ebayimg.com/images/g/suYAAOSwXdRkYqnm/s-l1200.jpg'),
(124, 'Galaxy J7 2018', 'SM-J737', '8.0', '9.0', 'Samsung Experience 9.5', 2018, 'https://i.ebayimg.com/images/g/vZkAAOSwvfpdfSw4/s-l1200.jpg'),
(125, 'Galaxy A6', 'SM-A600', '8.0', '10', 'Samsung One UI 2.0', 2018, 'https://m.media-amazon.com/images/I/51TzbzLzJNL.jpg'),
(126, 'Galaxy A6+', 'SM-A605', '8.0', '10', 'Samsung One UI 2.0', 2018, 'https://m.media-amazon.com/images/I/51g8X-HflHL.jpg'),
(127, 'Galaxy Note 9', 'SM-N960', '8.1', '10', 'Samsung One UI 2.5', 2018, 'https://m.media-amazon.com/images/I/61x1s15mqyL._AC_UF894,1000_QL80_.jpg'),
(128, 'Galaxy A7 2018', 'SM-A750', '8.0', '10', 'Samsung One UI 2.0', 2018, 'https://i.ebayimg.com/images/g/3DIAAOSw0FFg2IWi/s-l1200.jpg'),
(129, 'Galaxy A9 2018', 'SM-A920', '8.0', '10', 'Samsung One UI 2.0', 2018, 'https://cdn.idealo.com/folder/Product/6334/5/6334588/s11_produktbild_max/samsung-galaxy-a9-2018.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
