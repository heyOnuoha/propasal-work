-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2018 at 04:37 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `sbn` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `binding` varchar(200) NOT NULL,
  `Price` int(9) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `image`, `title`, `sbn`, `author`, `binding`, `Price`, `description`) VALUES
(1, 'The-Believers-Authority.jpg', 'The Believer''s Authority', '38583484885', 'Andrew Wellmark', '', 30, 'The controversial subject of the spiritual authority of the believer in Christ is widely discussed in the church today. Now, Andrew Wommack, host of the #1 fastest growing ministry on television, gives us a new perspective that may challenge everything we''ve been taught including: If believers have been given authority, then when, how, and toward what should it be exercised? Discover the true battleground and learn how to recognize the real enemy. '),
(7, 'Instincts.jpg', 'Instincts: Unleasing Your Inborn Drive', '24570167', 'TD Jakes', 'Hardcover', 45, 'An instant #1 New York Times bestseller for six weeks, Bishop T.D. Jakes''s smash-hit INSTINCT shows readers how to tap into their God-given intuition to achieve ultimate success. \r\n\r\nWhether you call it following your heart, a gut feeling, a hunch or intuition, instinct-the inner knowledge bubbling up from a wellspring of wisdom within-can lead to a bigger, elephant-sized life.\r\n\r\nCombining social, business and personal examples with biblical insights, in INSTINCT Bishop Jakes shows readers how to rediscover their natural aptitudes and reclaim the wisdom of their past experiences. Knowing when to close a deal, when to take a risk, and when to listen to their hearts will become possible when they''re in touch with the instincts that God gave them. \r\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
