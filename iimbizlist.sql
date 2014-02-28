-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- Host: mysql.chronobolt.net
-- Generation Time: Feb 27, 2014 at 08:17 PM
-- Server version: 5.1.56
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iimbizlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `position` int(11) NOT NULL COMMENT '0 = unknown, 1 = first, 2 =second, etc',
  `active` int(255) NOT NULL COMMENT '0 = inactive, 1 = active',
  `publishUp` datetime NOT NULL,
  `publishDown` datetime NOT NULL,
  `valpolife` int(11) NOT NULL,
  `portagelife` int(11) NOT NULL,
  `laportecountylife` int(11) NOT NULL,
  `nwindianalife` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `client`, `position`, `active`, `publishUp`, `publishDown`, `valpolife`, `portagelife`, `laportecountylife`, `nwindianalife`) VALUES
(1, 'future', 'future.jpg', 'MomCorp', 1, 1, '2014-01-01 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, 0),
(2, 'moss', 'moss.gif', 'reynholm', 1, 0, '2014-01-01 00:00:00', '2014-06-01 00:00:00', 0, 1, 0, 0),
(3, 'derpy', 'derpy.jpeg', 'ponies?', 1, 1, '2014-02-28 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0),
(4, 'python', 'python.PNG', 'Ministry of Funny Walks', 2, 1, '2014-01-01 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0),
(5, 'boat', 'boat.JPG', 'lolcatCo', 2, 1, '2014-01-01 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0),
(6, 'chill', 'chill.JPG', 'Ghostbusters', 2, 1, '2014-01-01 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0),
(7, 'glider', 'glider.gif', 'conwayCo', 3, 1, '2014-01-01 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0),
(8, 'murica''', 'ron.GIF', 'Pawnee Parks and Recreation', 3, 1, '2014-01-01 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0),
(9, 'are you there?', 'sentry.jpg', 'Aperture', 3, 1, '2014-01-01 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE IF NOT EXISTS `tracker` (
  `bannerId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userAgent` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`bannerId`, `position`, `time`, `userAgent`) VALUES
(1, 1, '2014-02-27 18:50:57', 'test'),
(3, 1, '2014-02-27 19:13:55', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:14:09', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:14:09', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(1, 1, '2014-02-27 19:14:10', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(2, 1, '2014-02-27 19:15:51', 'mozilla/5.0 (macintosh; intel mac os x 10_9_1) applewebkit/537.73.11 (khtml, like gecko) version/7.0.1 safari/537.73.11'),
(1, 1, '2014-02-27 19:16:00', 'mozilla/5.0 (macintosh; intel mac os x 10_9_1) applewebkit/537.73.11 (khtml, like gecko) version/7.0.1 safari/537.73.11'),
(3, 1, '2014-02-27 19:16:37', 'kyle man rob'),
(3, 1, '2014-02-27 19:21:54', 'kyle man rob'),
(1, 1, '2014-02-27 19:21:59', 'kyle man rob'),
(2, 1, '2014-02-27 19:22:00', 'kyle man rob'),
(2, 1, '2014-02-27 19:31:06', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:07', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(2, 1, '2014-02-27 19:31:08', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:08', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(1, 1, '2014-02-27 19:31:10', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:11', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:32', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:33', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:33', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:39', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:39', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:40', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:31:40', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:32:00', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:32:00', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:32:16', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:32:18', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:35:48', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:35:49', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:35:50', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:12', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:13', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:13', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:14', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:27', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:38', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:56', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:57', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:36:58', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:38:02', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:38:03', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:38:19', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:38:20', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:38:33', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:38:59', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:39:00', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:42:58', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:42:59', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:43:00', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:51:29', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 19:51:30', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:52:05', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:52:07', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:53:39', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:54:42', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:54:43', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:54:54', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:55:19', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:55:21', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:55:22', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:56:03', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:56:14', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:57:06', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:57:42', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:57:53', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 19:58:15', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(3, 1, '2014-02-27 20:01:42', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 20:05:03', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 20:06:26', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 20:06:27', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 20:06:47', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 20:07:40', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 20:07:44', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 20:08:12', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(0, 1, '2014-02-27 20:08:15', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(1, 1, '2014-02-27 20:08:31', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(1, 1, '2014-02-27 20:15:32', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(1, 1, '2014-02-27 20:15:33', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(1, 1, '2014-02-27 20:16:03', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36'),
(1, 1, '2014-02-27 20:16:04', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) chrome/33.0.1750.117 safari/537.36');
