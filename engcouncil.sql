-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2019 at 01:52 PM
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
-- Database: `engcouncil`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(3) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `parent` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `parent`) VALUES
(1, 'لجان المجلس', 0),
(2, 'عن المجلس', 0),
(3, 'الأخبار و الاحداث', 0),
(4, 'شركاء', 13),
(5, 'معرض الصور', 0),
(6, 'معرض الفيديو', 0),
(7, 'تحميل الملفات', 0),
(8, 'صور ترويجية', 8),
(9, 'التسحيل بالمجلس', 0),
(10, 'الممارسة', 0),
(11, 'التقويم والاعتراف', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(12) NOT NULL,
  `auther` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `comment_date` datetime NOT NULL,
  `post_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(1) NOT NULL,
  `site_title` varchar(200) NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `facebook_page` varchar(255) NOT NULL,
  `twitter_page` varchar(255) NOT NULL,
  `linked_in_page` varchar(255) NOT NULL,
  `youtube_page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `site_title`, `keywords`, `description`, `facebook_page`, `twitter_page`, `linked_in_page`, `youtube_page`) VALUES
(1, 'وزارة الاستثمار', 'هناك حقيقة, مثبتة منذ زمن طويل وهي أن, المحتوى المقروء لصفحة م,ا سيلهي القارئ عن التركيز على الشكل الخارج', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي،', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(12) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `file_date` date NOT NULL,
  `description` text NOT NULL,
  `category_id` int(3) NOT NULL,
  `created_by` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(3) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `status` enum('منشور','غير منشور','','') NOT NULL,
  `phone` varchar(16) NOT NULL,
  `category_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(12) NOT NULL,
  `type` enum('photo','video','file','sound') NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `media_date` date NOT NULL,
  `description` text NOT NULL,
  `category_id` int(3) NOT NULL,
  `created_by` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media_tag`
--

CREATE TABLE `media_tag` (
  `id` int(12) NOT NULL,
  `media_id` int(12) NOT NULL,
  `tag_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `poll_id`, `title`) VALUES
(4, 2, 'زيادة سقف القروض'),
(5, 2, 'إلغاء الرسوم و الجبايات'),
(6, 2, 'توفير بيوت الخبرة و الاستشارات'),
(7, 2, 'لا يجب التركيز مع الاستثمارات المحلية');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(3) NOT NULL,
  `permission_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `permission_name`) VALUES
(1, 'users management'),
(2, 'posts management'),
(3, 'photos management'),
(4, 'videos management'),
(5, 'files management'),
(6, 'links management'),
(7, 'settings management');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(12) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `photo_date` date NOT NULL,
  `description` text NOT NULL,
  `category_id` int(3) NOT NULL,
  `created_by` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `poll_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `closed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'if the poll is closed or not'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`poll_id`, `title`, `created`, `closed`) VALUES
(2, 'كيف يمكن زيادة الاستثمارات المحلية ؟', '2015-10-19 01:39:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(12) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `post_status` enum('draft','published','archived','') NOT NULL,
  `post_date` date NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `post_tag` varchar(20) NOT NULL,
  `summery` text NOT NULL,
  `body` text NOT NULL,
  `category_id` int(3) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `slug`, `post_status`, `post_date`, `image_url`, `post_tag`, `summery`, `body`, `category_id`, `created_by`) VALUES
