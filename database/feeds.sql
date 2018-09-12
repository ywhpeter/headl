-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-11 08:11:12
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w1805`
--

-- --------------------------------------------------------

--
-- 表的结构 `feeds`
--
DROP TABLE IF EXISTS `feeds`;
 CREATE TABLE IF NOT EXISTS `feeds` (
  `id` int(12) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_avater` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `pubtime` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `feeds`
--

INSERT INTO `feeds` (`id`, `user_name`, `user_avater`, `content`, `pubtime`, `address`, `image`) VALUES
(1, '杨文华', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg', '天气不错', '2018.9.9', '开通大厦', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://i01piccdn.sogoucdn.com/3c28af542f2d49f7-fe9c78d2ff4ac332-2929872e8dc4b24817d8cd86532e1790_qq;https://i03piccdn.sogoucdn.com/3c28af542f2d49f7-8f0182a4cf50287e-974f0d8c9711084eb044e98611de6bd5_qq;https://img01.sogoucdn.com/app/a/100520093/d27bf6c25ece6d98-219d425a1e25445a-f6e35bb492cb2c14188181cfb5438b30.jpg'),
(2, '杨文华', 'https://img01.sogoucdn.com/app/a/100520093/d27bf6c25ece6d98-219d425a1e25445a-f6e35bb492cb2c14188181cfb5438b30.jpg', '天气不错,是有开车；啦啦啦啦啦啦啦啦绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿啦啦啦啦啦', '2018.9.9', '开通大厦', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
