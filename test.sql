-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-03-16 07:15:17
-- 服务器版本： 5.7.10-log
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `contents`
--

CREATE TABLE `contents` (
  `cid` tinyint(3) UNSIGNED NOT NULL,
  `uid` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(18) NOT NULL,
  `content` varchar(200) NOT NULL,
  `pubdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `contents`
--

INSERT INTO `contents` (`cid`, `uid`, `name`, `content`, `pubdate`) VALUES
(1, 1, '小一', '岁属性', '2016-02-10 14:12:20'),
(2, 3, '小三', '这是一首歌这是一个页面', '2016-02-26 08:05:13'),
(3, 6, '小六', '今天是星期六', '2016-02-26 10:14:10'),
(4, 7, '小七', '今天晚上去哪里吃饭？', '2016-02-25 18:24:19'),
(5, 6, '小六', '晚上我们去吃那家啤酒烧烤吧，新开的', '2016-02-26 19:41:36'),
(6, 7, '小七', '晚上吃这么油的食物，对皮肤不好，不去了', '2016-02-26 20:04:31'),
(7, 1, '小一', '大阿斯顿士大夫擦掉放', '2016-02-28 22:05:48'),
(8, 1, '小一', '今天是星期天，要留言一下，下个星期我们吃什么？', '2016-02-28 22:10:23'),
(9, 1, '小一', '下个星期去吃生鱼片吧，三文鱼超好吃，蘸上芥末和酱油', '2016-02-28 22:12:42'),
(10, 1, '小一', '好的，就吃这个，你吃三文鱼，我点天妇罗吧', '2016-02-28 22:13:57'),
(11, 2, '小二', '我是小二，刚刚加入这个去哪里吃留言板', '2016-02-29 13:39:39'),
(12, 4, 'shd_xd', '测试测试新用户', '2016-02-29 16:30:47'),
(13, 4, 'shd_xd', '下载一首歌，现在歌曲需要付费才能收听', '2016-02-29 16:40:09'),
(14, 5, 'ed_kld', 'listen a song named liquor store blue song by bruno mars', '2016-02-29 16:41:58'),
(15, 2, '小二', 'its a nice song,i like it', '2016-02-29 21:47:05'),
(16, 6, 'shengyu_pian', '现在好像不是所有的歌都要付费的吧？有些要付费，有些是可以免费下载的', '2016-02-29 21:49:27'),
(17, 1, '小一', '是的，说的有道理', '2016-02-29 21:53:39'),
(18, 7, 'test', 'test', '2016-03-16 15:07:15'),
(19, 7, 'test', 'testone', '2016-03-16 15:13:45');

-- --------------------------------------------------------

--
-- 表的结构 `grade`
--

CREATE TABLE `grade` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `point` tinyint(3) UNSIGNED NOT NULL,
  `regdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `grade`
--

INSERT INTO `grade` (`id`, `name`, `email`, `point`, `regdate`) VALUES
(1, 'xiaodu', 'dskdkd@qq.com', 45, '2016-02-18 16:00:00'),
(2, '小肚', 'sdjdk@qq.com', 98, '2016-02-11 07:08:11'),
(3, '宽带流量', 'addc@qq.com', 100, '2016-02-02 08:09:09'),
(4, 'jeksk', 'sdkdk@qq.com', 100, '2016-02-12 13:22:19'),
(6, '小ss爱', 'sjdkdk@qq.com', 45, '2016-02-15 13:16:42'),
(15, 'abc', 'hjs@qa.com', 88, '2016-02-20 14:58:07');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `uid` tinyint(3) UNSIGNED NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(16) NOT NULL,
  `name` varchar(18) NOT NULL,
  `regdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`uid`, `email`, `password`, `name`, `regdate`) VALUES
(1, '12323@qq.com', '123456', '小一', '2016-02-10 03:21:29'),
(2, 'sdjdkddk@qq.com', '123456', '小二', '2016-02-25 00:00:00'),
(3, '12323de@qq.com', '123456', 'eddd', '2016-02-29 16:27:08'),
(4, '12323ddd@qq.com', '123456', 'shd_xd', '2016-02-29 16:30:31'),
(5, '12dfg23@qq.com', '123456', 'ed_kld', '2016-02-29 16:41:30'),
(6, 'test@163.com', '123456', 'shengyu_pian', '2016-02-29 21:48:36'),
(7, 'test@qq.com', '123456', 'test', '2016-03-16 15:07:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `contents`
--
ALTER TABLE `contents`
  MODIFY `cid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `grade`
--
ALTER TABLE `grade`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `uid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
