-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 14 2016 г., 09:47
-- Версия сервера: 5.6.26
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `test-tv-torg`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price` float unsigned NOT NULL,
  `model` varchar(255) NOT NULL,
  `brand` int(10) unsigned NOT NULL,
  `os` int(10) unsigned NOT NULL,
  `color` int(10) unsigned NOT NULL,
  `weight` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `price`, `model`, `brand`, `os`, `color`, `weight`, `description`) VALUES
(1, 21970, 'iPhone 5 16Gb', 1, 1, 1, 1, '21 970 руб. 3G, смартфон, iOS 6, вес 112 г, ШхВхТ 58.6x123.8x7.6 мм, экран 4", 640x1136, Bluetooth, WiFi,\r\nGPS, ГЛОНАСС, фотокамера 5 МП, память 16 Гб, аккумулятор 1400 мАч'),
(2, 14880, 'iPhone 4S 16Gb', 1, 2, 1, 2, '14 880 руб, 3G, смартфон, iOS 5, вес 140 г, ШхВхТ 58.6x115.2x9.3 мм, экран 3.5", 640x960, Bluetooth, WiFi,\r\nGPS, ГЛОНАСС, фотокамера 5 МП, память 16 Гб'),
(3, 13200, 'Galaxy S III GT-I9300', 2, 3, 1, 3, '13 200 руб. 3G, смартфон, Android 4.0, вес 133 г, ШхВхТ 70.6x136.6x8.6 мм, экран 4.8", 720x1280, FM-\r\nрадио, Bluetooth, NFC, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, слот microSD (TransFlash),\r\nаккумулятор 2100 мАч'),
(4, 19377, 'Galaxy S4 16Gb GT-I9500', 2, 4, 1, 4, '19 377 руб., 3G, смартфон, Android 4.2, вес 130 г, ШхВхТ 69.8x136.6x7.9 мм, экран 5", 1080x1920,\r\nBluetooth, NFC, Wi-Fi, GPS, фотокамера 13 МП, память 16 Гб, слот microSD (TransFlash), аккумулятор\r\n2600 мАч'),
(5, 16647, 'Xperia Z', 3, 5, 1, 5, '16 647 руб., смартфон, Android 4.1, вес 146 г, ШхВхТ 71x139x7.9 мм, экран 5", 1080x1920, FM-радио,\r\nBluetooth, NFC, Wi-Fi, GPS, фотокамера 13.10 МП, память 16 Гб, слот microSD (TransFlash), аккумулятор\r\n2330 мАч'),
(6, 20000, 'One 32Gb', 4, 5, 1, 6, '20 000 руб., смартфон, Android 4.1, вес 143 г, ШхВхТ 68.2x137.4x9.3 мм, экран 4.7", 1080x1920, FM-\r\nрадио, NFC, Wi-Fi, GPS, фотокамера 4 МП, память 32 Гб, аккумулятор 2300 мАч'),
(7, 24600, 'iPhone 5 32Gb', 1, 1, 1, 1, '24 600 руб.3G, смартфон, iOS 6, вес 112 г, ШхВхТ 58.6x123.8x7.6 мм, экран 4", 640x1136, Bluetooth, WiFi,\r\nфотокамера 8 МП, память 32 Гб, аккумулятор 1400 мАч'),
(8, 15249, 'Galaxy Note II GT-N7100 16Gb', 2, 5, 1, 7, '15 249 руб, GSM, 3G, смартфон, Android 4.1, вес 180 г, ШхВхТ 80.5x151.1x9.4 мм, экран 5.55", 720x1280,\r\nFM-радио, Bluetooth, NFC, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, слот microSD (TransFlash),\r\nаккумулятор 3100 мАч'),
(9, 11500, 'Lumia 920', 5, 6, 1, 8, '11 500руб, 3G, смартфон, MS Windows Phone 8, вес 185 г, ШхВхТ 70.8x130.3x10.7 мм, экран 4.5",\r\n768x1280, Bluetooth, NFC, Wi-Fi, фотокамера 8.70 МП, память 32 Гб, аккумулятор 2000 мАч'),
(10, 27900, 'iPhone 5 64Gb', 1, 1, 1, 1, '27 900р, GSM, 3G, смартфон, iOS 6, вес 112 г, ШхВхТ 58.6x123.8x7.6 мм, экран 4", 640x1136, Wi-Fi,\r\nфотокамера 8 МП, память 64 Гб, аккумулятор 1400 мАч'),
(11, 19377, 'Galaxy S4 16Gb GT-I9500', 2, 4, 2, 4, '19 377 руб., 3G, смартфон, Android 4.2, вес 130 г, ШхВхТ 69.8x136.6x7.9 мм, экран 5", 1080x1920,\r\nBluetooth, NFC, Wi-Fi, GPS, фотокамера 13 МП, память 16 Гб, слот microSD (TransFlash), аккумулятор\r\n2600 мАч'),
(12, 21970, 'iPhone 5 16Gb', 1, 1, 2, 1, '21 970 руб. 3G, смартфон, iOS 6, вес 112 г, ШхВхТ 58.6x123.8x7.6 мм, экран 4", 640x1136, Bluetooth, WiFi,\r\nGPS, ГЛОНАСС, фотокамера 5 МП, память 16 Гб, аккумулятор 1400 мАч'),
(13, 14880, 'iPhone 4S 16Gb', 1, 2, 2, 2, '14 880 руб, 3G, смартфон, iOS 5, вес 140 г, ШхВхТ 58.6x115.2x9.3 мм, экран 3.5", 640x960, Bluetooth, WiFi,\r\nGPS, ГЛОНАСС, фотокамера 5 МП, память 16 Гб'),
(14, 13200, 'Galaxy S III GT-I9300', 2, 3, 2, 3, '13 200 руб. 3G, смартфон, Android 4.0, вес 133 г, ШхВхТ 70.6x136.6x8.6 мм, экран 4.8", 720x1280, FM-\r\nрадио, Bluetooth, NFC, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, слот microSD (TransFlash),\r\nаккумулятор 2100 мАч'),
(15, 16647, 'Xperia Z', 3, 5, 2, 5, '16 647 руб., смартфон, Android 4.1, вес 146 г, ШхВхТ 71x139x7.9 мм, экран 5", 1080x1920, FM-радио,\r\nBluetooth, NFC, Wi-Fi, GPS, фотокамера 13.10 МП, память 16 Гб, слот microSD (TransFlash), аккумулятор\r\n2330 мАч'),
(16, 20000, 'One 32Gb', 4, 5, 2, 6, '20 000 руб., смартфон, Android 4.1, вес 143 г, ШхВхТ 68.2x137.4x9.3 мм, экран 4.7", 1080x1920, FM-\r\nрадио, NFC, Wi-Fi, GPS, фотокамера 4 МП, память 32 Гб, аккумулятор 2300 мАч'),
(17, 24600, 'iPhone 5 32Gb', 1, 1, 2, 1, '24 600 руб.3G, смартфон, iOS 6, вес 112 г, ШхВхТ 58.6x123.8x7.6 мм, экран 4", 640x1136, Bluetooth, WiFi,\r\nфотокамера 8 МП, память 32 Гб, аккумулятор 1400 мАч'),
(18, 15249, 'Galaxy Note II GT-N7100 16Gb', 2, 5, 2, 7, '15 249 руб, GSM, 3G, смартфон, Android 4.1, вес 180 г, ШхВхТ 80.5x151.1x9.4 мм, экран 5.55", 720x1280,\r\nFM-радио, Bluetooth, NFC, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, слот microSD (TransFlash),\r\nаккумулятор 3100 мАч'),
(19, 11500, 'Lumia 920', 5, 6, 2, 8, '11 500руб, 3G, смартфон, MS Windows Phone 8, вес 185 г, ШхВхТ 70.8x130.3x10.7 мм, экран 4.5",\r\n768x1280, Bluetooth, NFC, Wi-Fi, фотокамера 8.70 МП, память 32 Гб, аккумулятор 2000 мАч'),
(20, 27900, 'iPhone 5 64Gb', 1, 1, 2, 1, '27 900р, GSM, 3G, смартфон, iOS 6, вес 112 г, ШхВхТ 58.6x123.8x7.6 мм, экран 4", 640x1136, Wi-Fi,\r\nфотокамера 8 МП, память 64 Гб, аккумулятор 1400 мАч'),
(21, 21970, 'iPhone 5 16Gb', 1, 1, 3, 1, '21 970 руб. 3G, смартфон, iOS 6, вес 112 г, ШхВхТ 58.6x123.8x7.6 мм, экран 4", 640x1136, Bluetooth, WiFi,\r\nGPS, ГЛОНАСС, фотокамера 5 МП, память 16 Гб, аккумулятор 1400 мАч'),
(22, 24600, 'iPhone 5 32Gb', 1, 1, 3, 1, '24 600 руб.3G, смартфон, iOS 6, вес 112 г, ШхВхТ 58.6x123.8x7.6 мм, экран 4", 640x1136, Bluetooth, WiFi,\r\nфотокамера 8 МП, память 32 Гб, аккумулятор 1400 мАч');

-- --------------------------------------------------------

--
-- Структура таблицы `goods_params_names`
--

CREATE TABLE IF NOT EXISTS `goods_params_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(255) NOT NULL,
  `human_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `goods_params_names`
--

INSERT INTO `goods_params_names` (`id`, `db_name`, `human_name`) VALUES
(1, 'os', 'Операционная система'),
(2, 'brand', 'Производитель'),
(3, 'color', 'Цвет'),
(4, 'weight', 'Вес');

-- --------------------------------------------------------

--
-- Структура таблицы `goods_param_brand`
--

CREATE TABLE IF NOT EXISTS `goods_param_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `goods_param_brand`
--

