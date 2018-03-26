-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2018 at 02:43 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `image`, `title`, `sbn`, `author`, `binding`, `Price`, `description`) VALUES
(1, 'The-Believers-Authority.jpg', 'The Believer''s Authority', '10: 1577949366', 'Andrew Wellmark', 'Paperback', 30, 'The controversial subject of the spiritual authority of the believer in Christ is widely discussed in the church today. Now, Andrew Wommack, host of the #1 fastest growing ministry on television, gives us a new perspective that may challenge everything we''ve been taught including: If believers have been given authority, then when, how, and toward what should it be exercised? Discover the true battleground and learn how to recognize the real enemy. '),
(7, 'Instincts.jpg', 'Instincts: Unleasing Your Inborn Drive', '10: 1455554049', 'TD Jakes', 'Hardcover', 45, 'An instant #1 New York Times bestseller for six weeks, Bishop T.D. Jakes''s smash-hit INSTINCT shows readers how to tap into their God-given intuition to achieve ultimate success. \r\n\r\nWhether you call it following your heart, a gut feeling, a hunch or intuition, instinct-the inner knowledge bubbling up from a wellspring of wisdom within-can lead to a bigger, elephant-sized life.\r\n\r\nCombining social, business and personal examples with biblical insights, in INSTINCT Bishop Jakes shows readers how to rediscover their natural aptitudes and reclaim the wisdom of their past experiences. Knowing when to close a deal, when to take a risk, and when to listen to their hearts will become possible when they''re in touch with the instincts that God gave them. \r\n'),
(8, 'Leadership-Gold.jpg', 'Leadership Gold: Lessons I''ve Learned from a Lifetime of Leading ', '10: 0785214119', ' John C. Maxwell', 'Hardcover', 47, 'A leader among leaders, John Maxwell promised himself early in his career that he wouldn''t write this book until he was sixty. And now it''s finally here. Leadership Gold took Maxwell a lifetime to write, and it delivers his most valuable lessons from forty years of leading. With his signature style, Maxwell comes alongside like a mentor, candidly taking readers through what feels like a one-on-one leadership program. Leadership Gold offers the best of the best, the tried-and-true lessons that no one but Maxwell can share.'),
(9, 'Business-as-Mission.jpg', 'Business as Mission: The Power of Business in the Kingdom of God', '10: 1576583880', 'Michael R. Baer', 'Paperback', 28, 'We are living in the Business Age. The historic role of nation states is rapidly being replaced by the corporation. Like never before, Christian business leaders have the chance to play a pivotal role in transforming society and spreading the gospel. But seizing this opportunity requires thinking differently about God, about his kingdom, about his purposes in the world, and about business.\r\n\r\nWhile some Christian professionals dream of being "freed from business" to go into the ministry or see business as enemy territory to be invaded for Christ, others are convinced that Christian principles simply don''t work in the "real world." In Business as Mission, Michael Baer challenges each of these positions. He rejects the unbiblical thinking that ministry and business are by definition separate activities -- that our lives can be compartmentalized into the sacred and secular. Instead he guides business leaders in developing the vital characteristics of a kingdom business -- the kind of business that will free them to live fully integrated lives and lead organizations that significantly impact the world.'),
(10, 'In-Pursuit-of-Purpose.jpg', 'In Pursuit of Purpose', '10: 1560431032', ' Myles Munroe', 'Paperback', 25, 'Best-selling author Myles Munroe reveals in this book the key to personal fulfillment: purpose. We must pursue purpose because our fulfillment in life depends upon our becoming what we were born to be and do. In Pursuit of Purpose will guide you on that path to finding God''s purpose for your life.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
