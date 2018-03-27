-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 01:40 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `sbn` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `binding` varchar(200) NOT NULL,
  `Price` int(9) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `image`, `title`, `sbn`, `author`, `binding`, `Price`, `description`) VALUES
(1, 'The-Believers-Authority.jpg', 'The Believer\'s Authority', '10: 1577949366', 'Andrew Wellmark', 'Paperback', 30, 'The controversial subject of the spiritual authority of the believer in Christ is widely discussed in the church today. Now, Andrew Wommack, host of the #1 fastest growing ministry on television, gives us a new perspective that may challenge everything we\'ve been taught including: If believers have been given authority, then when, how, and toward what should it be exercised? Discover the true battleground and learn how to recognize the real enemy. '),
(7, 'Instincts.jpg', 'Instincts: Unleasing Your Inborn Drive', '10: 1455554049', 'TD Jakes', 'Hardcover', 45, 'An instant #1 New York Times bestseller for six weeks, Bishop T.D. Jakes\'s smash-hit INSTINCT shows readers how to tap into their God-given intuition to achieve ultimate success. \r\n\r\nWhether you call it following your heart, a gut feeling, a hunch or intuition, instinct-the inner knowledge bubbling up from a wellspring of wisdom within-can lead to a bigger, elephant-sized life.\r\n\r\nCombining social, business and personal examples with biblical insights, in INSTINCT Bishop Jakes shows readers how to rediscover their natural aptitudes and reclaim the wisdom of their past experiences. Knowing when to close a deal, when to take a risk, and when to listen to their hearts will become possible when they\'re in touch with the instincts that God gave them. \r\n'),
(8, 'Leadership-Gold.jpg', 'Leadership Gold: Lessons I\'ve Learned from a Lifetime of Leading ', '10: 0785214119', ' John C. Maxwell', 'Hardcover', 47, 'A leader among leaders, John Maxwell promised himself early in his career that he wouldn\'t write this book until he was sixty. And now it\'s finally here. Leadership Gold took Maxwell a lifetime to write, and it delivers his most valuable lessons from forty years of leading. With his signature style, Maxwell comes alongside like a mentor, candidly taking readers through what feels like a one-on-one leadership program. Leadership Gold offers the best of the best, the tried-and-true lessons that no one but Maxwell can share.'),
(9, 'Business-as-Mission.jpg', 'Business as Mission: The Power of Business in the Kingdom of God', '10: 1576583880', 'Michael R. Baer', 'Paperback', 28, 'We are living in the Business Age. The historic role of nation states is rapidly being replaced by the corporation. Like never before, Christian business leaders have the chance to play a pivotal role in transforming society and spreading the gospel. But seizing this opportunity requires thinking differently about God, about his kingdom, about his purposes in the world, and about business.\r\n\r\nWhile some Christian professionals dream of being \"freed from business\" to go into the ministry or see business as enemy territory to be invaded for Christ, others are convinced that Christian principles simply don\'t work in the \"real world.\" In Business as Mission, Michael Baer challenges each of these positions. He rejects the unbiblical thinking that ministry and business are by definition separate activities -- that our lives can be compartmentalized into the sacred and secular. Instead he guides business leaders in developing the vital characteristics of a kingdom business -- the kind of business that will free them to live fully integrated lives and lead organizations that significantly impact the world.'),
(10, 'In-Pursuit-of-Purpose.jpg', 'In Pursuit of Purpose', '10: 1560431032', ' Myles Munroe', 'Paperback', 25, 'Best-selling author Myles Munroe reveals in this book the key to personal fulfillment: purpose. We must pursue purpose because our fulfillment in life depends upon our becoming what we were born to be and do. In Pursuit of Purpose will guide you on that path to finding God\'s purpose for your life.'),
(11, 'five-love-language.jpg', 'The 5 Love Languages: The Secret to Love that Lasts ', '10: 080241270X', 'GARY CHAPMAN', 'Hardcover', 45, 'Falling in love is easy. Staying in love—that’s the challenge. How can you keep your relationship fresh and growing amid the demands, conflicts, and just plain boredom of everyday life?\r\n\r\nIn the #1 New York Times bestseller The 5 Love Languages, you’ll discover the secret that has transformed millions of relationships worldwide. Whether your relationship is flourishing or failing, Dr. Gary Chapman’s proven approach to showing and receiving love will help you experience deeper and richer levels of intimacy with your partner—starting today.\r\n\r\nThe 5 Love Languages is as practical as it is insightful. Updated to reflect the complexities of relationships today, this new edition reveals intrinsic truths and applies relevant, actionable wisdom in ways that work.\r\n\r\nIncludes the Couple\'s Personal Profile assessment so you can discover your love language and that of your loved one.'),
(12, 'next.jpg', 'Next: Pastoral Succession That Works', '10: 080100571X', 'Warren Bird and William Vanderbloemen', 'Paperback', 37, 'Every church and ministry goes through changes in leadership, and the issue is far bigger than the wave of pastors from the Baby Boomer generation who are moving toward retirement. When a pastor leaves a church, ministries are disrupted and members drift away. If the church is already struggling, it can find itself suddenly in very dire straits indeed. But the outcome doesn\'t have to be that way.'),
(13, 'on-being-a-pastor.jpg', 'On Being a Pastor: Understanding Our Calling and Work', '10: 0802431224', ' Derek J. Prime & Alistair Begg', 'Paperback', 40, 'A pastor’s responsibilities are unique, demanding that he not only nurture his own spiritual life but also the lives of those in his care. What a challenge this can be!\r\n\r\nDerek Prime and Alistair Begg provide practical advice for both the spiritual and practical aspects of pastoral ministry. They delve deep into topics such as prayer, devotional habits, preaching, studying, and specific ministry duties. The result is an essential tool for those in pastoral ministry.'),
(14, 'brother-we-not-professionals.jpg', 'Brothers, We Are Not Professionals: A Plea to Pastors for Radical Ministry', '10: 1433678829', 'John Piper', 'Paperback', 25, 'In this revised and expanded edition of Brothers, We Are Not Professionals that includes a new introduction and select all-new chapters, best-selling author John Piper pleads through a series of thoughtful essays with fellow pastors to abandon the professionalization of the pastorate and pursue the prophetic call of the Bible for radical ministry.\r\n\r\n“We pastors are being killed by the professionalizing of the pastoral ministry,” he writes. “The mentality of the professional is not the mentality of the prophet. It is not the mentality of the slave of Christ. Professionalism has nothing to do with the essence and heart of the Christian ministry. The more professional we long to be, the more spiritual death we will leave in our wake. For there is no professional childlikeness, there is no professional tenderheartedness, there is no professional panting after God.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
