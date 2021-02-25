-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-02-25 20:08:53
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xm`
--

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE `car` (
  `carid` int(100) NOT NULL,
  `carimgs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carcolor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carccun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carprice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carnum` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `car`
--

INSERT INTO `car` (`carid`, `carimgs`, `carname`, `carcolor`, `carccun`, `carprice`, `carnum`) VALUES
(6, 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00100349_petite_28_evergold_black.png?x-oss-process=image/resize,w_480/format,jpg', 'PETITE EVERGOLD\r\n', 'rgb(233, 171, 89)', '28mm', '1290', '3'),
(5, 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00100350_petite_28_evergold_white.png?x-oss-process=image/resize,w_400/format,jpg', 'PETITE EVERGOLD', 'rgb(233, 171, 89)', '28mm', '1290', '1');

-- --------------------------------------------------------

--
-- 表的结构 `home`
--

CREATE TABLE `home` (
  `id` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `colorname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgs` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `home`
--

INSERT INTO `home` (`id`, `name`, `price`, `color`, `colorname`, `imgs`) VALUES
(1, 'PETITE SUFFOLK', '￥ 1,190', 'rgb(234, 236, 88)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/cl-petite-28-suffolk-limited_1.png?x-oss-process=image/resize,w_400/format,jpg'),
(2, 'PETITE SUFFOLK', '￥ 1,190', 'rgb(234, 236, 88)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/1/_/1_3_1.png?x-oss-process=image/resize,w_400/format,jpg'),
(3, 'PETITE SUFFOLK', '￥ 1,380', 'rgb(234, 236, 88)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/cl36-suffolk-limited_3.png?x-oss-process=image/resize,w_400/format,jpg'),
(4, 'PETITE SUFFOLK 28 + BRACELET S', '￥ 1,780', 'rgb(234, 236, 88)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00100266_dw00400003_3.png?x-oss-process=image/resize,w_400/format,jpg'),
(5, 'CLASSIC BRACELET CHERRY BLUSH', '￥ 690', 'rgb(234, 236, 88)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00400014_classic_bracelet_small_rg_red.png?x-oss-process=image/resize,w_400/format,jpg'),
(6, 'EMALIE EARRINGS', '￥ 690', 'rgb(234, 236, 88)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/1/_/1_1_7.png?x-oss-process=image/resize,w_400/format,jpg'),
(7, 'EMALIE NECKLACE', '￥ 690', 'rgb(234, 236, 88)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/1/_/1_1_6.png?x-oss-process=image/resize,w_400/format,jpg'),
(8, 'EMALIE NECKLACE', '￥ 690', 'rgb(234, 236, 88)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/e/m/emalie-ring-rg-red-48-_1_.png?x-oss-process=image/resize,w_400/format,jpg');

-- --------------------------------------------------------

--
-- 表的结构 `imgs`
--

CREATE TABLE `imgs` (
  `id` int(11) NOT NULL,
  `imgs` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `imgs`
--

INSERT INTO `imgs` (`id`, `imgs`) VALUES
(1, 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/classic_petite_ashfield_32mm_rg_.jpg'),
(2, 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/classic_petite_ashfield_28_rgvs32_2.jpg'),
(3, 'https://media.danielwellington.cn/prod-media/media/catalog/product/2/_/2_4.jpg'),
(4, 'https://media.danielwellington.cn/prod-media/media/catalog/product/1/_/1_3.jpg'),
(5, 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_melrose_28rg_6.png'),
(6, 'https://media.danielwellington.cn/prod-media/media/catalog/product/b/o/box-classic-petite-melrose-white-32_1.png');

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `colorname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `colorname2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ccun1` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ccun2` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `imgs1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgs2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgs3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgs4` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`id`, `name`, `color`, `colorname`, `imgs`, `price`, `color2`, `colorname2`, `ccun1`, `ccun2`, `imgs1`, `imgs2`, `imgs3`, `imgs4`) VALUES
(2, 'PETITE MELROSE', 'rgb(240, 165, 67)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/1/-/1-pink-mesh-28mm.png?x-oss-process=image/resize,w_480/format,jpg', '1290', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_32_melrose_rose_w_1_ads_5.png\"', 'https://media.danielwellington.cn/prod-media/media/catalog/product/2/_/2_2.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/3/_/3_5.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/p/e/petit-melrose-strap_2.png'),
(3, 'PETITE MELROSE', 'rgb(240, 165, 67)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_melrose_28rg_6.png?x-oss-process=image/resize,w_480/format,jpg', '1290', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_32rg_closeup_front2_1.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_32rg_closeup_back_2.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_32rg_closeup_front1_1.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_case_32rg_1.jpg'),
(4, 'PETITE MELROSE', 'rgb(240, 165, 67)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_melrose_b28rg_7.png?x-oss-process=image/resize,w_480/format,jpg', '1290', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_32_melrose_rose_b_1_ads_4.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/3/_/3_3.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/4/_/4_1_2.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/p/e/petit-melrose-strap.png'),
(5, 'PETITE EVERGOLD', 'rgb(233, 171, 89)', '金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00100350_petite_28_evergold_white.png?x-oss-process=image/resize,w_400/format,jpg', '1290', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_melrose_28rg_6.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/b/o/box-classic-petite-melrose-white-32_1.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite-28rg_closeup_front_1.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite-28rg_closeup_front_2.png'),
(6, 'PETITE EVERGOLD\r\n', 'rgb(233, 171, 89)', '金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00100349_petite_28_evergold_black.png?x-oss-process=image/resize,w_480/format,jpg', '1290', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_b32rg_closeup_front1.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_32rg_closeup_back.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_b32rg_closeup_front2.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_case_b32rg.jpg'),
(7, 'PETITE EVERGOLD', 'rgb(240, 165, 67)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw-petite-28-ashfield-rg-cat_1.png?x-oss-process=image/resize,w_480/format,jpg', '1290', '#ccc', '银色', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_ashfield_b32rg.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/2/_/2_4.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/4/_/4_1_8.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_b32rg_closeup_front1_9.jpg'),
(8, 'PETITE STERLING\r\n', '#ccc\r\n', '银色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_sterling_28s.png?x-oss-process=image/resize,w_480/format,jpg', '1290', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/b/o/box-classic-petite-melrose-white-32_1.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite-28rg_closeup_front_1.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite-28rg_closeup_front_2.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_28rg_closeup_back_1.png'),
(9, 'PETITE STERLING\r\n', '#ccc', '银色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_sterling_b28s.png?x-oss-process=image/resize,w_480/format,jpg', '1290', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_ashfield_b32s.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_b32s_closeup_front1_1_1_1.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_b32s_closeup_front2_1_1_1.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_case_b32s_8.jpg'),
(10, 'PETITE ROSEWATER', 'rgb(240, 165, 67)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00100319_petite_rosewater_w28rg.png?x-oss-process=image/resize,w_480/format,jpg', '11090', '#ccc', '银色', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00100307_classic_petite_ashfield_b36rg_box_3.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_b32rg_closeup_front1_9_3_3.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_32rg_closeup_back_15_3_3.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_case_b32rg_1_5_6_3_4.jpg'),
(11, 'PETITE CANTERBURY', 'rgb(240, 165, 67)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_canterbury_28rg_1.png?x-oss-process=image/resize,w_400/format,jpg', '11090', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_canterbury_36rg.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/cl36rg03_trimmed_6.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/cl36rg02_trimmed_6.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/cl36rg04_trimmed_1_24.jpg'),
(12, 'PETITE CANTERBURY', 'rgb(240, 165, 67)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite_cambridge_28rg.png?x-oss-process=image/resize,w_480/format,jpg', '11090', '', '', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/cl36rg_8.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/0/5/0502dw_2.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/classic_canterbury_36_mm_rose_gold_1_.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/cl-36-canterbury-rg_2.png'),
(13, 'PETITE CANTERBURY', 'rgb(240, 165, 67)', '玫瑰金色', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw00100305_classic_petite_cornwall_w36rg.png?x-oss-process=image/resize,w_480/format,jpg', '11090', '#ccc', '银色', '28mm', '32mm', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_sheffield_b40rg_1_2.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw-petite-sheffield-rg-white-cat_1_1_5.png', 'https://media.danielwellington.cn/prod-media/media/catalog/product/c/l/clbl36rg01_6_1_5.jpg', 'https://media.danielwellington.cn/prod-media/media/catalog/product/d/w/dw_classic_petite-28rg_closeup_front_2_4_1.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'cxl', 'cxl123456');

--
-- 转储表的索引
--

--
-- 表的索引 `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carid`);

--
-- 表的索引 `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `car`
--
ALTER TABLE `car`
  MODIFY `carid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `home`
--
ALTER TABLE `home`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
