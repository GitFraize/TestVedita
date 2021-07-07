-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 07 2021 г., 14:52
-- Версия сервера: 5.7.17
-- Версия PHP: 7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vedita_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int(8) NOT NULL,
  `PRODUCT_ID` int(8) NOT NULL,
  `PRODUCT_NAME` varchar(64) NOT NULL,
  `PRODUCT_PRICE` int(8) NOT NULL,
  `PRODUCT_ARTICLE` varchar(16) NOT NULL,
  `PRODUCT_QUANTITY` int(8) NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `HIDDEN` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`, `DATE_CREATE`, `HIDDEN`) VALUES
(1, 1, 'Product #1', 1292, 'p1', 54, '2021-07-06 18:36:37', 0),
(2, 2, 'Product #2', 988, 'p2', 26, '2021-07-06 18:36:37', 0),
(3, 3, 'Product #3', 5121, 'p3', 87, '2021-07-06 18:36:37', 0),
(4, 4, 'Product #4', 8864, 'p4', 12, '2021-07-06 18:36:37', 0),
(5, 5, 'Product #5', 9559, 'p5', 21, '2021-07-06 18:36:37', 0),
(6, 6, 'Product #6', 933, 'p6', 46, '2021-07-06 18:36:38', 0),
(7, 7, 'Product #7', 3298, 'p7', 80, '2021-07-06 18:36:38', 0),
(8, 8, 'Product #8', 4685, 'p8', 30, '2021-07-06 18:36:38', 0),
(9, 9, 'Product #9', 8415, 'p9', 12, '2021-07-06 18:36:38', 0),
(10, 10, 'Product #10', 2947, 'p10', 79, '2021-07-06 18:36:38', 0),
(11, 11, 'Product #11', 7878, 'p11', 89, '2021-07-06 18:36:38', 0),
(12, 12, 'Product #12', 2960, 'p12', 48, '2021-07-06 18:36:38', 0),
(13, 13, 'Product #13', 4189, 'p13', 13, '2021-07-06 18:36:38', 0),
(14, 14, 'Product #14', 7077, 'p14', 59, '2021-07-06 18:36:38', 0),
(15, 15, 'Product #15', 5982, 'p15', 6, '2021-07-06 18:36:38', 0),
(16, 16, 'Product #16', 5221, 'p16', 47, '2021-07-06 18:36:38', 0),
(17, 17, 'Product #17', 7102, 'p17', 58, '2021-07-06 18:36:38', 0),
(18, 18, 'Product #18', 9766, 'p18', 62, '2021-07-06 18:36:38', 0),
(19, 19, 'Product #19', 1753, 'p19', 80, '2021-07-06 18:36:38', 0),
(20, 20, 'Product #20', 196, 'p20', 2, '2021-07-06 18:36:38', 0),
(21, 21, 'Product #21', 4075, 'p21', 36, '2021-07-06 18:36:38', 0),
(22, 22, 'Product #22', 7235, 'p22', 15, '2021-07-06 18:36:38', 0),
(23, 23, 'Product #23', 8437, 'p23', 71, '2021-07-06 18:36:38', 0),
(24, 24, 'Product #24', 9810, 'p24', 24, '2021-07-06 18:36:38', 0),
(25, 25, 'Product #25', 1895, 'p25', 4, '2021-07-06 18:36:38', 0),
(26, 26, 'Product #26', 7691, 'p26', 55, '2021-07-06 18:36:38', 0),
(27, 27, 'Product #27', 5824, 'p27', 17, '2021-07-06 18:36:38', 0),
(28, 28, 'Product #28', 2479, 'p28', 95, '2021-07-06 18:36:38', 0),
(29, 29, 'Product #29', 9675, 'p29', 1, '2021-07-06 18:36:38', 0),
(30, 30, 'Product #30', 4864, 'p30', 71, '2021-07-06 18:36:38', 0),
(31, 31, 'Product #31', 7439, 'p31', 22, '2021-07-06 18:36:38', 0),
(32, 32, 'Product #32', 4179, 'p32', 32, '2021-07-06 18:36:38', 0),
(33, 33, 'Product #33', 1592, 'p33', 86, '2021-07-06 18:36:38', 0),
(34, 34, 'Product #34', 3458, 'p34', 79, '2021-07-06 18:36:38', 0),
(35, 35, 'Product #35', 607, 'p35', 5, '2021-07-06 18:36:38', 0),
(36, 36, 'Product #36', 4307, 'p36', 36, '2021-07-06 18:36:38', 0),
(37, 37, 'Product #37', 2907, 'p37', 74, '2021-07-06 18:36:38', 0),
(38, 38, 'Product #38', 3897, 'p38', 10, '2021-07-06 18:36:38', 0),
(39, 39, 'Product #39', 8061, 'p39', 46, '2021-07-06 18:36:38', 0),
(40, 40, 'Product #40', 1158, 'p40', 90, '2021-07-06 18:36:38', 0),
(41, 41, 'Product #41', 5116, 'p41', 32, '2021-07-06 18:36:38', 0),
(42, 42, 'Product #42', 1448, 'p42', 96, '2021-07-06 18:36:38', 0),
(43, 43, 'Product #43', 5615, 'p43', 45, '2021-07-06 18:36:38', 0),
(44, 44, 'Product #44', 5555, 'p44', 82, '2021-07-06 18:36:38', 0),
(45, 45, 'Product #45', 4173, 'p45', 70, '2021-07-06 18:36:38', 0),
(46, 46, 'Product #46', 5733, 'p46', 27, '2021-07-06 18:36:38', 0),
(47, 47, 'Product #47', 6623, 'p47', 88, '2021-07-06 18:36:38', 0),
(48, 48, 'Product #48', 6088, 'p48', 27, '2021-07-06 18:36:38', 0),
(49, 49, 'Product #49', 925, 'p49', 14, '2021-07-06 18:36:38', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PRODUCT_ARTICLE` (`PRODUCT_ARTICLE`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