INSERT INTO `goods_param_brand` (`id`, `name`) VALUES
(1, 'Apple'),
(4, 'HTC'),
(5, 'Nokia'),
(2, 'Samsung'),
(3, 'Sony');

-- --------------------------------------------------------

--
-- Структура таблицы `goods_param_color`
--

CREATE TABLE IF NOT EXISTS `goods_param_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `goods_param_color`
--

INSERT INTO `goods_param_color` (`id`, `name`) VALUES
(1, 'Белый'),
(3, 'Золотой'),
(2, 'Чёрный');

-- --------------------------------------------------------

--
-- Структура таблицы `goods_param_os`
--

CREATE TABLE IF NOT EXISTS `goods_param_os` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `goods_param_os`
--

INSERT INTO `goods_param_os` (`id`, `name`) VALUES
(3, 'Android 4.0'),
(5, 'Android 4.1'),
(4, 'Android 4.2'),
(2, 'iOS 5'),
(1, 'iOS 6'),
(6, 'MS Windows Phone 8');

-- --------------------------------------------------------

--
-- Структура таблицы `goods_param_weight`
--

CREATE TABLE IF NOT EXISTS `goods_param_weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `goods_param_weight`
--

INSERT INTO `goods_param_weight` (`id`, `name`) VALUES
(1, '112г'),
(4, '130г'),
(3, '133г'),
(2, '140г'),
(6, '143г'),
(5, '146г'),
(7, '180г'),
(8, '185г');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
