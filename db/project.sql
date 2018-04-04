-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2018 at 11:52 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

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
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(250) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `phonenumber` varchar(200) NOT NULL,
  `paymenttype` varchar(250) NOT NULL,
  `carnumber` varchar(250) NOT NULL,
  `holdername` varchar(250) NOT NULL,
  `cvv` varchar(250) NOT NULL,
  `exps` varchar(250) NOT NULL,
  `orderid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adresse`
--

INSERT INTO `adresse` (`id`, `address`, `fullname`, `state`, `city`, `phonenumber`, `paymenttype`, `carnumber`, `holdername`, `cvv`, `exps`, `orderid`) VALUES
(8, 'Taptop-weija', 'bukari shamsu', 'Taptop-weija', 'Taptop-weija', '0550513239', 'mobile money', '05505132398', 'bukari shamsu', '', '', ''),
(7, 'Taptop-weija', 'bukari shamsu', 'Taptop-weija', 'Taptop-weija', '767587767', 'debit card', '6767787877678686', 'bukari shamsu', '08/2019', '08/2019', ''),
(6, 'Taptop-weija', 'bukari shamsu', 'Taptop-weija', 'Taptop-weija', '767587767', 'debit card', '6767787877678686', 'bukari shamsu', '08/2019', '08/2019', ''),
(9, 'kasoa-barier', 'alise rose', 'Greater accra', 'accra', '05540513239', 'mobile money', '0550513239', 'bukarishasmsu', '', '', ''),
(10, 'tetegu_weija', 'bukari shamsu', 'Greater accra', 'tema', '0550513239', 'mobile money', '055051329', 'bukari shamsu', '', '', '1489103128'),
(11, 'Taptop-weija', 'bukari shamsu', 'Taptop-weija', 'Taptop-weija', '0550513239', 'mobile money', '0550513239', 'bukari', '', '', '479558591'),
(12, 'Taptop-weija', 'bukari shamsu', 'Taptop-weija', 'Taptop-weija', '0550513239', 'debit card', '0550513239', 'bukari shamsu', '435', '435', '1508226976'),
(13, 'Taptop-weija', 'bukari shamsu', 'Taptop-weija', 'Taptop-weija', '0550513239', 'debit card', '258484285824948', 'bukarishamsu', '504540', '504540', '1846152637');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

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
(14, 'brother-we-not-professionals.jpg', 'Brothers, We Are Not Professionals: A Plea to Pastors for Radical Ministry', '10: 1433678829', 'John Piper', 'Paperback', 25, 'In this revised and expanded edition of Brothers, We Are Not Professionals that includes a new introduction and select all-new chapters, best-selling author John Piper pleads through a series of thoughtful essays with fellow pastors to abandon the professionalization of the pastorate and pursue the prophetic call of the Bible for radical ministry.\r\n\r\n“We pastors are being killed by the professionalizing of the pastoral ministry,” he writes. “The mentality of the professional is not the mentality of the prophet. It is not the mentality of the slave of Christ. Professionalism has nothing to do with the essence and heart of the Christian ministry. The more professional we long to be, the more spiritual death we will leave in our wake. For there is no professional childlikeness, there is no professional tenderheartedness, there is no professional panting after God.'),
(15, 'The-Believers-Authority.jpg', 'The Believer\'s Authority', '10: 1577949366', 'Andrew Wellmark', 'Paperback', 30, 'The controversial subject of the spiritual authority of the believer in Christ is widely discussed in the church today. Now, Andrew Wommack, host of the #1 fastest growing ministry on television, gives us a new perspective that may challenge everything we\'ve been taught including: If believers have been given authority, then when, how, and toward what should it be exercised? Discover the true battleground and learn how to recognize the real enemy. '),
(16, 'Instincts.jpg', 'Instincts: Unleasing Your Inborn Drive', '10: 1455554049', 'TD Jakes', 'Hardcover', 45, 'An instant #1 New York Times bestseller for six weeks, Bishop T.D. Jakes\'s smash-hit INSTINCT shows readers how to tap into their God-given intuition to achieve ultimate success. \r\n\r\nWhether you call it following your heart, a gut feeling, a hunch or intuition, instinct-the inner knowledge bubbling up from a wellspring of wisdom within-can lead to a bigger, elephant-sized life.\r\n\r\nCombining social, business and personal examples with biblical insights, in INSTINCT Bishop Jakes shows readers how to rediscover their natural aptitudes and reclaim the wisdom of their past experiences. Knowing when to close a deal, when to take a risk, and when to listen to their hearts will become possible when they\'re in touch with the instincts that God gave them. \r\n'),
(17, 'Leadership-Gold.jpg', 'Leadership Gold: Lessons I\'ve Learned from a Lifetime of Leading ', '10: 0785214119', ' John C. Maxwell', 'Hardcover', 47, 'A leader among leaders, John Maxwell promised himself early in his career that he wouldn\'t write this book until he was sixty. And now it\'s finally here. Leadership Gold took Maxwell a lifetime to write, and it delivers his most valuable lessons from forty years of leading. With his signature style, Maxwell comes alongside like a mentor, candidly taking readers through what feels like a one-on-one leadership program. Leadership Gold offers the best of the best, the tried-and-true lessons that no one but Maxwell can share.'),
(18, 'Business-as-Mission.jpg', 'Business as Mission: The Power of Business in the Kingdom of God', '10: 1576583880', 'Michael R. Baer', 'Paperback', 28, 'We are living in the Business Age. The historic role of nation states is rapidly being replaced by the corporation. Like never before, Christian business leaders have the chance to play a pivotal role in transforming society and spreading the gospel. But seizing this opportunity requires thinking differently about God, about his kingdom, about his purposes in the world, and about business.\r\n\r\nWhile some Christian professionals dream of being \"freed from business\" to go into the ministry or see business as enemy territory to be invaded for Christ, others are convinced that Christian principles simply don\'t work in the \"real world.\" In Business as Mission, Michael Baer challenges each of these positions. He rejects the unbiblical thinking that ministry and business are by definition separate activities -- that our lives can be compartmentalized into the sacred and secular. Instead he guides business leaders in developing the vital characteristics of a kingdom business -- the kind of business that will free them to live fully integrated lives and lead organizations that significantly impact the world.'),
(19, 'In-Pursuit-of-Purpose.jpg', 'In Pursuit of Purpose', '10: 1560431032', ' Myles Munroe', 'Paperback', 25, 'Best-selling author Myles Munroe reveals in this book the key to personal fulfillment: purpose. We must pursue purpose because our fulfillment in life depends upon our becoming what we were born to be and do. In Pursuit of Purpose will guide you on that path to finding God\'s purpose for your life.'),
(20, 'five-love-language.jpg', 'The 5 Love Languages: The Secret to Love that Lasts ', '10: 080241270X', 'GARY CHAPMAN', 'Hardcover', 45, 'Falling in love is easy. Staying in love—that’s the challenge. How can you keep your relationship fresh and growing amid the demands, conflicts, and just plain boredom of everyday life?\r\n\r\nIn the #1 New York Times bestseller The 5 Love Languages, you’ll discover the secret that has transformed millions of relationships worldwide. Whether your relationship is flourishing or failing, Dr. Gary Chapman’s proven approach to showing and receiving love will help you experience deeper and richer levels of intimacy with your partner—starting today.\r\n\r\nThe 5 Love Languages is as practical as it is insightful. Updated to reflect the complexities of relationships today, this new edition reveals intrinsic truths and applies relevant, actionable wisdom in ways that work.\r\n\r\nIncludes the Couple\'s Personal Profile assessment so you can discover your love language and that of your loved one.'),
(21, 'next.jpg', 'Next: Pastoral Succession That Works', '10: 080100571X', 'Warren Bird and William Vanderbloemen', 'Paperback', 37, 'Every church and ministry goes through changes in leadership, and the issue is far bigger than the wave of pastors from the Baby Boomer generation who are moving toward retirement. When a pastor leaves a church, ministries are disrupted and members drift away. If the church is already struggling, it can find itself suddenly in very dire straits indeed. But the outcome doesn\'t have to be that way.'),
(22, 'on-being-a-pastor.jpg', 'On Being a Pastor: Understanding Our Calling and Work', '10: 0802431224', ' Derek J. Prime & Alistair Begg', 'Paperback', 40, 'A pastor’s responsibilities are unique, demanding that he not only nurture his own spiritual life but also the lives of those in his care. What a challenge this can be!\r\n\r\nDerek Prime and Alistair Begg provide practical advice for both the spiritual and practical aspects of pastoral ministry. They delve deep into topics such as prayer, devotional habits, preaching, studying, and specific ministry duties. The result is an essential tool for those in pastoral ministry.'),
(23, 'brother-we-not-professionals.jpg', 'Brothers, We Are Not Professionals: A Plea to Pastors for Radical Ministry', '10: 1433678829', 'John Piper', 'Paperback', 25, 'In this revised and expanded edition of Brothers, We Are Not Professionals that includes a new introduction and select all-new chapters, best-selling author John Piper pleads through a series of thoughtful essays with fellow pastors to abandon the professionalization of the pastorate and pursue the prophetic call of the Bible for radical ministry.\r\n\r\n“We pastors are being killed by the professionalizing of the pastoral ministry,” he writes. “The mentality of the professional is not the mentality of the prophet. It is not the mentality of the slave of Christ. Professionalism has nothing to do with the essence and heart of the Christian ministry. The more professional we long to be, the more spiritual death we will leave in our wake. For there is no professional childlikeness, there is no professional tenderheartedness, there is no professional panting after God.'),
(24, 'The-Believers-Authority.jpg', 'The Believer\'s Authority', '10: 1577949366', 'Andrew Wellmark', 'Paperback', 30, 'The controversial subject of the spiritual authority of the believer in Christ is widely discussed in the church today. Now, Andrew Wommack, host of the #1 fastest growing ministry on television, gives us a new perspective that may challenge everything we\'ve been taught including: If believers have been given authority, then when, how, and toward what should it be exercised? Discover the true battleground and learn how to recognize the real enemy. '),
(25, 'Instincts.jpg', 'Instincts: Unleasing Your Inborn Drive', '10: 1455554049', 'TD Jakes', 'Hardcover', 45, 'An instant #1 New York Times bestseller for six weeks, Bishop T.D. Jakes\'s smash-hit INSTINCT shows readers how to tap into their God-given intuition to achieve ultimate success. \r\n\r\nWhether you call it following your heart, a gut feeling, a hunch or intuition, instinct-the inner knowledge bubbling up from a wellspring of wisdom within-can lead to a bigger, elephant-sized life.\r\n\r\nCombining social, business and personal examples with biblical insights, in INSTINCT Bishop Jakes shows readers how to rediscover their natural aptitudes and reclaim the wisdom of their past experiences. Knowing when to close a deal, when to take a risk, and when to listen to their hearts will become possible when they\'re in touch with the instincts that God gave them. \r\n'),
(26, 'Leadership-Gold.jpg', 'Leadership Gold: Lessons I\'ve Learned from a Lifetime of Leading ', '10: 0785214119', ' John C. Maxwell', 'Hardcover', 47, 'A leader among leaders, John Maxwell promised himself early in his career that he wouldn\'t write this book until he was sixty. And now it\'s finally here. Leadership Gold took Maxwell a lifetime to write, and it delivers his most valuable lessons from forty years of leading. With his signature style, Maxwell comes alongside like a mentor, candidly taking readers through what feels like a one-on-one leadership program. Leadership Gold offers the best of the best, the tried-and-true lessons that no one but Maxwell can share.'),
(27, 'Business-as-Mission.jpg', 'Business as Mission: The Power of Business in the Kingdom of God', '10: 1576583880', 'Michael R. Baer', 'Paperback', 28, 'We are living in the Business Age. The historic role of nation states is rapidly being replaced by the corporation. Like never before, Christian business leaders have the chance to play a pivotal role in transforming society and spreading the gospel. But seizing this opportunity requires thinking differently about God, about his kingdom, about his purposes in the world, and about business.\r\n\r\nWhile some Christian professionals dream of being \"freed from business\" to go into the ministry or see business as enemy territory to be invaded for Christ, others are convinced that Christian principles simply don\'t work in the \"real world.\" In Business as Mission, Michael Baer challenges each of these positions. He rejects the unbiblical thinking that ministry and business are by definition separate activities -- that our lives can be compartmentalized into the sacred and secular. Instead he guides business leaders in developing the vital characteristics of a kingdom business -- the kind of business that will free them to live fully integrated lives and lead organizations that significantly impact the world.'),
(28, 'In-Pursuit-of-Purpose.jpg', 'In Pursuit of Purpose', '10: 1560431032', ' Myles Munroe', 'Paperback', 25, 'Best-selling author Myles Munroe reveals in this book the key to personal fulfillment: purpose. We must pursue purpose because our fulfillment in life depends upon our becoming what we were born to be and do. In Pursuit of Purpose will guide you on that path to finding God\'s purpose for your life.'),
(29, 'five-love-language.jpg', 'The 5 Love Languages: The Secret to Love that Lasts ', '10: 080241270X', 'GARY CHAPMAN', 'Hardcover', 45, 'Falling in love is easy. Staying in love—that’s the challenge. How can you keep your relationship fresh and growing amid the demands, conflicts, and just plain boredom of everyday life?\r\n\r\nIn the #1 New York Times bestseller The 5 Love Languages, you’ll discover the secret that has transformed millions of relationships worldwide. Whether your relationship is flourishing or failing, Dr. Gary Chapman’s proven approach to showing and receiving love will help you experience deeper and richer levels of intimacy with your partner—starting today.\r\n\r\nThe 5 Love Languages is as practical as it is insightful. Updated to reflect the complexities of relationships today, this new edition reveals intrinsic truths and applies relevant, actionable wisdom in ways that work.\r\n\r\nIncludes the Couple\'s Personal Profile assessment so you can discover your love language and that of your loved one.'),
(30, 'next.jpg', 'Next: Pastoral Succession That Works', '10: 080100571X', 'Warren Bird and William Vanderbloemen', 'Paperback', 37, 'Every church and ministry goes through changes in leadership, and the issue is far bigger than the wave of pastors from the Baby Boomer generation who are moving toward retirement. When a pastor leaves a church, ministries are disrupted and members drift away. If the church is already struggling, it can find itself suddenly in very dire straits indeed. But the outcome doesn\'t have to be that way.'),
(31, 'on-being-a-pastor.jpg', 'On Being a Pastor: Understanding Our Calling and Work', '10: 0802431224', ' Derek J. Prime & Alistair Begg', 'Paperback', 40, 'A pastor’s responsibilities are unique, demanding that he not only nurture his own spiritual life but also the lives of those in his care. What a challenge this can be!\r\n\r\nDerek Prime and Alistair Begg provide practical advice for both the spiritual and practical aspects of pastoral ministry. They delve deep into topics such as prayer, devotional habits, preaching, studying, and specific ministry duties. The result is an essential tool for those in pastoral ministry.'),
(32, 'brother-we-not-professionals.jpg', 'Brothers, We Are Not Professionals: A Plea to Pastors for Radical Ministry', '10: 1433678829', 'John Piper', 'Paperback', 25, 'In this revised and expanded edition of Brothers, We Are Not Professionals that includes a new introduction and select all-new chapters, best-selling author John Piper pleads through a series of thoughtful essays with fellow pastors to abandon the professionalization of the pastorate and pursue the prophetic call of the Bible for radical ministry.\r\n\r\n“We pastors are being killed by the professionalizing of the pastoral ministry,” he writes. “The mentality of the professional is not the mentality of the prophet. It is not the mentality of the slave of Christ. Professionalism has nothing to do with the essence and heart of the Christian ministry. The more professional we long to be, the more spiritual death we will leave in our wake. For there is no professional childlikeness, there is no professional tenderheartedness, there is no professional panting after God.'),
(33, 'The-Believers-Authority.jpg', 'The Believer\'s Authority', '10: 1577949366', 'Andrew Wellmark', 'Paperback', 30, 'The controversial subject of the spiritual authority of the believer in Christ is widely discussed in the church today. Now, Andrew Wommack, host of the #1 fastest growing ministry on television, gives us a new perspective that may challenge everything we\'ve been taught including: If believers have been given authority, then when, how, and toward what should it be exercised? Discover the true battleground and learn how to recognize the real enemy. '),
(34, 'Instincts.jpg', 'Instincts: Unleasing Your Inborn Drive', '10: 1455554049', 'TD Jakes', 'Hardcover', 45, 'An instant #1 New York Times bestseller for six weeks, Bishop T.D. Jakes\'s smash-hit INSTINCT shows readers how to tap into their God-given intuition to achieve ultimate success. \r\n\r\nWhether you call it following your heart, a gut feeling, a hunch or intuition, instinct-the inner knowledge bubbling up from a wellspring of wisdom within-can lead to a bigger, elephant-sized life.\r\n\r\nCombining social, business and personal examples with biblical insights, in INSTINCT Bishop Jakes shows readers how to rediscover their natural aptitudes and reclaim the wisdom of their past experiences. Knowing when to close a deal, when to take a risk, and when to listen to their hearts will become possible when they\'re in touch with the instincts that God gave them. \r\n'),
(35, 'Leadership-Gold.jpg', 'Leadership Gold: Lessons I\'ve Learned from a Lifetime of Leading ', '10: 0785214119', ' John C. Maxwell', 'Hardcover', 47, 'A leader among leaders, John Maxwell promised himself early in his career that he wouldn\'t write this book until he was sixty. And now it\'s finally here. Leadership Gold took Maxwell a lifetime to write, and it delivers his most valuable lessons from forty years of leading. With his signature style, Maxwell comes alongside like a mentor, candidly taking readers through what feels like a one-on-one leadership program. Leadership Gold offers the best of the best, the tried-and-true lessons that no one but Maxwell can share.'),
(36, 'Business-as-Mission.jpg', 'Business as Mission: The Power of Business in the Kingdom of God', '10: 1576583880', 'Michael R. Baer', 'Paperback', 28, 'We are living in the Business Age. The historic role of nation states is rapidly being replaced by the corporation. Like never before, Christian business leaders have the chance to play a pivotal role in transforming society and spreading the gospel. But seizing this opportunity requires thinking differently about God, about his kingdom, about his purposes in the world, and about business.\r\n\r\nWhile some Christian professionals dream of being \"freed from business\" to go into the ministry or see business as enemy territory to be invaded for Christ, others are convinced that Christian principles simply don\'t work in the \"real world.\" In Business as Mission, Michael Baer challenges each of these positions. He rejects the unbiblical thinking that ministry and business are by definition separate activities -- that our lives can be compartmentalized into the sacred and secular. Instead he guides business leaders in developing the vital characteristics of a kingdom business -- the kind of business that will free them to live fully integrated lives and lead organizations that significantly impact the world.'),
(37, 'In-Pursuit-of-Purpose.jpg', 'In Pursuit of Purpose', '10: 1560431032', ' Myles Munroe', 'Paperback', 25, 'Best-selling author Myles Munroe reveals in this book the key to personal fulfillment: purpose. We must pursue purpose because our fulfillment in life depends upon our becoming what we were born to be and do. In Pursuit of Purpose will guide you on that path to finding God\'s purpose for your life.'),
(38, 'five-love-language.jpg', 'The 5 Love Languages: The Secret to Love that Lasts ', '10: 080241270X', 'GARY CHAPMAN', 'Hardcover', 45, 'Falling in love is easy. Staying in love—that’s the challenge. How can you keep your relationship fresh and growing amid the demands, conflicts, and just plain boredom of everyday life?\r\n\r\nIn the #1 New York Times bestseller The 5 Love Languages, you’ll discover the secret that has transformed millions of relationships worldwide. Whether your relationship is flourishing or failing, Dr. Gary Chapman’s proven approach to showing and receiving love will help you experience deeper and richer levels of intimacy with your partner—starting today.\r\n\r\nThe 5 Love Languages is as practical as it is insightful. Updated to reflect the complexities of relationships today, this new edition reveals intrinsic truths and applies relevant, actionable wisdom in ways that work.\r\n\r\nIncludes the Couple\'s Personal Profile assessment so you can discover your love language and that of your loved one.'),
(39, 'next.jpg', 'Next: Pastoral Succession That Works', '10: 080100571X', 'Warren Bird and William Vanderbloemen', 'Paperback', 37, 'Every church and ministry goes through changes in leadership, and the issue is far bigger than the wave of pastors from the Baby Boomer generation who are moving toward retirement. When a pastor leaves a church, ministries are disrupted and members drift away. If the church is already struggling, it can find itself suddenly in very dire straits indeed. But the outcome doesn\'t have to be that way.'),
(40, 'on-being-a-pastor.jpg', 'On Being a Pastor: Understanding Our Calling and Work', '10: 0802431224', ' Derek J. Prime & Alistair Begg', 'Paperback', 40, 'A pastor’s responsibilities are unique, demanding that he not only nurture his own spiritual life but also the lives of those in his care. What a challenge this can be!\r\n\r\nDerek Prime and Alistair Begg provide practical advice for both the spiritual and practical aspects of pastoral ministry. They delve deep into topics such as prayer, devotional habits, preaching, studying, and specific ministry duties. The result is an essential tool for those in pastoral ministry.'),
(41, 'brother-we-not-professionals.jpg', 'Brothers, We Are Not Professionals: A Plea to Pastors for Radical Ministry', '10: 1433678829', 'John Piper', 'Paperback', 25, 'In this revised and expanded edition of Brothers, We Are Not Professionals that includes a new introduction and select all-new chapters, best-selling author John Piper pleads through a series of thoughtful essays with fellow pastors to abandon the professionalization of the pastorate and pursue the prophetic call of the Bible for radical ministry.\r\n\r\n“We pastors are being killed by the professionalizing of the pastoral ministry,” he writes. “The mentality of the professional is not the mentality of the prophet. It is not the mentality of the slave of Christ. Professionalism has nothing to do with the essence and heart of the Christian ministry. The more professional we long to be, the more spiritual death we will leave in our wake. For there is no professional childlikeness, there is no professional tenderheartedness, there is no professional panting after God.');

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