(1, 'الرؤيا والاهداف', '', 'published', '2019-10-07', '', '', 'رؤيتنا\r\n\r\n·الوصول بمهنة الهندسة الي درجة التميز ممارسةً و سلوكاً.\r\nالرسالة\r\n\r\n\'; ·إدارة المجلس بكفاءة و فعالية بما يؤمن التميز للمهنة و ممتهنيها .\r\nالقيم\r\n\r\n\'; التميز في العمل . ·الشفافيــة والمساءلـة . ·الكفـــــــــاءة في الآداء.\r\nالأهداف\r\n\r\n\'; لتأكد من أن يتمتع السودان بكل الفوائد لمهنة هندسية قوية و قادرة عل تقديم الخبرة الضرورية للحاجة الإقتصادية و الإجتماعية للبلاد و الدفع بأثر إيجابي . ·تنظيم العمل الهندسي ليكون أكثر إحترافية وفعالية. · المساهمة في خلق مهنة هندسية قوية .. متنامية ..كفؤة .. مستدامة ... ·الرقي بقيم و أخلاقيات المهنة سلوكا و ممارسة. ·تطوير الأداء ورفع قدرات المهندسين علي المستوي القطري', 'رؤيتنا\r\n\r\n·الوصول بمهنة الهندسة الي درجة التميز ممارسةً و سلوكاً.\r\nالرسالة\r\n\r\n\'; ·إدارة المجلس بكفاءة و فعالية بما يؤمن التميز للمهنة و ممتهنيها .\r\nالقيم\r\n\r\n\'; التميز في العمل . ·الشفافيــة والمساءلـة . ·الكفـــــــــاءة في الآداء.\r\nالأهداف\r\n\r\n\'; لتأكد من أن يتمتع السودان بكل الفوائد لمهنة هندسية قوية و قادرة عل تقديم الخبرة الضرورية للحاجة الإقتصادية و الإجتماعية للبلاد و الدفع بأثر إيجابي . ·تنظيم العمل الهندسي ليكون أكثر إحترافية وفعالية. · المساهمة في خلق مهنة هندسية قوية .. متنامية ..كفؤة .. مستدامة ... ·الرقي بقيم و أخلاقيات المهنة سلوكا و ممارسة. ·تطوير الأداء ورفع قدرات المهندسين علي المستوي القطري', 2, 1),
(3, 'خلفية تارخية', '', 'published', '2019-10-01', '', '', 'رؤساء المجلس الهندسي منذ الدورة الأولي 1977م\r\n\r\n \r\n\r\n                                               \r\nم 	الإسم 	الدورة\r\n1 	م.م.ب/ احمد   عبدالرحمن العاقب 	الدورة الأولي\r\n2 	م.م/ نجم الدين   محمد احمد         	الدورة الثانية\r\n3 	م.م/ نجم الدين   محمد احمد 	الدورة الثالثة\r\n4 	م.م/ عوض سالم   الحكيم 	الدورة الرابعة\r\n5 	م.م.ب/ احمد عبدالرحمن   العاقب 	الدورة الخامسة\r\n6 	م.م/ نجم الدين   محمد احمد 	الدورة السادسة\r\n7 	م.م.ب/ انور   الهادي عبدالرحمن 	الدورة السابعة\r\n8 	م.م.ب/ انور   الهادي عبدالرحمن 	الدورة الثامنة\r\n9 	م.م.د/ حسن عمر   عبدالرحمن      	الدورة التاسعة', 'رؤساء المجلس الهندسي منذ الدورة الأولي 1977م\r\n\r\n \r\n\r\n                                               \r\nم 	الإسم 	الدورة\r\n1 	م.م.ب/ احمد   عبدالرحمن العاقب 	الدورة الأولي\r\n2 	م.م/ نجم الدين   محمد احمد         	الدورة الثانية\r\n3 	م.م/ نجم الدين   محمد احمد 	الدورة الثالثة\r\n4 	م.م/ عوض سالم   الحكيم 	الدورة الرابعة\r\n5 	م.م.ب/ احمد عبدالرحمن   العاقب 	الدورة الخامسة\r\n6 	م.م/ نجم الدين   محمد احمد 	الدورة السادسة\r\n7 	م.م.ب/ انور   الهادي عبدالرحمن 	الدورة السابعة\r\n8 	م.م.ب/ انور   الهادي عبدالرحمن 	الدورة الثامنة\r\n9 	م.م.د/ حسن عمر   عبدالرحمن      	الدورة التاسعة', 2, 1),
(5, 'النشاة والتكوين', '', '', '0000-00-00', '', '', 'رؤيتنا\r\n\r\n·الوصول بمهنة الهندسة الي درجة التميز ممارسةً و سلوكاً.\r\nالرسالة\r\n\r\n\'; ·إدارة المجلس بكفاءة و فعالية بما يؤمن التميز للمهنة و ممتهنيها .\r\nالقيم\r\n\r\n\'; التميز في العمل . ·الشفافيــة والمساءلـة . ·الكفـــــــــاءة في الآداء.\r\nالأهداف\r\n\r\n\'; لتأكد من أن يتمتع السودان بكل الفوائد لمهنة هندسية قوية و قادرة عل تقديم الخبرة الضرورية للحاجة الإقتصادية و الإجتماعية للبلاد و الدفع بأثر إيجابي . ·تنظيم العمل الهندسي ليكون أكثر إحترافية وفعالية. · المساهمة في خلق مهنة هندسية قوية .. متنامية ..كفؤة .. مستدامة ... ·الرقي بقيم و أخلاقيات المهنة سلوكا و ممارسة. ·تطوير الأداء ورفع قدرات المهندسين علي المستوي القطري', 'رؤيتنا\r\n\r\n·الوصول بمهنة الهندسة الي درجة التميز ممارسةً و سلوكاً.\r\nالرسالة\r\n\r\n\'; ·إدارة المجلس بكفاءة و فعالية بما يؤمن التميز للمهنة و ممتهنيها .\r\nالقيم\r\n\r\n\'; التميز في العمل . ·الشفافيــة والمساءلـة . ·الكفـــــــــاءة في الآداء.\r\nالأهداف\r\n\r\n\'; لتأكد من أن يتمتع السودان بكل الفوائد لمهنة هندسية قوية و قادرة عل تقديم الخبرة الضرورية للحاجة الإقتصادية و الإجتماعية للبلاد و الدفع بأثر إيجابي . ·تنظيم العمل الهندسي ليكون أكثر إحترافية وفعالية. · المساهمة في خلق مهنة هندسية قوية .. متنامية ..كفؤة .. مستدامة ... ·الرقي بقيم و أخلاقيات المهنة سلوكا و ممارسة. ·تطوير الأداء ورفع قدرات المهندسين علي المستوي القطري', 2, 1),
(6, 'تعريفات المجلس الهندسي', '', 'published', '2019-10-02', '', '', '', '', 9, 1),
(7, 'استخراج الرقم الهندسي', '', 'published', '2019-10-09', '', '', '', '', 9, 1),
(8, 'اللجنة المالية و الادارية', '', 'published', '2019-10-07', '', '', '', '', 1, 1),
(9, 'لجنة التسجيل', '', 'published', '2019-10-07', '', '', '', '', 1, 1),
(10, 'اللجنة الاكاديمية', '', 'published', '2019-10-06', '', '', '', '', 1, 1),
(11, 'اللجنة المهنية', '', 'published', '2019-10-06', '', '', '', '', 1, 1),
(12, 'لجنة التدريب', '', 'published', '2019-10-06', '', '', '', '', 1, 1),
(13, 'لائحة مزاولة مهنة الهندسة', '', 'published', '2019-10-07', '', '', '', '', 10, 1),
(14, 'استمارة طلب تقويم من المجلس الهندسي', '', 'published', '2019-10-06', '', '', '', '', 11, 1),
(15, 'مجموعة سوداتل تعلن دعمها الكامل للمجلس الهندسى', '', 'published', '2019-10-08', '', '', 'قال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .', 'قال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .\r\nقال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .', 3, 1),
(16, 'مجموعة سوداتل تعلن دعمها الكامل للمجلس الهندسى', '', 'published', '2019-10-08', '', '', 'قال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .', 'قال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .\r\nقال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .', 3, 1),
(17, 'مجموعة سوداتل تعلن دعمها الكامل للمجلس الهندسى', '', 'published', '2019-10-08', '', '', 'قال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .\r\n', 'قال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .\r\nقال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .', 3, 1),
(18, 'مجموعة سوداتل تعلن دعمها الكامل للمجلس الهندسى', '', 'published', '2019-10-08', '', '', 'قال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .', 'قال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .\r\nقال أنه يعتبر الوقود والمحرك الأساسى للمهندس فى كافة ضروب الحياة العملية .', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(12) NOT NULL,
  `post_id` int(12) NOT NULL,
  `tag_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(3) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`) VALUES
