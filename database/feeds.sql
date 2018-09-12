-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-12 07:54:10
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

CREATE TABLE `feeds` (
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
(1, '刘队 ', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg', '天气不错', '2018.9.9', '开通大厦', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://i01piccdn.sogoucdn.com/3c28af542f2d49f7-fe9c78d2ff4ac332-2929872e8dc4b24817d8cd86532e1790_qq;https://i03piccdn.sogoucdn.com/3c28af542f2d49f7-8f0182a4cf50287e-974f0d8c9711084eb044e98611de6bd5_qq;https://img01.sogoucdn.com/app/a/100520093/d27bf6c25ece6d98-219d425a1e25445a-f6e35bb492cb2c14188181cfb5438b30.jpg'),
(2, '豆豆', 'https://img01.sogoucdn.com/app/a/100520093/d27bf6c25ece6d98-219d425a1e25445a-f6e35bb492cb2c14188181cfb5438b30.jpg', '天气不错,有光', '2018.9.9', '开通大厦', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg'),
(3, '推', 'https://img01.sogoucdn.com/app/a/100520093/d27bf6c25ece6d98-219d425a1e25445a-f6e35bb492cb2c14188181cfb5438b30.jpg', '天气不错,有光，', '2018.9.9', '开通大厦', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg'),
(4, '我', 'https://img01.sogoucdn.com/app/a/100520093/d27bf6c25ece6d98-219d425a1e25445a-f6e35bb492cb2c14188181cfb5438b30.jpg', '天气不错,有光 ，666', '2018.9.9', '开通大厦', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg'),
(5, '呗哥', 'https://img01.sogoucdn.com/app/a/100520093/d27bf6c25ece6d98-219d425a1e25445a-f6e35bb492cb2c14188181cfb5438b30.jpg', '天气不错,有光 ，666', '2018.9.9', '开通大厦', 'https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg;https://img02.sogoucdn.com/app/a/100520093/ea54b1c5225b5b8f-1f7d693ce5c84217-65bcb52a88b749bfa5bd038796a7f699.jpg'),
(6, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', '13123131', '2021.9.9 8:20', '凯通大厦', ''),
(7, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', '13123131', '2021.9.9 8:20', '凯通大厦', ''),
(8, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', '13123131', '2021.9.9 8:20', '凯通大厦', ''),
(9, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', '13123131', '2021.9.9 8:20', '凯通大厦', ''),
(10, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'undefined', '2021.9.9 8:20', '凯通大厦', ''),
(11, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'undefined', '2021.9.9 8:20', '凯通大厦', ''),
(12, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zzzzz', '2021.9.9 8:20', '凯通大厦', ''),
(13, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', '000', '2021.9.9 8:20', '凯通大厦', ''),
(14, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zzzzzzzzzzzzz', '2021.9.9 8:20', '凯通大厦', ''),
(15, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'z', '2021.9.9 8:20', '凯通大厦', ''),
(16, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zz', '2021.9.9 8:20', '凯通大厦', ''),
(17, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', '啧啧啧', '2021.9.9 8:20', '凯通大厦', ''),
(18, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'ssssssss', '2021.9.9 8:20', '凯通大厦', ''),
(19, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zzzzz', '2021.9.9 8:20', '凯通大厦', ''),
(20, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zzzz', '2021.9.9 8:20', '凯通大厦', ''),
(21, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zzzzzzz', '2021.9.9 8:20', '凯通大厦', ''),
(22, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zz', '2021.9.9 8:20', '凯通大厦', ''),
(23, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zzzzz', '2021.9.9 8:20', '凯通大厦', ''),
(24, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'ssssss', '2021.9.9 8:20', '凯通大厦', ''),
(25, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'caonime ', '2021.9.9 8:20', '凯通大厦', ''),
(26, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'aaaa', '2021.9.9 8:20', '凯通大厦', ''),
(27, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'sss', '2021.9.9 8:20', '凯通大厦', ''),
(28, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'aaaaaa', '2021.9.9 8:20', '凯通大厦', ''),
(29, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'dd', '2021.9.9 8:20', '凯通大厦', ''),
(30, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zz', '2021.9.9 8:20', '凯通大厦', ''),
(31, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'zzzz', '2021.9.9 8:20', '凯通大厦', ''),
(32, '唔', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoRPPYK1qvPib9ZtdJlJsEf9gRygapA99hDDibnvf0zBO7L0I0oGcgfmicV0CtxIU9t7dewLdr7MgPrA/132', 'sss', '2021.9.9 8:20', '凯通大厦', '');

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
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