DROP TABLE IF EXISTS `pickup`;
CREATE TABLE IF NOT EXISTS `pickup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branche` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `number` varchar(250) NOT NULL,
  `orderid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topcategorie`
--

DROP TABLE IF EXISTS `topcategorie`;
CREATE TABLE IF NOT EXISTS `topcategorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(250) NOT NULL,
  `subcategorie1` varchar(250) NOT NULL,
  `subcategorie2` varchar(250) NOT NULL,
  `subcategorie3` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topcategorie`
--

INSERT INTO `topcategorie` (`id`, `categorie`, `subcategorie1`, `subcategorie2`, `subcategorie3`) VALUES
(1, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(2, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(3, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(4, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(5, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(6, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(7, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(8, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(9, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media'),
(10, 'Arts & Photography', 'Design & Decorative Arts', 'Art History & Criticism Textbooks', 'Other Media');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`) VALUES
(6, 'bukari shamsu', 'ali@gmail.com', '90454544'),
(5, 'bukari shamsu', 'bukarishamsu@gmail.com', '90454544'),
(7, 'bukari shamsu', 'robbensam24@gmail.com', '88f36bf60201b989384d9022f5715f0c'),
(8, 'alise rose', 'ali2@gmail.com', '88f36bf60201b989384d9022f5715f0c'),
(9, '', '', 'd41d8cd98f00b204e9800998ecf8427e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