(1, 'super admin'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(3) NOT NULL,
  `permission_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, 3),
(2, 1, 2),
(3, 1, 1),
(4, 2, 3),
(5, 2, 2),
(6, 2, 5),
(7, 2, 6),
(8, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(12) NOT NULL,
  `tag_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `role_id`) VALUES
(1, 'صفاء الطاهر', 'user@mail.com', '2aeede80be6f6dfc0aa4d1cbd6487e24e27a81be', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(12) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `video_date` date NOT NULL,
  `description` text NOT NULL,
  `category_id` int(3) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `title`, `url`, `video_date`, `description`, `category_id`, `created_by`) VALUES
(1, 'رصد للاستثمارات السعودية في السودان', '-ie9IgCUI-I', '2015-08-01', '<p>\n	وصف للفيديو</p>\n', 6, 1),
(3, 'فرص الاستثمار في السودان', 'HIxGOwtwfFk', '2015-08-01', '<p>\n	وصف الفيديو</p>\n', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '' COMMENT 'max ipv6',
  `timestamp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `option_id`, `ip_address`, `timestamp`) VALUES
(1, 5, '127.0.0.1', 1445325823),
(2, 4, '127.0.0.1', 1445325892),
(3, 6, '127.0.0.1', 1445325915),
(4, 7, '127.0.0.1', 1445328714),
(5, 5, '127.0.0.1', 1445328735),
(6, 5, '127.0.0.1', 1445328761),
(7, 6, '127.0.0.1', 1445329251),
(8, 6, '127.0.0.1', 1445329323),
(9, 5, '127.0.0.1', 1445329409),
(10, 5, '127.0.0.1', 1445329468),
(11, 4, '127.0.0.1', 1445329753),
(12, 5, '127.0.0.1', 1445329834),
(13, 5, '127.0.0.1', 1445329839),
(14, 6, '127.0.0.1', 1445329847),
(15, 4, '127.0.0.1', 1445329856),
(16, 5, '127.0.0.1', 1445329862),
(17, 5, '127.0.0.1', 1445329876),
(18, 5, '127.0.0.1', 1445329884),
(19, 6, '127.0.0.1', 1445329894),
(20, 6, '127.0.0.1', 1445329903),
(21, 6, '127.0.0.1', 1445329909);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `media_tag`
--
ALTER TABLE `media_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id` (`media_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `option_poll_id` (`poll_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`poll_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`) USING BTREE,
  ADD KEY `created_by` (`created_by`) USING BTREE;

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `vote_option_id` (`option_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_tag`
--
ALTER TABLE `media_tag`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `poll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `file_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `link`
--
ALTER TABLE `link`
  ADD CONSTRAINT `link_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_tag`
--
ALTER TABLE `media_tag`
  ADD CONSTRAINT `media_tag_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `media_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `photo_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `video_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
