-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2019 at 10:15 AM
-- Server version: 5.5.60
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_wondercity`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `content` longtext COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `width` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `picture`, `order`, `content`, `status`, `created`, `url`, `cat_id`, `module`, `width`, `height`, `type`, `target`, `lang_code`) VALUES
(1, 'Cuộn trái', '/public/files/editor-upload/files/quang-cao-trai/2.png', 255, '&lt;div&gt;\r\n	cuộn trái content&lt;/div&gt;\r\n', 0, '2014-05-07 06:05:51', 'skype:quan.le350?chat', 7, 'default', '', '', 'flash', '_self', '*'),
(2, 'Cuộn phải', '/public/files/editor-upload/files/quang-cao-trai/2.png', 255, '', 0, '2014-05-07 06:05:24', 'http://diachianchoi.vn/', 8, 'default', '', '', 'image', '_self', '*'),
(3, 'Gửi liên hệ tới quanngon.com', '/public/files/editor-upload/files/quang-cao-trai/thiet-ke-web.jpg', 255, NULL, 0, '2014-03-24 10:03:56', 'http://diachianchoi.vn/', 9, 'default', '', '', 'image', '_self', '*'),
(5, 'Sáng', '/public/files/editor-upload/files/slide/an-sang.JPG', 255, '', 1, '2014-06-02 10:06:58', 'http://diachianchoi.vn/', 1, 'default', '', '', 'image', '_self', '*'),
(6, 'Đối tác', '/public/files/editor-upload/files/quang-cao-trai/thiet-ke-web.jpg', 255, NULL, 0, '2014-03-19 12:03:00', 'skype:quan.le350?chat', 4, 'default', '', '', 'image', '_self', '*'),
(8, 'Black List', '/public/files/editor-upload/files/quang-cao-black-list/anigif.gif', 255, '', 1, '2014-07-02 04:07:01', 'http://diachianchoi.vn/black-list-a11.html', 3, 'default', '', '', 'image', '_self', '*'),
(9, 'Cột trái', '/public/files/editor-upload/files/quang-cao-trai/quangcao.png', 255, NULL, 1, '2014-03-21 12:03:39', 'http://diachianchoi.vn/', 2, 'default', '', '', 'image', '_self', '*'),
(10, 'Trưa', '/public/files/editor-upload/files/slide/an-trua.JPG', 255, '&lt;div&gt;\r\n	content slide 1&lt;/div&gt;\r\n', 1, '2014-05-11 12:05:29', 'http://diachianchoi.vn/', 1, 'default', '', '', 'image', '_self', '*'),
(11, 'Chiều', '/public/files/editor-upload/files/slide/an-chieu.JPG', 255, '&lt;div&gt;\r\n	&lt;div&gt;\r\n		content slide 2&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 1, '2014-05-11 12:05:38', 'http://diachianchoi.vn/', 1, 'default', '', '', 'image', '_self', '*'),
(12, 'Lẩu bò', '/public/files/editor-upload/files/Banner/lau-bo.jpg', 255, '', 1, '2014-06-02 04:06:30', 'http://diachianchoi.vn/diadiem/public/tags/key/an%20vat', 6, 'default', '', '', 'image', '_self', '*'),
(13, 'Lẩu gà', '/public/files/editor-upload/files/Banner/lau-ga.jpg', 255, '', 1, '2014-06-02 04:06:00', 'http://diachianchoi.vn/', 6, 'default', '', '', 'image', '_self', '*'),
(14, 'Lẩu hải sản', '/public/files/editor-upload/files/Banner/lau-hai-san.jpg', 255, '', 1, '2014-06-02 04:06:54', 'http://diachianchoi.vn/', 6, 'default', '', '', 'image', '_self', '*'),
(15, 'Lẩu cá', '/public/files/editor-upload/files/Banner/lau-ca.jpg', 255, '', 1, '2014-06-02 04:06:00', 'http://diachianchoi.vn/', 6, 'default', '', '', 'image', '_self', '*'),
(16, 'Các loại lẩu khác', '/public/files/editor-upload/files/Banner/lau.jpg', 255, '', 1, '2014-06-02 04:06:53', 'http://diachianchoi.vn/', 6, 'default', '', '', 'image', '_self', '*'),
(17, 'Tối ', '/public/files/editor-upload/files/slide/an-toi.JPG', 255, '', 1, '2014-07-04 12:07:19', 'http://diachianchoi.vn/', 1, 'default', '', '', 'image', '_self', '*'),
(18, 'Trưa nay ăn gì 2', '/public/files/editor-upload/files/Hinh4.jpg', 255, '', 0, '2014-07-04 12:07:38', 'http://diachianchoi.vn/', 1, 'default', '', '', 'image', '_self', '*'),
(19, 'Chiều nay ăn gì 2', '/public/files/editor-upload/files/anh-8.jpg', 255, '', 0, '2014-07-04 12:07:32', 'http://diachianchoi.vn/', 1, 'default', '', '', 'image', '_self', '*');

-- --------------------------------------------------------

--
-- Table structure for table `ads_category`
--

CREATE TABLE `ads_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '10',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_category`
--

INSERT INTO `ads_category` (`id`, `name`, `alias`, `picture`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `content`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`) VALUES
(1, 'Slideshow', 'slideshow', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(2, 'Cột trái', 'cot-trai', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(3, 'Cột phải', 'cot-phai', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(4, 'Đối tác', 'doi-tac', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(5, 'Cửa sổ popup', 'cua-so-popup', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(6, 'Trang chủ ', 'trang-chu', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(7, 'Cuộn trái', 'cuon-trai', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(8, 'Cuộn phải', 'cuon-phai', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(9, 'Góc phải', 'goc-phai', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 1, NULL, NULL, NULL, NULL, '*'),
(10, 'Trang chủ 2', 'trang-chu-2', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 10, 0, NULL, NULL, NULL, NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special` tinyint(1) NOT NULL DEFAULT '0',
  `publish_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `synopsis` mediumtext COLLATE utf8_unicode_ci,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_fb` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `block_noibat` tinyint(1) NOT NULL DEFAULT '0',
  `block_hot` tinyint(1) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `page_id` int(11) DEFAULT NULL,
  `picture_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `alias`, `picture`, `thumb`, `special`, `publish_date`, `synopsis`, `author`, `content`, `hits`, `video`, `comment_fb`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `page_id`, `picture_mobile`) VALUES
(300, 'Some quick example text to build on 4', 'some-quick-example-text-to-build-on-4', '/public/files/editor-upload/images/bai-viet/img-sukien04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-sukien04.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;h2 class=\"detail-sp\" data-field=\"sapo\" style=\"margin: 0px auto; padding-bottom: 18px; font-family: Arial; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px; width: 465px; float: left; text-align: justify;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Chọn cách hâm sữa phù hợp cho con không khó nếu mẹ chịu tìm hiểu về từng điểm ưu và nhược của từng phương pháp.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;\r\n	&lt;div class=\"content-new clear\" data-field=\"body\" style=\"margin: 0px auto; clear: both; font-size: 12pt; line-height: 22px; font-family: &amp;quot;Times New Roman&amp;quot;; color: rgb(68, 68, 68); padding-bottom: 10px; text-align: justify;\"&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"margin: 0px auto;\"&gt;Phương pháp 1: Hâm sữa bằng nước ấm&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Đây là cách được nhiều mẹ áp dụng tại nhà vì tính đơn giản, không cần thiết bị cầu kì. Điểm ưu của phương pháp này là cách làm dễ dàng, chỉ cần đặt sữa mẹ đã rã đông ngâm vào nước nóng là có thể đạt ngay hiệu quả hâm. Tuy nhiên, nhiệt độ nước không đủ 40 độ C chính là điểm nhược lớn. Bởi nhiều mẹ thường ngâm nước nóng – lạnh theo tỉ lệ 1:1 và thử sữa trên mu bàn tay để nhắm chừng. Điều này đôi khi ảnh hưởng đến chất lượng bé bú,nóng – lạnh không đồng nhất hoặc nhiệt độ quá caogây mất một lượng dinh dưỡng đáng tiếc trong sữa mẹ.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Ngoài ra, nhiều mẹ vì không muốn con phải chờ lâu nên lắc mạnh tay để sữa nhanh ấm, tuy nhiên tác động mạnh của lực có thể sẽ làm gãy, phá vỡ cấu trúc phân tử của các chất dinh dưỡng.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;div class=\"VCSortableInPreviewMode\" style=\"margin: auto auto 9.29688px; text-align: center;\" type=\"Photo\"&gt;\r\n			&lt;div style=\"margin: 0px auto; text-align: justify;\"&gt;\r\n				&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"Mẹ gặp nhiều khó khăn khi đo nhiệt độ nước ngâm chuẩn 40 độ C?\" data-original=\"http://giadinh.mediacdn.vn/2017/photo-1-1507469907118.jpg\" h=\"574\" id=\"img_f7d114f0-ac2d-11e7-ad77-9f411bebcc1b\" photoid=\"f7d114f0-ac2d-11e7-ad77-9f411bebcc1b\" rel=\"http://giadinh.mediacdn.vn/2017/photo-1-1507469907118.jpg\" src=\"http://giadinh.mediacdn.vn/thumb_w/640/2017/photo-1-1507469907118.jpg\" style=\"margin: 0px auto; border: none; max-width: 100%;\" type=\"photo\" w=\"959\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n			&lt;div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; font-size: 12px; line-height: 18px; color: rgb(102, 102, 102); background-color: rgb(250, 250, 250); padding: 5px 0px; font-family: Arial !important; text-align: justify;\"&gt;\r\n				&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Mẹ gặp nhiều khó khăn khi đo nhiệt độ nước ngâm chuẩn 40 độ C?&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"margin: 0px auto;\"&gt;Phương pháp 2: Hâm sữa bằng lò vi sóng&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Để tiết kiệm thời gian mỗi lúc bận rộn, đa số các mẹ đều “cậy nhờ” lò vi sóng để hâm nóng sữa nhanh gọn cho con. Tiện lợi là thế, nhưng mối lo về hao hụt các dưỡng chất đã được chuyên gia khuyến cáonên “dè chừng”chính là điều mẹ cần cân nhắcthật kỹ.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Nhiệt độ và thời gian hâm nóng của lò vi sóng được xem là điểm ưu nhưng đồng thời cũng là điểm nhược. Đáng lo nhất chính là các chất quan trọng như lactose, vitamin A, B1, C có thể bị đốt cháy và phá hủy trong lúc hâm mà mẹ không biết. Mà trong đó, nguyên nhân chính là từ sự phân tản nhiệt nóng – lạnh không đều của lò vi sóng, quá nóng hoặc quá lạnh còn ảnh hưởng không tốt đến cảm quan khi bú của con.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"margin: 0px auto;\"&gt;Phương pháp 3: Hâm sữa mẹ bằng máy chuyên dụng&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Dần trở thành xu hướng chọn lựa mới của nhiều “mẹ bỉm sữa” hiện đại ngày nay, các máy hâm chuyên dụng gần như bao hàm đầy đủ các tính năng mẹ cần. Không những mang thiết kế nhỏ gọn, hợp với mọi kích thước bình sữa, mà chức năng hâm đảm bảo chính xác nhiệt độ “chuẩn” khoa học. Bên cạnh đó, điều mẹ an tâm nhất chính là khả năng bảo toàn 2 dưỡng chất chính protein và lactose gần như vẹn nguyên (Dựa trên kết quả kiểm nghiệm từ Viện Dinh Dưỡng Quốc gia với hai chất Lactose và Protein trên sữa mẹ mới vắt và sữa mẹ hâm bằng máy hâm sữa Fatz Baby - Tháng 8/2017).&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Ngoài ra, nhờ bộ canh thời gian tự động mà chỉ cần 6-10 phút (thời gian ngắn nhất để hâm sữa trong nhiệt độ phòng và nhiệt độ sữa ở 25 độ C trở lên) là mẹ có ngay một bình sữa ấm nóng cho bé ti tù tì. Đặc biệt hơn, các dòng máy hâm sữa hiện nay được trang bị khá nhiều chức năng thú vị: hâm nhiều bình một lúc, kết hợp tiệt trùng bình sữa, dụng cụ vắt cam và còn dùng được trên ô tô nữa.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;div id=\"admzone480462\" style=\"margin: 0px auto;\"&gt;\r\n			&lt;div id=\"ads_zone480462\" style=\"margin: 0px auto;\"&gt;\r\n				&lt;div id=\"ads_zone480462_slot1\" style=\"margin: 0px auto;\"&gt;\r\n					&amp;nbsp;&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=\"VCSortableInPreviewMode\" style=\"margin: auto auto 9.29688px; text-align: center;\" type=\"Photo\"&gt;\r\n			&lt;div style=\"margin: 0px auto; text-align: justify;\"&gt;\r\n				&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"Hâm sữa bằng máy chuyên dụng giúp mẹ an tâm về độ “chuẩn” nhiệt độ, thời gian, vẹn nguyên nguồn dưỡng chất.\" data-original=\"http://giadinh.mediacdn.vn/2017/photo-2-1507469907121.jpg\" h=\"579\" id=\"img_f7bddb10-ac2d-11e7-9564-854b3c797542\" photoid=\"f7bddb10-ac2d-11e7-9564-854b3c797542\" rel=\"http://giadinh.mediacdn.vn/2017/photo-2-1507469907121.jpg\" src=\"http://giadinh.mediacdn.vn/thumb_w/640/2017/photo-2-1507469907121.jpg\" style=\"margin: 0px auto; border: none; max-width: 100%;\" type=\"photo\" w=\"844\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n			&lt;div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; font-size: 12px; line-height: 18px; color: rgb(102, 102, 102); background-color: rgb(250, 250, 250); padding: 5px 0px; font-family: Arial !important; text-align: justify;\"&gt;\r\n				&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Hâm sữa bằng máy chuyên dụng giúp mẹ an tâm về độ “chuẩn” nhiệt độ, thời gian, vẹn nguyên nguồn dưỡng chất.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;p style=\"margin: 9.29688px 0px;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Dù là cách nào vẫn đem lại hiệu quả hâm sữa nhất định, quan trọng mẹ cần đặt ra những tiêu chuẩn dinh dưỡng phù hợp với khả năng, thời gian của mình, vừa thuận tiện và an toàn. Hy vọng lướt qua một vòng các cách trên mẹ sẽ tìm thấy cách tốt nhất cho con yêu nhé.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-10-13 10:10:53', 55, '2019-10-25 03:10:36', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 0, NULL),
(282, 'Some quick example text to build on', 'nhiet-ke-hong-ngoai-khong-can-tiep-xuc-hubdic-thermofinder-hdfs300', '/public/files/editor-upload/images/product/FS-300with-holder(1).jpg', '/public/files/editor-upload/_thumbs/images/product/FS-300with-holder(1).jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, '2N3FTtcUHfs', 0, '2017-08-15 10:08:17', 55, '2017-12-01 11:12:04', 55, 255, 0, 0, 0, 11, '', '', '', '', 'vi', 3, NULL),
(283, 'Some quick example text to build on', 'bo-chuyen-doi-may-hut-sua-unimom-tu-may-hut-dien-thanh-hut-tay', '/public/files/editor-upload/images/product/Allegro-(1).jpg', '/public/files/editor-upload/_thumbs/images/product/Allegro-(1).jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'tTTawXMKaLE', 0, '2017-08-15 10:08:57', 55, '0000-00-00 00:00:00', 0, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 2, NULL),
(284, 'Some quick example text to build on', 'tui-tru-sua-unimom', '/public/files/editor-upload/images/product/Breastmilk-Storage-Bag.jpg', '/public/files/editor-upload/_thumbs/images/product/Breastmilk-Storage-Bag.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, '8UlxG0JyVuM', 0, '2017-08-15 10:08:42', 55, '2017-08-15 05:08:41', 55, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 2, NULL),
(285, 'Some quick example text to build on', 'may-hut-sua-unimom_-cac-van-de-thuong-gap', '/public/files/editor-upload/images/product/dien-doi.jpg', '/public/files/editor-upload/_thumbs/images/product/dien-doi.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'gshUtvGeevA', 0, '2017-08-15 11:08:21', 55, '2017-08-31 11:08:21', 55, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 2, NULL),
(263, 'Some quick example text to build on', 'nhiet-ke-hong-ngoai-hubdic-hdfs300', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'hQAAyjqduI0', 0, '2017-07-12 04:07:31', 55, '2017-07-12 05:07:29', 55, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 3, NULL),
(264, 'Some quick example text to build on', 'nhiet-ke-hong-ngoai-khong-can-tiep-xuc-hubdic-thermofinder-s-hdfs700', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, '3sTG07pj4Eg', 0, '2017-07-12 04:07:53', 55, '2017-07-12 05:07:34', 55, 255, 1, 0, 1, 11, '', '', '', '', 'vi', 3, NULL),
(265, 'Some quick example text to build on', 'nhiet-ke-hong-ngoai-khong-can-tiep-xuc-hubdic-thermofinder-hdfs1000', '/public/files/editor-upload/images/product/6L3A1522.JPG', '/public/files/editor-upload/_thumbs/images/product/6L3A1522.JPG', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'EdZMUbCNgFc', 0, '2017-07-12 04:07:17', 55, '2017-12-01 11:12:00', 55, 255, 0, 0, 0, 11, '', '', '', '', 'vi', 3, NULL),
(301, 'Some quick example text to build on 3', 'some-quick-example-text-to-build-on-3', '/public/files/editor-upload/images/bai-viet/img-sukien04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-sukien04.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Để tri ân tình cảm của các khách hàng yêu quý, Fatz baby xin được gửi tới mọi người chương trình khuyến mại vô cùng hấp dẫn.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"\" src=\"/public/files/editor-upload/images/tin-tuc/CTKM-fanpage.jpg\" style=\"width: 675px; height: 450px;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Chương trình khuyến mại vô cùng hấp dẫn mà các mẹ không thể bỏ qua từ trước đến nay của Fatz baby. Mua Fatz có quà, cả nhà cùng vui với những phần quà vô cùng giá trị và hữu ích cho các mẹ đang nuôi con nhỏ.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Theo đó từ ngày 06/11 đến ngày 10/12/2017, khi khách hàng mua một trong các dòng máy hâm sữa bất kỳ của Fatz baby sẽ được tặng ngay môt hộp túi trữ sữa mẹ Unimom cụ thể như sau:&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:680px;\" width=\"680\"&gt;\r\n			&lt;tbody&gt;\r\n				&lt;tr&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:119px;height:23px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Thời gian áp dụng&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:95px;height:23px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Mã sản phẩm&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:165px;height:23px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Sản phẩm&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:195px;height:23px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Quà tặng&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:107px;height:23px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Trị giá quà tặng&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:119px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;06/11 - 06/12&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:95px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;FB3002SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width:165px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Máy hâm sữa 4 chức năng FB3002SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td rowspan=\"2\" style=\"width:195px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Túi đựng sữa mẹ cảm ứng nhiệt UNIMOM không có BPA 210ml (loại 10 túi/hộp) UM870398&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:107px;height:66px;\"&gt;\r\n						&lt;div align=\"right\"&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;61,000&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:119px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;06/11 - 06/12&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:95px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;FB3027SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width:165px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Máy hâm sữa bình cổ siêu rộng FB3027SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:107px;height:66px;\"&gt;\r\n						&lt;div align=\"right\"&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;61,000&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:119px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;06/11 - 06/12&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:95px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;FB3003SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width:165px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Máy hâm sữa siêu tốc 3 chức năng FB3003SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td rowspan=\"2\" style=\"width:195px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Túi đựng sữa mẹ UNIMOM tiêu chuẩn&amp;nbsp; không có BPA 210ml (loại 10 túi/hộp) UM870374&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:107px;height:66px;\"&gt;\r\n						&lt;div align=\"right\"&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;59,000&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:119px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;06/11 - 06/12&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:95px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;FB3010AC&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width:165px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Máy hâm sữa tiện lợi đa chức năng FB3010AC&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:107px;height:66px;\"&gt;\r\n						&lt;div align=\"right\"&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;59,000&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:119px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;06/11 - 06/12&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:95px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;FB3028SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width:165px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Máy hâm sữa điện tử bình cổ siêu rộng FB3028SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td rowspan=\"2\" style=\"width:195px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Túi đựng sữa mẹ UNIMOM tiêu chuẩn&amp;nbsp; không có BPA 210ml (loại 20 túi/hộp) UM870381&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:107px;height:66px;\"&gt;\r\n						&lt;div align=\"right\"&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;108,000&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:119px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;10/11 - 10/12&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:95px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;FB3012SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width:165px;height:66px;\"&gt;\r\n						&lt;div&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Máy hâm sữa 2 bình cổ rộng - thế hệ mới FB3012SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n					&lt;td nowrap=\"nowrap\" style=\"width:107px;height:66px;\"&gt;\r\n						&lt;div align=\"right\"&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;108,000&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n			&lt;/tbody&gt;\r\n		&lt;/table&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=\"clear:both;\"&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;THỜI GIAN ÁP DỤNG CHƯƠNG TRÌNH&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Từ ngày 06/11 đến ngày 10/12/2017&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;ĐỊA ĐIỂM ÁP DỤNG CHƯƠNG TRÌNH&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Chương trình áp dụng tại tất cả các đại lý phân phối của Fatz babytrên toàn quốc (Bibomart, Kidplaza, Tuticare, Shoptretho, Con cưng… và các cửa hàng mẹ và bé).&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;LIÊN HỆ &lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;strong&gt;FACEBOOK&lt;/strong&gt;:&amp;nbsp;&lt;/span&gt;&lt;a href=\"https://www.facebook.com/fatzbabyvietnam/\"&gt;&lt;span style=\"color:#000000;\"&gt;https://www.facebook.com/fatzbabyvietnam/&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;HOTLINE:&lt;/strong&gt;&amp;nbsp;1900 545 597&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Do số lượng có hạn, chương trình sẽ kết thúc khi hết thời gian khuyến mại hoặc khi hết sản phẩm khuyến mại. Vậy nên hãy tham gia ngay hôm nay để vừa có thể sử dụng sản phẩm với chất lượng và dịch vụ tốt nhất từ Fatz baby, đồng thời nhận được quà cực hấp dẫn nhé.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"margin-left:11.25pt;\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Hãy theo dõi fanpage&amp;nbsp;&lt;/span&gt;&lt;a href=\"https://www.facebook.com/fatzbabyvietnam/\"&gt;&lt;span style=\"color:#000000;\"&gt;https://www.facebook.com/fatzbabyvietnam/&lt;/span&gt;&lt;/a&gt;&lt;span style=\"color:#000000;\"&gt; để cập nhật những thông tin, kiến thức hữu ích và những sự kiện khuyến mại mới nhất.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-11-06 09:11:11', 55, '2019-10-25 03:10:52', 55, 1, 1, 1, 0, 10, '', '', '', '', 'vi', 0, NULL),
(299, 'Some quick example text to build on', 'nhung-ngo-nhan-me-thuong-mac-ve-ham-sua', '/public/files/editor-upload/images/mo-ban/img-sukien02.jpg', '/public/files/editor-upload/_thumbs/images/mo-ban/img-sukien02.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;h2 class=\"description\" style=\"margin: 10px 0px; padding: 0px 0px 5px; box-sizing: border-box; text-rendering: geometricPrecision; line-height: 18px; color: rgb(68, 68, 68); font-stretch: normal; font-size: 14px; font-family: arial; text-align: justify;\"&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Nhiều mẹ nghĩ rằng hâm sữa làm mất chất dinh dưỡng, bịch sữa đông lạnh thả vào bát nước nóng hoặc quay lò nóng đều được...&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;\r\n	&lt;article class=\"content_detail fck_detail width_common block_ads_connect\" style=\"margin: 0px; padding: 0px 0px 10px; box-sizing: border-box; text-rendering: geometricPrecision; width: 500px; float: left; color: rgb(51, 51, 51); font-size: 14px; font-family: arial;\"&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;Xa con để đi làm trở lại, các bà mẹ thường hút sữa trữ đông lạnh để ở nhà cho bé bú. Thao tác hâm nóng&amp;nbsp;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;đơn giản song đòi hỏi mẹ cần có kiến thức nhất định. Có 2 ngộ nhận mẹ thường gặp nhất khi hâm sữa cho con:&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"subtitle\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-weight: 700; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;Hâm sữa làm mất chất dinh dưỡng&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Nhiề&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;u mẹ truyền tai nhau rằng, nếu hâm sữa thì dinh dưỡng sẽ \"bốc hơi\", cho bé bú sữa rã đông ở nhiệt độ thường là đảm bảo nhất.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Trên thực tế, không phải cách hâm nào cũng làm mất dưỡng chất. Vitamin và kháng thể trong sữa mẹ thường hao hụt khi tiếp xúc với nhiệt độ quá cao hoặc do tác động lực (lắc mạnh tay).&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin: 10px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; max-width: 100%; width: 500px;\"&gt;\r\n			&lt;tbody style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;\r\n				&lt;tr style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;\r\n					&lt;td style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; line-height: 0; text-align: justify;\"&gt;\r\n						&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"Trữ&amp;nbsp;sữa&amp;nbsp;đông lạnh là giải pháp nuôi con khi đi làm trở lại của nhiều bà mẹ.\" class=\"lazyInitial lazyLoaded\" data-natural-width=\"500\" data-pwidth=\"500\" data-was-processed=\"true\" data-width=\"500\" src=\"https://i-giadinh.vnecdn.net/2017/10/13/Anh-tui-sua-1-8823-1507860010.png\" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;\r\n					&lt;td style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; line-height: 0;\"&gt;\r\n						&lt;p class=\"Image\" style=\"margin: 0px; padding: 10px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; font-size: 12px; line-height: normal; background: rgb(245, 245, 245); text-align: justify;\"&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Trữ&amp;nbsp;sữa mẹ đông lạnh là giải pháp nuôi con khi đi làm trở lại của nhiều chị em.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n			&lt;/tbody&gt;\r\n		&lt;/table&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Những phương pháp hâm sữa phổ biến hiện nay gồm quay lò vi sóng, nước sôi, máy hâm sữa.... Nếu không kiểm soát đúng về nhiệt độ và thời gian, có thể khiến tỷ lệ dinh dưỡng trong sữa mẹ thay đổi.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;Máy hâm sữa được đánh giá có khả năng bảo toàn chất dinh dưỡng tốt hơn. Khả năng lưu giữ vitamin của máy cũng cao hơn lò vi sóng. Thiết bị giúp kiểm soát mức nhiệt độ an toàn trong thời gian p&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;hù hợp, giúp mẹ bớt lo hao hụt chất lượng sữa.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"subtitle\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-weight: 700; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Sữa hâm nóng, để nguội đúng 37 độ C là được&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;L&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;ý do bé thích bú mẹ trực tiếp là vì sữa luôn ấm như cơ thể mẹ, mang lại cảm giác thân thuộc. 37 độ C là nhiệt độ chuẩn, nhưng mẹ cần chọn phương pháp hâm sữa đảm bảo các tiêu chí: nhiệt độ, thời gian và dinh dưỡng.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;Nhi&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;ều mẹ muốn nhanh chóng rã đông sữa cho bé uống, nên sử dụng lò vi sóng, ngâm nước nóng. Các phương pháp này thường khiến sữa nóng già, phải đợi nguội về mức nhiệt lý tưởng mới cho bé uống.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Dùng lò vi sóng nhanh nhất, song lại tạo ra những điểm nóng - lạnh không đồng đều, có thể khiến bé bị bỏng khi bú. Bên cạnh đó, sóng điện từ có thể phá hủy các vitamin thiết yếu, gây hao hụt lượng dưỡng chất quý báu trong sữa mẹ.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin: 10px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; max-width: 100%; width: 500px;\"&gt;\r\n			&lt;tbody style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;\r\n				&lt;tr style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;\r\n					&lt;td style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; line-height: 0; text-align: justify;\"&gt;\r\n						&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"[Caption]\" class=\"lazyLoading\" data-natural-width=\"500\" data-pwidth=\"500\" data-was-processed=\"true\" data-width=\"500\" src=\"https://i-giadinh.vnecdn.net/2017/10/13/May-ham-sua-2-6382-1507860010.jpg\" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;\r\n					&lt;td style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; line-height: 0;\"&gt;\r\n						&lt;p class=\"Image\" style=\"margin: 0px; padding: 10px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; font-size: 12px; line-height: normal; background: rgb(245, 245, 245); text-align: justify;\"&gt;\r\n							&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Máy hâm sữa làm ấm đến&amp;nbsp;37 độ C bằng hơi nước trong 6-10 phút.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n			&lt;/tbody&gt;\r\n		&lt;/table&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;Cách ngâm nước nóng bảo toàn được phần lớn dinh dưỡng, nhưng khó canh chỉnh nhiệt độ chuẩn. Nhiều mẹ không muốn con phải chờ lâu, nên hay lắc mạnh tay để sữa nhanh ấm, mà không biết rằng tác động lực mạnh có thể làm gãy, phá vỡ cấu trúc phân tử trong dưỡng chất.&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; font-stretch: normal; line-height: 18px; text-align: justify;\"&gt;\r\n			&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision;\"&gt;Máy hâm sữa có cơ chế giữ nhiệt chuẩn, làm ấm sữa ở mức 37 độ C bằng hơi nước trong 6-10 phút. Dinh dưỡng được lưu giữ gần như toàn vẹn, đặc biệt là hai chất lactose và protein.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;/article&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-10-13 10:10:22', 55, '2019-09-16 03:09:33', 47, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 0, NULL);
INSERT INTO `articles` (`id`, `name`, `alias`, `picture`, `thumb`, `special`, `publish_date`, `synopsis`, `author`, `content`, `hits`, `video`, `comment_fb`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `page_id`, `picture_mobile`) VALUES
(298, 'Some quick example text to build on', '5-nguyen-tac-vang-me-can-nam-long-de-ham-sua-khong-bi-mat-chat', '/public/files/editor-upload/images/mo-ban/img-sukien01.jpg', '/public/files/editor-upload/_thumbs/images/mo-ban/img-sukien01.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify; -webkit-text-stroke-width: 0.1px;\"&gt;Chắc hẳn ai làm mẹ đều biết tầm quan trọng của việc hâm sữa mẹ sau khi trữ đông và trước khi cho con bú. Nhưng hâm thế nào cho đúng để giữ trọn vẹn dưỡng chất thì mẹ phải thuộc nằm lòng 5 nguyên tắc vàng sau.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;Nguyên tắc 1: Nhiệt độ lý tưởng nhất ở 37 độ&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Nhiệt độ hâm sữa tốt nhất nên ở mức 37-40 độ C, ấm vừa bằng thân nhiệt của mẹ. Ở mức nhiệt độ này sẽ tạo cho bé cảm giác quen thuộc như bú mẹ thật.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Tuy nhiên, thường rất khó để đo chính xác độ ấm “chuẩn” 37 độ C với một số cách hâm như lò vi sóng hay ngâm nước nóng truyền thống. Sữa hâm quá nóng sẽ bị phân hủy vitamin và dưỡng chất, vì vậy khi cân nhắc giữa các phương pháp hâm sữa, nguyên tắc đầu tiên mẹ cần lưu ý là nhiệt độ chuẩn để tránh làm mất chất trong sữa nhé.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;div class=\"VCSortableInPreviewMode\" style=\"margin: 0px auto 22px; padding: 0px; text-align: center; width: 492px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\" type=\"Photo\"&gt;\r\n		&lt;div style=\"margin: 0px; padding: 0px;\"&gt;\r\n			&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;img alt=\"5 nguyên tắc vàng mẹ cần nằm lòng để hâm sữa không bị mất chất - Ảnh 1.\" data-original=\"http://channel.mediacdn.vn/prupload/825/2017/10/img20171004180820441.jpg\" height=\"\" rel=\"lightbox\" src=\"http://channel.mediacdn.vn/thumb_w/640/prupload/825/2017/10/img20171004180820441.jpg\" style=\"margin: 0px auto; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;\" title=\"5 nguyên tắc vàng mẹ cần nằm lòng để hâm sữa không bị mất chất - Ảnh 1.\" width=\"\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;div class=\"PhotoCMS_Caption\" style=\"margin: auto; padding: 0px; font-style: italic; width: 472px;\"&gt;\r\n			&lt;p data-placeholder=\"[nhập chú thích]\" style=\"margin: 10px 0px; padding: 0px; line-height: 20px; width: 472px; font-size: 12pt !important;\"&gt;\r\n				&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Nguyên tắc đầu tiên mẹ cần lưu ý là nhiệt độ chuẩn để tránh làm mất chất trong sữa.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;Nguyên tắc 2: Đảm bảo dụng cụ đựng sữa luôn sạch sẽ&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;An toàn - vệ sinh vẫn luôn là nguyên tắc vàng khi chăm con nhỏ. Vì bình sữa là vật dụng trực tiếp đựng sữa và có ảnh hưởng lớn đến chất lượng dinh dưỡng cho bé yêu. Cách tốt nhất để tiệt trùng dụng cụ là sử dụng nhiệt, mẹ có thể áp dụng một số cách sau:&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;• Trụng nhanh nước sôi từ 3-5 phút cẩn thận từ trong ra ngoài.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;• Hấp cách thủy (chưng cất) bình và núm khoảng 5-7 phút để khử trùng bằng hơi nước.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;• Sử dụng máy tiệt trùng bình sữa chuyên dụng cho kết quả nhanh nhất.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;Nguyên tắc 3: Hâm đủ lượng sữa cho một cữ ăn của bé&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Từng giai đoạn, độ tuổi khác nhau tương ứng nhu cầu sữa ở mỗi cữ khác nhau. Vậy nên, việc phân chia sẵn liều lượng sữa vào từng túi riêng và trữ lạnh sẽ giúp mẹ không mất nhiều thời gian trong việc đong đếm liều lượng thế nào là cần đủ cũng như an tâm cho con một bữa sữa đủ chất.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Sữa đã rã đông và được hâm nóng dù bé không uống hết mẹ tuyệt đối không được trữ lại dùng tiếp hay trộn chung với sữa mới để tiếp tục trữ đông. Điều này có thể làm biến đổi 2 chất protein và lactose, vô cùng không tốt cho bé.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;Nguyên tắc 4: Dù đông hay hè, vẫn cần hâm sữa nhé&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Một số mẹ quan niệm mùa hè không cần hâm sữa vì sữa trữ đông được đặt trong môi trường ngoài sẽ đạt nhiệt độ “chuẩn” phù hợp với bé. Quan niệm này hoàn toàn không đúng. Nhiệt độ phòng không đủ để sữa đạt nhiệt độ chuẩn (theo như nguyên tắc 1). Vì vậy mẹ cần lưu ý hâm sữa cho bé dù là đông hay hè (đối với miền Bắc), hoặc khu vực có thời tiết ấm (đối với miền Nam) nhé.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;Nguyên tắc 5: Lựa chọn phương pháp hâm sữa an toàn và phù hợp&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Những phương pháp hâm sữa khác nhau (lò vi sóng, nước sôi, máy hâm sữa) với khả năng kiểm soát về thời gian, nhiệt độ khác nhau sẽ mang đến kết quả không hề giống nhau trong việc giữ chất dinh dưỡng trong sữa.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Cụ thể, máy hâm sữa có khả năng giữ được chất dinh dưỡng tốt hơn: \"Dựa trên kết quả kiểm nghiệm từ Viện Dinh Dưỡng Quốc gia với hai chất Lactose và Protein trên sữa mẹ mới vắt và sữa mẹ hâm bằng máy hâm sữa Fatz Baby - Tháng 8/2017\".&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Khả năng giữ vitamin của máy hâm sữa cũng được kiểm chứng cao hơn lò vi sóng: \"Dựa trên kết quả kiểm nghiệm từ Viện Dinh Dưỡng Quốc Gia đối với 3 loại Vitamin A, B1, C trên sữa mẹ mới vắt, sữa mẹ hâm bằng máy Fatz và sữa mẹ hâm bằng lò vi sóng - Tháng 8/2017\".&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Gợi ý cho mẹ: máy hâm sữa đang là lựa chọn được phần đông các mẹ yêu thích: vừa \"kinh tế\' vì dùng được quanh năm, cả đông lẫn hè, vừa tiện lợi khi được kết hợp các chức năng khác như tiệt trùng bình sữa hoặc dùng được ngay trên ô tô.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;div class=\"VCSortableInPreviewMode active noCaption\" style=\"margin: 0px auto 22px; padding: 0px; text-align: center; width: 492px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\" type=\"Photo\"&gt;\r\n		&lt;div style=\"margin: 0px; padding: 0px;\"&gt;\r\n			&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;img alt=\"5 nguyên tắc vàng mẹ cần nằm lòng để hâm sữa không bị mất chất - Ảnh 2.\" data-original=\"http://afamilycdn.com/2017/x-1507115665379.png\" h=\"497\" height=\"\" id=\"img_2e7a9990-a8f5-11e7-a065-7937920d296b\" photoid=\"2e7a9990-a8f5-11e7-a065-7937920d296b\" rel=\"lightbox\" src=\"http://afamilycdn.com/thumb_w/660/2017/x-1507115665379.png\" style=\"margin: 0px auto; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom; cursor: none;\" title=\"5 nguyên tắc vàng mẹ cần nằm lòng để hâm sữa không bị mất chất - Ảnh 2.\" type=\"photo\" w=\"1046\" width=\"\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;div class=\"PhotoCMS_Caption\" style=\"margin: auto; padding: 0px; font-style: italic; width: 472px;\"&gt;\r\n			&lt;p class=\"NLPlaceholderShow\" data-placeholder=\"[nhập chú thích]\" style=\"margin: 10px 0px; padding: 0px; line-height: 20px; width: 472px; font-size: 12pt !important;\"&gt;\r\n				&amp;nbsp;&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;p style=\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"color:#000000;\"&gt;Dù là cách nào thì mẹ cũng nên suy xét chọn ra phương pháp an toàn và phù hợp nhất để đảm bảo mang lại nguồn sữa dinh dưỡng nhất cho sự phát triển của bé yêu nhé.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-10-13 10:10:58', 55, '2019-09-16 03:09:16', 47, 1, 1, 1, 0, 10, '', '', '', '', 'vi', 0, NULL),
(308, 'Some quick example text to build on', 'num-ty-chinh-nha-nip-miss-denti', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'WIYt5Wt_qxA', 0, '2017-12-06 10:12:08', 55, '2017-12-06 10:12:22', 55, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 31, NULL),
(274, 'Some quick example text to build on', 'may-tiet-trung-say-kho-khu-mui-bang-tia-uv-upang', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'sc6ezTxhGcI', 0, '2017-08-15 10:08:13', 55, '0000-00-00 00:00:00', 0, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 28, NULL),
(278, 'Some quick example text to build on', 'hubdic', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, '-yyWKZ-cytE', 0, '2017-08-15 10:08:53', 55, '2017-12-01 11:12:25', 55, 255, 0, 0, 0, 11, '', '', '', '', 'vi', 2, NULL),
(279, 'Some quick example text to build on', 'hut-mui-dien-hubdic', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, '9vWn6fPrZeM', 0, '2017-08-15 10:08:27', 55, '2017-12-01 11:12:10', 55, 255, 0, 0, 0, 11, '', '', '', '', 'vi', 3, NULL),
(281, 'Some quick example text to build on', 'may-hut-sua-dien-doi-unimom-forte-um880038', '/public/files/editor-upload/images/product/premium-allegro.png(1).jpg', '/public/files/editor-upload/_thumbs/images/product/premium-allegro.png(1).jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'vf_HQW_rNm0', 0, '2017-08-15 10:08:35', 55, '2017-08-30 02:08:03', 55, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 2, NULL),
(302, 'Some quick example text to build on 2', 'some-quick-example-text-to-build-on-2', '/public/files/editor-upload/images/bai-viet/img-sukien02.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-sukien02.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Với mong muốn đáp ứng được mọi mong muốn của người tiêu dùng, Fatz đã luôn không ngừng nổ lực cải tiến đến mang đến tay người tiêu dùng những sản phẩm chất lượng càng ngày càng tốt hơn, hiện đại hơn, tiện lợi hơn.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Sau một thời gian dài nghiên cứu nhu cầu cũng như mong muốn của khách hàng, Fazt baby đã cho ra mắt ba dòng máy hâm sữa mới. Với những cải tiến vượt trội về mặt kỹ thuật, ba dòng sản phẩm mới của Fazt baby hứa hẹn sẽ làm hài long được ngay cả những bà mẹ khó tính nhất.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"\" src=\"/public/files/editor-upload/images/slide/san-pham-moi(1).jpg\" style=\"width: 766px; height: 300px;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;1. Máy hâm sữa cho bình cổ siêu rộng FB3027SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Tất cả các tiêu chuẩn về chất lượng và độ an toàn vẫn được đảm bảo đồng thời với cải tiến mới là khoang chứa rộng hơn, phù hợp được cho tất cả các loại bình sữa, đặc biệt là bình cổ siêu rộng.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"\" src=\"/public/files/editor-upload/images/product/FB3027SL-2.jpg\" style=\"width: 400px; height: 400px;\" /&gt;&lt;img alt=\"\" src=\"/public/files/editor-upload/images/product/FB3027SL-1.jpg\" style=\"width: 400px; height: 400px;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;2. Máy hâm sữa điện tử bình cổ siêu rộng FB3028SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Đây là phiên bản mới với những đặc điểm tiên tiến vượt trội:&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;+ Khoang hâm nóng rộng hơn phù hợp với cả bình sữa cổ siêu rộng&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;+ Có thể tùy chọn chế độ hâm nóng chậm (với sữa và thức ăn ở nhiệt độ phòng) hoặc hâm nóng nhanh (với sữa và thức ăn vừa lấy ra từ tủ lạnh) tùy chọn.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;+ Đặc biệt được thiết kế với màn hình kỹ thuật số hiện đại hiển thị nhiệt độ, tiện lợi hơn khi sử dụng.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"\" src=\"/public/files/editor-upload/images/product/FB3028SL-1.jpg\" style=\"width: 400px; height: 400px;\" /&gt;&lt;img alt=\"\" src=\"/public/files/editor-upload/images/product/FB3028SL-2.jpg\" style=\"width: 400px; height: 400px;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;3. Máy hâm sữa hai bình cổ rộng – thế hệ mới FB3012SL&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Cải tiến hơn hẳn so với các dòng máy trước đây, FB3012SL được thiết kế với đế tiếp xúc được tráng một lớp Teflon giúp giảm thiểu nguy cơ chập điện, chống bámcặn và trầy xước, chống thấm nước, vệ sinh dễ dàng vànhanh chóng, tiết kiệm điện năng tiêu thụ.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"\" src=\"/public/files/editor-upload/images/product/FB3012SL.jpg\" style=\"width: 400px; height: 400px;\" /&gt;&lt;img alt=\"\" src=\"/public/files/editor-upload/images/product/FB3012SL-1-100.jpg\" style=\"width: 400px; height: 400px;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=\"color:#000000;\"&gt;&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Với những cải tiến được trau truốt đến từng chi tiết, Fatz baby tin tưởng cả ba dòng máy mới sẽ đem lại những trải nghiệm chăm sóc con yêu tuyệt vời cho các mẹ.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-11-10 05:11:32', 55, '2019-11-01 02:11:58', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 0, NULL),
(303, 'Some quick example text to build on', 'may-hut-sua-dien-doi-minuet-lcd', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'dubRsXV8Akc', 0, '2017-12-01 10:12:15', 55, '0000-00-00 00:00:00', 0, 1, 1, 0, 0, 11, '', '', '', '', 'vi', 2, NULL),
(305, 'Some quick example text to build on', 'ham-sua-nhu-the-nao-la-dung-chuan', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'YU_kGlz_Mg4', 0, '2017-12-01 11:12:22', 55, '2017-12-05 10:12:06', 55, 1, 1, 0, 0, 11, '', '', '', '', 'vi', 29, NULL),
(306, 'Some quick example text to build on', 'binh-sua-co-rong-nip', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'uvx7aq1IO_s', 0, '2017-12-01 11:12:48', 55, '2017-12-06 11:12:22', 55, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 31, NULL),
(307, 'Some quick example text to build on1', 'some-quick-example-text-to-build-on1', '/public/files/editor-upload/images/bai-viet/img-sukien01.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-sukien01.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Nối tiếp chuỗi chương trình khuyến mại cùng Fatz baby với những phần quà vô cùng hấp dẫn.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;img alt=\"\" src=\"/public/files/editor-upload/images/tin-tuc/CTKM-thang-12-Fatz.png\" style=\"height: 400px; width: 751px;\" /&gt;&lt;/div&gt;\r\n	&lt;div style=\"text-align: center;\"&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Chương trình khuyến mãi với những phần quà hấp dẫn chắc chắn các các mẹ đang nuôi con nhỏ sẽ cảm thấy vô cùng hứng thú.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Theo đó từ ngày 04/12 đến ngày 31/12/2017, khi khách hàng mua một trong các dòng máy bất kỳ của Fatz baby sẽ được tặng ngay khăn ướt em bé Upass sản xuất tại Nhật Bản cụ thể như sau:&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:677px;\" width=\"677\"&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:145px;height:22px;\"&gt;\r\n					&lt;div&gt;\r\n						&lt;strong&gt;Mã sản phẩm&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:205px;height:22px;\"&gt;\r\n					&lt;div&gt;\r\n						&lt;strong&gt;Tên sản phẩm&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:203px;height:22px;\"&gt;\r\n					&lt;div&gt;\r\n						&lt;strong&gt;Quà tặng&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:124px;height:22px;\"&gt;\r\n					&lt;div&gt;\r\n						&lt;strong&gt;Trị giá quà tặng&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:145px;height:44px;\"&gt;\r\n					&lt;div&gt;\r\n						FB4019SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:205px;height:44px;\"&gt;\r\n					&lt;div&gt;\r\n						Máy tiệt trùng siêu tốc 6 bình Fazt baby FB4019SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:203px;height:44px;\"&gt;\r\n					&lt;div&gt;\r\n						01 Túi khăn ướt Upass có tinh chất HA UP6036D&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:124px;height:44px;\"&gt;\r\n					&lt;div align=\"right\"&gt;\r\n						38,500&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:145px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						FB4028SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:205px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						Máy tiệt trùng bình sữa thông minh Fatz baby loại mới FB4028SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:203px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						01 Túi khăn ướt Upass có tinh chất HA UP6036D&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:124px;height:66px;\"&gt;\r\n					&lt;div align=\"right\"&gt;\r\n						38,500&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:145px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						FB4906SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:205px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						Máy tiệt trùng hơi nước sấy khô FB4906SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:203px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						02 Khăn ướt Upass: 01 túi HA UP6036D + 01 Hand and Mouth UP6038D&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:124px;height:66px;\"&gt;\r\n					&lt;div align=\"right\"&gt;\r\n						79,500&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:145px;height:44px;\"&gt;\r\n					&lt;div&gt;\r\n						FB3004SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:205px;height:44px;\"&gt;\r\n					&lt;div&gt;\r\n						Máy hâm nước pha sữa Fatz FB3004SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:203px;height:44px;\"&gt;\r\n					&lt;div&gt;\r\n						01 Túi khăn ướt Upass có tinh chất HA UP6036D&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:124px;height:44px;\"&gt;\r\n					&lt;div align=\"right\"&gt;\r\n						38,500&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:145px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						FB3005SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:205px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						Máy hâm nước pha sữa có đồng hồ đo nhiệt độ Fatz baby FB 3005SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:203px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						01 Túi khăn ướt Upass có tinh chất HA UP6036D&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:124px;height:66px;\"&gt;\r\n					&lt;div align=\"right\"&gt;\r\n						38,500&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:145px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						FB3009SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:205px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						Máy hâm nước pha sữa có nhiệt độ bằng điện Fatzbaby FB3009SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:203px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						01 Túi khăn ướt Upass có tinh chất HA UP6036D&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:124px;height:66px;\"&gt;\r\n					&lt;div align=\"right\"&gt;\r\n						38,500&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:145px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						FB3501SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:205px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						Máy đun và hâm nước siêu tốc FB3501SL&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:203px;height:66px;\"&gt;\r\n					&lt;div&gt;\r\n						02 Khăn ướt Upass: 01 túi HA UP6036D + 01 Hand and Mouth UP6038D&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td nowrap=\"nowrap\" style=\"width:124px;height:66px;\"&gt;\r\n					&lt;div align=\"right\"&gt;\r\n						79,500&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;THỜI GIAN ÁP DỤNG CHƯƠNG TRÌNH&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Từ ngày 04/12 đến ngày 31/12/2017&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;ĐỊA ĐIỂM ÁP DỤNG CHƯƠNG TRÌNH&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Chương trình áp dụng tại tất cả các đại lý phân phối của Fatz babytrên toàn quốc (Bibomart, Kidplaza, Tuticare, Shoptretho, Con cưng… và các cửa hàng mẹ và bé).&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;LIÊN HỆ&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;FACEBOOK&lt;/strong&gt;:&amp;nbsp;&lt;a href=\"https://www.facebook.com/fatzbabyvietnam/\"&gt;https://www.facebook.com/fatzbabyvietnam/&lt;/a&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;HOTLINE:&lt;/strong&gt;&amp;nbsp;1900 545 597&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Do số lượng có hạn, chương trình sẽ kết thúc khi hết thời gian khuyến mại hoặc khi hết sản phẩm khuyến mại. Vậy nên hãy tham gia ngay hôm nay để vừa có thể sử dụng sản phẩm với chất lượng và dịch vụ tốt nhất từ Fatz baby, đồng thời nhận được quà cực hấp dẫn nhé.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Hãy theo dõi fanpage&amp;nbsp;&lt;a href=\"https://www.facebook.com/fatzbabyvietnam/\"&gt;https://www.facebook.com/fatzbabyvietnam/&lt;/a&gt;&amp;nbsp;để cập nhật những thông tin, kiến thức hữu ích và những sự kiện khuyến mại mới nhất.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-12-04 11:12:11', 55, '2019-11-01 02:11:53', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 0, NULL),
(309, 'Some quick example text to build on', 'so-sanh-num-ty-truyen-thong-voi-num-ty-chinh-nha-miss-denti', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'CSPeATd_Wvo', 0, '2017-12-06 10:12:59', 55, '2017-12-06 11:12:16', 55, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 31, NULL),
(312, 'Some quick example text to build on', 'hop-dung-num-ty-nip', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div class=\"b__footer\"&gt;\r\n	&lt;div class=\"containers\"&gt;\r\n		&lt;div class=\"b__footer--info\"&gt;\r\n			&lt;div class=\"b__footer--row\"&gt;\r\n				&lt;div class=\"b__footer--left\"&gt;\r\n					&lt;div class=\"b__footer--top_logo mgb_30\"&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"images/logo_ft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n					&lt;div class=\"b__footer--bottom\"&gt;\r\n						&lt;div class=\"b__footer--first\"&gt;\r\n							&lt;h3&gt;\r\n								Dự án Wonder City&lt;/h3&gt;\r\n							&lt;p&gt;\r\n								Khu vực Vân Phong,&lt;br /&gt;\r\n								huyện Vạn Ninh, tỉnh Khánh Hòa&lt;/p&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=\"b__footer--second\"&gt;\r\n							&lt;h3&gt;\r\n								Văn phòng giao dịch&lt;/h3&gt;\r\n							&lt;ul class=\"nav nav-tabs\" id=\"myTab\" role=\"tablist\"&gt;\r\n								&lt;li class=\"nav-item\"&gt;\r\n									&lt;a aria-controls=\"home\" aria-selected=\"true\" class=\"nav-link active\" data-toggle=\"tab\" href=\"#home\" id=\"home-tab\" role=\"tab\"&gt;Hà nội&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li class=\"nav-item\"&gt;\r\n									&lt;a aria-controls=\"profile\" aria-selected=\"false\" class=\"nav-link\" data-toggle=\"tab\" href=\"#profile\" id=\"profile-tab\" role=\"tab\"&gt;Hồ Chí Minh&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li class=\"nav-item\"&gt;\r\n									&lt;a aria-controls=\"contact\" aria-selected=\"false\" class=\"nav-link\" data-toggle=\"tab\" href=\"#contact\" id=\"contact-tab\" role=\"tab\"&gt;Cam Ranh&lt;/a&gt;&lt;/li&gt;\r\n							&lt;/ul&gt;\r\n							&lt;div class=\"tab-content\" id=\"myTabContent\"&gt;\r\n								&lt;div aria-labelledby=\"home-tab\" class=\"tab-pane fade show active\" id=\"home\" role=\"tabpanel\"&gt;\r\n									&lt;p&gt;\r\n										CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n								&lt;/div&gt;\r\n								&lt;div aria-labelledby=\"profile-tab\" class=\"tab-pane fade\" id=\"profile\" role=\"tabpanel\"&gt;\r\n									&lt;p&gt;\r\n										CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n								&lt;/div&gt;\r\n								&lt;div aria-labelledby=\"contact-tab\" class=\"tab-pane fade\" id=\"contact\" role=\"tabpanel\"&gt;\r\n									&lt;p&gt;\r\n										CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__footer--right\"&gt;\r\n					&lt;div class=\"b__footer--right_logo mgb_30\"&gt;\r\n						&lt;h3&gt;\r\n							&lt;span class=\"text-uppercase\"&gt;Chủ đầu tư &lt;/span&gt;&lt;a href=\"#\"&gt;&lt;img src=\"images/logo_partner.png\" /&gt;&lt;/a&gt;&lt;/h3&gt;\r\n						&lt;p&gt;\r\n							Công ty Cổ phần đầu tư và Du lịch T&amp;amp;M Vân Phong&lt;br /&gt;\r\n							146 Lê Hồng Phong, Phường Phước Hải,&lt;br /&gt;\r\n							TP Nha Trang, Khánh Hòa&lt;/p&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=\"b__footer--content\"&gt;\r\n						&lt;h3&gt;\r\n							Đại lý phân phối chính thức&lt;/h3&gt;\r\n						&lt;div class=\"owl-carousel logoFooterSlider\" id=\"logoFooter\"&gt;\r\n							&lt;div class=\"items-f\"&gt;\r\n								&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n							&lt;div class=\"items-f\"&gt;\r\n								&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n							&lt;div class=\"items-f\"&gt;\r\n								&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n							&lt;div class=\"items-f\"&gt;\r\n								&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__social--footer\"&gt;\r\n				&lt;ul&gt;\r\n					&lt;li&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"images/icon_download.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"images/icon_facebook.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"images/icon_camera.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"images/icon_globe.png\" /&gt; Ngôn ngữ &lt;/a&gt;&lt;/li&gt;\r\n				&lt;/ul&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__footer--row b__footer--bottom\"&gt;\r\n				&lt;div class=\"b__footer--left\"&gt;\r\n					&lt;p&gt;\r\n						Thông tin, hình ảnh, các tiện ích trên website chỉ mang tính chất tương đối và có thể được điều chỉnh&lt;br /&gt;\r\n						theo quyết định của Chủ đầu tư tại từng thời điểm đảm bảo phù hợp quy hoạch và thực tế thi công Dự Án.&lt;/p&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__footer-right\"&gt;\r\n					&lt;p&gt;\r\n						© 2019 Wonder City All rights reserved.&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '1nS-TS2BuBY', 0, '2017-12-06 11:12:41', 55, '2019-09-30 11:09:39', 47, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 0, NULL),
(311, 'Some quick example text to build on', 'cac-tinh-nang-cua-num-ty-chinh-nha-nip-miss-denti', '', '', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'zcIXs7uOMDc', 0, '2017-12-06 10:12:52', 55, '0000-00-00 00:00:00', 0, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 31, NULL);
INSERT INTO `articles` (`id`, `name`, `alias`, `picture`, `thumb`, `special`, `publish_date`, `synopsis`, `author`, `content`, `hits`, `video`, `comment_fb`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `page_id`, `picture_mobile`) VALUES
(313, 'Some quick example text to build on', 'chinh-sach-bao-mat', '/public/files/editor-upload/images/bai-viet/img-info04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info04.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Chính sách bảo mật này công bố cách thức mà&amp;nbsp;&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Công ty Cổ phần Phân phối Quốc tế Genex&lt;/span&gt;&lt;/span&gt;&amp;nbsp;(Sau đây gọi tắt là “&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&lt;/span&gt;” hoặc “Chúng tôi”) thu thập, lưu trữ và xử lý thông tin hoặc dữ liệu cá nhân (“Thông tin cá nhân”) của các khách hàng của mình thông qua wesite&lt;font color=\"#4a4a4a\"&gt;&lt;span style=\"box-sizing: border-box; cursor: pointer; outline-color: initial; outline-style: initial;\"&gt;p &lt;a href=\"http://genex.com.vn\"&gt;http&lt;/a&gt;&lt;/span&gt;&lt;/font&gt;&lt;a href=\"http://genex.com.vn\"&gt;://genex.com.vn&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Chúng tôi cam kết sẽ bảo mật các Thông tin cá nhân của khách hàng, sẽ nỗ lực hết sức và sử dụng các biện pháp thích hợp để các thông tin mà khách hàng cung cấp cho chúng tôi trong quá trình sử dụng website này được bảo mật và bảo vệ khỏi sự truy cập trái phép. Tuy nhiên,&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&amp;nbsp;&lt;/span&gt;không đảm bảo ngăn chặn được tất cả các truy cập trái phép.&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Công ty Cổ phần Phân phối Quốc tế Genex&lt;/span&gt;&amp;nbsp;không ủy quyền cho bên thứ ba thực hiện việc thu thập, lưu trữ thông tin cá nhân của người tiêu dùng.&amp;nbsp;Trong trường hợp truy cập trái phép nằm ngoài khả năng kiểm soát của chúng tôi,&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&lt;/span&gt;&amp;nbsp;sẽ không chịu trách nhiệm dưới bất kỳ hình thức nào đối với bất kỳ khiếu nại, tranh chấp hoặc thiệt hại nào phát sinh từ hoặc liên quan đến truy cập trái phép đó.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Để hiểu rõ hơn về chính sách trong công tác thu thập, lưu trữ và sử dụng thông tin cá nhân của người sử dụng website&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&lt;/span&gt;, vui lòng đọc các chính sách bảo mật dưới đây:&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;1. Mục đích và phạm vi thu thập thông tin cá nhân&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Để truy cập và sử dụng một số dịch vụ tại&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&lt;/span&gt;, bạn có thể sẽ được yêu cầu đăng ký với chúng tôi thông tin cá nhân (Email, Họ tên, Số ĐT liên lạc,…). Mọi thông tin khai báo phải đảm bảo tính chính xác và hợp pháp.&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&lt;/span&gt;&amp;nbsp;không chịu mọi trách nhiệm liên quan đến pháp luật của thông tin khai báo.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Chúng tôi cũng có thể thu thập thông tin về số lần viếng thăm, bao gồm số trang bạn xem, số links (liên kết) bạn click và những thông tin khác liên quan đến việc kết nối đến site của&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&lt;/span&gt;. Chúng tôi cũng thu thập các thông tin mà trình duyệt Web (Browser) bạn sử dụng mỗi khi truy cập vào&amp;nbsp;&lt;a href=\"http://genex.com.vn\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(74, 74, 74); text-decoration-line: none; margin: 0px; padding: 0px; cursor: pointer; outline: 0px;\"&gt;http://genex.com.vn&lt;/a&gt;, bao gồm: địa chỉ IP, loại Browser, ngôn ngữ sử dụng, thời gian và những địa chỉ mà Browser truy xuất đến.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;2. Phạm vi sử dụng thông tin&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Chúng tôi chỉ sử dụng thông tin cá nhân đã thu thập với mục đích: (i) để cung cấp sản phẩm theo đúng đơn đặt hàng của khách hàng và giải quyết các vấn đề có liên quan (phí vận chuyển, đổi, trả, bảo hành...); (ii) để gởi thư ngỏ (trong trường hợp khách có đăng ký nhận thông báo khuyến mại), đơn đặt hàng, thư cảm ơn, các thông tin khác liên quan đến dịch vụ và thao tác trên website&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&lt;/span&gt;; (iv) thực hiện các nghĩa vụ theo quy định của pháp luật&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;3. Thời gian lưu trữ thông tin&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Genex&lt;/span&gt;&amp;nbsp;sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống nội bộ của chúng tôi trong quá trình cung cấp dịch vụ cho khách hàng hoặc cho đến khi hoàn thành mục đích thu thập hoặc khi khách hàng có yêu cầu hủy các thông tin đã cung cấp.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;4.Những người có thể được tiếp cận với thông tin thu thập:&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Các nhân viên Phòng Công nghệ thông tin, Phòng Kinh doanh và Bán hàng trực tiếp của Công ty.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;5. Địa chỉ của đơn vị thu thập và quản lý thông tin cá nhân&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"color: rgb(0, 0, 0); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Công ty Cổ phần Phân phối Quốc tế Genex&lt;/span&gt;, có trụ sở tại 50A Dương Đức Hiền, P.TâyThạnh, Q. Tân Phú&lt;/span&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;font color=\"#ffffff\" face=\"Arial\"&gt;&lt;span style=\"background-color: rgb(0, 167, 233);\"&gt;,&lt;/span&gt;&lt;/font&gt;&lt;font color=\"#000000\" face=\"Roboto, Arial, Open Sans, HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif\"&gt;&amp;nbsp;TP. Hồ Chí Minh - Email: info@genex.com.vn&amp;nbsp; Điện thoại: 028 62672317&amp;nbsp;(mua hàng và&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;font color=\"#4a4a4a\" face=\"Roboto, Arial, Open Sans, HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif\"&gt;hỗ trợ: 1900545597)&lt;/font&gt;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;6. Phương tiện và công cụ để người dùng tiếp cận và chỉnh sửa dữ liệu cá nhân của mình.&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Bất cứ thời điểm nào khách hàng cũng có thể tự chỉnh sửa những thông tin cá nhân của mình bằng cách:(i) Đăng nhập vào tài khoản của khách hàng, chọn tên của khách hàng để hiện thị mục \"Tài khoản\", vào mục “Thông tin cá nhân” và chọn mục “chỉnh sửa thông tin của bạn”; hoặc&amp;nbsp;(ii) Liên hệ qua email&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 0);\"&gt;&amp;nbsp;info@genex.com.vn&lt;/span&gt;&amp;nbsp;để được nhân viên quản lý website hỗ trợ gửi các link chỉnh sửa thông tin thích hợp qua email mà khách hàng đã đăng ký khi khách hàng muốn thay đổi/kiểm tra thông tin hoặc phát hiện tình trạng giả mạo thông tin.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;7. Cam kết về bảo mật thông tin cá nhân khách hàng&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;&amp;nbsp;cam kết bảo mật thông tin cá nhân của bạn bằng mọi cách thức có thể. Chúng tôi sẽ sử dụng nhiều công nghệ bảo mật thông tin khác nhau nhằm bảo vệ thông tin này không bị truy lục, sử dụng hoặc tiết lộ ngoài ý muốn.&amp;nbsp;Trường hợp hệ thống thông tin bị tấn công làm phát sinh nguy cơ mất thông tin của người tiêu đùng thì ngay khi phát hiện sự cố, Concung.com sẽ thực hiện mọi thủ tục theo quy định của pháp luật và nỗ lực giảm thiệt hại&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;&amp;nbsp;khuyến cáo bạn nên bảo mật các thông tin liên quan đến mật khẩu truy xuất của bạn và không nên chia sẻ với bất kỳ người nào khác. Nếu sử dụng máy tính chung nhiều người, bạn nên đăng xuất, hoặc thoát hết tất cả cửa sổ Website đang mở.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Sử dụng “Cookie”&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;&amp;nbsp;dùng \"Cookie\" để giúp cá nhân hóa và nâng cao tối đa hiệu quả sử dụng thời gian trực tuyến của bạn.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Một cookie là một file văn bản được đặt trên đĩa cứng của bạn bởi một máy chủ của trang web. Cookie không được dùng để chạy chương trình hay đưa virus vào máy tính của bạn. Cookie được chỉ định lưu vào máy tính của bạn và chỉ có thể được đọc bởi trang web đó.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Một trong những mục đích của Cookie là cung cấp những tiện ích để tiết kiệm thời gian của bạn khi truy cập tại website hoặc viếng thăm website lần nữa mà không cần đăng ký lại thông tin sẵn có.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Bạn có thể chấp nhận hoặc từ chối dùng cookie. Hầu hết những Browser tự động chấp nhận cookie, nhưng bạn có thể thay đổi những cài đặt để từ chối tất cả những cookie nếu bạn thích. Tuy nhiên, nếu bạn chọn từ chối cookie, điều đó có thể gây cản trở và ảnh hưởng không tốt đến một số dịch vụ và tính năng phụ thuộc vào cookie tại website&amp;nbsp;&lt;a href=\"http://genex.com.vn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(74, 74, 74); text-decoration-line: none; margin: 0px; padding: 0px; cursor: pointer; outline: 0px;\"&gt;http://genex.com.vn&lt;/a&gt;&amp;nbsp;hoặc&amp;nbsp;&lt;a href=\"http://genex.com.vn\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(74, 74, 74); text-decoration-line: none; margin: 0px; padding: 0px; cursor: pointer; outline: 0px;\"&gt;http://genex.com&lt;/a&gt;.vn&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Quy định về “Spam”&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;&amp;nbsp;thực sự quan ngại đến vấn nạn Spam (thư rác), các email giả mạo danh tín chúng tôi gởi đi. Do đó, Genex&amp;nbsp;khẳng định chỉ gởi email đến bạn khi và chỉ khi bạn có đăng ký hoặc sử dụng dịch vụ từ hệ thống của chúng tôi.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;&amp;nbsp;cam kết không bán, thuê lại hoặc cho thuê email của bạn từ bên thứ ba. Nếu bạn vô tình nhận được email không theo yêu cầu từ hệ thống chúng tôi do một nguyên nhân ngoài ý muốn, xin vui lòng nhấn vào link từ chối nhận email này kèm theo, hoặc thông báo trực tiếp đến ban quản trị website.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;\"&gt;Chia sẻ thông tin cá nhân&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Ngoại trừ các trường hợp về Sử dụng thông tin cá nhân như đã nêu trong chính sách này, chúng tôi cam kết sẽ không tiết lộ thông tin cá nhân bạn ra ngoài.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Trong một số trường hợp, chúng tôi có thể thuê một đơn vị độc lập để tiến hành các dự án nghiên cứu thị trường và khi đó thông tin của bạn sẽ được cung cấp cho đơn vị này để tiến hành dự án. Bên thứ ba này sẽ bị ràng buộc bởi một thỏa thuận về bảo mật mà theo đó họ chỉ được phép sử dụng những thông tin được cung cấp cho mục đích hoàn thành dự án.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Chúng tôi có thể tiết lộ hoặc cung cấp thông tin cá nhân của bạn trong các trường hợp thật sự cần thiết như sau: (a) khi có yêu cầu của các cơ quan pháp luật; (b) trong trường hợp mà chúng tôi tin rằng điều đó sẽ giúp chúng tôi bảo vệ quyền lợi chính đáng của mình trước pháp luật; (c) tình huống khẩn cấp và cần thiết để bảo vệ quyền an toàn cá nhân của các thành viên&amp;nbsp;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&amp;nbsp;khác.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;8. Thay đổi về chính sách&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Nội dung của “Chính sách bảo mật” này có thể thay đổi để phù hợp với các nhu cầu của&amp;nbsp;&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;&amp;nbsp;cũng như nhu cầu và sự phản hồi từ khách hàng nếu có. Khi cập nhật nội dung chính sách này, chúng tôi sẽ chỉnh sửa lại thời gian “Cập nhật lần cuối” bên trên.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Nội dung “Chính sách bảo mật” này chỉ áp dụng tại&amp;nbsp;&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;, không bao gồm hoặc liên quan đến các bên thứ ba đặt quảng cáo hay có link tại&amp;nbsp;&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;. Do đó, chúng tôi đề nghị bạn đọc và&amp;nbsp; tham khảo kỹ nội dung “&lt;a href=\"https://concung.com/chinh-sach-bao-mat-thong-tin.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(74, 74, 74); text-decoration-line: none; margin: 0px; padding: 0px; cursor: pointer; outline: 0px;\"&gt;Chính sách bảo mật&lt;/a&gt;” của từng website mà bạn đang truy cập.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(74, 74, 74); margin: 0px; font-size: 24px; padding: 0px; text-align: justify;\"&gt;\r\n	&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;9. Thông tin liên hệ&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Chúng tôi &amp;nbsp;thường xuyên kiểm tra tính xác thực của thông tin cá nhân mà khách hàng đã cung cấp và&amp;nbsp;luôn hoan nghênh các ý kiến đóng góp, liên hệ và phản hồi thông tin từ bạn về “Chính sách bảo mật” này cũng như những thông tin cá nhân mà bạn phát hiện đang sai sót hoặc đã được điều chỉnh bất thường. Nếu bạn có những thắc mắc,&amp;nbsp;khiếu nại liên quan đến Chính sách này hoặc thông tin cá nhân của bạn xin vui lòng liên hệ theo địa chỉ email:&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 0);\"&gt;&amp;nbsp;info@genex.com.vn&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n	Bản quyền thuộc&amp;nbsp;&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Genex&lt;/span&gt;&lt;/span&gt;&amp;nbsp;2015. Bảo lưu mọi quyền.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2018-05-15 01:05:57', 55, '2019-09-16 04:09:45', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 1, NULL),
(314, 'Some quick example text to build on', 'chinh-sach-va-quy-dinh-chung', '/public/files/editor-upload/images/bai-viet/img-info02.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info02.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Chúng tôi là&amp;nbsp;&lt;span style=\"color: rgb(0, 0, 255); font-family: arial, helvetica, sans-serif; font-size: 14px;\"&gt;Công ty Cổ phần Phân phối Quốc tế Genex&lt;/span&gt;. Hiện tại sản phẩm của Genex có khắp trên hệ thống siêu thị phủ sóng rộng khắp trên địa bàn TP HCM và các tỉnh thành trên toàn quốc. Website Genex&amp;nbsp;là website chính thức để khách hàng&amp;nbsp; tham khảo các sản phẩm có tại siêu thị.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Sau khi truy cập vào website &lt;a href=\"http://genex.com.vn\"&gt;http://genex.com&lt;/a&gt;.vn&amp;nbsp;để tham khảo thông tin sản phẩm, bạn đã đồng ý tuân thủ và ràng buộc với những quy định của Genex. Vui lòng xem kỹ các quy định và hợp tác với chúng tôi để xây dựng 1 hệ thống thông tin ngày càng thân thiện và phục vụ tốt những yêu cầu của chính bạn. Ngoài ra, nếu có bất cứ câu hỏi nào về những thỏa thuận trên đây, vui lòng email cho chúng tôi qua địa chỉ info@genex.com.vn&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Quý khách vui lòng kiểm tra thường xuyên để cập nhật những thay đổi của chúng tôi.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;\"&gt;1. Hướng dẫn sử dụng web&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Khi vào web của chúng tôi, người dùng tối thiểu phải 18 tuổi hoặc truy cập dưới sự giám sát của cha mẹ hay người giám hộ hợp pháp.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Nghiêm cấm sử dụng bất kỳ phần nào của trang web này với mục đích thương mại hoặc nhân danh bất kỳ đối tác thứ ba nào nếu không được chúng tôi cho phép bằng văn bản. Nếu vi phạm bất cứ điều nào trong đây, chúng tôi sẽ hủy giấy phép của bạn mà không cần báo trước.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Trang web này chỉ dùng để cung cấp thông tin sản phẩm chứ chúng tôi không phải nhà sản xuất nên những nhận xét hiển thị trên web là ý kiến cá nhân của khách hàng, không phải của chúng tôi.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Quý khách phải đăng ký tài khoản với thông tin xác thực về bản thân và phải cập nhật nếu có bất kỳ thay đổi nào. Mỗi người truy cập phải có trách nhiệm với mật khẩu, tài khoản và hoạt động của mình trên web. Hơn nữa, quý khách phải thông báo cho chúng tôi biết khi tài khoản bị truy cập trái phép. Chúng tôi không chịu bất kỳ trách nhiệm nào, dù trực tiếp hay gián tiếp, đối với những thiệt hại hoặc mất mát gây ra do quý khách không tuân thủ quy định.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Trong suốt quá trình đăng ký, quý khách đồng ý nhận email quảng cáo từ website. Sau đó, nếu không muốn tiếp tục nhận mail, quý khách có thể từ chối bằng cách nhấp vào đường link ở dưới cùng trong mọi email quảng cáo.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;\"&gt;2. Ý kiến khách hàng&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Tất cả nội dung trang web và ý kiến phê bình của quý khách đều là tài sản của chúng tôi. Nếu chúng tôi phát hiện bất kỳ thông tin giả mạo nào, chúng tôi sẽ khóa tài khoản của quý khách ngay lập tức hoặc áp dụng các biện pháp khác theo quy định của pháp luật Việt Nam.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"font-weight: 700;\"&gt;3. Thương hiệu và bản quyền&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Mọi quyền sở hữu trí tuệ (đã đăng ký hoặc chưa đăng ký), nội dung thông tin và tất cả các thiết kế, văn bản, đồ họa, phần mềm, hình ảnh, video, âm nhạc, âm thanh, biên dịch phần mềm, mã nguồn và phần mềm cơ bản đều là tài sản của chúng tôi. Toàn bộ nội dung của trang web được bảo vệ bởi luật bản quyền của Việt Nam và các công ước quốc tế. Bản quyền đã được bảo lưu.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"font-weight: 700; color: rgb(0, 0, 255);\"&gt;4. Quyền pháp lý&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Các điều kiện, điều khoản và nội dung của trang web này được điều chỉnh bởi luật pháp Việt Nam và Tòa án có thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp nào phát sinh từ việc sử dụng trái phép trang web này.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;\"&gt;5. Quy định về bảo mật&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Trang web của chúng tôi coi trọng việc bảo mật thông tin và sử dụng các biện pháp tốt nhất bảo vệ thông tin của quý khách. Thông tin của quý khách trong quá trình thanh toán sẽ được mã hóa để đảm bảo an toàn. Sau khi quý khách hoàn thành quá trình đặt hàng, quý khách sẽ thoát khỏi chế độ an toàn.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Quý khách không được sử dụng bất kỳ chương trình, công cụ hay hình thức nào khác để can thiệp vào hệ thống hay làm thay đổi cấu trúc dữ liệu trang web cũng như nghiêm cấm việc phát tán, truyền bá hay cổ vũ cho bất kỳ hoạt động nào nhằm can thiệp, phá hoại hay xâm nhập vào dữ liệu của hệ thống. Cá nhân hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước pháp luật nếu cần thiết.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Mọi thông tin giao dịch sẽ được bảo mật nhưng trong trường hợp cơ quan pháp luật yêu cầu, chúng tôi sẽ buộc phải cung cấp những thông tin này cho các cơ quan pháp luật.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;\"&gt;6. Giải quyết tranh chấp&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		Bất kỳ tranh cãi, khiếu nại hoặc tranh chấp phát sinh tử hoặc liên quan đến giao dịch tại Genex&amp;nbsp;hoặc các Quy định và Điều kiện này đều sẽ được giải quyết bằng hình thức thương lượng, hòa giải, trọng tài và/hoặc Tòa án theo Luật bảo vệ Người tiêu dùng Chương 4 về Giải quyết tranh chấp giữa người tiêu dùng và tổ chức, cá nhân kinh doanh hàng hóa, dịch vụ.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2018-05-15 02:05:29', 55, '2019-09-16 04:09:11', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 1, NULL),
(315, 'Some quick example text to build on', 'thong-tin-bao-chi', '/public/files/editor-upload/images/bai-viet/img-info03.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info03.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"color:#0000ff;\"&gt;&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;&lt;span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;\"&gt;CHÍNH SÁCH BẢO HÀNH TẠI GENEX&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Tất cả sản phẩm được cung cấp tại &lt;span style=\"color:#0000ff;\"&gt;Genex&lt;/span&gt; đều được bảo hành theo chế độ bảo hành của nhà sản xuất hoặc nhà phân phối chính thức tương ứng. Việc bảo hành tại chỗ (đại lý của Genex) hay mang đến Trung tâm bảo hành (&lt;strong&gt;Miền Nam: 50A Dương Đức Hiền, P. Tây Thạnh, Q. Tân Phú&lt;/strong&gt; - &lt;strong&gt;Miền Bắc: 32 - 43 Đặng Văn Ngữ, P. Đống Đa, Tp. Hà Nội&lt;/strong&gt;) phụ thuộc vào chính sách bảo hành cụ thể của từng dòng sản phẩm. Sẽ do &lt;span style=\"color:#0000ff;\"&gt;Genex&lt;/span&gt;&amp;nbsp;hoặc đại lý chịu trách nhiệm tiếp nhận và xử lý.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Nếu trường hợp khách hàng muốn bảo hành nhanh có thể trực tiếp mang sản phẩm đến Trung tâmbảo hành để tự bảo hành.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Vui lòng liên hệ nhân viên chăm sóc khách hàng (&lt;strong&gt;điện thoại 1900545597&lt;/strong&gt;) để cập nhật chế độ bảo hành của nhà sản xuất/ nhà phân phối áp dụng tại thời điểm khách hàng đặt mua.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: Roboto, Arial, &amp;quot;Open Sans&amp;quot;, HelveticaNeue, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"&gt;Chế độ bảo hành áp dụng&amp;nbsp;trên toàn quốc.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2018-05-15 02:05:39', 55, '2019-09-16 04:09:10', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 1, NULL);
INSERT INTO `articles` (`id`, `name`, `alias`, `picture`, `thumb`, `special`, `publish_date`, `synopsis`, `author`, `content`, `hits`, `video`, `comment_fb`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `page_id`, `picture_mobile`) VALUES
(316, 'Some quick example text to build on', 'chinh-sach-giao-nhan-hang', '/public/files/editor-upload/images/bai-viet/img-info01.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info01.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Chúng tôi giao hàng tận nhà Quý khách hàng trên toàn quốc. Điều này có nghĩa là Quý khách ở bất kỳ nơi đâu trên đất nước Việt Nam đều có thể mua hàng tại dotreem.com và được giao hàng tận nhà.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;strong style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;I. Thời gian nhận hàng:&lt;/strong&gt;&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;1. Đối với khách hàng tại TP. HCM:&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Quý khách hàng nhận được hàng trong vòng 24 giờ kể từ thời điểm Quý khách hàng xác nhận đơn hàng.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;2. Đối với khách hàng ngoài TP. HCM:&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;a) Chuyển phát nhanh:&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Quý khách hàng sẽ nhận được hàng trong vòng 1-2 ngày làm việc.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;b) Chuyển phát thường:&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Quý khách hàng sẽ nhận được hàng trong vòng 4-7 ngày lịch.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;strong style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;II. Cước phí giao hàng:&lt;/strong&gt;&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;1. Giao hàng miễn phí:&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;- Genex có chính sách giao hàng miễn phí như sau:&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;- Giao hàng miễn phí Quận 1, 3, 10, Phú Nhuận với đơn hàng ≥ 500.000 đồng.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;- Giao hàng miễn phí các quận ngoại thành TP. HCM với đơn hàng ≥ 1.000.000 đồng.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;- Giao hàng miễn phí toàn quốc với đơn hàng ≥ 1.500.000 đồng.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;2. Cước phí vận chuyển các đơn hàng còn lại:&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Đối với các đơn hàng không được giao hàng miễn phí, Xin Quý khách hàng tham khảo cước phí vận chuyển ở bảng dưới đây. Cước phí vận chuyển này sẽ được cộng thêm vào hóa đơn cho Quý khách hàng. Cước phí phụ thuộc vào: Khối lượng đơn hàng (bao gồm cả bao bì đóng gói), địa chỉ giao hàng và các yếu tố như hàng cồng kềnh, vùng sâu vùng xa.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;a) Bảng giá chuyển phát nhanh:&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;b) Bảng giá chuyển phát thường:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Cảm ơn Quý khách đã mua hàng tại&lt;/span&gt;&lt;/div&gt;\r\n', 0, '', 0, '2018-05-15 02:05:52', 55, '2019-09-16 04:09:43', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 1, NULL),
(317, 'Some quick example text to build on', 'ghe-ngoi-tre-em-cao-cap-jumbo-bonbebe-an-choi-nghi-vui-dua', '/public/files/editor-upload/images/bai-viet/img-info04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info04.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'BONBEBE', '', 0, 'hZ_0csg6H8o', 0, '2018-07-19 11:07:44', 55, '2019-09-16 04:09:25', 47, 255, 1, 1, 1, 2, '', '', '', '', 'vi', 0, NULL),
(318, 'Some quick example text to build on', 'gioi-thieu-ghe-ngoi-tre-em-cao-cap-jumbo-bonbebe', '/public/files/editor-upload/images/bai-viet/img-info02.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info02.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'zns4oe_dirQ', 0, '2018-07-19 11:07:03', 55, '2019-09-16 04:09:17', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 0, NULL),
(319, 'Some quick example text to build on', 'ghe-ngoi-tre-em-jumbo-the-he-moi-smart-brain', '/public/files/editor-upload/images/bai-viet/img-info04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info04.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'P9R5pJJIJa0', 0, '2018-07-21 10:07:53', 55, '2019-09-16 04:09:05', 47, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 0, NULL),
(320, 'Some quick example text to build on', 'tim-hieu-ve-ghe-ngoi-an-the-he-moi-jumbo-smart-brain', '/public/files/editor-upload/images/bai-viet/img-info03.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info03.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '', 0, 'kYdZcOzV6sw', 0, '2018-07-21 10:07:29', 55, '2019-09-16 04:09:58', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 0, NULL),
(321, 'Some quick example text to build on 1', 'some-quick-example-text-to-build-on-1', '/public/files/editor-upload/images/bai-viet/img-info01.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info01.jpg', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div class=\"b__nghiduong--info\"&gt;\r\n	&lt;div class=\"b__nghiduong--box\"&gt;\r\n		&lt;div class=\"b__nghiduong--left\"&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n		&lt;!-- end .b__nghiduong--right--&gt;\r\n		&lt;div class=\"b__images\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/phan-khu/tropical/banner-contact.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__nghiduong--box\"&gt;\r\n		&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n			&lt;h3&gt;\r\n				Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n			&lt;ul&gt;\r\n				&lt;li&gt;\r\n					Consectetur adipiscing eli&lt;/li&gt;\r\n				&lt;li&gt;\r\n					Nullam porta imperdiet nulla&lt;/li&gt;\r\n				&lt;li&gt;\r\n					Amet imperdiet augue mattis nec&lt;/li&gt;\r\n			&lt;/ul&gt;\r\n		&lt;/div&gt;\r\n		&lt;!-- end .b__nghiduong--left--&gt;\r\n		&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n			&lt;h3&gt;\r\n				Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n			&lt;ul&gt;\r\n				&lt;li&gt;\r\n					Consectetur adipiscing eli&lt;/li&gt;\r\n				&lt;li&gt;\r\n					Nullam porta imperdiet nulla&lt;/li&gt;\r\n				&lt;li&gt;\r\n					Amet imperdiet augue mattis nec&lt;/li&gt;\r\n			&lt;/ul&gt;\r\n		&lt;/div&gt;\r\n		&lt;!-- end .b__nghiduong--right--&gt;\r\n		&lt;div class=\"b__images--gr\"&gt;\r\n			&lt;div class=\"b__images--ls\"&gt;\r\n				&lt;img src=\"/public/files/editor-upload/images/phan-khu/tropical/banner-pk.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n			&lt;div class=\"b__images--ls\"&gt;\r\n				&lt;img src=\"/public/files/editor-upload/images/phan-khu/tropical/banner-contact.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__text\"&gt;\r\n		&lt;p&gt;\r\n			Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__images\"&gt;\r\n		&lt;img src=\"upload/img_dulichkhampha04.jpg\" width=\"100%\" /&gt;&lt;/div&gt;\r\n	&lt;div class=\"b__text\"&gt;\r\n		&lt;p&gt;\r\n			Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__type--travel\"&gt;\r\n		&lt;h3&gt;\r\n			&amp;nbsp;&lt;/h3&gt;\r\n		&lt;div class=\"b__type--travel_info\"&gt;\r\n			&lt;!-- end .b__type--card--&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 'qISBqBWe1n8', 0, '2018-08-25 07:08:11', 55, '2019-10-25 03:10:58', 55, 255, 1, 1, 1, 2, '', '', '', '', 'vi', 0, NULL),
(322, 'Lịch mở bán và tiến độ ngày 20/11/2019', 'lich-mo-ban-va-tien-do-ngay-20-11-2019', '/public/files/editor-upload/images/bai-viet/banner_sukien.png', '/public/files/editor-upload/_thumbs/images/bai-viet/banner_sukien.png', 0, '0000-00-00 00:00:00', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', '', '&lt;div&gt;\r\n	&lt;span style=\"color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;Some quick example text to build on the card title and make up the bulk of the card\'s content.&lt;/span&gt;&lt;/div&gt;\r\n', 0, '', 0, '2019-11-01 02:11:06', 55, '2019-11-12 09:11:17', 55, 1, 1, 0, 1, 10, '', '', '', '', 'vi', 0, '/public/files/editor-upload/images/bai-viet/bn-tintuc.png');

-- --------------------------------------------------------

--
-- Table structure for table `articles_en`
--

CREATE TABLE `articles_en` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special` tinyint(1) NOT NULL DEFAULT '0',
  `publish_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `synopsis` mediumtext COLLATE utf8_unicode_ci,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_fb` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `block_noibat` tinyint(1) NOT NULL DEFAULT '0',
  `block_hot` tinyint(1) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `page_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles_en`
--

INSERT INTO `articles_en` (`id`, `name`, `alias`, `picture`, `thumb`, `special`, `publish_date`, `synopsis`, `author`, `content`, `hits`, `video`, `comment_fb`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `page_id`) VALUES
(282, 'Nhiệt kế hồng ngoại không cần tiếp xúc Hubdic Thermofinder - HDFS300', 'nhiet-ke-hong-ngoai-khong-can-tiep-xuc-hubdic-thermofinder-hdfs300', '/public/files/editor-upload/images/product/FS-300with-holder(1).jpg', '/public/files/editor-upload/_thumbs/images/product/FS-300with-holder(1).jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '2N3FTtcUHfs', 0, '2017-08-15 10:08:17', 55, '2017-12-01 11:12:04', 55, 255, 0, 0, 0, 11, '', '', '', '', 'vi', 3),
(283, 'Bộ chuyển đổi máy hút sữa Unimom (từ máy hút điện thành hút tay)', 'bo-chuyen-doi-may-hut-sua-unimom-tu-may-hut-dien-thanh-hut-tay', '/public/files/editor-upload/images/product/Allegro-(1).jpg', '/public/files/editor-upload/_thumbs/images/product/Allegro-(1).jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, 'tTTawXMKaLE', 0, '2017-08-15 10:08:57', 55, '0000-00-00 00:00:00', 0, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 2),
(284, 'Túi trữ sữa Unimom', 'tui-tru-sua-unimom', '/public/files/editor-upload/images/product/Breastmilk-Storage-Bag.jpg', '/public/files/editor-upload/_thumbs/images/product/Breastmilk-Storage-Bag.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '8UlxG0JyVuM', 0, '2017-08-15 10:08:42', 55, '2017-08-15 05:08:41', 55, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 2),
(285, 'Unimom_ milking machine common problems', 'may-hut-sua-unimom_-cac-van-de-thuong-gap', '/public/files/editor-upload/images/product/dien-doi.jpg', '/public/files/editor-upload/_thumbs/images/product/dien-doi.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, 'gshUtvGeevA', 0, '2017-08-15 11:08:21', 55, '2017-08-31 11:08:21', 55, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 2),
(286, 'Làm sao để mua máy hút sữa tốt mà lại phù hợp với túi tiền?', 'lam-sao-de-mua-may-hut-sua-tot-ma-lai-phu-hop-voi-tui-tien', '/public/files/editor-upload/images/tin-tuc/lcd.png', '/public/files/editor-upload/_thumbs/images/tin-tuc/lcd.png', 0, '0000-00-00 00:00:00', 'Mẹ có nhiều sữa hay không phụ thuộc phần lớn vào lượng hormone prolactin – đây là hormone quan trọng ảnh hưởng đến quá trình sản xuất sữa mẹ', '', '&lt;p&gt;\r\n	&lt;span style=\"color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px;\"&gt;Đối với những người mẹ đi làm thì việc thường xuyên cho con bú để duy trì nguồn sữa là điều rất khó khăn. Do vậy việc sắm cho mình một chiếc máy hút sữa là giải pháp vừa ưu việt, vừa kinh tế.&lt;/span&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); line-height: 20px !important; text-align: center;\"&gt;\r\n		&lt;img alt=\"lam sao de mua may hut sua tot ma lai phu hop voi tui tien? - 1\" src=\"http://eva-img.24hstatic.com/upload/2-2017/images/2017-06-20/lam-sao-de-mua-may-hut-sua-tot-ma-lai-phu-hop-voi-tui-tien-lam-sao-de-mua-may-hut-sua-tot-ma-lai-phu-hop-voi-tui-tien--2--1497945753-width600height404.jpg\" /&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); line-height: 20px !important; text-align: center;\"&gt;\r\n		&lt;span style=\"color: rgb(0, 0, 255); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-style: italic;\"&gt;Cho con bú sẽ giúp kích thích hormone prolactin giúp nguồn sữa về nhiều hơn (ảnh minh họa)&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		Để tìm mua một chiếc máy hút sữa không phải là quá khó khi hiện nay trên thị trường có rất nhiều thương hiệu máy hút sữa khác nhau, tuy nhiên vấn đề mẹ cần lưu ý là nên chọn cho mình một chiếc máy hút sữa phù hợp với nhu cầu sử dụng cũng như giá thành phù hợp với túi tiền.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Các tiêu chí cần tham khảo khi mua một chiếc máy hút sữa tốt:&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Lực hút của máy:&lt;/i&gt;&amp;nbsp;Đây là yếu tố quan trọng đầu tiên các mẹ cần quan tâm khi chọn mua máy hút sữa. Vì lực hút có tốt hay không sẽ ảnh hưởng trực tiếp đến lượng sữa vắt ra nhiều hay ít. Các mẹ nên lựa chọn loại máy hút sữa có nhiều cấp độ hút khác nhau để có thể dễ dàng điều chỉnh lực hút phù hợp với mình. Vì cơ địa của mỗi mẹ là không giống nhau, có người đầu ti dài thì lực hút vừa phải là lượng sữa đã ra đều, nhưng cũng có mẹ đầu ti ngắn thì lực hút phải mạnh hơn để tạo động lực kích thích sữa tiết ra. Lượng hormone prolactin nhiều hay ít, tuyến sữa nông hay sâu cũng sẽ cần phải dùng lực hút khác nhau. Nếu mua loại máy hút sữa có ít cấp độ hút mà lực hút lại không phù hợp, thì coi như vừa mất tiền, vừa mất công.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Thiết kế thông minh:&lt;/i&gt;&amp;nbsp;Yếu tố này cũng khá quan trọng. Một chiếc máy hút sữa tốt là loại có thể chống sữa tràn chảy ngược, ngăn cách được sữa mẹ và không khí hút vào motor gây mất vệ sinh, đồng thời ngăn sữa mẹ lọt vào máy gây cháy motor.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Mềm mại và không gây đau cho ngực mẹ:&amp;nbsp;&lt;/i&gt;Cơ chế hút sữa nhịp nhàng giống như trẻ đang ti mẹ và có thể điều chỉnh được tốc độ hút và mát xa cũng là điều kiện mẹ cần xem xét khi muốn mua một chiếc máy hút sữa tốt cho mình. Ngoài ra, mẹ cũng nên lựa chọn loại máy có phễu hút sữa phù hợp, mềm mại, có chức năng mát-xa không làm đau hay làm khó chịu cho mẹ khi hút sữa. Ngoài ra, các mẹ cũng nên ưu tiên lựa chọn loại máy có thiết kế gọn nhẹ, dễ dàng tháo lắp và vệ sinh.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Tiện lợi:&amp;nbsp;&lt;/i&gt;Mẹ có thể chọn một chiếc máy hút sữa cắm nguồn/sạc pin bằng phích cắm USB trực tiếp với máy tính hoặc smart phone mà không cần bộ đổi nguồn, vô cùng thuận tiện cho mẹ khi cần hút sữa tại công sở hoặc đi xa. Cơ chế vận hành của máy cũng nên nhẹ nhàng, êm ái để có thể đảm bảo bé không bị thức giấc hay giật mình khi mẹ đang hút sữa, mẹ cũng có thể vắt sữa kín đáo hơn khi phải di chuyển.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Chất liệu:&lt;/i&gt;&amp;nbsp;Chất liệu cũng là một tiêu chí rất quan trọng vì nếu chất lượng không đảm bảo tiêu chuẩn sẽ ảnh hưởng đến sức khỏe của cả mẹ và bé. Lời khuyên là mẹ nên chọn loại máy có chất liệu an toàn như PP, PES hay thủy tinh và không chứa BPA độc hại. Lưu ý: Nếu là thủy tinh thì trong quá trình sử dụng phải hết sức cẩn thận để tránh làm vỡ.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Nhu cầu sử dụng:&amp;nbsp;&lt;/i&gt;Nếu mẹ nào cần phải thường xuyên hút sữa cho bé hoặc bị tắc tia sữa cần kích sữa để ra nhiều thì nên mua máy hút sữa bằng điện để máy hút nhanh hơn, hiệu quả hơn và tiết kiệm thời gian hơn. Còn nếu lâu lâu mới cần sử dụng thì mẹ chỉ cần chọn mua máy hút sữa bằng tay là được, vừa gọn nhẹ lại vừa tiết kiệm được một khoản tiền kha khá.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Giá thành sản phẩm:&amp;nbsp;&lt;/i&gt;Tiêu chí này có lẽ là tiêu chí các mẹ khá quan tâm, vì hiện nay trên thị trường có rất nhiều dòng máy hút sữa khác nhau có giá thành từ vài trăm ngàn (đối với máy hút sữa tay) đến vài triệu thậm chí lên đến chục triệu đồng (với máy hút sữa điện) và tùy từng thương hiệu khác nhau. Nếu không có điều kiện để mua những loại máy hút sữa quá đắt tiền, thì chỉ cần 1 đến 3 triệu đồng là mẹ đã có thể mua được một chiếc máy tốt từ các thương hiệu uy tín trên thị trường hiện nay.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Thương hiệu:&amp;nbsp;&lt;/i&gt;Đây là một tiêu chí quan trọng, chi phối quyết định mua hàng của các mẹ cũng như các sản phẩm dành cho bé khác. Để an tâm hơn mẹ nên chọn máy hút là sản phẩm của các hãng sản xuất, thương hiệu nổi tiếng, có uy tín. Trước khi mua, mẹ cũng nên tìm hiểu kỹ thông tin từ người thân, bạn bè hay internet để chắc chắn sản phẩm mình mua có thương hiệu, xuất xứ rõ ràng. Có thể kể tới một số dòng máy hút sữa nhập khẩu từ Hàn Quốc đang được các mẹ lựa chọn khá nhiều như Unimom, Spectra, hay Medela của Thụy Sỹ, Philips Avent của Anh Quốc… vì chất lượng ổn định mà giá cả lại phải chăng.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); line-height: 20px !important; text-align: center;\"&gt;\r\n		&lt;img alt=\"lam sao de mua may hut sua tot ma lai phu hop voi tui tien? - 2\" src=\"http://eva-img.24hstatic.com/upload/2-2017/images/2017-06-20/lam-sao-de-mua-may-hut-sua-tot-ma-lai-phu-hop-voi-tui-tien-lam-sao-de-mua-may-hut-sua-tot-ma-lai-phu-hop-voi-tui-tien--3--1497945753-width600height450.jpg\" /&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); line-height: 20px !important; text-align: center;\"&gt;\r\n		&lt;span style=\"color: rgb(0, 0, 255); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-style: italic;\"&gt;Để an tâm, nên chọn sản phẩm của các thương hiệu có uy tín&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		&lt;i style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"&gt;Dịch vụ của hãng:&lt;/i&gt;&amp;nbsp;Bất cứ ai khi mua loại hàng hóa gì, cho dù là ít tiền thì cũng luôn quan tâm đến dịch vụ của nhãn hàng. Hơn nữa, máy hút sữa lại không phải là một sản phẩm rẻ tiền. Một hãng có uy tín và dịch vụ tốt như: chăm sóc khách hàng tận tình, hướng dẫn cũng như giải đáp thắc mắc trong quá trình sử dụng một cách nhiệt tình, và dịch vụ bảo hành tốt sẽ giúp các mẹ yên tâm hơn khi mua sản phẩm vì quyền lợi của mình luôn được đảm bảo.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; color: rgb(0, 0, 0); text-align: justify; line-height: 20px !important;\"&gt;\r\n		Được thực hiện thiên chức làm mẹ là cả một phép màu kỳ diệu. Càng tuyệt vời hơn khi con được lớn lên cùng những giọt sữa mẹ ngọt ngào, lớn lên trong tình yêu thương của cha mẹ. Dù bất cứ ông bố bà mẹ nào cũng luôn mong muốn dành những điều tốt nhất cho con của mình, hãy luôn là những ông bố bà mẹ thông thái khi lựa chọn những sản phẩm an toàn chất lượng cho con của mình.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div style=\"text-align: center;\"&gt;\r\n	&lt;img alt=\"lam sao de mua may hut sua tot ma lai phu hop voi tui tien? - 3\" src=\"http://eva-img.24hstatic.com/upload/2-2017/images/2017-06-20/lam-sao-de-mua-may-hut-sua-tot-ma-lai-phu-hop-voi-tui-tien-lam-sao-de-mua-may-hut-sua-tot-ma-lai-phu-hop-voi-tui-tien--4--1497945753-width600height858.jpg\" /&gt;&lt;/div&gt;\r\n', 0, '', 0, '2017-08-15 11:08:27', 55, '2017-08-15 11:08:10', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 2),
(242, 'Nhiệt kế nào dành cho bé sơ sinh được ưa chuộng nhất?', 'hubdic/nhiet-ke-nao-danh-cho-be-so-sinh-duoc-ua-chuong-nhat', '/public/files/editor-upload/images/tin-tuc/huong-dan-cach-cap-nhiet-do-cho-tre-va-tre-so-sinh-bang-nhiet-ke-thuy-ngandien-tu-dung-cach-cac-bac-cha-me-nen-biet-4-600x398.jpg', '/public/files/editor-upload/_thumbs/images/tin-tuc/huong-dan-cach-cap-nhiet-do-cho-tre-va-tre-so-sinh-bang-nhiet-ke-thuy-ngandien-tu-dung-cach-cac-bac-cha-me-nen-biet-4-600x398.jpg', 0, '0000-00-00 00:00:00', '', 'VuiVui', '&lt;div style=\"text-align: justify;\"&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;Nhiệt kế cho trẻ sơ sinh loại nào tốt&lt;/strong&gt;&amp;nbsp;là vấn đề nhận được sự quan tâm của rất nhiều chị em phụ nữ bởi kiểm tra thân nhiệt cho bé, đặc biệt khi bị sốt là chuyện không dễ, nên trước khi mua cần hỏi ý kiến mọi người xem nhiệt kế nào tốt cho bé để chọn được sản phẩm phù hợp.&amp;nbsp;Vậy nên chú ý những gì khi mua nhiệt kế cho trẻ sơ sinh và mua ở đâu?&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n		&lt;img alt=\"nhiet-ke-cho-be2\" src=\"http://uebe.vn/wp-content/uploads/2017/03/nhiet-ke-cho-be2.png\" /&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n		&lt;span style=\"color:#0000ff;\"&gt;&lt;em&gt;Nhiệt kế loại nào tốt cho bé?&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;h2 style=\"margin: 0.3em 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 18px; font-stretch: normal; font-size: 15px; font-family: sans-serif; color: rgb(51, 51, 51);\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;1. Một số điểm lưu ý khi mua nhiệt kế cho trẻ sơ sinh:&lt;/strong&gt;&lt;/h2&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		– Không nên chọn các loại nhiệt kế thủy ngân để sử dụng cho bé. Bởi loại nhiệt kế này rất dễ dàng bị vỡ và thủy ngân là một chất độc hại.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		– Viện hàn lâm nhi Hoa Kỳ khuyến cáo: nên sử dụng nhiệt kế đo trực tràng để đo nhiệt độ cho trẻ sơ sinh và trẻ dưới 1 tuổi.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		– Nhiệt kế núm vú giả có thể coi như một loại nhiệt kế có cách đo đơn giản nhất, nhưng tính chính xác không cao (nhất là với trẻ em dưới 3 tuổi).&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		– Một nghiên cứu được thực hiện bởi đại học Harvard cho biết: nhiệt kế động mạch thái dương và nhiệt kế đo trán là 2 loại nhiệt kế có thể sử dụng cho trẻ sơ sinh. Tính chính xác của 2 loại nhiệt kế này cũng khá cao.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		– Nhiệt kế điện tử là thiết bị y tế có tính chính xác cao, tùy thuộc vào cách sử dụng. Loại nhiệt kế này có nhiều ưu điểm và cho kết quả nhanh hơn nhiệt kế thủy ngân.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		– Nhiệt kế đo tai thường sử dụng cho trẻ em lớn hơn, không nên dùng cho trẻ sơ sinh&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		=&amp;gt; Với trẻ sơ sinh: lựa chọn tốt nhất là nhiệt kế trực tràng, sau đó đến nhiệt kế ngậm ở miệng hoặc nhiệt kế đo động mạch thái dương. Loại nhiệt kế thích hợp nhất dùng để đo trực tràng hoặc ở miệng là nhiệt kế điện tử.&lt;/p&gt;\r\n	&lt;h3 style=\"margin: 0.3em 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 16px; font-stretch: normal; font-size: 14px; font-family: sans-serif; color: rgb(51, 51, 51);\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;2. Cách đo nhiệt độ cơ thể cho trẻ sơ sinh:&lt;/strong&gt;&lt;/h3&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		Ba&amp;nbsp;cách đo được khuyến cáo là: đo tại trực tràng, đo ở nách và đo ở miệng. Với 3 cách đo này mẹ&amp;nbsp;đều có thể sử dụng nhiệt kế điện tử hiện số hoặc nhiệt kế đầu mềm không thấm nước cho bé. Tuy nhiên, không bao giờ được sử dụng nhiệt kế đo trực tràng để đo ở miệng cho trẻ và ngược lại.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;Cách đo:&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;– Đo nhiệt độ tại&amp;nbsp;trực tràng&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;ul style=\"margin: 0.5em 0px 0.8em 10px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Vệ sinh đầu nhiệt kế bằng nước ấm, không dùng nước nóng hoặc lạnh (chú ý nên cẩn thận, không để nước xâm nhập vào thân máy, màn hình và pin). Lau khô trước khi sử dụng.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Lấy một ít dầu bôi trơn vào đầu nhiệt kế, sau đó&amp;nbsp;đặt bé nằm nghiêng trên đùi người bế.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Đưa nhẹ nhàng đầu nhiệt kế vào trong trực tràng (1/2 inch), và giữ cho đến lúc nhiệt kế kêu bíp thì rút ra để đọc nhiệt độ.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;em style=\"margin: 0px; padding: 0px;\"&gt;Lưu ý&lt;/em&gt;: không nên giữ bé quá chặt hay làm bé hoảng sợ, không nên đút đầu nhiệt kế sâu vào trong trực tràng của bé, không sử dụng nhiệt kế thủy ngân để đo nhiệt độ tại trực tràng.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;– Đo nhiệt độ&amp;nbsp;ở miệng&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;ul style=\"margin: 0.5em 0px 0.8em 10px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Vệ sinh đầu nhiệt kế (như đã nêu trên)&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Chắc chắn bé chưa ăn hoặc uống gì trước đó 15 phút.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Đặt đầu nhiệt kế dưới lưỡi của trẻ, để bé ngậm vào và không để bé cắn nhiệt kế.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Khi nhiệt kế kêu bíp thì cha mẹ có thể rút ra, xem chỉ số nhiệt độ.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;– Đo nhiệt độ ở nách&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		Cách đo này khá đơn giản khi sử dụng cho trẻ sơ sinh, nhưng vẫn có sai số ki sử dụng. Hãy bế trẻ hoặc để trẻ nằm chơi tại giường, sau đó nhẹ nhàng cho đầu nhiệt kế vào trong nách bé. Giữ chặt tay bé cho đến khi máy kêu bip.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;–&amp;nbsp;&lt;/strong&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;Khi nào nên cặp nhiệt độ cho bé?&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;ul style=\"margin: 0.5em 0px 0.8em 10px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Bé khó chịu, da nóng, nhiều mồ hôi, có phát ban.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Người bé nhợt nhạt.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Bé thở nhanh, bất thường, chậm hoặc thở ra âm thanh.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Bé chảy nước mũi, hắt hơi và ho.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Bé bỏ ăn, kéo tai, ưỡn người, quấy khóc.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Bị nôn trớ, tiêu chảy, phân có màu, có mùi bất thường. Nếu bé bị tiêu chảy, hãy cặp Nhiệt độ ở nách cho con.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;– Khi nào cần gọi bác sĩ&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		Hãy gọi ngay cho bác sĩ nếu:&lt;/p&gt;\r\n	&lt;ul style=\"margin: 0.5em 0px 0.8em 10px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Em bé dưới 3 tháng tuổi và nhiệt độ cơ thể trên 38 – 38.5 độ.&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Em bé trên 3 tháng tuổi và nhiệt độ cơ thể trên 38.5 – 39 độ&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Em bé 6 tháng tuổi và nhiệt độ cơ thể trên 39 độ hoặc sốt quá 2 ngày&lt;/li&gt;\r\n		&lt;li style=\"margin: 0px 0px 0.8em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style-type: disc; line-height: 1.3em;\"&gt;\r\n			Em bé trên 6 tháng tuổi &amp;nbsp;và nhiệt độ cơ thể trên 39 độ nhưng vẫn chơi ngoan.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;h3 style=\"margin: 0.3em 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 16px; font-stretch: normal; font-size: 14px; font-family: sans-serif; color: rgb(51, 51, 51);\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;3. Nhiệt kế nào cho trẻ sơ sinh được sử dụng nhiều nhất?&lt;/strong&gt;&lt;/h3&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		Sau khi tìm hiểu trên các diễn đàn dành cho mẹ &amp;amp; bé thì mình thấy nhiệt kế điện tử được các mẹ bảo nhau và khuyên dùng nhiều nhất&amp;nbsp;bởi tính an toàn của sản phẩm, cho kết quả chính xác trong thời gian ngắn. Hơn nữa, dòng sản phẩm này thường được thiết kế nhỏ xinh, thân thiện với người dùng, cải tiến thông minh để phù hợp hơn với trẻ nhỏ.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		Ngoài ra, các mẹ cũng nên ưu tiên những sản phẩm của các thương hiệu uy tín nhằm&amp;nbsp;đảm bảo chất lượng và độ an toàn cao hơn cho trẻ sơ sinh.&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;&amp;nbsp;&lt;/strong&gt;Những sản phẩm này thường có&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;&amp;nbsp;&lt;/strong&gt;thiết kế tinh tế với hình ngộ nghĩnh, thu hút ánh nhìn bé yêu cùng với cải tiến đầu mềm tạo cảm giác thoải mái khi kiểm tra thân nhiệt. Bên cạnh đó, nó có thể đo ở nhiều vị trí giúp các mẹ có lựa chọn đa dạng hơn khi kiểm tra sức khỏe cho con yêu. Chính vì vậy, đây là những sản phẩm được rất nhiều mẹ lựa chọn trong việc chăm sóc con nhỏ.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		Các mẹ cũng chú ý là khi&amp;nbsp;nhìn thấy mác “Made in China” đừng vội&amp;nbsp;quy cho nó là sản phẩm kém chất lượng. Thực tế là khá nhiều hãng nổi tiếng trên thế giới thích thuê sản xuất tại Trung Quốc vì có giá nhân công cũng như nguyên liệu rẻ, tuy nhiên vẫn đảm bảo tiêu chuẩn chất lượng. Chính vì thế, chúng ta nên thay đổi quan niệm tiêu dùng, thay vào đó tìm hiểu vào thương hiệu sản xuất.&lt;/p&gt;\r\n	&lt;h4 style=\"margin: 0.3em 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 15px; font-stretch: normal; font-size: 13px; font-family: sans-serif; color: rgb(51, 51, 51);\"&gt;\r\n		&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;4. Mua nhiệt kế cho bé sơ sinh ở đâu?&lt;/strong&gt;&lt;/h4&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		Hãy mua ở các cửa hàng đại lý, thiết bị y tế uy tín. Mẹ&amp;nbsp;hãy nghe sự tư vấn chính xác của các đại lý để lựa chọn cho mình dòng nhiệt kế phù hợp nhất.&lt;/p&gt;\r\n	&lt;p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5em; color: rgb(51, 51, 51); font-family: sans-serif; font-size: 14px;\"&gt;\r\n		Những loại&amp;nbsp;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;nhiệt kế điện tử&lt;/strong&gt;&amp;nbsp;thường được bảo hành từ 12-24 tháng, do đó, khi mua mẹ&amp;nbsp;nên hỏi rõ người bán chế độ bảo hành, đổi sản phẩm nếu chẳng may bị lỗi.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 49, '0', 0, '2016-06-18 08:06:38', 55, '2017-08-08 05:08:54', 55, 1, 1, 1, 1, 10, 'nhiệt kế, nhiệt kế  hubdic', '', '', 'nhiệt kế, nhiệt kế  hubdic', 'vi', 3),
(263, 'Nhiệt kế hồng ngoại Hubdic HDFS300', 'nhiet-ke-hong-ngoai-hubdic-hdfs300', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, 'hQAAyjqduI0', 0, '2017-07-12 04:07:31', 55, '2017-07-12 05:07:29', 55, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 3),
(264, 'Nhiệt kế hồng ngoại không cần tiếp xúc Hubdic Thermofinder S - HDFS700', 'nhiet-ke-hong-ngoai-khong-can-tiep-xuc-hubdic-thermofinder-s-hdfs700', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '3sTG07pj4Eg', 0, '2017-07-12 04:07:53', 55, '2017-07-12 05:07:34', 55, 255, 1, 0, 1, 11, '', '', '', '', 'vi', 3),
(265, 'Nhiệt kế hồng ngoại không cần tiếp xúc Hubdic Thermofinder - HDFS1000', 'nhiet-ke-hong-ngoai-khong-can-tiep-xuc-hubdic-thermofinder-hdfs1000', '/public/files/editor-upload/images/product/6L3A1522.JPG', '/public/files/editor-upload/_thumbs/images/product/6L3A1522.JPG', 0, '0000-00-00 00:00:00', '', '', '', 0, 'EdZMUbCNgFc', 0, '2017-07-12 04:07:17', 55, '2017-12-01 11:12:00', 55, 255, 0, 0, 0, 11, '', '', '', '', 'vi', 3),
(298, '', '5-nguyen-tac-vang-me-can-nam-long-de-ham-sua-khong-bi-mat-chat', '/public/files/editor-upload/images/mo-ban/img-sukien01.jpg', '/public/files/editor-upload/_thumbs/images/mo-ban/img-sukien01.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2017-10-13 10:10:58', 55, '2019-09-16 03:09:16', 47, 1, 1, 1, 0, 10, '', '', '', '', 'vi', 0),
(268, 'tiếng anh', 'tieng-anh', '/public/files/editor-upload/images/mach-me-tam-cho-be-thanh-cong.jpg', '/public/files/editor-upload/_thumbs/images/mach-me-tam-cho-be-thanh-cong.jpg', 0, '0000-00-00 00:00:00', 'aaa', '', '&lt;div&gt;\r\n	aaa&lt;/div&gt;\r\n', 0, '', 0, '2017-07-24 10:07:03', 55, '2017-07-24 10:07:13', 55, 255, 1, 1, 1, 14, '', '', '', '', 'en', 1),
(306, '', 'binh-sua-co-rong-nip', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, 'uvx7aq1IO_s', 0, '2017-12-01 11:12:48', 55, '2017-12-06 11:12:22', 55, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 31),
(307, 'Lịch mở bán ngày 01/10/2019', 'some-quick-example-text-to-build-on1', '/public/files/editor-upload/images/bai-viet/img-sukien01.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-sukien01.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2017-12-04 11:12:11', 55, '2019-11-01 02:11:53', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 0),
(309, '', 'so-sanh-num-ty-truyen-thong-voi-num-ty-chinh-nha-miss-denti', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, 'CSPeATd_Wvo', 0, '2017-12-06 10:12:59', 55, '2017-12-06 11:12:16', 55, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 31),
(312, '', 'hop-dung-num-ty-nip', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '1nS-TS2BuBY', 0, '2017-12-06 11:12:41', 55, '2019-09-30 11:09:39', 47, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 0),
(311, '', 'cac-tinh-nang-cua-num-ty-chinh-nha-nip-miss-denti', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, 'zcIXs7uOMDc', 0, '2017-12-06 10:12:52', 55, '0000-00-00 00:00:00', 0, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 31),
(301, '', 'some-quick-example-text-to-build-on-3', '/public/files/editor-upload/images/bai-viet/img-sukien04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-sukien04.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2017-11-06 09:11:11', 55, '2019-10-25 03:10:52', 55, 1, 1, 1, 0, 10, '', '', '', '', 'vi', 0),
(302, '', 'some-quick-example-text-to-build-on-2', '/public/files/editor-upload/images/bai-viet/img-sukien02.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-sukien02.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2017-11-10 05:11:32', 55, '2019-11-01 02:11:58', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 0),
(303, '', 'may-hut-sua-dien-doi-minuet-lcd', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, 'dubRsXV8Akc', 0, '2017-12-01 10:12:15', 55, '0000-00-00 00:00:00', 0, 1, 1, 0, 0, 11, '', '', '', '', 'vi', 2),
(305, '', 'ham-sua-nhu-the-nao-la-dung-chuan', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, 'YU_kGlz_Mg4', 0, '2017-12-01 11:12:22', 55, '2017-12-05 10:12:06', 55, 1, 1, 0, 0, 11, '', '', '', '', 'vi', 29);
INSERT INTO `articles_en` (`id`, `name`, `alias`, `picture`, `thumb`, `special`, `publish_date`, `synopsis`, `author`, `content`, `hits`, `video`, `comment_fb`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `page_id`) VALUES
(288, 'Mách mẹ hộp giữ ấm thức ăn cho bé', 'mach-me-hop-giu-am-thuc-an-cho-be', '/public/files/editor-upload/images/tin-tuc/1404811358-mach-me-hop-giu-am-thuc-an-cho-be.jpg', '/public/files/editor-upload/_thumbs/images/tin-tuc/1404811358-mach-me-hop-giu-am-thuc-an-cho-be.jpg', 0, '0000-00-00 00:00:00', '', '', '&lt;div&gt;\r\n	&lt;div style=\"text-align: center;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;img alt=\"Mách mẹ hộp giữ ấm thức ăn cho bé\" class=\"thumb-border\" src=\"http://img-eva.24hstatic.com/upload/3-2014/images/2014-07-08/1404811358-mach-me-hop-giu-am-thuc-an-cho-be.jpg\" style=\"border: 0px; vertical-align: middle; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: -webkit-center; width: 300px; height: 300px;\" /&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: -webkit-center;\" /&gt;\r\n		&lt;a href=\"http://dotreem.com/index.php?main_page=index&amp;amp;cPath=297\" style=\"color: rgb(102, 102, 102); text-decoration-line: none; font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: -webkit-center;\"&gt;&lt;i&gt;Mẹ giữ ấm thức ăn cho bé đúng cách (ảnh minh họa)&lt;/i&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div align=\"left\" style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"&gt;\r\n		&lt;p style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;Hệ miễn dịch của bé vẫn chưa thực sự phát triển toàn diện, vì thế vấn đề đảm bảo vệ sinh thực phẩm là rất quan trọng khi hâm nóng và giữ ấm thức ăn cho bé. Bí kíp lựa chọn hộp giữ ấm thức ăn sau đây sẽ giúp mẹ giữ cho bé không bị vi trùng xâm nhập qua đường ăn uống gây rối loạn tiêu hóa.&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;Sau khi đun nấu thức ăn cho bé xong, bạn cần hâm nóng hoặc giữ ấm thức ăn cho bé đúng cách, sau đó để nguội còn âm ấm rồi cho bé ăn. Lúc mới ăn dặm, bé có thể sẽ ăn rất ít và lượng thức ăn của bé sẽ nguội đi rất nhanh, mẹ không nên hâm đi hâm lại thức ăn nhiều lần vì các loại vitamin rất dễ bị mất đi trong quá trình nấu nướng và lúc này thức ăn đã tiếp xúc với miệng bé hay dụng cụ làm bếp có thể chứa vi trùng.&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p align=\"center\" style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;&lt;img alt=\"Mách mẹ hộp giữ ấm thức ăn cho bé - 1\" class=\"news-image\" src=\"http://img-eva.24hstatic.com/upload/3-2014/images/2014-07-08/1404811239-44.jpg\" style=\"border: 0px; vertical-align: middle;\" /&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;Thêm nữa, chỉ cần thức ăn của bé bị nguội sau khoảng thời gian là 2 tiếng, vi trùng sẽ phát triển và lan đi rất nhanh do đó mẹ có thể dùng các sản phẩm như&amp;nbsp;&lt;a href=\"http://dotreem.com/index.php?main_page=index&amp;amp;cPath=297\" style=\"background-color: transparent; color: rgb(102, 102, 102); text-decoration-line: none;\" target=\"_blank\"&gt;hộp giữ ấm thức ăn&lt;/a&gt;&amp;nbsp;cho bé, vừa an toàn, vừa tiện lợi mà thức ăn của bé vẫn được giữ ấm cho đến lượng cuối cùng&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;Mỗi bà mẹ đều có những sự lựa chọn khác nhau để giữ ấm được lượng thức ăn mẹ vừa nấu để dành cho bé ăn như cách thủy nước sôi, nồi ủ cắm điện, hộp giữ ấm thức ăn…. cách làm nào cũng đều giữ ấm được cho thức ăn của bé, nhưng cách nào thật sự an toàn cho bé và không mất đi dưỡng chất trong thức ăn thì không phải mẹ nào cũng biết&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;1. Đối với việc cách thủy nước sôi: tuy ban đầu có thể giữ được độ ấm cho thức ăn nhưng cả nước và thức ăn sẽ nguội đi rất nhanh (nhất là vào mùa đông), mẹ sẽ lại mất công thay đi thay lại nhiều lần nước.&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;2. Nếu sử dụng nồi ủ cắm điện thì thức ăn luôn được ủ nóng như khi mẹ hầm trên bếp vậy, nhưng như thế các vitamin cần thiết trong thức ăn của mẹ sẽ bị tiêu hao đi, khi đó giá trị dinh dưỡng trong khẩu phần ăn mà mẹ làm cho bé sẽ mất hết, chưa kể mẹ sẽ tiêu hao thêm chi phí điện năng.&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;3. Sử dụng hộp giữ ấm thức ăn, nhờ có lớp cách nhiệt (chế tạo từ nhựa an toàn hoặc inox), thức ăn trong hộp được bảo quản nóng hoặc lạnh khi bạn cần đưa bé đi ra ngoài hoặc đi chơi xa. Thức ăn cho bé không những được giữ tươi ngon mà lượng vitamin không bị mất đi trong quá trình đun nấu nhiều lần, sẽ đảm bảo cung cấp đủ dưỡng chất cho bé.Hộp giữ ấm thức ăn được đánh giá là cách giữ ấm tiện lợi, an toàn và tích kiệm điện năng. Có thể sử dụng&amp;nbsp;hộp giữ ấm thức ăn&amp;nbsp;với tất cả các loại thức ăn: cơm, cháo, bột, sữa chua, hoa quả...&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p align=\"center\" style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;&lt;img alt=\"Mách mẹ hộp giữ ấm thức ăn cho bé - 2\" class=\"news-image\" src=\"http://img-eva.24hstatic.com/upload/3-2014/images/2014-07-08/1404811239-mach-me-hop-giu-am-thuc-an-cho-be--3-.jpg\" style=\"border: 0px; vertical-align: middle; height: 340px; width: 400px;\" /&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p align=\"center\" style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;&lt;a href=\"http://dotreem.com/index.php?main_page=index&amp;amp;cPath=297\" style=\"background-color: transparent; color: rgb(102, 102, 102); text-decoration-line: none;\"&gt;&lt;i&gt;Hộp giữ ấm thức ăn&amp;nbsp;UPASS (Đài Loan)&amp;nbsp;tiện lợi giữ ấm thức ăn khi cho bé ra ngoài&lt;/i&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p align=\"left\" style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;br /&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;UPASS nhãn hiệu các sản phẩm mẹ &amp;amp; bé cao cấp sản xuất tại Đài Loan&lt;/strong&gt;&amp;nbsp;mang đến cho các mẹ những lựa chọn đa dạng về hộp giữ ấm thức ăn với giá ưu đãi so với các sản phẩm tương đương trên thị trường.&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p align=\"center\" style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;&lt;img alt=\"Mách mẹ hộp giữ ấm thức ăn cho bé - 4\" class=\"news-image\" src=\"http://img-eva.24hstatic.com/upload/3-2014/images/2014-07-08/1404811239-mach-me-hop-giu-am-thuc-an-cho-be--7-.jpg\" style=\"border: 0px; vertical-align: middle;\" /&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p align=\"center\" style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&lt;span style=\"font-size:14px;\"&gt;&lt;a href=\"http://dotreem.com/index.php?main_page=index&amp;amp;cPath=297\" style=\"background-color: transparent; color: rgb(102, 102, 102); text-decoration-line: none;\"&gt;&lt;i&gt;Hộp giữ ấm thức ăn có kèm thìa, dĩa (nĩa) Upass – Đài Loan với 3 loại dung tích: 300cc, 400cc và 500 cc&lt;/i&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&amp;nbsp;&lt;/p&gt;\r\n		&lt;p align=\"center\" style=\"margin: 0px 0px 10px; padding: 0.5em;\"&gt;\r\n			&amp;nbsp;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-08-15 04:08:00', 55, '2017-12-04 01:12:52', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 30),
(289, 'Choosing the Right Spoon for your Baby', 'lua-chon-thia-cho-be-an-dam', '/public/files/editor-upload/images/tin-tuc/thia-tap-an-dam-silicone-upass-up3002cc-3.jpg', '/public/files/editor-upload/_thumbs/images/tin-tuc/thia-tap-an-dam-silicone-upass-up3002cc-3.jpg', 0, '0000-00-00 00:00:00', 'Early spoon-feeding: Look for a narrow, flat bowl with a coated or smooth surface. At this point your little one is just getting used t', '', '&lt;div&gt;\r\n	&lt;div class=\"post-header\" style=\"margin: 0px 0px 25px; padding: 0px; text-align: center; color: rgb(66, 66, 66); font-family: Lato, sans-serif; font-size: 13px;\"&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div class=\"post-img\" style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(66, 66, 66); font-family: Lato, sans-serif; font-size: 13px;\"&gt;\r\n		&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;a href=\"http://chikidsfeeding.com/spoons/\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(164, 211, 238);\"&gt;&lt;img alt=\"\" class=\"attachment-full-thumb size-full-thumb wp-post-image\" height=\"817\" sizes=\"(max-width: 1080px) 100vw, 1080px\" src=\"http://i1.wp.com/chikidsfeeding.com/wp-content/uploads/2016/11/spoons.jpg?resize=1080%2C817\" srcset=\"http://i1.wp.com/chikidsfeeding.com/wp-content/uploads/2016/11/spoons.jpg?w=3996 3996w, http://i1.wp.com/chikidsfeeding.com/wp-content/uploads/2016/11/spoons.jpg?resize=300%2C227 300w, http://i1.wp.com/chikidsfeeding.com/wp-content/uploads/2016/11/spoons.jpg?resize=768%2C581 768w, http://i1.wp.com/chikidsfeeding.com/wp-content/uploads/2016/11/spoons.jpg?resize=1024%2C775 1024w, http://i1.wp.com/chikidsfeeding.com/wp-content/uploads/2016/11/spoons.jpg?resize=1080%2C817 1080w, http://i1.wp.com/chikidsfeeding.com/wp-content/uploads/2016/11/spoons.jpg?w=2160 2160w, http://i1.wp.com/chikidsfeeding.com/wp-content/uploads/2016/11/spoons.jpg?w=3240 3240w\" style=\"margin: 0px; padding: 0px; border: none; max-width: 100%; height: auto;\" width=\"1080\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div class=\"post-entry\" style=\"margin: 0px; padding: 0px; color: rgb(66, 66, 66); font-family: Lato, sans-serif; font-size: 13px;\"&gt;\r\n		&lt;p style=\"margin: 0px 0px 18px; padding: 0px; line-height: 23px;\"&gt;\r\n			&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;With so many spoons on the market, it can be difficult to decide which to start with and what to use as your little one grows. Follow these guidelines to help choose a&amp;nbsp;spoon based on your baby’s&amp;nbsp;development, and a few of my favorites for his or her&amp;nbsp;first 18 months.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 0px 0px 18px; padding: 0px; line-height: 23px;\"&gt;\r\n			&lt;span style=\"font-size:12px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;6 months, early spoon-feeding:&lt;/strong&gt;&amp;nbsp;Look for a narrow, flat bowl&amp;nbsp;with a coated or smooth surface. At this point your little one is just getting used to the spoon in his mouth and is still learning how to use his lips to clear the spoon. A narrow, smooth spoon will be comfortable, and a flat spoon will be easy to clear.&amp;nbsp;A heavier spoon is also nice at this stage because it provides extra input and cuing to the tongue.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-08-15 04:08:05', 55, '2017-12-04 01:12:12', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 30),
(299, '', 'nhung-ngo-nhan-me-thuong-mac-ve-ham-sua', '/public/files/editor-upload/images/mo-ban/img-sukien02.jpg', '/public/files/editor-upload/_thumbs/images/mo-ban/img-sukien02.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2017-10-13 10:10:22', 55, '2019-09-16 03:09:33', 47, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 0),
(300, '', 'some-quick-example-text-to-build-on-4', '/public/files/editor-upload/images/bai-viet/img-sukien04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-sukien04.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2017-10-13 10:10:53', 55, '2019-10-25 03:10:36', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 0),
(290, 'Bottle with BPA: Very dangerous!', 'binh-sua-co-chat-bpa-rat-nguy-hiem', '/public/files/editor-upload/images/tin-tuc/140701-4-phuong-phap-chuan-giup-ve-sinh-binh-sua-lana1.jpg', '/public/files/editor-upload/_thumbs/images/tin-tuc/140701-4-phuong-phap-chuan-giup-ve-sinh-binh-sua-lana1.jpg', 0, '0000-00-00 00:00:00', 'Bottle with BPA: Very dangerous!', '', '&lt;div&gt;\r\n	According to American scientists, polycarbonate baby bottles containing Bisphenol A (BPA) cause neurological disorders, reproductive activity, in the long run can cause brain damage. Sets and causes some other illnesses.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	1. What is Bisphenol A?&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Bisphenol-A (BPA) is an artificial chemical used to make PC resin (polycarbonate), a resin that is still used today.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	2. How harmful is BPA?&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	BPA is found in many scientific reports by independent research groups. In a review by a team of 12 experts conducted under the National Toxicology Program (NTP), BPA caused neonatal reproductive system and neonatal growth. Only a small dose of BPA can have a similar effect on the human and infant fetuses. However, this report does not state how much BPA affects the nervous and reproductive systems of humans.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	These studies have raised concerns about the impact of BPA on human health, which has led to many calls to boycott BPA in many countries around the world.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	In April 2008, the Ministry of Health of Canada officially considered BPA a dangerous substance.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Image results for bpa&lt;/div&gt;\r\n&lt;div&gt;\r\n	BPA is a dangerous substance that affects your baby\'s health and digestive system&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	3. Some experience distinguishing the jar from BPA&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	There are a lot of polycarbonate bottles on the market and some manufacturers may not have written on the product.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	With the naked eye, users can notice a few features such as:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Polycarbonate resins are usually quite hard, transparent to BPA.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	If the bottom of the bottle has an icon (will upload the photo), it means that the bottle is made of polycarbonate plastic.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Meanwhile, products made of polypropylene look more opaque and softer than polycarbonate.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Bottles made of polypropylene will have the word PP or logo (will upload photo) at the bottom of the bottle.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	(Source: http://dantri.com.vn/suckhoe/Binh-sua-co-chat-BPA-Rat-nguy-hiem/2008/6/237379.vip)&lt;/div&gt;\r\n', 0, '', 0, '2017-08-15 04:08:18', 55, '2017-12-04 01:12:01', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 30),
(262, 'Sốt nên đo nhiệt độ ở đâu?', 'sot-nen-do-nhiet-do-o-dau', '/public/files/editor-upload/images/product/cham-soc-tre-bi-sot-1.jpg', '/public/files/editor-upload/_thumbs/images/product/cham-soc-tre-bi-sot-1.jpg', 0, '0000-00-00 00:00:00', '', '', '&lt;div&gt;\r\n	&lt;div class=\"sapo_detail\" style=\"margin: 0px 0px 20px; padding: 0px; list-style: none; outline: none; line-height: 20px; font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: rgb(68, 68, 68);\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Cơ thể con người là một cơ thể hằng nhiệt có nghĩa là một cơ thể bình thường, trong mọi tình huống, mọi hoàn cảnh thì vẫn luôn giữ được một nhiệt độ ổn định.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div id=\"abdf\" style=\"margin: 0px; padding: 0px; list-style: none; outline: none; line-height: normal; color: rgb(0, 0, 0); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;div id=\"content_detail_news\" style=\"margin: 0px 0px 15px; padding: 0px 0px 15px; list-style: none; outline: none; overflow: hidden; color: rgb(17, 17, 17); line-height: 22px !important; font-family: Arial, Helvetica, sans-serif !important; word-wrap: break-word !important;\"&gt;\r\n			&lt;div style=\"margin: 0px; padding: 0px; list-style: none; outline: none; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Cơ thể con người là một cơ thể hằng nhiệt có nghĩa là một cơ thể bình thường, trong mọi tình huống, mọi hoàn cảnh thì vẫn luôn giữ được một nhiệt độ ổn định. Tuy nhiên sự phân bố nhiệt trong cơ thể thì không đồng đều.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Có hai loại thân nhiệt là thân nhiệt trung tâm và thân nhiệt ngoại vi. Thân nhiệt trung tâm là nhiệt độ ở phần sâu trong cơ thể, chính xác nhất là đo tại vùng mạch máu và mô quanh trung tâm điều hòa nhiệt ở não. Thân nhiệt trung tâm phân bổ dọc từ não xuống phần sâu của đầu, mặt, cổ, thân mình, bình thường dao động xung quanh 36,2 - 37,2 độ C. Thân nhiệt trung tâm được đo ở hậu môn hoặc là màng nhĩ qua ống tai. Nhiệt độ ở tứ chi và phần nông của cơ thể là thân nhiệt ngoại vi. Thân nhiệt ngoại vi có thể đo ở nách hoặc miệng, nhiệt độ đo ở những vị trí khác nhau có sự chênh lệch. Cụ thể:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;div align=\"center\" style=\"margin: 0px; padding: 0px; list-style: none; outline: none; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;table align=\"center\" cellpadding=\"0\" cellspacing=\"5\" style=\"margin: 5px; padding: 0px 0px 0px 5px; list-style: none; outline: none; max-width: 100%; border-width: 0px; border-style: solid; border-color: black; width: 381px; border-collapse: collapse; height: 231px; line-height: 22px !important; word-wrap: break-word !important;\"&gt;\r\n					&lt;tbody style=\"margin: 0px; padding: 0px; list-style: none; outline: none; line-height: 22px !important; word-wrap: break-word !important;\"&gt;\r\n						&lt;tr style=\"margin: 0px; padding: 0px; list-style: none; outline: none; line-height: 22px !important; word-wrap: break-word !important;\"&gt;\r\n							&lt;td align=\"middle\" style=\"margin: 0px; padding: 5px; list-style: none; outline: none; vertical-align: top; text-align: center; line-height: 22px !important; word-wrap: break-word !important;\"&gt;\r\n								&lt;div style=\"margin: 0px; padding: 0px; list-style: none; outline: none; line-height: 22px !important; word-wrap: break-word !important;\"&gt;\r\n									&lt;div style=\"margin: 0px; padding: 0px; list-style: none; outline: none; line-height: 22px !important; word-wrap: break-word !important;\"&gt;\r\n										&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"Chăm sóc trẻ khi bị sốt\" src=\"/public/files/editor-upload/images/product/cham-soc-tre-bi-sot-1.jpg\" style=\"padding: 0px; list-style: none; outline: none; max-width: 100%; display: block; width: 480px; line-height: 22px !important; border: 0px none !important; word-wrap: break-word !important; height: 382px;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n								&lt;/div&gt;\r\n								&lt;div style=\"margin: 0px; padding: 0px; list-style: none; outline: none; line-height: 22px !important; word-wrap: break-word !important;\"&gt;\r\n									&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; list-style: none; outline: none; font-style: italic; line-height: 22px !important; word-wrap: break-word !important;\"&gt;&amp;nbsp;Ảnh minh họa (nguồn Internet)&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n							&lt;/td&gt;\r\n						&lt;/tr&gt;\r\n					&lt;/tbody&gt;\r\n				&lt;/table&gt;\r\n			&lt;/div&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Nách: Thấp hơn ở hậu môn 0,7 độ C&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Tai: Thấp hơn ở hậu môn 0,5 độ C&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Miệng: Thấp hơn ở hậu môn 0,5 độ C&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Dựa trên nguyên lý đó mà các thiết bị đo thân nhiệt ra đời. Có nhiều loại nhiệt kế khác nhau:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; list-style: none; outline: none; font-style: italic; line-height: 22px !important; word-wrap: break-word !important;\"&gt;Nhiệt kế số:&amp;nbsp;&lt;/span&gt;Cho biết kết quả rất nhanh, chính xác và có thể dùng để đo thân nhiệt ở miệng, hậu môn, nách. Nhiệt kế có nhiều loại với kích thước, hình dáng khác nhau và có thể mua ở các nhà thuốc hoặc siêu thị. Cần đọc kỹ hướng dẫn trước khi dùng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; list-style: none; outline: none; font-style: italic; line-height: 22px !important; word-wrap: break-word !important;\"&gt;Nhiệt kế điện đo nhiệt độ ở tai:&amp;nbsp;&lt;/span&gt;Loại nhiệt kế này cho kết quả nhanh, chính xác, dễ dùng và hiện nay rất phổ biến. Tuy nhiên, không nên dùng đối với các trẻ dưới 3 tháng tuổi vì lỗ tai các em nhỏ và cho kết quả không được chính xác.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; list-style: none; outline: none; font-style: italic; line-height: 22px !important; word-wrap: break-word !important;\"&gt;Nhiệt kế băng nhựa&amp;nbsp;&lt;/span&gt;đặt trên trán, không chính xác.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; list-style: none; outline: none; font-style: italic; line-height: 22px !important; word-wrap: break-word !important;\"&gt;Nhiệt kế dưới hình thức núm vú,&amp;nbsp;&lt;/span&gt;loại nhiệt kế này tiện lợi nhưng cho kết quả không chính xác.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; list-style: none; outline: none; font-style: italic; line-height: 22px !important; word-wrap: break-word !important;\"&gt;Nhiệt kế thủy ngân,&lt;/span&gt;&amp;nbsp;đây là loại nhiệt kế rất thông dụng, tuy nhiên không nên dùng cho trẻ nhỏ nhất là theo đường miệng vì trẻ có thể cắn vỡ nhiệt kế, dẫn tới nguy cơ ngộ độc thủy ngân.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Sốt là một phản ứng tốt của cơ thể, tuy nhiên khi sốt cao quá thì lại có hại cho, đặc biệt ở trẻ nhỏ, phản ứng điều nhiệt kém. Khi nhiệt độ tăng cao có thể làm cho trẻ co giật, nặng hơn là làm cho các cơ quan trong cơ thể bị rối loạn hoạt động và rất dễ dẫn đến tử vong. Khi trẻ sốt nên đưa trẻ đến các cơ sở y tế để được xác định nguyên nhân và biện pháp xử trí thích hợp. Tuy nhiên để an toàn phải biết theo dõi và kiểm soát thân nhiệt cho trẻ để tránh các tai biến do sốt gây ra.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Khi đo nhiệt độ cho trẻ nên đo ở nách là an toàn hơn, trước khi đo nhớ vẩy ống nhiệt xuống dưới 35,5 độ C (hay bấm nút cho đến lúc có số 0 ở máy điện tử).&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Khi đặt ống nhiệt vào nách trẻ, phải đảm bảo kẹp đúng giữa phần da.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Chờ tối thiểu 5 phút với ống thuỷ (hay đến khi có tiếng bíp của máy điện tử) mới đọc kết quả.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p align=\"left\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; outline: none; text-align: justify; margin-bottom: 5px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"&gt;\r\n				&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Cộng thêm 0,5 độ C để có được thân nhiệt trung tâm. &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-07-12 04:07:09', 55, '2017-08-21 10:08:23', 55, 255, 0, 0, 0, 10, '', '', '', '', 'vi', 3),
(258, 'Tin tức Genex1222', 'tin-tuc-genex1222', '/public/files/editor-upload/images/product/about-1.jpg', '/public/files/editor-upload/_thumbs/images/product/about-1.jpg', 0, '0000-00-00 00:00:00', 'Tin tức Genex1', '', '&lt;div&gt;\r\n	Tin tức Genex1&lt;/div&gt;\r\n', 0, '', 0, '2017-06-20 10:06:25', 47, '0000-00-00 00:00:00', 0, 255, 0, 1, 1, 2, '', '', '', '', 'vi', 1),
(259, 'Tin tức Genex12', 'tin-tuc-genex12', '/public/files/editor-upload/images/product/bn-genex-04.jpg', '/public/files/editor-upload/_thumbs/images/product/bn-genex-04.jpg', 0, '0000-00-00 00:00:00', 'Tin tức Genex1', '', '&lt;div&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Công ty TNHH Sản Phẩm Trẻ Em Chí Việt chuyên bán lẻ và bán sỉ những nhãn hiệu hàng hóa dành cho trẻ em tốt nhất trong và ngoài nước. Sản phẩm đã được đánh giá và lựa chọn để giao đến cho người tiêu dùng với chi phí hợp lý. Công ty hoạt động với nguyên tắc trung thực, tôn trọng mọi người và cố gắng làm điều đúng.&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n', 0, '', 0, '2017-06-20 10:06:54', 47, '2017-08-21 09:08:28', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 28),
(308, '', 'num-ty-chinh-nha-nip-miss-denti', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, 'WIYt5Wt_qxA', 0, '2017-12-06 10:12:08', 55, '2017-12-06 10:12:22', 55, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 31),
(274, 'Máy tiệt trùng sấy khô, khử mùi bằng tia UV Upang', 'may-tiet-trung-say-kho-khu-mui-bang-tia-uv-upang', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, 'sc6ezTxhGcI', 0, '2017-08-15 10:08:13', 55, '0000-00-00 00:00:00', 0, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 28),
(275, 'Tia uv là là gì ? Tác dụng của tia uv diệt khuẩn như thế nào?', 'tia-uv-la-la-gi-tac-dung-cua-tia-uv-diet-khuan-nhu-the-nao', '/public/files/editor-upload/images/product/Cac-tia-uv-gay-tac-hai-cho-da.jpg', '/public/files/editor-upload/_thumbs/images/product/Cac-tia-uv-gay-tac-hai-cho-da.jpg', 0, '0000-00-00 00:00:00', 'Tia uv đươc giới thiệu và biết đến nhiều trên các phương tiện thông tin, đặc biệt là trong công nghệ diệt khuẩn. Đa số chúng ta chỉ biết đến', '', '&lt;div&gt;\r\n	&lt;div style=\"margin: 0px 0px 3.2rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 32px; font-family: &amp;quot;Source Serif Pro&amp;quot;, serif; font-size: 21px; vertical-align: baseline; outline: 0px; background: transparent; color: rgba(0, 0, 0, 0.7);\"&gt;\r\n		&lt;div&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;Định nghĩa Tia UV&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;UV là viết tắt của từ Ultra Violet gọi là tia tia vô hình mà chúng có tồn tại trong mặt trời, có tầng sóng từ 200 đến 400nm. Thành phần chính của ánh sáng mặt trời là các tia UVA và UVB 2 tia này có khả năng làm tổn hại đến mắt và da con người.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;Các tác dụng phải kể đến của tia uv trong ứng dụng đời sống:&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Tia UV có thể khử khuẩn và tác dụng mạnh nhất trên Nucleo Protein của vi khuẩn, nó có thể giết chết vi khuẩn khi chiếu vào. Hiệu quả diệt khuẩn của tia UV không những phụ thuộc vào mật độ, thời gian chiếu, điều điện chiếu mà còn tùy thuộc vào khả năng chịu đựng của vi khuẩn. Ngoài ra tia với những tác động của tia uv với môi trường có thể sinh ra ozon là một loại khí có thể tiệt trùng vi khuẩn rất hiệu quả.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;Tia uv khử khuẩn trong nước&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Vùng bức xạ của tia cực tím có tác dụng diệt khuẩn tốt nhất là vùng có bước sóng 280 đến 200 nm. Trong công nghệ lọc nước đèn uv thường đặt ngầm trong nước. Lớp nước chảy qua hệ thống chiếu của đèn phải dầy khoảng 10 đến 15cm và phải tiếp xúc với tia uv ít nhất 10 đến 30s. Một đặc điểm cần phải lưu ý khi sử dụng tia uv là chúng chỉ xuyên qua nước không màu, vì vậy nếu nước có độ đục cao hiệu quả diệt khuẩn sẽ bị giảm đáng kể. Phương pháp nà còn có nhược điểm là tác dụng không bền, vi khuẩn có thể trở lại và chỉ áp dụng với nước trong.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;Tia uv khử khuẩn không khí&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Với việc chiếu đèn trực tiếp: Các đèn diệt khuẩn sẽ được treo ở độ cao hợp lý, đảm bảo luồng bức xạ tím chiếu trực tiếp vào chỗ làm việc. Trong môi trường và điều kiện tiếp xúc như thế này người làm việc phải có kính bảo vệ mắt và bảo hộ bảo bệ da phòng ngừa bị bỏng.&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n			&lt;li&gt;\r\n				&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Với cách chiếu gián tiếp: Các đèn diệt khuẩn được đặt với mặt phán chiếu và quay lên trên, chiều cao hơn so với người từ 2 đến 2,5m. Luồng tia cực tím hướng lên trên tiêu điệt vi khuẩn và những lớp không khí bên trên, khi&amp;nbsp;chúng phản chiếu xuống tường nó thì độ phản chiếu sẽ thấy hơn. Do tác động của các dòng đối lưu, các lớp không khí trên đã được khử khuẩn dần dần bị thay thế bằng các lớp ở dưới chưa diệt khuẩn, nhờ đó qua một thời gian toàn bộ không khí sẽ được khử khuẩn.&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-08-15 10:08:20', 55, '2017-08-15 10:08:33', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 28),
(261, 'Tell Mom how to bathe when she has a fever', 'mach-cac-me-cach-tam-khi-con-bi-sot', '/public/files/editor-upload/images/product/mach-me-tam-cho-be-thanh-cong.jpg', '/public/files/editor-upload/_thumbs/images/product/mach-me-tam-cho-be-thanh-cong.jpg', 0, '0000-00-00 00:00:00', 'For infants, there are countless reasons for fever: teething fever, sore throat fever, fever, hand and foot fever ... Whatever the reason, m', '', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		For infants, there are countless reasons for fever: teething fever, sore throat fever, fever, hand and foot fever ... Whatever the reason, mothers will be extremely worried. If we can not handle the fever, the children may have a high fever can affect the child\'s neurology, the accident is unpredictable. Previously without knowing, people often told themselves that if the baby had a high fever, brought to Children\'s Hospital, people would strip naked baby, lie down in the cold room or dip into the water tank . If only to hear that it is difficult to mother to dare to take the child to the hospital for the children, because of anxiety after the fever should worry about cure nasal discharge and cough. The psychology of the Vietnamese themselves is when children are feverish, never bathe children. So do you ever learn to try to see the right bath for children when the fever is not? After carefully investigating and consulting the baby\'s doctor further advice, I would like to share this method of bathing:&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		When your baby is fever you will be advised to take the drug every 4-6 hours. However, it is not the time when the drug is complete and the baby is free. Proper bathing is aimed at lowering fever for the baby\'s brain, helping to lower body temperature because the baby\'s height will be affected.&lt;/div&gt;\r\n	&lt;div align=\"justify\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;img alt=\"Tắm cho bé đúng cách giúp hạ sốt cho bé\" src=\"/public/files/editor-upload/images/mach-me-tam-cho-be-thanh-cong.jpg\" style=\"width: 500px; height: 267px;\" /&gt;&lt;/div&gt;\r\n	&lt;div align=\"justify\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div align=\"justify\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.01);\"&gt;\r\n		&lt;p align=\"center\" style=\"margin: 10px 0px; padding: 0px;\"&gt;\r\n			&amp;nbsp;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div&gt;\r\n		When the baby fever, you pair the temperature for the baby, then close the door to cover the wind and mix the bath water into the pot. The temperature of the bath water must be lower than the temperature of the child\'s body 2 degrees and during the bathing you must also ensure this. If it is too cold, it will be subjected to thermal shock. For example, when your baby\'s fever is 39 degrees, you mix the water at 37 degrees. You can bathe from head down and bathe in about 5 minutes. Then dry your baby and wear loose clothing.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		In the Children\'s Hospital, if you understand well, you will feel secure when you see your child is bathed by a fever. Surely that is not a \"water dip\" action as people talk about.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		There is also another technique that doctors remind couples when the baby has a fever is to put the baby in the air-conditioned room if the baby is too fever. Make sure room temperature is cool (minimum 20 degrees). You can remove the baby, because the baby\'s body is fever so you feel safe, baby will not be cold.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		In addition, according to the doctors, the mother should give her cool clothing, so clean her body often (forehead, wipe the armpit, groin). If calmly treated, along with medicine that doctors prescribe baby will be much better.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Wish your mothers success!&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-07-12 04:07:16', 55, '2017-08-24 05:08:12', 55, 1, 1, 1, 1, 10, '', '', '', '', 'vi', 3);
INSERT INTO `articles_en` (`id`, `name`, `alias`, `picture`, `thumb`, `special`, `publish_date`, `synopsis`, `author`, `content`, `hits`, `video`, `comment_fb`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `page_id`) VALUES
(276, '3 cách tiệt trùng bình sữa siêu sạch', '3-cach-tiet-trung-binh-sua-sieu-sach', '/public/files/editor-upload/images/product/1394790801-untitled-2.jpg', '/public/files/editor-upload/_thumbs/images/product/1394790801-untitled-2.jpg', 0, '0000-00-00 00:00:00', '', '', '&lt;div&gt;\r\n	&lt;div class=\"newsSapo sapo clearfix\" style=\"margin: 0px auto; box-sizing: border-box; clear: both; font-size: 13px; line-height: 18px; color: rgb(33, 33, 33); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;;\"&gt;\r\n		&lt;h2 style=\"margin: 0px auto; box-sizing: border-box; font-size: 18px; font-weight: 400; line-height: 1.2; display: inline;\"&gt;\r\n			&amp;nbsp;&lt;/h2&gt;\r\n		&lt;p class=\"color-title bold\" style=\"margin: 5px auto 15px; box-sizing: border-box; line-height: 26px; font-size: 16px; font-weight: 700; color: rgb(0, 0, 0);\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Nếu bình sữa đã rửa để 24 tiếng không sử dụng, mẹ nên tiệt trùng lại một lần nữa để tránh vi khuẩn sinh sôi.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;center style=\"margin: 0px auto; box-sizing: border-box; color: rgb(33, 33, 33); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: medium;\"&gt;\r\n		&lt;div style=\"text-align: left;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"text-align: justify;\"&gt;Bình sữa là một đồ vật rất quan trọng vì chúng ảnh hưởng trực tiếp đến chuyện ăn uống của trẻ. Đối với những bé bú sữa công thức, một bình sữa sạch và vô trùng là điều vô cùng cần thiết bởi các bé sẽ tiếp xúc miệng trựctiếp với núm ti.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;/center&gt;\r\n	&lt;div class=\"newsContent\" id=\"baiviet-container\" itemprop=\"articleBody\" style=\"margin: 0px auto; box-sizing: border-box; color: rgb(33, 33, 33); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: medium;\"&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Tất cả các bà mẹ đêu biết cần phải tiệt trung bình sữa trước khi cho trẻ ăn. Tuy nhiên, tiệt trùng thế nào cho đúng cách, sạch sẽ và tiết kiệm thời gian thì không phải chị em nào cũng biết cách làm.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Để ngăn ngừa&amp;nbsp;sữa lên men trong bình gây nấm mốc, mỗi lần cho con ăn xong, mẹ cần đổ ngay chỗ sữa thừa trong bình sữa và rửa sạch bình cũng như núm vú giả bằng cọ bình và nước rửa bình sữa chuyên dụng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Toàn bộ số bình sữa trẻ dùng trong một ngày có thể được khủ trùng một lần là được. &amp;nbsp;Xin mách mẹ 3 mẹo tiệt trùng bình sữa vô cùng thiết thực.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px; text-align: center; color: rgb(0, 0, 255); font-style: italic;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;span align=\"center\" class=\"img-share\" style=\"margin: 0px auto; box-sizing: border-box; position: relative; display: table; clear: both;\"&gt;&lt;img alt=\"3 cach tiet trung binh sua sieu sach - 1\" class=\"news-image\" src=\"http://anh.eva.vn/upload/1-2014/images/2014-03-14/1394790801-untitled-2.jpg\" style=\"margin: 0px auto; box-sizing: border-box; border: 0px; display: block; width: 500px; max-width: 660px; height: auto;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px; color: rgb(0, 0, 255); font-style: italic; text-align: center;\"&gt;\r\n			&lt;br style=\"margin: 0px auto; box-sizing: border-box;\" /&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Trước khi tiệt trùng mẹ cần rửa kỹ bình và núm ti (ảnh minh họa)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;strong style=\"margin: 0px auto; box-sizing: border-box;\"&gt;Phương pháp đun sôi&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Đun sôi là phương pháp tiết kiệm nhất về mặt kinh tế cho mẹ. Sau khi các bình sữa đã được rửa sạch, mẹ cho vào nước sôi và đun từ 15-30 phút. Cách làm cụ thể như sau&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;1.&amp;nbsp; Chuẩn bị một cái nồi bằng inox, cho nước lạnh vào ngập 2/3 nồi. Nồi inox chuyên dùng để khử trùng bình sữa mẹ nên để riêng và không sử dụng cùng các mục đích khác như nấu ăn hay hầm, rán…&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;2.&amp;nbsp; Nếu bình sữa được làm từ thủy tinh, mẹ có thể cho riêng bình vào nồi nước lạnh trước. 5-10 phút sau khi nước sôi mới cần cho núm vú, nắp bình và các sản phẩm nhựa khác vào. Đậy nắp và đun thêm 3-5 phút. Chờ đến khi nước nguội, dùng kẹp gắp bình và núm vú giả ra. Đối với chai nhựa, mẹ phải đợi khi nước sôi mới được cho vào. Đun tiếp 3-5 phút. Không nên đun đồ nhựa trong một thời gian dài bởi nó sẽ dễ làm hỏng chất nhựa của bình. Mẹ có thể xem nhiệt độ cho phép được ghi trên vỏ các bình sữa tùy theo từng hãng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;3.&amp;nbsp; Sau khi dùng kẹp gắp ra, mẹ đặt tất cả bình và núm vú lộn ngược, để ráo ở nơi thông thoáng. &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;strong style=\"margin: 0px auto; box-sizing: border-box;\"&gt;Khử trùng bằng hơi nước&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Phương pháp hiện đại, đơn giản và được rất nhiều chị em chọn lựa vì tiện dụng và giá thành không quá cao. Nếu mẹ có một chiếc máy tiệt trùng bình sữa bằng hơi nước, tất cả các thao tác chỉ đơn giản là cho bình sữa và núm ti vào. Đổ nước và ấn nút. Đợi đến khi quá trình tiệt trụng bằng hơi hoàn tất, máy sẽ tự động cắt điện.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;strong style=\"margin: 0px auto; box-sizing: border-box;\"&gt;Sử dụng lò vi sóng&lt;/strong&gt;Tuy nhiên, mẹ nên lưu ý, sau khi tiệt trùng bình sữa, lượng nước còn lại trong máy tiệt trùng cần phải được bỏ đi. Tất cả bình sữa, núm ti phải được để ra ngoài cho thông thoáng, sạch sẽ. Thêm vào đó, các bác sĩ khuyến cáo, nếu các bình sữa không được sử dụng sau 24 tiếng, mẹ nên tiệt trùng lại lần nữa đế tránh cho vi khuẩn phát triển.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Theo một nghiên cứu gần đây ở Mỹ, chỉ cần 2 phút nấu trong lò vi sóng là có thể tiệt trùng phần lớn các loại vi khuẩn gây bệnh phổ biến. Do đó chén bát, bình sữa có thể tiệt trùng bằng lò vi sóng. Nếu nhà có lò vi sóng, mẹ có thể thực hiện như sau:Sau khi rửa sạch bình, cho tất cả vào một cái hộp đựng ngập nướ. Quay trong lò vi sóng khoảng 5-10 phút.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Chị em chú ý không được để núm ti và nắm bình vào lò vi sóng mà không có nước để tránh biến dạng, hư hỏng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;p style=\"margin: 15px auto; box-sizing: border-box; line-height: 26px; font-size: 16px;\"&gt;\r\n			&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Khi trẻ lớn, mẹ có thể chỉ cần rửa bình và tráng qua nước sôi, để khô ráo là có thể dùng luôn.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-08-15 10:08:47', 55, '0000-00-00 00:00:00', 0, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 28),
(277, '4 phương pháp vệ sinh bình sữa “chuẩn” nhất các mẹ nên tham khảo!', '4-phuong-phap-ve-sinh-binh-sua-“chuan”-nhat-cac-me-nen-tham-khao', '/public/files/editor-upload/images/tin-tuc/140701-4-phuong-phap-chuan-giup-ve-sinh-binh-sua-lana1.jpg', '/public/files/editor-upload/_thumbs/images/tin-tuc/140701-4-phuong-phap-chuan-giup-ve-sinh-binh-sua-lana1.jpg', 0, '0000-00-00 00:00:00', '', '', '&lt;div&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Theo các bác sỹ nhi khoa, trẻ nhỏ có thể gặp các vấn đề về tiêu hóa do việc khử trùng bình sữa không được thực hiện đúng cách. Vì vậy, các chuyên gia khuyến cáo các mẹ cần khử trùng kỹ bình sữa, đặc biệt trong 6 tháng đầu đời của trẻ. Tuy nhiên, trường hợp làm nhiều hơn hoặc ngược lại sẽ khiến hệ miễn dịch của bé không được rèn luyện để chống chọi với bệnh tật.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"box-sizing: border-box;\"&gt;Vật dụng của bé: Môi trường thuân lợi cho vi khuẩn&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Trong môi trường chúng ta đang sinh sống, có chứa rất nhiều bụi và các loại vi khuẩn có hại. Các vật dụng liên quan đến việc ăn uống của trẻ như bình sữa, muỗng, thìa, tô, chén… chính là môi trường thuận lợi cho các loại vi khuẩn này sinh sôi và phát triển.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"&amp;quot;&amp;quot;\" src=\"http://lanacosmetics.com/media/wysiwyg/news/140701-4-phuong-phap-chuan-giup-ve-sinh-binh-sua-lana1.jpg\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;em style=\"box-sizing: border-box;\"&gt;Bình sữa của trẻ – môi trường rất thuận lợi cho vi khuẩn có hại phát triển.&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Trong 6 tháng đầu đời khi hệ miễn dịch còn yếu, trẻ rất dễ bị rối loạn tiêu hóa nếu sữa uống bị nhiễm khuẩn do bình không được vệ sinh đúng cách. Như vậy, không chỉ trước khi cho con bú mà ngay cả đối với bình vừa mới mua về, các mẹ cũng cần phải vệ sinh hết sức cẩn thận.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"box-sizing: border-box;\"&gt;Vệ sinh bình sữa đúng cách giúp giảm các vấn đề về tiêu hóa&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Theo hướng dẫn chung, bình sữa mới mua về, các mẹ cần phải vệ sinh bằng cọ và nước xà phòng thật kỹ. Sau đó, bỏ bình sữa ngập trong nước đang đun sôi khoảng từ 5-10 phút, vớt bình ra và phơi dưới nắng cho tới khi khô hẳn mới sử dụng.&lt;br style=\"box-sizing: border-box;\" /&gt;\r\n		Tuy nhiên, về tâm lý, các bà mẹ thường rất ngại sử dụng xà phòng thông thường cho các vật dụng em bé. Đó là chưa kể đến, việc bỏ bình sữa ngập trong nước đang đun sôi khoảng từ 5-10 phút cũng chưa hẳn là phương pháp nên áp dụng đối với bình sữa bằng nhựa.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"&amp;quot;&amp;quot;\" src=\"http://lanacosmetics.com/media/wysiwyg/news/140701-4-phuong-phap-chuan-giup-ve-sinh-binh-sua-lana.jpg\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;em style=\"box-sizing: border-box;\"&gt;Cả bình sữa mới và bình đã qua sử dụng đều cần được vệ sinh thật kỹ.&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Đối với bình sữa bé đã sử dụng nhiều lần, sau mỗi lần bú các mẹ cũng phải rất cẩn thận trong khâu vệ sinh. Lưu ý, ngoài cọ rửa thật sạch thân bình và núm vú bằng nước lạnh, các mẹ còn cần phun nước qua đầu núm nhiều lần để đảm bảo lỗ núm cũng được làm sạch, sau đó mới bắt đầu quá trình khử trùng bình. Việc khử trùng bình có thể thực hiện bằng các cách sau:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"box-sizing: border-box;\"&gt;Cách 1:&lt;/strong&gt;&amp;nbsp;Toàn bộ dụng cụ cho bé bú sau khi rửa sạch được cho vào nồi hấp tiệt trùng, đổ nước vào máy theo hướng dẫn và bật công tắc, việc khử trùng sẽ được hoàn tất sau 10-15 phút. Cách này khá đơn giản và đảm bảo, song bạn sẽ phải chi một khoản không nhỏ để mua máy hấp.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"box-sizing: border-box;\"&gt;Cách 2:&lt;/strong&gt;&amp;nbsp;Tiệt trùng bình sữa cho bé bằng lò vi sóng, việc tiệt trùng chỉ mất từ 2-8 phút. Phương pháp này có thể áp dụng được với cả bình bằng nhựa và thủy tinh, nhưng lại khó loại bỏ những vết dơ do trước đó bình chỉ được rửa bằng nước lã.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"&amp;quot;&amp;quot;\" src=\"http://lanacosmetics.com/media/wysiwyg/news/140701-tiet-trung-binh-sua-bang-lo-vi-song-LANACosmetics.jpg\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;em style=\"box-sizing: border-box;\"&gt;Tiệt trùng bình sữa cho bé bằng lò vi sóng nhanh nhưng cẩn thận với bình sữa nhựa&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"box-sizing: border-box;\"&gt;Cách 3:&lt;/strong&gt;&amp;nbsp;Cho bình sữa cùng các loại nắp đi kèm sau khi rửa sạch vào nồi nước có hòa 1 thìa giấm ăn để loại bỏ cặn vôi do sữa để lại, đặt lên bếp và đun sôi trong 15 phút, riêng núm vú chỉ đun trong khoảng 5 phút. Phương pháp này cũng tương tự như đối với bình sữa mới, ưu điểm là đơn giản và rẻ tiền, nhưng việc đun nóng có thể làm ảnh hưởng đến độ bền bình nhựa và núm cao su. Hơn thế nữa, trong quá trình đun có thể làm nảy sinh nguy cơ phóng thích độc tố từ nhựa và cao su.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"&amp;quot;&amp;quot;\" src=\"http://lanacosmetics.com/media/wysiwyg/news/140701-dun-binh-sua-bang-dung-dich-giam-LANACosmetics.jpg\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;em style=\"box-sizing: border-box;\"&gt;Đun bình sữa và nắp bằng dung dịch nước và giấm ăn để loại bỏ cặn vôi của sữa&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong style=\"box-sizing: border-box;\"&gt;Cách 4:&lt;/strong&gt;&amp;nbsp;Để giúp cho việc vệ sinh bình sữa trở nên dễ dàng hơn, trên thị trường đã có sản phẩm chuyên dụng đó là dung dịch rửa bình sữa dành cho trẻ. Đa số các sản phẩm được sản xuất và quản lý chất lượng nghiêm ngặt theo tiêu chuẩn GMP, nhằm đạt được tính năng an toàn tối đa cho bé. Đặc biệt, các mẹ không cần phải lo tác dụng của nhiệt trong việc vệ sinh bình sữa.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Sản phẩm sẽ giúp diệt khuẩn và làm sạch các vật dụng cho bé như bình sữa, núm vú nhựa, đồ cắn nướu răng, đồ chơi cho bé, dụng cụ chăm sóc bé, ly chén … Với thành phần dịu nhẹ và làm sạch hiệu quả, dung dịch rửa bình sữa giúp ức chế sự phát triển của vi khuẩn có hại và rửa sạch vật dụng khỏi mọi chất bẩn, chất béo của sữa… bám vào. Từ đó, giúp ngăn ngừa cách bệnh thông thường như tiêu chảy, loét miệng không xảy ra đối với trẻ.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;img alt=\"&amp;quot;&amp;quot;\" src=\"http://lanacosmetics.com/media/wysiwyg/news/140701-rua-binh-sua-giup-uc-che-su-phat-trien-cua-vi-khuan-co-hai-LANACosmetics.jpg\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;\" /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;em style=\"box-sizing: border-box;\"&gt;Sử dụng dung dịch rửa bình sữa giúp ức chế sự phát triển của vi khuẩn có hại&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-family: Roboto, sans-serif; font-size: 16px; color: rgb(102, 102, 102) !important;\"&gt;\r\n		&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;Như vậy, hiện có khá nhiều cách để mẹ có thể lựa chọn để vệ sinh bình sữa cho bé yêu của mình. Tuy nhiên, các mẹ hãy lựa chọn phương thức mình thấy đơn giản và hiệu quả nhất, để có thêm thời gian vui chơi cùng thiên thần nhỏ của mình mỗi ngày.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-08-15 10:08:27', 55, '0000-00-00 00:00:00', 0, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 28),
(278, 'Hubdic', 'hubdic', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '-yyWKZ-cytE', 0, '2017-08-15 10:08:53', 55, '2017-12-01 11:12:25', 55, 255, 0, 0, 0, 11, '', '', '', '', 'vi', 2);
INSERT INTO `articles_en` (`id`, `name`, `alias`, `picture`, `thumb`, `special`, `publish_date`, `synopsis`, `author`, `content`, `hits`, `video`, `comment_fb`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `page_id`) VALUES
(280, 'Khi bé bị sốt cao mẹ cần phải làm gì?', 'khi-be-bi-sot-cao-me-can-phai-lam-gi', '/public/files/editor-upload/images/tin-tuc/Hinh-2.jpg', '/public/files/editor-upload/_thumbs/images/tin-tuc/Hinh-2.jpg', 0, '0000-00-00 00:00:00', '', '', '&lt;div&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Khi bé bị sốt cao có nghĩa là thân nhiệt của bé cao hơn 37oC, môi khô, quấy khóc. Bé bị sốt cao có một vài nguyên nhân như : Nhiễm trùng, cảm nắng, mặc quá nhiều quần áo gây nóng, tiêm chủng, mọc răng…Bạn thường thấy rất bối rối mỗi khi bé bị sốt, bạn đã làm mọi cách để hạ sốt mà hình như càng ngày bé càng nóng hơn?&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;em style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;Đừng quá lo lắng và mất bình tĩnh khi bé có triệu chứng sốt. Có đứa bé nào là chưa một lần sốt trong đời? Bởi vì nó không chỉ là triệu chứng bệnh khá phổ biến ở bé nhỏ khi sức đề kháng của bé còn rất yếu mà còn là một phản ứng tự nhiên của hệ miễn dịch để cảnh báo cho cơ thể trước các tác nhân gây bệnh tấn công bé nhỏ. Vậy ba mẹ phải chăm sóc bé như thế nào khi bị sốt?&lt;/em&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: center;\"&gt;\r\n		&lt;a href=\"http://giadinh365.vn/wp-content/uploads/2015/03/Hinh-1.jpg\" style=\"box-sizing: border-box; outline: none; background-color: transparent; color: rgb(41, 101, 102); text-decoration-line: none; border: 0px none; font-family: inherit; font-size: 14px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;&lt;img alt=\"khi be bi sot cao me can kiem tra nhiet do cua be\" class=\"alignnone size-full wp-image-10611 aligncenter\" height=\"299\" src=\"http://giadinh365.vn/wp-content/uploads/2015/03/Hinh-1.jpg\" style=\"box-sizing: border-box; outline: none; border: medium none; vertical-align: baseline; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px auto; padding: 0px; display: block;\" title=\"Khi bé bị sốt cao mẹ cần kiểm tra nhiệt độ của bé\" width=\"450\" /&gt;&lt;/a&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: center;\"&gt;\r\n		&lt;em style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;Khi bé bị sốt cao mẹ cần kiểm tra nhiệt độ của bé&lt;/em&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Những lời khuyên và hướng dẫn của các chuyên gia dưới đây sẽ giúp bạn nhanh chóng “ứng phó” kịp thời trong thời điểm này.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Tại sao bé bị sốt?&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Sốt là phản ứng tự nhiên của cơ thể đối với các bệnh nhiễm khuẩn, hoặc do bị nóng lạnh đột ngột hoặc những biến đổi về chuyển hóa bên trong cơ thể. Khi đó, sốt chính là triệu chứng của một số bệnh lý bé mắc phải.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Thường có hai nhóm nguyên nhân chính gây ra sốt là virus và vi khuẩn. Sốt khi bé bị viêm mũi họng, viêm amydal, sốt do cảm cúm… thường chỉ kéo dài 3-4 ngày. Trường hợp này, bé sốt nhưng vẫn tỉnh táo, vẫn ăn uống được và thường kèm theo các dấu hiệu như sổ mũi, hắt hơi, ho hoặc phát ban …thường là lành tính.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Trường hợp thứ hai, khi sốt là một trong những dấu hiệu của các bệnh nguy hiểm như: viêm phổi, sốt rét, sốt xuất huyết, viêm màng não, viêm não nhiễm khuẩn huyết…. Bé thường sốt cao và rất mệt mỏi kèm theo các triệu chứng khác như rét run, xuất huyết, co giật, nôn, khó thở, tím tái, li bì,, vật vã hay hôn mê gọi hỏi không biết… những trường hợn sốt kèm theo các triệu chứng trên rất nguy hiểm, có nguy cơ đe dọa đến tính mạng của bé nếu không được phát hiện và xử trí kịp thời.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Những biểu hiện của bé khi bị sốt:&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;ul style=\"box-sizing: border-box; outline: none; margin: 0px 1.5em 1.5em; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding-right: 0px; padding-left: 0px; vertical-align: baseline; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Thân nhiệt bé trở nên nóng hơn rất nhiều.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Bé quấy khóc, hay dễ nổi cáu.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Mệt mỏi.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Thở gấp.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Ngủ lơ mơ.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Khi bé có những biểu hiện như trên, các bậc cha mẹ cần nhanh chóng đo nhiệt độ cho bé. Khi cặp nhiệt độ thì nhiệt độ thân nhiệt cao hơn 37oC.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Thang đo mức độ khi bé bị sốt:&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		- Khi nhiệt độ từ 37,5oC -38,5oC là sốt nhẹ.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		- Khi nhiệt độ từ 38,5oC – 39oC là sốt vừa.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		- Khi nhiệt độ từ 39oC-40oC là sốt cao.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		- Khi nhiệt độ &amp;gt;40oC là sốt rất cao.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Mẹ nên làm gì khi bé bị sốt:&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;em style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;Khi bé bị sốt nhẹ:&lt;/em&gt;&lt;/p&gt;\r\n	&lt;ul style=\"box-sizing: border-box; outline: none; margin: 0px 1.5em 1.5em; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding-right: 0px; padding-left: 0px; vertical-align: baseline; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Thay quần áo thoáng mát cho bé hoặc nới lỏng. Bạn cũng cần lưu ý theo dõi thân nhiệt mỗi 4 giờ, đừng quên cho bé uống nhiều nước để tránh mất nước.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;em style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;Khi bé bị sốt vừa:&lt;/em&gt;&lt;/p&gt;\r\n	&lt;ul style=\"box-sizing: border-box; outline: none; margin: 0px 1.5em 1.5em; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding-right: 0px; padding-left: 0px; vertical-align: baseline; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Cởi bớt quần áo, cho bé mặc đồ mỏng và rộng để dễ thoát nhiệt.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Cho bé nằm ở nơi thoáng mát, giảm nhiệt trong phòng.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Cho bé uống nhiều nước.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Cho bé dùng thuốc hạ sốt có chứa hoạt chất Paracetamol. Hiện nay, có nhiều thuốc hạ sốt được đặc chế dạng siro để bé dễ uống và hấp thu. Các loại này cũng có xilanh bơm thuốc chuyên dụng tính theo cân nặng của bé. Với các chai dạng hỗn dịch thế này, cha mẹ cần bảo quản ở nhiệt độ phòng, tránh ánh nắng trực tiếp, và để ngoài tầm với của bé.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Lau mát cho bé bằng nước ấm.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;em style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;Khi bé bị sốt cao hay sốt rất cao – trên 39oC:&lt;/em&gt;&lt;/p&gt;\r\n	&lt;ul style=\"box-sizing: border-box; outline: none; margin: 0px 1.5em 1.5em; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding-right: 0px; padding-left: 0px; vertical-align: baseline; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Sử dụng các biện pháp hạ nhiệt như trên để hạ sốt tạm thời và nhanh chóng đưa bé đến cơ sở y tế.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Khi bị sốt, nước và muối bị mất thông qua việc toát mồ hôi của bé. Năng lượng và các Vitamin tan trong nước cũng bị hao hụt.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Bạn hãy bù lại cho bé bằng cách cho uống nhiều nước, các loại nước ép trái cây giàu chất dinh dưỡng, hay uống các loại thuốc bổ đa sinh tố, trong đó cần nhất là Vitamin C và Vitamin nhóm B.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Trong thời gian sốt, bé thường bỏ ăn. Bạn nên cố gắng cho bé bú và ăn nhiều lần trong ngày để tránh mất nước và sụt cân.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Chăm sóc khi bé bị sốt&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Khi bé bị sốt bố mẹ nên quan tâm tới không khí trong phòng của bé. Đối với bé nhỏ khi bị ốm, sốt bạn cần để cho bé nghỉ ngơi trong những căn phòng thoáng mát, nhiệt độ thấp vừa phải, để giảm sức nóng đối với thân nhiệt của bé.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Nên cho bé uống những loại nước mát như nước lọc, cam, chanh để nhanh chóng cải thiện tình hình. Hạn chế và tốt nhất không nên cho bé sử dụng những loại đồ uống có chứa caphêin hay gas khiến cho cơ thể càng dễ bị khử nước.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Cho bé uống si rô, đặc biệt là loại si rô có chứa thành phần paracetamol. Tuy nhiên, việc sử dụng loại si rô nào còn phụ thuộc vào độ tuổi của bé. Nhưng nên nhớ rằng, đối với những bé dưới 3 tháng tuổi được khuyên không nên dùng bất cứ loại si rô nào. Vì thế, bạn không nên tự ý cho bé sử dụng si rô mà chưa hỏi ý kiến các bác sĩ chuyên khoa.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Nên thường xuyên cặp nhiệt độ cho bé để kiểm soát mức thân nhiệt của bé. Hãy nhanh chóng đưa bé đến bệnh viện nếu tình trạng sốt của bé kéo dài, không có dấu hiệu thuyên giảm và nhiệt độ ngày một tăng lên.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Cần chắc chắn bạn hiểu rõ về cách sử dụng loại nhiệt độ bạn dùng. Nếu bạn sử dụng loại nhiệt độ đo ở trong miệng của bé, hãy đặt nhiệt kế phía dưới lưỡi và bỏ nhiệt độ ra trong vòng 2 phút. Không nên để bé cắn vào nhiệt độ.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Những loại thuốc như Acetaminophen và Ibuprofen là những loại thuốc giúp nhanh chóng giảm đau và hạ sốt. Tuy nhiên, ở những bé nhỏ, việc sử dụng loại thuốc Ibuprofen sẽ gây nên cho bé những ảnh hưởng tiêu cực đến sức khoẻ. Liều lượng thuốc cho bé dùng phụ thuộc phần lớn vào trọng lượng và độ tuổi của bé.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Nên cho bé ăn loãng. Đây cũng là một nguyên tắc quan trọng khi bé bị sốt. Sốt cao liên tục sẽ làm cơ thể bé mất nước. Vì vậy, hãy cho bé ăn thức ăn loãng, dễ tiêu như cháo, súp. Trong nhiều trường hợp có thể pha oresol theo tỷ lệ cho bé uống để phòng nguy cơ mất nước do sốt kéo dài.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Bố mẹ không nên làm những việc sau khi bé bị sốt&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: center;\"&gt;\r\n		&lt;a href=\"http://giadinh365.vn/wp-content/uploads/2015/03/Hinh-2.jpg\" style=\"box-sizing: border-box; outline: none; background-color: transparent; color: rgb(41, 101, 102); text-decoration-line: none; border: 0px none; font-family: inherit; font-size: 14px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;&lt;img alt=\"khi be bi sot me khong nen tu y cho be uong si ro ma chua hoi y kien bac si chuyen khoa\" class=\"alignnone size-full wp-image-10612 aligncenter\" height=\"414\" src=\"http://giadinh365.vn/wp-content/uploads/2015/03/Hinh-2.jpg\" style=\"box-sizing: border-box; outline: none; border: medium none; vertical-align: baseline; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px auto; padding: 0px; display: block;\" title=\"Khi bé bị sốt mẹ không nên tự ý cho bé uống si rô mà chưa hỏi ý kiến bác sĩ chuyên khoa\" width=\"450\" /&gt;&lt;/a&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: center;\"&gt;\r\n		&lt;em style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;Khi bé bị sốt mẹ không nên tự ý cho bé uống si rô mà chưa hỏi ý kiến bác sĩ chuyên khoa.&lt;/em&gt;&lt;/p&gt;\r\n	&lt;ul style=\"box-sizing: border-box; outline: none; margin: 0px 1.5em 1.5em; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding-right: 0px; padding-left: 0px; vertical-align: baseline; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Tự ý sử dụng si rô mà chưa hỏi ý kiến các bác sĩ chuyên khoa.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Đắp cho bé quá nhiều chăn, và nếu bé còn nhỏ thì không nên quấn nhiều tã, mặc cho bé nhiều quần áo trước khi tiến hành đo nhiệt độ.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Để bé một mình khi đo nhiệt độ.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Dùng thuốc hạ sốt ngay khi nhiệt độ của bé dưới 38oC&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Phối hợp nhiều loại thuốc hạ sốt cho bé&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Ủ ấm bé, sẽ càng làm tăng nhiệt độ&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Lau người cho bé bằng nước đá lạnh, cồn, dấm&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Vắt chanh, đổ thuốc vào miệng bé khi đang co giật, sẽ rất dễ gây ngạt thở&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Tự truyền dịch cho bé mà không có chỉ định của bác sỹ&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Khi nào cần đưa bé đến cơ sở y tế?&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		+ Tất cả bé em dưới 5 tuổi bị sốt sau khi đã xử trí trên 1 ngày vẫn còn sốt cần đưa bé đến cơ sở y tế để tìm nguyên nhân.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		+ Những trường hợp sốt cao dùng thuốc hạ nhiệt và các biện pháp không giảm.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		+ Bé sốt kèm theo các dấu hiệu như mệt mỏi, li bì, co giật, bỏ ăn không uống hoặc nôn, đau bụng, xuất huyết, rét run, khó thở…&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Cần đi khám cấp cứu ngay càng sớm càng tốt&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		Tóm lại, cần bình tĩnh theo dõi và xử trí. Cho uống thuốc hạ sốt, sau đó cần đưa bé đến cơ sở y tế để tìm nguyên nhân. Những trường hợp sốt kèm theo các dấu hiệu nguy hiểm như co giật, không ăn uống …cần đưa bé ngay đến cơ sở y tế.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 10px; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding: 0px; vertical-align: baseline; line-height: 20px; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;strong style=\"box-sizing: border-box; outline: none;\"&gt;Nên gọi cho bác sĩ trong trường hợp nếu:&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;ul style=\"box-sizing: border-box; outline: none; margin: 0px 1.5em 1.5em; border: 0px none; font-family: Arial, Verdana; font-size: 13px; padding-right: 0px; padding-left: 0px; vertical-align: baseline; color: rgb(0, 0, 0); text-align: justify;\"&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Bé thay đổi thái độ.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Bé có biểu hiện đau đầu dữ dội.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Da khô, môi khô kéo dài.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Đau họng kéo dài.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Đau tai.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Sốt kéo dài trong vài ngày.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Đau bụng.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Không có cảm giác đói.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Thở khò khè&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Làn da trở nên tím tái.&lt;/li&gt;\r\n		&lt;li style=\"box-sizing: border-box; outline: none; border: 0px none; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\"&gt;\r\n			Nếu bé bị sốt co giật, phải ngay lập tức dùng khăn mềm kẹp giữa hai hàm răng để bé khỏi cắn phải lưỡi.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, '', 0, '2017-08-15 10:08:19', 55, '2017-12-04 01:12:10', 55, 255, 1, 1, 0, 10, '', '', '', '', 'vi', 3),
(279, 'Hút mũi điện Hubdic', 'hut-mui-dien-hubdic', '', '', 0, '0000-00-00 00:00:00', '', '', '', 0, '9vWn6fPrZeM', 0, '2017-08-15 10:08:27', 55, '2017-12-01 11:12:10', 55, 255, 0, 0, 0, 11, '', '', '', '', 'vi', 3),
(281, 'Unimom Forte Electric Breast Pump UM880038', 'may-hut-sua-dien-doi-unimom-forte-um880038', '/public/files/editor-upload/images/product/premium-allegro.png(1).jpg', '/public/files/editor-upload/_thumbs/images/product/premium-allegro.png(1).jpg', 0, '0000-00-00 00:00:00', 'Máy hút sữa mẹ điện tử không có BPA Premium Allegro# đã được sử dụng rộng rãi tại Châu Âu, Mỹ cùng nhiều quốc gia khác trên thế giới, đáp ứn', '', '', 0, 'vf_HQW_rNm0', 0, '2017-08-15 10:08:35', 55, '2017-08-30 02:08:03', 55, 255, 1, 0, 0, 11, '', '', '', '', 'vi', 2),
(313, '', 'chinh-sach-bao-mat', '/public/files/editor-upload/images/bai-viet/img-info04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info04.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2018-05-15 01:05:57', 55, '2019-09-16 04:09:45', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 1),
(314, '', 'chinh-sach-va-quy-dinh-chung', '/public/files/editor-upload/images/bai-viet/img-info02.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info02.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2018-05-15 02:05:29', 55, '2019-09-16 04:09:11', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 1),
(315, '', 'thong-tin-bao-chi', '/public/files/editor-upload/images/bai-viet/img-info03.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info03.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2018-05-15 02:05:39', 55, '2019-09-16 04:09:10', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 1),
(316, '', 'chinh-sach-giao-nhan-hang', '/public/files/editor-upload/images/bai-viet/img-info01.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info01.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2018-05-15 02:05:52', 55, '2019-09-16 04:09:43', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 1),
(317, 'BONBEBE Premium Jumbo Baby Seat- Eat - Rest - Play - Fun', 'ghe-ngoi-tre-em-cao-cap-jumbo-bonbebe-an-choi-nghi-vui-dua', '/public/files/editor-upload/images/bai-viet/img-info04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info04.jpg', 0, '0000-00-00 00:00:00', '', 'BONBEBE', '', 0, 'hZ_0csg6H8o', 0, '2018-07-19 11:07:44', 55, '2019-09-16 04:09:25', 47, 255, 1, 1, 1, 2, '', '', '', '', 'vi', 0),
(318, 'BONBEBE Premium Jumbo Baby Seat', 'gioi-thieu-ghe-ngoi-tre-em-cao-cap-jumbo-bonbebe', '/public/files/editor-upload/images/bai-viet/img-info02.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info02.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, 'zns4oe_dirQ', 0, '2018-07-19 11:07:03', 55, '2019-09-16 04:09:17', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 0),
(319, '', 'ghe-ngoi-tre-em-jumbo-the-he-moi-smart-brain', '/public/files/editor-upload/images/bai-viet/img-info04.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info04.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, 'P9R5pJJIJa0', 0, '2018-07-21 10:07:53', 55, '2019-09-16 04:09:05', 47, 255, 1, 1, 1, 11, '', '', '', '', 'vi', 0),
(320, '', 'tim-hieu-ve-ghe-ngoi-an-the-he-moi-jumbo-smart-brain', '/public/files/editor-upload/images/bai-viet/img-info03.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info03.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, 'kYdZcOzV6sw', 0, '2018-07-21 10:07:29', 55, '2019-09-16 04:09:58', 47, 255, 1, 0, 0, 2, '', '', '', '', 'vi', 0),
(321, '', 'some-quick-example-text-to-build-on-1', '/public/files/editor-upload/images/bai-viet/img-info01.jpg', '/public/files/editor-upload/_thumbs/images/bai-viet/img-info01.jpg', 0, '0000-00-00 00:00:00', '', '', '', 0, 'qISBqBWe1n8', 0, '2018-08-25 07:08:11', 55, '2019-10-25 03:10:58', 55, 255, 1, 1, 1, 2, '', '', '', '', 'vi', 0),
(322, '', 'lich-mo-ban-va-tien-do-ngay-20-11-2019', '/public/files/editor-upload/images/bai-viet/banner_sukien.png', '/public/files/editor-upload/_thumbs/images/bai-viet/banner_sukien.png', 0, '0000-00-00 00:00:00', '', '', '', 0, '', 0, '2019-11-01 02:11:06', 55, '2019-11-12 09:11:17', 55, 1, 1, 0, 1, 10, '', '', '', '', 'vi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `block_left` tinyint(1) NOT NULL DEFAULT '0',
  `block_right` tinyint(1) NOT NULL DEFAULT '0',
  `block_body` tinyint(1) NOT NULL DEFAULT '0',
  `block_body2` tinyint(1) DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `name`, `alias`, `picture`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `content`, `block_left`, `block_right`, `block_body`, `block_body2`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `name_en`) VALUES
(2, 'Thông tin báo chí', 'thong-tin-bao-chi', '', 0, '2012-12-03 11:12:47', 1, '2019-09-16 11:09:31', 47, 1, 1, '', 1, 1, 0, 1, 'Tin tức - Sự kiên - Địa chỉ ăn chơi', '', '', 'vi', 'tiếng anh'),
(10, 'Lịch mở bán và tiến độ', 'lich-mo-ban-va-tien-do', '', 0, '2014-04-14 10:04:53', 1, '2019-09-16 11:09:51', 47, 3, 1, '', 1, 1, 1, 1, '', 'Chuyên mục món ngon - Hướng dẫn nấu các món ăn ngon, cách chế biến thức phẩm, mẹo vặt nấu ăn, kinh nghiệm nấu ăn cho chị em nội trợ, món ngon mỗi ngày', 'hướng dẫn nấu các món ăn ngon, cách chế biến thực phẩm, mẹo vặt nấu ăn, kính nghiệm nấu ăn, các nấu món ngon', 'vi', ''),
(11, 'Video', 'video', '', 0, '2014-05-05 10:05:22', 1, '2017-06-09 10:06:32', 47, 4, 1, '', 0, 0, 0, 1, 'Black list - Địa chỉ ăn chơi', 'Danh sách các địa điểm black list như: chặt chém, thái độ với khách hàng, quán mất vệ sinh an toàn thực phẩm, quán ăn tránh xa, nhà hàng chặt chém...', 'Black list quán ăn, black list địa điểm, black list nhà hàng,black list món ăn,quán ăn bẩn', 'vi', NULL),
(14, 'tiếng anh', 'tieng-anh', '/public/files/editor-upload/images/mach-me-tam-cho-be-thanh-cong.jpg', 0, '2017-07-24 10:07:42', 55, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, 0, '', '', '', 'en', NULL),
(15, 'Video', 'videos', '', 0, '2017-07-29 09:07:31', 55, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, 0, '', '', '', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backlink`
--

CREATE TABLE `backlink` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_blank',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `position` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `block` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `note`, `content`, `order`, `position`, `status`, `module`, `block`, `showtitle`, `params`, `lang_code`) VALUES
(1, 'Nội dung banner', '', '', 0, 'header', 1, 'default', 'html', 0, '', '*'),
(6, 'Nội dung đăng ký', '', '&lt;div&gt;\r\n	&lt;table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\"&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td&gt;\r\n					&lt;div&gt;\r\n						&lt;img alt=\"Luyen thi toeic, Luyện thi toeic\" src=\"http://effortlessenglish.com.vn/wp-content/themes/twentyten/files/logo.png\" /&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 760px; vertical-align: top; text-align: right;\"&gt;\r\n					&lt;h2 style=\"font-size:15px;color:#D02323;\"&gt;\r\n						&lt;span style=\"font-size:20px;\"&gt;LANGMASTER INTERNATIONAL&lt;/span&gt;&lt;/h2&gt;\r\n					&lt;div&gt;\r\n						&lt;span style=\"color:#d02323;\"&gt;\"Make the voice of Vietnam be widely heard throughout the world\"&lt;/span&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;hr /&gt;\r\n	&lt;div&gt;\r\n		&lt;div&gt;\r\n			&lt;b&gt;Cơ sở 1:&lt;/b&gt; Số 27 Doãn Kế Thiện, Cầu Giấy, Hà Nội&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;b&gt;Cơ sở 2:&lt;/b&gt; Tòa nhà Langmaster - 76 Phố Nhổn (Cách ĐH Công Nghiệp 200 m )&lt;br /&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;b&gt;Mọi thông tin chi tiết, xin liên hệ:&lt;/b&gt;&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;b&gt;Hotline : &lt;/b&gt; 04.668.488.47 || 04.668.124.50&lt;/div&gt;\r\n		&lt;div&gt;\r\n			Email: &lt;a href=\"mailto:info@langmaster.edu.vn\"&gt;info@langmaster.edu.vn&lt;/a&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 'register', 1, 'default', 'html', 0, '', '*'),
(2, 'Nội dung cuối website', '', '&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;em&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Đơn vị: 1.000 đồng&lt;/em&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:649px;\" width=\"649\"&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td rowspan=\"2\" style=\"width:46px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;STT&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td rowspan=\"2\" style=\"width: 124px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;TÊN GÓI&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td colspan=\"4\" style=\"width: 439px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;CHI TIẾT GÓI&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td rowspan=\"2\" style=\"width: 0px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;CHI PHÍ&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width: 52px; height: 37px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;Số lượng bài tổng hợp&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 47px; height: 37px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;Vị trí món ăn quảng cáo&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 133px; height: 37px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;Món ăn quảng cáo&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 225px; height: 37px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;Page quảng cáo&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width:46px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						1&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 124px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						Gói 1 (Căn Bản)&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 52px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						1 bài&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 47px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						No.1&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 133px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						Khách hàng được &amp;nbsp;lựa chọn duy nhất 1 món ăn để quảng cáo&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 225px;\"&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						1 bài tổng hợp xuất hiện trên 1 trang&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Địa Điểm Ăn Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						(/hanoidiadiemanngon)&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 0px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;600&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width:46px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						2&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 124px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						Gói 2 (Nâng Cao)&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 52px;\"&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						2 bài&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 47px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						No.1&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 133px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						Khách hàng được lựa tối đa 2 món ăn để quảng cáo&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 225px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						2 bài tổng hợp xuất hiện trên 2 trang&lt;/div&gt;\r\n					&lt;div&gt;\r\n						(mỗi bài xuất hiện một trang)&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Địa Điểm Ăn Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						(/hanoidiadiemanngon)&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Món Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 0px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;1200&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width:46px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						3&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 124px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						Gói 3 (Thương Gia)&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 52px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						3 bài&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 47px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						No.1&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 133px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						Khách hàng được lựa chọn tối đa 4 món để quảng cáo&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 225px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						3 bài tổng hợp xuất hiện trên 3 trang&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						(mỗi bài xuất hiện một trang)&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Địa Điểm Ăn Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						(/hanoidiadiemanngon)&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Món Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Địa Điểm Ăn Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						(/DiemAnNgonHaNoi)&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 0px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;1500&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width:46px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						4&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 124px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						Gói 4&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						(Tăng Tốc 3 tháng)&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 52px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						10 bài&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 47px;\"&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						No.1&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 133px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Địa Điểm Ăn Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						(/hanoidiadiemanngon)&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Món Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;Địa Điểm Ăn Ngon Hà Nội&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						(/DiemAnNgonHaNoi)&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 225px;\"&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						Không giới hạn số món ăn quảng cáo&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 0px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;&lt;u&gt;4500&lt;/u&gt;&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;3800&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;(-18%)&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 710px;\" width=\"667\"&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width: 112px; height: 79px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;DỊCH VỤ&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 265px; height: 79px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;WEBSITE&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 195px; height: 79px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;ĐIỀU KIỆN&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 41px; height: 79px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;THỜI GIAN&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 95px; height: 79px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;CHI PHÍ&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td rowspan=\"2\" style=\"width: 112px; height: 112px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&lt;strong&gt;Ghim bài&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td rowspan=\"2\" style=\"width: 265px; height: 112px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td rowspan=\"2\" style=\"width: 195px; height: 112px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						+ Bài tổng hợp sẽ được ghim trên chính Page quảng cáo&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						+ Hợp đồng ghi bài là hợp đồng riêng tách khỏi hợp đồng quảng cáo và được ký sau khi thực hiện xong bài quảng cáo cuối cùng&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 41px; height: 112px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;3 ngày&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 95px; height: 112px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;1200/page&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width: 41px;\"&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;7 ngày&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 95px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;2500/page + FREE 1 POST&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;(Sauk hi kết thúc thời gian ghim bài)&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width: 112px;\"&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&lt;strong&gt;Viết bài Review&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 265px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						vivuhanoi.com/&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						monansinhvien.com/&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						homnayangi.vn&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 195px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						Mỗi gói quảng cáo tương ứng với tối đa 3 bài viết trên 3 website&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						(1 bài viết/1wwebsite)&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 41px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 95px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;500/bài&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width: 112px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&lt;strong&gt;Quảng cáo&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&lt;strong&gt;Banner&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 265px;\"&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						toinayangi.vn/&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&lt;strong&gt;(50.000 visit/ngày)&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 195px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 41px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;7 ngày&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 95px;\"&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;1700&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width: 112px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&lt;strong&gt;Chụp ảnh&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 265px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 195px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						Dịch vụ chụp ảnh áp dụng đối với tất cả các gói quảng cáo nhưng chỉ duy nhất gói Thương Gia &amp;amp; Tăng Tốc 3 tháng khách hàng được miễn phí chụp ảnh (chụp tùy thích số lượng món)&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 41px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 95px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;100&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;(Gói 3 &amp;amp; 4 FREE)&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width: 112px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						&lt;strong&gt;Hỗ trợ tuyển dụng&lt;/strong&gt;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 265px;\"&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						facebook.com/vieclamthemchosinhvien.vn/&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						vieclamnhahang.com.vn/&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 195px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: justify;\"&gt;\r\n						Hỗ trợ tuyển dụng tất cả các vị trí trong nhà hàng từ phục vụ bàn, phụ bếp, bếp chính đến quản lý nhà hàng&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 41px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 95px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div style=\"text-align: center;\"&gt;\r\n						&lt;strong&gt;FREE&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;Note:&lt;/strong&gt;&amp;nbsp;Báo giá trên dành cho những khách hàng lần đầu sử dụng gói quảng cáo;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Đối với những khách hàng hợp tác trong những lần tiếp theo sẽ được nhận nhiều&amp;nbsp;&lt;strong&gt;ƯU ĐÃI HẤP DẪN:&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:687px;\" width=\"687\"&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width:319px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;LẦN HỢP TÁC&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:365px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;ƯU ĐÃI NHẬN ĐƯỢC&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width:319px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;2&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:365px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						GIẢM 5% TỔNG CHI PHÍ&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td style=\"width:319px;\"&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;3,…&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width:365px;\"&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						GIẢM 10% TỔNG CHI PHÍ&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n					&lt;div align=\"center\"&gt;\r\n						&lt;strong&gt;hoặc FREE 1 POST (CHỈ ÁP DỤNG VỚI GÓI 3&amp;amp;4)&lt;/strong&gt;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;&lt;u&gt;Cách thức thanh toán:&lt;/u&gt;&lt;/strong&gt;&amp;nbsp;Bằng chuyển khoản&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Chủ tài khoản:&amp;nbsp;&lt;strong&gt;&lt;em&gt;Công ty Cổ phần Truyền thông Địa Điểm Việt&lt;/em&gt;&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Số tài khoản:&amp;nbsp;&lt;strong&gt;&lt;em&gt;12210000993029 - BIDV Chi nhánh Hà Thành, Ô Chợ Dừa, Đống Đa, Hà Nội.&lt;/em&gt;&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;em&gt;Cảm ơn Quý khách đã sử dụng dịch vụ của Công ty chúng tôi!&lt;/em&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;&lt;em&gt;Chi tiết vui lòng liên hệ: 0964 383 356 hoặc 01656000148&lt;/em&gt;&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 'footer', 1, 'default', 'html', 0, '', '*'),
(3, 'Nội dung liên hệ', '', '', 0, 'contact', 1, 'default', 'html', 0, '', '*'),
(4, 'Có thể bạn quan tâm', '', '&lt;div class=\"fleft block_tag\" style=\"\"&gt;\r\n	&lt;div class=\"block_title clearfix\"&gt;\r\n		&lt;h3 class=\"title\"&gt;\r\n			&lt;a href=\"#\" title=\"Tag\"&gt;có thể bạn quan tâm&lt;/a&gt;&lt;/h3&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"block_articleHome block_articleHome_3  content_3\"&gt;\r\n		&lt;div class=\"block_content articles\"&gt;\r\n			 \r\n			&lt;div class=\"clr\"&gt;\r\n				&amp;nbsp;&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=\"block_bottom\"&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n', 0, 'product', 1, 'default', 'html', 0, '', '*'),
(5, 'Thỏa thuận sử dụng', '', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;-&lt;/strong&gt; Thành viên đăng ký tài khoản là người đã đăng ký tài khoản sử dụng theo các bước quy định chấp nhận sự đăng ký đó.&lt;br /&gt;\r\n		- Công ty chúng tôi có thể thay đổi thỏa thuận theo các chính sách của công ty. Khi có thay đổi, chúng tôi sẽ đăng tải thông báo, và sau khi đăng lên coi như thỏa thuận đó có hiệu lực. Sau khi thay đổi, nếu thành viên sử dụng dich vụ thì chúng tôi coi thành viên đã chấp nhận tất cả các thỏa thuận đó.&lt;br /&gt;\r\n		- Thành viên saubaoschungs ký phải có trách nhiệm tự quản lý tài khoản, mật khẩu và thông tin cá nhân của mình.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- Thông tin do các thành viên đăng ký sẽ thuộc quyền sở hữu của Công Ty, được quản lý và sử dụng theo các chính sách về bảo vệ thông tin cá nhân của công ty.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;-&lt;/strong&gt; Trong trường hợp công ty chúng tôi xác nhận được thành viên vi phạm những điều dưới đây, chúng tôi có thể ngừng, hoặc hủy bỏ tư cách sử dụng tài khoản của thành viên đó, và chúng tôi không chịu trách nhiệm về những tổn hại phát sinh do việc ngừng, hoặc hủy bỏ như trên gây ra. Trong trường hợp thành viên gây tổn hại đến lợi ích của công ty chúng tôi, hoặc người thứ ba do vi phạm những điều nêu dưới đây, thì thành viên vi phạm phải có trách nhiệm bồi thường những tổn hại đó.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Đăng ký thông tin không đúng sự thật khi đăng ký thànhviên.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Có các hành vi vi phạm pháp luật, quy định này.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Sử dụng tài khoản và mật khẩu vào mục đích bất chính, hoặc cho người thứ ba sử dụng.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Gây tổn hại đến công ty chúng tôi&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Những hành vi mà công ty chúng tôi cho rằng không phù hợp.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;-&lt;/strong&gt; Công ty chúng tôi sẽ gửi các bản tin thông báo vào địa chỉ email do thành viên đăng ký trong trường hợp cần thiết. Trong trường hợp khẩn cấp chúng tôi sẽ thông báo bằng các phương tiện khác.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;-&lt;/strong&gt; Các thành viên sẽ không được vi phạm các mục cấm dưới đây:&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Đăng thông tin vi phạm thuần phong mỹ tục của Việt Nam và các nước khác.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Hành vi phạm tội.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Xâm hại đến quyền sở hữu trí tuệ ( như bản quyền, thương hiệu, sáng chế, bí mật kinh doanh và những vấn đề khác liên quan) của Công Ty và người khác.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Gây tổn hại đến người khác&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Làm tổn hại đến việc kinh doanh của công ty chúng tôi. Làm mất uy tín của công ty chúng tôi.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Một thành viên đăng ký nhiều tài khoản để sử dụng.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; + Những hành vi khác bị công ty chúng tôi coi không hợp lý.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;-&lt;/strong&gt; Trong quá trình sử dụng nếu xảy ra tranh chấp giữa người sử dụng và công ty chúng tôi, hai bên sẽ tiến hành đàm phán hòa giải với tinh thần hữu nghị. Trong trường hợp không giải quyết được bằng hòa giải sẽ đưa ra pháp luật giải quyết.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 'registry', 1, 'default', 'html', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `code`, `name`, `order`, `status`, `country_id`) VALUES
(1, '', 'Hồ Chí Minh', 255, 1, 1),
(2, '', 'Hà Nội', 255, 1, 1),
(3, '', 'Đà Nẵng', 255, 1, 1),
(4, '', 'Bắc Ninh', 255, 1, 1),
(5, '', 'An Giang', 255, 1, 1),
(6, '', 'Bà Rịa Vũng Tàu', 255, 1, 1),
(7, '', 'Bạc Liêu', 255, 1, 1),
(8, '', 'Bắc Cạn', 255, 1, 1),
(9, '', 'Bắc Giang', 255, 1, 1),
(11, '', 'Bến Tre', 255, 1, 1),
(12, '', 'Bình Dương', 255, 1, 1),
(13, '', 'Bình Định', 255, 1, 1),
(14, '', 'Bình Phước', 255, 1, 1),
(15, '', 'Bình Thuận', 255, 1, 1),
(16, '', 'Cà Mau', 255, 1, 1),
(17, '', 'Cao Bằng', 255, 1, 1),
(18, '', 'Đắk Lắk', 255, 1, 1),
(19, '', 'Đắk Nông', 255, 1, 1),
(20, '', 'Đồng Nai', 255, 1, 1),
(21, '', 'Đồng Tháp', 255, 1, 1),
(22, '', 'Gia Lai', 255, 1, 1),
(23, '', 'Điện Biên', 255, 1, 1),
(24, '', 'Hà  Giang', 255, 1, 1),
(25, '', 'Lạng Sơn', 255, 1, 1),
(26, '', 'Hà Nam', 255, 1, 1),
(27, '', 'Hà Tĩnh', 255, 1, 1),
(28, '', 'Hải Dương', 255, 1, 1),
(29, '', 'Hải Phòng', 255, 1, 1),
(30, '', 'Hòa Bình', 255, 1, 1),
(31, '', 'Hưng Yên', 255, 1, 1),
(32, '', 'Khánh Hòa', 255, 1, 1),
(33, '', 'Kiên Giang', 255, 1, 1),
(34, '', 'Kon Tum', 255, 1, 1),
(35, '', 'Lai Châu', 255, 1, 1),
(36, '', 'Lào Cai', 255, 1, 1),
(37, '', 'Lâm Đồng', 255, 1, 1),
(38, '', 'Long An', 255, 1, 1),
(39, '', 'Nam Định', 255, 1, 1),
(40, '', 'Nghệ An', 255, 1, 1),
(41, '', 'Ninh Bình', 255, 1, 1),
(42, '', 'Ninh Thuận', 255, 1, 1),
(43, '', 'Phú Thọ', 255, 1, 1),
(44, '', 'Phú Yên', 255, 1, 1),
(45, '', 'Quảng Bình', 255, 1, 1),
(46, '', 'Quảng Nam', 255, 1, 1),
(47, '', 'Quảng Ngãi', 255, 1, 1),
(48, '', 'Quảng Ninh', 255, 1, 1),
(49, '', 'Quảng Trị', 255, 1, 1),
(50, '', 'Sóc Trăng', 255, 1, 1),
(51, '', 'Sơn La', 255, 1, 1),
(52, '', 'Tây Ninh', 255, 1, 1),
(53, '', 'Thái Bình', 255, 1, 1),
(54, '', 'Thái Nguyên', 255, 1, 1),
(55, '', 'Thanh Hóa', 255, 1, 1),
(56, '', 'Thừa Thiên Huế', 255, 1, 1),
(57, '', 'Tiền Giang', 255, 1, 1),
(58, '', 'Trà Vinh', 255, 1, 1),
(59, '', 'Tuyên Quang', 255, 1, 1),
(60, '', 'Vĩnh Long', 255, 1, 1),
(61, '', 'Vĩnh Phúc', 255, 1, 1),
(62, '', 'Yên Bái', 255, 1, 1),
(63, '', 'Hậu Giang', 255, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `lang_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `content`, `date`, `status`, `module`, `item_id`, `lang_code`) VALUES
(1, 'Lyva', 'lyvavn@gmail.com', 'Loại này dùng sướng thôi rồi! lại còn đang khuyến mại nữa, mua thôi....', '12/01/2013 09:52:42', 1, 'shopping', 73, 'vi'),
(2, 'quan', 'tiger0350@gmail.com', 'districts_id districts_id districts_id districts_id districts_id districts_id ', '22/03/2014 12:02:09', 1, 'nhadat', 8, 'vi'),
(3, 'Quaan leee', 'tiger0350@gmail.com', 'Quaan leeeQuaan leeeQuaan leee', '22/03/2014 03:39:17', 1, 'article', 19, 'vi'),
(4, 'asdfdfsdfsf', 'dsad@gmail.com', 'adasdasdsdfsdfsdfsdfsfsdfsdfsf', '23/10/2014 02:02:09', 0, 'article', 224, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `comment_reply`
--

CREATE TABLE `comment_reply` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment_reply`
--

INSERT INTO `comment_reply` (`id`, `name`, `email`, `content`, `date`, `user_id`, `comment_id`) VALUES
(1, 'admin', 'admin@gmail.com', 'Uh! Đúng đó bạn ah. Bạn đến cửa hàng của mình sẽ được tư vấn và thử nhiều mẫu khác nữa còn sướng hơn nữa.', '12/01/2013 12:09:05', 1, 1),
(2, 'admin', 'admin@gmail.com', 'demo demo dmo', '22/03/2014 03:39:52', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `address`, `tel`, `fax`, `phone`, `email`, `content`, `status`, `created`, `ip`, `lang_code`) VALUES
(19, 'Bach', '-', '-', '-', '0987801393', 'bachvx@outlook.com', NULL, 0, '2019-09-26 05:09:12', ' ', NULL),
(18, 'Bach', '-', '-', '-', '0987801393', 'bachvx@outlook.com', NULL, 0, '2019-09-26 05:09:38', ' ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `order`, `status`) VALUES
(1, 'vi_VN', 'Miền Bắc', 255, 1),
(2, '', 'Miền Trung', 255, 0),
(3, '', 'Miền Nam', 255, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `object` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) NOT NULL,
  `quantity` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `fullname`, `email`, `phone`, `address`, `name_product`, `object`, `id_number`, `quantity`) VALUES
(14, NULL, 'Lê Thanh Quang', 'ltquang2000@yahoo.com', '0913024401', 'p101, nhà 3, Tập Thể Phụ nữ TƯ, Pháo đài láng, Đống Đa, Hà Nội', 'Imperia Garden', 'Cenpartnership', '', 1),
(16, NULL, 'Nguyễn Thị Thanh Ngân', 'Nganntt@fpt.com.vn', '0933687009', '173/3a Phan Huy Ích Phường 15 Quận Tân Bình', 'Celadon city', 'Cenpartnership', '', 5),
(18, NULL, 'NGUYỄN BÁ VINH', 'bvinhtc@gmail.com', '0966019605', 'CANH NẬU- THẠCH THẤT- HÀ NỘI', 'HH3/1811B/ALASKA (FLC GARDEN CITY)', 'Cenpartnership', '', 1),
(19, NULL, 'Nguyễn Thị Hương Giang', 'hnggiangng@gmail.com', '0983919741', 'Lô 55 LK khu đất dịch vụ Đa Sỹ - kiến hưng - Hà Đông', 'Căn hộ tòa K Parkview Resident', 'Cenpartnership', '', 1),
(20, NULL, 'Lê Trung Kiên', 'kien.le.tr@gmail.com', '0904845646', 'Phòng 104 Vụ Châu Mỹ Bộ Ngoại giao Số 1 Tôn Thất Đàm, Ba Đình, Hà Nội', 'Imperia Garden ', 'Cenpartnership', '', 1),
(21, NULL, 'Đặng Việt Dũng', 'dungdv.mhland@gmail.com', '0966251666', '11C 389/17/21 Cầu Giấy, Hà Nội', '', 'Cenpartnership', '', 0),
(22, NULL, 'Trịnh Thị Quỳnh', 'trinhquynh89@gmail.com', '0906207889', 'Hà Đông, Hà Nội', 'Căn hộ ở kdt Park view', 'Cenpartnership', '', 1),
(23, NULL, 'Nguyễn Xuân Lưu', 'luunguyenxuan@gmail.com', '0915668766', 'Tầng 4 - Tòa nhà San Nam - Ngõ 78 - Duy Tân - Dịch Vọng Hậu - Cầu Giấy - Hà Nội', 'Nhà ở tại khu Chung cư CT1 Vân Canh', 'Cenpartnership', '', 1),
(24, NULL, 'Vu Anh', 'vuanh.sjc@gmail.com', '0986158561', '1049 Tôn Đức Thắng - Hồng Bàng - Hải Phòng', 'Can ho du an Parkview Residence', 'Cenpartnership', '', 1),
(42, NULL, 'Nguyễn Công Sơn', 'csonpgas@gmail.com', '0912262917', '234 Phạm Văn Đồng Hà Nội', 'Chung cư The Pride, Chung cư Thành phố giao lưu', 'Cenpartnership', '0', 2),
(47, NULL, 'phạm văn nhung', 'phamgialong0@gmail.com', '0902321266', 'toàn nhà xuân mai tower hà đông', 'chung cư xuân mai tower hà đông', 'Cenpartnership', '0', 1),
(48, NULL, 'Phạm Văn Nhung', 'Pvnhung@vinamilk.com.vn', '0977244533', 'CT2 -Tô Hiệu -Hà Đông - Hà Nội', 'CT2- Tô Hiệu - Hà Đông - Hà Nội', 'Cenpartnership', '0', 1),
(55, NULL, 'Phan văn mân', 'Traicaymiendong@gmail.com', '0995149479', '', '', 'Cenpartnership', '0', 0),
(56, NULL, 'Duong Lan', 'kimlan.dg@gmail.com', '0904348368', '', '', 'Cenpartnership', '0', 0),
(57, NULL, 'Mai Lan Anh', 'anhlm89@gmail.com', '0902173691', 'Hà Nội', 'Gemek', 'Cenpartnership', '0', 1),
(74, NULL, 'Nguyễn Quang Hòa', 'nqhoa82@gmail.com', '0912919212', '203 Nguyễn Huy Tưởng', 'ImperiaGarden, Goldseason', 'Cenpartnership', '0', 2),
(75, NULL, 'Nguyễn Quang Hòa', 'nqhoa82@gmail.com', '0912919212', '203 Nguyễn Huy Tưởng', 'ImperiaGarden, Goldseason', 'Cenpartnership', '0', 2),
(76, NULL, 'Nguyễn Quang Chuẩn', 'chuannguyen@vietnambiz.com', '0989890857', 'LK6 KĐT AN Hưng Hà Đông', '1101 The Crown - Mulberry Lane', 'Cenpartnership', '0', 1),
(77, NULL, 'nguyễn thị lan anh', 'lananhnguyenftu@gmail.com', '093222963', '133 thái thịnh', 'Gemek premium', 'Cenpartnership', '0', 1),
(78, NULL, 'Lê Tiến Hải', 'hailt.hnvn@gmail.com', '0903223449', '159 TT3, KĐT Mỹ đình Mễ trì, P. Mỹ đình 1, Q. Nam Từ Liêm, HN', 'CT2.917 Eco Green City', 'Cenpartnership', '0', 1),
(79, NULL, 'Lương Xương Giang', 'luonggian11092016@gmail.com', '0916966667', '259/218 Lãnh Binh Thăng p 12 q11', '', 'Cenpartnership', '0', 0),
(80, NULL, 'doan van au', 'dvhaiau@gmail.com', '0947663658', 'thanh hoa', 'gemek premium', 'Cenpartnership', '0', 1),
(81, NULL, 'Nguyễn Trung Thành ', 'thanhntxuanmai@gmail.com ', '0983133679', 'Tổ 2-Khu dân cư Bằng A - Hoàng Liệt Hoàng Mai HN ', 'Chung cư the Two Residence Gamuda', 'Cenpartnership', '0', 1),
(82, NULL, 'Hoàng Sinh', 'Sinhhoangvan.vn@gmail.com', '0912825572', 'KĐT Xa La - Hà Đông - Hà Nội', 'Chung cư', 'Cenpartnership', '0', 0),
(83, NULL, 'Nguyễn Mạnh Linh', 'Wow@litado.com', '0917009999', 'Tầng 6, 142 Đội Cấn', 'Chung cư Tân Hoàng Minh', 'Cenpartnership', '0', 1),
(84, NULL, 'Nguyễn thị Mến', 'Mennguyen.acc@gmail.com', '01634118349', 'Chùa láng Hà nội', 'Flc đại mỗ', 'Cenpartnership', '0', 1),
(85, NULL, 'Nguyễn thị Mến', 'Mennguyen.acc@gmail.com', '01634118349', 'Chùa láng Hà nội', 'Flc đại mỗ', 'Cenpartnership', '0', 1),
(86, NULL, 'Đặng Văn Luân', 'dangvanluan88@gmail.com', '0978384315', '', '', 'Cenpartnership', '0', 0),
(87, NULL, 'Trần Quang Hoàn', 'hoantq81@gmail.com', '943573683', '1703 Diamond Flower Tower - P. Nhân Chính - Q. Thanh Xuân - Hà Nội', 'Starcity, Diamond Flower', 'Cenpartnership', '0', 2),
(88, NULL, 'Bùi Thị Tâm', 'buitaman@gmail.com', '0982031315', 'Mỹ Đình II - Nam Từ Liêm - Hà Nội', 'mua nhà chung cư', 'Cenpartnership', '0', 1),
(89, NULL, 'Lê Trường Minh', 'Leminhtronggialand@gmail.com', '0965830000', 'Yên Lạc - Vĩnh Phúc', 'Căn hộ S10-14 chung cư The One - Gamuda Garden', 'Cenpartnership', '0', 1),
(90, NULL, 'Nguyễn Văn Nhuần', 'vannhuan@gmail.com', '0904838383', '7 ngách 102, Thái Thịnh 2, Thái Thịnh, Đống Đa, Hà Nội', '', 'Cenpartnership', '0', 1),
(91, NULL, 'Hồ Mỹ Lễ', 'mssle1007@gmail.com', '0914028686', '218 đườn Nguyễn trãi, Vinh, Nghệ An', '', 'Cenpartnership', '0', 0),
(92, NULL, 'Vũ Phương Anh', 'phuonganh171@gmail.com', '0914491188', '210 Nguyễn Ngọc Nại', 'S2.2811', 'Cenpartnership', '0', 1),
(93, NULL, 'VÕ ĐỨC TRUNG', 'takesshi.tgm@gmail.com', '0888353333', 'chung cư 86/1 phòng 404 Đường Phan Văn Hân.  Phường 17. Quận Bình Thạnh', '', 'Cenpartnership', '0', 0),
(94, NULL, 'VÕ ĐỨC TRUNG', 'Takesshi.tgm@gmail.com', '0888353333', 'chung cư 86/1 phòng 404. Đường Phan Văn Hân. Phường 17. Quận Bình Thạnh', '', 'Cenpartnership', '0', 0),
(95, NULL, 'truong van cong', 'congtavaha@gmail.com ', '0996850996', '380/67 pham van chieu p9 go vap', '', 'Cenpartnership', '0', 0),
(96, NULL, 'Nguyễn Phương Quỳnh Anh ', 'Alexmeo87@gmail.com', '0906442628', '13d Tháp Mười P2 Q6', '', 'Cenpartnership', '0', 0),
(97, NULL, 'Nguyễn Thị Lan', 'lannt.tnk@gmail.com', '0982525433', 'Nguyễn Thị Lan, thị trung, văn lâm, hưng yên, việt nam', '', 'Cenpartnership', '0', 0),
(98, NULL, 'Đào quang linh', 'linhdaoquang54@gmail.com', '0911746116', '905 hoàng sa phường 11 quận 3', '1', 'Cenpartnership', '0', 0),
(99, NULL, 'trần minh hải', 'tinhhoasacviet@gmail.com', '0935235652', 'Tổ 76 hòa quý ngũ hành sơn thành phố đà nẵng', '', 'Cenpartnership', '0', 0),
(100, NULL, 'Lâm Thanh Xuân', 'mr.lamthanhxuan@gmail.com', '0902229663', '256/13 Phạm Văn Hai, P.5, HCM', '', 'Cenpartnership', '0', 0),
(101, NULL, 'Phan thi Duc', 'christinahanh10@gmail.com', '0989314699', 'Ct7c 1094 khu do thi duong noi. Ha dong.hanoi', 'Golden palm', 'Cenpartnership', '0', 1),
(102, NULL, 'Phạm Trọng Tuân', 'phamtrongtuan@gmail.com', '0987535888', '', 'Gold season', 'Cenpartnership', '0', 1),
(103, NULL, 'Hoàng Văn Nguyên', 'hoangnguyen2406@gmail.com', '0915094555', '254 Minh Khai, Hoàng Mai, Hà Nội', 'Chung cư Gamuda The Two Residence', 'Cenpartnership', '0', 1),
(104, NULL, 'Nguyễn Khắc  Tâm', 'nkhactam1965@gmail.com', '0903203487', 'Số 38, No. 3, khu đô thị Dịch Vọng, Cầu Giấy - Hà Nội', 'Furama condotel', 'Cenpartnership', '0', 1),
(105, NULL, 'Nguyễn Trọng Huy', 'huynt@mbbank.com.vn', '0981401588', 'Ngách 52/25/17 đường Mỹ ĐÌnh, Phú Mỹ, Nam Từ Liêm, Hà Nội', 'Gold Markcity - GM/S4.2914/2016', 'Cenpartnership', '0', 1),
(106, NULL, 'Nguyễn Văn Chung', 'nvchung203@gmail.com', '01674554345', 'Tổ 5 - Phú Đô - Nam Từ Liêm - Hà Nội', 'FLC Garden City', 'Cenpartnership', '0', 1),
(107, NULL, 'Vũ Thị Hồng', 'vhong111@yahoo.com', '0932225966', 'số 57/87 Lê Thanh Nghị, Hà Nội', 'The Golden An Khánh', 'Cenpartnership', '0', 1),
(108, NULL, 'Tăng Văn Khánh', 'tangkhanh@gmail.com', '0906070099', '1405 HEI Tower, số 1 Ngụy Như Kon Tum', 'Imperia Garden', 'Cenpartnership', '0', 0),
(109, NULL, 'nguyễn thế song', 'songnt@wsl.vn', '0972960517', '116 trung kính , hà nội', 'eco green city', 'Cenpartnership', '0', 15),
(110, NULL, 'lương vĩnh khang', 'pjyeulinh61189@gmail.com ', '0938898742', '186/4 phan đăng lưu , phường 3 , quận phú nhuận', '', 'Cenpartnership', '0', 0),
(111, NULL, 'Phạm Ngọc Anh Phương', 'amberelixir.93@gmail.com', '0964216993', 'số 117, ngõ 765/115A, Tổ 8, Đường Nguyễn Văn Linh, P.Sài Đồng, Q.Long Biên, TP. Hà Nội', '', 'Cenpartnership', '0', 0),
(112, NULL, 'nguyễn thu hương', 'thuhuong1910@gmail.com', '0947401298', 'P1804- CT3 Khu đô thị Trung văn, Q. Nam Từ Liêm, HN', 'P2807-HH2- KĐT FLC Đại Mỗ', 'Cenpartnership', '0', 1),
(113, NULL, 'Nguyễn Thị Nga', 'nganguyen18691@gmail.com', '01662359817', 'Số 891/95 Nguyễn Kiệm, Phường 3, Quận Gò Vấp, HCM', '', 'Cenpartnership', '0', 0),
(114, NULL, 'Lê Hoàng Tân', 'Lehoangtan2212@gmail.com', '0932287979', '119 lê duẩn , cửa nam, hoàn kiếm, hn', 'Goldseason', 'Cenpartnership', '0', 1),
(115, NULL, 'Nguyễn Đình Phong', 'nguyendindphong94@gmail.com', '0974366974', '198 Nguyễn Tuân', 'FLC Garden City HH3 1703', 'Cenpartnership', '0', 1),
(116, NULL, 'Nguyen Quoc Di', 'quoctoan.nguyen582@gmail.com', '0962268565', 'So 98 nam thanh, Quang Trung, tp Hung Yen, Hung Yen', 'Can ho 1004 tao hh3 flc garden city', 'Cenpartnership', '0', 1),
(117, NULL, 'Nguyễn Thị Thuỳ Ninh', 'Thuyninhhn84@gmail.com', '0949999189', 'P1018-CT 7B-KĐT Văn Quán-Q.Hà Đông-Hà Nội', '911A-Hh3-Chung cư Garden City-Đại Mỗ', 'Cenpartnership', '0', 1),
(118, NULL, 'PHẠM PHÚ CƯỜNG ', 'phamcuongvnmart@gmail.com', '0917222343', '2/73/17 Đường 120_Kp2_Tân Phú_Q9_HCM', '', 'Cenpartnership', '0', 0),
(119, NULL, 'tran văn nhu ', 'quangluc7441@gmail.com ', '0903548900', '168/10/4 đường số 8 p16 quận gò vấp ', '', 'Cenpartnership', '0', 0),
(120, NULL, 'Ngo GIa Trung ', 'trungng@PEAPROS.com', '0906048862', '', 'Imperia Garden', 'Cenpartnership', '0', 1),
(121, NULL, 'Đỗ thị kim thanh', 'Thanhbdokim1962@gmail.com', '0989098754', '9/87 lê thanh nghị - hai bà trưng - hà nội', 'Furama condotel', 'Cenpartnership', '0', 5),
(122, NULL, 'Nguyễn Công Bình', 'binhnc.kbl@gmail.com', '0902118456', 'Số 16 hẻm 94/89/5 phố Thượng Thanh, Long Biên, Hà Nội', '', 'Cenpartnership', '0', 0),
(123, NULL, 'hồ nguyễn quốc hưng', 'quochung392012@gmail.com', '01632137214', '266/5lê dình cẩn tan tao binh tan', '', 'Cenpartnership', '0', 0),
(124, NULL, 'Nguyễn Khải Hoàn', 'hoanng2001@gmail.com', '0914557474', '5/2 Huu Nghi, Sao Do, Chi Linh, Hai Duong', '', 'Cenpartnership', '0', 0),
(125, NULL, 'ngô xuân mai', 'iamxn83@gmail.com', '0918436689', 'Hoàng mai - HN', '', 'Cenpartnership', '0', 0),
(126, NULL, 'Lê Hưng Thịnh', 'Thinhlekv@gmail.com', '01299571986', 'Thị trấn Lam Sơn Thọ Xuân Thanh Hoá', 'Nhà ở thương mại', 'Cenpartnership', '0', 1),
(127, NULL, 'nguyễn nam dương', 'namduong279@yahoo.com', '0919896556', '14 ngõ 29 thụy khuê tây hồ hà nội', '', 'Cenpartnership', '0', 0),
(128, NULL, 'Hoàng Vũ Trung', 'trunghv@ngcvietnam.com', '0912444036', 'P410A, 17T1 CT2 KĐT Trung Văn Vinaconex3', 'Căn hộ P410A, 17T1 CT2 KĐT Trung Văn Vinaconex3', 'Cenpartnership', '0', 1),
(129, NULL, 'fasdfsdaf', 'fsdfsdf@gdsgdf.com', '09999999999', 'fasfsadf', 'fgsdfasdfsdf', 'Cenpartnership', '0', 100),
(130, NULL, 'Trần Thanh Vũ', 'thanhvu08x2@gmail.com', '0967721685', 'Nga Bạch, Nga Sơn, Thanh Hóa', 'HH3-916 ', 'Cenpartnership', '0', 1),
(131, NULL, 'Phạm Thị Lựu', 'phamluutvns@gmail.com', '0978351198', 'Trung tâm tư vấn nước sạch- ngõ 3- cầu Bươu/đường phan trọng Tuệ/Thanh Tì/Hà Nội', 'căn hộ H0707 tòa Parkview Dương Nội', 'Cenpartnership', '0', 1),
(132, NULL, 'Đỗ Hữu Thiện', 'dohuuthien.dl@gmail.com', '01203899997', 'B183a- kp Bình Hòa - P. Bình Nhâm - Thuận An - Bình Dương', '', 'Cenpartnership', '0', 0),
(133, NULL, 'LE VAN VIET', 'vietmkt@hotmail.com', '0912003433', 'Phòng 712, Nhà P1, Việt Hưng, Long Biên, Hà Nội', 'The One Residence', 'Cenpartnership', '0', 1),
(134, NULL, 'Nguyen nhut thao', 'Nhutthao5@gmail.com', '0917693600', 'Go dau thanh pho tay ninh', '', 'Cenpartnership', '0', 0),
(135, NULL, 'PHAN THI HONG PHUONG', 'phanthihongphuong07@gmail.com', '0915227640', 'F103/nha I5 ngõ 36 luong đinh cua', 'Căn hô chung cư', 'Cenpartnership', '0', 1),
(136, NULL, 'Nguyễn Thị Kim Phụng', 'kinhdoanhonline3103@gmail.con', '01207021699', '135/6a, P tân chánh hiệp, Q 12', '', 'Cenpartnership', '0', 0),
(137, NULL, 'Lê Anh Tuấn', 'no_candt_no_honey@yahoo.com', '01222129440', '108/36H Phan Xích Long', '', 'Cenpartnership', '0', 3),
(138, NULL, 'vu phi truong', 'vptruong@gmail.com', '0988826837', 'Ha noi', '', 'Cenpartnership', '0', 0),
(139, NULL, 'Đỗ Minh Hiếu', 'hieu_ìnormatics@yahoo.com', '0989070711', '10/B1 Khu dân cư An Phú, P.An Phú, Thuận An, Bình Dương', '', 'Cenpartnership', '0', 0),
(140, NULL, 'Phạm Văn Thượng', 'vanthuong189@gmail.com', '0963115226', 'Xóm 20, thọ nghiệp, xuân trường, nam định', '1603T2 Dự án The golden An Khánh', 'Cenpartnership', '0', 1),
(141, NULL, 'Phạm văn Thượng', 'vanthuong189@gmail.com', '0963115226', 'Xóm 20, Thọ Nghiệp, Xuân Trường, nam Định', '1603T2 Dự án The Golden An Khánh', 'Cenpartnership', '0', 1),
(142, NULL, 'Dương toàn thắng', 'thangnhu27092014@gmail.com', '01207190179', '183b/45 tôn thất thuyết p4 q4', '', 'Cenpartnership', '0', 0),
(143, NULL, 'Lê Thị Duyên ', 'duyenlk.media@gmail.com', '0936899940', '08 An Sơn, Đại La, Hà Nội ', '', 'Cenpartnership', '0', 0),
(144, NULL, 'Hà thu hương', 'hathuhuong260390@yahoo.com', '01674514990', 'Khu 3thi tran thanh ba huyen thanh ba tinh phu tho', '', 'Cenpartnership', '0', 0),
(145, NULL, 'Nguyễn duy khánh', 'Nguyenduykhanh968@gmail.com', '0981353336', 'Số 1 ngõ 218 Nguyễn trai. Thanh xuân trung', '0', 'Cenpartnership', '0', 0),
(146, NULL, 'Nguyễn võ anh văn', 'lionnguyenvan91@gmail.com', '01257640157', '61/11 miếu bình đông p. Bình hưng hòa A q. Bình tân', '', 'Cenpartnership', '0', 0),
(147, NULL, 'Thu Ha Nguyen', 'Hathi189@gmail.com ', '0916090989', 'Nhà 23 ngõ 169 Tây sơn Quận Đống Đa Hà nội ', '', 'Cenpartnership', '0', 0),
(148, NULL, 'Nguyễn Văn Huy', 'huyluan9194@gmail.com', '01667679881', 'Vĩnh Tường - Vĩnh Phúc', '', 'Cenpartnership', '0', 0),
(149, NULL, 'Tran thanh liem', 'kimkansut1@gmail.com', '0909472109', '27/40/2 huynh tinh cua f8 q3', '', 'Cenpartnership', '0', 0),
(150, NULL, 'Bùi Thiên Hà', 'thienha@media-one.vn', '0913533688', '40A Hàng Bài, Hoàn Kiếm, Hà Nội. Phòng 209 tòa nhà In Biên Phòng', '', 'Cenpartnership', '0', 0),
(151, NULL, 'Bùi thị Kim Ngọt', 'Buithikimngot@gmail.com', '0987400735', 'Hà Nội', 'Gemek lê trọng tấn', 'Cenpartnership', '0', 1),
(152, NULL, 'Ngô thanh hà', 'thanhha.black@gmail.com', '01678756035', 'Thọ nguyên thọ xuân thanh hóa', '', 'Cenpartnership', '0', 0),
(153, NULL, 'Tran anh khoa', 'Giathinh.tran.dng@gmail.com', '0935798697', 'K81\\a7 le van hien', '', 'Cenpartnership', '0', 0),
(154, NULL, 'Lê Quang Thông ', 'Thongfrp@gmail.com', '0969888768', 'Tân Hiệp, Lòng Thành,  đồng nai ', '', 'Cenpartnership', '0', 0),
(155, NULL, 'le thi my hanh', 'lethimyhanh04@gmail.com', '01866294760', '221lô F chung cu ngo gia tu p3quan 10', 'nha', 'Cenpartnership', '0', 1),
(156, NULL, 'Tong hoang hung', 'Hoanghungtong@gmail.com', '0938394665', 'E9/247/1 ap 5 to 9 xa da phuoc huyen bjnh chanh tp.hcm', '', 'Cenpartnership', '0', 0),
(157, NULL, 'Le Huy Linh Van', 'thienan060320014@gmail.com', '01217823283', '22e Bui Huu Nghia f5-q5 - tp Ho Chi Minh', '', 'Cenpartnership', '0', 0),
(158, NULL, 'Phạm Ngọc Nam', 'Xhdhanoi789@gmail.com ', '0888830166', 'HN', 'New Life Hạ Long', 'Cenpartnership', '0', 3),
(159, NULL, 'Phamhonggiang', 'Phamhonggiang1978@gmail.com', '0984217379', '74trancung bactuliem', 'Viettheo', 'Cenpartnership', '0', 10),
(160, NULL, 'NGUYỄN THỊ THU HƯƠNG', 'huongyb412@yahoo.com', '0913014466', 'Phòng 412 B11 Kim Liên, Đống Đa, Hà Nội', '', 'Cenpartnership', '0', 0),
(161, NULL, 'Tuan', 'kent.dinh87@gmail.com', '0989469666', 'Ngo 621 Vu Tong Phan, so nha 95B , Thanh Xuan, Ha Noi', '', 'Cenpartnership', '0', 0),
(162, NULL, 'Quach Hoang Nam', 'quachnam08@gmail.com', '0973442627', '38 ngo 219 de to hoang HBT Ha Noi', '0', 'Cenpartnership', '0', 0),
(163, NULL, 'Phan huy đức', 'Nguon.kinhte@gmail.com', '0946650234', 'Tổ1 ,p. Hòa Thọ Đông, q. Cẩm lệ, tp. Đà Nằng', 'Nhà- Đất', 'Cenpartnership', '0', 1),
(164, NULL, 'Ngô Văn Đông', 'ngodong260885@gmail.com', '0915915858', ' Yên Tiến, Ý Yên, Nam Định', '', 'Cenpartnership', '0', 0),
(165, NULL, 'phan van ba', 'hoangvan0652@yahoo.com', '0903993714', '268.bach dang.p24.binh thanh.TP.HCM', '', 'Cenpartnership', '0', 0),
(166, NULL, 'Le Thi Kim Loan ', 'nhivy2001@yahoo.com', '0903839899', '345/36 Tran Hung Đào Phuong Cau Kho Quan 1 ', '', 'Cenpartnership', '0', 0),
(167, NULL, 'hoàng thùy linh', 'linhlinhhoang89@gmail.com', '01688571321', 'đức giang long biên hà nội', '0', 'Cenpartnership', '0', 0),
(168, NULL, 'nguyễn mạnh thắng', 'namnam111189@gmail.com', '0968593893', 'đức giang long biên hà nội', '0', 'Cenpartnership', '0', 0),
(169, NULL, 'TRẦN CÔNG TUẤN', 'tuan.tran1284@gmail.com', '0933181284', 'P1008, TÒA B, CHUNG CƯ SÔNG NHUỆ -KIẾN HƯNG- HÀ ĐÔNG', 'CC SÔNG NHUỆ- SAIL TOWER', 'Cenpartnership', '0', 1),
(170, NULL, 'Nguyenvanhien', 'Hiennguyen06031979@gail.com', '0923181808', '7a146ap7pham van hai binh chanh', 'Dtdd', 'Cenpartnership', '0', 0),
(171, NULL, 'Truong thanh phong', 'Phong0502@gmail.com', '0919556672', 'Dong thap', 'Visa', 'Cenpartnership', '0', 1),
(172, NULL, 'Do Nhat Tu', 'huyhoang_251288@yahoo.com', '0906242438', '103 hoang thuc tram, tp da nang', '', 'Cenpartnership', '0', 0),
(173, NULL, 'Phạm văn hà', 'Ginota0306@gmail.com', '0905516368', 'Đại lộc - Quảng nam', '', 'Cenpartnership', '0', 0),
(174, NULL, 'Phạm Văn Trọng', 'Phamvantrong1205@gmail.com', '0935434163', 'K63/28 nguyễn văn linh', '', 'Cenpartnership', '0', 0),
(175, NULL, 'Nguyễn Văn Thế', 'vanthedhqn.0505@gmail.com', '01699719179', 'thăng bình - quảng nam', '', 'Cenpartnership', '0', 0),
(176, NULL, 'Nguyễn Đức Bảo', 'nguyenbao79@ymail.com', '0914726069', '249/61 hà huy tập, thanh khê, Đà Nẵng', '', 'Cenpartnership', '0', 0),
(177, NULL, 'Tạ huỳnh long huy', 'tahuynhlonghuy@gmail.com', '0939757081', '45/4/23 huỳnh tịnh của p19 q.bình thạnh', '', 'Cenpartnership', '0', 0),
(178, NULL, 'nguyễn tuấn anh', 'luxuryphonevip@icloud.com', '0964648898', 'số 73 đường trần đăng ninh', 'khong co', 'Cenpartnership', '0', 0),
(179, NULL, 'phan văn tân ', 'phantan6997@gmail.com', '0969551491', 'thôn rùa xã vân hoà huyện ba vì thành phố hà nội ', '', 'Cenpartnership', '0', 0),
(180, NULL, 'phan văn tân ', 'phantan6997@gmail.com', '0969551491', 'thôn rùa xã vân hoà huyện ba vì thành phố hà nội ', 'cen1', 'Cenpartnership', '0', 1),
(181, NULL, 'phan văn tân ', 'phantan6997@gmail.com', '0969551491', 'thôn rùa xã vân hoà huyện ba vì thành phố hà nội ', 'cen1', 'Cenpartnership', '0', 1),
(182, NULL, 'Nguyen van khoai', 'Huatrongvy@mail.com', '01237278485', '47c luong the vinh ptan thoi hoa qtan phu', '', 'Cenpartnership', '0', 0),
(183, NULL, 'Pham thi kim phung ', 'Phamkimphung0908@gmail.com', '01237278485', '47c luong the vinh ptan thoi hoa qtan phu', 'River city', 'Cenpartnership', '0', 0),
(184, NULL, 'nguyen van khanh', 'kn6131226@gmail.com', '01664927544', 'xa cau loc .huyen hau loc .tinh thanh hoa', 'quang cao', 'Cenpartnership', '0', 1),
(185, NULL, 'Nguyễn Mạnh Tuấn', 'manhtuan2806@gmail.com ', '0986680725', 'Đội 6, Thôn Phù Trì, Xã Kim Hoa, Huyện Mê Linh, Tp. Hà Nội', '', 'Cenpartnership', '0', 0),
(186, NULL, 'trinh thi thu ha', 'trinhha983800@gmail.com', '0964158088', 'hai phong da nang', '', 'Cenpartnership', '0', 0),
(187, NULL, 'Đoan Ngọc Hùng', 'doanhung0302@gmail.com', '01267324072', '732 Nguyễn Trãi. P11. Q5 TPHCM', '0', 'Cenpartnership', '0', 0),
(188, NULL, 'Nguyễn Thị Mỹ Linh', 'nguyenthimylinh8054@gmail.com', '01652066794', '111/11A,Đường 22,P.Phước Long B,Quận 9', 'O', 'Cenpartnership', '0', 0),
(189, NULL, 'Phạm Minh Tuấn', 'phamminhtuandng@gmail.com ', '0905018201', 'K36/24 Lê Duẩn', 'Sentosa Riverside', 'Cenpartnership', '0', 2),
(190, NULL, 'Trần bành hội bánh ', 'Banh_hoibanh@yahoo.com', '0966884140', '95/91/13 khu phố 7 phường an lạc A Quận bình tân ', '', 'Cenpartnership', '0', 0),
(191, NULL, 'Lai Thy An', 'laithyan@gmail.com', '0917013756', '122A Vũ Tùng, phường 2, quận Bình Thạnh', 'Chưa', 'Cenpartnership', '0', 0),
(192, NULL, 'Trần Chánh Tín', 'chanhtin127@gmail.com', '0905481748', 'K35 42 To Hien Thanh, Phuoc My, Son Tra', '', 'Cenpartnership', '0', 1),
(193, NULL, 'Nguyen tra hoa nu', 'Cobecodon948@gmail.com', ' 0975790909', 'Thu duc', '', 'Cenpartnership', '0', 0),
(194, NULL, 'phạm văn nam', 'Hungvuong2172013@gmail.com', '0974597116', 'số 2. đào trinh nhất.p.linh tây.q.thủ đức.TPHCM', 'cen partnership', 'Cenpartnership', '0', 0),
(195, NULL, 'Nguyễn hữu hà ', 'Rongmaulanh79@gmail.com', '0933333593', 'Ngọc chi vĩnh ngọc đông anh hà nội ', '', 'Cenpartnership', '0', 0),
(196, NULL, 'mai xuan truong ', 'maixuantruong852@gmail.com', '0947631230', 'xom 16 xuan kien xuan truong nam dinh', '', 'Cenpartnership', '0', 0),
(197, NULL, 'phan ngoc thang ', 'phanngocthang88@gmail.com ', '0911077068', 'cam xuyên . ha tinh', '', 'Cenpartnership', '0', 0),
(198, NULL, 'Nguyễn Thanh Toàn ', 'nguyenthanhtoan256@gmail.com ', '01882516226', '23/1 đường 46,P5,Q4', '', 'Cenpartnership', '0', 0),
(199, NULL, 'Gip phi phung', 'Phoenixdiep2505@gmail.com', '0937062056', '313/12 ', '', 'Cenpartnership', '0', 0),
(200, NULL, 'Lê Kiều Oanh', 'oanh1207@yahoo.com', '0903248745', '17/317 Bùi Xương Trạch', 'Imperia', 'Cenpartnership', '0', 1),
(201, NULL, 'trinh minh tu', 'trinhminhtu2313@yahoo.com', '0933312661', '200 u cay', '', 'Cenpartnership', '0', 0),
(202, NULL, 'trinh minh tu', 'trinhminhtu2313@yahoo.com', '0933312661', '200 u cay', '', 'Cenpartnership', '0', 0),
(203, NULL, 'nguyễn minh chiến', 'nguyenpring@gmail.com', '0938949165', '496/20 dương quảng hàm . phường 5 . gò vấp', '', 'Cenpartnership', '0', 0),
(204, NULL, 'To tan tho', 'Tanthoto@gmail.com', '0985514241', '162 bau cat  1 p12 tan binh hcm', '', 'Cenpartnership', '0', 0),
(205, NULL, 'Nguyen thi thuy an', 'Anna77bear@yahoo.com', '0903840481', '41 duong so 41 kdc Tan Quy Dong P tan Phong Q7 tpHCM', '', 'Cenpartnership', '0', 0),
(206, NULL, 'huỳnh thị hường', 'huonghuynh9898@gmail.com', '01278010188', '14 trung nghĩa 6 hòa minh liên chiểu đà nẵng', '', 'Cenpartnership', '0', 0),
(207, NULL, 'Vu quoc Hung', 'vuhungvu54@gmail.com', '0922345203', '35 khu 6 ap 7 xa Gia Canh, Dinh Quan, Dong Nai', 'Na', 'Cenpartnership', '0', 0),
(208, NULL, 'Nhuyễn Minh Phông', 'minhphong2304@gmail.com ', '0935688018', 'TpHcm', '', 'Cenpartnership', '0', 0),
(209, NULL, 'Nguyen thanh phong', 'Martinophong1413@yahoo.com.vn', '0913342308', '154 banh van tran f7 quan tan binh', '', 'Cenpartnership', '0', 0),
(210, NULL, 'nguyễn thanh chương', 'nguyenthanhchuong79@gmail.com', '0938033718', 'di an binh duong', '', 'Cenpartnership', '0', 1),
(211, NULL, 'Trần minh thoại', 'Tranminhthoai467@yahoo.com', '01213683326', 'Vạn khê,ninh lộc,tx.ninh hòa,khánh hòa', '', 'Cenpartnership', '0', 0),
(212, NULL, 'Nguyễn Quốc Lập', 'thynguyen400@gmail.com', '0947728662', 'Cà Mau', '', 'Cenpartnership', '0', 0),
(213, NULL, 'Phạm Quang Toàn', 'quangtoan84@gmail.com', '0911375068', '649 Lý Thường Kiệt - Tp Đồng Hới - Quảng Bình', '', 'Cenpartnership', '0', 0),
(214, NULL, 'TRẦN MINH THOẠI', 'Ro8368@gmail.com', '01213683326', 'Vạn khê ,Ninh Lộc ,Tx Ninh Hòa ,Khánh Hòa', '', 'Cenpartnership', '0', 0),
(215, NULL, 'TRẦN MINH THOẠI', 'Ro8368@gmail.com', '01213683326', 'Vạn khê ,Ninh Lộc ,Tx Ninh Hòa ,Khánh Hòa', '', 'Cenpartnership', '0', 0),
(216, NULL, 'Nguyễn đình chiến', 'sq1541983@gmail.com', '0936658316', 'Số 10a,phạm văn đồng,xuân đỉnh,bắc từ liêm,hà nội', '', 'Cenpartnership', '0', 0),
(217, NULL, 'Lý Quý Hùng', 'hungnd.typhu@gmail.com', '0984121185', 'Hà đông', '', 'Cenpartnership', '0', 0),
(218, NULL, 'Bu thi hong', 'Vuhongkts@gmail.com', '0989376789', '20 trang tien', '', 'Cenpartnership', '0', 0),
(219, NULL, 'Nguyễn Văn Tuyển', 'gautruc929@gmail.com', '0972893298', 'P.2212 CT3 Khu đô thị The Pride, P.La Khê, Hà Đông', 'CT3 HP Landmark', 'Cenpartnership', '0', 1),
(220, NULL, 'Nguyễn Cúc', 'ntkcuc93@gmail.com', '0982566871', 'Cầu Giấy, Hà Nội', '', 'Cenpartnership', '0', 0),
(221, NULL, 'Phan Hồng Minh', 'minhphan68@gmail.com', '0904831618', '91 Nguyễn Khuyến, Đống Đa, Hà Nội', '', 'Cenpartnership', '0', 0),
(222, NULL, 'phạm bá hoàng vũ', 'hoangvu6000@gmail.com', '0907673673', '48/11 đường 13 khu phố 5 phườg tam bình quận thủ đức hồ chí minh', 'bất động sản', 'Cenpartnership', '0', 1),
(223, NULL, 'Hồ thị xuân thái ', 'Xuanthaihothi@gmail.com', '01269998004', '439/53A, đường TTH21, phường Tân thới hiệp , quận 12', '', 'Cenpartnership', '0', 0),
(224, NULL, 'Lê Huỳnh Khắc Vũ', 'Khacvu259@gmail.com', '01225450648', 'Số 2, KP 5, thị trấn Củ Chi,huyện Củ Chi,TpHCM', '', 'Cenpartnership', '0', 0),
(225, NULL, 'Lê thị kim anh', 'Lethikimanhsocson@gmail.com', '0981460876', 'Thôn vụ bản xã minh trí sóc sơn hà nội', '', 'Cenpartnership', '0', 0),
(226, NULL, 'nguyen the huy', 'hellhuy17@gmail.com', '0937433985', '164 pham văn bạch f15 TB', '', 'Cenpartnership', '0', 0),
(227, NULL, 'Lưu Khánh Trương', 'Khanhtruong79@yahoo.com', '0932010979', '116 võ thị sáu, phuong tan dinh quan 1', '', 'Cenpartnership', '0', 0),
(228, NULL, 'Nguyễn Gia Đức ', 'dgnguyen@gmail.com', '0988547555', 'F1501 Him Lam Riverside Q7 TPHCM', '', 'Cenpartnership', '0', 0),
(229, NULL, 'phạm văn đông ', 'phamphamvandong123@gmail.com ', '0965173237', 'xã quảng châu huyện quang trạch tỉnh Quảng Bình ', 'con group', 'Cenpartnership', '0', 1),
(230, NULL, 'phạm văn đông ', 'phamphamvandong123@gmail.com ', '0965173237', 'xã quảng châu huyện Quảng trạch tỉnh Quảng Bình ', '1', 'Cenpartnership', '0', 0),
(231, NULL, 'Nguyễn Thanh Toàn', 'ronintoan@gmail.com', '0914019165', '3 đường số 11, KDC Nam Long, Tân Thuận đông, Quận 7, HCM', '0', 'Cenpartnership', '0', 0),
(232, NULL, 'Đặng Phương Anh', 'anhdp79@gmail.com', '0916986968', 'Phòng 2906, tòa nhà 34T, Hoàng Đạo Thúy, Cầu Giấy, Hà Nội', '', 'Cenpartnership', '0', 0),
(233, NULL, 'Nguyễn văn lợi', 'loiloivan@gmail.com', '0976583787', 'Diên khánh khánh Hòa', '', 'Cenpartnership', '0', 0),
(234, NULL, 'Nguyễn văn lợi', 'loiloivan@gmail.com', '0976583787', 'Diên khánh khánh Hòa', '', 'Cenpartnership', '0', 0),
(235, NULL, 'Tran Thi Thu Bic', 'Tranthubic.tvi@gmail.com', '0905735122', '415 Tran Xuan Soan, Q7,  TP Ho Chi Minh', '', 'Cenpartnership', '0', 0),
(236, NULL, 'Nguyễn Thanh Sơn', 'nguyenson5580@web.de', '0912622209', 'số 45, nghách 108, phố Đông Thiên, Vĩnh Hưng, Hoàng Mai, Hà Nội', '', 'Cenpartnership', '0', 0),
(237, NULL, 'Vothanhsang', 'Thanhsang22681@gmail.com', '0987779930', '136a nguye tri phuong thi xa di an binh duong', '', 'Cenpartnership', '0', 0),
(238, NULL, 'Võ Văn Nở', 'Vannovo3@gmail.com', '0964171506', 'Âp an hòa xã tam thôn hiệp', '', 'Cenpartnership', '0', 0),
(239, NULL, 'Nguyễn Minh Châu', 'Chau.nm02@gmail.com ', '0939146477', '13/13A, đường 28, phường Cát Lái, Quận 2, Hồ Chí Minh', '', 'Cenpartnership', '0', 0),
(240, NULL, 'LAI THANH TUNG', 'laithanhtung1984@gmail.com', '0974990160', 'Số 409, đường Lý Thường Kiệt, Phủ Lý', 'T', 'Cenpartnership', '0', 1),
(241, NULL, 'tăng vĩ minh ', 'tangviminh1991@gmail.com', '0925769071', '59/15 trần hưng đạo tp . Tuy hòa phú yên', '', 'Cenpartnership', '0', 0),
(242, NULL, 'Bui thanh phuong', 'Bthanhphuong446@yahoo.com', '01696702549', 'A6/6e ap 1 vinh loc a huyen binh chanh', '', 'Cenpartnership', '0', 0),
(243, NULL, 'Bui thanh phuong', 'Bthanhphuong446@yahoo.com', '01696702549', 'A6/6e ap 1 vinh loc a huyen binh chanh', '', 'Cenpartnership', '0', 0),
(244, NULL, 'Trần Thị Hương', 'huongtran180690@gmail.com', '0917918690', 'Số 40 ngõ 13 đường Lĩnh Nam,P.mai Động,Q.Hoàng Mai,Hà Nội.', '', 'Cenpartnership', '0', 0),
(245, NULL, 'Tào Đạt Vinh', 'Datvinh145@gmail.com', '0906386199', '14 Cần Giuộc F13 Q8', '', 'Cenpartnership', '0', 0),
(246, NULL, 'Nguyễn Văn Long', 'longnguyen1407@gmail.com', '0164738098', 'Yen Bac, Duy Tien ,Ha Nam', '', 'Cenpartnership', '0', 0),
(247, NULL, 'Châu Uyển Ái', 'kakichau89@gmail.com', '01288771113', '45 ưu long, p11, q8', '', 'Cenpartnership', '0', 0),
(248, NULL, 'Hồ Diên Trung', 'mrtrungna@gmail.com', '0985034068', 'Trung Kính - Cầu Giấy - HN', 'HH3 - FLC GARDEN CITY', 'Cenpartnership', '0', 1),
(249, NULL, 'Trần Hùng Cường', 'nguyensangtnn@gmail.com', '0934514797', 'Hà Nội', 'HH3 - FLC GARDEN CITY - 708', 'Cenpartnership', '0', 1),
(250, NULL, 'Vương Thị Minh', 'vuongconuong.minh@gmail.com', '0976443743', 'Lê Văn Lương ', 'không', 'Cenpartnership', '0', 0),
(251, NULL, 'Nguyễn  Hữu Luân ', 'congtysonvietmy668@gmail.com', '0926177368', 'Chúc Đồng Thuy Huong CM HN', '', 'Cenpartnership', '0', 0),
(252, NULL, 'PHAM DUY HOA', 'duyhoait@gmail.com', '01267367888', 'A20 Tan Phong Nguyen Huu Tho Quan 7', '', 'Cenpartnership', '0', 0),
(253, NULL, 'Minhhungdoan', 'Minhhungdoan3456@gmail.com', '0945181979', '12 tong van tran doi dien tram dang kiem oto lac long f5 quan ,11 tp hc m', '', 'Cenpartnership', '0', 0),
(254, NULL, 'Minhhungdoan', 'Minhhungdoan456@gmail.com', '0945181979', '12tongvantran doi dien tram dang kiem oto lac long quan f5 quan 11 tp hcm', '', 'Cenpartnership', '0', 0),
(255, NULL, 'Nguyen Van Dung Thang', 'dungthang@vvn.vn', '0989611198', 'R3 Royal City', 'Imperia garden D1509', 'Cenpartnership', '0', 1),
(256, NULL, 'Đỗ Huê Quốc', 'jq_do04@yahoo.com', '0907446438', '39/1 trần nguyên hãn,p13,q8,HCM', '', 'Cenpartnership', '0', 0),
(257, NULL, 'Phạm Ngọc Hương', 'Huynh.anhan90@gmail.com', '01266110123', 'Số 14 Ngõ 304 Lê Duẩn, Trung Phụng, Đống Đa, Hà Nội', '0', 'Cenpartnership', '0', 0),
(258, NULL, 'Lê Quang Luân ', 'Leluan10111988@gmail.com', '01217192253', '204/a2 Nhị Hoà Xã Hiệp Hoà Biên Hoà Đồng Nai', '', 'Cenpartnership', '0', 0),
(259, NULL, 'Huynh hoan toan', 'Toanhuynh.mobifone@gmail.com', '0908171191', '05 lo m cu xa phu lam d phuong 10 quan 6 tphcm', '0', 'Cenpartnership', '0', 0),
(260, NULL, 'Phạm Quang Bách', 'bachdl2@gmail.com', '0982186816', '65/3/8 Trần Văn Dư, Phường 13, Tân Bình, TPHCM', '', 'Cenpartnership', '0', 0),
(261, NULL, 'Nguyễn Thanh Mai', 'nguyenthanhmai210792@gmail.com', '0936315883', '564 Nguyễn Văn Cừ, Long Biên, Hn', '', 'Cenpartnership', '0', 0),
(262, NULL, 'Lê Văn Dũng', 'minhtuan.idic@gmail.com', '0916054919', 'Cổ Huế,Bắc Từ Liêm,HN', 'HH3 FLC GARDEN CITY', 'Cenpartnership', '0', 1),
(263, NULL, 'Nguyễn Thanh Thảo', 'thaont.unix@gmail.com', '0902032004', 'An Hoà, Hà Đông', 'Chung cư', 'Cenpartnership', '0', 1),
(264, NULL, 'Nguyễn Thanh Thảo', 'thaont.unix@gmail.com', '0902032004', 'An Hoà Hà Đông', 'Chung cư', 'Cenpartnership', '0', 1),
(265, NULL, 'Lê Thị Thanh Thúy', 'lethuy558@gmail.com', '0983560365', 'Thị trấn Hưng Hà, huyện Hưng Hà, tỉnh Thái Bình', '', 'Cenpartnership', '0', 0),
(266, NULL, 'Cao Ngọc mai', 'Mai.caongoc@yahoo.com.vn', '0988711488', 'Hà nội', '', 'Cenpartnership', '0', 0),
(267, NULL, 'Lê Lan Anh', 'lananhtdchcm@gmail.com', '0918639678', '42/68/8 Hoàng hoa Thám P.7, Q. Bình Thạnh', '', 'Cenpartnership', '0', 0),
(268, NULL, 'VU THI HANH', 'nguyentantien1960@gmail.com', '01682691967', 'phong 25, tang 5, Royall City, 72 Nguyen Trai, Ha Noi', 'CCCC Royall city, Biet thu bien Nha Trang, Codotel Tran Phu, Le Thanh Ton, Nha Trang.', 'Cenpartnership', '0', 8),
(269, NULL, 'Nguyễn Thu Hằng', 'hangkdhec@gmail.com', '0912226790', '53 Hàng Buồm, Hoàn Kiếm, Hà nội', 'imperia, xuân mai', 'Cenpartnership', '0', 2),
(270, NULL, 'Nguyễn Chí Long', 'nguyenchilong@gmail.com', '0932206666', 'Tổng Thư ký tòa soạn Báo GĐ&XH, 138A Giảng Võ, Ba Đình, Hà Nội', '0', 'Cenpartnership', '0', 0),
(271, NULL, 'Nguyễn Thị Nga', 'thunga241089nd@gmail.com', '0966386168', '121 Nguyễn Ngọc Vũ, Trung Hòa, CẦu Giấy, HN', '', 'Cenpartnership', '0', 0),
(272, NULL, 'Nguyễn Mạnh Dũng', 'Dungnguyenkr@gmail.com', '0912261186', 'Dược thượng tiên dược sóc sơn hà nội', '', 'Cenpartnership', '0', 0),
(273, NULL, 'Nguyễn mạnh dũng', 'Dungnguyenkr@gmail.com', '0912261186', 'Tiên dược sóc sơn hà nội', '', 'Cenpartnership', '0', 0),
(274, NULL, 'Nguyễn Minh Thu', 'thu317@gmail.com', '0912040140', 'Trần huy liệu -Ba đình -hà nội ', '0', 'Cenpartnership', '0', 0),
(275, NULL, 'nguyễn Thị Kim Hương', 'nguyenkimsoyoung@gmail.com', '0963871023', 'hưng yên', '', 'Cenpartnership', '0', 0),
(276, NULL, 'Nguyễn Thị Thanh Nga', 'ntnga2208@gmail.com', '0968674335', 'Miêu Nha, Tây Mỗ, Nam từ Liêm, Hà Nội', '', 'Cenpartnership', '0', 0),
(277, NULL, 'Đỗ Xuân Hoà', 'hoa.modano@gmail.com', '0918009166', '401A Lê Đại Hành ,P11,Q11', '', 'Cenpartnership', '0', 0),
(278, NULL, 'Trịnh Quang Khải', 'khaitq3ibkhn@gmail.com', '0988179315', '14TT11- KĐTM Văn Phú- Hà Đông- Hà Nội', '', 'Cenpartnership', '0', 0),
(279, NULL, 'Trần Tuấn Anh', 'trananhmau@gmail.com', '0916131191', 'Hà Nội', 'imperia garden, gold season', 'Cenpartnership', '0', 2),
(280, NULL, 'Võ Văn Đương', 'duongvv.vn@gmail.com', '0908150522', '78 Hoa Cuc, P.7, Q.Phu Nhuan, Ho Chi Minh, Viet Nam', '', 'Cenpartnership', '0', 0),
(281, NULL, 'LÊ THỊ BÍCH NGỌC', 'ltbngoc.1990@gmail.com', '0933426808', '107/1 BÀNH VĂN TRÂN P5 TÂN BÌNH', '', 'Cenpartnership', '0', 0),
(282, NULL, 'To thi tuyết', 'Congtytnhhtanhao@gmail.com', '0905117328', '713 nguyễn tất thành pxuan hà q thanh khe tp đà nẵng', 'Bđs', 'Cenpartnership', '0', 0),
(283, NULL, 'Nguyễn Minh Huệ', 'huedragon1976@gmail.com', '0983498879', 'Số 1 Hồng Mai - Hai Bà Trưng - Hà Nội', 'CT2 - 09-18', 'Cenpartnership', '0', 1),
(284, NULL, 'Hoàng  Ngọc Quý ', 'ngocquycamera@gmail.com', '0972528383', '121 Yen xá Tân triều Thanh tri ha noi', '', 'Cenpartnership', '0', 0),
(285, NULL, 'Lê Trí Khang', 'Crystal_firefly_ily@yahoo.com', '01262332002', '15 ngõ 51 Hoàng Cầu - Đống Đa - Hà Nội', '', 'Cenpartnership', '0', 0),
(286, NULL, 'Cù Vĩnh Toàn', 'cuvinhtoantp8388@gmail.com', '0984044926', 'Số 7/7 ngõ 160 lương thế vinh - thanh xuân', '', 'Cenpartnership', '0', 0),
(287, NULL, 'nguyễn hoàng long', 'Hoanglonglicogi2@gmail.com', '0912899959', 'phòng 1602H - CT7 Tiểu khu Parkview Residence', 'Căn 1602H-CT7 Tiểu khu Parkview Reside', 'Cenpartnership', '0', 0),
(288, NULL, 'Nguyen Mau Phuong', 'ductho274@yahoo.com', '0902149966', 'E 31 Khu DTM Daikim, hoang mai Hanoi', 'Green Park va Golden city', 'Cenpartnership', '0', 2),
(289, NULL, 'Nguyễn Thị Vinh', 'nguyenvinh11190@gmail.com', '0969702845', '13B Ngõ 5 Phố Ao Sen Hà Đông Hà Nội', 'Căn Hôk Chung cư', 'Cenpartnership', '0', 0),
(290, NULL, 'Nguyễn Thị Huỳnh Hoa', 'rosynguyen2016@gmail.com', '0909316667', 'KHU PHỐ CẢNH VIÊN 3,P.TÂN PHÚ QUẬN 7', '', 'Cenpartnership', '0', 0),
(291, NULL, 'van my lan', 'mylân1503@gmil.com', '01228020826', '356/5 gia phu f3 q6', 'bat dong san', 'Cenpartnership', '0', 0),
(292, NULL, 'NGUYỄN QUÂN NGỌC', 'quanngocmarketerbds@gmail.com', '0968278844', '44 PHỐ BÀ TRIỆU , QUẬN HÀ ĐÔNG , HÀ NỘI', '', 'Cenpartnership', '0', 0),
(293, NULL, 'Nguyễn Minh Trường', 'minhtruongcvvc@gmail.com', '0906611172', '307 lô b2 - cc Nhiêu Lộc C - Tân Quý - Tân Phú - TP hcm', '', 'Cenpartnership', '0', 0),
(294, NULL, 'Hoàng Đại Lễ', 'hoang_daile@yahoo.com', '0918133286', '6/1Bis CMT8, P Bến Thành, Q1, TP HCM', '', 'Cenpartnership', '0', 0),
(295, NULL, 'Nguyen Gia Duc', 'dgnguyen@gmail.com', '988547555', '108 K8 Thanh Cong, Ba Dinh', '', 'Cenpartnership', '0', 0),
(296, NULL, 'Võ Khánh Trang ', 'trangvk82@gmail. com', '0922737366', '17/103 Nhật Lệ, Huế ', '', 'Cenpartnership', '0', 0),
(297, NULL, 'Cao Hữu', 'barack.obama2307@gmail.com', '0937393348', 'thôn 8 đức tín đức linh bình thuận', '', 'Cenpartnership', '0', 0),
(298, NULL, 'Nguyen Anh Thy', 'anhthy.contact@gmail.com', '932266973', '745/262 Quang Trung, Ward 12, Go Vap District', '', 'Cenpartnership', '0', 0),
(299, NULL, 'Nguyễn Mạnh Hùng', 'nguyenmanhhung_bql@yahoo.com.vn', '0902234888', '110 Nguyễn Phong Sắc, Cầu Giấy, hà Nội', '0', 'Cenpartnership', '0', 0),
(300, NULL, 'Trương Hồ Phước Hải', 'nv.nhadat@gmail.com', '0909134758', '10/30 Tân Quý Tan Phú HCM', '', 'Cenpartnership', '0', 0),
(301, NULL, 'Nguyen Van Huu', 'Vanhuu.jp@gmail.com', '0966378022', 'Hung Yen', '0', 'Cenpartnership', '0', 0),
(302, NULL, 'Ngô Thanh Hiếu', 'thanhhieu09dt1@gmail.com', '0901155550', 'Đà Nẵng', '', 'Cenpartnership', '0', 0),
(303, NULL, 'Lại Quốc Dũng', 'quocdungln999@gmail.com', '0917102200', '75/48 P. Thạnh Lộc. Q 12', '', 'Cenpartnership', '0', 0),
(304, NULL, 'Phan Ngọc Quốc', 'phanngocquoc07@gmail.com', '979225050', 'Phan Văn Hớn', '', 'Cenpartnership', '0', 0),
(305, NULL, 'Trần Quang Hùng', 'quanghung.hapro@gmail.com', '0125692055', '14 ngách 121/48/1Kim Ngưu, Hai Bà Trưng, Hà Nội', '', 'Cenpartnership', '0', 0),
(306, NULL, 'Nguyễn Thị Xuân', 'xuanhcf@yahoo.com', '0982288371', 'Số 5 ngõ 5 Đội Cấn Ba Đình HN', '', 'Cenpartnership', '0', 0),
(307, NULL, 'Nguyễn huỳnh tiền', 'thachtanlinh_2010@yahoo.com.vn', '01285229209', '536/32/9/35 Tổ6,phường 10,đường Âu Cơ,quận Tân Bình', '', 'Cenpartnership', '0', 0),
(308, NULL, 'Nguyễn huỳnh tiền', 'thachtanlinh_2010@yahoo.com.vn', '01285229209', '536/32/9/35 Tổ6,phường 10,đường Âu Cơ,quận Tân Bình', '', 'Cenpartnership', '0', 0),
(309, NULL, 'Hoàng trọng Thanh', 'Htthanhktqf@yahoo.com.vn', '0913525089', '12 ngõ 90 Trần đại Nghĩa HBT Hanoi', '', 'Cenpartnership', '0', 0),
(310, NULL, 'Phan anh lam ', 'Anhlam1977@yahoo.com ', '0988227788', '14/84 ngoc khanh , giang võ , ba đình, hn ', '', 'Cenpartnership', '0', 0),
(311, NULL, 'Hong ngoc minh tram', 'Tram.hnmt@gmail.com', '01156372787', '267/27a le van viet p hiep phu q9 tphcm', '0', 'Cenpartnership', '0', 0),
(312, NULL, 'Nguyễn thị Ngọc dunh', 'ngocdung_0107@yahoo.com', '0912373741', 'Hóc môn', '', 'Cenpartnership', '0', 0),
(313, NULL, 'Trần Hữu Kim Long', 'longtranvtt9@gmail.com', '0905133942', '201/3 Phan Châu Trinh, Đà Nẵng', '', 'Cenpartnership', '0', 0),
(314, NULL, 'Nguyễn Thị Nhiều', 'Nieullanguyen@gmail.com', '0908285779', '521:57 CMTT P13Q10 TpHCM', '', 'Cenpartnership', '0', 0),
(315, NULL, 'Đỗ Thị Minh Thư', 'thudtm56@gmail.com', '0988368125', 'R62312, 72a Nguyễn Trãi, Thanh Xuân, Hà Nội', '', 'Cenpartnership', '0', 0),
(316, NULL, 'Lê Quỳnh Trang', 'lequynhtrang9590@gmail.com', '0973663590', 'Tổ 3 Phú La Hà Đông Hà Nội', '', 'Cenpartnership', '0', 0),
(317, NULL, 'Phạm ngọc sản', 'Ngocsan.tpkd@gmail.com', '0941895535', 'Tổ dân phố 7. Phường trung sơn trầm. Sơn tây. Hà Nội', 'Biệt thự vinhom ', 'Cenpartnership', '0', 4),
(318, NULL, 'Bùi Chí Thành', 'Buichithanh68@gmail.com', '0967894107', 'Số 5 ngách 70 ngõ Văn Chương Đống Đa Hà Nội', '0', 'Cenpartnership', '0', 0),
(319, NULL, 'Lê Thị Phương Thảo', 'lifeisatrip.thaophuong@gmail.com', '0935063786', 'Quảng Nam', '0', 'Cenpartnership', '0', 0),
(320, NULL, 'Nguyễn Thị Thanh Thuý', 'nguyenthanhthuy82@gmail.com', '0983840688', 'Yên Hoà, Cầu Giấy, HN', 'Golden Palm', 'Cenpartnership', '0', 1),
(321, NULL, 'Nguyễn Thị Thanh Thuý', 'nguyenthanhthuy82@gmail.com', '0983840688', 'Yên Hoà, Cầu Giấy, HN', 'Golden palm', 'Cenpartnership', '0', 1),
(322, NULL, 'nguyễn quốc sự', 'nguyensu.bds@gmail.com', '0979020687', 'hà nội', 'eco green city', 'Cenpartnership', '0', 10),
(323, NULL, 'Ngô Văn Dũng', 'duonglangcusi@gmail.com', '0919931618', 'Hà Đông - Hà Nội', '250 Minh Khai, Tân Tây Đô, Thủy Lợi Tower, Sails Tower', 'Cenpartnership', '0', 7),
(324, NULL, 'Nguyễn Minh', 'Minhql49b@gmail.com', '988155633', 'phòng 1110-CT3, The Pride', 'phòng 1110-CT3, The Pride, Hà Nội', 'Cenpartnership', '0', 1),
(325, NULL, 'Trần Trung Tuấn', 'trantuanbtl@gmail.com', '0968368265', 'Bắc Hồng - Đông Anh - Hà Nội', 'Biệt thự liền kề Maison Du parc - Thành phố Giao Lưu', 'Cenpartnership', '0', 2),
(326, NULL, 'thân thi lan', 'thanthilan 202@gamil.com', '0903438234', '86 ngo 230 phố định công thượng hoàng mai hà nội', '', 'Cenpartnership', '0', 0),
(327, NULL, 'Chu Văn Ngọc', 'lienhe.chuhoangngoc@gmail.com', '0963794567', 'Cầu Giấy, Hà Nội', '', 'Cenpartnership', '0', 0),
(328, NULL, 'Le van thuong', 'Levanthuong9999@gmail. Com', '0989261659', 'Xom 2 ha vy xa le loi', 'Giới Thiệu ', 'Cenpartnership', '0', 0),
(329, NULL, 'Doãn Văn Trung', 'trung.doanvan@gmail.com', '0944123258', '102 Nguyễn Huy Tưởng', '', 'Cenpartnership', '0', 0),
(330, NULL, 'Lê Duy Ngọc', 'duyngoc8668@gmail.com', '0888813386', 'cổ nhuế, từ liêm, hà nội', '', 'Cenpartnership', '0', 0),
(331, NULL, 'Lê Đình Thắng', 'mrthangpd@gmail.com', '0973361201', 'thôn Cao Trung - xã Đức Giang - Hoài Đức - Hà Nội', '', 'Cenpartnership', '0', 0),
(332, NULL, 'Vũ Chung', 'changtraigiavien@gmail.com', '0972003622', 'Ninh bình', '', 'Cenpartnership', '0', 0),
(333, NULL, 'trịnh như lâm', 'Trinhnhulamtdnb@gmail.com', '0912723886', '419 hoàng quốc việt, cầu giấy, hà nội', '', 'Cenpartnership', '0', 0),
(334, NULL, 'Vũ Thiện Chiến', 'seasoned238@gmail.com', '0916232684', 'Phòng 401 khu TT222D ngõ 260 Đội Cấn, Liễu Giai, Ba Đình, Hà Nội', 'Gremek Primimum', 'Cenpartnership', '0', 1),
(335, NULL, 'nguyễn việt đức', 'vietduc_90tnh@yahoo.com', '0936249328', '26 nguyễn đổng chi, nam từ liêm, hà nội', '', 'Cenpartnership', '0', 0),
(336, NULL, 'đỗ thành công', 'mrcong2909@gmail.com', '0988290990', '23/8 bế văn đàn - hà đông', '0', 'Cenpartnership', '0', 0),
(337, NULL, 'Nguyễn Hoàng Long', 'Pusi8994@gmail.com', '0976113446', 'Sóc Sơn, Hà Nội ', 'Chung cư parkview residence', 'Cenpartnership', '0', 1),
(338, NULL, 'Nguyễn Thị Thu Hằng', 'Nguyenhang7981@gmail.com', '0986119486', 'Tổ 31 phường Thượng Thanh Quận Long Biên Hà Nội', '', 'Cenpartnership', '0', 0),
(339, NULL, 'Lê văn cường', 'Vanmackedoi@yahoo.com', '0989197798', 'Đội 4 phú thịnh ,thiệu phú ,thiệu hóa,thanh hóa', '', 'Cenpartnership', '0', 0),
(340, NULL, 'Vũ Ngọc Thành', '123tennis.vn@gmail. Com', '0989353628', 'Hà Nội', 'Căn hộ chung cư an bình', 'Cenpartnership', '0', 1),
(341, NULL, 'lê huy bình', 'lehuybinhuhhn1979@gmail.com', '0974009262', 'trung tú - ứng hòa - hà nội.', '', 'Cenpartnership', '0', 1),
(342, NULL, 'Hoàng văn tư ', 'Ah564820@gmail.com ', '0913832900', 'Nam định ', '', 'Cenpartnership', '0', 0),
(343, NULL, 'Nguyễn Văn Minh', 'vanminh.cvn@gmail.com', '0986795380', 'Hà Nam', '', 'Cenpartnership', '0', 0),
(344, NULL, 'Nguyễn Thị Thơ', 'nguyenanhthovtyt@gmail.com', '0976239415', 'P 1008 tòa nhà CT3A Khu đô thị Mễ Trì Thượng, Nam Từ Liêm, Hà Nội', '', 'Cenpartnership', '0', 0),
(345, NULL, 'Nguyễn Thị Thơ', 'nguyenanhthovtyt@gmail.com', '0976239415', 'P 1008 tòa nhà CT3A Khu đô thị Mễ Trì Thượng, Nam Từ Liêm, Hà Nội', 'Căn hộ 2411A Chung cư Gemek 2', 'Cenpartnership', '0', 1),
(346, NULL, 'Nguyễn Văn Vy', 'nguyenvanvy09@gmail.com', '0943949289', 'La khê hà đông hà nội', '', 'Cenpartnership', '0', 0),
(347, NULL, 'Hoàng Thành Thắng', 'hoangthang891207@gmail.com', '0949281158', 'Thái nguyên thái thụy thái bình', '', 'Cenpartnership', '0', 0),
(348, NULL, 'Trương mạnh cường', 'Manhcuong2662@gmail.com', '0932382662', '42 lê duẩn', '', 'Cenpartnership', '0', 0),
(349, NULL, 'Nguyễn anh đức', 'Tbyttriduc@gmail.com', '0904902211', 'Số 34 ngách 15 ngõ 4 phương mai - đống đa - hn', '', 'Cenpartnership', '0', 0),
(350, NULL, 'Nguyen nhu Tu ', 'toiselamtatca.hhpp@gmail.com', '0916994592', 'Ngoc bai ngoc liep quoc oai ha noi', 'Khong', 'Cenpartnership', '0', 0),
(351, NULL, 'Vu Thi Thu Trang', 'trangthu.vuthi@gmail.com', '0983845338', '16b ngo 80 pho Nhan Hoa, Thanh Xuan, Ha Noi', 'Furama ', 'Cenpartnership', '0', 3),
(352, NULL, 'nguyễn thanh tùng', 'tung.marko@gmail.com', '0933331310', '22/204 tôn đức thắng, đống đa, hà nội', '', 'Cenpartnership', '0', 0),
(353, NULL, 'abc', 'huuan101@yahoo.com', '0988801145', 'abc', '', 'Cenpartnership', '0', 0),
(354, NULL, 'Nguyễn Văn Minh', 'nguyentrongminh.xdddcn@gmail.com', '0948713329', 'Phú Túc - Phú Xuyên - Hà Nội', '', 'Cenpartnership', '0', 0),
(355, NULL, 'Nguyễn Sơn Tùng', 'Nst.tung@gmail.com', '0982280707', '42/21 Phan Đình Giót, Thanh Xuân, Hà Nội', '', 'Cenpartnership', '0', 0),
(356, NULL, 'Trinh thị hằng', 'Trinhhang5@gmail.com ', '0974055699', 'Hà nội', '', 'Cenpartnership', '0', 0),
(357, NULL, 'Đinh văn quang', 'Đinhxuan1234@gmai.com', '0978760076', 'Hải dương', '', 'Cenpartnership', '0', 0),
(358, NULL, 'Le Xuan Hoang', 'hoanglx@me.com', '01234334335', 'R6 Royal City, Nguyễn Trai, Thanh Xuân, Hà Nội', 'Chung Cư Royal City', 'Cenpartnership', '0', 1),
(359, NULL, 'Phạm HỒng Quân', 'quan.ph@st-communications.com', '0986255678', 'Thái Nguyên', 'FLC Garden', 'Cenpartnership', '0', 1),
(360, NULL, 'Lưu Thị Thu Trang', 'Trang.luuthu88@gmail.com', '01654323456', '1065 Đê La Thành,Ngọc Khánh,Ba Đình,Hà Nội', '', 'Cenpartnership', '0', 0),
(361, NULL, 'đoàn như hiệp', 'hiepdn.ducviet@gmail.com', '0919863630', '281/69/16 trần khát trân, hai bà trưng, hà nội', '', 'Cenpartnership', '0', 0),
(362, NULL, 'Thu Hà', 'ha0983343082@gmail.com', '0983343082', '141 Nguyễn Thái Học - Ba Đình - Hà Nội', 'Royal city', 'Cenpartnership', '0', 1),
(363, NULL, 'Trinh van chinh', 'Vanchinh260587@gmail.com', '0964044006', 'Dinh hung yen dinh thanh hoa', '', 'Cenpartnership', '0', 0),
(364, NULL, 'Trần Đăng Khoa', 'infovn82@gmail.com', '0888483326', 'Đông Anh Hà Nội', 'căn hộ', 'Cenpartnership', '0', 10),
(365, NULL, 'Bùi Bich Thủy', 'bichthuy_bru@yahoo.com', '01246369365', '2725 Triệu việt Vương, Hà nội', 'Goldseason', 'Cenpartnership', '0', 1),
(366, NULL, 'trần văn long', 'longtran.ltv@gmail.com', '0914130366', '31/670 Nguyễn khoái , Hà nội', '', 'Cenpartnership', '0', 0),
(367, NULL, 'Nguyễn Ngọc Anh', 'Hannan@cathaypacific.com', '0985667001', 'Số nhà 371, TDP Xuân Lộc 2, Phường Xuân Đỉnh, Quận Bắc Từ Liêm, Hà Nội', '', 'Cenpartnership', '0', 0),
(368, NULL, 'phạm hùng trường ', 'hungtruongsky@gmail.com', '0942393899', '458 minhg khai ', '11', 'Cenpartnership', '0', 0),
(369, NULL, 'Trịnh Anh Ngọc', 'Ngoctrinhmtcn@gmail.con', '0977872323', 'Đại mỗ - Từ Liêm- Hn', 'Căn hộ', 'Cenpartnership', '0', 1),
(370, NULL, 'Phạm xuân Hưng ', 'Hungmetro@gmail.com', '0945734444', 'Di Trạch - Hoài Đức Hà Nội', '', 'Cenpartnership', '0', 0),
(371, NULL, 'Phạm Xuân Hưng', 'Hungmetro@gmail.com', '0945734444', 'Hoài Đức-Hà Nội', '', 'Cenpartnership', '0', 0),
(372, NULL, 'nguyentrongdoan', 'trongdoan280811@gmail.com', '0989181428', 'viet doan tien du bac ninh', '', 'Cenpartnership', '0', 0),
(373, NULL, 'Nguyễn văn thái', 'Thai12345@gmaik.com', '01674797978', 'An tây bến cát nh duong', '', 'Cenpartnership', '0', 0),
(374, NULL, 'Đoàn Thanh Thuỷ', 'Doanthuy.tn@gmail.com', '0983286882', 'Cầu Giấy Hà Nội', 'Bất động sản', 'Cenpartnership', '0', 2),
(375, NULL, 'Lê Quỳnh Trang ', 'lequynhtrang9590@gmail.com', '0973663590', 'Tổ 3 Phú La Hà Đông Hà Nội', '', 'Cenpartnership', '0', 0),
(376, NULL, 'Nguyen Duy Chung', 'vincommienbac@gmail.com', '0913622158', 'Ha Noi', '', 'Cenpartnership', '0', 0),
(377, NULL, 'Mai Thị Vân', 'dongloc82@yahoo.com', '0909095009', 'NV 5.6 khu chức năng đô thị Đại Mỗ, Nam Từ Liêm, Hà Nội', 'Gemek Premium', 'Cenpartnership', '0', 1),
(378, NULL, 'Đỗ Đức Thành', 'mrdoducthanh@gmail.com', '0919888466', 'Tầng 8, 106 Tôn Đức Thắng, Đống Đa, Hà Nội', 'Sentosa Riverside Da Nang', 'Cenpartnership', '0', 1),
(379, NULL, 'nguyenvanhieu', 'nguyenhieu0938@gmail.com', '0938571469', '', '', 'Cenpartnership', '0', 0),
(380, NULL, 'nguyenvanhieu', 'nguyenhie0938@gmail.com', '0938571469', '', '', 'Cenpartnership', '0', 0),
(381, NULL, 'Nguyễn văn Hưng', 'Hungnguyenitasco@gmail.com', '01665089999', 'Hà nội', '', 'Cenpartnership', '0', 0),
(382, NULL, 'Nguyen Huu Tu', 'Anhchin711@yahoo.com.vn', '0997638697', '711A Mac Cuu - Vinh Quang - Tp.Rach Gia - Kien Giang', '', 'Cenpartnership', '0', 0),
(383, NULL, 'ĐỖ DUY THẮNG', 'duythangnamdinh1973@gmall.com', '0982993699', 'Mỹ Xá Nam Định', '', 'Cenpartnership', '0', 0),
(384, NULL, 'Nguyễn Hoàng Long', 'longnguyenhoang33@gmail.com', '01685751279', 'Số 8 nhõ 622/39 minh khai Hai bà trưng hn', '', 'Cenpartnership', '0', 0),
(385, NULL, 'Ta Nhat Linh', 'linhnhatta@gmail.com', '902103798', '19 Group Hoang Liet Ward Hoang Mai', '09-12A The two', 'Cenpartnership', '0', 1),
(386, NULL, 'Nguyễn khánh bảo', 'Khanhbao42@gmail.com', '0935934444', '18 nguyễn du', '', 'Cenpartnership', '0', 0),
(387, NULL, 'Nguyễn Xuân Tuấn Anh', 'nxtuananh@yahoo.com', '0932623226', 'Trương Định Q1', '', 'Cenpartnership', '0', 0),
(388, NULL, 'Phùng Thanh Tâm', 'hochua49999@gmail.com', '0964844443', 'Phuong 1, tp tra vinh,  tra vinh', 'Đất', 'Cenpartnership', '0', 10),
(389, NULL, 'Phạm Xuân Hưng', 'Hungmetro@gmail.com', '0945734444', 'Hoài Đức - Hà Nội', '', 'Cenpartnership', '0', 0),
(390, NULL, 'Truong Tan Hung', 'truongtanhung177@gmail.com', '0911573569', '94 nguyễn đình chiểu , phường đakao, quân1 Tp.hcm', '', 'Cenpartnership', '0', 0),
(391, NULL, 'Võ Văn Thuận', 'thuanvo1211@gmail.com', '0996080850', 'Chung cư Belleza, dg Phạm Hữu Lầu, phường Phú Mỹ, quận 7, TP. HCM', '', 'Cenpartnership', '0', 0),
(392, NULL, 'Nguyễn Đức Thượng ', 'Friendly.ndt@gmail.com ', '0979445336', '116/364 Giải Phóng HoàngMai Hà Nội ', '', 'Cenpartnership', '0', 0),
(393, NULL, 'Trần Thế Thương', 'thuongtranthe@yahoo.com.vn', '01226143590', '99/15/20 Nguyễn Đình Chiểu. P04. Q Phú Nhuận. TpHCM', '', 'Cenpartnership', '0', 0),
(394, NULL, 'Đỗ văn hiền', 'Hientoda@gmail.com', '0912221389', 'Số nhà 28, ngõ 195, phố trần cung, phường cổ nhuế1, quận bắc từ liêm, hà nội', 'chung cư an bình', 'Cenpartnership', '0', 1),
(395, NULL, 'Phạm Đức Nghĩa', 'phamducnghia91@gmail.com', '0934504530', '23 đường 51, P. Bình Thuận, Q.7, TP.HCM', '', 'Cenpartnership', '0', 0),
(396, NULL, 'Nguyễn duy Lý', 'Duyly33@gmail.com', '0973964336', 'Hoàng mai, Hà nội', '', 'Cenpartnership', '0', 0),
(397, NULL, 'pham minh an', 'phaman851 @gmail.com', '0903556731', '204/23/13 tran phu phuong 9  quan 5', '', 'Cenpartnership', '0', 0),
(398, NULL, 'Đỗ Thị Việt Hằng', 'dỏhiviethang1981@gmail.com', '0868381199', '51/27/71 đường Tây Mỗ quận Nam Từ Liêm tp Hà Nội', '00', 'Cenpartnership', '0', 0),
(399, NULL, 'Trần thị loan trang', 'Tranthiloantrang@gmail.com', '01233638368', '7-CH07 c/c Thái An 2290 quốc lộ 1A , F trung mỹ tây , Q12 tphcm', '', 'Cenpartnership', '0', 0),
(400, NULL, 'An Mạnh Hùng', 'amhung1402@gmail.com', '0916532568', 'Phúc Diễn, Bắc Từ Liêm, Hà Nội', '', 'Cenpartnership', '0', 0),
(401, NULL, 'An Mạnh Hùng', 'amhung1402@gmail.com', '0916532568', 'Phúc Diễn, Bắc Từ Liêm, Hà Nội', 'Dự án An Bình City ', 'Cenpartnership', '0', 1),
(402, NULL, 'Lê Quang Bắc', 'bac.hutech@gmail.com', '01654355074', '118/132o-Bạch Đằng-P24_Bình Thạnh-HCM', '', 'Cenpartnership', '0', 0),
(403, NULL, 'Nguyen thi ha thanh', 'Hathanh131989@yahoo.com', '0974734698', 'Q12, hcm', '0', 'Cenpartnership', '0', 0),
(404, NULL, 'phạm văn cường', 'phamvancuong119@gmail.com', '0975095546', 'sóc sơn- hà nội', 'chung cư', 'Cenpartnership', '0', 0),
(405, NULL, 'Trần thị bình', 'Tranbinh1809@gmail.com', '0989775624', 'Số 41ngõ 1295/11giải phóng', '', 'Cenpartnership', '0', 0),
(406, NULL, 'Lu Chi Quay', 'Johnlu0889@gmail.com', '0908191297', '43/17 minh phung', '', 'Cenpartnership', '0', 0);
INSERT INTO `customer` (`id`, `username`, `fullname`, `email`, `phone`, `address`, `name_product`, `object`, `id_number`, `quantity`) VALUES
(407, NULL, 'Nguyễn Thành Tô', 'nguyenthanhto88@gmail.com', '0942347868', 'Từ Liêm,Hà Nội', '', 'Cenpartnership', '0', 0),
(408, NULL, 'Trần Lê Khánh Huyền', 'sulamkenti@gmail.com', '0966323636', '147 ngõ 173 Hoàng Hoa Thám', '', 'Cenpartnership', '0', 0),
(409, NULL, 'Hoàng Văn Hùng', 'hunghv@stada.vn', '0941060861', 'Thôn 5 xã phú cát Huyện quốc oai-tp hà nội', 'căn hộ chung cư', 'Cenpartnership', '0', 0),
(410, NULL, 'Hoàng Văn Hùng', 'hunghv@stada.vn', '0941060861', 'Thôn 5 xã phú cát Huyện quốc oai-tp hà nội', '', 'Cenpartnership', '0', 0),
(411, NULL, 'Lê Việt Nga', 'levietngadiv@gmail.com', '0904649029', '7 Vọng Đức', 'Hattoco 110 Trần Phú, Mekong Plaza, Lilama 52 Lĩnh Nam', 'Cenpartnership', '0', 6),
(412, NULL, 'Tran Van Tam', 'Tonysead68@gmail. Com', '01253968999', '62 Nam Hoa - Phuoc Long A - Q9 / HCM', 'Can ho', 'Cenpartnership', '0', 2),
(413, NULL, 'vu thi xuan', 'vuthixuandhgt@ gmail.com', '01238691996', 'can 1407 toa j , CT7, chung cu parkview residence', ' can ho chung cu', 'Cenpartnership', '0', 1),
(414, NULL, 'NHÂN TRẦN', 'thiennhanpleiku@gmail.com', '0938735768', '931 TRẦN HƯNG ĐẠO, P.1, Q.5 ', '', 'Cenpartnership', '0', 0),
(415, NULL, 'Nguyễn Thị Thu Huyền', 'huyenntt6@cengroup.vn', '0912345678', '137 Nguyễn Ngọc Vũ', '', 'Cenpartnership', '0', 0),
(416, NULL, 'Phạm thu hiền', 'Ngochien7579@gmail.com', '0974638988', '55 hàng gai. Quận hoàn kiếm, Hà nội, Việt nam', '', 'Cenpartnership', '0', 0),
(417, NULL, 'Le Thi Kim Cuc', 'cuckimle@gmail.com', '0964287700', 'Ha Dong, Ha Noi', '2904-HH2-FLC Dai Mo', 'Cenpartnership', '0', 1),
(418, NULL, 'NGUYỄN PHƯƠNG KHANH', 'phuongkhanh79.ngm@gmail.com', '0938695979', 'B1.07 Cao Ốc Quang Thái , P.Tân Thới Hòa , Q.Tân Phú , Tp.HCM ', '0', 'Cenpartnership', '0', 0),
(419, NULL, 'nguyễn thị mai hương ', 'maihuong2612@gmail.com ', '0914261277', '271/11 ung văn khiêm, phường 25, quận bình thạnh', '', 'Cenpartnership', '0', 0),
(420, NULL, 'Nguyễn Thị Bảo Hà ', 'hanguyenthibao@yahoo.com.vn', '0902817003', '99a Nguyễn chí thanh tp Đà Nẵng ', '', 'Cenpartnership', '0', 0),
(421, NULL, 'phạm ngọc thắng', 'phamngocthang1989@gmail.com', '0968565662', 'thanh lãm hà đông hà nội', '', 'Cenpartnership', '0', 0),
(422, NULL, 'PHẠM HỒNG HẢI', 'Phamhonghai8x@gmail.com', '0937798688', 'THANH XUÂN, HÀ NỘI', '', 'Cenpartnership', '0', 0),
(423, NULL, 'nguyễn ĐIỀN trung QUÂN', 'Trungquan2712@gmail.com', '01627441547', 'ấy trung xã tân thông hội huyện cu chi', '', 'Cenpartnership', '0', 0),
(424, NULL, 'Tran Van Hoang', 'hoangtourguide@yahoo.com', '0982859359', 'Sn 30 ngo 53 Nguyen Ngoc Vu - Cau Giay - HN', 'The Golden Palm', 'Cenpartnership', '0', 1),
(425, NULL, 'Trần Thanh Sơn', 'thanh_son.tranaig@yhoo.com', '0938173863', '43K1B , Bình Đông ,P.14 ,Q. 08 , TP.hcm', '', 'Cenpartnership', '0', 0),
(426, NULL, 'Ngô Sỹ Kiên', 'ngosykien.dienchau@gmail.com', '0915985686', 'Thôn 4. Xã Diễn Kỷ. Huyện Diễn Châu. Tỉnh Nghệ An', 'bds', 'Cenpartnership', '0', 0),
(427, NULL, 'Vũ Quang Ngọc', 'ngoc.vuquang@gmail.com', '0908990499', 'A7.07 so 27 nguyen van dung p6 go vap', '', 'Cenpartnership', '0', 0),
(428, NULL, 'Vũ Ngọc Thạch', 'thachvn1105@gmail.com', '0919001383', '306/43 Xô Viêt Nghệ Tĩnh, P.25, Q.Bình Thành', 'The Sun Avenue', 'Cenpartnership', '0', 2),
(429, NULL, 'Ngô Việt Hoà', 'Viethoaltd@yahoo.com.vn', '0978499145', 'Mỹ đình từ liêm HN ', '', 'Cenpartnership', '0', 0),
(430, NULL, 'Ngô Việt Hoà', 'Viwethoaltd@yhaoo.com.vn', '0978499145', 'Mỹ đình Nam từ liêm HN ', 'Gi mex Geleximco ', 'Cenpartnership', '0', 1),
(431, NULL, 'Nguyễn Nhiêu Hưng ', 'hungnguyennhieu@gmail.com', '0946884299', '130  Bùi Hữu Nghĩa,phường Phước Mỹ, quận Sơn Trà, TP Đà Nẵng ', '', 'Cenpartnership', '0', 0),
(432, NULL, 'Trần Thanh Liêm', 'tranthanhliem198x@gmail.com', '0906999343', '19/11/2 Kinh Dương Vương ,P12,Q6. Tp.HCM', '', 'Cenpartnership', '0', 0),
(433, NULL, 'Luong Xuan Vinh', 'Luongxvinh@yahoo.com', '0913801063', '390 Nguyễn Văn Cừ, Chung cư Berriver phòng 0713', 'Căn hộ A2112 MIPEC Long biên.', 'Cenpartnership', '0', 1),
(434, NULL, 'tran ha thu oanh', 'thuoanh1007@yahoo.com', '01202924209', '14/8 duong so 9,p.9,q.govap', '', 'Cenpartnership', '0', 0),
(435, NULL, 'Đặng Thị Vân', 'dangvan26@gmail.com', '01255877787', 'Đức Ninh - Đồng Hới - Quảng Bình', '', 'Cenpartnership', '0', 0),
(436, NULL, 'Vũ Thị Mai Hương', 'huongvu818@gmail.com', '0908424346', '1380 Lê Đức Thọ, F13, Gò Vấp, TPHCM', '', 'Cenpartnership', '0', 0),
(437, NULL, 'Vũ Hoàng Tú', 'tuvu.real@gmail.com', '0903037397', '45E, KP3, P.Hiệp Thành, Q.12', 'Mega ruby, Celadon City, Tân Bình Apartment', 'Cenpartnership', '0', 9),
(438, NULL, 'Phan tuấn kiệt ', 'phantuank@gmail.com ', '0983337494', '36 chu mạnh trinh, bến nghé, q1', '', 'Cenpartnership', '0', 0),
(439, NULL, 'Trần Thị Phương Linh', 'tran.t.p.linh0506@gmail.com', '1215226033', '69 Bùi Quang Là', 'Celadon City', 'Cenpartnership', '0', 1),
(440, NULL, 'Luu Quang Dat', 'Luuquangdat198486@gmail.com ', '0986983947', 'Hoài đức. Hà Nội.', 'Chung cư', 'Cenpartnership', '0', 2),
(441, NULL, 'Tran cong danh', 'Danhdanh3007@gmail.com', '01696881890', '', '', 'Cenpartnership', '0', 0),
(442, NULL, 'Cao Mạnh Dương', 'cmanhduong@yahoo.com', '0982466635', '406A c1 ccK300 Phường 12 Q TB tp HCM', '', 'Cenpartnership', '0', 0),
(443, NULL, 'LetungLam', 'LetungLam1970@icloud.com', '0942165286', '103DaiLa', '', 'Cenpartnership', '0', 0),
(444, NULL, 'LetungLam', 'LetungLam1970@icloud.com', '0942165286', '103DaiLa', '', 'Cenpartnership', '0', 0),
(445, NULL, 'Lê đình hà', 'Hapcc4@gmail.com', '0977706326', 'Số 67 ngõ 509/106 vũ tông phan', '', 'Cenpartnership', '0', 0),
(446, NULL, 'khanh', 'hoangkhanh06604@gmail.com', '0915459587', 'son hoa tuyên hoa quang binh', 'bds', 'Cenpartnership', '0', 1),
(447, NULL, 'PHẠM THỊ KIM NGUYÊN', 'ptkim.hrm@gmail.com', '0983966106', '', '', 'Cenpartnership', '0', 0),
(448, NULL, 'Nguyen Phuoc Van', 'Vannp60@gmail.com', '0903929942', '11/24 Pham Van Hai, P3, Q. Tân Bình', '', 'Cenpartnership', '0', 0),
(449, NULL, 'Cao Cam Hao', 'camhao2016@gmail.com', '0919101060', '300 Le Dinh Can', '', 'Cenpartnership', '0', 0),
(450, NULL, 'Nguyễn ngọc khánh ', 'Thieugiabachdan@gmail.com', '0976262555', 'Long biên.  Hà nội ', '', 'Cenpartnership', '0', 0),
(451, NULL, 'Nguyễn Việt Hà', 'vietha2908@gmail.com', '0902672887', '21B/16 Nguyễn Đình Chiểu. P.Đakao.Q1 TP.HCM', 'Vinhomes Central Park', 'Cenpartnership', '0', 15),
(452, NULL, 'Lê văn Sơn ', 'leson16041989@gmail.com', '0989757073', 'Đăk Lăk ', '', 'Cenpartnership', '0', 0),
(453, NULL, 'Lý Kim Long', 'lykimlong_brian@hotmail.com', '0901500700', '31 Lý Tự Trọng, P. Bến Nghé, Q.1, HCM', '', 'Cenpartnership', '0', 0),
(454, NULL, 'NGUYEN DAC NAM PHUONG', 'kts.nguyenphuong120182@gmail.com', '0913390167', '54A DUONG 24, P. LINH DONG, Q. THU DUC', '', 'Cenpartnership', '0', 0),
(455, NULL, 'NGUYEN DAC NAM PHUONG', 'kts.nguyenphuong120182@gmail.com', '0913390167', '54A DUONG 24, P. LINH DONG, Q. THU DUC', '', 'Cenpartnership', '0', 0),
(456, NULL, 'Nguyễn Bá Hùng', 'co.chinhluat@gmail.com', '0937566767', '260 Bắc Hải, P. 6, Q. Tân Bình', '', 'Cenpartnership', '0', 0),
(457, NULL, 'nguyen huy thach', 'nguyenhuythach81@gmail.com', '0909214614', '529 ap hoa binh xa vinh thanh huyen nhon trach dong nai', '', 'Cenpartnership', '0', 0),
(458, NULL, 'nguyen huy thach', 'nguyenhuythach81@gmail.com', '0909214614', '529 ap hoa binh xa vinh thanh huyen nhon trach dong nai', '', 'Cenpartnership', '0', 0),
(459, NULL, 'pham thi xuan', 'gracepham2017@gmail.com', '0906616107', '', '', 'Cenpartnership', '0', 0),
(460, NULL, 'Phạm thị thiên Nga', 'Linh nga7895@gmail.com', '0979381866', 'Đông Anh Hà Nội', '0', 'Cenpartnership', '0', 0),
(461, NULL, 'Võ Thành Chung ', 'a2tidn@gmail.com ', '01206000790', 'Tổ 12B,Hoà Thọ Tây, Cẩm Lệ, Đà Nẵng ', '', 'Cenpartnership', '0', 0),
(462, NULL, 'Nguyễn Minh Châu', 'tranphuongthu89@gmail.com', '01682158291', 'H0208-Parkview-Dương Nội-Hà Đông', '', 'Cenpartnership', '0', 0),
(463, NULL, 'Nguyễn Viết Hiền', 'viethien_cntt@yahoo.com', '0973081183', 'Parkview Resident CT7 Dương Nội Hà Đông', 'Căn hộ Parkview Resident', 'Cenpartnership', '0', 1),
(464, NULL, 'Nguyễn Danh Luân', 'danhluandhpccc@gmail.com', '983183114', '243 khuat duy tiên, thanh xuan', ' căn hộ 706 Chung cư CT7J', 'Cenpartnership', '0', 1),
(465, NULL, 'Phạm Thị Thu Phương', 'thuphuong.phamt@gmail.com', '0988922830', 'P807 CT7K Khu đô thị dương Nội Hà Đông', 'căn hộ chung cư', 'Cenpartnership', '0', 1),
(466, NULL, 'Lương Văn Phúc', 'luongvanphuccntt@gmail.com', '0989463965', 'Dương Nội  - Hà Đông - Hà Nội', 'Chung cư', 'Cenpartnership', '0', 1),
(467, NULL, 'Hoàng Thị Thuỳ Linh', 'Thuylinhpchd114@gmail.com', '0988222894', 'Dương Nội, Hà Đông, Hà Nội', '0', 'Cenpartnership', '0', 0),
(468, NULL, 'Lê thị Kim Thái', 'Lekimthai1166@gmail.com', '0982162834', 'Số 4 nghách 3 ngõ9 Đào tấn, Ba đình, HN', 'Căn hộ the one Gamuda', 'Cenpartnership', '0', 1),
(469, NULL, 'Nguyễn Văn Tiến', 'vipnd2003@gmail.com', '0946259905', 'P2302, Tòa J, Khu đô thị Parkview Residence, CT7, Dương Nội, Hà Đông', 'Căn hộ 2302 Tòa J', 'Cenpartnership', '0', 1),
(470, NULL, 'Nguyễn Quang Minh', 'nguyenminh33@gmail.com', '0914218338', '1206 CT7 K KDT Dương Nội', 'Căn 1206 CT7 K KDT Dương Nội', 'Cenpartnership', '0', 1),
(471, NULL, 'Trần Vũ Nhiếp Đam', 'Damtvn@hdavietnam.com ', '0936881860', 'Hà Đông, Hà Nội', 'Sails Tower', 'Cenpartnership', '0', 1),
(472, NULL, 'Ngô Quốc Văn', 'van.ngo@thanhdatexpress.com', '0963237883', 'Công ty Thành Đạt ( lô 46 khu CN Nội Bài xã Quang Tiến - Sóc Sơn - Hà Nội', '281-J1901/HĐMB - HJK CT7', 'Cenpartnership', '0', 1),
(473, NULL, 'Nguyễn Văn Huy', 'vhuy52x4@gmail.com', '0979915800', 'Căn 1710 - Tòa J - Cụm chung cư CT7- Dương Nội - Hà Đông - Hà Nội', 'Căn 1710 - Tòa J - Cụm chung cư CT7', 'Cenpartnership', '0', 1),
(474, NULL, 'Nguyễn Thị Thu Thủy', 'thuynt18@pvcombank.com.vn', '0947641024', '478 Xã Đàn, Nam Đồng, Hà Nội', 'Chung cu PW Dương Nội', 'Cenpartnership', '0', 1),
(475, NULL, 'Trần Thị Phương Oanh', 'tranphuongoanh194@gmail.com', '0985919493', 'CT7H part view risedence', 'Nhà chung cư', 'Cenpartnership', '0', 1),
(476, NULL, 'Nguyễn Thành Trung', 'trungvietnamtour@gmail.com', '0948936926', 'ngõ 79 phố Dương Quảng Hàm,Cầu Giấy,Hà Nội', 'căn hộ R3.3016', 'Cenpartnership', '0', 1),
(477, NULL, 'NGUYỄN VĂN CƯỜNG', 'nvcuong1980@gmail.com', '0915246866', 'P2201, toà H, ParkView Residence, Dương Nội, Hà Đông', 'ParkView Residence', 'Cenpartnership', '0', 1),
(478, NULL, 'Vũ Như Thắng', 'thangvunhu@gmail.com', '932555598', '5 Hang Dau', 'Parkhill P081616', 'Cenpartnership', '0', 1),
(479, NULL, 'Đinh Thị Chiên', 'chiendt@banmaischool.com', '0965350981', 'P. H1502 tòa H chung cư CT7 Dương Nội - Hà Đông - HN', 'Căn hộ chung cư Parkview', 'Cenpartnership', '0', 1),
(480, NULL, 'Hoàng Văn Tài', 'hoangtai86@gmail.com', '0979689839', 'P802, CT7H, KĐT Dương Nội, Hà Đông, Hà Nội', 'park view réidence', 'Cenpartnership', '0', 1),
(481, NULL, 'Ngô Thị Thuý Quỳnh', 'Thuyquynh.tinkt@gmail.com', '0988033330', '183 Nguyễn Lương Bằng, Đống Đa, Hà Nội', 'Căn hộ chung cư', 'Cenpartnership', '0', 1),
(482, NULL, 'Nguyễn hồng phong', 'nguyenphongpt85@gmail.com', '0979666099', 'Trung hoà nhân chính', 'Parkview', 'Cenpartnership', '0', 1),
(483, NULL, 'Hà văn Hữu', 'ha.huu61@gmail.com', '0976266266', '44 ngõ 79 đường Cầu giấy, p. Yên hòa, q. Cầu giấy, tp Hà nội', 'Căn hộ The Goden Palm', 'Cenpartnership', '0', 2),
(484, NULL, 'Phạm Thị Nhài', 'khanhnhai@gmail.com', '0981731888', '801 toà CT7H, KĐT Dương Nội, Hà Đông, Hà Nội', 'Căn hộ ', 'Cenpartnership', '0', 1),
(485, NULL, 'Lê Thị Thu Hoàn', 'thuhoan257@gmail.com', '0934524798', 'Công ty TNHH TM Thăng Uy (HN), Tầng 2, số 98A Ngụy Như Kon Tum, Thanh Xuân, Hà Nội', 'J0205 (Chung cư Parkview Residence)', 'Cenpartnership', '0', 1),
(486, NULL, 'Tạ Ninh', 'ninhvcl@gmail.com', '0983905146', 'Cầu giấy Hà Nội', '', 'Cenpartnership', '0', 0),
(487, NULL, 'Bùi Bảo Nguyên', 'Baonguyen.rz@gmail.com', '0903350493', '1025/13B Cách Mạng Tháng Tám.  P7 . Q Tân Bình. Tp. HCM', 'Chưa có', 'Cenpartnership', '0', 0),
(488, NULL, 'Hà Xuân Quang', 'hxquang1980@gmail.com', '01204061608', 'Long thạnh mỹ q9', '0', 'Cenpartnership', '0', 0),
(489, NULL, 'Trần vĩnh hoàng', 'Gianguyen225@gmail.com', '0912367786', 'Đà nẵng', 'Thẻ gold', 'Cenpartnership', '0', 1),
(490, NULL, 'Văn thiên Tịnh', 'thanhtinh200@gmail.com', '0913499145', '18.08, lô B, khu R7, chung cư Đức Khải, Bình khánh, Quận 2, tp Hồ chí Minh', '', 'Cenpartnership', '0', 30),
(491, NULL, 'Nguyễn Xuân Thủy', 'bsthuybvnt@gmail.com', '0983484931', 'Sn 18 ngõ 242 Thúy Lĩnh, Lĩnh Nam, Hoàng Mai, Hà Nội', '', 'Cenpartnership', '0', 0),
(492, NULL, 'Bùi văn dệt ', 'Buidet866@gmail.com ', '01669884399', 'Ấp tây hòa xã tam bình huyện cai lậy tỉnh tiền giang ', '', 'Cenpartnership', '0', 0),
(493, NULL, 'Bùi văn dệt ', 'Buidet866@gmail.com ', '01669884399', 'Ấp tây hòa xã tam bình huyện cai lậy tỉnh tiền giang ', '', 'Cenpartnership', '0', 0),
(494, NULL, 'Vi Đức Huân', 'vihuan@icloud.com', '0974864505', 'Đồng Mỏ , Chi Lăng, Lạng Sơn', 'Căn hộ chung cư HH3, FLC garden city', 'Cenpartnership', '0', 1),
(495, NULL, 'VIễn Ái Việt Hùng', 'hungkts0101@gmail.com', '0979476839', '838/56 Cách Mạng Tháng 8, P5, Q. Tân Bình', '', 'Cenpartnership', '0', 0),
(496, NULL, 'VIễn Ái Việt Hùng', 'hungkts0101@gmail.com', '0979476839', '838/56 Cách Mạng Tháng 8, P5, Q. Tân Bình', '', 'Cenpartnership', '0', 0),
(497, NULL, 'nguyễn đức dũng', 'dungduylam@gmail.com', '0938794779', '37 tự quyết q tan phu tphcm', '0', 'Cenpartnership', '0', 0),
(498, NULL, 'vi van Thanh', 'Vvanthanh67@gmeil.com', '0988770645', 'Pac Nga ,Bac yen , Son la', '', 'Cenpartnership', '0', 0),
(499, NULL, 'vi van Thanh', 'Vvanthanh67@gmeil.com', '0988770645', 'Pac Nga ,Bac yen , Son la', '', 'Cenpartnership', '0', 0),
(500, NULL, 'Nguyễn thị kim Chi ', 'nguyenkimc27@yahoo.com ', '0948355582', 'số 7 ngách 12 ngõ hòa bình phố khâm thiên, đống đa, hà nội ', 'nhà đất ', 'Cenpartnership', '0', 6),
(501, NULL, 'Nguyen Huu Phuc', 'Phucnguyen19811984@gmail.com', '0938738185', '47/2 Buu Dinh P.5, Q.6', '', 'Cenpartnership', '0', 0),
(502, NULL, 'Thu trang', 'trang.mó2804@gmail.com', '0974280485', 'Hà nội', '', 'Cenpartnership', '0', 0),
(503, NULL, 'Tran thi my hanh', 'hanhcholonhotel@gmail.com', '0906608864', '71 dinh tien hoang .phuong 3.binh thanh', 'Bat  dong san', 'Cenpartnership', '0', 0),
(504, NULL, 'Hồ Hoàng Thái', 'thaibachkim296@gmail.com', '0939266296', 'p16 q8 tp hcm', '', 'Cenpartnership', '0', 0),
(505, NULL, 'quach van quy', 'quy quach1988@gmail.com', '0888118239', 'thuần mỹ ba vì hà nội', '', 'Cenpartnership', '0', 0),
(506, NULL, 'Trần Ngọc Vinh Danh', 'danhtran555@yahoo.com.vn ', '0987260928', '395/7K Minh Phụng P10 Q11 TpHCM', '', 'Cenpartnership', '0', 0),
(507, NULL, 'Ta Tuan Vu', 'Meoto_tn@yahoo.com.vn', '0986127253', '195 định công hạ phường định công quận hoàng mai tp hà nội', '', 'Cenpartnership', '0', 0),
(508, NULL, 'Nguyễn Thu Hằng', 'Putin2242010@yahoo.com.vn', '0902176707', 'Số 4 ngõ 3 phố Phan Phù Tiên phường Cát Linh quận Đống Đa', '', 'Cenpartnership', '0', 0),
(509, NULL, 'Đinh Văn Dương', 'dinhduong.tm91@gmail.com', '0974073075', 'Cầu Giấy - Hà Nội', '', 'Cenpartnership', '0', 0),
(510, NULL, 'do dinh dat', 'trangdat889414@gmail.com', '0962689119', 'phuc tho ha noi', 'the nap dien thoai menh gia 100000', 'Cenpartnership', '0', 10),
(511, NULL, 'Trinh quốc Hsi', 'haidc30@gmail.com', '0983371959', '31 hang than Hà Nội', '', 'Cenpartnership', '0', 0),
(512, NULL, 'Nguyễn Văn Đăng', 'dang2462696@gmail.com', '0914556154', 'gia lâm hà nội', 'zen', 'Cenpartnership', '0', 1),
(513, NULL, 'Hà mạnh Quân', 'quanhamanh@yahoo.com', '0917224477', '24/3/10 hồ tùng mậu, kp bình đường 2, p an binh, tx dĩ an, tỉnh bình dương', '', 'Cenpartnership', '0', 0),
(514, NULL, 'Đỗ Trần Hiếu', 'hieudotran@gmail.com', '0903417700', '112 Quán Thánh - Ba Đình - Hà Nội', 'One18-1807', 'Cenpartnership', '0', 1),
(515, NULL, 'Tạ Hông Minh', 'hamanh2109@gmail.com', '0989058848', '95b Hàng Gà - Hoàn Kiếm - Hà Nội', 'One18-1805 và One18-305', 'Cenpartnership', '0', 2),
(516, NULL, 'Đào Hồng Anh', 'honganhdao112@gmail.com', '0982949527', 'Số 6/9, Ngõ 336, Nguyễn Trãi, Thanh Xuân, Hà Nội', 'Nhà', 'Cenpartnership', '0', 1),
(517, NULL, 'Bùi Thanh Hải', 'bthai93@gmail.com', '01667561279', '603J CT7 khu đô thị Dương Nội Hà Đông Hà Nội', 'Căn hộ 603J', 'Cenpartnership', '0', 1),
(518, NULL, 'Nguyen duc hien', 'Nguyenhiendh8@gmail.com', '0909919487', '206/36a xvtn f21 quan binh thanh', '', 'Cenpartnership', '0', 0),
(519, NULL, 'Huynh thi hoang Diem ', 'Diemhuynh_78@yahoo.com.vn', '0903996085', '440/12 Dương Bình long , p tan qui , Quần tan Phu ', '', 'Cenpartnership', '0', 0),
(520, NULL, 'Nguyễn Hoàng Long', 'hoanglong.ck2.ueh@gmail.com', '0908050879', '29/8/7 Đường số 15, Khu phố 1, Hiệp Bình Chánh, Thủ Đức', '', 'Cenpartnership', '0', 0),
(521, NULL, 'Tran Trong Hieu', 'tranhieua_z@yahoo.com', '0982727029', '17 Hoang Minh Giam P9 Q Phú Nhuân HCM', '', 'Cenpartnership', '0', 0),
(522, NULL, 'Tran Thi Bao Chau', 'chau_cpl@yahoo.com', '0915787097', '12 Lê Quy Dôn Nha Trang Khanh Hoa', 'A1307', 'Cenpartnership', '0', 1),
(523, NULL, 'Trần Thị Bảo Châu', 'chau_cpl@yahoo.com', '0915787097', '12 Lê Quý Đôn - Nha Trang - Khánh Hoà', 'A1307', 'Cenpartnership', '0', 1),
(524, NULL, 'Trần Thị Bảo Châu', 'chau_cpl@yahoo.com', '0915787097', '12 Lê Quý Đôn - Nha Trang - Khánh Hoà', 'A1307', 'Cenpartnership', '0', 1),
(525, NULL, 'quach ngan ha', 'hanganphuonganh@gmail.com', '0989002179', '702/83/11 le duc tho go vap tphcm', 'đất  nền ', 'Cenpartnership', '0', 1),
(526, NULL, 'Nguyễn Thị Phượng', 'phuongtlp0605@gmail.com', '0977996711', 'Số 3 ngõ 1 TDP số 1 Đình, Đại Mỗ, NTL, Hà Nội', 'FLC Garden city', 'Cenpartnership', '0', 1),
(527, NULL, 'Nguyen Ngoc Linh', 'linhailiyu@gmail.com', '0903958669', '781/A20 Le Hong Phong, p12, Q10', 'Nha lien ke Ha Do Centrosa', 'Cenpartnership', '0', 1),
(528, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '61742281249', 'iPgSnMeUjFEeWIzD', 'yxdwYsMtyHxrE', 'Cenpartnership', '0', 9),
(529, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '64922510979', 'cMWQWIsEIkj', 'CuqPdJaTfBJIAHmx', 'Cenpartnership', '0', 7),
(530, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '86158434557', 'goBvXevJCuXmK', 'DRTShNXpDcktkxu', 'Cenpartnership', '0', 9),
(531, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '87140973384', 'wDOZKWQMWZu', 'fwjNUxajgeGPYrWMjfJ', 'Cenpartnership', '0', 3),
(532, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '48976089123', 'qxrAfjGtmrdxry', 'MMdDvoeRCJbrl', 'Cenpartnership', '0', 48),
(533, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '81108525733', 'WQAolsQaCBEszimQv', 'WQALbXpWtwlBxxo', 'Cenpartnership', '0', 49),
(534, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '34172079759', 'sUqBsDgYvyQLEjqi', 'lHOdGENBtiw', 'Cenpartnership', '0', 2),
(535, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '58515810026', 'DvtuueJbkMxktnZo', 'XTWphDEXcTSqGPm', 'Cenpartnership', '0', 8),
(536, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '96795460244', 'KSVyJNhBCzIspQwbQu', 'eVzqBXWTwHQNQ', 'Cenpartnership', '0', 6),
(537, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '85944810574', 'qVzycjCRLSrKCJXa', 'GuJGAZrIJMzDHb', 'Cenpartnership', '0', 1),
(538, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '13150680739', 'BrfzTMGbcgYiil', 'ruYBfpOURPHiKPA', 'Cenpartnership', '0', 85),
(539, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '79099323591', 'WASWJuPWXcNJIE', 'ATszAXgZjSJfFX', 'Cenpartnership', '0', 5),
(540, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '32002691359', 'UniBptuZSIqluxi', 'KqxnRZqdLCMK', 'Cenpartnership', '0', 8),
(541, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '49027007403', 'pkAIrawGryB', 'pFTYaSbUAMeoJ', 'Cenpartnership', '0', 56),
(542, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '98799535541', 'awsuJdNAln', 'hfktpNhJvtLvBd', 'Cenpartnership', '0', 34),
(543, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '63512958860', 'kUKfieTglGfiuxPJu', 'RkolICuRaZKsryV', 'Cenpartnership', '0', 3),
(544, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '90143461669', 'mxyvRRUuvHVfBxiVnz', 'pHarGicmhNNzcnWq', 'Cenpartnership', '0', 10),
(545, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '98012783147', 'NzuignBfQgUCKrKnx', 'lLZCACbpmzUqp', 'Cenpartnership', '0', 43),
(546, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '85247954633', 'YpbcTUflVCPm', 'dIvQtnmOmCkvdHnBwk', 'Cenpartnership', '0', 36),
(547, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '21867679700', 'gLxdjaiYJQrXMqSVsy', 'DKmHOlDPlCInBVvSG', 'Cenpartnership', '0', 92),
(548, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '16937638635', 'IWIqpRunQegY', 'aVzgIfSYUX', 'Cenpartnership', '0', 73),
(549, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '34948280786', 'fDItZuevUhhSvw', 'UYZhZdeNzIJ', 'Cenpartnership', '0', 6),
(550, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '12525889156', 'OjsZbkvdWFDtonJCBMH', 'qKBMJNkEWbFoUJdRkD', 'Cenpartnership', '0', 7),
(551, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '35490771190', 'aNLLShAtPvGVtw', 'ncMAiJAXzWGXp', 'Cenpartnership', '0', 83),
(552, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '92300912999', 'wufJfGddzf', 'PexZIJrzTNoYi', 'Cenpartnership', '0', 28),
(553, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '22930479440', 'CaRVkwfJGLpBKcNVQ', 'AlbzZlqAQEbVpc', 'Cenpartnership', '0', 5),
(554, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '22775566810', 'HgaihpLGnlRWcrtq', 'RSsnlwdwWeRpB', 'Cenpartnership', '0', 94),
(555, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '61590490711', 'IYQJGBbyqXhOYCzv', 'kULeqBpsnZt', 'Cenpartnership', '0', 61),
(556, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '40346352586', 'MPHhgeZsEcRudRUAgsB', 'rSQlqDdsPENS', 'Cenpartnership', '0', 3),
(557, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '31454073616', 'MesCXoRbtgA', 'ChttwKptEekqR', 'Cenpartnership', '0', 6),
(558, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '94043360936', 'qzbLopVtMIwndXHRcgU', 'jjTdoyBLvOa', 'Cenpartnership', '0', 5),
(559, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '65794769359', 'oFOXHjvbNyiTMIU', 'gqlcDtDjRjQhIWg', 'Cenpartnership', '0', 76),
(560, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '41793274241', 'SJmTSOzacKHEQOhsB', 'zhRsNqUvSVGhIM', 'Cenpartnership', '0', 57),
(561, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '30086362379', 'MNmFeKtkbTzIIKl', 'FSMqlCRbtaqljkb', 'Cenpartnership', '0', 9),
(562, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '74633030224', 'hnFTmokwCmW', 'tOvjZASCyYhEiyH', 'Cenpartnership', '0', 5),
(563, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '39933773963', 'RvdNOIzZkhiHR', 'hoNyjrwyZrF', 'Cenpartnership', '0', 5),
(564, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '66108766548', 'WWMpcorlDHemP', 'qetdgCRsSqppORwDi', 'Cenpartnership', '0', 75),
(565, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '67123703279', 'cAxLMtXdkBpJdweIzof', 'obtVkvGIudJNWB', 'Cenpartnership', '0', 55),
(566, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '66976147595', 'SMIaPFtivaPFddifu', 'WFrnVfMLwJ', 'Cenpartnership', '0', 5),
(567, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '13447187829', 'rBPmnjRaBHWauZq', 'ihbkbaDFKhO', 'Cenpartnership', '0', 75),
(568, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '26444205348', 'uUxJwjpLWfl', 'lvLjriXyvSwMgf', 'Cenpartnership', '0', 76),
(569, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '23874659858', 'WoJspaYFja', 'PSzDuhXytqkLwpkMCw', 'Cenpartnership', '0', 92),
(570, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '74994415593', 'MOuQzFaMfDhwKw', 'qvEiRAGkhpocT', 'Cenpartnership', '0', 1),
(571, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '98833820946', 'DRbKovauhVxrQOMdW', 'aiRorHMgMZStPsmea', 'Cenpartnership', '0', 64),
(572, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '83159272509', 'LKaxpRHmqJg', 'vEHzAGfkazmEVDQ', 'Cenpartnership', '0', 23),
(573, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '57132972991', 'KAxADDZpUCDLcI', 'qwBqmfVLHJ', 'Cenpartnership', '0', 2),
(574, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '63247867489', 'khllnsKRcBjHVOMD', 'kWWRKvtMuBogpMDW', 'Cenpartnership', '0', 5),
(575, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '96935956806', 'bhmRCoHpKV', 'bJiNDEbEdntxaIRY', 'Cenpartnership', '0', 29),
(576, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '94052722256', 'wCQEbQCqmJdOyalI', 'hVwvPgqnZBXwaRaeJ', 'Cenpartnership', '0', 85),
(577, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '46221683065', 'CShdgDbfUz', 'GgdebvWtEbLPl', 'Cenpartnership', '0', 36),
(578, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '53034373445', 'pxweZsYsYspOYp', 'ZheGzhfjALhzovuNALM', 'Cenpartnership', '0', 72),
(579, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '41935105383', 'cBdNoVfrPcjkrG', 'WMnWqPzlHmojCauZYby', 'Cenpartnership', '0', 4),
(580, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '95674016605', 'xYMHGNyszs', 'DqgRjJmTCJkc', 'Cenpartnership', '0', 4),
(581, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '46725057743', 'mAEyOVVsNRKuacKgW', 'EDMxCcCcDGSdTpxbucI', 'Cenpartnership', '0', 55),
(582, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '48654813608', 'CqJYTFCvcOBXWwLGd', 'dCnFKshKBSn', 'Cenpartnership', '0', 78),
(583, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '15980039453', 'bckdiMVPvBw', 'QEEmAsyibNid', 'Cenpartnership', '0', 72),
(584, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '76370008883', 'hUnRxjQvBTxsRgXj', 'sffusghdEngqo', 'Cenpartnership', '0', 1),
(585, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '10666473291', 'vYhreYmsBNdMnqvPg', 'jdxRNspLHtzYIvrMpc', 'Cenpartnership', '0', 62),
(586, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '35090354909', 'VUnSRqOVybqZTtgF', 'spVWzqSNeaNg', 'Cenpartnership', '0', 8),
(587, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '50560482014', 'yIyzzENPBpoDzNLb', 'cjnHpxkQfmajdEJ', 'Cenpartnership', '0', 2),
(588, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '25830880902', 'mZILLLnwajQmXuiQ', 'ZAIqDAUFtDZ', 'Cenpartnership', '0', 59),
(589, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '41685390292', 'EaTFrxwNaQjVYTyWbQb', 'IUlaDFOUVqGFh', 'Cenpartnership', '0', 66),
(590, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '54837852771', 'YcoLucSXvHASjATuPy', 'QvyvmVVuhXCnB', 'Cenpartnership', '0', 3),
(591, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '61075270637', 'poVBSTswwkAZZC', 'rSkHStNrznJLHsw', 'Cenpartnership', '0', 14),
(592, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '54146760525', 'EDPQBooOhL', 'NNXoEZUUQDSYIY', 'Cenpartnership', '0', 44),
(593, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '66786718336', 'rLtSESUmPtCdljnAdT', 'OjfEFREoSmCstprBo', 'Cenpartnership', '0', 69),
(594, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '77553215831', 'nHciAcpRGTqwBg', 'CVFuiiZZdhuIZ', 'Cenpartnership', '0', 7),
(595, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '66384108245', 'SwIpkoOuzPvLEYX', 'gxjeNJmdhlDmtSUOb', 'Cenpartnership', '0', 55),
(596, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '50584045806', 'qhrsqWjGnNRBqYRIFc', 'TXjLjPRabDxQiRZ', 'Cenpartnership', '0', 5),
(597, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '95768588534', 'eTFOPhzFtyUZG', 'tefaFWgTOcen', 'Cenpartnership', '0', 15),
(598, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '85087700971', 'CgOyDDUJyPa', 'KzKrCOCBnRQF', 'Cenpartnership', '0', 4),
(599, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '96808123064', 'oUcSuSYwmdhfWTHD', 'ULJwPDnViNjqDVRj', 'Cenpartnership', '0', 22),
(600, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '29221659677', 'lxCfgXtLmbloxmLAWP', 'eoQAagMaicOa', 'Cenpartnership', '0', 82),
(601, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '26719763525', 'cjApTHopnLbtRE', 'fEbvNQsNKJqXawdaLCK', 'Cenpartnership', '0', 59),
(602, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '60383983292', 'LWNcRFhLWuMNgZVI', 'JboPipwrOWCgltJW', 'Cenpartnership', '0', 6),
(603, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '55655495111', 'YLMqPgeMyyxmSBb', 'dQwwydmbsWODyw', 'Cenpartnership', '0', 4),
(604, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '82424435994', 'BVUfkbRgMBSpWxxFR', 'TcsXPsUjAFdSUWmnN', 'Cenpartnership', '0', 91),
(605, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '84486072545', 'MbeGenvKQzn', 'ksuWRrIumzOzxdChMhz', 'Cenpartnership', '0', 99),
(606, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '96734657903', 'SfUoKEltirvWJzmtAZ', 'DaLypjDHkVADc', 'Cenpartnership', '0', 27),
(607, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '39760489897', 'ePekuapRhZMoNzKa', 'FfDxTNnHfxXUoRJEn', 'Cenpartnership', '0', 14),
(608, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '43672008100', 'ztzInFEgHphNHpbq', 'KIqTSYijLdClxoPz', 'Cenpartnership', '0', 6),
(609, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '59335000979', 'uOefmALoJpPaiOGKG', 'GoIEjquxPh', 'Cenpartnership', '0', 8),
(610, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '96799166852', 'xOlDfuGruCtlpqfut', 'NMuHpIhTIYDxvFiiigf', 'Cenpartnership', '0', 1),
(611, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '48144356892', 'vdulKyloqUIHdnkG', 'RRnXnMmEihpsEsRrVIV', 'Cenpartnership', '0', 45),
(612, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '18700072894', 'AcQUbFREenHDqhALI', 'ThviYABKpXYbbBEYA', 'Cenpartnership', '0', 2),
(613, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '55950670679', 'WPGKQLrMlyMtNNUFFLz', 'cIQOvCzjEerlq', 'Cenpartnership', '0', 51),
(614, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '54742226398', 'dtWziHBMpqpAoVaYbgs', 'IwUyeQjdPtYltHARw', 'Cenpartnership', '0', 91),
(615, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '27737500966', 'xSLgAxnVjmdETWK', 'VpxlnRLIRCLqr', 'Cenpartnership', '0', 3),
(616, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '58386643575', 'kvFEcABcVsJdJeGmz', 'WhCbryylrrsLxCkI', 'Cenpartnership', '0', 30),
(617, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '25599604510', 'amHmbsxaife', 'PquhHnosTORNYFZaAn', 'Cenpartnership', '0', 66),
(618, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '10836561183', 'pCJTbSfqZlCfTpeIhn', 'cLekoVTESG', 'Cenpartnership', '0', 5),
(619, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '55999711543', 'bUtISOnvUhJsS', 'wIuBkpudwrnmpoZIqfd', 'Cenpartnership', '0', 88),
(620, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '93820087331', 'oVzptxFufxQWFZca', 'zOsARKCWeiNAZ', 'Cenpartnership', '0', 1),
(621, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '34407966116', 'mLQZErYGryy', 'qTPMZHkzcVgaZsjrQD', 'Cenpartnership', '0', 85),
(622, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '51824874099', 'IDtSytjJEK', 'cSzgoqPVwCqkGekFn', 'Cenpartnership', '0', 1),
(623, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '25996070008', 'DrADzYJxtqIKvLF', 'FojruVyhZKDBy', 'Cenpartnership', '0', 10),
(624, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '34585013403', 'FghbwyfsPanRsRtndbn', 'JYyiDXgnLqzwP', 'Cenpartnership', '0', 44),
(625, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '53586314508', 'FyvTaYNgywwxsjEwq', 'avPewhGkpRZXQnpl', 'Cenpartnership', '0', 26),
(626, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '45272340171', 'jEGIZwvukI', 'YPhbmsjRnflxOyZyIT', 'Cenpartnership', '0', 42),
(627, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '75695584263', 'yhdZbibmiFMyLuZUAqk', 'mJhxLAxchplMmV', 'Cenpartnership', '0', 7),
(628, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '50432646435', 'OlqprsePwplG', 'MjgtdDhjPO', 'Cenpartnership', '0', 94),
(629, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '63058549423', 'DenWfleXKXyFYZFEpZa', 'iRkrkSEnGapUh', 'Cenpartnership', '0', 7),
(630, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '27569685584', 'gXspfcAoKMH', 'jKmNUvSvdflVf', 'Cenpartnership', '0', 37),
(631, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '86670734630', 'etDIEAzCndC', 'jEVLPknyXIW', 'Cenpartnership', '0', 8),
(632, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '37620105964', 'ifqsbHNmyjloZXIyFt', 'AiHtyWpxiisHU', 'Cenpartnership', '0', 1),
(633, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '23313050947', 'JSdkotLshFgZB', 'lEgQNCBjjQEsNQ', 'Cenpartnership', '0', 19),
(634, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '90446489970', 'yPvfekyLAiJBT', 'PxqTozaTDNlKEFdw', 'Cenpartnership', '0', 85),
(635, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '90359957035', 'cHqiTMnwBXiewVwcKTy', 'anMGaSXDRwIXoRaYJOA', 'Cenpartnership', '0', 42),
(636, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '46466209205', 'FFljsKvfRgqjrOdWwmN', 'wVaxyxeWPQzoPN', 'Cenpartnership', '0', 54),
(637, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '17949138347', 'sDwlRNYSOZnUHa', 'hvnOVXpqVXE', 'Cenpartnership', '0', 3),
(638, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '22967735378', 'fypWbtyIuSvWIRNLr', 'RmFqXpVMgh', 'Cenpartnership', '0', 15),
(639, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '97111173022', 'xIgSWXCpTtyORniKhE', 'qIeDgBKbJaSrJgZbRn', 'Cenpartnership', '0', 70),
(640, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '95643520414', 'IXvxAhSrWMfUfveT', 'nTpExWMlnxXde', 'Cenpartnership', '0', 75),
(641, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '47688910297', 'cNaRxqepSQLhKif', 'eoXWCZhamrsFNJu', 'Cenpartnership', '0', 74),
(642, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '27708434387', 'KVqMjByJWSl', 'PljxqpKMhmlmH', 'Cenpartnership', '0', 8),
(643, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '24906351060', 'GUSCpTENTbxBCuxu', 'UOeiitLVyZEuwXZFIX', 'Cenpartnership', '0', 1),
(644, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '18487990093', 'MZKnkNSkEcpdpwMuw', 'yuTvEfIwyX', 'Cenpartnership', '0', 22),
(645, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '51068404419', 'zQkWmpMjOLyXmnN', 'ueIBLkslTr', 'Cenpartnership', '0', 68),
(646, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '26670647367', 'zOCaJONwbWZfIxXt', 'vjHPoKuuvGM', 'Cenpartnership', '0', 4),
(647, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '98892894349', 'pcVFZBxhjXBEq', 'TepFcSFuNWlKnF', 'Cenpartnership', '0', 97),
(648, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '72057566369', 'RoDxyuwjLLKF', 'MKaXpjwZasMnX', 'Cenpartnership', '0', 94),
(649, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '59400766881', 'aXBtoEyOmVVtQSbmm', 'wilnVyFnwuSdH', 'Cenpartnership', '0', 7),
(650, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '36733183957', 'uvjfWsMfdaCrKuopt', 'wPpKbBRlnESyBr', 'Cenpartnership', '0', 6),
(651, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '62232203059', 'BIHEEWfyimsycC', 'KyCDyVyHIiSgyitGdU', 'Cenpartnership', '0', 8),
(652, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '92196979173', 'fbnDXHVfzF', 'QyXnPbbCEuyTZ', 'Cenpartnership', '0', 7),
(653, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '17053824779', 'kmkdgdxEeFoSM', 'ZJOLkRlXzhVIUrdQ', 'Cenpartnership', '0', 1),
(654, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '67939175667', 'lIRUhtajfML', 'KWzvlFDsZIiIEbOfYH', 'Cenpartnership', '0', 7),
(655, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '53907889161', 'XPUdCCdXINXFkfULK', 'WXsbAnoLlzAIDTPIiyT', 'Cenpartnership', '0', 24),
(656, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '53742676175', 'CPgfOPkuqMZchEay', 'LDKrDzSPdx', 'Cenpartnership', '0', 5),
(657, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '28611878362', 'xFsYUMiOPJo', 'dWTrzZUqPlrKoLWwq', 'Cenpartnership', '0', 7),
(658, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '99366970860', 'gnrlGHzjwAwQ', 'aAbAsXHpIC', 'Cenpartnership', '0', 1),
(659, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '90075000420', 'AEGOEdGbKeDmaXR', 'dxFmZXYrvdGoxcxH', 'Cenpartnership', '0', 71),
(660, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '60979231892', 'tEuEnzJxQWkMAllGf', 'RRWAnKHTNKmwVHr', 'Cenpartnership', '0', 21),
(661, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '74253748245', 'AwCqIjGoHYzXUJ', 'QxELvHvreVPXtIXDgb', 'Cenpartnership', '0', 98),
(662, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '50944725270', 'eDcwfhkkrVwHGBhNJ', 'DVhLdEKrzJ', 'Cenpartnership', '0', 42),
(663, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '78839493542', 'QeLfzifgnlWfubOHc', 'qXPyycqLvIpqHWuZUK', 'Cenpartnership', '0', 78),
(664, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '87795635432', 'PWgNaWkXzchBqH', 'SdKjoUyEgi', 'Cenpartnership', '0', 74),
(665, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '79802297297', 'XkgAabBinPdalHj', 'ohlTvaMqmNjvBfs', 'Cenpartnership', '0', 6),
(666, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '63607425069', 'RCvHOuYGmNMb', 'jRYkAbleFwtEa', 'Cenpartnership', '0', 4),
(667, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '91289235974', 'RpVKJtIKrkDOFuZ', 'RacipPFgbldX', 'Cenpartnership', '0', 9),
(668, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '71896082942', 'sbLPjaegyfgirIwku', 'zeqfChfIDy', 'Cenpartnership', '0', 39),
(669, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '29368556600', 'zWUwdmibqVbByv', 'ZVpNMwCAsYBbDdvU', 'Cenpartnership', '0', 5),
(670, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '62348021598', 'sBhxXriNsjCmkahks', 'cLPWWAFqdVn', 'Cenpartnership', '0', 73),
(671, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '18182782841', 'pzjmKXNJrydNqSWd', 'InHiDAXJqcq', 'Cenpartnership', '0', 4),
(672, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '51517019533', 'ZBbRGRGPMERHOOoHuTk', 'umeCXWZfGJrOvf', 'Cenpartnership', '0', 3),
(673, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '61357800179', 'yOqYfvSGDEqEcwLL', 'EXsenCsYcyQsl', 'Cenpartnership', '0', 94),
(674, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '12433403058', 'qnvRVekqnOaFvZsWmd', 'DtgKBzumQNuNLtA', 'Cenpartnership', '0', 6),
(675, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '97100668719', 'RPlHLjaVXfRJQ', 'LMVPmimIDxODmz', 'Cenpartnership', '0', 5),
(676, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '44090365465', 'ChihAhdaynUoy', 'jhIVNolroCwkWJMpqDY', 'Cenpartnership', '0', 12),
(677, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '50274125035', 'zlSExwThdtFwMo', 'CzasZMVxAOOlXo', 'Cenpartnership', '0', 67),
(678, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '38938756521', 'GyQtyRbpqqfwOjPV', 'ewBxlJWdCLvMpQEsMf', 'Cenpartnership', '0', 8),
(679, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '27432539731', 'VgjHjyvQpzxJLH', 'fZcTrCDetE', 'Cenpartnership', '0', 4),
(680, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '45905252896', 'pQCCdWyIPBHFbFRuL', 'oFkyzZIsTrQzOpZwur', 'Cenpartnership', '0', 2),
(681, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '52936041020', 'fJycgZgDUdVaCBo', 'PUzhbWbnYrMggJYqv', 'Cenpartnership', '0', 64),
(682, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '84928096264', 'znheYWRkHYNCu', 'TlTBSpplKOffeAEtLW', 'Cenpartnership', '0', 21),
(683, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '81401860920', 'yZxkqrLHIQV', 'DspKvvaFaoVudhfuteh', 'Cenpartnership', '0', 20),
(684, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '34001565311', 'ceBLgFzIwVfTSTEclZG', 'ZQIhydLCAg', 'Cenpartnership', '0', 9),
(685, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '15159978890', 'rZYTPMAAgem', 'EPFsFgjOknRiYuO', 'Cenpartnership', '0', 67),
(686, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '90484200123', 'CQieLAUkrNqsq', 'yjCfUGJqlwxdeO', 'Cenpartnership', '0', 4),
(687, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '35769386172', 'gPpfPscHhXbi', 'bwJVDkEkWLJqIrmLFe', 'Cenpartnership', '0', 45),
(688, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '95172294521', 'YNgLzTLGgOeio', 'xCsdJuhgRYeorKML', 'Cenpartnership', '0', 2),
(689, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '13668081461', 'UMwltQXVYLhS', 'xfusqbKsnQDcIXm', 'Cenpartnership', '0', 5),
(690, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '99632966835', 'gNyQoPnpUapMaZbXPJ', 'LoJzmjEIiVuZmjWnQ', 'Cenpartnership', '0', 26),
(691, NULL, 'Barnypok', 'jimos4581rt@hotmail.com', '15670330712', 'JPNspyKXzNzTyh', 'sqPwIpLDMqPyX', 'Cenpartnership', '0', 91),
(692, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '35432882340', 'jyzEoIjsCvMXAjpSr', 'xQXHDSdtowgrdPpHAe', 'Cenpartnership', '0', 3),
(693, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '27620252169', 'WXQonSzvKYQz', 'cXBaeSyTfkF', 'Cenpartnership', '0', 1),
(694, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '83226191226', 'JWvRWtawHyj', 'SjUypunjGgM', 'Cenpartnership', '0', 2),
(695, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '55145239202', 'nllmNgAldksKjnkrO', 'LiceHPOsoM', 'Cenpartnership', '0', 97),
(696, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '61029196459', 'hsINmSHLKhfhJ', 'UxwfxMnGIBz', 'Cenpartnership', '0', 8),
(697, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '21678871461', 'temFdHcdeq', 'OevEZRJIEANYTVA', 'Cenpartnership', '0', 1),
(698, NULL, 'JimmiXzS', 'jfvynms4281rt@hotmail.com', '71088252173', 'PtqKLQmsCujMRRGJGQ', 'WvEPROfTREQxRLQu', 'Cenpartnership', '0', 93),
(699, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '81283811630', 'uAPfXQplhs', 'ovqHiJIKtzciux', 'Cenpartnership', '0', 6),
(700, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '15979692061', 'ZuNgizSYUqXCiYE', 'JwtHzUvaHxcgaD', 'Cenpartnership', '0', 60),
(701, NULL, 'JimmiXzS', 'jfvynms4281rt@hotmail.com', '17755178988', 'ZQfTnufZQpNfw', 'cxLvMFTlQnlZhE', 'Cenpartnership', '0', 4),
(702, NULL, 'JimmiXzS', 'jfvynms4281rt@hotmail.com', '52409313874', 'AMtYbCosXtGNBuUhL', 'HpgJPXFftMa', 'Cenpartnership', '0', 2),
(703, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '20677466504', 'jJiBZTFESURW', 'ieMHuhkGFFDDDoq', 'Cenpartnership', '0', 1),
(704, NULL, 'JimmiXzS', 'jfvynms4281rt@hotmail.com', '14459740330', 'bXYqaNAlTDEvF', 'utDoxiVKBuXVIv', 'Cenpartnership', '0', 14),
(705, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '17128547547', 'xeELVDtDTzHOKkDEr', 'HdtIHLCUSKw', 'Cenpartnership', '0', 58),
(706, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '65140869012', 'xNQcezLdqTYfpcV', 'WjBOJLQjuhhVMqqg', 'Cenpartnership', '0', 34),
(707, NULL, 'JimmiXzS', 'jfvynms4281rt@hotmail.com', '59599283377', 'iLYJgRfSoFrCl', 'aPzLFgHZEh', 'Cenpartnership', '0', 5),
(708, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '16247456071', 'skggdFBdNpAAtCW', 'vQNFJSxKFxQDZ', 'Cenpartnership', '0', 91),
(709, NULL, 'JimmiXzS', 'jfvynms4281rt@hotmail.com', '68915039305', 'DsIfHLMTAMqTb', 'XAIjxpgFlEForPnZ', 'Cenpartnership', '0', 39),
(710, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '75748838761', 'vGGUeQLLvof', 'XUVCMWaihXfImkc', 'Cenpartnership', '0', 29),
(711, NULL, 'Barnypok', 'jfvynms4281rt@hotmail.com', '11796820995', 'ueqwDlRkPbGWdXJ', 'jKzixyrbdq', 'Cenpartnership', '0', 51),
(712, NULL, 'JimmiXzS', 'jfvynms4281rt@hotmail.com', '91075930989', 'RcWIZCTfnJVzISAsl', 'gLHqVBDddk', 'Cenpartnership', '0', 1),
(713, NULL, 'JimmiXzS', 'jfvynms4281rt@hotmail.com', '60692042733', 'bdCiKQmCDsBDjEeJ', 'LOpFOfMyoqrKM', 'Cenpartnership', '0', 94),
(714, NULL, 'Lê Nguyễn Tuấn Thành', 'le.nguyen.tuan.thanh@gmail.com', '0898158945', 'Căn 304, CT7J, Tiểu Khu Parkview Residence', 'Căn hộ 304, CT7J, Tiểu Khu Parkview Residence', 'Cenpartnership', '0', 1),
(715, NULL, 'Lê Nguyễn Tuấn Thành', 'le.nguyen.tuan.thanh@gmail.com', '0898158945', 'Căn 304, CT7J, Tiểu Khu Parkview Residence', 'Căn hộ 304, CT7J, Tiểu Khu Parkview Residence', 'Cenpartnership', '0', 1),
(716, NULL, 'Trần Quốc Thắng', 'tranquocthang688@gmail.com', '0906568688', 'Đông Ngạc, Từ Liêm, Hà Nội', 'Căn Hộ', 'Cenpartnership', '0', 0),
(717, NULL, 'Do Van Tan', 'dv.tanta@gmail.com', '0965994895', 'dv.tanta@gmail.com', '“Swing For The Children’s Tet 2017”', 'Cenpartnership', '0', 12),
(718, NULL, 'TRẦN MINH TUẤN', 'tuantmlee@yahoo.com', '0913779598', '5.13 TẦNG 6, C/C 62 BÀ HOM P13 Q6 TP.HCM', '0', 'Cenpartnership', '0', 0),
(719, NULL, 'Bùi Văn Thắng', 'thangbui88tb@gmail.com', '0988739266', 'Cổ nhuế từ liêm hà nội', '', 'Cenpartnership', '0', 0),
(720, NULL, 'gffdgsd', 'fadlsjh@aaa.com', '0986873243', 'fgds', 'asdf', 'Cenpartnership', '0', 3),
(721, NULL, 'Bùi Tiến Dũng', 'buitiendung10@rocketmail.com', '974796899', '9/28 TT VIEN CNQD NGO 643 PHAM VAN DONG, Cổ Nhuế 1', 'Căn hộ 2310 tòa A2 CC An Bình TP Giao lưu', 'Cenpartnership', '0', 1),
(722, NULL, 'Trần Minh Tuấn', 'tuantmlee@yahoo.com', '0913779598', '506A C/C 62 Bà Hom P13 Q6 TP.HCM', '0', 'Cenpartnership', '0', 0),
(723, NULL, 'TRẦN VĂN QUYỀN', 'tvquyen.vcu@gmail.com', '0987882323', 'HÀ NỘI', '', 'Cenpartnership', '0', 0),
(724, NULL, 'JimmiXzSw', 'jimos4581rt@hotmail.com', '85304141902', 'MxIaaeOYrkewqs', 'GkerosFDxlpe', 'Cenpartnership', '0', 22),
(725, NULL, 'Lê Đức Trường', 'truongld@sunhouse.com', '0904646008', 'Sơn Đồng, Hoài Đức, Hà Nội', 'Flc garden city', 'Cenpartnership', '0', 1),
(726, NULL, 'Doan thanh tuyen', 'Doanthanhtruyen540@gmail.com', '0939369099', '164,ap Cho, Trung an,cu chi, hcm', 'Tim hieu', 'Cenpartnership', '0', 1),
(727, NULL, 'Đỗ Phước Viễn', 'job.dpvien|@gmail.com', '01649308386', 'krongpak-daklak', '', 'Cenpartnership', '0', 0),
(728, NULL, 'Võ Thu Tâm ', 'vothutam2010@yahoo.com.vn', '0908329346', '92/6 Ba Vân -Phường 14-Quận Tân Bình- TP HCM', '8- LK7', 'Cenpartnership', '0', 0),
(729, NULL, 'BÙI XUÂN THÀNH', 'thanhbui774925@gmail.com', '0906774925', '57 ĐƯỜNG 3/2, P11, QUẬN 10 - HCM', '', 'Cenpartnership', '0', 0),
(730, NULL, 'Trương Đức Kiên', 'truongduckien1994@gmil.com', '01676873641', 'Bình Hung, Bình Chánh', '', 'Cenpartnership', '0', 0),
(731, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '39699008484', 'AjdPydVuxVVnprzW', 'WTZWsPlPrVsDGQizZ', 'Cenpartnership', '0', 5),
(732, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '95520870518', 'ntxWsevjPoMJjcP', 'VrQALEjpbjmq', 'Cenpartnership', '0', 2),
(733, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '44352850988', 'ysfadenIZrJM', 'jOwOUFCuMJjTMRu', 'Cenpartnership', '0', 17),
(734, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '99959971433', 'YkSbFFGbIWN', 'JmpdfQBvyVRfKj', 'Cenpartnership', '0', 5),
(735, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '94602846825', 'IvmHihtXwCyvnQEQcZZ', 'ooFEuHsAEbbDMJy', 'Cenpartnership', '0', 31),
(736, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '37999651213', 'WtCbjxxxmjh', 'zbwbESKRKtLBeZxKztI', 'Cenpartnership', '0', 34),
(737, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '61324359334', 'kYevcISDZlBDbLyiW', 'XSZhtARrLnblhLDpgf', 'Cenpartnership', '0', 4),
(738, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '11211546464', 'KvUXWjdnQXYBJJufg', 'xfosptBuYglbEPS', 'Cenpartnership', '0', 6),
(739, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '91723615132', 'zqFlacyarf', 'zivVXKdvNORNb', 'Cenpartnership', '0', 92),
(740, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '30303487519', 'LcnUJiXTHRxpg', 'snCuoSexolh', 'Cenpartnership', '0', 41),
(741, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '24472634695', 'eYSHDQuRQfQzeh', 'UieJLDxxUdTvsHVTgU', 'Cenpartnership', '0', 3),
(742, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '30297987413', 'cXToUPekiKZXF', 'uBoUUJVptblzabP', 'Cenpartnership', '0', 9),
(743, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '32665668956', 'HYMKQcNeoGB', 'OpLHhrZrknxLjWP', 'Cenpartnership', '0', 5),
(744, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '52728404769', 'BSmBxxIJFElAsU', 'eFiWlsqGPeLDnZEHgZ', 'Cenpartnership', '0', 59),
(745, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '64779878474', 'SPYBLIAqMy', 'yBHyytFUsxFAaJxyKPQ', 'Cenpartnership', '0', 10),
(746, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '36004323863', 'tdYjUkImIbYTxl', 'JdzkOMNyGPtkikW', 'Cenpartnership', '0', 14),
(747, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '64571117762', 'AsBnPBURJFLq', 'teWoGEzKPkRuCp', 'Cenpartnership', '0', 9),
(748, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '46468699502', 'UPFpkcIzHcbybW', 'YrusXFcwKIjtzFCmYtv', 'Cenpartnership', '0', 79),
(749, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '69101816136', 'ilDGkIFvQHLmufjbir', 'pcLJQumCaUKHcnJdT', 'Cenpartnership', '0', 9),
(750, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '26222512834', 'BCjCxsiWebUVg', 'loXhgWQLmooKunzbJEW', 'Cenpartnership', '0', 11),
(751, NULL, 'Barnypok', 'jimos4581rt1@hotmail.com', '98653099139', 'QVSkpNEKHhNK', 'ObLXwLumVTBMVQJX', 'Cenpartnership', '0', 9),
(752, NULL, 'ĐẶNG HỮU PHÁT', 'dangphat2511@gmail.com', '0932666757', '283/29/2 Bông Sao F5 Q8 TpHCM', '0', 'Cenpartnership', '0', 0),
(753, NULL, 'Nguyễn Thị Thuý', 'Nt.thuy152@gmail.com', '0905609759', '40/60/12A Nguyễn Khoái, Phường 2, Quận 4', 'Melosa', 'Cenpartnership', '0', 0),
(754, NULL, 'Nguyễn Ngọc Chiến', 'Dautu689@gmail.com', '0888644292', 'Phú Minh Sóc Sơn Hà Nội', 'Eurowindow River Park', 'Cenpartnership', '0', 1),
(755, NULL, 'Nguyễn Huy Tá', 'huytahoa@gmail.com', '0948511617', '141 Hồ Đắc Di - Nam đồng - Đống Đa - Hà Nội', '', 'Cenpartnership', '0', 0),
(756, NULL, 'Doãn Mạnh Nhật', 'manhnhatauvnpro@gmail.com', '0909306668', 'Hà nội', 'Gemek Premium', 'Cenpartnership', '0', 1),
(757, NULL, 'Nguyễn Mạnh Linh', 'Nguyenmanhlinh2607@gmail.com', '0912779911', 'Phòng 211 chung cư A14B2, khu đô thị Nam Trung Yên, Yên Hoà, Cầu Giấy, HN', 'The Garden City', 'Cenpartnership', '0', 1),
(758, NULL, 'Vũ Xuân Bách', 'bachvx@outlook.com', '098 780 13 93', '137 nguyễn ngọc vũ- trung  hòa cầu', 'Gelexia', '1', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `value_multi` mediumtext COLLATE utf8_unicode_ci,
  `special` tinyint(1) DEFAULT '0',
  `selloff` float DEFAULT '0',
  `publish_date` datetime DEFAULT '0000-00-00 00:00:00',
  `synopsis` mediumtext COLLATE utf8_unicode_ci,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `districts_id` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT '255',
  `status` tinyint(1) DEFAULT '0',
  `block_noibat` tinyint(1) DEFAULT '0',
  `block_moi` tinyint(1) DEFAULT '0',
  `block_hot` tinyint(1) DEFAULT '0',
  `block_dongkhach` tinyint(1) DEFAULT '0',
  `cat_id` int(11) DEFAULT NULL,
  `sources_id` int(11) DEFAULT NULL,
  `manu_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `quimo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluongcan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dientich` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_banner_mobile` mediumtext COLLATE utf8_unicode_ci,
  `picture_multi_home` mediumtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem`
--

INSERT INTO `diadiem` (`id`, `code`, `name`, `alias`, `picture`, `thumb`, `picture_multi`, `value_multi`, `special`, `selloff`, `publish_date`, `synopsis`, `author`, `content`, `districts_id`, `hits`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_moi`, `block_hot`, `block_dongkhach`, `cat_id`, `sources_id`, `manu_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `quimo`, `soluongcan`, `dientich`, `color`, `picture_banner`, `picture_banner_mobile`, `picture_multi_home`) VALUES
(388, NULL, 'Công viên giải trí sôi động ', 'cong-vien-giai-tri-soi-dong', '/public/files/editor-upload/images/tien-ich/img-gallery07.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/img-gallery07.jpg', 'a:1:{i:0;a:2:{i:0;s:53:\"/public/files/editor-upload/images/product/TET200.jpg\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div style=\"text-align: justify;\"&gt;\r\n		&lt;div&gt;\r\n			&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n				&lt;img src=\"/public/files/editor-upload/images/tien-ich/bg-pk-saigon.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n			&lt;br style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\" /&gt;\r\n			&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 63, '2016-06-16 02:06:26', 55, '2019-10-09 10:10:26', 55, 3, 1, 0, 0, 0, 0, 77, NULL, '', '', '', '', '', 'vi', '', '', '', '', '', '', NULL),
(728, NULL, 'Hàng trăm quán ăn đậm chất Hà Nội', 'hang-tram-quan-an-dam-chat-ha-noi', '/public/files/editor-upload/images/tien-ich/hanoi/Little-Hanoi-Cong-chao-Khue-Van-Cac.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hanoi/Little-Hanoi-Cong-chao-Khue-Van-Cac.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.', NULL, '&lt;div&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n		Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n	&lt;div class=\"b__center--conference\" style=\"box-sizing: border-box; margin-bottom: 50px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;div class=\"b__conference--box\" style=\"box-sizing: border-box; position: relative; margin-bottom: 10px;\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/tien-ich/img-pk-hn002.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__conference--boxs\" style=\"box-sizing: border-box; display: flex; flex-direction: row; margin: 0px -5px;\"&gt;\r\n			&lt;img class=\"b__conference--img\" src=\"/public/files/editor-upload/images/tien-ich/img-pk-hn003.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; flex-basis: 50%; max-width: 50%; padding: 0px 5px; width: 100%;\" /&gt;&lt;img class=\"b__conference--img\" src=\"/public/files/editor-upload/images/tien-ich/img-pk-hn004.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; flex-basis: 50%; max-width: 50%; padding: 0px 5px; width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-09-24 04:09:53', 47, '2019-11-08 03:11:55', 55, 3, 1, 0, 0, 0, 0, 77, NULL, '4', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/tien-ich/img-dulichgiaitri04.jpg', '', NULL),
(729, NULL, 'Quảng trường <br/><strong>Đông Kinh Nghĩa Thục</strong>', 'quang-truong-br-strong-dong-kinh-nghia-thuc-strong', '/public/files/editor-upload/images/tien-ich/hanoi/Little-Hanoi-Quang-truong-dong-Kinh-Nghia-Thuc.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hanoi/Little-Hanoi-Quang-truong-dong-Kinh-Nghia-Thuc.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;img src=\"/public/files/editor-upload/images/tien-ich/bg-pk-saigon.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;br style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\" /&gt;\r\n	&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-09-24 04:09:02', 47, '2019-11-08 03:11:45', 55, 1, 1, 0, 0, 0, 0, 77, NULL, '4', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/tien-ich/img-pk-hn002.jpg', '', NULL),
(730, NULL, 'Cổng chào<br/><strong> Khuê Văn Các</strong>', 'cong-chao-br-strong-khue-van-cac-strong', '/public/files/editor-upload/images/tien-ich/hanoi/Little-Hanoi-Cong-chao-Khue-Van-Cac.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hanoi/Little-Hanoi-Cong-chao-Khue-Van-Cac.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;img src=\"/public/files/editor-upload/images/tien-ich/img-modal.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;br style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\" /&gt;\r\n	&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-09-24 04:09:40', 47, '2019-11-08 03:11:39', 55, 2, 1, 0, 0, 0, 0, 77, NULL, '4', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/tien-ich/bg-pk-saigon.jpg', '', NULL),
(389, NULL, 'Công viên chủ đề sôi động', 'cong-vien-chu-de-soi-dong', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-06.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-06.jpg', 'a:1:{i:0;a:2:{i:0;s:54:\"/public/files/editor-upload/images/product/net-100.JPG\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div style=\"text-align: justify;\"&gt;\r\n		&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n			&lt;div class=\"b__box--images pdb50\" style=\"box-sizing: border-box; padding-bottom: 50px; display: flex; flex-wrap: wrap; margin: 0px -5px;\"&gt;\r\n				&lt;div class=\"flex-column flex-column__left\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important;\"&gt;\r\n					&lt;div class=\"flex-column__top\" style=\"box-sizing: border-box; height: calc(100% - 145px); margin-bottom: 10px;\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi05.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n					&lt;div class=\"flex-column__bottom\" style=\"box-sizing: border-box;\"&gt;\r\n						&lt;div class=\"b__box--caption\" style=\"box-sizing: border-box; background: rgb(0, 117, 128); padding: 30px 50px;\"&gt;\r\n							&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(255, 255, 255); line-height: 30px;\"&gt;\r\n								Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat&lt;/p&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"flex-column flex-column__right\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important;\"&gt;\r\n					&lt;div class=\"flex-column__top\" style=\"box-sizing: border-box; margin-bottom: 10px; height: calc(50% - 5px);\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi06.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n					&lt;div class=\"flex-column__bottom\" style=\"box-sizing: border-box; height: calc(50% - 5px);\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi07.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n				Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 70, '2016-06-16 02:06:30', 55, '2019-10-24 11:10:06', 55, 255, 1, 0, 0, 0, 0, 77, NULL, '1', '', '', '', '', 'vi', '', '', '', '', '', '', NULL),
(410, NULL, 'Những môn thể thao biển thời thượng', 'nhung-mon-the-thao-bien-thoi-thuong', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-06.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-06.jpg', 'a:1:{i:0;a:2:{i:0;s:55:\"/public/files/editor-upload/images/product/dien-don.jpg\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__images\" style=\"box-sizing: border-box; margin: 30px 0px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi04.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;div class=\"b__text pdb50\" style=\"box-sizing: border-box; padding-bottom: 50px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2017-07-13 01:07:04', 55, '2019-10-24 11:10:50', 55, 2, 1, 1, 0, 0, 0, 77, NULL, '1', '', '', '', '', 'vi', '', '', '', '', '', '', NULL),
(736, NULL, 'cầu SKY WALK <br/><strong>Cầu pha lê<br/>đáy kính</strong>', 'cau-sky-walk-br-strong-cau-pha-le-br-day-kinh-strong', '/public/files/editor-upload/images/tien-ich/monaco/1(1).jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/monaco/1(1).jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__conference--box\" style=\"box-sizing: border-box; position: relative; margin-bottom: 10px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;div class=\"b__conference--box\" style=\"box-sizing: border-box; position: relative; margin-bottom: 10px;\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi08.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-10-09 10:10:41', 55, '2019-11-12 03:11:22', 55, 4, 1, 0, 0, 0, 0, 77, NULL, '1', '', '', '', '', 'vi', '', '', '', '', '', '', NULL),
(737, NULL, 'Banner Monaco', 'banner-monaco', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '', 0, 0, '2019-10-29 03:10:35', 55, '2019-11-05 05:11:50', 55, 255, 1, 0, 0, 0, 0, 81, NULL, '1', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/tien-ich/monaco/Wonder-City-Web-Hinh-anh-banner-06.jpg', '/public/files/editor-upload/images/tien-ich/monaco/Wonder-City-Web-Hinh-anh-banner-18(1).jpg', NULL),
(741, NULL, 'Banner tiện ích babaros', 'banner-tien-ich-babaros', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '', 0, 0, '2019-10-29 04:10:53', 55, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 81, NULL, '3', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/phan-khu/babaros/bg-pk-barbados.jpg', NULL, NULL),
(680, NULL, 'Bến du thuyền sang trọng', 'ben-du-thuyen-sang-trong', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-14.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-14.jpg', 'a:3:{i:0;a:2:{i:0;s:55:\"/public/files/editor-upload/images/product/VQK-6886.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:55:\"/public/files/editor-upload/images/product/VQK-9834.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:55:\"/public/files/editor-upload/images/product/VQK-9855.jpg\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. ', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;div&gt;\r\n			&lt;div class=\"b__text\" style=\"box-sizing: border-box;\"&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__box--images stretch pdb50\" style=\"box-sizing: border-box; padding-bottom: 50px; display: flex; flex-wrap: wrap; margin: 0px -5px; align-items: stretch;\"&gt;\r\n				&lt;div class=\"flex-column flex-column__left\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important;\"&gt;\r\n					&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n				&lt;div class=\"flex-column flex-column__right\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important;\"&gt;\r\n					&lt;div class=\"flex-column__top\" style=\"box-sizing: border-box; margin-bottom: 10px; height: calc(50% - 5px);\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n					&lt;div class=\"flex-column__bottom\" style=\"box-sizing: border-box; height: calc(50% - 5px);\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi03.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-01-22 12:01:46', 55, '2019-10-24 11:10:46', 55, 1, 1, 0, 1, 1, 0, 77, NULL, '1', '', '', '', '', 'vi', '', '', '', '', '', '', NULL),
(2, NULL, 'APART Hotel', 'apart-hotel', '/public/files/editor-upload/images/san-pham/img-apart03.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-apart03.jpg', 'a:4:{i:0;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-apart01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-apart03.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:62:\"/public/files/editor-upload/images/san-pham/img-prd002--1-.jpg\";i:1;s:1:\"0\";}i:3;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-apart04.jpg\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', 'Đây là dòng sản phẩm đang “hot” trên thị trường bất động sản nghỉ dưỡng với sự kết hợp giữa dịch vụ, tiện ích đẳng cấp vượt trội của khách sạn tiêu chuẩn quốc tế và sự tiện nghi của một căn hộ cao cấp.', NULL, '&lt;div&gt;\r\n	Bên cạnh hotel shop và boutique hotel, Wonder City còn có 4 tổ hợp Apart hotel đạt chất lượng 4 sao nằm dọc bên bờ biển xanh. Đây là dòng sản phẩm đang “hot” trên thị trường bất động sản nghỉ dưỡng với sự kết hợp giữa dịch vụ, tiện ích đẳng cấp vượt trội của khách sạn tiêu chuẩn quốc tế và sự tiện nghi của một căn hộ cao cấp.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Ưu điểm vượt trội của Apart hotel so với các loại hình bất động sản khác là chủ sở hữu vừa có thể ở, vừa có thể kinh doanh làm nơi lưu trú nghỉ dưỡng cho du khách. Bên cạnh đó, chủ sở hữu và tất cả khách lưu trú đều được phép tận hưởng trọn vẹn tiện ích, dịch vụ chung, không giới hạn không gian – quyền lợi trong tổ hợp.&lt;/div&gt;\r\n', 0, 0, '2019-01-22 12:01:03', 55, '2019-10-25 01:10:07', 55, 2, 1, 0, 1, 1, 0, 25, NULL, '2,3', '', '', '', '', 'vi', '000', '000', '000', '', '/public/files/editor-upload/images/san-pham/banner-apart--1-.jpg', '/public/files/editor-upload/images/san-pham/1197c9216044861adf55.jpg', NULL),
(1, NULL, 'HOTEL Shop', 'hotel-shop', '/public/files/editor-upload/images/san-pham/img-apart03.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-apart03.jpg', 'a:4:{i:0;a:2:{i:0;s:64:\"/public/files/editor-upload/images/san-pham/hotel/img-htshop.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:64:\"/public/files/editor-upload/images/san-pham/hotel/img-prd002.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:64:\"/public/files/editor-upload/images/san-pham/hotel/img-prd003.jpg\";i:1;s:1:\"0\";}i:3;a:2:{i:0;s:64:\"/public/files/editor-upload/images/san-pham/hotel/img-prd004.jpg\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', 'Hotel-shop là dòng sản phẩm mới ra mắt thị trường, được nghiên cứu và phát triển bởi Đơn vị phân phối và phát triển dự án Eurowindow Holding', NULL, '&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n	&lt;div&gt;\r\n		Hotel-shop là dòng sản phẩm mới ra mắt thị trường, được nghiên cứu và phát triển bởi Đơn vị phân phối và phát triển dự án Eurowindow Holding. Đây là sự kết hợp hoàn hảo giữa hotel và shop để vừa thỏa mãn nhu cầu lưu trú vừa đáp ứng nhu cầu kinh doanh.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Ngay giữa trung tâm Wonder City, hệ thống Hotelshop từ 2 đến 4 sao được quy hoạch theo mô hình bàn cờ. Mỗi hotel-shop cao 5-15 tầng, được thiết kế thoáng đãng từ 2-4 mặt tiền. Trong đó, tầng 1 vừa có mặt tiền để mở nhà hàng, cửa hiệu dành cho không gian kinh doanh hàng hóa, thực phẩm, vừa có mặt tiền đặt quầy lễ tân đón du khách từ dịch vụ kinh doanh khách sạn tại các tầng trên. Như vậy, so với các dòng sản phẩm hotel, mini-hotel, hay shop thông thường, hotel-shop có lợi thế giúp nhà đầu tư có thể sinh lời từ cả 2 loại hình kinh doanh.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-01-22 01:01:22', 55, '2019-10-25 01:10:25', 55, 1, 1, 0, 1, 1, 0, 25, NULL, '2,3,4,5', '', '', '', '', 'vi', '000', '000', '000', '', '/public/files/editor-upload/images/san-pham/hotel/banner-hotel.jpg', '/public/files/editor-upload/images/san-pham/hotel/bn-tintuc.png', 'a:3:{i:0;a:2:{i:0;s:65:\"/public/files/editor-upload/images/san-pham/hotel/img-pk-hn01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:65:\"/public/files/editor-upload/images/san-pham/hotel/img-pk-hn02.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:65:\"/public/files/editor-upload/images/san-pham/hotel/img-pk-hn03.jpg\";i:1;s:1:\"0\";}}'),
(3, NULL, 'BOUTIQUE Hotel', 'boutique-hotel', '/public/files/editor-upload/images/san-pham/img-apart03.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-apart03.jpg', 'a:4:{i:0;a:2:{i:0;s:58:\"/public/files/editor-upload/images/san-pham/img-prd001.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:61:\"/public/files/editor-upload/images/san-pham/img-prd002(1).jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:58:\"/public/files/editor-upload/images/san-pham/img-prd003.jpg\";i:1;s:1:\"0\";}i:3;a:2:{i:0;s:58:\"/public/files/editor-upload/images/san-pham/img-prd004.jpg\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', 'Boutique hotel là loại hình lưu trú đang rất được ưa chuộng ở Việt Nam và trên thế giới do sự cá tính và riêng tư mà loại hình này đem lại.', NULL, '&lt;div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;div&gt;\r\n			Boutique hotel là loại hình lưu trú đang rất được ưa chuộng ở Việt Nam và trên thế giới do sự cá tính và riêng tư mà loại hình này đem lại.&lt;/div&gt;\r\n		&lt;div&gt;\r\n			Tại Wonder City, boutique–hotel được bố trí tại phân khu Asia-Barbados nằm lưng chừng núi Cá Ông với … phòng. Về tổng thể, boutique –hotel được thiết kế nội thất theo phong cách đặc trưng của vùng Caribbean, nhưng mỗi phòng được bày trí theo một hướng khác nhau, đậm chất nghệ thuật, mang tới cảm giác hấp dẫn, thu hút du khách.&lt;/div&gt;\r\n		Không cần đầu tư lớn như với villas, lựa chọn boutique-hotel, các nhà đầu tư chỉ phải bỏ ra một khoản vốn vừa phải nhưng sẽ được thừa hưởng lợi ích cùng tiềm năng hút khách của toàn bộ tiện nghi trong tổ hợp nghỉ dưỡng hàng nghìn tỷ đồng mang tên Wonder City. “Một vốn bốn lời” là phép tính đã được nhiều nhà đầu tư đúc kết với boutique-hotel!&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-01-22 01:01:08', 55, '2019-10-25 01:10:46', 55, 3, 1, 1, 1, 0, 0, 25, NULL, '1,2,3', '', '', '', '', 'vi', '000', '000', '000', '', '/public/files/editor-upload/images/san-pham/banner-boutique.jpg', '/public/files/editor-upload/images/san-pham/bn-gallery.png', 'a:2:{i:0;a:2:{i:0;s:57:\"/public/files/editor-upload/images/san-pham/img-prd01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:57:\"/public/files/editor-upload/images/san-pham/img-prd02.jpg\";i:1;s:1:\"0\";}}'),
(723, NULL, 'Hệ thống <br/> spa cao cấp', 'he-thong-br-spa-cao-cap', '/public/files/editor-upload/images/tien-ich/babaros/Barbados-He-thong-spa-cao-cap.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/babaros/Barbados-He-thong-spa-cao-cap.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'Hệ thống spa cao cấp', NULL, '&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/tien-ich/img-barbados-tienich01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;br style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\" /&gt;\r\n&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n	Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n', 0, 0, '2019-09-20 02:09:23', 47, '2019-11-08 02:11:27', 55, 255, 1, 0, 0, 0, 0, 77, NULL, '3', '', '', '', '', 'vi', '', '', '', '', '', '', NULL),
(724, NULL, 'Hưởng trọn<br/><strong> dịch vụ 5 sao</strong>', 'huong-tron-br-strong-dich-vu-5-sao-strong', '/public/files/editor-upload/images/tien-ich/babaros/Barbados-Huong-tron-dich-vu-5-sao.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/babaros/Barbados-Huong-tron-dich-vu-5-sao.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'hưởng trọn dịch vụ 5 sao', NULL, '&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/tien-ich/img-barbados-tienich02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;br style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\" /&gt;\r\n&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n	Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-09-20 02:09:21', 47, '2019-11-08 02:11:57', 55, 255, 1, 0, 0, 0, 0, 77, NULL, '3', '', '', '', '', 'vi', '', '', '', '', '', '', NULL),
(4, NULL, 'Các thương hiệu Hotel & Resort 5 sao', 'cac-thuong-hieu-hotel-resort-5-sao', '/public/files/editor-upload/images/san-pham/img-hotel01--1-.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-hotel01--1-.jpg', 'a:3:{i:0;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-hotel02.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-hotel01.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-hotel01.jpg\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', 'Hotel & Resort system 5 stars', NULL, '&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n	&lt;div class=\"b__text\" style=\"box-sizing: border-box;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__images\" style=\"box-sizing: border-box; margin: 30px 0px;\"&gt;\r\n		&lt;img src=\"/public/files/editor-upload/images/san-pham/img-pk-resort01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;div class=\"b__text\" style=\"box-sizing: border-box;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__center--conference\" style=\"box-sizing: border-box; margin-bottom: 50px;\"&gt;\r\n		&lt;div class=\"b__conference--boxs\" style=\"box-sizing: border-box; display: flex; flex-direction: row; margin: 0px -5px;\"&gt;\r\n			&lt;img class=\"b__conference--img\" src=\"/public/files/editor-upload/images/img-pk-resort02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; flex-basis: 50%; max-width: 50%; padding: 0px 5px;\" /&gt;&lt;img class=\"b__conference--img\" src=\"/public/files/editor-upload/images/img-pk-resort03.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; flex-basis: 50%; max-width: 50%; padding: 0px 5px;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b_text\" style=\"box-sizing: border-box;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n		&lt;br style=\"box-sizing: border-box;\" /&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__center--conference\" style=\"box-sizing: border-box; margin-bottom: 50px;\"&gt;\r\n		&lt;div class=\"b__conference--box\" style=\"box-sizing: border-box; position: relative; margin-bottom: 10px;\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/san-pham/img-pk-resort04.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__conference--boxs\" style=\"box-sizing: border-box; display: flex; flex-direction: row; margin: 0px -5px;\"&gt;\r\n			&lt;img class=\"b__conference--img\" src=\"/public/files/editor-upload/images/img-pk-resort05.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; flex-basis: 50%; max-width: 50%; padding: 0px 5px;\" /&gt;&lt;img class=\"b__conference--img\" src=\"/public/files/editor-upload/images/img-pk-resort06.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; flex-basis: 50%; max-width: 50%; padding: 0px 5px;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__text pdb50\" style=\"box-sizing: border-box; padding-bottom: 50px;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-09-23 02:09:16', 47, '2019-11-05 05:11:25', 55, 4, 1, 0, 0, 0, 0, 25, NULL, '1', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-05.jpg', '/public/files/editor-upload/images/san-pham/hotel/Wonder-City-Web-Hinh-anh-banner-17.jpg', NULL),
(5, NULL, 'Trung tâm hội nghị', 'trung-tam-hoi-nghi', '/public/files/editor-upload/images/san-pham/img-hotel01--1-.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-hotel01--1-.jpg', 'a:3:{i:0;a:2:{i:0;s:67:\"/public/files/editor-upload/images/tien-ich/img-conference01(1).jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:67:\"/public/files/editor-upload/images/tien-ich/img-conference02(1).jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:64:\"/public/files/editor-upload/images/tien-ich/img-conference03.jpg\";i:1;s:1:\"0\";}}', NULL, 0, 0, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.', NULL, '&lt;div&gt;\r\n	&lt;span style=\"color: rgb(255, 255, 255); font-family: helveticaworld-regular, sans-serif; font-size: 14px; background-color: rgb(0, 117, 128);\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/span&gt;&lt;/div&gt;\r\n', 0, 0, '2019-09-24 02:09:21', 47, '2019-10-10 02:10:14', 55, 5, 1, 0, 0, 0, 0, 25, NULL, '1', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/tien-ich/img-conference01(1).jpg', '/public/files/editor-upload/images/tien-ich/bg-pk-saigon.jpg', NULL),
(731, NULL, 'Quảng trường <br/><strong>Ngọ Môn</strong>', 'quang-truong-br-strong-ngo-mon-strong', '/public/files/editor-upload/images/tien-ich/hue/Little-Hue-Quang-truong-Ngo-Mon.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hue/Little-Hue-Quang-truong-Ngo-Mon.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	Quảng trường Ngọ Môn&lt;/div&gt;\r\n', 0, 0, '2019-10-09 09:10:50', 55, '2019-11-08 03:11:19', 55, 255, 1, 0, 0, 0, 0, 77, NULL, '2', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/tien-ich/img-pk-hue05.jpg', '/public/files/editor-upload/images/tien-ich/img-pk-hue05.jpg', NULL),
(732, NULL, 'cổng chào<br/><strong> Mô phỏng kiến trúc<br/> lớp cổng chào Nghị Môn</strong>', 'cong-chao-br-strong-mo-phong-kien-truc-br-lop-cong-chao-nghi-mon-strong', '/public/files/editor-upload/images/tien-ich/hue/Little-Hue--Cong-chao-Mo-phong-kien-truc-lop-cong-chao-Nghi-Mon.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hue/Little-Hue--Cong-chao-Mo-phong-kien-truc-lop-cong-chao-Nghi-Mon.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'cổng chào mô phỏng kiến trúc lớp cổng chào Nghi Môn', NULL, '&lt;div&gt;\r\n	cổng chào mô phỏng kiến trúc lớp cổng chào Nghi Môn&lt;/div&gt;\r\n', 0, 0, '2019-10-09 09:10:02', 55, '2019-11-08 03:11:32', 55, 255, 1, 0, 0, 0, 0, 77, NULL, '2', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/tien-ich/img-pk-hue04.jpg', '/public/files/editor-upload/images/tien-ich/img-pk-hue04.jpg', NULL);
INSERT INTO `diadiem` (`id`, `code`, `name`, `alias`, `picture`, `thumb`, `picture_multi`, `value_multi`, `special`, `selloff`, `publish_date`, `synopsis`, `author`, `content`, `districts_id`, `hits`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_moi`, `block_hot`, `block_dongkhach`, `cat_id`, `sources_id`, `manu_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `quimo`, `soluongcan`, `dientich`, `color`, `picture_banner`, `picture_banner_mobile`, `picture_multi_home`) VALUES
(733, NULL, 'Quảng trường<br><strong> Gia Định</strong>', 'quang-truong-br-strong-gia-dinh-strong', '/public/files/editor-upload/images/tien-ich/sai-gon/Little-Sai-Gon-Quang-truong-Gia-dinh.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/sai-gon/Little-Sai-Gon-Quang-truong-Gia-dinh.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'Quảng trường Gia Định', NULL, '&lt;div&gt;\r\n	Quảng trường Gia Định&lt;/div&gt;\r\n', 0, 0, '2019-10-09 10:10:55', 55, '2019-11-08 03:11:21', 55, 255, 1, 0, 0, 0, 0, 77, NULL, '5', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/san-pham/sai-gon/img-pk-saigon05.jpg', '/public/files/editor-upload/images/san-pham/sai-gon/img-pk-saigon05.jpg', NULL),
(734, NULL, 'Cổng chào<br/> <strong> Mô phỏng kiến trúc <br/> cổng chợ Bến Thành</strong>', 'cong-chao-br-strong-mo-phong-kien-truc-br-cong-cho-ben-thanh-strong', '/public/files/editor-upload/images/tien-ich/sai-gon/Little-Sai-Gon-Cong-chao-Mo-phong-kien-truc-cong-cho-Ben-Thanh.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/sai-gon/Little-Sai-Gon-Cong-chao-Mo-phong-kien-truc-cong-cho-Ben-Thanh.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'Cổng chào mô phỏng kiến trúc cổng chợ Bến Thành', NULL, '&lt;div&gt;\r\n	Cổng chào mô phỏng kiến trúc cổng chợ Bến Thành&lt;/div&gt;\r\n', 0, 0, '2019-10-09 10:10:33', 55, '2019-11-08 03:11:41', 55, 255, 1, 0, 0, 0, 0, 77, NULL, '5', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/san-pham/sai-gon/img-pk-saigon04.jpg', '/public/files/editor-upload/images/san-pham/sai-gon/img-pk-saigon04.jpg', NULL),
(735, NULL, 'Bến du thuyền sang trọng 1', 'ben-du-thuyen-sang-trong-1', '/public/files/editor-upload/images/san-pham/monaco/img-relax01.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/monaco/img-relax01.jpg', '', NULL, 0, 0, '0000-00-00 00:00:00', 'Bến du thuyền sang trọng', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n			Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__box--images stretch pdb50\" style=\"box-sizing: border-box; padding-bottom: 50px; display: flex; flex-wrap: wrap; margin: 0px -5px; align-items: stretch; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;div class=\"flex-column flex-column__left\" style=\"box-sizing: border-box; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative;\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"flex-column flex-column__right\" style=\"box-sizing: border-box; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative;\"&gt;\r\n			&lt;div class=\"flex-column__top\" style=\"box-sizing: border-box; margin-bottom: 10px; height: calc(50% - 5px);\"&gt;\r\n				&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n			&lt;div class=\"flex-column__bottom\" style=\"box-sizing: border-box; height: calc(50% - 5px);\"&gt;\r\n				&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi03.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 0, 0, '2019-10-09 10:10:03', 55, '0000-00-00 00:00:00', NULL, 1, 1, 0, 0, 0, 0, 77, NULL, NULL, '', '', '', '', 'vi', '', '', '', '', '', '', NULL),
(739, NULL, 'Banner Tiện ích Sài Gòn', 'banner-tien-ich-sai-gon', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '', 0, 0, '2019-10-29 04:10:58', 55, '2019-11-05 05:11:33', 55, 255, 1, 0, 0, 0, 0, 81, NULL, '5', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/phan-khu/sai-gon/Wonder-City-Web-Hinh-anh-banner-09.jpg', '/public/files/editor-upload/images/tien-ich/sai-gon/Wonder-City-Web-Hinh-anh-banner-20.jpg', NULL),
(740, NULL, 'Banner tiện ích Huế', 'banner-tien-ich-hue', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '', 0, 0, '2019-10-29 04:10:04', 55, '2019-10-29 04:10:56', 55, 255, 1, 0, 0, 0, 0, 81, NULL, '2', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/phan-khu/hue/Wonder-City-Web-Hinh-anh-banner-11.jpg', '/public/files/editor-upload/images/phan-khu/hue/Wonder-City-Web-Hinh-anh-banner-21.jpg', NULL),
(738, NULL, 'Banner Hà Nội', 'banner-ha-noi', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '', NULL, '', 0, 0, '2019-10-29 04:10:07', 55, '2019-11-05 05:11:42', 55, 255, 1, 0, 0, 0, 0, 81, NULL, '4', '', '', '', '', 'vi', '', '', '', '', '/public/files/editor-upload/images/phan-khu/ha-noi/Wonder-City-Web-Hinh-anh-banner-07.jpg', '/public/files/editor-upload/images/tien-ich/hanoi/Wonder-City-Web-Hinh-anh-banner-19.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_attribute`
--

CREATE TABLE `diadiem_attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_attribute`
--

INSERT INTO `diadiem_attribute` (`id`, `name`, `cat_id`, `order`, `status`, `lang_code`) VALUES
(1, 'test 1', 1, 255, 1, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_attribute_category`
--

CREATE TABLE `diadiem_attribute_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_attribute_category`
--

INSERT INTO `diadiem_attribute_category` (`id`, `name`, `order`, `status`, `lang_code`) VALUES
(1, 'cấu hình', 255, 1, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_category`
--

CREATE TABLE `diadiem_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '10',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `block_left` tinyint(4) DEFAULT '0',
  `block_right` tinyint(4) DEFAULT '0',
  `block_body` tinyint(4) DEFAULT '0',
  `block_body2` tinyint(4) DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_category`
--

INSERT INTO `diadiem_category` (`id`, `name`, `alias`, `picture`, `picture_multi`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `content`, `block_left`, `block_right`, `block_body`, `block_body2`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `name_en`) VALUES
(25, 'Sản phẩm', 'san-pham', '/public/files/editor-upload/images/du-lich/hoi-nghi/img-info04.jpg', '', 0, '0000-00-00 00:00:00', 1, '2019-09-20 02:09:11', 47, 0, 1, '', 0, 0, 1, 0, '', '', '', 'vi', 'Product'),
(63, 'Milking machine', 'milking-machine', '', '', 0, '2017-07-26 09:07:38', 55, '2017-08-16 10:08:51', 55, 255, 0, '', 0, 0, 1, 0, '', '', '', 'en', NULL),
(77, 'Tiện ích', 'tien-ich', '/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/bg-dulichamthuc.jpg', '', 0, '2017-08-14 04:08:37', 55, '2019-09-20 02:09:46', 47, 1, 1, '', 0, 0, 1, 0, '', '', '', 'vi', 'Utilities'),
(64, 'Milk heater', 'milk-heater', '', '', 0, '2017-07-26 09:07:06', 55, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, 0, '', '', '', 'en', NULL),
(81, 'Banner Tiện Ích', 'banner-tien-ich', '/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri02.jpg', '', 0, '2017-08-15 02:08:12', 55, '2019-10-29 03:10:47', 55, 1, 1, '', 1, 0, 1, 0, '', '', '', 'vi', 'Boutique Hotel ');

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_en`
--

CREATE TABLE `diadiem_en` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `price_to` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `value_multi` mediumtext COLLATE utf8_unicode_ci,
  `special` tinyint(1) DEFAULT '0',
  `selloff` float DEFAULT '0',
  `diadiem_number` int(11) DEFAULT '0',
  `money_sources` float DEFAULT '0',
  `sources_money` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT '0000-00-00 00:00:00',
  `synopsis` mediumtext COLLATE utf8_unicode_ci,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `units_money` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `districts_id` int(11) DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_fb` int(11) DEFAULT '0',
  `like_fb` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT '255',
  `status` tinyint(1) DEFAULT '0',
  `block_noibat` tinyint(1) DEFAULT '0',
  `block_moi` tinyint(1) DEFAULT '0',
  `block_hot` tinyint(1) DEFAULT '0',
  `block_dongkhach` tinyint(1) DEFAULT '0',
  `cat_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `sources_id` int(11) DEFAULT NULL,
  `manu_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_id` int(11) DEFAULT '0',
  `khuyenmai` mediumtext COLLATE utf8_unicode_ci,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `khachhang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `made_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baohanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quimo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluongcan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dientich` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_en`
--

INSERT INTO `diadiem_en` (`id`, `code`, `name`, `alias`, `picture`, `thumb`, `picture_multi`, `price_to`, `price`, `value_multi`, `special`, `selloff`, `diadiem_number`, `money_sources`, `sources_money`, `publish_date`, `synopsis`, `author`, `content`, `units_money`, `address`, `districts_id`, `mobile`, `comment_fb`, `like_fb`, `hits`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_moi`, `block_hot`, `block_dongkhach`, `cat_id`, `unit_id`, `sources_id`, `manu_id`, `time_id`, `khuyenmai`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `khachhang`, `city_id`, `color`, `made_in`, `baohanh`, `quimo`, `soluongcan`, `dientich`) VALUES
(728, NULL, 'Cổng chào Khuê Văn Các', 'hang-tram-quan-an-dam-chat-ha-noi', '/public/files/editor-upload/images/tien-ich/hanoi/Little-Hanoi-Cong-chao-Khue-Van-Cac.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hanoi/Little-Hanoi-Cong-chao-Khue-Van-Cac.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 03:11:55', NULL, '0000-00-00 00:00:00', NULL, 3, 1, 0, 0, 0, 0, 77, NULL, NULL, '4', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(729, NULL, '', 'quang-truong-br-strong-dong-kinh-nghia-thuc-strong', '/public/files/editor-upload/images/tien-ich/hanoi/Little-Hanoi-Quang-truong-dong-Kinh-Nghia-Thuc.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hanoi/Little-Hanoi-Quang-truong-dong-Kinh-Nghia-Thuc.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 03:11:45', NULL, '0000-00-00 00:00:00', NULL, 1, 1, 0, 0, 0, 0, 77, NULL, NULL, '4', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(730, NULL, '', 'cong-chao-br-strong-khue-van-cac-strong', '/public/files/editor-upload/images/tien-ich/hanoi/Little-Hanoi-Cong-chao-Khue-Van-Cac.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hanoi/Little-Hanoi-Cong-chao-Khue-Van-Cac.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 03:11:39', NULL, '0000-00-00 00:00:00', NULL, 2, 1, 0, 0, 0, 0, 77, NULL, NULL, '4', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(388, NULL, 'Ear & Forehead Thermometer - HDTET200', 'cong-vien-giai-tri-soi-dong', '/public/files/editor-upload/images/tien-ich/img-gallery07.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/img-gallery07.jpg', 'a:1:{i:0;a:2:{i:0;s:53:\"/public/files/editor-upload/images/product/TET200.jpg\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div style=\"text-align: justify;\"&gt;\r\n		&lt;img src=\"/public/files/editor-upload/images/product/TET-100.jpg\" style=\"width: 620px; height: 559px;\" /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 63, '2019-10-09 10:10:26', NULL, '2017-08-01 04:08:21', 55, 3, 1, 0, 0, 0, 0, 77, NULL, NULL, '', NULL, NULL, '', '', '', '', NULL, '255', 0, '', 'Korea', '2 Year', '', '', ''),
(389, NULL, ' Infrared Ear Thermometer Hubdic – HDNET100', 'cong-vien-chu-de-soi-dong', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-06.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-06.jpg', 'a:1:{i:0;a:2:{i:0;s:54:\"/public/files/editor-upload/images/product/net-100.JPG\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div style=\"text-align: justify;\"&gt;\r\n		&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n			&lt;div class=\"b__box--images pdb50\" style=\"box-sizing: border-box; padding-bottom: 50px; display: flex; flex-wrap: wrap; margin: 0px -5px;\"&gt;\r\n				&lt;div class=\"flex-column flex-column__left\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important;\"&gt;\r\n					&lt;div class=\"flex-column__top\" style=\"box-sizing: border-box; height: calc(100% - 145px); margin-bottom: 10px;\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi05.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; height: 1049px; width: 513.5px;\" /&gt;&lt;/div&gt;\r\n					&lt;div class=\"flex-column__bottom\" style=\"box-sizing: border-box;\"&gt;\r\n						&lt;div class=\"b__box--caption\" style=\"box-sizing: border-box; background: rgb(0, 117, 128); padding: 30px 50px;\"&gt;\r\n							&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(255, 255, 255); line-height: 30px;\"&gt;\r\n								Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat&lt;/p&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"flex-column flex-column__right\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important;\"&gt;\r\n					&lt;div class=\"flex-column__top\" style=\"box-sizing: border-box; margin-bottom: 10px; height: calc(50% - 5px);\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi06.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 513.5px;\" /&gt;&lt;/div&gt;\r\n					&lt;div class=\"flex-column__bottom\" style=\"box-sizing: border-box; height: calc(50% - 5px);\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi07.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 513.5px;\" /&gt;&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n				Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 70, '2019-10-24 11:10:06', NULL, '2017-08-01 03:08:25', 55, 255, 1, 0, 0, 0, 0, 77, NULL, NULL, '1', NULL, NULL, '', '', '', '', NULL, '255', 0, '', 'Korea', '2 year', '', '', ''),
(410, NULL, 'Những môn thể thao biển thời thượng', 'nhung-mon-the-thao-bien-thoi-thuong', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-06.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-06.jpg', 'a:1:{i:0;a:2:{i:0;s:55:\"/public/files/editor-upload/images/product/dien-don.jpg\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', 'Unimom are fast becoming the biggest force in quality breastfeeding products at a very affordable price.\r\n', NULL, '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;div class=\"b__images\" style=\"box-sizing: border-box; margin: 30px 0px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n			&lt;img src=\"file:///F:/sever2/htdocs/wondercity/wondercity/upload/img_pk_vuichoi04.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__text pdb50\" style=\"box-sizing: border-box; padding-bottom: 50px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n			&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-24 11:10:50', NULL, '0000-00-00 00:00:00', NULL, 2, 1, 1, 0, 0, 0, 77, NULL, NULL, '1', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', 'Korea', '', '', '', ''),
(736, NULL, '', 'cau-sky-walk-br-strong-cau-pha-le-br-day-kinh-strong', '/public/files/editor-upload/images/tien-ich/monaco/1(1).jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/monaco/1(1).jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__conference--box\" style=\"box-sizing: border-box; position: relative; margin-bottom: 10px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;img src=\"file:///F:/sever2/htdocs/wondercity/wondercity/upload/img_pk_vuichoi08.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n		Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-12 03:11:22', NULL, '0000-00-00 00:00:00', NULL, 4, 1, 0, 0, 0, 0, 77, NULL, NULL, '1', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(680, NULL, 'Bến du thuyền sang trọng', 'ben-du-thuyen-sang-trong', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-14.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-14.jpg', 'a:3:{i:0;a:2:{i:0;s:55:\"/public/files/editor-upload/images/product/VQK-6886.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:55:\"/public/files/editor-upload/images/product/VQK-9834.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:55:\"/public/files/editor-upload/images/product/VQK-9855.jpg\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', 'Bến du thuyền sang trọng', NULL, '&lt;div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;div&gt;\r\n			&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif;\"&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__box--images stretch pdb50\" style=\"box-sizing: border-box; padding-bottom: 50px; display: flex; flex-wrap: wrap; margin: 0px -5px; align-items: stretch; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif;\"&gt;\r\n				&lt;div class=\"flex-column flex-column__left\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important;\"&gt;\r\n					&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 513.5px;\" /&gt;&lt;/div&gt;\r\n				&lt;div class=\"flex-column flex-column__right\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 5px; position: relative; -webkit-box-orient: vertical !important; -webkit-box-direction: normal !important; flex-direction: column !important;\"&gt;\r\n					&lt;div class=\"flex-column__top\" style=\"box-sizing: border-box; margin-bottom: 10px; height: calc(50% - 5px);\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 513.5px;\" /&gt;&lt;/div&gt;\r\n					&lt;div class=\"flex-column__bottom\" style=\"box-sizing: border-box; height: calc(50% - 5px);\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/san-pham/monaco/img-pk-vuichoi03.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 513.5px;\" /&gt;&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-24 11:10:46', NULL, '0000-00-00 00:00:00', NULL, 1, 1, 0, 1, 1, 0, 77, NULL, NULL, '1', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', 'Thai Lan', '', '', '', ''),
(2, NULL, 'Apart Hotel', 'apart-hotel', '/public/files/editor-upload/images/san-pham/img-apart03.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-apart03.jpg', 'a:4:{i:0;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-apart01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-apart03.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:62:\"/public/files/editor-upload/images/san-pham/img-prd002--1-.jpg\";i:1;s:1:\"0\";}i:3;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-apart04.jpg\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;div style=\"box-sizing: border-box; cursor: default;\"&gt;\r\n			&lt;span style=\"color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-25 01:10:07', NULL, '0000-00-00 00:00:00', NULL, 2, 1, 0, 1, 1, 0, 25, NULL, NULL, '2,3', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', 'Thailand', '', '000', '000', '000'),
(735, NULL, '', 'ben-du-thuyen-sang-trong-1', '/public/files/editor-upload/images/san-pham/monaco/img-relax01.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/monaco/img-relax01.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-09 10:10:03', 55, '0000-00-00 00:00:00', NULL, 1, 1, 0, 0, 0, 0, 77, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(733, NULL, '', 'quang-truong-br-strong-gia-dinh-strong', '/public/files/editor-upload/images/tien-ich/sai-gon/Little-Sai-Gon-Quang-truong-Gia-dinh.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/sai-gon/Little-Sai-Gon-Quang-truong-Gia-dinh.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 03:11:21', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 77, NULL, NULL, '5', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(734, NULL, '', 'cong-chao-br-strong-mo-phong-kien-truc-br-cong-cho-ben-thanh-strong', '/public/files/editor-upload/images/tien-ich/sai-gon/Little-Sai-Gon-Cong-chao-Mo-phong-kien-truc-cong-cho-Ben-Thanh.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/sai-gon/Little-Sai-Gon-Cong-chao-Mo-phong-kien-truc-cong-cho-Ben-Thanh.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 03:11:41', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 77, NULL, NULL, '5', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(1, NULL, 'Hotel Shop', 'hotel-shop', '/public/files/editor-upload/images/san-pham/img-apart03.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-apart03.jpg', 'a:4:{i:0;a:2:{i:0;s:64:\"/public/files/editor-upload/images/san-pham/hotel/img-htshop.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:64:\"/public/files/editor-upload/images/san-pham/hotel/img-prd002.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:64:\"/public/files/editor-upload/images/san-pham/hotel/img-prd003.jpg\";i:1;s:1:\"0\";}i:3;a:2:{i:0;s:64:\"/public/files/editor-upload/images/san-pham/hotel/img-prd004.jpg\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; cursor: default; font-weight: 700;\"&gt;Features&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• High-quality and safe materials: Polypropylene (PP) and Silicone.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Ribbed and elastic teat design for comfortable feeding.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Ultra-soft silicone nipple with anti -colic valve.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Microwave &amp;amp; Sterilizer safe.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; cursor: default; font-weight: 700;\"&gt;Instructions for safe feeding:&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Clean and sterilize the product thoroughly before using for the first time, and after each further use.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Valve should be cleaned under running water to remove any residue inside the valve.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Keep the bottle in a dry, covered container and away from sunlight when not in use.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Check nipple immediately before and after each use. Replace by new one immediately when showing any sign of worn, damage or scratch&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; font-weight: 700;\"&gt;Notes&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Choose the right bottle &amp;amp; nipple size according to your baby’s need.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Check the milk temperature before feeding it to your baby&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Always use this product under adult supervision.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Do not use the nipple as dummies, soother or pacifier.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-25 01:10:25', NULL, '0000-00-00 00:00:00', NULL, 1, 1, 0, 1, 1, 0, 25, NULL, NULL, '2,3,4,5', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', 'Thailand', '', '000', '000', '000'),
(3, NULL, 'Boutique-Hotel', 'boutique-hotel', '/public/files/editor-upload/images/san-pham/img-apart03.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-apart03.jpg', 'a:4:{i:0;a:2:{i:0;s:58:\"/public/files/editor-upload/images/san-pham/img-prd001.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:61:\"/public/files/editor-upload/images/san-pham/img-prd002(1).jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:58:\"/public/files/editor-upload/images/san-pham/img-prd003.jpg\";i:1;s:1:\"0\";}i:3;a:2:{i:0;s:58:\"/public/files/editor-upload/images/san-pham/img-prd004.jpg\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '&lt;div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; cursor: default; font-weight: 700;\"&gt;Features&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• High-quality and safe materials: Polypropylene (PP) and Silicone.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Ribbed and elastic teat design for comfortable feeding.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Ultra-soft silicone nipple with anti -colic valve.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Microwave &amp;amp; Sterilizer safe.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; cursor: default; font-weight: 700;\"&gt;Instructions for safe feeding:&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Clean and sterilize the product thoroughly before using for the first time, and after each further use.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Valve should be cleaned under running water to remove any residue inside the valve.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Keep the bottle in a dry, covered container and away from sunlight when not in use.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Check nipple immediately before and after each use. Replace by new one immediately when showing any sign of worn, damage or scratch&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		&lt;span style=\"box-sizing: border-box; cursor: default; font-weight: 700;\"&gt;Notes&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Choose the right bottle &amp;amp; nipple size according to your baby’s need.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Check the milk temperature before feeding it to your baby&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Always use this product under adult supervision.&lt;/div&gt;\r\n	&lt;div style=\"box-sizing: border-box; cursor: default; color: rgb(39, 39, 39); font-family: Arial; font-size: 14px;\"&gt;\r\n		• Do not use the nipple as dummies, soother or pacifier.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-25 01:10:46', NULL, '0000-00-00 00:00:00', NULL, 3, 1, 1, 1, 0, 0, 25, NULL, NULL, '1,2,3', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', 'Thailand', '', '000', '000', '000'),
(723, NULL, 'High-end spa system', 'he-thong-br-spa-cao-cap', '/public/files/editor-upload/images/tien-ich/babaros/Barbados-He-thong-spa-cao-cap.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/babaros/Barbados-He-thong-spa-cao-cap.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 02:11:27', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 77, NULL, NULL, '3', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(731, NULL, '', 'quang-truong-br-strong-ngo-mon-strong', '/public/files/editor-upload/images/tien-ich/hue/Little-Hue-Quang-truong-Ngo-Mon.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hue/Little-Hue-Quang-truong-Ngo-Mon.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 03:11:19', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 77, NULL, NULL, '2', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(732, NULL, '', 'cong-chao-br-strong-mo-phong-kien-truc-br-lop-cong-chao-nghi-mon-strong', '/public/files/editor-upload/images/tien-ich/hue/Little-Hue--Cong-chao-Mo-phong-kien-truc-lop-cong-chao-Nghi-Mon.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/hue/Little-Hue--Cong-chao-Mo-phong-kien-truc-lop-cong-chao-Nghi-Mon.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 03:11:32', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 77, NULL, NULL, '2', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(724, NULL, '', 'huong-tron-br-strong-dich-vu-5-sao-strong', '/public/files/editor-upload/images/tien-ich/babaros/Barbados-Huong-tron-dich-vu-5-sao.jpg', '/public/files/editor-upload/_thumbs/images/tien-ich/babaros/Barbados-Huong-tron-dich-vu-5-sao.jpg', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-08 02:11:57', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 77, NULL, NULL, '3', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(4, NULL, 'Hotel & Resort system 5 stars', 'cac-thuong-hieu-hotel-resort-5-sao', '/public/files/editor-upload/images/san-pham/img-hotel01--1-.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-hotel01--1-.jpg', 'a:3:{i:0;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-hotel02.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-hotel01.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:59:\"/public/files/editor-upload/images/san-pham/img-hotel01.jpg\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-05 05:11:25', NULL, '0000-00-00 00:00:00', NULL, 4, 1, 0, 0, 0, 0, 25, NULL, NULL, '1', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(5, NULL, 'Conference center', 'trung-tam-hoi-nghi', '/public/files/editor-upload/images/san-pham/img-hotel01--1-.jpg', '/public/files/editor-upload/_thumbs/images/san-pham/img-hotel01--1-.jpg', 'a:3:{i:0;a:2:{i:0;s:67:\"/public/files/editor-upload/images/tien-ich/img-conference01(1).jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:67:\"/public/files/editor-upload/images/tien-ich/img-conference02(1).jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:64:\"/public/files/editor-upload/images/tien-ich/img-conference03.jpg\";i:1;s:1:\"0\";}}', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.', NULL, '&lt;div&gt;\r\n	&lt;span style=\"color: rgb(255, 255, 255); font-family: helveticaworld-regular, sans-serif; font-size: 14px; background-color: rgb(0, 117, 128);\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/span&gt;&lt;/div&gt;\r\n', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-10 02:10:14', NULL, '0000-00-00 00:00:00', NULL, 5, 1, 0, 0, 0, 0, 25, NULL, NULL, '1', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(737, NULL, '', 'banner-monaco', '', '', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-05 05:11:50', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 81, NULL, NULL, '1', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(738, NULL, '', 'banner-ha-noi', '', '', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-05 05:11:43', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 81, NULL, NULL, '4', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(739, NULL, '', 'banner-tien-ich-sai-gon', '', '', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-11-05 05:11:33', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 81, NULL, NULL, '5', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(740, NULL, '', 'banner-tien-ich-hue', '', '', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-29 04:10:56', NULL, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 81, NULL, NULL, '2', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', ''),
(741, NULL, '', 'banner-tien-ich-babaros', '', '', '', 0, 0, NULL, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '', NULL, '', NULL, NULL, 0, NULL, 0, 0, 0, '2019-10-29 04:10:53', 55, '0000-00-00 00:00:00', NULL, 255, 1, 0, 0, 0, 0, 81, NULL, NULL, '3', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_manu`
--

CREATE TABLE `diadiem_manu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `synopsis` mediumtext COLLATE utf8_unicode_ci,
  `synopsis_en` mediumtext COLLATE utf8_unicode_ci,
  `gioithieu_vitri` mediumtext COLLATE utf8_unicode_ci,
  `gioithieu_vitri_en` mediumtext COLLATE utf8_unicode_ci,
  `title_slogan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_slogan_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_vitri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `synopsis_library_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `synopsis_library_image_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_banner_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_manu`
--

INSERT INTO `diadiem_manu` (`id`, `name`, `order`, `status`, `alias`, `meta_title`, `meta_description`, `meta_keywords`, `picture`, `synopsis`, `synopsis_en`, `gioithieu_vitri`, `gioithieu_vitri_en`, `title_slogan`, `title_slogan_en`, `picture_vitri`, `synopsis_library_image`, `synopsis_library_image_en`, `picture_multi`, `name_en`, `picture_mobile`, `picture_banner`, `picture_banner_mobile`) VALUES
(1, 'TROPICAL <strong>MONACO</strong>', 1, 1, 'tropical-monaco', '', '', '', '/public/files/editor-upload/images/phan-khu/tropical/img-pk01(2).jpg', 'Lấy cảm hứng từ Monaco – viên ngọc quý của Địa Trung Hải, phân khu Tropical Monaco mang vẻ đẹp kiến trúc thượng lưu với dãy khách sạn biệt thự 5 sao siêu sang được quản lý và vận hành bởi các thương hiệu hàng đầu thế giới như: Movenpick, Pullman, Raddison Blu. Điểm nhấn của phân khu này là Trung tâm Hội nghị Quốc tế được xây dựng theo lối kiến trúc vương giả, bắt nguồn từ cảm hứng kiến trúc của tòa nhà Casino Monte Carlo – sòng bạc nổi tiếng tại Monaco, vốn được mệnh danh đẹp nhất thế giới. Sòng bạc này thường xuyên được lựa chọn để quay những bộ phim bom tấn như Điệp viên 007 hay Sòng bạc Hoàng gia. \r\nCùng với những con phố được đặt tên bởi các thân vương Monaco như: Charles, Louis, Jacques hay Antonio..., Tropical Monaco thực sự đem lại cho du khách cảm giác như đang nghỉ dưỡng giữa lòng viên ngọc quý của Địa Trung Hải.\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.', 'Phân khu Tropical Monaco được xây dựng trên núi Hòn Ngang với diện tích 132,24 ha.\r\nPhân khu gồm 117 mini hotel, tổng 4702 phòng, trong đó …', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.', 'Sản phẩm Boutique-Hotel  xinh đẹp & cá tính', 'slogan', '/public/files/editor-upload/images/phan-khu/tropical/img-pk-vitri.jpg', '', 'info image', '', 'TROPICAL <strong>MONACO</strong>', '/public/files/editor-upload/images/phan-khu/tropical/img-pk01.png', '/public/files/editor-upload/images/phan-khu/tropical/z1597159560342-90c07ef7b6db44ff96ea9fac7b7d41b6.jpg', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-16.jpg'),
(2, 'LITTLE<strong> HUE</strong>', 4, 1, 'little-hue', 'little hue', 'little hue', 'little hue', '/public/files/editor-upload/images/phan-khu/hue/img-pk03(1).jpg', 'Little Hue mang đậm vẻ đẹp duyên dáng của một cố đô mà nét vàng son vẫn còn lưu dấu. Nếu như phần cổng chào tái hiện lớp nghi môn thành đại nội Huế thì những dãy nhà nơi đây được thiết kế với vòm mái cong cong mang dáng dấp kiến trúc cung đình Huế trang nghiêm. Điểm nhấn trung tâm là quảng trường Ngọ Môn – được biết đến không chỉ là nơi diễn ra những hoạt động thường nhật của người dân Huế mà còn là địa điểm tổ chức các Festival náo nhiệt. \r\nMen theo cung đường Đại Nội, Cung Đình, Tường Loan, Nghi Phụng… trải đầy bóng cây xanh mát cùng vô vàn hương vị ẩm thực đậm chất Huế như cơm hến, bún bò được bày bán dọc hai bên, du khách sẽ ngỡ như đang lạc bước tới xứ Huế mộng mơ, trữ tình.\r\n', '', 'Little Hue nằm trong quần thể Little Vietnam, sở hữu diện tích lên tới…. Phân khu gồm 50 Mini hotel, tổng 3.770 phòng, trong đó…', '', '', '', '/public/files/editor-upload/images/phan-khu/tropical/img-pk-vitri.jpg', '', '', '', 'LITTLE<strong> HUE</strong>', '/public/files/editor-upload/images/phan-khu/hue/img-pk03.png', '/public/files/editor-upload/images/phan-khu/hue/Wonder-City-Web-Hinh-anh-banner-11.jpg', '/public/files/editor-upload/images/phan-khu/hue/Wonder-City-Web-Hinh-anh-banner-21(1).jpg'),
(3, 'ASIA <strong> BARBADOS</strong>', 5, 1, 'asia-barbados', '', '', '', '/public/files/editor-upload/images/phan-khu/babaros/img-pk05.jpg', 'Đảo quốc Barbados - thiên đường nghỉ dưỡng biển nức danh ở vùng biển Đạị Tây Dương, được tái hiện hoàn hảo tại phân khu Asia Barbados với chuỗi boutique hotel đẹp xinh mang hơi thở kiến trúc vùng Caribbean. Đó là phong cách kiến trúc đề cao vai trò của thiên nhiên với màu sắc chủ đạo là màu vàng của cát, màu xanh của biển và màu đỏ của san hô.\r\nLưu trú tại Asia Barbados, tận hưởng các dịch vụ tiện ích của hệ thống khách sạn đẳng cấp, ngắm nhìn sóng nước chân mây qua khung cửa sổ, chiều chiều dạo bước trên những con phố được đặt tên theo phân cấp hành chính của quốc đảo Barbados, chắc chắn du khách sẽ ngỡ như đang du ngoạn tại vùng biển Caribe đầy nắng gió.\r\n', '', 'Phân khu Asia Barbados được xây dựng ở lưng chừng núi Cá Ông, bên trái khu Việt Nam thu nhỏ, với tổng diện tích 60,02 ha.\r\nPhân khu gồm 41 Mini hotel, tổng 1.736 phòng, trong đó …\r\n', '', '', '', '/public/files/editor-upload/images/phan-khu/tropical/img-pk-vitri.jpg', '', '', '', 'ASIA <strong> BARBADOS</strong>', '/public/files/editor-upload/images/phan-khu/babaros/img-pk05.png', '/public/files/editor-upload/images/phan-khu/babaros/bg-pk-barbados.jpg', '/public/files/editor-upload/images/phan-khu/babaros/bn-babardos.png'),
(4, 'LITTLE <strong>HANOI</strong>', 2, 1, 'little-strong-hanoi-strong', '', '', '', '/public/files/editor-upload/images/phan-khu/ha-noi/img-pk02.jpg', 'Một Hà Nội thu nhỏ, lạ-mà-quen, sẽ được tái hiện qua nét kiến trúc đặc trưng phố cổ. Đó là những ngôi nhà với đỉnh mái vươn cao có hoa văn viền quanh, những khung cửa gỗ màu xanh cùng ban công hình bán nguyệt ôm trọn cửa ra vào – dấu ấn của căn hộ thời Pháp thuộc. \r\nĐiểm nhấn của Little Hanoi là cổng chào tái hiện lại biểu tượng Khuê Văn Các lịch sử, dẫn lối vào quảng trường Đông Kinh Nghĩa Thục rộng lớn. Những cung đường được đặt tên Đại La, Thăng Long, Trường An, Phụng Thành… như một chuyến hành trình ngược dòng thời gian, không chỉ dẫn dắt du khách về với thuở dựng nước mà còn làm sống dậy cái chất trầm lắng, cổ kính của xứ Kinh Kì. Tại đây, đa dạng những mặt hàng từ thủ công mỹ nghệ, gấm vóc cho đến những món ngon đường phố như bún chả, bún nem đều được bày bán, càng góp phần tô vẽ bức tranh Little Hanoi thêm sống động. \r\n', '', 'Little Hanoi nằm trong quần thể Little Vietnam, sở hữu diện tích lên tới…. Phân khu gồm 244 Mini hotel, tổng 15.148 phòng.', '', 'Sản phẩm Boutique-Hotel  xinh đẹp & cá tính', '', '/public/files/editor-upload/images/phan-khu/tropical/img-pk-vitri.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor ', '', '', 'LITTLE <strong>HANOI</strong>', '/public/files/editor-upload/images/phan-khu/ha-noi/img-pk02.png', '/public/files/editor-upload/images/phan-khu/ha-noi/Wonder-City-Web-Hinh-anh-banner-07.jpg', '/public/files/editor-upload/images/phan-khu/ha-noi/Wonder-City-Web-Hinh-anh-banner-19.jpg'),
(5, 'LITTLE <strong>SAIGON</strong>', 3, 1, 'little-strong-saigon-strong', 'LITTLE SAIGON', 'LITTLE SAIGON', 'LITTLE SAIGON', '/public/files/editor-upload/images/phan-khu/sai-gon/img-pk04.jpg', 'Một Sài-Gòn-không-ngủ được tái hiện sống động qua phân khu Little Saigon diễm lệ. Cảnh quan và công trình nơi đây là sự tổng hòa của nền kiến trúc Á-Âu, làm nổi bật nét trẻ trung, hiện đại của nhịp thở Sài thành.\r\nĐặc trưng nhất của Little Saigon phải kể tới là cổng chào được phỏng theo kiến trúc cổng chợ Bến Thành, dẫn vào quảng trường Time Squace phía trong. Quảng trường không chỉ là điểm nhấn phân khu, điểm kết nối trung tâm của các phố đêm mà còn là điểm đến của các lễ hội quanh năm như lễ thả đèn lồng, tiệc mừng năm mới,…\r\nNhững cung đường ở Little SaiGon nổi bật với những tên phố như: Nguyễn Huệ; Bùi Viện, Đồng Khởi… như tái hiện thành phố Sài Gòn sôi động và hoa lệ.\r\n', '', 'Little SaiGon nằm ở trung tâm quần thể Little Vietnam, sở hữu diện tích lên tới…. \r\nPhân khu gồm 161 Mini hotel, tổng 10.238 phòng, trong đó …\r\n', '', '', '', '/public/files/editor-upload/images/phan-khu/tropical/img-pk-vitri.jpg', '', '', '', 'LITTLE <strong>SAIGON</strong>', '/public/files/editor-upload/images/phan-khu/sai-gon/img-pk04.png', '/public/files/editor-upload/images/phan-khu/sai-gon/Wonder-City-Web-Hinh-anh-banner-09.jpg', '/public/files/editor-upload/images/phan-khu/sai-gon/Wonder-City-Web-Hinh-anh-banner-20(1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_sources`
--

CREATE TABLE `diadiem_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_sources`
--

INSERT INTO `diadiem_sources` (`id`, `name`, `address`, `contact_name`, `contact_phone`, `contact_email`, `content`, `order`, `status`) VALUES
(2, 'Đã được admin chứng nhận', '', '', '0978849286', '', '', 255, 1),
(3, 'Bài viết thành viên post', '', '', '', '', '', 255, 1),
(4, 'Chưa chứng nhận', '', '', '', '', '', 255, 0),
(5, 'Chưa chứng nhận 01', '', '', '', '', '', 255, 0),
(6, 'Chưa chứng nhận 02', '', '', '', '', '', 255, 0),
(7, 'Chưa chứng nhận 03', '', '', '', '', '', 255, 0);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_units`
--

CREATE TABLE `diadiem_units` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_units`
--

INSERT INTO `diadiem_units` (`id`, `name`, `content`, `order`, `status`, `lang_code`) VALUES
(7, 'Suất', '', 255, 1, 'vi'),
(2, 'Nồi ', '', 255, 1, 'vi'),
(3, 'Bữa', '', 255, 1, 'vi'),
(4, 'Chiếc', '', 255, 1, 'vi'),
(5, 'Chai', '', 255, 1, 'vi'),
(6, 'Cốc', '', 255, 1, 'vi'),
(8, 'Hộp', NULL, 255, 1, 'vi'),
(9, 'Lọ', NULL, 255, 1, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_view_catergory`
--

CREATE TABLE `diadiem_view_catergory` (
  `id` int(11) NOT NULL,
  `id_product_category` int(11) DEFAULT NULL,
  `lang_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_view_catergory`
--

INSERT INTO `diadiem_view_catergory` (`id`, `id_product_category`, `lang_code`, `id_page`, `status`) VALUES
(245, NULL, 'vi', 1, NULL),
(177, 88, 'vi', 31, NULL),
(162, 62, 'vi', 2, NULL),
(169, 61, 'vi', 29, NULL),
(146, 9, 'vi', 2, NULL),
(129, 35, 'vi', 2, NULL),
(64, 73, 'vi', 3, NULL),
(10, 72, 'vi', 2, NULL),
(11, 72, 'vi', 3, NULL),
(176, 74, 'vi', 31, NULL),
(158, 75, 'vi', 2, NULL),
(163, 76, 'vi', 2, NULL),
(42, 78, 'vi', 2, NULL),
(43, 79, 'vi', 28, NULL),
(58, 80, 'vi', 30, NULL),
(343, 77, 'vi', 3, NULL),
(192, 82, 'vi', 30, NULL),
(236, 83, 'vi', 30, NULL),
(106, 84, 'vi', 30, NULL),
(183, 85, 'vi', 30, NULL),
(235, 86, 'vi', 30, NULL),
(185, 87, 'vi', 30, NULL),
(178, 89, 'vi', 31, NULL),
(171, 90, 'vi', 31, NULL),
(179, 91, 'vi', 31, NULL),
(186, 92, 'vi', 30, NULL),
(108, 93, 'vi', 30, NULL),
(187, 94, 'vi', 30, NULL),
(168, 95, 'vi', 29, NULL),
(170, 96, 'vi', 29, NULL),
(147, 97, 'vi', 29, NULL),
(120, NULL, 'vi', 1, NULL),
(121, NULL, 'vi', 2, NULL),
(122, NULL, 'vi', 3, NULL),
(123, NULL, 'vi', 4, NULL),
(124, NULL, 'vi', 28, NULL),
(125, NULL, 'vi', 29, NULL),
(126, NULL, 'vi', 30, NULL),
(127, NULL, 'vi', 31, NULL),
(128, NULL, 'vi', 30, NULL),
(189, 99, 'vi', 30, NULL),
(133, NULL, 'vi', 30, NULL),
(188, 100, 'vi', 30, NULL),
(148, NULL, 'vi', 30, NULL),
(190, 101, 'vi', 30, NULL),
(151, NULL, 'vi', 30, NULL),
(153, NULL, 'vi', 32, NULL),
(193, NULL, 'vi', 30, NULL),
(196, 104, 'vi', 30, NULL),
(197, NULL, 'vi', 4, NULL),
(198, NULL, 'vi', 29, NULL),
(201, 106, 'vi', 29, NULL),
(202, 105, 'vi', 3, NULL),
(203, NULL, 'vi', 1, NULL),
(204, NULL, 'vi', 2, NULL),
(205, NULL, 'vi', 3, NULL),
(206, NULL, 'vi', 4, NULL),
(207, NULL, 'vi', 28, NULL),
(208, NULL, 'vi', 29, NULL),
(209, NULL, 'vi', 30, NULL),
(210, NULL, 'vi', 31, NULL),
(211, NULL, 'vi', 32, NULL),
(217, 107, 'vi', 30, NULL),
(216, NULL, 'vi', 30, NULL),
(219, 108, 'vi', 30, NULL),
(220, NULL, 'vi', 1, NULL),
(221, NULL, 'vi', 2, NULL),
(222, NULL, 'vi', 3, NULL),
(223, NULL, 'vi', 4, NULL),
(224, NULL, 'vi', 28, NULL),
(225, NULL, 'vi', 29, NULL),
(226, NULL, 'vi', 30, NULL),
(227, NULL, 'vi', 31, NULL),
(228, NULL, 'vi', 32, NULL),
(230, 109, 'vi', 30, NULL),
(231, NULL, 'vi', 32, NULL),
(233, 110, 'vi', 32, NULL),
(238, NULL, 'vi', 30, NULL),
(284, 111, 'vi', 4, NULL),
(307, NULL, 'vi', 34, NULL),
(246, NULL, 'vi', 2, NULL),
(247, NULL, 'vi', 3, NULL),
(248, NULL, 'vi', 33, NULL),
(249, NULL, 'vi', 28, NULL),
(250, NULL, 'vi', 29, NULL),
(251, NULL, 'vi', 30, NULL),
(252, NULL, 'vi', 31, NULL),
(253, NULL, 'vi', 32, NULL),
(254, NULL, 'vi', 33, NULL),
(279, 113, 'vi', 4, NULL),
(277, 112, 'vi', 4, NULL),
(260, NULL, 'vi', 33, NULL),
(282, 114, 'vi', 4, NULL),
(266, NULL, 'vi', 1, NULL),
(267, NULL, 'vi', 2, NULL),
(268, NULL, 'vi', 3, NULL),
(269, NULL, 'vi', 33, NULL),
(270, NULL, 'vi', 28, NULL),
(271, NULL, 'vi', 29, NULL),
(272, NULL, 'vi', 30, NULL),
(273, NULL, 'vi', 31, NULL),
(274, NULL, 'vi', 32, NULL),
(281, 115, 'vi', 4, NULL),
(285, NULL, 'vi', 30, NULL),
(286, 116, 'vi', 30, NULL),
(287, NULL, 'vi', 1, NULL),
(288, NULL, 'vi', 2, NULL),
(289, NULL, 'vi', 3, NULL),
(290, NULL, 'vi', 4, NULL),
(291, NULL, 'vi', 28, NULL),
(292, NULL, 'vi', 29, NULL),
(293, NULL, 'vi', 30, NULL),
(294, NULL, 'vi', 31, NULL),
(295, NULL, 'vi', 32, NULL),
(296, NULL, 'vi', 34, NULL),
(306, 117, 'vi', 34, NULL),
(341, 25, 'vi', 3, NULL),
(309, 118, 'vi', 34, NULL),
(310, NULL, 'vi', 34, NULL),
(312, 119, 'vi', 34, NULL),
(313, NULL, 'vi', 34, NULL),
(314, 120, 'vi', 34, NULL),
(315, NULL, 'vi', 34, NULL),
(316, 121, 'vi', 34, NULL),
(317, NULL, 'vi', 34, NULL),
(318, 122, 'vi', 34, NULL),
(319, NULL, 'vi', 34, NULL),
(320, 123, 'vi', 34, NULL),
(321, NULL, 'vi', 29, NULL),
(323, 124, 'vi', 29, NULL),
(324, NULL, 'vi', 29, NULL),
(325, 125, 'vi', 29, NULL),
(340, 25, 'vi', 1, NULL),
(339, 25, 'vi', 2, NULL),
(342, 77, 'vi', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dichvu_category`
--

CREATE TABLE `dichvu_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '10',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `block_left` tinyint(4) DEFAULT '0',
  `block_right` tinyint(4) DEFAULT '0',
  `block_body` tinyint(4) DEFAULT '0',
  `block_body2` tinyint(4) DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `nhomdichvu_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dichvu_category`
--

INSERT INTO `dichvu_category` (`id`, `name`, `alias`, `picture`, `picture_multi`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `content`, `block_left`, `block_right`, `block_body`, `block_body2`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `nhomdichvu_id`) VALUES
(39, 'Chiến lược nhân sự', 'chien-luoc-nhan-su', '', '', 0, '2014-05-09 10:05:14', 31, '2015-11-24 11:11:29', 47, 9, 1, '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 1, 1, 0, 0, 'Danh sách Quán Nhậu Ngon', 'Danh sách các quán nhậu uy tín, đảm bảo sạch sẽ, Nơi tổ chức liên hoan tiệc tùng ngon, Địa điểm nhậu cho cánh mài râu vào cuối tháng, Đưa ra quán nhậu tốt nhất', 'quán nhậu, danh sách quán bia, địa điểm liên hoan, ăn liên hoan, nhậu', 'vi', 4),
(40, 'Chiến lược thương hiệu', 'chien-luoc-thuong-hieu', '', '', 0, '2014-05-09 10:05:34', 31, '2015-11-25 04:11:02', 47, 3, 1, '', 0, 0, 0, 0, 'Quán ăn - Địa chỉ ăn chơi', 'Địa chỉ các quán ăn uy tín, quán ăn ngon, quán ăn giá rẻ, quán ăn sạch cho mọn người.', 'quán ăn uy tín, quán ăn ngon, quán ăn giá rẻ, quán ăn sạch', 'vi', 3),
(37, 'Thiết kế thương hiệu', 'thiet-ke-thuong-hieu', '', '', 0, '2014-05-08 08:05:17', 31, '2015-11-24 04:11:20', 32, 2, 1, '', 0, 0, 0, 1, 'Buffet - Địa chỉ ăn chơi', 'Danh sách các quán buffet ngon, quán buffet rẻ hay những quán buffet sang trọng tại các thành phố lớn trên toàn quốc', 'Buffet, quán Buffet, quán Buffet ngon, Buffet giá rẻ, quán Buffet sang trọng, quán Buffet độc đáo', 'vi', 2),
(61, 'Tư vấn Mareting', 'tu-van-mareting', '', '', 0, '2015-11-19 11:11:19', 47, '2015-12-08 12:12:41', 32, 1, 1, '', 0, 0, 0, 0, '', '', '', 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '10',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `city_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `code`, `order`, `status`, `city_id`) VALUES
(15, 'Long Biên', '0', 255, 1, 2),
(14, 'Hoàng Mai', '0', 255, 1, 2),
(4, 'Ba Đình', '0', 10, 1, 2),
(5, ' Cầu Giấy', '0', 10, 1, 2),
(6, ' Đống Đa', '0', 10, 1, 2),
(13, 'Hoàn Kiếm', '0', 255, 1, 2),
(12, 'Hai Bà Trưng', '0', 255, 1, 2),
(11, 'Hà Đông', '0', 255, 1, 2),
(10, 'Bắc Từ Liêm', '0', 10, 1, 2),
(16, 'Nam Từ Liêm', '0', 255, 1, 2),
(17, 'Tây Hồ', '0', 255, 1, 2),
(18, 'Thanh Xuân', '0', 255, 1, 2),
(19, 'Sơn Tây', '0', 255, 1, 2),
(20, 'Huyện Ba Vì', '0', 255, 1, 2),
(21, 'Huyện Chương Mỹ', '0', 255, 1, 2),
(22, 'Huyện Đan Phượng	', '0', 255, 1, 2),
(23, 'Huyện Đông Anh	', '0', 255, 1, 2),
(24, 'Huyện Gia Lâm	', '0', 255, 1, 2),
(25, 'Huyện Hoài Đức	', '0', 255, 1, 2),
(26, 'Huyện Mê Linh	', '0', 255, 1, 2),
(27, 'Huyện Mỹ Đức	', '0', 255, 1, 2),
(28, 'Huyện Phú Xuyên	', '0', 255, 1, 2),
(29, 'Huyện Phúc Thọ	', '0', 255, 1, 2),
(30, 'Huyện Quốc Oai	', '0', 255, 1, 2),
(31, 'Huyện Sóc Sơn	', '0', 255, 1, 2),
(32, 'Huyện Thanh Oai	', '0', 255, 1, 2),
(33, 'Huyện Thanh Trì	', '0', 255, 1, 2),
(34, 'Huyện Thạch Thất	', '0', 255, 1, 2),
(35, 'Huyện Thường Tín	', '0', 255, 1, 2),
(36, 'Huyện Ứng Hoà	', '0', 255, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) NOT NULL DEFAULT '0',
  `update_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `name`, `images`, `url`, `create_date`, `update_date`) VALUES
(4, 'Toàn cảnh <span> Tháng 7 </span>', '/public/files/editor-upload/images/tapchithang7.png', '/public/files/editor-upload/files/tapchithang7.pdf', '28-08-2016', '28-08-2016'),
(6, 'Toàn cảnh <span> Tháng 9 </span>', '/public/files/editor-upload/images/ToancanhThang9.png', '/public/files/editor-upload/files/ToancanhThang9.pdf', '27-09-2016', NULL),
(8, 'Toàn cảnh <span>tháng 11</span>', '/public/files/editor-upload/images/Toancanhthang11.png', '/public/files/editor-upload/files/Toancanhthang11.pdf', '28-11-2016', '28-11-2016'),
(9, 'Toàn cảnh <span>tháng 12</span>', '/public/files/editor-upload/images/Toancanhthang12.png', '/public/files/editor-upload/files/Toancanhthang12.pdf', '18-12-2016', NULL),
(10, 'Toàn cảnh <span>tháng 1</span>', '/public/files/editor-upload/images/Toancanhthang1.png', '/public/files/editor-upload/files/Toancanhthang1.pdf', '13-01-2017', NULL),
(12, 'Toàn cảnh <span>tháng 2</span>', '/public/files/editor-upload/images/Toancanhthang2.png', '/public/files/editor-upload/files/Toancanhthang2.pdf', '20-03-2017', NULL),
(13, 'Toàn cảnh <span>tháng 3</span>', '/public/files/editor-upload/images/Toancanhthang3.png', '/public/files/editor-upload/files/Toancanhthang3.pdf', '20-03-2017', NULL),
(14, 'Toàn cảnh tháng 4', '/public/files/editor-upload/images/Toancanhthang4.PNG', '/public/files/editor-upload/files/Toancanhthang4.pdf', '06-04-2017', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dulich`
--

CREATE TABLE `dulich` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8_unicode_ci,
  `manu_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `lang_code` varchar(7) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `synopsis` tinytext COLLATE utf8_unicode_ci,
  `synopsis_en` tinytext COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slogan` tinytext COLLATE utf8_unicode_ci,
  `slogan_en` tinytext COLLATE utf8_unicode_ci,
  `picture_banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_banner_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '255'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dulich`
--

INSERT INTO `dulich` (`id`, `name`, `name_en`, `picture`, `thumb`, `picture_multi`, `content`, `content_en`, `manu_id`, `status`, `lang_code`, `synopsis`, `synopsis_en`, `alias`, `slogan`, `slogan_en`, `picture_banner`, `picture_banner_mobile`, `picture_mobile`, `order`) VALUES
(393, 'Du lịch hội nghị', 'Conference tourism', '/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulich005(2).jpg', '/public/files/editor-upload/_thumbs/images/du-lich/hoi-nghi/img-dulich005(2).jpg', '', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulichhoinghi01(1).jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Các tiện ích&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Trung tâm Hội nghị Monter Carlo Conference Center đẳng cấp Quốc tế&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Thiết kế sang trọng&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Sức chứa 2000 người&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Các tiện ích&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Trang thiết bị hiện đại&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Giao lưu ngoài trời&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulichhoinghi02(1).jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulichhoinghi03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Ngay tại phân khu Tropical Monaco, bên cạnh dãy khách sạn 5 sao sang trọng là Trung tâm Hội nghị đẳng cấp Quốc tế mang tên Monter Carlo Conference Center. Được thiết kế theo lối kiến trúc vương giả bắt nguồn từ cảm hứng kiến trúc của tòa nhà Casino Monte Carlo – sòng bạc lộng lẫy, xa hoa và đẳng cấp bậc nhất thế giới, Trung tâm Hội nghị Monter Carlo mang lại cảm giác sang trọng trong từng chi tiết. Phòng ốc tại đây được trang trí bắt mắt, với đầy đủ trang thiết bị hiện đại, chắc chắn sẽ mang tới những trải nghiệm chuyên nghiệp cho khách hàng.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Thêm vào đó, với sức chứa lên tới 2.000 người, Trung tâm Monter Carlo có thể đáp ứng được những buổi hội nghị tầm cỡ, hứa hẹn sẽ là nơi lý tưởng cho các doanh nghiệp lựa chọn.&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulichhoinghi04.jpg\" style=\"width: 100%;\" /&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Nếu muốn “thay đổi không khí” tổ chức các sự kiện ngoài trời, các quảng trường tại Wonder City luôn sẵn sàng cho những lễ hội phóng khoáng đầy màu sắc. Đây cũng sẽ là một lựa chọn khá thú vị cho các doanh nghiệp.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulichhoinghi01(1).jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Consectetur adipiscing eli&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Nullam porta imperdiet nulla&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Amet imperdiet augue mattis nec&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Consectetur adipiscing eli&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Nullam porta imperdiet nulla&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Amet imperdiet augue mattis nec&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulichhoinghi02(1).jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulichhoinghi03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulichhoinghi04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, 1, 'vi', 'Không chỉ phục vụ các khách hàng cá nhân, Wonder City còn là một lựa chọn hoàn hảo cho các khách hàng doanh nghiệp. Tại đây, mọi nhu cầu về du lịch hội nghị quy mô lớn nhỏ với những tiêu chuẩn khắt', 'Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pel', 'du-lich-hoi-nghi', 'Đệ nhất kỳ quan <br/> nghỉ dưỡng biển', 'The first wonder <br/> beach resort', '/public/files/editor-upload/images/du-lich/hoi-nghi/bg-dulichhoinghi.jpg', '/public/files/editor-upload/images/du-lich/hoi-nghi/bn-hoinghi.jpg', '/public/files/editor-upload/images/du-lich/hoi-nghi/img-dulich005.png', 5),
(409, 'Du lịch mua sắm', 'Tourism shopping', '/public/files/editor-upload/images/du-lich/mua-sam/img-dulich003.jpg', '/public/files/editor-upload/_thumbs/images/du-lich/mua-sam/img-dulich003.jpg', '', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/mua-sam/img-dulichmuasam01.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Các tiện ích&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				&lt;div&gt;\r\n					Chợ đêm quảng trường Đông Kinh Nghĩa Thục&lt;/div&gt;\r\n			&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Chợ đêm quảng trường Ngọ Môn&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Chợ đêm quảng trường và phố đi bộ Nguyễn Huệ&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			&amp;nbsp;&lt;/h3&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/mua-sam/img-dulichmuasam02.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/mua-sam/img-dulichmuasam03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Mỗi ngày tại Wonder City là một cơ hội để du khách tìm hiểu những sản vật, vật phẩm đặc trưng của dải đất chữ S. Du khách sẽ chẳng cần phải ghé tận Hàng Ngang để lựa cho mình một tấm áo dài truyền thống hay qua khu Đại Nội chỉ để chọn mua một chiếc túi xách mây tre đan. Mọi sản vật đặc sắc nhất từ các tỉnh miền núi, vùng trung du đến các địa phương ven biển đều được bày bán tại khu chợ đêm của quần thể du lịch nghỉ dưỡng xinh đẹp này.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Dưới bàn tay tài hoa của các kiến trúc sư, quảng trường Đông Kinh Nghĩa Thục, quảng trường Ngọ Môn và quảng trường&amp;amp; phố đi bộ Nguyễn Huệ được thiết kế khéo léo, tái hiện “đặc sản” chợ đêm của Việt Nam một cách sinh động.&amp;nbsp; Nối tiếp những cửa hàng tơ gấm Hội An là dãy hàng trang sức bằng ngọc trai Phú Quốc. Kế bên khu trà xanh Thái Nguyên, cà phê Buôn Mê và những gian hàng nước mắm Khánh Hòa, muối tôm Tây Ninh.&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Nếu là một tín đồ mua sắm, khu shopping của Wonder City nhất định là điểm đến thu hút mà du khách chẳng thể bỏ lỡ.&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/mua-sam/img-dulichmuasam04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Để làm sống dậy bầu không khí sầm uất, nhộn nhịp của khu chợ đêm và làm tăng thêm sự hưng phấn của du khách thập phương, quần thể mua sắm của Wonder City còn được chọn là nơi diễn ra những lệ hội biển tưng bừng. Tại đây, du khách sẽ có cơ hội hòa mình vào những tiết mục nhạc sống đặc sắc hay những màn biểu diễn nghệ thuật ấn tượng.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;div&gt;\r\n			&lt;div&gt;\r\n				&lt;div&gt;\r\n					&lt;div class=\"b__nghiduong--box\" style=\"box-sizing: border-box; display: flex; flex-flow: row wrap; justify-content: space-around; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n						&lt;div class=\"b__nghiduong--left\" style=\"box-sizing: border-box; flex-basis: 33.33%; max-width: 33.33%;\"&gt;\r\n							&lt;ul style=\"padding-right: 0px; padding-left: 0px; box-sizing: border-box; margin: 0px;\"&gt;\r\n								&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n									&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_nghiduong.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch nghỉ dưỡng biển&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li class=\"active\" style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n									&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_giaitri.html\" style=\"box-sizing: border-box; color: rgb(0, 117, 128); text-decoration-line: none; background-color: transparent; font-weight: bold; font-size: 18px;\"&gt;Du lịch vui chơi giải trí&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n									&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_amthuc.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch ẩm thực&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n									&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_muasam.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch mua sắm&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n									&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_hoinghi.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch hội nghị&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n									&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_khampha.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch khám phá&lt;/a&gt;&lt;/li&gt;\r\n							&lt;/ul&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=\"b__nghiduong--right\" style=\"box-sizing: border-box; max-width: 66.67%; flex-basis: 66.67%;\"&gt;\r\n							&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: &amp;quot;Conv_Caturrita VU Regular&amp;quot;; font-weight: 500; line-height: 1.2; color: rgb(0, 117, 128); font-size: 1.75rem;\"&gt;\r\n								Du lịch giải trí&lt;/h3&gt;\r\n							&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=\"b__images\" style=\"box-sizing: border-box; margin: 30px 0px;\"&gt;\r\n							&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 1366px; height: 599px;\" /&gt;&lt;/div&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=\"b__nghiduong--box\" style=\"box-sizing: border-box; display: flex; flex-flow: row wrap; justify-content: space-around; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n						&lt;div class=\"b__nghiduong--left b__nghiduong--50\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 0px 100px; margin-bottom: 50px;\"&gt;\r\n							&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; color: rgb(51, 51, 51); font-size: 1.75rem;\"&gt;\r\n								Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n							&lt;ul style=\"padding-right: 0px; padding-left: 0px; box-sizing: border-box; margin: 0px;\"&gt;\r\n								&lt;li style=\"box-sizing: border-box; list-style: disc; margin-bottom: 5px; margin-left: 20px;\"&gt;\r\n									Consectetur adipiscing eli&lt;/li&gt;\r\n								&lt;li style=\"box-sizing: border-box; list-style: disc; margin-bottom: 5px; margin-left: 20px;\"&gt;\r\n									Nullam porta imperdiet nulla&lt;/li&gt;\r\n								&lt;li style=\"box-sizing: border-box; list-style: disc; margin-bottom: 5px; margin-left: 20px;\"&gt;\r\n									Amet imperdiet augue mattis nec&lt;/li&gt;\r\n							&lt;/ul&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=\"b__nghiduong--right b__nghiduong--50\" style=\"box-sizing: border-box; max-width: 50%; flex-basis: 50%; padding: 0px 100px; margin-bottom: 50px;\"&gt;\r\n							&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: &amp;quot;Conv_Caturrita VU Regular&amp;quot;; line-height: 1.2; color: rgb(51, 51, 51); font-size: 1.75rem;\"&gt;\r\n								Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n							&lt;ul style=\"padding-right: 0px; padding-left: 0px; box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n								&lt;li style=\"box-sizing: border-box; margin-left: 20px; list-style: disc;\"&gt;\r\n									Consectetur adipiscing eli&lt;/li&gt;\r\n								&lt;li style=\"box-sizing: border-box; margin-left: 20px; list-style: disc;\"&gt;\r\n									Nullam porta imperdiet nulla&lt;/li&gt;\r\n								&lt;li style=\"box-sizing: border-box; margin-left: 20px; list-style: disc;\"&gt;\r\n									Amet imperdiet augue mattis nec&lt;/li&gt;\r\n							&lt;/ul&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=\"b__images--gr\" style=\"box-sizing: border-box; margin: 0px -10px 30px; display: flex; flex-flow: row wrap;\"&gt;\r\n							&lt;div class=\"b__images--ls\" style=\"box-sizing: border-box; padding: 0px 10px; max-width: 50%; flex-basis: 50%;\"&gt;\r\n								&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; max-height: 100%; width: 892.5px;\" /&gt;&lt;/div&gt;\r\n							&lt;div class=\"b__images--ls\" style=\"box-sizing: border-box; padding: 0px 10px; max-width: 50%; flex-basis: 50%;\"&gt;\r\n								&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-conference02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; max-height: 100%; width: 892.5px;\" /&gt;&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n						&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n							Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n						&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n							Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=\"b__images\" style=\"box-sizing: border-box; margin: 30px 0px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/bg-dulichamthuc.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 1810px;\" /&gt;&lt;/div&gt;\r\n					&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n						&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n							Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div&gt;\r\n					&amp;nbsp;&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, 1, 'vi', 'Wonder City mang đến lựa chọn mua sắm thỏa thích với đa dạng những sản vật đặc trưng 3 miền Bắc-Trung-Nam, để cảm xúc trải nghiệm của du khách càng thêm đong đầy. ', '', 'du-lich-mua-sam', 'Đệ nhất kỳ quan <br> nghỉ dưỡng biển', '', '/public/files/editor-upload/images/du-lich/mua-sam/bg-dulichmuasam.jpg', '/public/files/editor-upload/images/du-lich/mua-sam/bn-muasam.jpg', '/public/files/editor-upload/images/du-lich/mua-sam/img-dulich003.png', 4),
(416, 'Du lịch vui chơi giải trí', 'Tourism and entertainment', '/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulich004.jpg', '/public/files/editor-upload/_thumbs/images/du-lich/vui-choi-giai-tri/img-dulich004.jpg', '', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri01.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Các tiện ích&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Barbados cá tính&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Tropical Monaco thượng lưu&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Little Vietnam sống động, bao gồm: Little Hanoi, Little Saigon và Little Hue&lt;/li&gt;\r\n			&lt;li&gt;\r\n				CLB Sailing Club sang trọng&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Các tiện ích&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Quảng trường biển 24h không nghỉ náo nhiệt&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Công viên chủ đề Everland hấp dẫn&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Con đường gỗ dạo bộ Ngọa Vân&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Cây cầu Pha Lê đáy kính&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri02.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Chỉ ở Wonder City, du khách mới có cơ hội thưởng trọn vịnh Vân Phong trên cây cầu Pha Lê đáy kính, tận mắt ngắm nhìn ngọn Hải Đăng &lt;strong&gt;&lt;em&gt;Mắt Biển&lt;/em&gt;&lt;/strong&gt; sừng sững và khám phá muôn vàn điểm check-in độc đáo. Đó là biểu tượng Barbados cá tính nằm giữa thiên nhiên hoang dã nơi lưng chừng núi Cá Ông hay biểu tượng Tropical Monaco thượng lưu trên núi Hòn Ngang. Một Việt Nam thu nhỏ mang đến trải nghiệm lạ-mà-quen qua những biểu tượng đặc trưng ba miền như Khuê Văn Các, Cố đô Huế hay Chợ Bến Thành.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Bên cạnh những điểm check-in mới lạ, du khách còn có cơ hội trải nghiệm không khí lễ hội bất tận, náo nhiệt của Quảng trường biển 24h không nghỉ. Nơi đây sẽ diễn ra những màn diễu hành sôi động, những điệu múa lửa nóng bỏng hay những lễ hội âm nhạc tưng bừng.&amp;nbsp;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Công viên chủ đề Everland hoành tráng sẽ đưa du khách du ngoạn với &lt;em&gt;…&lt;/em&gt; trò chơi trong nhà lẫn ngoài trời và các công trình mô phỏng kiến trúc ấn tượng. Tại đây, du khách sẽ được vui chơi thỏa thích với Top 10 trò cảm giác mạnh nhất thế giới như vòng quay siêu tốc, xoay cốc khổng lồ, hay tận hưởng giây phút sảng khoái, thư giãn với những hoạt động biển như: lướt ván, cano, nhảy dù trên biển.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Wonder City là không gian vui chơi giải trí đẳng cấp, không chỉ mang đến những trải nghiệm phấn khích qua các trò chơi thú vị mà còn tạo niềm vui bất tận cho du khách khi hòa mình vào các lễ hội đường phố. Nơi đây chắc chắn sẽ làm hài lòng du khách ở mọi độ tuổi, cả du khách Việt Nam lẫn du khách quốc tế.&amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri01.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Consectetur adipiscing eli&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Nullam porta imperdiet nulla&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Amet imperdiet augue mattis nec&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Consectetur adipiscing eli&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Nullam porta imperdiet nulla&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Amet imperdiet augue mattis nec&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri02.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, 1, 'vi', 'Wonder City là tổ hợp vui chơi giải trí không giới hạn, hấp dẫn hàng đầu Việt Nam với nhiều sự lựa chọn cho mọi đối tượng. Từ gia đình, nhóm bạn đến trẻ nhỏ, từ khách du lịch Việt Nam đến d', '', 'du-lich-vui-choi-giai-tri', 'Đệ nhất kỳ quan <br> nghỉ dưỡng biển', '', '/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/bg-dulichgiaitri.jpg', '/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/bn-giaitri.jpg', '/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulich004.png', 2),
(410, 'Du lịch ẩm thực', '', '/public/files/editor-upload/images/du-lich/am-thuc/img-dulich002.jpg', '/public/files/editor-upload/_thumbs/images/du-lich/am-thuc/img-dulich002.jpg', '', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/am-thuc/img-dulichamthu01.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Đặc sản 3 miền Việt Nam&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Tinh hoa ẩm thực bốn phương&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Món ăn đường phố&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Món ăn đẳng cấp thế giới&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/am-thuc/img-dulichamthu02.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/am-thuc/img-dulichamthu03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Song song với thế giới nghỉ dưỡng muôn sắc màu tại Wonder City, thế giới ẩm thực tại đây cũng biến hóa theo từng phân khu.&lt;/div&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Tại Little Hanoi, dạo quanh các con phố phỏng theo Hà Nội 36 phố phường, du khách sẽ tìm thấy những món ăn đặc sản nức tiếng của Hà thành như &lt;em&gt;phở, bún chả, bún riêu cua, bánh tôm hồ Tây, cốm làng Vòng, vv…&lt;/em&gt; Tại Little Hue, &lt;em&gt;cơm hến, bún bò, bánh bột lọc … &lt;/em&gt;luôn sẵn sàng phục vụ các thực khách yêu hương vị đậm đà của ẩm thực miền Trung. Trong khi đó, Little Saigon sẽ chiêu đãi du khách các món ngon mang đậm dư vị miền Tây như: &lt;em&gt;lẩu mắm, hủ tiếu, cháo cá lóc, cơm tấm,vv…&lt;/em&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Ra khỏi Little Vietnam, du khách sẽ được đánh thức vị giác với tinh hoa ẩm thực 4 phương thế giới được chế biến bởi những đầu bếp tài ba tại các nhà hàng ở Tropical Monaco hay Asia Barbados. Tại đây, bạn sẽ có cơ hội thưởng thức các món ăn sang chảnh, nổi tiếng thế giới như&lt;em&gt;: thịt lợn xông khói, súp Bessara, cháo cá Barbados, vv&lt;/em&gt; …&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/am-thuc/img-dulichamthu04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;Nếm chút hương vị Bắc – Trung – Nam ba miền Tổ Quốc qua những món ăn đặc trưng vùng miền tại Littie Vietnam, hay “đổi gió” với ẩm thực Á Âu nổi tiếng Thế giới được phục vụ trong các “nhà hàng của những Kỳ quan” như vườn treo Babylon, tháp Eiffel, … Đây chắc chắn sẽ là một trải nghiệm khó có thể chối từ!&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/am-thuc/img-dulichamthu01.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Consectetur adipiscing eli&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Nullam porta imperdiet nulla&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Amet imperdiet augue mattis nec&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Consectetur adipiscing eli&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Nullam porta imperdiet nulla&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Amet imperdiet augue mattis nec&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/am-thuc/img-dulichamthu02.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/am-thuc/img-dulichamthu03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/am-thuc/img-dulichamthu04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, 1, 'vi', 'Đến với Wonder City, du khách sẽ được thưởng thức một thế giới ẩm thực phong phú với đa dạng các món ăn từ Bắc vào Nam, từ truyền thống tới hiện đại, từ Việt Nam tới quốc tế.', '', 'du-lich-am-thuc', 'Đệ nhất kỳ quan <br> nghỉ dưỡng biển', '', '/public/files/editor-upload/images/du-lich/kham-pha/bg-dulichamthuc.jpg', '/public/files/editor-upload/images/du-lich/kham-pha/bn-amthuc.jpg', '/public/files/editor-upload/images/du-lich/am-thuc/img-dulich002.png', 3);
INSERT INTO `dulich` (`id`, `name`, `name_en`, `picture`, `thumb`, `picture_multi`, `content`, `content_en`, `manu_id`, `status`, `lang_code`, `synopsis`, `synopsis_en`, `alias`, `slogan`, `slogan_en`, `picture_banner`, `picture_banner_mobile`, `picture_mobile`, `order`) VALUES
(412, 'Du lịch nghỉ dưỡng biển', 'Marine tourism', '/public/files/editor-upload/images/du-lich/nghi-duong-bien/img-dulich001.jpg', '/public/files/editor-upload/_thumbs/images/du-lich/nghi-duong-bien/img-dulich001.jpg', '', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/nghi-duong-bien/img-nghiduong01.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Các tiện ích&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Không khí trong lành&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Thiên nhiên tươi đẹp&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Không gian nghỉ dưỡng đẳng cấp&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Các tiện ích&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Resort – khách sạn 5 sao&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Dịch vụ spa cao cấp&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/nghi-duong-bien/img-nghiduong02.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/nghi-duong-bien/img-nghiduong03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Không phải ngẫu nhiên vịnh Vân Phong được ví von là “nàng công chúa biển ngủ quên”. Nơi đây hội tụ những yếu tố đẹp nhất mà một vùng biển cần có, đó là xinh đẹp, hoang sơ, và yên bình. Sẽ chẳng điều gì tuyệt vời hơn khi ngày ngày du khách được thoải mái hít hà không khí trong lành, ngắm nhìn núi non mây trời, dạo bước trên bờ cát thấm kim sa mát rượi, lắng nghe sóng vỗ cùng thanh âm của những đàn chim yến bay về làm tổ trên vách núi. Mọi mệt mỏi, lo toan, căng thẳng sẽ trôi xa theo từng con sóng.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Du khách cũng hoàn toàn có thể trải thảm tập yoga trên bờ cát thấm, để cơ thể hòa quyện cùng đất trời, để từng tế bào được hồi phục sau những ngày dài vất vả.&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/nghi-duong-bien/img-nghiduong04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Đến với Wonder City, bên cạnh việc tận hưởng vẻ đẹp Vân Phong mê hồn, du khách còn được đắm chìm trong không gian nghỉ dưỡng đẳng cấp tại các khu resort, các dãy khách sạn 5 sao.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Bỏ lại những mệt mỏi lo toan từ nhịp sống thị thành, du khách có thể chiều chuộng bản thân với những dịch vụ Spa cao cấp, chu đáo. Thư giãn trong bồn tắm ngọc lan tây hướng biển, nhâm nhi một ly Tequila đặc trưng Nam Mỹ - còn gì tuyệt vời hơn phải không?&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;div&gt;\r\n			&lt;div class=\"b__nghiduong--box\" style=\"box-sizing: border-box; display: flex; flex-flow: row wrap; justify-content: space-around; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n				&lt;div class=\"b__nghiduong--left\" style=\"box-sizing: border-box; flex-basis: 33.33%; max-width: 33.33%;\"&gt;\r\n					&lt;ul style=\"padding-right: 0px; padding-left: 0px; box-sizing: border-box; margin: 0px;\"&gt;\r\n						&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n							&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_nghiduong.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch nghỉ dưỡng biển&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li class=\"active\" style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n							&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_giaitri.html\" style=\"box-sizing: border-box; color: rgb(0, 117, 128); text-decoration-line: none; background-color: transparent; font-weight: bold; font-size: 18px;\"&gt;Du lịch vui chơi giải trí&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n							&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_amthuc.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch ẩm thực&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n							&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_muasam.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch mua sắm&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n							&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_hoinghi.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch hội nghị&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li style=\"box-sizing: border-box; list-style: none; margin-bottom: 5px;\"&gt;\r\n							&lt;a href=\"file:///F:/sever2/htdocsCity_HTML(05-09)City_HTML/dulich_khampha.html\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration-line: none; background-color: transparent;\"&gt;Du lịch khám phá&lt;/a&gt;&lt;/li&gt;\r\n					&lt;/ul&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__nghiduong--right\" style=\"box-sizing: border-box; max-width: 66.67%; flex-basis: 66.67%;\"&gt;\r\n					&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: &amp;quot;Conv_Caturrita VU Regular&amp;quot;; font-weight: 500; line-height: 1.2; color: rgb(0, 117, 128); font-size: 1.75rem;\"&gt;\r\n						Du lịch giải trí&lt;/h3&gt;\r\n					&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__images\" style=\"box-sizing: border-box; margin: 30px 0px;\"&gt;\r\n					&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 1366px; height: 599px;\" /&gt;&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__nghiduong--box\" style=\"box-sizing: border-box; display: flex; flex-flow: row wrap; justify-content: space-around; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n				&lt;div class=\"b__nghiduong--left b__nghiduong--50\" style=\"box-sizing: border-box; flex-basis: 50%; max-width: 50%; padding: 0px 100px; margin-bottom: 50px;\"&gt;\r\n					&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; color: rgb(51, 51, 51); font-size: 1.75rem;\"&gt;\r\n						Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n					&lt;ul style=\"padding-right: 0px; padding-left: 0px; box-sizing: border-box; margin: 0px;\"&gt;\r\n						&lt;li style=\"box-sizing: border-box; list-style: disc; margin-bottom: 5px; margin-left: 20px;\"&gt;\r\n							Consectetur adipiscing eli&lt;/li&gt;\r\n						&lt;li style=\"box-sizing: border-box; list-style: disc; margin-bottom: 5px; margin-left: 20px;\"&gt;\r\n							Nullam porta imperdiet nulla&lt;/li&gt;\r\n						&lt;li style=\"box-sizing: border-box; list-style: disc; margin-bottom: 5px; margin-left: 20px;\"&gt;\r\n							Amet imperdiet augue mattis nec&lt;/li&gt;\r\n					&lt;/ul&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__nghiduong--right b__nghiduong--50\" style=\"box-sizing: border-box; max-width: 50%; flex-basis: 50%; padding: 0px 100px; margin-bottom: 50px;\"&gt;\r\n					&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: &amp;quot;Conv_Caturrita VU Regular&amp;quot;; line-height: 1.2; color: rgb(51, 51, 51); font-size: 1.75rem;\"&gt;\r\n						Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n					&lt;ul style=\"padding-right: 0px; padding-left: 0px; box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n						&lt;li style=\"box-sizing: border-box; margin-left: 20px; list-style: disc;\"&gt;\r\n							Consectetur adipiscing eli&lt;/li&gt;\r\n						&lt;li style=\"box-sizing: border-box; margin-left: 20px; list-style: disc;\"&gt;\r\n							Nullam porta imperdiet nulla&lt;/li&gt;\r\n						&lt;li style=\"box-sizing: border-box; margin-left: 20px; list-style: disc;\"&gt;\r\n							Amet imperdiet augue mattis nec&lt;/li&gt;\r\n					&lt;/ul&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__images--gr\" style=\"box-sizing: border-box; margin: 0px -10px 30px; display: flex; flex-flow: row wrap;\"&gt;\r\n					&lt;div class=\"b__images--ls\" style=\"box-sizing: border-box; padding: 0px 10px; max-width: 50%; flex-basis: 50%;\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-dulichgiaitri02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; max-height: 100%; width: 892.5px;\" /&gt;&lt;/div&gt;\r\n					&lt;div class=\"b__images--ls\" style=\"box-sizing: border-box; padding: 0px 10px; max-width: 50%; flex-basis: 50%;\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/img-conference02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; max-height: 100%; width: 892.5px;\" /&gt;&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__images\" style=\"box-sizing: border-box; margin: 30px 0px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n				&lt;img src=\"/public/files/editor-upload/images/du-lich/vui-choi-giai-tri/bg-dulichamthuc.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 1810px;\" /&gt;&lt;/div&gt;\r\n			&lt;div class=\"b__text\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n				&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"&gt;\r\n					Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, 1, 'vi', 'Với không gian thiên nhiên còn nguyên nét tinh khôi, hoang sơ, kết hợp với dịch vụ tiện ích đẳng cấp từ các resort – khách sạn 5 sao, Wonder City sẽ là lựa chọn hoàn hảo cho nhu cầu du lịch nghỉ dưỡng', '', 'du-lich-nghi-duong-bien', 'Đệ nhất kỳ quan</br>\r\nnghỉ dưỡng biển', '', '/public/files/editor-upload/images/du-lich/nghi-duong-bien/banner-nghiduong.jpg', '/public/files/editor-upload/images/du-lich/nghi-duong-bien/bn-nghiduong.jpg', '/public/files/editor-upload/images/du-lich/nghi-duong-bien/img-dulich001.png', 1),
(418, 'Du lịch khám phá', 'Tour discover', '/public/files/editor-upload/images/du-lich/kham-pha/img-dulich006.jpg', '/public/files/editor-upload/_thumbs/images/du-lich/kham-pha/img-dulich006.jpg', '', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/kham-pha/bg-dulichkhampha.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Hàng chục ngọn núi, bán đảo nguyên sinh&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Bờ biển trải dài, làn nước trong xanh như ngọc&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Lặn biển nhìn ngắm những rặng san hô nhiều màu sắc&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Đón những tia nắng đầu tiên tại điểm cực Đông – Mũi Đôi&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Khám phá sinh hoạt của con người Vân Phong&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Thăm các địa danh du lịch lân cận: Nha Trang, Đà Lạt, Phú Yên…&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/kham-pha/img-dulichkhampha02.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/kham-pha/img-dulichkhampha03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;div&gt;\r\n		Hàng chục ngọn núi hùng vĩ cùng các bán đảo nguyên sinh vẫn còn hoang sơ như chưa từng có ai đặt chân đến, những bờ biển trải dài nước trong vắt xanh màu ngọc bích, những bài cát màu kim sa rực nắng… tất cả hội tụ làm nên vẻ đẹp thiên tạo của Vân Phong. Bạn như đang đi lạc ở đảo hoang giữa mênh mông biển cả, đi kèm là cảm giác vừa hơi sợ vừa phấn khích. Đó quả thực là một trải nghiệm đầy thú vị cho những ai thích du lịch khám phá.&lt;/div&gt;\r\n	&lt;p&gt;\r\n		Nếu yêu thích lặn biển và chiêm ngưỡng vẻ đẹp của những rặng san hô thì Đảo Cỏ Ống và Hòn Đỏ sẽ là hai địa điểm tuyệt vời dành cho bạn. Tại đây có hàng trăm loài san hô với hình thú độc đáo và màu sắc đa dạng. Đặc biệt, chúng chỉ cách mặt biển khoảng 5 đến 8 mét, nên chỉ cần cúi xuống là bạn đã có thể thưởng trọn bức họa phẩm đặc biệt trong lòng biển.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Bên cạnh đó, đến với Wonder City, bạn còn có thể dễ dàng ghé thăm Mũi Đôi – điểm cực Đông trong đất liền để hưởng trọn những phút giây đón tia nắng đầu tiên rạng rỡ, ngắm nhìn khoảnh khắc huy hoàng khi mặt trời ló rạng.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Và nếu như muốn tìm hiểu cuộc sống người dân nơi vịnh Vân Phong, bạn có thể tìm đến làng chài ở bãi Sơn Đừng, nơi chỉ có vỏn vẹn 10 hộ dân sinh sống nhưng có muôn vàn câu chuyện thú vị kể cho bạn nghe …&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/kham-pha/img-dulichkhampha04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Nằm trong trung tâm tam giác du lịch Phú Yên – Nha Trang – Đà Lạt, nên hành trình khám phá tại Wonder City sẽ dễ dàng được tiếp nối ra rất nhiều địa điểm du lịch nổi tiếng lân cận như Ghềnh Đá Đĩa (Phú Yên), hồ Xuân Hương (Đà Lạt), … Với cung đường di chuyển thuận tiện, phương tiện đi lại dễ dàng (ô tô, máy bay), đây sẽ là một ưu điểm mà các tín đồ du lịch khám phá không thể bỏ qua.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/kham-pha/bg-dulichkhampha.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__nghiduong--box\"&gt;\r\n	&lt;div class=\"b__nghiduong--left b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Consectetur adipiscing eli&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Nullam porta imperdiet nulla&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Amet imperdiet augue mattis nec&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--left--&gt;\r\n	&lt;div class=\"b__nghiduong--right b__nghiduong--50\"&gt;\r\n		&lt;h3&gt;\r\n			Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n		&lt;ul&gt;\r\n			&lt;li&gt;\r\n				Consectetur adipiscing eli&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Nullam porta imperdiet nulla&lt;/li&gt;\r\n			&lt;li&gt;\r\n				Amet imperdiet augue mattis nec&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- end .b__nghiduong--right--&gt;\r\n	&lt;div class=\"b__images--gr\"&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/kham-pha/img-dulichkhampha02.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n		&lt;div class=\"b__images--ls\"&gt;\r\n			&lt;img src=\"/public/files/editor-upload/images/du-lich/kham-pha/img-dulichkhampha03.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Mauris ultricies nisi urna, id condimentum magna tincidunt nec. Curabitur facilisis in dolor tempor egestas. Suspendisse lacinia feugiat sollicitudin. Nulla varius justo ac arcu fringilla gravida. Pellentesque eu risus egestas, euismod lectus sit amet, cursus tortor. Donec tincidunt imperdiet augue ut vulputate. Maecenas id ex sed purus congue ultrices et id enim. Donec eget rhoncus augue. Vestibulum ullamcorper nisl non justo pellentesque, a molestie turpis condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eget tellus ut diam aliquet convallis a a odio. Aliquam vel auctor nibh. Etiam venenatis laoreet mattis. Morbi porta ex et condimentum placerat. Nulla ultrices tempus urna. Pellentesque nec consequat eros.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/kham-pha/img-dulichkhampha04.jpg\" style=\"width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;div class=\"b__text\"&gt;\r\n	&lt;p&gt;\r\n		Praesent non erat ut elit pretium pretium ac eu mi. Duis ut tortor vel arcu luctus viverra sed ut enim. Nam quis purus non lorem congue luctus a et elit. Vestibulum sagittis rutrum lacus a placerat. Etiam est ex, sagittis vel magna ut, pulvinar porttitor ipsum. Maecenas fermentum nunc a massa aliquet accumsan. Nunc porttitor faucibus arcu sit amet condimentum. Donec maximus euismod turpis id interdum. Nunc elementum lorem in massa sagittis, vel accumsan diam luctus. Praesent metus odio, efficitur non leo nec, laoreet tempor sapien. Etiam eget lorem cursus sem pulvinar mattis quis egestas lorem. Cras commodo consequat erat aliquet suscipit. Mauris consequat lacus id ligula gravida, in tincidunt enim convallis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', NULL, 1, 'vi', 'Nếu bạn là người thích du lịch, ưa khám phá, thưởng ngoạn, chiêm ngưỡng cảnh sắc tuyệt đẹp của non nước, mây trời và biển cả thì Wonder City là một địa điểm lý tưởng. Nằm trọn tại phía Bắ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condi', 'du-lich-kham-pha', 'Đệ nhất kỳ quan <br/> nghỉ dưỡng biển', 'The first wonder\r\nsea resort', '/public/files/editor-upload/images/du-lich/kham-pha/bg-dulichamthuc.jpg', '/public/files/editor-upload/images/du-lich/kham-pha/bn-amthuc.jpg', '/public/files/editor-upload/images/du-lich/kham-pha/img-dulich006.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_reply` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `like` int(11) NOT NULL DEFAULT '0',
  `unlike` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `name`, `alias`, `email`, `title`, `content_reply`, `content`, `date`, `hits`, `like`, `unlike`, `order`, `status`, `cat_id`, `lang_code`) VALUES
(1, 'Khách', 'hihi-hehe', 'khách@gmail.com', 'hihi hehe', 'test', 'Khách hỏi 123', '05/01/2014 03:50:39', 55, 0, 0, 255, 0, 1, 'vi'),
(2, 'Quan Lee', 'cho-hoi', 'tiger0350@mail.com', 'Cho hỏi ', 'test', 'Quán nào có nhân viên ngon nhất hn ?', '07/04/2014 01:15:03', 64, 0, 0, 255, 0, 2, 'vi'),
(3, 'Thanh Cong', 'an-gi-voi-gau-toi-mua-he', 'congtc@gmail.com', 'Ăn gì với gấu tối mùa hè', 'test', 'Cả nhà ơi... tối mùa hè dẫn gấu đi ăn gì cho lãng mạn nhỉ :v', '16/06/2014 03:15:35', 261, 0, 0, 255, 0, 3, 'vi'),
(4, 'asda', 'asdasd', 'asdasdsd@outlook.com', 'asdasd', 'test', 'asdasda', '08/07/2014 06:16:09', 0, 0, 0, 255, 0, 1, 'vi'),
(6, 'Khách', 'hihi-hehe', 'khách@gmail.com', 'hihi hehe', 'test', 'Khách hỏi 123', '05/01/2014 03:50:39', 55, 0, 0, 255, 0, 2, 'vi'),
(7, 'Quan Lee', 'cho-hoi', 'tiger0350@mail.com', 'Cho hỏi ', 'test', 'Quán nào có nhân viên ngon nhất hn ?', '07/04/2014 01:15:03', 64, 0, 0, 255, 0, 1, 'vi'),
(8, 'Thanh Cong', 'an-gi-voi-gau-toi-mua-he', 'congtc@gmail.com', 'Ăn gì với gấu tối mùa hè', 'test', 'Cả nhà ơi... tối mùa hè dẫn gấu đi ăn gì cho lãng mạn nhỉ :v', '16/06/2014 03:15:35', 261, 0, 0, 255, 0, 2, 'vi'),
(9, 'asda', 'asdasd', 'asdasdsd@outlook.com', 'asdasd', 'test', 'asdasda', '08/07/2014 06:16:09', 0, 0, 0, 255, 0, 3, 'vi'),
(11, 'Khách', 'hihi-hehe', 'khách@gmail.com', 'hihi hehe', 'test', 'Khách hỏi 123', '05/01/2014 03:50:39', 55, 0, 0, 255, 0, 1, 'vi'),
(12, 'Quan Lee', 'cho-hoi', 'tiger0350@mail.com', 'Cho hỏi ', 'test', 'Quán nào có nhân viên ngon nhất hn ?', '07/04/2014 01:15:03', 64, 0, 0, 255, 0, 1, 'vi'),
(14, 'Thanh Cong', 'an-gi-voi-gau-toi-mua-he', 'congtc@gmail.com', 'Ăn gì với gấu tối mùa hè', 'test', 'Cả nhà ơi... tối mùa hè dẫn gấu đi ăn gì cho lãng mạn nhỉ :v', '16/06/2014 03:15:35', 261, 0, 0, 255, 0, 3, 'vi'),
(22, 'asda', 'asdasd', 'asdasdsd@outlook.com', 'asdasd', 'test', 'asdasda', '08/07/2014 06:16:09', 0, 0, 0, 255, 0, 0, 'vi'),
(24, 'Khách', 'hihi-hehe', 'khách@gmail.com', 'hihi hehe', 'test', 'Khách hỏi 123', '05/01/2014 03:50:39', 55, 0, 0, 255, 0, 3, 'vi'),
(55, 'Quan Lee', 'cho-hoi', 'tiger0350@mail.com', 'Cho hỏi ', 'test', 'Quán nào có nhân viên ngon nhất hn ?', '07/04/2014 01:15:03', 64, 0, 0, 255, 0, 1, 'vi'),
(32, 'Thanh Cong', 'an-gi-voi-gau-toi-mua-he', 'congtc@gmail.com', 'Ăn gì với gấu tối mùa hè', 'test', 'Cả nhà ơi... tối mùa hè dẫn gấu đi ăn gì cho lãng mạn nhỉ :v', '16/06/2014 03:15:35', 261, 0, 0, 255, 0, 1, 'vi'),
(77, 'asda', 'asdasd', 'asdasdsd@outlook.com', 'asdasd', 'test', 'asdasda', '08/07/2014 06:16:09', 0, 0, 0, 255, 0, 0, 'vi'),
(78, 'ádasasd', 'dad', 'dsad@gmail.com', 'dấd', '', 'sdasdasd', '29/11/2015 03:42:37', 0, 0, 0, 255, 0, 0, ''),
(79, 'đásad', 'sdfsf', 'adasdada@gmail.com', 'sdfsf', '', 'sdfsfd', '29/11/2015 08:45:28', 0, 0, 0, 255, 0, 0, ''),
(80, 'đásad', 'sdfsf', 'adasdada@gmail.com', 'sdfsf', '', 'sdfsfd', '29/11/2015 08:45:29', 0, 0, 0, 255, 0, 0, ''),
(83, 'fsdfsdfsdf', 'sdfsdfsdfsdfsdfsdf', 'chinhnth@ngoisaomoi.vn', 'sdfsdfsdfsdfsdfsdf', '', 'sdfsdfsdfsdfsfsdfsdfsfsfs', '30/11/2015 03:27:50', 0, 0, 0, 255, 0, 0, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_category`
--

CREATE TABLE `faqs_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `block_left` tinyint(1) NOT NULL DEFAULT '0',
  `block_right` tinyint(1) NOT NULL DEFAULT '0',
  `block_body` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs_category`
--

INSERT INTO `faqs_category` (`id`, `name`, `alias`, `picture`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `content`, `block_left`, `block_right`, `block_body`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`) VALUES
(1, 'Dịch vụ khách hàng', 'dich-vu-khach-hang', '', 0, '2012-11-08 09:11:26', 1, '2015-12-15 02:12:24', 32, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(2, 'Câu hỏi chuyên môn', 'cau-hoi-chuyen-mon', '', 0, '2015-11-29 10:11:31', 47, '2015-12-15 02:12:36', 32, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(3, 'Dành cho đối tác', 'danh-cho-doi-tac', '', 0, '2015-11-29 10:11:41', 47, '2015-12-15 02:12:53', 32, 255, 1, '', 0, 0, 0, '', '', '', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_reply`
--

CREATE TABLE `faqs_reply` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `faqs_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs_reply`
--

INSERT INTO `faqs_reply` (`id`, `name`, `email`, `content`, `date`, `user_id`, `faqs_id`) VALUES
(1, 'admin', 'admin@gmail.com', ':)', '05/01/2013 03:51:37', 1, 1),
(2, 'admin', 'admin@gmail.com', 'Biết nhưng đếch nói', '07/04/2014 01:15:56', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album`
--

CREATE TABLE `gallery_album` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `synopsis` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `block_noibat` tinyint(1) NOT NULL DEFAULT '0',
  `block_hot` tinyint(1) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `picture_multi_mobile` mediumtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_album`
--

INSERT INTO `gallery_album` (`id`, `name`, `alias`, `picture`, `thumb`, `synopsis`, `content`, `hits`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `block_noibat`, `block_hot`, `cat_id`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `name_en`, `picture_multi`, `picture_multi_mobile`) VALUES
(1, 'Banner', 'banner', '/public/files/editor-upload/images/thu-vien-anh/banner-thuvien.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/banner-thuvien.jpg', '', '', 0, '2013-01-14 05:01:58', 1, '2019-11-05 05:11:52', 55, 255, 1, 0, 0, 1, '', '', '', '', '', 'Banner', 'a:3:{i:0;a:2:{i:0;s:99:\"/public/files/editor-upload/images/thu-vien-anh/slide-banner/Wonder-City-Web-Hinh-anh-banner-13.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:91:\"/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-12.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:84:\"/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-01.jpg\";i:1;s:1:\"0\";}}', 'a:3:{i:0;a:2:{i:0;s:79:\"/public/files/editor-upload/images/video/Wonder-City-Web-Hinh-anh-banner-15.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:79:\"/public/files/editor-upload/images/video/Wonder-City-Web-Hinh-anh-banner-22.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:79:\"/public/files/editor-upload/images/video/Wonder-City-Web-Hinh-anh-banner-23.jpg\";i:1;s:1:\"0\";}}'),
(6, 'Hình ảnh cập nhật tiến độ dự án <br>WONDER CITY', 'hinh-anh-cap-nhat-tien-do-du-an-br-wonder-city', '/public/files/editor-upload/images/1.jpg', '/public/files/editor-upload/_thumbs/images/1.jpg', '', '', 0, '2019-09-27 10:09:08', 47, '0000-00-00 00:00:00', 0, 255, 1, 0, 0, 2, '', '', '', '', 'vi', NULL, NULL, NULL),
(5, 'Hình ảnh phân khu <br>TROPICAL MONACO', 'hinh-anh-phan-khu-br-tropical-monaco', '/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-12.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-12.jpg', '', '', 0, '2019-09-19 01:09:54', 47, '2019-10-24 02:10:43', 55, 1, 1, 0, 0, 2, '', '', '', '', '', '', NULL, NULL),
(7, 'Hình ảnh phân khu <br>ASIA BARBADOS', 'hinh-anh-phan-khu-br-asia-barbados', '/public/files/editor-upload/images/2.jpg', '/public/files/editor-upload/_thumbs/images/2.jpg', '', '', 0, '2019-09-27 10:09:13', 47, '0000-00-00 00:00:00', 0, 255, 1, 0, 0, 2, '', '', '', '', 'vi', NULL, NULL, NULL),
(8, 'Hình ảnh phân khu <br>LITTLE HANOI', 'hinh-anh-phan-khu-br-little-hanoi', '/public/files/editor-upload/images/phan-khu/ha-noi/Wonder-City-Web-Hinh-anh-banner-07.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/ha-noi/Wonder-City-Web-Hinh-anh-banner-07.jpg', '', '', 0, '2019-09-27 10:09:01', 47, '2019-10-24 02:10:09', 55, 255, 1, 0, 0, 2, '', '', '', '', '', '', NULL, NULL),
(9, 'Hình ảnh phân khu <br>LITTLE SAIGON', 'hinh-anh-phan-khu-br-little-saigon', '/public/files/editor-upload/images/phan-khu/sai-gon/Wonder-City-Web-Hinh-anh-banner-10.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/sai-gon/Wonder-City-Web-Hinh-anh-banner-10.jpg', '', '', 0, '2019-09-27 10:09:22', 47, '2019-10-24 02:10:26', 55, 255, 1, 0, 0, 2, '', '', '', '', '', '', NULL, NULL),
(10, 'Hình ảnh phân khu <br>LITTLE SAIGON', 'hinh-anh-phan-khu-little-saigon', '/public/files/editor-upload/images/phan-khu/sai-gon/Wonder-City-Web-Hinh-anh-banner-09.jpg', '/public/files/editor-upload/_thumbs/images/phan-khu/sai-gon/Wonder-City-Web-Hinh-anh-banner-09.jpg', '', '', 0, '2019-09-27 10:09:52', 47, '2019-10-24 02:10:41', 55, 255, 1, 0, 0, 2, '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '10',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `block_left` tinyint(1) NOT NULL DEFAULT '0',
  `block_right` tinyint(1) NOT NULL DEFAULT '0',
  `block_body` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`id`, `name`, `alias`, `picture`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `content`, `block_left`, `block_right`, `block_body`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`) VALUES
(1, 'Ảnh banner', 'anh-banner', '', 0, '2013-01-14 05:01:30', 1, '2019-09-19 01:09:47', 47, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(2, 'Ảnh Album', 'anh-album', '', 0, '2019-09-19 01:09:21', 47, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_image`
--

CREATE TABLE `gallery_image` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '255',
  `album_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_image`
--

INSERT INTO `gallery_image` (`id`, `name`, `alias`, `picture`, `thumb`, `status`, `order`, `album_id`) VALUES
(42, 'banner', 'banner', '/public/files/editor-upload/images/bg-dulichgiaitri.jpg\r', '/public/files/editor-upload/_thumbs/images/bg-dulichgiaitri.jpg\r', 1, 255, 1),
(43, 'banner', 'banner', '/public/files/editor-upload/images/img-matbang.jpg\r', '/public/files/editor-upload/_thumbs/images/img-matbang.jpg\r', 1, 255, 1),
(44, 'Album', 'album', '/public/files/editor-upload/images/tien-ich/img-pk-hn002.jpg\r', '/public/files/editor-upload/_thumbs/images/tien-ich/img-pk-hn002.jpg\r', 1, 255, 9),
(46, 'Album', 'album', '/public/files/editor-upload/images/tien-ich/img-pk-hn004.jpg\r', '/public/files/editor-upload/_thumbs/images/tien-ich/img-pk-hn004.jpg\r', 1, 255, 9),
(38, 'banner', 'banner', '/public/files/editor-upload/images/3.jpg\r', '/public/files/editor-upload/_thumbs/images/3.jpg\r', 1, 255, 1),
(24, 'Banner', 'banner', '/public/files/editor-upload/images/thu-vien-anh/banner-thuvien.jpg\r', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/banner-thuvien.jpg\r', 1, 1, 1),
(45, 'Album', 'album', '/public/files/editor-upload/images/tien-ich/img-pk-hn003.jpg\r', '/public/files/editor-upload/_thumbs/images/tien-ich/img-pk-hn003.jpg\r', 1, 255, 9),
(35, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery01.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery01.jpg', 1, 1, 5),
(34, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery10.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery10.jpg', 1, 10, 5),
(33, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery09.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery09.jpg', 1, 9, 5),
(32, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery08.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery08.jpg', 1, 8, 5),
(31, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery07.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery07.jpg', 1, 7, 5),
(30, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery06.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery06.jpg', 1, 6, 5),
(29, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery05.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery05.jpg', 1, 5, 5),
(28, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery04.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery04.jpg', 1, 4, 5),
(27, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery03.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery03.jpg', 1, 3, 5),
(26, 'album', 'album', '/public/files/editor-upload/images/thu-vien-anh/img-gallery02.jpg', '/public/files/editor-upload/_thumbs/images/thu-vien-anh/img-gallery02.jpg', 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `genex`
--

CREATE TABLE `genex` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mota` text,
  `content` text,
  `picture` text,
  `lang_code` varchar(255) NOT NULL DEFAULT 'vi',
  `mota_en` text,
  `content_en` text,
  `picture_vitri` text,
  `vitri_content` text,
  `vitri_content_en` text,
  `image_tongquan` varchar(255) DEFAULT NULL,
  `image_solieu` varchar(255) DEFAULT NULL,
  `noidung_image_tongquan` text,
  `noidung_image_tongquan_en` tinytext,
  `dientich` varchar(255) DEFAULT NULL,
  `matdo` varchar(255) DEFAULT NULL,
  `dtcayxanh` varchar(255) DEFAULT NULL,
  `dtgiaothong` varchar(255) DEFAULT NULL,
  `picture_mobile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genex`
--

INSERT INTO `genex` (`id`, `name`, `mota`, `content`, `picture`, `lang_code`, `mota_en`, `content_en`, `picture_vitri`, `vitri_content`, `vitri_content_en`, `image_tongquan`, `image_solieu`, `noidung_image_tongquan`, `noidung_image_tongquan_en`, `dientich`, `matdo`, `dtcayxanh`, `dtgiaothong`, `picture_mobile`) VALUES
(1, 'Mặt bằng tổng thể Wonder City Van Phong Bay', 'Mặt bằng tổng thể<br>\r\nWonder City Van Phong Bay', '&lt;div&gt;\r\n	Nằm trải dài gần 5 km từ núi Hòn Ngang đến núi Cá Ông tại Bãi Cát Thấm, vịnh Vân Phong, Wonder City Van Phong Bay được quy hoạch theo mô hình chuẩn thành phố nghỉ dưỡng biển đầu tiên ở Việt Nam với diện tích rộng 300ha mặt đất, 165ha mặt nước.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Thành phố được chia thành 5 phân khu chính mang đặc trưng của các vùng miền Việt Nam và các nền văn hóa khác nhau trên thế giới.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;&lt;em&gt;* Phân khu Tropical Monaco: &lt;/em&gt;&lt;/strong&gt;nằm trên núi Hòn Ngang, với diện tích …, được thiết kế theo phong cách kiến trúc của thân vương Monaco – viên ngọc quý của vùng Địa Trung Hải.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;&lt;em&gt;* 3 phân khu trung tâm Little Hanoi, Little Hue và Little Saigon (Việt Nam thu nhỏ): &lt;/em&gt;&lt;/strong&gt;nằm ở giữa Wonder City, với tổng diện tích … Trong đó, phân khu Little Hanoi rộng …, Little Hue rộng …, Little Saigon rộng … Mỗi phân khu tái hiện lại nét kiến trúc và văn hóa đặc trưng của Hà Nội, Huế, và Sài Gòn, giúp du khách dễ dàng cảm nhận ba miền Việt Nam trong tầm tay.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;&lt;em&gt;* Phân khu Asia Barbados: &lt;/em&gt;&lt;/strong&gt;tọa lạc trên núi Cá Ông, với diện tích …, được thiết kế theo phong cách kiến trúc vùng Caribbean. Phân khu này phù hợp với những du khách yêu thích không gian nghỉ dưỡng tinh tế.&lt;/div&gt;\r\n', '/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-01.jpg', 'vi', 'Overall layout of Wonder City Van Phong Bay123', '&lt;div&gt;\r\n	Nằm trải dài gần 5 km từ núi Hòn Ngang đến núi Cá Ông tại Bãi Cát Thấm, vịnh Vân Phong, Wonder City Van Phong Bay được quy hoạch theo mô hình chuẩn thành phố nghỉ dưỡng biển đầu tiên ở Việt Nam với diện tích rộng 300ha mặt đất, 165ha mặt nước.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Thành phố được chia thành 5 phân khu chính mang đặc trưng của các vùng miền Việt Nam và các nền văn hóa khác nhau trên thế giới.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;&lt;em&gt;* Phân khu Tropical Monaco: &lt;/em&gt;&lt;/strong&gt;nằm trên núi Hòn Ngang, với diện tích …, được thiết kế theo phong cách kiến trúc của thân vương Monaco – viên ngọc quý của vùng Địa Trung Hải.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;&lt;em&gt;* 3 phân khu trung tâm Little Hanoi, Little Hue và Little Saigon (Việt Nam thu nhỏ): &lt;/em&gt;&lt;/strong&gt;nằm ở giữa Wonder City, với tổng diện tích … Trong đó, phân khu Little Hanoi rộng …, Little Hue rộng …, Little Saigon rộng … Mỗi phân khu tái hiện lại nét kiến trúc và văn hóa đặc trưng của Hà Nội, Huế, và Sài Gòn, giúp du khách dễ dàng cảm nhận ba miền Việt Nam trong tầm tay.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;&lt;em&gt;* Phân khu Asia Barbados: &lt;/em&gt;&lt;/strong&gt;tọa lạc trên núi Cá Ông, với diện tích …, được thiết kế theo phong cách kiến trúc vùng Caribbean. Phân khu này phù hợp với những du khách yêu thích không gian nghỉ dưỡng tinh tế.&lt;/div&gt;\r\n', '/public/files/editor-upload/images/mat-bang/img-matbang.jpg', '', '', '', '', '', '', '', '', '', '', '/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-15.jpg'),
(2, 'Tại sao Wonder City được gọi là<br> “Kỳ quan nghỉ dưỡng biển”', '&lt;p&gt;\r\n	Với diện tích gần 300ha mặt đất và hơn 165 ha diện tích mặt biển, Wonder City được mệnh danh là kỳ quan nghỉ dưỡng biển nhờ sự kết hợp giá trị thiên tạo cùng vẻ đẹp kiến tạo hoàn hảo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nằm trọn trong vịnh Vân Phong – một trong 10 vịnh biển đẹp nhất Việt Nam, Wonder City sở hữu bãi biển đẹp như mơ với Bãi Cát Thấm ngậm nước vàng óng màu kim sa rực nắng. Nước biển nơi đây trong vắt tựa pha lê, xa bờ cả trăm mét vẫn nhìn thấu đáy. Ấn trong làn nước xanh biếc là bức họa tuyệt phẩm được tạo nên bởi những rặng san hô nguyên thủy đầy màu sắc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Kết hợp với tuyệt tác thiên nhiên ấy là những kì quan kiến tạo độc đáo. Đó là một Tropical Monaco lịch lãm, xa hoa với dãy khách sạn biệt thự 5 sao sang trọng được quản lý và vận hành bởi các thương hiệu hàng đầu thế giới. Một Asia Barbados cá tính với những dãy boutique hotel đẹp xinh lưng chừng núi Cá Ông. Và một Việt Nam thu nhỏ với những biểu tượng đặc trưng ba miền như Khuê Văn Các, Cố đô Huế, hay Chợ Bến Thành...&amp;nbsp;&lt;/p&gt;\r\n&lt;div class=\"b__images\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/tong-quan/img-tq01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			Được ví như “chốn địa đàng nơi hạ giới”, vịnh Vân Phong mang vẻ đẹp trác tuyệt khiến bất kì ai cũng phải sửng sốt, ngỡ ngàng. Những tinh túy của đất trời, non nước cùng hội tụ nơi đây để tạo nên bản hòa ca ngọt ngào, êm dịu và sâu lắng mang tên Vân Phong, vịnh biển đẹp nhất&lt;br /&gt;\r\n			Việt Nam, đứng top đầu danh sách biển đẹp của khu vực và thế giới.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Ngay tại đây, một thành phố mang tên Wonder City được kiến tạo theo mô hình thành phố nghỉ dưỡng chuẩn quốc tế đầu tiên tại Việt Nam, rộng hơn 300ha, trải dài gần 5km bờ biển, đang thành hình mỗi ngày, hứa hẹn là điểm đến trứ danh, là “đệ nhất kỳ quan nghỉ dưỡng biển”.&lt;br /&gt;\r\n			Một điểm đến mà bất kì du khách Việt Nam hay quốc tế, đều ao ước ít nhất một lần trong đời được ghé qua.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-01.jpg', 'vi', '&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n	Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-tq01.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 1037px;\" /&gt;&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;div&gt;\r\n			&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; text-align: center; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n				Compared to \"a paradise on earth\", Van Phong bay has magnificent beauty that makes everyone surprised and surprised. The quintessence of heaven and earth, the country converges here to create a sweet, mellow and deep melody called Van Phong, the most beautiful bay in Vietnam, topping the list of beautiful beaches of the region and the world.&lt;/p&gt;\r\n			&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; text-align: center; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n				Right here, a city called Wonder City is created according to the first international standard resort city in Vietnam, covering over 300 hectares, stretching nearly 5km of the coastline, forming every day, promising to be famous destination, is \"the first wonders of the sea\". A destination that any Vietnamese or international tourist, wished to visit at least once in a lifetime to visit.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '', '&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/tong-quan/4195a78db172572c0e63.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;br /&gt;\r\n&lt;div&gt;\r\n	Wonder City sở hữu vị trí đắc địa của Bắc Vân Phong, đó là Hòn Ngang - Bãi Cát Thấm, dải biển đẹp nhất trong vịnh, nằm trải dài gần 5 km từ núi Hòn Ngang đến núi Cá Ông.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Kỳ quan nghỉ dưỡng này kết nối với TP Nha Trang bằng tuyến đường ven biển tuyệt đẹp chỉ hơn 1 giờ lái xe. Đặc biệt cách sân bay Tuy Hòa – Phú Yên chưa đầy 30 phút di chuyển.&lt;/div&gt;\r\n&lt;p&gt;\r\n	Từ Wonder City, du khách cũng có thể dễ dàng đến các danh lam thắng cảnh nổi tiếng khác như: Tháp Chàm Phan Rang, Đà Lạt …&lt;/p&gt;\r\n', '&lt;div&gt;\r\n	&lt;div class=\"b__images\" style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n		&lt;img src=\"/public/files/editor-upload/images/du-lich/hoi-nghi/img-tq02.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n	&lt;br style=\"box-sizing: border-box; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\" /&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n	&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: helveticaworld-regular, sans-serif; color: rgb(33, 37, 41); font-size: 14px;\"&gt;\r\n		Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '/public/files/editor-upload/images/tong-quan/new.jpg', '/public/files/editor-upload/images/du-lich/hoi-nghi/img-tq04.jpg', '&lt;p&gt;\r\n	Wonder City Van Phong Bay là mô hình thành phố nghỉ dưỡng biển đầu tiên tại Việt Nam, được đầu tư bởi Công ty Cổ phần Đầu tư Du lịch T&amp;amp;M Vân Phong, thành viên của Eurowindow Holding.&lt;br /&gt;\r\n	Khác với những dự án nghỉ dưỡng khác thường tập trung phục vụ chủ yếu cho nhóm khách hàng cao cấp/siêu cao cấp, Wonder City được thiết kế vô cùng thông minh với 5 phân khu mang 5 phong cách kiến trúc, 5 màu sắc cuộc sống khác nhau, đáp ứng đa dạng nhu cầu du khách trong nước và quốc tế.&lt;br /&gt;\r\n	Ở đây có đa dạng các loại hình khách sạn, từ những căn villas biệt lập riêng tư trong các khu resort 5 sao, những cụm apart-hotel 4 sao nằm cận kề bên biển, những căn phòng cá tính lưng chừng đồi, cho đến hàng trăm hotelshop 2-3 sao nằm giữa trung tâm thành phố. Cùng với đó là đa dạng các loại hình du lịch như: &lt;strong&gt;&lt;em&gt;Du lịch nghỉ dưỡng biển; Du lịch ẩm thực; Du lịch mua sắm; Du lịch giải trí; Du lịch khám phá, &lt;/em&gt;&lt;/strong&gt;và&lt;strong&gt;&lt;em&gt; Du lịch hội nghị&lt;/em&gt;&lt;/strong&gt;.&lt;/p&gt;\r\n', '&lt;div&gt;\r\n	Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orc', '295 ha ', '19.8%', '165 ha', '39 ha', '/public/files/editor-upload/images/tong-quan/Wonder-City-Web-Hinh-anh-banner-15.jpg'),
(3, 'Liên hệ', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__contact--text\" style=\"box-sizing: border-box; margin-bottom: 30px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n		&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-weight: 500; line-height: 1.2; color: rgb(0, 117, 128); font-size: 24px; border-bottom: 1px solid rgb(0, 117, 128); display: inline-block; padding-bottom: 5px;\"&gt;\r\n			&lt;span style=\"box-sizing: border-box; font-weight: bolder;\"&gt;Dự án Wonder city&lt;/span&gt;&lt;/h3&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-weight: bold;\"&gt;\r\n			Khu vực Vân Phong, huyện Vạn Ninh, tỉnh Khánh Hòa&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__contact--text\" style=\"box-sizing: border-box; margin-bottom: 30px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n		&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-weight: 500; line-height: 1.2; color: rgb(0, 117, 128); font-size: 24px; border-bottom: 1px solid rgb(0, 117, 128); display: inline-block; padding-bottom: 5px;\"&gt;\r\n			&lt;span style=\"box-sizing: border-box; font-weight: bolder;\"&gt;Văn phòng giao dịch&lt;/span&gt;&lt;/h3&gt;\r\n		&lt;ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-right: 0px; padding-left: 0px; display: flex; justify-content: center; flex-direction: row;\"&gt;\r\n			&lt;li style=\"box-sizing: border-box; list-style: none; margin: 0px 30px; font-weight: bold;\"&gt;\r\n				Hà Nội&lt;/li&gt;\r\n			&lt;li style=\"box-sizing: border-box; list-style: none; margin: 0px 30px; font-weight: bold;\"&gt;\r\n				Hồ Chí Minh&lt;/li&gt;\r\n			&lt;li style=\"box-sizing: border-box; list-style: none; margin: 0px 30px; font-weight: bold;\"&gt;\r\n				Cam Ranh&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-weight: bold;\"&gt;\r\n			CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=\"b__contact--text\" style=\"box-sizing: border-box; margin-bottom: 30px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n		&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-weight: 500; line-height: 1.2; color: rgb(0, 117, 128); font-size: 24px; border-bottom: 1px solid rgb(0, 117, 128); display: inline-block; padding-bottom: 5px;\"&gt;\r\n			&lt;span style=\"box-sizing: border-box; font-weight: bolder;\"&gt;Đại lý phân phối chính thức&lt;/span&gt;&lt;/h3&gt;\r\n		&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-weight: bold;\"&gt;\r\n			Công ty Cổ phần đầu tư và Du lịch T&amp;amp;M Vân Phong&lt;br style=\"box-sizing: border-box;\" /&gt;\r\n			146 Lê Hồng Phong, Phường Phước Hải, TP Nha Trang, Khánh Hòa&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-01.jpg', 'vi', NULL, '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;div class=\"b__contact--text\" style=\"box-sizing: border-box; margin-bottom: 30px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n			&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-weight: 500; line-height: 1.2; color: rgb(0, 117, 128); font-size: 24px; border-bottom: 1px solid rgb(0, 117, 128); display: inline-block; padding-bottom: 5px;\"&gt;\r\n				&lt;span style=\"box-sizing: border-box; font-weight: bolder;\"&gt;Wonder city project&lt;/span&gt;&lt;/h3&gt;\r\n			&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-weight: bold;\"&gt;\r\n				Van Phong area, Van Ninh district, Khanh Hoa province&lt;/p&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=\"b__contact--text\" style=\"box-sizing: border-box; margin-bottom: 30px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n			&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-weight: 500; line-height: 1.2; color: rgb(0, 117, 128); font-size: 24px; border-bottom: 1px solid rgb(0, 117, 128); display: inline-block; padding-bottom: 5px;\"&gt;\r\n				&lt;span style=\"box-sizing: border-box; font-weight: bolder;\"&gt;Sales office&lt;/span&gt;&lt;/h3&gt;\r\n			&lt;ul style=\"padding-right: 0px; padding-left: 0px; box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; display: flex; justify-content: center; flex-direction: row;\"&gt;\r\n				&lt;li style=\"box-sizing: border-box; list-style: none; margin: 0px 30px; font-weight: bold;\"&gt;\r\n					Hanoi&lt;/li&gt;\r\n				&lt;li style=\"box-sizing: border-box; list-style: none; margin: 0px 30px; font-weight: bold;\"&gt;\r\n					Hochiminh&lt;/li&gt;\r\n				&lt;li style=\"box-sizing: border-box; list-style: none; margin: 0px 30px; font-weight: bold;\"&gt;\r\n					Cam Ranh&lt;/li&gt;\r\n			&lt;/ul&gt;\r\n			&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-weight: bold;\"&gt;\r\n				T&amp;amp;M VAN PHONG INVESTMENT AND TOURISM JOINT STOCK COMPANY&lt;/p&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=\"b__contact--text\" style=\"box-sizing: border-box; margin-bottom: 30px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px; text-align: center;\"&gt;\r\n			&lt;h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-weight: 500; line-height: 1.2; color: rgb(0, 117, 128); font-size: 24px; border-bottom: 1px solid rgb(0, 117, 128); display: inline-block; padding-bottom: 5px;\"&gt;\r\n				&lt;span style=\"box-sizing: border-box; font-weight: bolder;\"&gt;Official distributor&lt;/span&gt;&lt;/h3&gt;\r\n			&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-weight: bold;\"&gt;\r\n				T&amp;amp;M Van Phong Tourism and Investment Joint Stock Company&lt;br style=\"box-sizing: border-box;\" /&gt;\r\n				146 Le Hong Phong, Phuoc Hai Ward, Nha Trang City, Khanh Hoa&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '', '', '', '', '', '', '', '', '', '', '', NULL),
(4, '', NULL, '&lt;div class=\"b__footer\"&gt;\r\n	&lt;div class=\"containers\"&gt;\r\n		&lt;div class=\"b__footer--info\"&gt;\r\n			&lt;div class=\"b__footer--row\"&gt;\r\n				&lt;div class=\"b__footer--left\"&gt;\r\n					&lt;div class=\"b__footer--top_logo mgb_30\"&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logo-ft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n					&lt;div class=\"b__footer--bottom\"&gt;\r\n						&lt;div class=\"b__footer--first\"&gt;\r\n							&lt;h3&gt;\r\n								Dự án Wonder City&lt;/h3&gt;\r\n							&lt;p&gt;\r\n								Khu vực Vân Phong,&lt;br /&gt;\r\n								huyện Vạn Ninh, tỉnh Khánh Hòa&lt;/p&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=\"b__footer--second\"&gt;\r\n							&lt;h3&gt;\r\n								Văn phòng giao dịch&lt;/h3&gt;\r\n							&lt;ul class=\"nav nav-tabs\" id=\"myTab\" role=\"tablist\"&gt;\r\n								&lt;li class=\"nav-item\"&gt;\r\n									&lt;a aria-controls=\"home\" aria-selected=\"true\" class=\"nav-link active\" data-toggle=\"tab\" href=\"#home\" id=\"home-tab\" role=\"tab\"&gt;Hà nội&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li class=\"nav-item\"&gt;\r\n									&lt;a aria-controls=\"profile\" aria-selected=\"false\" class=\"nav-link\" data-toggle=\"tab\" href=\"#profile\" id=\"profile-tab\" role=\"tab\"&gt;Hồ Chí Minh&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li class=\"nav-item\"&gt;\r\n									&lt;a aria-controls=\"contact\" aria-selected=\"false\" class=\"nav-link\" data-toggle=\"tab\" href=\"#contact\" id=\"contact-tab\" role=\"tab\"&gt;Cam Ranh&lt;/a&gt;&lt;/li&gt;\r\n							&lt;/ul&gt;\r\n							&lt;div class=\"tab-content\" id=\"myTabContent\"&gt;\r\n								&lt;div aria-labelledby=\"home-tab\" class=\"tab-pane fade show active\" id=\"home\" role=\"tabpanel\"&gt;\r\n									&lt;p&gt;\r\n										CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n								&lt;/div&gt;\r\n								&lt;div aria-labelledby=\"profile-tab\" class=\"tab-pane fade\" id=\"profile\" role=\"tabpanel\"&gt;\r\n									&lt;p&gt;\r\n										CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n								&lt;/div&gt;\r\n								&lt;div aria-labelledby=\"contact-tab\" class=\"tab-pane fade\" id=\"contact\" role=\"tabpanel\"&gt;\r\n									&lt;p&gt;\r\n										CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__footer--right\"&gt;\r\n					&lt;div class=\"b__footer--right_logo mgb_30\"&gt;\r\n						&lt;h3&gt;\r\n							&lt;span class=\"text-uppercase\"&gt;Chủ đầu tư &lt;/span&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logo-partner.png\" /&gt;&lt;/a&gt;&lt;/h3&gt;\r\n						&lt;p&gt;\r\n							Công ty Cổ phần đầu tư và Du lịch T&amp;amp;M Vân Phong&lt;br /&gt;\r\n							146 Lê Hồng Phong, Phường Phước Hải,&lt;br /&gt;\r\n							TP Nha Trang, Khánh Hòa&lt;/p&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=\"b__footer--content\"&gt;\r\n						&lt;h3&gt;\r\n							Đại lý phân phối chính thức&lt;/h3&gt;\r\n						&lt;div class=\"owl-carousel logoFooterSlider\" id=\"logoFooter\"&gt;\r\n							&lt;div class=\"items-f\"&gt;\r\n								&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n							&lt;div class=\"items-f\"&gt;\r\n								&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n							&lt;div class=\"items-f\"&gt;\r\n								&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n							&lt;div class=\"items-f\"&gt;\r\n								&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__social--footer\"&gt;\r\n				&lt;ul&gt;\r\n					&lt;li&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/icon-download.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/icon-facebook.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/icon-camera.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/icon-globe.png\" /&gt; Ngôn ngữ &lt;/a&gt;&lt;/li&gt;\r\n				&lt;/ul&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=\"b__footer--row b__footer--bottom\"&gt;\r\n				&lt;div class=\"b__footer--left\"&gt;\r\n					&lt;p&gt;\r\n						Thông tin, hình ảnh, các tiện ích trên website chỉ mang tính chất tương đối và có thể được điều chỉnh&lt;br /&gt;\r\n						theo quyết định của Chủ đầu tư tại từng thời điểm đảm bảo phù hợp quy hoạch và thực tế thi công Dự Án.&lt;/p&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__footer-right\"&gt;\r\n					&lt;p&gt;\r\n						© 2019 Wonder City All rights reserved.&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n', NULL, 'vi', NULL, '&lt;div&gt;\r\n	&lt;div class=\"b__footer\"&gt;\r\n		&lt;div class=\"containers\"&gt;\r\n			&lt;div class=\"b__footer--info\"&gt;\r\n				&lt;div class=\"b__footer--row\"&gt;\r\n					&lt;div class=\"b__footer--left\"&gt;\r\n						&lt;div class=\"b__footer--top_logo mgb_30\"&gt;\r\n							&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logo-ft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div class=\"b__footer--bottom\"&gt;\r\n							&lt;div class=\"b__footer--first\"&gt;\r\n								&lt;h3&gt;\r\n									Dự án Wonder City&lt;/h3&gt;\r\n								&lt;p&gt;\r\n									Khu vực Vân Phong,&lt;br /&gt;\r\n									huyện Vạn Ninh, tỉnh Khánh Hòa&lt;/p&gt;\r\n							&lt;/div&gt;\r\n							&lt;div class=\"b__footer--second\"&gt;\r\n								&lt;h3&gt;\r\n									Văn phòng giao dịch&lt;/h3&gt;\r\n								&lt;ul class=\"nav nav-tabs\" id=\"myTab\" role=\"tablist\"&gt;\r\n									&lt;li class=\"nav-item\"&gt;\r\n										&lt;a aria-controls=\"home\" aria-selected=\"true\" class=\"nav-link active\" data-toggle=\"tab\" href=\"#home\" id=\"home-tab\" role=\"tab\"&gt;Hà nội&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=\"nav-item\"&gt;\r\n										&lt;a aria-controls=\"profile\" aria-selected=\"false\" class=\"nav-link\" data-toggle=\"tab\" href=\"#profile\" id=\"profile-tab\" role=\"tab\"&gt;Hồ Chí Minh&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=\"nav-item\"&gt;\r\n										&lt;a aria-controls=\"contact\" aria-selected=\"false\" class=\"nav-link\" data-toggle=\"tab\" href=\"#contact\" id=\"contact-tab\" role=\"tab\"&gt;Cam Ranh&lt;/a&gt;&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n								&lt;div class=\"tab-content\" id=\"myTabContent\"&gt;\r\n									&lt;div aria-labelledby=\"home-tab\" class=\"tab-pane fade show active\" id=\"home\" role=\"tabpanel\"&gt;\r\n										&lt;p&gt;\r\n											CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n									&lt;/div&gt;\r\n									&lt;div aria-labelledby=\"profile-tab\" class=\"tab-pane fade\" id=\"profile\" role=\"tabpanel\"&gt;\r\n										&lt;p&gt;\r\n											CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n									&lt;/div&gt;\r\n									&lt;div aria-labelledby=\"contact-tab\" class=\"tab-pane fade\" id=\"contact\" role=\"tabpanel\"&gt;\r\n										&lt;p&gt;\r\n											CÔNG TY CP ĐẦU TƯ VÀ DU LỊCH T&amp;amp;M VÂN PHONG&lt;/p&gt;\r\n									&lt;/div&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=\"b__footer--right\"&gt;\r\n						&lt;div class=\"b__footer--right_logo mgb_30\"&gt;\r\n							&lt;h3&gt;\r\n								&lt;span class=\"text-uppercase\"&gt;Chủ đầu tư&amp;nbsp;&lt;/span&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logo-partner.png\" /&gt;&lt;/a&gt;&lt;/h3&gt;\r\n							&lt;p&gt;\r\n								Công ty Cổ phần đầu tư và Du lịch T&amp;amp;M Vân Phong&lt;br /&gt;\r\n								146 Lê Hồng Phong, Phường Phước Hải,&lt;br /&gt;\r\n								TP Nha Trang, Khánh Hòa&lt;/p&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=\"b__footer--content\"&gt;\r\n							&lt;h3&gt;\r\n								Đại lý phân phối chính thức&lt;/h3&gt;\r\n							&lt;div class=\"owl-carousel logoFooterSlider\" id=\"logoFooter\"&gt;\r\n								&lt;div class=\"items-f\"&gt;\r\n									&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n								&lt;div class=\"items-f\"&gt;\r\n									&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n								&lt;div class=\"items-f\"&gt;\r\n									&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n								&lt;div class=\"items-f\"&gt;\r\n									&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/logoft.png\" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__social--footer\"&gt;\r\n					&lt;ul&gt;\r\n						&lt;li&gt;\r\n							&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/icon-download.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;\r\n							&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/icon-facebook.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;\r\n							&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/icon-camera.png\" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;\r\n							&lt;a href=\"#\"&gt;&lt;img src=\"/public/files/editor-upload/images/logo/icon-globe.png\" /&gt;&amp;nbsp;Ngôn ngữ&lt;/a&gt;&lt;/li&gt;\r\n					&lt;/ul&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=\"b__footer--row b__footer--bottom\"&gt;\r\n					&lt;div class=\"b__footer--left\"&gt;\r\n						&lt;p&gt;\r\n							Thông tin, hình ảnh, các tiện ích trên website chỉ mang tính chất tương đối và có thể được điều chỉnh&lt;br /&gt;\r\n							theo quyết định của Chủ đầu tư tại từng thời điểm đảm bảo phù hợp quy hoạch và thực tế thi công Dự Án.&lt;/p&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=\"b__footer-right\"&gt;\r\n						&lt;p&gt;\r\n							© 2019 Wonder City All rights reserved.&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '', '', '', '', '', '', '', '', '', '', '', NULL),
(5, '', 'Giới thiệu về chủ đầu tư <br> Eurowindow Holding', '&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n	Wonder City Van Phong Bay được đầu tư bởi Công ty Cổ phần Đầu tư Du lịch T&amp;amp;M Vân Phong, thành viên của Tập đoàn Eurowindow Holding. Trong suốt hơn một thập kỷ qua, Eurowindow Holding là cái tên uy tín trong nhiều lĩnh vực tại Việt Nam như: xây dựng, vật liệu xây dựng, tài chính – ngân hàng, đặc biệt là lĩnh vực bất động sản.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n	Trong lĩnh vực vật liệu xây dựng, Eurowindow Holding nổi tiếng với thương hiệu Eurowindow - Nhà cung cấp tổng thể về cửa hàng đầu Việt Nam. Trong lĩnh vực kinh doanh trang thiết bị nội - ngoại thất, Eurowindow Holding&amp;nbsp;chuyên phân phối các sản phẩm cao cấp nhập khẩu (đồ gỗ nội thất, đồ gia dụng, thiết bị điện tử, điện lạnh,…).&amp;nbsp;Trong lĩnh vực đầu tư tài chính, Eurowindow Holding&amp;nbsp;hiện là cổ đông lớn, đang&amp;nbsp;đầu tư trực tiếp và gián tiếp&amp;nbsp;vào ngân hàng Techcombank -&amp;nbsp;Một trong những ngân hàng thương mại cổ phần lớn nhất Việt Nam.&lt;/p&gt;\r\n&lt;div class=\"b__images\" style=\"box-sizing: border-box;\"&gt;\r\n	&lt;img src=\"/public/files/editor-upload/images/chu-dau-tu/bg-cdt.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 100%;\" /&gt;&lt;/div&gt;\r\n&lt;br style=\"box-sizing: border-box;\" /&gt;\r\n&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n	Trong lĩnh vực bất động sản,&amp;nbsp;Eurowindow Holding là nhà phát triển của nhiều dự án nổi tiếng như: Tổ hợp đa chức năng Hà Nội – Mátxcơva (Incentra) tại Liên Bang Nga, &lt;strong&gt;Hệ thống trung tâm thương mại&lt;/strong&gt;&amp;nbsp;Melinh PLAZA, TTTM Vincentra;&lt;br/&gt; &lt;strong&gt;Các tòa nhà hỗn hợp văn phòng và chung cư&lt;/strong&gt;&lt;strong&gt;:&lt;/strong&gt; Eurowindow Multi Complex, Eurowindow Office Building, Eurowindow Tower Nghệ An;&amp;nbsp;&lt;strong&gt;Các khu đô thị mới cao cấp&lt;/strong&gt;: Eurowindow River Park, Eurowindow Garden City, Khu đô thị Nghĩa Đô.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n	Với uy tín và tiềm lực tài chính hùng mạnh, Eurowindow Holding cũng đã tham gia sân chơi &lt;strong&gt;bất động sản nghĩ dưỡng&lt;/strong&gt; với các dự án đẳng cấp như: Radisson Blu Resort&amp;nbsp;Cam Ranh, được quản lý bởi Tập đoàn Carlson Rezidor Hotel Group (Mỹ); và Mövenpick Cam Ranh Resort do Tập đoàn Mövenpick Hotels &amp;amp; Resorts (Thụy Sỹ) quản lý.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n	Wonder City Van Phong Bay là dự án bất động sản nghỉ dưỡng đẳng cấp tiếp theo của Eurowindow Holding với tổng mức đầu tư gần 40.000 tỷ đồng. Cuối năm 2018, Tập đoàn Movenpick Hotels &amp;amp; Resorts đã ký kết hợp tác trở thành đơn vị quản lý, vận hành hệ thống khách sạn, khu căn hộ cao cấp, các công trình phụ trợ, dịch vụ tập trung và quản lý thương hiệu của dự án. Đây là một trong những tập đoàn quản lý khách sạn hàng đầu thế giới với bề dày 45 năm kinh nghiệm, hứa hẹn sẽ đem lại những dịch vụ tiêu chuẩn, chất lượng.&lt;/p&gt;\r\n', '/public/files/editor-upload/images/chu-dau-tu/bg-cdt.jpg', 'vi', 'About the investor <br> Eurowindow Holding', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;div class=\"b__info--cdt\" style=\"box-sizing: border-box; margin-bottom: 50px; color: rgb(33, 37, 41); font-family: helveticaworld-regular, sans-serif; font-size: 14px;\"&gt;\r\n			&lt;div class=\"containers\" style=\"box-sizing: border-box; \"&gt;\r\n				&lt;div class=\"b__content--cdt\" style=\"box-sizing: border-box;\"&gt;\r\n					&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n					&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n						Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n					&lt;div class=\"b__images\" style=\"box-sizing: border-box;\"&gt;\r\n						&lt;img src=\"/public/files/editor-upload/images/chu-dau-tu/bg-cdt.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; width: 1783px;\" /&gt;&lt;/div&gt;\r\n					&lt;br style=\"box-sizing: border-box;\" /&gt;\r\n					&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vestibulum sit amet libero ut scelerisque. Nullam sed ultrices nulla. Donec et diam turpis. Sed fermentum ac enim at varius. Quisque accumsan consectetur gravida. Etiam tortor nibh, blandit ac convallis in, elementum nec tortor. Nullam in mi ante. Proin non odio nec tortor molestie aliquam at eu urna. Proin commodo suscipit ullamcorper. Etiam commodo, nisi vitae pulvinar vulputate, nibh lorem tincidunt dolor, id maximus mi mi nec eros. Donec congue eu orci nec volutpat. Nullam et erat et mi lacinia commodo. Integer molestie arcu in ullamcorper mollis. Donec sed ex at est sollicitudin euismod. Sed mi est, hendrerit vel felis vel, finibus convallis felis. In gravida pulvinar condimentum.&lt;/p&gt;\r\n					&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n						Vivamus dignissim placerat lorem nec dignissim. Integer lacinia diam sit amet justo congue, a fringilla neque maximus. Vestibulum volutpat nulla eu nisl vestibulum ornare. Donec sed tellus feugiat, ultrices lorem at, interdum lorem. Vivamus rutrum justo eget ligula sagittis, non porttitor justo vestibulum. Sed pretium nulla ac est viverra, sed hendrerit risus semper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque tellus libero, dictum ut pretium quis, efficitur eu diam. Suspendisse sit amet nibh libero. Nulla facilisi. Proin eleifend vitae tellus quis pretium. Sed varius sapien diam, nec tincidunt diam semper ut. Vivamus facilisis pellentesque leo, at consequat nunc fermentum tincidunt. Vestibulum eget eros id augue pulvinar imperdiet.&lt;/p&gt;\r\n					&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta imperdiet nulla, sit amet imperdiet augue mattis nec. Curabitur auctor a arcu sit amet molestie. Sed suscipit justo sed ante condimentum vulputate. Mauris in dolor tellus. Ut porttitor enim sed rhoncus vestibulum. Aliquam interdum, nisl porta egestas aliquet, urna nibh egestas dui, in auctor ante metus vitae metus. Nunc eget elementum dolor.&lt;/p&gt;\r\n					&lt;p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\"&gt;\r\n						Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae magna congue, rutrum nisl id, dignissim orci. Sed pretium sit amet quam vitae sodales. Nullam sagittis ligula vitae aliquam volutpat. Vivamus ut tincidunt ligula. Morbi accumsan tellus non semper maximus. Proin cursus ac elit eu pharetra. Donec vel lorem eget felis imperdiet fringilla sit amet ac est.&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '', '', '', '', '', '', '', '', '/public/files/editor-upload/images/chu-dau-tu/bn-chudautu.png');

-- --------------------------------------------------------

--
-- Table structure for table `genex_page`
--

CREATE TABLE `genex_page` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '255',
  `status` tinyint(1) DEFAULT '0',
  `mota` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota_en` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genex_page`
--

INSERT INTO `genex_page` (`id`, `code`, `name`, `alias`, `picture`, `thumb`, `picture_multi`, `content`, `order`, `status`, `mota`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`, `name_en`, `mota_en`, `content_en`) VALUES
(384, NULL, 'Mục tiêu công ty', 'toco-toco', '/public/files/editor-upload/images/genex/muc-tieu-cong-ty.png', '/public/files/editor-upload/_thumbs/images/toco-1.png', 'a:3:{i:0;a:2:{i:0;s:45:\"/public/files/editor-upload/images/toco-2.jpg\";i:1;s:1:\"1\";}i:1;a:2:{i:0;s:46:\"/public/files/editor-upload/images/toco--3.jpg\";i:1;s:1:\"2\";}i:2;a:2:{i:0;s:45:\"/public/files/editor-upload/images/toco-4.jpg\";i:1;s:1:\"3\";}}', '&lt;p&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta luôn nỗ lực hết mình để cung cấp những sản phẩm chăm sóc trẻ em có thương hiệu tốt nhất với chi phí hợp lý đến mọi em bé yêu thương trong mỗi gia đình Việt Nam. Nhờ đó, khách hàng sẽ tin tưởng và tưởng thưởng chúng ta với doanh số vượt trội và lợi nhuận, giúp công ty, nhân viên và cộng đồng nơi chúng ta đang sống và làm việc cùng phát triển.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 255, 1, 'Chúng ta luôn nỗ lực hết mình để cung cấp những sản phẩm chăm sóc trẻ em có thương hiệu tốt nhất với chi phí hợp lý đến mọi em bé yêu thương trong mỗi gia đình Việt Nam. Nhờ đó, khách hàng sẽ tin tưởng và tưởng thưởng chúng ta với doanh số vượt trội và lợi nhuận, giúp công ty, nhân viên và cộng đồng nơi chúng ta đang sống và làm việc cùng phát triển. ', '', '', '', 'vi', 'Target', 'We will make every effort to provide the best branded baby products of superior quality and value with reasonable price to all babies and childrens at every Vietnamese familly. As a result, consumers will trust and reward us with leadership sales and profit, allowing the company, our people and the communities in which we live and work to prosper. ', ''),
(385, NULL, 'Giá trị cốt lõi', 'v8-beer-garden', '/public/files/editor-upload/images/genex/gia-tri-cot-loi.jpg', '/public/files/editor-upload/_thumbs/images/V8.png', 'a:2:{i:0;a:2:{i:0;s:43:\"/public/files/editor-upload/images/v8-2.jpg\";i:1;s:1:\"1\";}i:1;a:2:{i:0;s:43:\"/public/files/editor-upload/images/v8-3.jpg\";i:1;s:1:\"2\";}}', '&lt;div&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;Con người:&lt;/strong&gt; Chúng ta luôn cố gắng thu hút và lựa chọn người giỏi. Chúng ta xây dựng và phát triển nguồn lực từ chính đội ngũ nhân viên của mình, đánh giá, thăng tiến và tưởng thưởng dựa trên kết quả công việc. Chúng ta luôn tin rằng con người là tài sản quý giá nhất. &lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;Lãnh đạo:&lt;/strong&gt; Tất cả chúng ta là nhà lãnh đạo trong phạm vi trách nhiệm của mình, với cam kết mang lại kết quả công việc vượt trội. Chúng ta biết rõ chúng ta đang vươn đến mục tiêu gì. &lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;Làm chủ:&lt;/strong&gt; Tất cả chúng ta hành động như những người chủ, làm việc với mục đích thành công lâu dài. &lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;Liêm chính:&lt;/strong&gt; Chúng ta luôn cố gắng làm điều đúng. Chúng ta trung thực và thẳng thắn với chính mình, với Quý khách hàng và mọi người xung quanh. &lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;Tin tưởng:&lt;/strong&gt; Chúng ta tôn trọng đồng nghiệp, quý khách hàng và người tiêu dùng, đối xử với họ như chúng ta vẫn muốn được đối xử. Chúng ta tin tưởng vào năng lực và mục tiêu của các đồng nghiệp. Chúng ta tin rằng mọi người làm việc tốt và hiệu quả nhất khi có sự tin tưởng lẫn nhau. &lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;strong&gt;Khát khao chiến thắng: &lt;/strong&gt;Chúng ta quyết tâm trở thành người giỏi nhất khi thực hiện những mục tiêu có ích nhất. Chúng ta không hài lòng với hiện trạng. Chúng ta khao khát cải thiện và chiến thắng trên thị trường. Chúng ta làm việc với quyết tâm kết quả ngày hôm nay tốt hơn ngày hôm qua, và ngày mai sẽ thành công hơn ngày hôm nay&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n', 255, 1, 'Chúng ta luôn cố gắng thu hút và lựa chọn người giỏi. Chúng ta xây dựng và phát triển nguồn lực từ chính đội ngũ nhân viên của mình, đánh giá, thăng tiến và tưởng thưởng dựa trên kết quả công việc. Chúng ta luôn tin rằng con người là tài sản quý giá nhất.', '', '', '', 'vi', 'Core value', 'We always try to attract and select good people. We build and develop resources from our own staff, evaluate, promote and reward performance based on our work. We always believe that people are Chi Viet\'s most valuable assets.', '&lt;div&gt;\r\n	&lt;div&gt;\r\n		2. Leadership:&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		We are all leaders in the sphere of responsibility, with a commitment to deliver outstanding results. We know exactly what we are reaching.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		3. Master:&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		We all act as owners, working for the sake of long-term success.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		4. Integrity:&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		We always try to do the right thing. We are honest and honest with ourselves, our customers and the people around us.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		5. Trust:&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		We respect our colleagues, customers and consumers, treating them as we would like to be treated. We believe in the capacity and purpose of our colleagues. We believe that people work the best and most effective when they have mutual trust.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		6. Desire to win:&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		We are determined to be the best at performing the most useful goals. We are not satisfied with the status quo. We aspire to improve and win the market.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		We work with determination today\'s results better than yesterday, and tomorrow will be more successful than today.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n'),
(386, NULL, 'Chúng tôi cam kết', 'salut-deli-juice-bar', '/public/files/editor-upload/images/genex/cam-ket.jpg', '/public/files/editor-upload/_thumbs/images/29.png', 'a:2:{i:0;a:2:{i:0;s:46:\"/public/files/editor-upload/images/salut-1.jpg\";i:1;s:1:\"1\";}i:1;a:2:{i:0;s:46:\"/public/files/editor-upload/images/salut-2.jpg\";i:1;s:1:\"2\";}}', '&lt;div&gt;\r\n	&lt;strong&gt;&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Chất lượng sản phẩm:&lt;/span&gt;&lt;/strong&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Tất cả sản phẩm do chúng tôi cung cấp được sản xuất chính hãng. Chúng tôi không chấp nhận hàng giả, hàng nhái và hàng kém chất lượng. Chúng tôi cam kết cùng góp sức với Chính phủ và cộng đồng trong cuộc chiến chống hàng giả, hàng nhái và hàng kém chất lượng. Chúng tôi cam kết nhận lại hàng hóa bị lỗi do nhà sản xuất.&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;strong&gt;&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Thông tin cá nhân:&lt;/span&gt;&lt;/strong&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;Chúng tôi bảo vệ, thu thập và sử dụng thông tin cá nhân do khách hàng cung cấp như là thông tin cá nhân của chính mình. Chúng tôi cam kết không cung cấp, bán hoặc trao đổi thông tin cá nhân của quý khách hàng. Chúng tôi trân trọng sự tin tưởng của quý khách hàng khi cung cấp cho chúng tôi thông tin cá nhân của quý khách.&lt;/span&gt;&lt;/div&gt;\r\n', 255, 1, 'Tất cả sản phẩm do chúng tôi cung cấp được sản xuất chính hãng. Chúng tôi không chấp nhận hàng giả, hàng nhái và hàng kém chất lượng. Chúng tôi cam kết cùng góp sức với Chính phủ và cộng đồng trong cuộc chiến chống hàng giả, hàng nhái và hàng kém chất lượng. Chúng tôi cam kết nhận lại hàng hóa bị lỗi do nhà sản xuất. ', '', '', '', 'vi', 'Our commitment', 'All products retailed, wholesaled or distributed by Chi Viet Baby Product Co. Ltd are manufactured by original manufacturers. We never accept counterfeit, fake or imitation goods. We commit to co-operate with the Government and communities in the war against counterfeit, fake or imitation goods. We commit to accept returns of goods having defects due to manufacturers\' fault. \r\n', '&lt;div&gt;\r\n	&lt;span style=\"font-family:arial,helvetica,sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;1. Product Quality:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;All products retailed, wholesaled or distributed by Chi Viet Baby Product Co. Ltd are manufactured by original manufacturers. We never accept counterfeit, fake or imitation goods. We commit to co-operate with the Government and communities in the war against counterfeit, fake or imitation goods. We commit to accept returns of goods having defects due to manufacturers\' fault.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;2. Your privacy:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Our goal is to protect, collect and use personal information provided to us as if it is our own. We commit not to provide, trade, sell or lease personal information entrusted to us. We value the trust people place in us when they give us personal information. .&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n'),
(421, NULL, 'Nguyên tắc', NULL, '/public/files/editor-upload/images/genex/nguyen-tac.png', NULL, NULL, '&lt;p&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta tôn trọng tất cả mọi người:&lt;/span&gt;&lt;/strong&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta tin tưởng rằng tất cả mọi người đều có thể và đều muốn đóng góp khả năng lớn nhất cho Công ty. Chúng ta trân trọng sự khác biệt. Chúng ta thôi thúc và hỗ trợ mọi người đạt được kết quả mong đợi và mục tiêu thách thức. Chúng ta trung thực với mọi người về kết quả làm việc của họ.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta cố gắng trở thành người giỏi nhất:&lt;/span&gt;&lt;/strong&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng tôi cố gắng trở thành người giỏi nhất trong những lĩnh vực quan trọng đối với Công ty. Chúng tôi so sánh kết quả làm việc của mình với những người giỏi khác trong và ngoài Công ty. Chúng tôi học từ cả thành công và thất bại của mình.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta tập trung ra bên ngoài:&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify; font-size: 14px;\"&gt;Chúng ta phát triển sự hiểu biết sâu sắc người tiêu dùng và nhu cầu của họ. Chúng tôi phát triển quan hệ gần gũi và đôi bên cùng có lợi với khách hàng và nhà cung cấp.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong style=\"color: rgb(102, 102, 102); text-align: justify; font-size: 14px;\"&gt;Sáng tạo là nền tảng của thành công&lt;/strong&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify; font-size: 14px;\"&gt;:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta thách thức thông lệ và sáng tạo trong kinh doanh với mục tiêu thành công hơn nữa trên thị trường.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;strong&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta trân trọng tài năng cá nhân:&lt;/span&gt;&lt;/strong&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta tin rằng tất cả mọi người có trách nhiệm liên tục phát triển bản thân mình và những người khác. Chúng ta khuyến khích và mong đợi những tài năng nổi bật và kết quả hoàn hảo.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;&lt;strong&gt;Chúng ta phụ thuộc lẫn nhau trong công việc:&lt;/strong&gt;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;Chúng ta làm việc cùng nhau với sự tự tin và tin tưởng giữa mọi người và các phòng ban. Chúng ta tự hào với kết quả thu được khi áp dụng lại ý tưởng của người khác. Chúng ta xây dựng quan hệ tuyệt hảo với tất cả các bên liên quan có đóng góp đến việc hoàn thành Mục tiêu Công ty, bao gồm khách hàng, nhà cung cấp và chính quyền địa phương&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 255, 1, 'Chúng ta làm việc cùng nhau với sự tự tin và tin tưởng giữa mọi người và các phòng ban. Chúng ta tự hào với kết quả thu được khi áp dụng lại ý tưởng của người khác. Chúng ta xây dựng quan hệ tuyệt hảo với tất cả các bên liên quan có đóng góp đến việc hoàn thành Mục tiêu Công ty, bao gồm khách hàng, nhà cung cấp và chính quyền địa phương. ', NULL, NULL, NULL, 'vi', 'Principles', 'We believe that all individuals can and want to contribute to their fullest potential. We value differences. We inspire and enable people to achieve high expectations, standards and challenging goals. We are honest with people about their performance. ', '&lt;div&gt;\r\n	&lt;span style=\"font-size:14px;\"&gt;&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;1. We Show Respect for All Individuals:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;We believe that all individuals can and want to contribute to their fullest potential. We value differences. We inspire and enable people to achieve high expectations, standards and challenging goals. We are honest with people about their performance.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;2. We Seek to Be the Best:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;We strive to be the best in all areas of strategic importance to the Company. We benchmark our performance rigorously versus the very best internally and externally. We learn from both our successes and our failures.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;3. We Are Externally Focused:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;We develop superior understanding of consumers and their needs. We develop close, mutually productive relationships with our customers and our suppliers.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;4. Innovation Is the Cornerstone of Our Success:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;We challenge convention and reinvent the way we do business to better win in the marketplace.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;5. We Value Personal Mastery:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;We believe it is the responsibility of all individuals to continually develop themselves and others. We encourage and expect outstanding technical mastery and executional excellence.&amp;nbsp;&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;6. Mutual Interdependency Is a Way of Life:&lt;/span&gt;&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;br style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\" /&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); text-align: justify;\"&gt;We work together with confidence and trust across business units, functions, categories and geographies. We take pride in results from reapplying others\' ideas. We build superior relationships with all the parties who contribute to fulfilling our Corporate Purpose, including our customers, suppliers and local authorities.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n'),
(420, NULL, 'aaa', NULL, '/public/files/editor-upload/images/logo/Ameda-logo.png', NULL, NULL, '&lt;div&gt;\r\n	aaaa&lt;/div&gt;\r\n', 255, NULL, 'â', NULL, NULL, NULL, 'vi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `diadiem_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang_category`
--

CREATE TABLE `khachhang_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '10',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `block_left` tinyint(4) DEFAULT '0',
  `block_right` tinyint(4) DEFAULT '0',
  `block_body` tinyint(4) DEFAULT '0',
  `block_body2` tinyint(4) DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang_category`
--

INSERT INTO `khachhang_category` (`id`, `name`, `alias`, `picture`, `picture_multi`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `content`, `block_left`, `block_right`, `block_body`, `block_body2`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`) VALUES
(1, 'Cơm văn phòng', 'com-van-phong', '', '', 0, '2013-01-05 02:01:47', 1, '2014-08-20 11:08:57', 48, 4, 1, '', 1, 1, 1, 0, 'Cơm văn phòng - Địa chỉ ăn chơi', 'Địa chỉ các quán cơm văn phòng ngon, giá cả hợp lý đối với dân văn phòng. Địa chỉ các quán cơm văn phòng ship hàng đển bạn có thể thưởng thức bưa ăn ngay tại văn phòng của mình', 'cơn văn phòng, quán cơm văn phòng, cơm văn phòng ngon, quán cơm văn phòng ngon, quán cơm văn phòng ship', 'vi'),
(2, ' Lẩu ', 'lau', '', '', 0, '2013-01-05 02:01:04', 1, '2014-08-20 11:08:53', 48, 5, 1, '', 1, 1, 0, 1, 'Quán lẩu - Địa chỉ ăn chơi', 'Địa chỉ các quán lẩu ngon, quán lẩu nổi tiếng, quán lẩu độc đáo giá rẻ tại các thành phố lớn trên toàn quốc', 'quán lẩu, quán lẩu ngon, quán lẩu nổi tiếng, quán lậu giá rẻ, quán lẩu độc đáo, quán lẩu ăn chơi', 'vi'),
(39, 'Quán nhậu ', 'quan-nhau', '/public/files/editor-upload/images/Bien/quan-nhau-ngon-cau-giay1.jpg', 'a:3:{i:0;a:3:{i:0;s:68:\"/public/files/editor-upload/images/Bien/quan-nhau-ngon-cau-giay2.jpg\";i:1;s:1:\"0\";i:2;N;}i:1;a:3:{i:0;s:67:\"/public/files/editor-upload/images/Bien/quan-nhau-ngon-cau-giay.jpg\";i:1;s:1:\"0\";i:2;N;}i:2;a:3:{i:0;s:68:\"/public/files/editor-upload/images/Bien/quan-nhau-ngon-cau-giay1.jpg\";i:1;s:1:\"0\";i:2;N;}}', 0, '2014-05-09 10:05:14', 31, '2014-08-20 10:08:39', 49, 9, 1, '&lt;div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 1, 1, 0, 0, 'Danh sách Quán Nhậu Ngon', 'Danh sách các quán nhậu uy tín, đảm bảo sạch sẽ, Nơi tổ chức liên hoan tiệc tùng ngon, Địa điểm nhậu cho cánh mài râu vào cuối tháng, Đưa ra quán nhậu tốt nhất', 'quán nhậu, danh sách quán bia, địa điểm liên hoan, ăn liên hoan, nhậu', 'vi'),
(54, 'Bar', 'bar', '', '', 34, '2014-05-09 10:05:39', 31, '2014-08-20 11:08:31', 49, 1, 1, '', 0, 0, 0, 0, 'Quán Bar', 'Giải trí ở quán bar không còn xa lạ với giới trẻ và cả những người lớn tuổi nữa rồi, Tại đây chúng tôi đưa ra các quán bar uy tín, sang trọng luôn được bình chọn TOP', 'quán bar, địa điểm giải trí, giải trí của giới trẻ, quán bar uy tín, bar tại hà nội', 'vi'),
(9, 'Café/Fast Food', 'cafe-fast-food', '', '', 0, '2013-01-05 02:01:19', 1, '2014-08-20 10:08:39', 48, 3, 1, '', 1, 1, 1, 0, 'Café/Fast Food - Địa chỉ ăn chơi', 'Tổng hợp những quán Café, Fast food ngon nổi tiếng. Phù hợp với dân văng phòng khi uống cà phê và ăn những món ăn nhanh', 'quán cà phê, Quán cafe, quán ăn nhanh, Fast food, quán fast food, quán cafe fast food,', 'vi'),
(38, 'Nhà hàng', 'nha-hang', '', '', 0, '2014-05-09 10:05:39', 31, '2014-08-20 10:08:45', 49, 10, 1, '', 0, 0, 0, 0, 'Danh sách Nhà Hàng Ngon tại Hà Nội và TP HCM', 'Danh sách các nhà hàng ngon uy tín, sang trọng trên toàn quốc đảm bảo sẽ có những nhà hàng phù hợp với bạn, Đưa ra thông tin nhà hàng phù hợp với tất cả các bạn', 'danh sách nhà hàng, nhà hàng, nhà hàng ngon, sang trọng, tiệc', 'vi'),
(23, ' Karaoke', 'karaoke', '', '', 34, '0000-00-00 00:00:00', 1, '2014-08-20 11:08:13', 49, 3, 1, '', 0, 0, 0, 0, 'Quán Karaoke', 'Những tụ điểm quán Karaoke uy tín, chất lượng giá cả phải chăng được bình chọn nhiều năm liền là nơi sang trọng , lịch sự, phục vụ nhiệt tình chu đáo được đưa ra cho các bạn', 'quán karaoke, hát karaoke ở đâu, ở đâu có quán karaoke rẻ, karaoke sang trọng', 'vi'),
(24, 'Tiệm bánh', 'tiem-banh', '', '', 0, '0000-00-00 00:00:00', 1, '2014-08-20 02:08:22', 49, 12, 1, '', 0, 0, 0, 0, 'Tiệm Bánh', 'Các tiệm bánh lớn và nhỏ ngon và đặc biệt nhất, mỗi tiệm có một nét đặc trưng riêng, chúng tôi đưa ra danh sách cho các bạn tiệm bánh ngon để các bạn lựa chọn', 'tiệm bánh, bánh ngon hấp dẫn, tiệm bánh nào ngon, tiệm bánh đặc biệt', 'vi'),
(25, ' Bít tết/Pizza', 'bit-tetpizza', '', '', 0, '0000-00-00 00:00:00', 1, '2014-08-20 10:08:06', 48, 2, 1, '', 0, 0, 0, 0, ' Bít tết/Pizza - Địa chỉ ăn chơi', 'Danh sách các quán bít tết - Pizza , nhà hàng  Bít tết - Pizza ngon, giá rẻ tại các thành phố lớn: Hà Nội, Sài gòn, Huế, Đà Nẵng,...', 'quán bít tết, quán pizza, cửa hàng bít tết, của hàng bán pizza, quán bít tết pizza,quán bít tết pizza ngon', 'vi'),
(55, 'Billiards', 'billiards', '', '', 34, '2014-05-09 10:05:31', 31, '2014-08-20 11:08:34', 49, 2, 1, '', 0, 0, 0, 0, 'Billiards Club', 'Tổng hợp các Club Billiards sang trọng , phục vụ tận tình, bàn và gậy hàng chất lượng cao tốt,giá bình dân mà sang trọng, nơi mà các cơ thủ hay luyện chơi', 'Billiards Club, quán bi-a, chơi bi-a ở đâu, bàn  bi-a, billiards', 'vi'),
(42, 'Lãng mạn', 'lang-man', '', '', 9, '2014-05-09 10:05:15', 31, '2014-08-20 10:08:02', 48, 2, 1, '', 0, 0, 0, 0, 'Café/Fast Food Lãng mạn', 'Địa chỉ các quán Café, Fast Food lãng mạn là địa điểm lý tưởng cho các cặp đôi hẹn hò.', 'Café lãng mạn, quán Café lãng mạn, quán cà phê lãng mạn, quán fast food lãng mạn, fast food lãng mạn', 'vi'),
(29, 'Món Nhật Bản', 'mon-nhat-ban', '', '', 38, '0000-00-00 00:00:00', 1, '2014-08-20 10:08:51', 49, 3, 1, '', 0, 0, 0, 0, 'Nhà Hàng Có Món Nhật Bản', 'Danh sách những nhà hàng Nhật bản ở Việt Nam từ bắc vào nam, những nhà hàng thu hút khách việt và cả khách Tây muốn thưởng thức hương vị nhật trên đất nước Việt Nam đã có tiếng', 'restaurant japan, nhà hàng nhật bản, quán ăn nhật bản, hàng nhật bản', 'vi'),
(30, 'Món Trung Quốc', 'mon-trung-quoc', '', '', 38, '0000-00-00 00:00:00', 1, '2014-08-20 10:08:04', 49, 5, 1, '', 0, 0, 0, 0, 'Nhà Hàng Có Món Trung Quốc', 'Danh sách nhà hàng Trung quốc được các thực khách dùng  bữa xong đánh giá cao về phong cách phục vụ và chất lượng, dùng món ăn trung quốc trên Việt Nam', 'nhà hàng món trung quốc, món trung quốc tại việt nam, ăn đồ trung quốc, nhà hàng', 'vi'),
(40, 'Quán ăn', 'quan-an', '', '', 0, '2014-05-09 10:05:34', 31, '2014-08-20 12:08:14', 48, 8, 1, '', 0, 0, 0, 0, 'Quán ăn - Địa chỉ ăn chơi', 'Địa chỉ các quán ăn uy tín, quán ăn ngon, quán ăn giá rẻ, quán ăn sạch cho mọn người.', 'quán ăn uy tín, quán ăn ngon, quán ăn giá rẻ, quán ăn sạch', 'vi'),
(41, 'Sang trọng', 'sang-trong', '', '', 9, '2014-05-09 10:05:02', 31, '2014-08-20 10:08:17', 48, 1, 1, '', 0, 0, 0, 0, 'Café/Fast Food sang trong - Địa chỉ ăn chơi', 'Tổng hợp những quán Café - Fast Food sang trọng dành cho việc tiếp khách', 'quán cà phê sang trọng, quán cafe sang trọng, quán fast food sang trọng, quán cafe fast food sang trọng', 'vi'),
(34, 'Giải trí', 'giai-tri', '', '', 0, '2014-05-08 07:05:57', 1, '2014-08-20 11:08:07', 49, 11, 1, '', 0, 0, 1, 0, 'Địa điểm Giải Trí', 'Đưa ra những địa điểm, khu vực giải trí lành mạnh và giải trí dành cho ai ưa cảm giác mạnh, thông tin các địa điểm bar, club lớn khắp nơi, chất lượng cao', 'địa điểm giải trí, giải trí, giải trí với bar club, vui chơi giải trí, giải trí lành mạnh, cảm giác mạnh', 'vi'),
(35, 'Ăn vặt', 'an-vat', '', '', 0, '2014-05-08 07:05:18', 1, '2014-08-20 10:08:19', 48, 1, 1, '', 0, 0, 1, 0, 'Ăn vặt - Địa chỉ ăn chơi', 'Giới thiệu địa chỉ các quán ăn vặt cực ngon của giới trẻ trên toàn quốc. Bạn nắm được các thông tin như: Địa chỉ, Giá cả, Điện thoại và giờ mở cửa của các quán ăn vặt', 'ăn vặt, quán ăn vặt, địa chỉ ăn vặt, địa chỉ quán ăn vặt, quán ăn vặt hà nội, quán ăn vặt sài gòn', 'vi'),
(36, 'Nướng ', 'nuong', '', '', 0, '2014-05-08 08:05:01', 31, '2014-08-20 11:08:35', 48, 6, 1, '', 0, 0, 0, 1, 'Nướng - Địa chỉ ăn chơi', 'Bạn là tín đồ của món nướng? Bạn chưa biết những quán nương ngon, rẻ, độc đáo quanh khu vực bạn? Ở đây sẽ tổng hợp tất cả những quán nướng ngon, rẻ mà được các bạn trẻ thường xuyên lui tới', 'nướng, quán nướng, lẩu nướng, quán nướng ngon, quán nướng ngon rẻ, quán nướng giá rẻ, đệ nhất nướng, nhất nước', 'vi'),
(37, 'Buffet', 'buffet', '', '', 0, '2014-05-08 08:05:17', 31, '2014-08-20 11:08:52', 48, 7, 1, '', 0, 0, 0, 1, 'Buffet - Địa chỉ ăn chơi', 'Danh sách các quán buffet ngon, quán buffet rẻ hay những quán buffet sang trọng tại các thành phố lớn trên toàn quốc', 'Buffet, quán Buffet, quán Buffet ngon, Buffet giá rẻ, quán Buffet sang trọng, quán Buffet độc đáo', 'vi'),
(43, 'View đẹp', 'view-dep', '', '', 9, '2014-05-09 10:05:35', 31, '2014-08-20 10:08:07', 48, 3, 1, '', 0, 0, 0, 0, 'Café/Fast Food View đẹp - Địa chỉ ăn chơi', 'Café/Fast Food View đẹp là địa điểm ưa thích của những tín đồ chụp ảnh, tự sướng. Với khung cảnh được bố trí hài hòa cực đẹp bạn sẽ có những bức ảnh như ý.', 'Café view đẹp, cà phê view đẹp, Fast food view đẹp, quán Café view đẹp, quán cà phê view đẹp', 'vi'),
(44, 'Độc đáo', 'doc-dao', '', '', 9, '2014-05-09 10:05:38', 31, '2014-08-20 11:08:35', 48, 4, 1, '', 0, 0, 0, 0, 'Café/Fast Food độc đáo', 'Địa chỉ các quán Café/Fast Food độc đáo dành cho các bạn trẻ thích khám phá, tìm hiểu. Mỗi quán Café/Fast food độc đáo sẽ mang đặc trưng riêng của từng quán', 'quán cà phê độc đáo, Fast food độc đáo, quán Café Fast Food độc đáo, địa chỉ quán cà phê độc đáo, địa chỉ quán fast food độc đáo', 'vi'),
(45, 'Lẩu gà', 'lau-ga', '', '', 2, '2014-05-09 10:05:55', 31, '2014-08-20 11:08:43', 48, 1, 1, '', 0, 0, 0, 0, 'Lẩu gà - Địa chỉ ăn chơi', 'Địa chỉ các quán lẩu gà nổi tiếng, lẩu gà ngon, lẩu gà giá rẻ cho những tín đồ thích ăn gà', 'lẩu gà, lẩu gà ngon, lẩu gà nội tiếng, lầu gà giá rẻ, lẩu gà độc đáo, lẩu gà ngon giá rẻ', 'vi'),
(46, 'Lẩu bò', 'lau-bo', '', '', 2, '2014-05-09 10:05:05', 31, '2014-08-20 11:08:52', 48, 2, 1, '', 0, 0, 0, 0, 'Lẩu bò - Địa chỉ ăn chơi', 'Tổng hợp địa chỉ những quán lẩu bỏ ngon, lẩu bò nổi tiếng, lẩu bò giá rẻ cho mọi cả nhà trong ngày cuối tuần.', 'Lẩu bò ngon, lẩu bò nổi tiếng, lẩu bò giá rẻ, quán lẩu bò, quan lẩu bò ngon, quán lẩu bò giá rẻ, quan lau bo', 'vi'),
(47, 'Lẩu cá', 'lau-ca', '', '', 2, '2014-05-09 10:05:14', 31, '2014-08-20 11:08:03', 48, 3, 1, '', 0, 0, 0, 0, 'Lẩu cá - Địa chỉ ăn chơi', 'Tổng hợp địa chỉ những quán lẩu cá ngon, lẩu cá nổi tiếng, lẩu cá giá rẻ cho cho những tín đồ  thích ăn cá', 'Lẩu cá, lẩu cá ngon, lẩu cá nổi tiếng, lẩu cá giá rẻ, quán lẩu cá, quán lẩu cá ngon, quan lẩu cá giá rẻ', 'vi'),
(48, 'Lẩu hải sản', 'lau-hai-san', '', '', 2, '2014-05-09 10:05:24', 31, '2014-08-20 11:08:39', 48, 4, 1, '', 0, 0, 0, 0, 'Lẩu hải sản - Địa chỉ ăn chơi', 'Tổng hợp địa chỉ những quán lẩu hải sản ngon, lẩu hải sản nổi tiếng, lẩu hải sản giá rẻ cho mọi cả nhà trong ngày cuối tuần.', 'Lẩu hải sản, lẩu hải sản giá rẻ, lẩu hải sản ngon, quán lẩu hải sản, quán lẩu hải sản giá rẻ, quán lẩu hải sản ngon', 'vi'),
(49, 'Lẩu khác', 'lau-khac', '', '', 2, '2014-05-09 10:05:33', 31, '2014-08-20 11:08:38', 48, 5, 1, '', 0, 0, 0, 0, 'Lẩu khác - Địa chỉ ăn chơi', 'Tổng hợp các quán lẩu khác như lẩu nấu, lẩu dê, lẩu ếch... nổi tiếng', 'lẩu khác, lẩu nấm, lẩu dê, lẩu ếch', 'vi'),
(50, 'Món Hàn Quốc', 'mon-han-quoc', '', '', 38, '2014-05-09 10:05:31', 31, '2014-08-20 10:08:26', 49, 4, 1, '', 0, 0, 0, 0, 'Nhà Hàng Có Món Hàn Quốc', 'Danh sách nhà hàng có Món Hàn Quốc được nhiều thực khách bình chọn trong nhiều năm, đã có uy tín tại Việt Nam và tiếng đối với các thực khách đã dùng bữa tại đó', 'nhà hàng hàn quốc, món hàn quốc, restaurant korea, korea at viet nam', 'vi'),
(51, 'Món Âu', 'mon-au', '', '', 38, '2014-05-09 10:05:42', 31, '2014-08-20 11:08:09', 49, 7, 1, '', 0, 0, 0, 0, 'Nhà Hàng Có Các Món Châu Âu', 'Danh sách nhà hàng châu âu tại Việt Nam đã có uy tín, Các nhà hàng lớn mang phong cách Châu âu, đồ ngon Châu âu, ăn đồ châu âu ở đâu?', 'nhà hàng châu âu, món châu âu, đồ ngon châu âu, ăn đồ châu âu', 'vi'),
(52, 'Lịch sự', 'lich-su', '', '', 38, '2014-05-09 10:05:23', 31, '2014-08-20 10:08:38', 49, 1, 1, '', 0, 0, 0, 0, 'Nhà Hàng Lịch Sự', 'Đưa ra Top những địa điểm, nhà hàng không gian và phục vụ Lịch Sự nhất mà chúng tôi tổng hợp được và ý kiến gửi về từ các bạn đã đi Review lại cho Web.', 'lịch sự, dùng bữa yên tĩnh, ăn uống lịch sự, không gian riêng tư', 'vi'),
(53, 'Ấn tượng', 'an-tuong', '', '', 38, '2014-05-09 10:05:48', 31, '2014-08-20 10:08:44', 49, 2, 1, '', 0, 0, 0, 0, 'Nhà Hàng ấn tượng', 'Danh sách nhà hàng ấn tượng đối với những thực khách đã từng dùng bữa tại nhà hàng đó, ấn tượng sâu sắc, để lại nhớ nhung với khách.', 'nhà hàng ấn tượng, ấn tượng, hấp dẫn, dấu ấn, nhớ nhung', 'vi'),
(56, 'Rạp chiếu phim', 'rap-chieu-phim', '', '', 34, '2014-05-09 10:05:54', 31, '2014-08-20 11:08:40', 49, 4, 1, '', 0, 0, 0, 0, 'Rạp Chiếu Phim', 'Danh sách các rạp chiếu phim từ lớn đến nhỏ, phân tích ưu nhược điểm của từng rạp và thống kế gia đình thì nên đi rạp nào, đôi tình nhân thì đi rạp nào hợp lý , trẻ em đi xem rạp nào', 'rạp chiếu phim, rạp chiếu phim người lớn, rạp chiếu phim dành cho tình nhân, rạp chiếu phim gia đình', 'vi'),
(57, 'Khác', 'khac', '', '', 34, '2014-05-09 10:05:12', 31, '2014-08-20 11:08:31', 49, 5, 1, '', 0, 0, 0, 0, 'Thông tin địa điểm giải trí khác nhau', 'Thông tin địa điểm giải trí khác nhau, địa điểm nhà hàng, khu vui chơi, khách sạn , bar, công viên những địa điểm giải trí nhỏ cũng đã được bình chọn là khu tốt nhất hiện có', 'địa điểm giải trí, trung tâm giải trí, gải trí vui, khu vui chơi giải trí', 'vi'),
(58, 'Món Thái Lan', 'mon-thai-lan', '', '', 38, '2014-05-09 10:05:02', 31, '2014-08-20 11:08:03', 49, 6, 1, '', 0, 0, 0, 0, 'Nhà Hàng Có Món Thái Lan', 'Danh sách nhà hàng có món Thái Lan ngon, địa điểm nhà hàng Thái, Những nhà hàng Thái Lan đã được nhiều thực khác bình chọn Top nhà hàng ngon.', 'nhà hàng thái lan, lẩu thái lan, món ngon thái lan, ăn đồ thái', 'vi'),
(59, 'Khám phá', 'kham-pha', '', '', 0, '2014-05-11 01:05:09', 1, '2014-08-20 02:08:24', 49, 255, 1, '', 0, 0, 1, 0, 'Khám Phá Mới Mẻ', 'Khám Phá những điều mới mẻ nhất, những địa điểm mới, quán ăn , nhà hàng , sân khấu, rạp phim .... mới mở đang có nhiều sức hấp dẫn với nhiều khách vào lần đầu', 'điều mới mẻ, khám phá, điều lạ, thú vị, hấp dẫn', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '255'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang_code`, `title`, `image`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `default`, `order`) VALUES
(1, 'vi', 'Việt Nam (vi_VN)', 'vi', 'Ngôn ngữ tiếng Việt', NULL, NULL, NULL, 1, 1, 255),
(2, 'en', 'English (en_US)', 'en', 'Ngôn ngữ tiếng Anh', NULL, NULL, NULL, 0, 0, 255);

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `picture_multi` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `picture_multi_mobile` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `name`, `picture_multi`, `lang_code`, `picture_multi_mobile`) VALUES
(21, 'Ange', 'a:2:{i:0;a:2:{i:0;s:84:\"/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:84:\"/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-02.jpg\";i:1;s:1:\"0\";}}', '*', 'a:2:{i:0;a:2:{i:0;s:84:\"/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-15.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:84:\"/public/files/editor-upload/images/slide-home/Wonder-City-Web-Hinh-anh-banner-16.jpg\";i:1;s:1:\"0\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `link_category`
--

CREATE TABLE `link_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '10',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `module_options` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller_options` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_options` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `router` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'none',
  `params` mediumtext COLLATE utf8_unicode_ci,
  `type_menu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8_unicode_ci,
  `cat_id` int(11) DEFAULT '0',
  `target` varchar(20) COLLATE utf8_unicode_ci DEFAULT '_self',
  `auto_submenu` tinyint(1) DEFAULT '0',
  `order` int(11) DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `picture`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `module_options`, `controller_options`, `action_options`, `router`, `params`, `type_menu`, `url`, `cat_id`, `target`, `auto_submenu`, `order`, `status`, `lang_code`) VALUES
(1, 'Trang chủ', 'trang-chu', '', 0, '2012-12-29 09:12:40', 1, '2013-01-06 08:01:11', 1, 'home', 'index', 'category', 'none', NULL, 'main_menu', NULL, NULL, '_self', NULL, 1, 1, 'vi'),
(25, 'Món ngon', 'mon-ngon', '', 0, '2014-03-21 12:03:34', 1, '2014-05-05 10:05:07', 1, 'article', 'index', 'category', 'none', NULL, 'main_menu', NULL, 10, '_self', 1, 254, 1, 'vi'),
(4, 'Địa Điểm', 'dia-diem', '', 0, '2012-12-29 09:12:10', 1, '2014-05-05 10:05:38', 1, 'diadiem', 'index', 'category', 'none', NULL, 'main_menu', NULL, 0, '_self', 1, 2, 1, 'vi'),
(5, 'Tin tức - Sự Kiện', 'tin-tuc-su-kien', '', 0, '2012-12-29 09:12:26', 1, '2014-07-04 12:07:20', 31, 'article', 'index', 'category', 'none', NULL, 'main_menu', NULL, 0, '_self', 0, 10, 1, 'vi'),
(6, 'Gần tôi', 'gan-toi', '', 0, '2012-12-29 09:12:37', 1, '2014-04-14 10:04:52', 1, 'url', 'index', 'category', 'none', NULL, 'main_menu', '#', NULL, '_self', NULL, 7, 1, 'vi'),
(7, 'Black List', 'black-list', '', 0, '2012-12-29 09:12:47', 1, '2014-05-05 10:05:32', 1, 'article', 'index', 'category', 'none', NULL, 'main_menu', NULL, 11, '_self', 0, 255, 1, 'vi'),
(8, 'Hỗ trợ', 'ho-tro', '', 0, '2012-12-29 09:12:00', 1, '2015-12-15 02:12:21', 32, 'home', 'index', 'category', 'none', NULL, 'top_menu', NULL, NULL, '_self', NULL, 255, 1, 'vi'),
(37, 'Liên hệ', 'lien-he', '', 0, '2014-05-05 11:05:16', 1, '0000-00-00 00:00:00', 0, 'contact', 'index', 'category', 'none', NULL, 'main_menu', NULL, NULL, '_self', NULL, 255, 1, 'vi'),
(10, 'Liên hệ', 'lien-he', '', 0, '2012-12-29 09:12:24', 1, '2014-03-20 10:03:26', 1, 'contact', 'index', 'category', 'none', NULL, 'top_menu', NULL, NULL, '_self', NULL, 255, 1, 'vi'),
(12, 'Trang chủ', 'trang-chu', '', 0, '2012-12-29 09:12:49', 1, '0000-00-00 00:00:00', 0, 'home', 'index', 'category', 'none', NULL, 'footer_menu', NULL, NULL, '_self', NULL, 1, 1, 'vi'),
(29, 'Quán ăn đêm', 'quan-an-dem', '', 0, '2014-04-05 01:04:11', 1, '2014-05-11 12:05:13', 1, 'url', 'index', 'category', 'none', NULL, 'footer_menu', '#', NULL, '_self', NULL, 255, 1, 'vi'),
(17, 'Liên hệ', 'lien-he', '', 0, '2012-12-29 09:12:49', 1, '0000-00-00 00:00:00', 0, 'contact', 'index', 'category', 'none', NULL, 'footer_menu', NULL, NULL, '_self', NULL, 10, 1, 'vi'),
(26, 'Left 1', 'left-1', '', 0, '2014-03-21 12:03:22', 1, '0000-00-00 00:00:00', 0, 'article', 'index', 'category', 'none', NULL, 'left_menu', NULL, 2, '_self', 1, 255, 1, 'vi'),
(33, 'Hỏi đáp', 'hoi-dap', '', 0, '2014-04-14 10:04:17', 1, '2014-05-05 11:05:49', 1, 'faqs', 'index', 'category', 'none', NULL, 'main_menu', NULL, 0, '_self', 0, 255, 1, 'vi'),
(35, 'Giới thiệu địa điểm', 'gioi-thieu-dia-diem', '', 5, '2014-05-05 10:05:43', 1, '2018-05-15 12:05:01', 55, 'url', 'index', 'category', 'none', NULL, 'main_menu', '', NULL, '_self', NULL, 255, 0, 'vi'),
(36, 'Món ngon', 'mon-ngon', '', 5, '2014-05-05 10:05:01', 1, '0000-00-00 00:00:00', 0, 'article', 'index', 'category', 'none', NULL, 'main_menu', NULL, 10, '_self', 1, 255, 0, 'vi'),
(39, 'Chính sách bảo mât thông tin', 'chinh-sach-bao-mat-thong-tin', '', 37, '2018-05-15 12:05:59', 55, '2018-06-01 04:06:12', 55, 'url', 'index', 'category', 'none', NULL, 'main_menu', '', NULL, '_blank', NULL, 255, 1, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE `money` (
  `id` int(11) NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `money`
--

INSERT INTO `money` (`id`, `code`, `currency`, `exchange`, `order`, `status`, `lang_code`) VALUES
(1, 'VNĐ', 'Vietnam Dong', 0, 255, 1, 'vi'),
(2, 'USD', 'US Dollar', 0, 255, 1, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `nhomdichvu`
--

CREATE TABLE `nhomdichvu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhomdichvu`
--

INSERT INTO `nhomdichvu` (`id`, `name`, `order`, `status`) VALUES
(1, 'Tư vấn Marketing', 1, 1),
(2, 'Thiết kế thương hiệu', 2, 1),
(3, 'Chiến lược thương hiệu', 3, 1),
(4, 'Chiến lược nhân sự', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `name`) VALUES
(1, 'Genex'),
(2, 'Unicom'),
(3, 'Hubdic');

-- --------------------------------------------------------

--
-- Table structure for table `pagedichvu`
--

CREATE TABLE `pagedichvu` (
  `id` tinyint(1) NOT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagedichvu`
--

INSERT INTO `pagedichvu` (`id`, `content`) VALUES
(1, '&lt;div&gt;\n	&lt;table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 500px;\"&gt;\n		&lt;tbody&gt;\n			&lt;tr&gt;\n				&lt;td&gt;\n					jjjj&lt;/td&gt;\n				&lt;td&gt;\n					jjjj&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr&gt;\n				&lt;td&gt;\n					&amp;nbsp;&lt;/td&gt;\n				&lt;td&gt;\n					&amp;nbsp;&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr&gt;\n				&lt;td&gt;\n					&amp;nbsp;&lt;/td&gt;\n				&lt;td&gt;\n					&amp;nbsp;&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/tbody&gt;\n	&lt;/table&gt;\n&lt;/div&gt;\n&lt;div&gt;\n	&amp;nbsp;&lt;/div&gt;\n');

-- --------------------------------------------------------

--
-- Table structure for table `phankhu_image`
--

CREATE TABLE `phankhu_image` (
  `id` int(11) NOT NULL,
  `picture_multi` mediumtext,
  `phankhu_id` int(2) DEFAULT NULL,
  `product_id` int(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `content` text,
  `content_en` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phankhu_image`
--

INSERT INTO `phankhu_image` (`id`, `picture_multi`, `phankhu_id`, `product_id`, `name`, `content`, `content_en`) VALUES
(4, 'a:3:{i:0;a:2:{i:0;s:71:\"/public/files/editor-upload/images/phan-khu/sai-gon/img-pk-saigon01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:71:\"/public/files/editor-upload/images/phan-khu/sai-gon/img-pk-saigon02.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:71:\"/public/files/editor-upload/images/phan-khu/sai-gon/img-pk-saigon03.jpg\";i:1;s:1:\"0\";}}', 28, 1, 'Sài Gòn', NULL, NULL),
(5, 'a:3:{i:0;a:2:{i:0;s:89:\"/public/files/editor-upload/images/phan-khu/ha-noi/Wonder-City-Web-Hinh-anh-banner-08.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:65:\"/public/files/editor-upload/images/san-pham/hotel/img-pk-hn02.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:65:\"/public/files/editor-upload/images/san-pham/hotel/img-pk-hn03.jpg\";i:1;s:1:\"0\";}}', 4, 1, 'Hanoi', '&lt;p&gt;\r\n	Với thiết kế ưu việt và linh hoạt, các dãy hotel-shop trong phân khu vừa là địa điểm lưu trú lý tưởng, vừa là địa điểm ăn uống, mua sắm các sản vật truyền thống của đất Hà thành.&lt;/p&gt;\r\n', '&lt;p&gt;With superior and flexible design, the hotel-shop ranges in the subdivision are both an ideal place to stay, and a place to eat, drink and shop traditional products of Hanoi.&lt;/p&gt;\r\n'),
(6, 'a:3:{i:0;a:2:{i:0;s:68:\"/public/files/editor-upload/images/phan-khu/tropical/img-hotel01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:91:\"/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-04.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:68:\"/public/files/editor-upload/images/phan-khu/tropical/img-hotel01.jpg\";i:1;s:1:\"0\";}}', 1, 4, 'tropical', '&lt;div&gt;\r\n	-Tất cả các hotel tại phân khu Tropical Monaco đều có view nhìn ra biển&lt;/div&gt;\r\n&lt;div&gt;\r\n	- Hồ bơi trực diện biển giúp du khách vừa có thể ngắm non nước Vân Phong, vừa được thư giãn ở 3 tầng nước&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	-Tất cả các hotel tại phân khu Tropical Monaco đều có view nhìn ra biển&lt;/div&gt;\r\n&lt;div&gt;\r\n	- Hồ bơi trực diện biển giúp du khách vừa có thể ngắm non nước Vân Phong, vừa được thư giãn ở 3 tầng nước&lt;/div&gt;\r\n'),
(7, 'a:2:{i:0;a:2:{i:0;s:66:\"/public/files/editor-upload/images/phan-khu/tropical/img-prd01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:66:\"/public/files/editor-upload/images/phan-khu/tropical/img-prd02.jpg\";i:1;s:1:\"0\";}}', 1, 3, 'Tropical', '&lt;div&gt;\r\n	Nội dung Boutique Hotel&lt;/div&gt;\r\n', ''),
(8, 'a:3:{i:0;a:2:{i:0;s:64:\"/public/files/editor-upload/images/phan-khu/hue/img-pk-hue01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:64:\"/public/files/editor-upload/images/phan-khu/hue/img-pk-hue02.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:64:\"/public/files/editor-upload/images/phan-khu/hue/img-pk-hue03.jpg\";i:1;s:1:\"0\";}}', 2, 1, 'Phân khu Huế', 'Hotel-shop là địa điểm lưu trú lý tưởng cho du khách khi không cần phải đi xa, mọi dịch vụ ăn uống, mua sắm đã có ngay dưới tầng một. ', 'Hotel-shop là địa điểm lưu trú lý tưởng cho du khách khi không cần phải đi xa, mọi dịch vụ ăn uống, mua sắm đã có ngay dưới tầng một. '),
(9, 'a:2:{i:0;a:2:{i:0;s:73:\"/public/files/editor-upload/images/phan-khu/babaros/img-pk-barbados01.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:73:\"/public/files/editor-upload/images/phan-khu/babaros/img-pk-barbados02.jpg\";i:1;s:1:\"0\";}}', 3, 3, 'Phân khu BABAROS', 'Với … phòng, được thiết kế nội thất theo phong cách đặc trưng của vùng Caribe, mang đậm tính nghệ thuật và tinh tế, Boutique- Hotel sẽ đem lại những trải nghiệm mới mẻ cho du khách', 'Với … phòng, được thiết kế nội thất theo phong cách đặc trưng của vùng Caribe, mang đậm tính nghệ thuật và tinh tế, Boutique- Hotel sẽ đem lại những trải nghiệm mới mẻ cho du khách'),
(10, 'a:3:{i:0;a:2:{i:0;s:90:\"/public/files/editor-upload/images/phan-khu/sai-gon/Wonder-City-Web-Hinh-anh-banner-10.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:71:\"/public/files/editor-upload/images/san-pham/sai-gon/img-pk-saigon02.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:71:\"/public/files/editor-upload/images/san-pham/sai-gon/img-pk-saigon03.jpg\";i:1;s:1:\"0\";}}', 5, 1, 'Phân khu Sài Gòn', '&lt;div&gt;\r\n	Với hotel-shop, du khách có thể nghỉ ngơi, mua sắm, ăn uống trong tầm tay …&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	Với hotel-shop, du khách có thể nghỉ ngơi, mua sắm, ăn uống trong tầm tay …&lt;/div&gt;\r\n'),
(11, 'a:3:{i:0;a:2:{i:0;s:91:\"/public/files/editor-upload/images/phan-khu/tropical/Wonder-City-Web-Hinh-anh-banner-03.jpg\";i:1;s:1:\"0\";}i:1;a:2:{i:0;s:71:\"/public/files/editor-upload/images/san-pham/monaco/img-conference02.jpg\";i:1;s:1:\"0\";}i:2;a:2:{i:0;s:71:\"/public/files/editor-upload/images/san-pham/monaco/img-conference03.jpg\";i:1;s:1:\"0\";}}', 1, 5, 'Tropical Monaco', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `phanphoi`
--

CREATE TABLE `phanphoi` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cat_id` int(11) NOT NULL,
  `synopsis` text COLLATE utf8_unicode_ci,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `name_en` text COLLATE utf8_unicode_ci,
  `synopsis_en` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phanphoi`
--

INSERT INTO `phanphoi` (`id`, `name`, `order`, `status`, `created`, `cat_id`, `synopsis`, `lang_code`, `name_en`, `synopsis_en`) VALUES
(10, 'Product Quality', 255, 0, '2017-09-26 09:09:20', 3, '&lt;div style=\"text-align: justify;\"&gt;\r\n	&lt;font color=\"#666666\" face=\"Arial, Helvetica, sans-serif\"&gt;&lt;span style=\"font-size: 13.3333px;\"&gt;ộng hòa xã hội chủ nghĩa việt &amp;nbsp;nam&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;\r\n&lt;div style=\"text-align: justify;\"&gt;\r\n	&lt;font color=\"#666666\" face=\"Arial, Helvetica, sans-serif\"&gt;&lt;span style=\"font-size: 13.3333px;\"&gt;Độc lập tự do hạnh phúc&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;\r\n', 'vi', '', ''),
(12, 'Bibomart', 255, 0, '2017-10-12 10:10:39', 1, '&lt;div&gt;\r\n	đại lý phân phối của unimom&lt;/div&gt;\r\n', 'vi', 'Bibomart', '&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;p span=\"2\"&gt;\r\n			&amp;nbsp;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&amp;nbsp;&lt;/p&gt;\r\n		&lt;table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 1025px;\" width=\"461\"&gt;\r\n			&lt;colgroup&gt;\r\n			&lt;/colgroup&gt;\r\n			&lt;tbody&gt;\r\n				&lt;tr height=\"41\"&gt;\r\n					&lt;td height=\"41\" style=\"height: 41px; width: 72px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;1&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width: 72px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0826YH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width: 875px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC CAO CẤP NẮP BẬT CÓ KHAY ĐỰNG KẸO – 400ML MÀU HỒNG&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr height=\"41\"&gt;\r\n					&lt;td height=\"41\" style=\"height: 41px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;2&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0826YX&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width: 875px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC CAO CẤP NẮP BẬT CÓ KHAY ĐỰNG KẸO – 400ML MÀU XANH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr height=\"41\"&gt;\r\n					&lt;td height=\"41\" style=\"height: 41px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0620YH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width: 875px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC NẮP BẬT ỐNG HÚT MỀM – 420 ML MÀU HỒNG&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr height=\"41\"&gt;\r\n					&lt;td height=\"41\" style=\"height: 41px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0620YX&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width: 875px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC NẮP BẬT ỐNG HÚT MỀM – 420 ML MÀU XANH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr height=\"41\"&gt;\r\n					&lt;td height=\"41\" style=\"height: 41px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0820YH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;/td&gt;\r\n					&lt;td style=\"width: 875px;\"&gt;\r\n						&lt;p&gt;\r\n							&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC CAO CẤP NẮP BẬT CÓ ỐNG HÚT – 420 ML MÀU HỒNG&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n						&lt;div&gt;\r\n							&amp;nbsp;&lt;/div&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n			&lt;/tbody&gt;\r\n		&lt;/table&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;p span=\"2\"&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 1025px;\" width=\"461\"&gt;\r\n		&lt;colgroup&gt;\r\n		&lt;/colgroup&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr height=\"41\"&gt;\r\n				&lt;td height=\"41\" style=\"height: 41px; width: 72px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;1&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 72px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0826YH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 875px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC CAO CẤP NẮP BẬT CÓ KHAY ĐỰNG KẸO – 400ML MÀU HỒNG&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr height=\"41\"&gt;\r\n				&lt;td height=\"41\" style=\"height: 41px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;2&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0826YX&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 875px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC CAO CẤP NẮP BẬT CÓ KHAY ĐỰNG KẸO – 400ML MÀU XANH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr height=\"41\"&gt;\r\n				&lt;td height=\"41\" style=\"height: 41px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0620YH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 875px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC NẮP BẬT ỐNG HÚT MỀM – 420 ML MÀU HỒNG&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr height=\"41\"&gt;\r\n				&lt;td height=\"41\" style=\"height: 41px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0620YX&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 875px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC NẮP BẬT ỐNG HÚT MỀM – 420 ML MÀU XANH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr height=\"41\"&gt;\r\n				&lt;td height=\"41\" style=\"height: 41px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;UP0820YH&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n				&lt;td style=\"width: 875px;\"&gt;\r\n					&lt;p&gt;\r\n						&lt;span style=\"font-size: 14px;\"&gt;&lt;span style=\"font-family: arial, helvetica, sans-serif;\"&gt;BÌNH NƯỚC CAO CẤP NẮP BẬT CÓ ỐNG HÚT – 420 ML MÀU HỒNG&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n					&lt;div&gt;\r\n						&amp;nbsp;&lt;/div&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `module`, `controller`, `action`) VALUES
(1, 'Truy cập vào admin', 'default', 'admin', 'index'),
(2, 'Xem danh sách nhóm thành viên', 'default', 'admin-group', 'index'),
(3, 'Thêm nhóm thành viên', 'default', 'admin-group', 'add'),
(4, 'Sửa nhóm thành viên', 'default', 'admin-group', 'edit'),
(5, 'Xóa nhóm thành viên', 'default', 'admin-group', 'delete'),
(6, 'Xem danh sách thành viên', 'default', 'admin-user', 'index'),
(7, 'Thêm thành viên', 'default', 'admin-user', 'add'),
(8, 'Sửa thành viên', 'default', 'admin-user', 'edit'),
(9, 'Xóa thành viên', 'default', 'admin-user', 'delete'),
(10, 'Khóa thành viên', 'default', 'admin-user', 'status'),
(11, 'Xem danh sách khách hàng', 'default', 'admin-register', 'index'),
(12, 'Xem chi tiết khách hàng', 'default', 'admin-register', 'info'),
(13, 'Xóa khách hàng', 'default', 'admin-register', 'delete'),
(14, 'Thay đổi trạng thái khách hàng', 'default', 'admin-register', 'status'),
(15, 'Tìm kiếm khách hàng', 'default', 'admin-register', 'filter'),
(16, 'Export danh sách khách hàng', 'default', 'admin-register', 'excel'),
(17, 'Danh mục quảng cáo', 'default', 'admin-ads', 'index'),
(18, 'Lọc quảng cáo', 'default', 'admin-ads', 'filter'),
(19, 'Thêm mới quảng cáo', 'default', 'admin-ads', 'add'),
(20, 'Chi tiết quảng cáo', 'default', 'admin-ads', 'info'),
(21, 'Sửa quảng cáo', 'default', 'admin-ads', 'edit'),
(22, 'Xóa quảng cáo', 'default', 'admin-ads', 'delete'),
(23, 'Thay đổi trạng thái quảng cáo', 'default', 'admin-ads', 'status'),
(24, 'Sắp xếp quảng cáo', 'default', 'admin-ads', 'sort'),
(25, 'Sửa block', 'default', 'admin-block', 'edit'),
(26, 'Thay đổi trạng thái địa điểm', 'diadiem', 'admin-attribute', 'status'),
(27, 'Xóa địa điểm', 'diadiem', 'admin-attribute', 'delete'),
(28, 'Sửa địa điểm', 'diadiem', 'admin-attribute', 'edit'),
(29, 'Xem thông tin địa điểm', 'diadiem', 'admin-attribute', 'info'),
(30, 'Thêm mới địa điểm', 'diadiem', 'admin-attribute', 'add'),
(31, 'Lọc địa điểm', 'diadiem', 'admin-attribute', 'filter'),
(32, 'Danh sách địa điểm', 'diadiem', 'admin-attribute', 'index'),
(33, 'danh sách bài viết', 'article', 'admin-category', 'index'),
(34, 'danh mục bài viết lọc', 'article', 'admin-category', 'filter'),
(35, 'danh sách bài viết', 'article', 'admin-item', 'index'),
(36, 'thêm mới bài viết', 'article', 'admin-item', 'add'),
(37, 'sửa bài viết', 'article', 'admin-item', 'edit'),
(38, 'xóa bài viết', 'article', 'admin-item', 'delete'),
(39, 'thay đổi trạng thái bài viết', 'article', 'admin-item', 'status'),
(40, 'cấu hình module bài viết', 'article', 'admin-config', 'index');

-- --------------------------------------------------------

--
-- Table structure for table `quanngon_category`
--

CREATE TABLE `quanngon_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `block_left` tinyint(1) NOT NULL DEFAULT '0',
  `block_right` tinyint(1) NOT NULL DEFAULT '0',
  `block_body` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8_unicode_ci,
  `lang_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quanngon_category`
--

INSERT INTO `quanngon_category` (`id`, `name`, `alias`, `picture`, `parents`, `created`, `created_by`, `modified`, `modified_by`, `order`, `status`, `content`, `block_left`, `block_right`, `block_body`, `meta_title`, `meta_description`, `meta_keywords`, `lang_code`) VALUES
(1, 'Nướng', 'nuong', '', 10, '2012-12-03 09:12:45', 1, '2014-04-05 11:04:08', 1, 255, 1, '', 1, 0, 1, 'Quán nướng online ', 'Quán nướng online ', 'Quán nướng online ', 'vi'),
(2, 'Lẩu', 'lau', '', 10, '2012-12-03 11:12:47', 1, '2014-04-05 11:04:47', 1, 255, 1, '', 1, 0, 1, '', '', '', 'vi'),
(10, 'Món ngon', 'mon-ngon', '', 0, '2014-04-05 11:04:05', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(11, 'Buffet', 'buffet', '', 10, '2014-04-05 11:04:30', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(12, 'Lẩu bò ', 'lau-bo', '', 2, '2014-04-05 11:04:03', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(13, 'Lẩu gà', 'lau-ga', '', 2, '2014-04-05 11:04:14', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(14, 'Lẩu hải sản', 'lau-hai-san', '', 2, '2014-04-05 11:04:26', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(15, 'Lẩu cá', 'lau-ca', '', 2, '2014-04-05 11:04:38', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(16, 'Lẩu sường sụn', 'lau-suong-sun', '', 2, '2014-04-05 11:04:54', 1, '2014-04-05 11:04:24', 1, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(17, 'Món khác', 'mon-khac', '', 10, '2014-04-05 11:04:16', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(18, 'Chân gà nướng', 'chan-ga-nuong', '', 1, '2014-04-05 11:04:53', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(19, 'Nầm nướng', 'nam-nuong', '', 1, '2014-04-05 11:04:06', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi'),
(20, 'Các loại lẩu khác', 'cac-loai-lau-khac', '', 2, '2014-04-05 11:04:41', 1, '0000-00-00 00:00:00', 0, 255, 1, '', 0, 0, 0, '', '', '', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `nguontin_id` int(11) NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL DEFAULT '0000-00-00',
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coquan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoigian_id` int(11) NOT NULL,
  `ngayhen` date NOT NULL DEFAULT '0000-00-00',
  `khoahoc_id` int(11) NOT NULL,
  `trungtam_id` int(11) NOT NULL,
  `ngayhoc` date NOT NULL DEFAULT '0000-00-00',
  `lichhocthichhop` mediumtext COLLATE utf8_unicode_ci,
  `yeucaukhac` mediumtext COLLATE utf8_unicode_ci,
  `ngaygui` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '*'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `nguontin_id`, `hoten`, `ngaysinh`, `diachi`, `coquan`, `email`, `dienthoai`, `thoigian_id`, `ngayhen`, `khoahoc_id`, `trungtam_id`, `ngayhoc`, `lichhocthichhop`, `yeucaukhac`, `ngaygui`, `status`, `user_id`, `lang_code`) VALUES
(1, 1, 'Ngô Thị Phương Anh', '1960-01-01', 'Cầu Giấy, Hà Nội', 'Langmaster', 'namit@langmaster.edu.vn', '0902 171 042', 1, '2013-02-21', 1, 1, '2013-02-22', 'Có thể học vào các buổi sáng', 'Không có gì', '2013-02-20 02:15:07', 1, 0, '*'),
(2, 1, 'Nguyễn Thị Thu', '1940-12-18', 'Cầu Giấy, Hà Nội', 'Langmaster', 'nguyenthukma1999@gmail.com', '0976982321', 1, '2013-02-21', 2, 1, '2013-03-17', '', '', '2013-02-21 02:50:41', 1, 0, '*'),
(3, 1, 'Nguyễn Văn Nam', '1949-12-19', 'Cầu Giấy, Hà Nội', 'Langmaster', 'namtin17@gmail.com', '0902 171 042', 3, '2013-02-22', 3, 2, '2013-03-01', 'Nội dung thích hợp', 'Yêu cầu khác', '2013-02-21 04:08:24', 0, 0, '*'),
(4, 2, 'Nguyễn Văn Hải', '1942-04-05', 'Cầu Giấy, Hà Nội', 'Langmaster', 'contact@dntsolution.vn', '0902 171 042', 2, '2013-03-01', 4, 2, '2013-03-08', 'Nội dung', 'Không có gì', '2013-02-21 04:09:38', 0, 0, '*'),
(5, 1, 'Ngô Thị Phương Anh', '1988-10-25', 'Đông Anh - Hà Nội', '', 'anhntp@abbank.vn', '0985827569', 2, '2013-02-25', 2, 1, '2013-02-25', '', '', '2013-02-22 08:58:09', 0, 0, '*'),
(6, 1, 'Nguyễn Thị Thu', '0000-00-00', '', '', 'nguyenthukma1999@gmail.com', '0976982321', 2, '2013-02-26', 4, 2, '2013-02-26', '', '', '2013-02-22 09:00:20', 0, 0, '*'),
(7, 1, 'Nguyễn Minh Tuấn', '1989-06-03', '23/1131 Ngô Gia Tự Long Biên Hà nội', 'ĐH công nghiệp hà nội', 'minhtuan0306@gmail.com', '0943593689', 1, '2013-02-19', 1, 1, '2013-02-19', '', '', '2013-02-22 09:02:51', 0, 0, '*'),
(8, 1, 'Phạm Thị Trang', '1991-08-04', 'Từ Liêm- Hà Nội', 'ĐH Công nghiệp Hà Nội', 'phamtrang040891@gmail.com', '0164 960 2706', 1, '2013-03-01', 1, 2, '2013-03-01', 'Tất cả các ngày trong tuần', '', '2013-02-22 09:05:12', 0, 0, '*'),
(9, 1, 'Vũ thu trang', '1994-01-08', 'Định công- hà nội', 'Đh kinh tế', 'xy_d_91@yahoo.com.vn', '0989515119', 1, '2013-02-23', 2, 1, '2013-02-23', '', '', '2013-02-22 09:08:40', 0, 0, '*'),
(10, 1, 'Lê đức Quân', '1987-02-09', ' Hà Nội', '', 'tiger0350@gmail.com', '0978849286', 3, '2013-02-23', 1, 1, '2013-02-23', '', '', '2013-02-22 09:20:46', 0, 0, '*'),
(11, 1, 'Ngo Thuy Dung', '1993-05-27', 'Cau Dien, Tu Liem', '', 'Ngo_thuydung@rocketmail.com', '0984057954', 1, '2013-03-01', 1, 1, '2013-03-01', '', '', '2013-02-22 11:13:13', 0, 0, '*'),
(12, 6, 'Le Dang Hoang', '1985-10-11', 'Hà Nội', 'ATS', 'danghoangats@gmail.com', '0979868667', 3, '2013-02-22', 1, 1, '2013-02-22', 'cac buoi toi trong tuan', '', '2013-02-22 11:16:02', 0, 0, '*'),
(13, 1, 'Nguyễn Đức Thao', '1987-11-08', 'Yên Hòa - Cầu Giấy - Hà Nội', 'Cty Điện toán và Truyền số liệu VDC', 'treviettreviet@gmail.com', '0986888146', 3, '2013-02-05', 2, 1, '2013-02-05', '', '', '2013-02-22 11:17:52', 0, 0, '*'),
(14, 2, 'nhu duy vinh', '1990-02-17', 'tayho-hanoi', 'dai hoc dien luc', 'duyvinhfc@gmail.com', '0979900583', 1, '2013-03-01', 1, 1, '2013-03-01', '', '', '2013-02-22 11:19:43', 0, 0, '*'),
(15, 1, 'Trần thị Thảo', '1991-10-15', 'Nam Định', 'Đại Học Thương Mại', 'tranthithao.dhtm@gmail.com', '01669045477', 1, '2013-02-22', 2, 2, '2013-02-22', '', '', '2013-02-22 03:23:11', 0, 0, '*'),
(16, 1, 'Nguyễn Thanh Trầm', '1991-08-01', 'Hà Nội', 'ĐH Quốc Gia', 'thanhtram1891@gmail.com', '01658008548', 2, '2013-02-22', 6, 1, '2013-02-22', '', '', '2013-02-22 03:24:41', 0, 0, '*'),
(17, 1, 'Nguyễn Thị Nhàn', '1992-11-05', 'Gia Viễn -Ninh Bình', '', 'maimaibentuibannhe@gmail.com', '01663722709', 1, '2013-02-22', 6, 1, '2013-02-22', '', '', '2013-02-22 03:26:35', 0, 0, '*'),
(18, 1, 'vũ thế Lăng', '1991-08-19', '', '', 'vuthelang.vu7@gmail.com', '01663774381', 1, '2013-02-22', 1, 1, '2013-02-22', '', '', '2013-02-22 03:27:49', 0, 0, '*'),
(19, 3, 'Hoàng Văn Giáp', '1994-01-02', 'Ngõ 91, chùa Láng, Đống Đa, Hà Nội', 'Đại học Ngoại Thương', 'hoangvangiap95@gmail.com', '01648474421', 2, '2013-03-09', 6, 1, '2013-04-30', 'Buổi tối các ngày trong tuần', '', '2013-02-23 08:33:06', 0, 0, '*'),
(20, 6, 'Trần Văn Hải', '1992-09-22', 'Đông Ngạc-Từ Liêm-Hà Nội', 'Trường Đại học Mỏ - Địa chất', 'tranvanhailc@gmail.com', '01667736568', 1, '2013-02-28', 3, 1, '2013-04-01', '18h30 - 21h00 thứ 2, thứ 5 hàng tuần', 'không', '2013-02-24 12:20:36', 0, 0, '*'),
(21, 3, 'Lò Văn Lả', '1990-07-20', 'Đông Ngạc-Từ Liêm-Hà Nội', 'Trường Đại học Mỏ - Địa chất', 'lovanlanc@gmail.com', '01655852563', 1, '2013-02-28', 1, 1, '2013-04-01', '18h30 - 21h00 thứ 2 và thứ 5 hàng tuần', '', '2013-02-24 12:23:12', 0, 0, '*'),
(22, 3, 'Trần Thị Hương Giang', '1992-03-17', 'Hồ Tùng Mậu Mai Dịch Cầu Giấy Hà Nội', 'Trường cao đẳng công nghiệp Hà Nội', 'Daisytran173@gmail.com', '01675202426', 2, '2013-03-04', 3, 1, '2013-03-10', 'Học vào buổi tối giữa tuần.', '', '2013-02-25 09:46:27', 0, 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `register_khoahoc`
--

CREATE TABLE `register_khoahoc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register_khoahoc`
--

INSERT INTO `register_khoahoc` (`id`, `name`, `order`, `status`, `content`) VALUES
(1, 'Học tiếng Anh bằng tiềm thức', 255, 1, ''),
(2, 'Awaken English Power', 255, 1, ''),
(3, 'Effortless English Speaking', 255, 1, ''),
(4, 'Tiếng Anh Thiếu Nhi', 255, 1, ''),
(5, 'Tiếng Anh Thiếu Niên', 255, 1, ''),
(6, 'Tiếng Anh Thương Mại', 255, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `register_nguontin`
--

CREATE TABLE `register_nguontin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register_nguontin`
--

INSERT INTO `register_nguontin` (`id`, `name`, `order`, `status`, `content`) VALUES
(1, 'Google', 255, 1, '&lt;div&gt;\r\n	Tìm kiếm từ google&lt;/div&gt;\r\n'),
(2, 'Facebook', 255, 1, ''),
(3, 'Internet', 255, 1, ''),
(4, 'Tờ rơi - Banner', 255, 1, ''),
(5, 'Báo chí', 255, 1, ''),
(6, 'Bạn bè', 255, 1, ''),
(7, 'Nguồn khác', 255, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `register_thoigian`
--

CREATE TABLE `register_thoigian` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register_thoigian`
--

INSERT INTO `register_thoigian` (`id`, `name`, `order`, `status`, `content`) VALUES
(1, 'Sáng', 255, 1, '&lt;div&gt;\r\n	Thời gian từ 8h - 12h&lt;/div&gt;\r\n'),
(2, 'Chiều', 255, 1, '&lt;div&gt;\r\n	Thời gian từ 13h - 17h&lt;/div&gt;\r\n'),
(3, 'Tối', 255, 1, '&lt;div&gt;\r\n	Thời gian từ 18h - 21h&lt;/div&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `register_trungtam`
--

CREATE TABLE `register_trungtam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register_trungtam`
--

INSERT INTO `register_trungtam` (`id`, `name`, `order`, `status`, `content`) VALUES
(1, 'Cơ sở 1: Số 27 Doãn Kế Thiện, Cầu Giấy, Hà Nội ', 255, 1, ''),
(2, 'Cơ sở 2: 76 Phố Nhổn, Từ Liêm, Hà Nội', 255, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `name`, `yahoo`, `skype`, `email`, `phone`, `tel`, `order`, `status`, `lang_code`) VALUES
(1, 'Quan Lee', 'tiger0350_vn', 'quan.le350', 'tiger0350@gmail.com', '0978849286', '', 2, 1, '*'),
(2, 'Bản Sắc Langmaster', 'tiger0350_vn', 'skype', 'tiger0350@mail.com', '0912345678', '09987654', 1, 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `thoigian`
--

CREATE TABLE `thoigian` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tugio` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `dengio` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `synopsis` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thoigian`
--

INSERT INTO `thoigian` (`id`, `name`, `tugio`, `dengio`, `synopsis`, `order`, `status`, `content`) VALUES
(1, 'Ăn Sáng', '0', '7', '8h - 12h', 255, 1, '&lt;div&gt;\r\n	Thời gian từ 8h - 12h&lt;/div&gt;\r\n'),
(2, 'Ăn Trưa', '12', '18', '14h - 17h', 255, 1, '&lt;div&gt;\r\n	Thời gian từ 14h - 17h&lt;/div&gt;\r\n'),
(3, 'Ăn Chiều', '6', '10', '18h - 21h30', 255, 1, '&lt;div&gt;\r\n	Thời gian từ 18h - 21h30&lt;/div&gt;\r\n'),
(4, 'Ăn Tối', '10', '24', '', 255, 1, ''),
(5, 'Ăn Đêm', '0', '24', '', 255, 1, ''),
(6, 'Cả ngày', '0', '24', '', 255, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `thongke_counter`
--

CREATE TABLE `thongke_counter` (
  `id` int(11) NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongke_counter`
--

INSERT INTO `thongke_counter` (`id`, `tm`, `ip`) VALUES
(1, 1344499547, '127.0.0.1'),
(2, 1344500486, '127.0.0.1'),
(3, 1344500642, '::1'),
(4, 1344501524, '127.0.0.1'),
(5, 1344502211, '::1'),
(6, 1344502584, '127.0.0.1'),
(7, 1344503657, '::1'),
(8, 1344503677, '127.0.0.1'),
(9, 1344505019, '::1'),
(10, 1344505058, '127.0.0.1'),
(11, 1344572456, '127.0.0.1'),
(12, 1344576524, '127.0.0.1'),
(13, 1344580131, '127.0.0.1'),
(14, 1344582398, '::1'),
(15, 1344741830, '127.0.0.1'),
(16, 1344827342, '::1'),
(17, 1344828243, '::1'),
(18, 1344829173, '::1'),
(19, 1344830085, '::1'),
(20, 1344832263, '::1'),
(21, 1344839081, '::1'),
(22, 1344842686, '::1'),
(23, 1344843629, '::1'),
(24, 1344844530, '::1'),
(25, 1344848925, '::1'),
(26, 1344850227, '::1'),
(27, 1344851483, '::1'),
(28, 1344852408, '::1'),
(29, 1344853374, '::1'),
(30, 1344864886, '::1'),
(31, 1344866419, '::1'),
(32, 1344867471, '::1'),
(33, 1344868384, '::1'),
(34, 1344869352, '::1'),
(35, 1344870253, '::1'),
(36, 1344872247, '::1'),
(37, 1344873147, '::1'),
(38, 1344874076, '::1'),
(39, 1344875056, '::1'),
(40, 1344876105, '::1'),
(41, 1344877409, '::1'),
(42, 1344878371, '::1'),
(43, 1344879450, '::1'),
(44, 1344880378, '::1'),
(45, 1344908952, '::1'),
(46, 1344909921, '::1'),
(47, 1344910919, '::1'),
(48, 1344914873, '::1'),
(49, 1344916073, '::1'),
(50, 1344916973, '::1'),
(51, 1344917937, '::1'),
(52, 1344918893, '::1'),
(53, 1344922544, '::1'),
(54, 1345004003, '::1'),
(55, 1345019472, '::1'),
(56, 1345021942, '::1'),
(57, 1345026431, '::1'),
(58, 1345082257, '::1'),
(59, 1345083526, '::1'),
(60, 1345084443, '::1'),
(61, 1345085348, '::1'),
(62, 1345086428, '::1'),
(63, 1345087340, '::1'),
(64, 1345089019, '::1'),
(65, 1345089970, '::1'),
(66, 1345091147, '::1'),
(67, 1345092432, '::1'),
(68, 1345099606, '::1'),
(69, 1345100798, '::1'),
(70, 1345102613, '::1'),
(71, 1345168751, '::1'),
(72, 1345170006, '::1'),
(73, 1345170927, '::1'),
(74, 1345173013, '::1'),
(75, 1345173933, '::1'),
(76, 1345175441, '::1'),
(77, 1345176341, '::1'),
(78, 1345177747, '::1'),
(79, 1345178755, '::1'),
(80, 1345189337, '::1'),
(81, 1345190331, '::1'),
(82, 1345192734, '::1'),
(83, 1345193812, '::1'),
(84, 1345194752, '::1'),
(85, 1345196187, '::1'),
(86, 1345197700, '::1'),
(87, 1345255153, '::1'),
(88, 1345256063, '::1'),
(89, 1345257170, '::1'),
(90, 1345258448, '::1'),
(91, 1345259351, '::1'),
(92, 1345260261, '::1'),
(93, 1345262070, '::1'),
(94, 1345386897, '::1'),
(95, 1345390934, '::1'),
(96, 1345393638, '::1'),
(97, 1345438043, '::1'),
(98, 1345444247, '::1'),
(99, 1345445177, '::1'),
(100, 1345446192, '::1'),
(101, 1345448912, '::1'),
(102, 1345450710, '::1'),
(103, 1345452565, '::1'),
(104, 1345453567, '::1'),
(105, 1345454548, '::1'),
(106, 1345455601, '::1'),
(107, 1345513201, '::1'),
(108, 1345514105, '::1'),
(109, 1345515011, '::1'),
(110, 1346034495, '::1'),
(111, 1346224451, '::1'),
(112, 1346233536, '::1'),
(113, 1349065857, '::1'),
(114, 1349073186, '::1'),
(115, 1349074423, '::1'),
(116, 1349075421, '::1'),
(117, 1349076346, '::1'),
(118, 1349077461, '::1'),
(119, 1349078396, '::1'),
(120, 1349079296, '::1'),
(121, 1349080217, '::1'),
(122, 1349081264, '::1'),
(123, 1349082222, '::1'),
(124, 1349083285, '::1'),
(125, 1349084188, '::1'),
(126, 1349086770, '117.5.176.27'),
(127, 1349088283, '117.5.176.27'),
(128, 1349153921, '117.5.176.27'),
(129, 1349157527, '117.5.176.27'),
(130, 1349161085, '222.254.155.89'),
(131, 1349161490, '117.5.176.27'),
(132, 1349162005, '222.254.155.89'),
(133, 1349163240, '222.254.155.89'),
(134, 1349163284, '117.5.176.27'),
(135, 1349164230, '222.254.155.89'),
(136, 1349165229, '117.5.176.27'),
(137, 1349165462, '222.254.155.89'),
(138, 1349166134, '117.5.176.27'),
(139, 1349166554, '222.254.155.89'),
(140, 1349167036, '117.5.176.27'),
(141, 1349167969, '117.5.176.27'),
(142, 1349169164, '117.5.176.27'),
(143, 1349199218, '222.254.155.89'),
(144, 1349200716, '222.254.150.250'),
(145, 1349229855, '117.5.176.27'),
(146, 1349230897, '117.5.176.27'),
(147, 1349231809, '117.5.176.27'),
(148, 1349232971, '117.5.176.27'),
(149, 1349237004, '117.5.176.27'),
(150, 1349243233, '117.5.176.27'),
(151, 1349260040, '117.5.176.27'),
(152, 1349284079, '222.254.150.250'),
(153, 1349319783, '174.129.228.67'),
(154, 1349320749, '174.129.228.67'),
(155, 1349329729, '174.129.228.67'),
(156, 1349371646, '222.254.150.250'),
(157, 1349372712, '222.254.150.250'),
(158, 1349373675, '222.254.150.250'),
(159, 1349374581, '222.254.150.250'),
(160, 1349377358, '222.254.150.250'),
(161, 1349378606, '222.254.150.250'),
(162, 1349382124, '222.254.150.250'),
(163, 1349392438, '174.129.228.67'),
(164, 1349393353, '174.129.228.67'),
(165, 1349394253, '174.129.228.67'),
(166, 1349395677, '174.129.228.67'),
(167, 1349400466, '174.129.228.67'),
(168, 1349410383, '174.129.228.67'),
(169, 1349411813, '174.129.228.67'),
(170, 1349458502, '222.254.154.82'),
(171, 1349471639, '174.129.228.67'),
(172, 1349486008, '174.129.228.67'),
(173, 1349500450, '174.129.228.67'),
(174, 1349501736, '174.129.228.67'),
(175, 1349503997, '174.129.228.67'),
(176, 1349523154, '117.5.185.150'),
(177, 1349524055, '117.5.185.150'),
(178, 1349528017, '117.5.185.150'),
(179, 1349531618, '117.5.185.150'),
(180, 1349535220, '117.5.185.150'),
(181, 1349538082, '222.254.154.82'),
(182, 1349538822, '117.5.185.150'),
(183, 1349542424, '117.5.185.150'),
(184, 1349546025, '117.5.185.150'),
(185, 1349587848, '174.129.228.67'),
(186, 1349589682, '174.129.228.67'),
(187, 1349659123, '174.129.228.67'),
(188, 1349660181, '117.5.252.222'),
(189, 1349661557, '117.5.252.222'),
(190, 1349665927, '117.5.252.222'),
(191, 1349668985, '117.5.252.222'),
(192, 1349669886, '117.5.252.222'),
(193, 1349670826, '117.5.252.222'),
(194, 1349675612, '117.5.252.222'),
(195, 1349743459, '174.129.228.67'),
(196, 1349855181, '::1'),
(197, 1349881005, '::1'),
(198, 1349920954, '::1'),
(199, 1350006351, '::1'),
(200, 1350100147, '::1'),
(201, 1350101737, '::1'),
(202, 1350357323, '::1'),
(203, 1350373200, '127.0.0.1'),
(204, 1350374202, '127.0.0.1'),
(205, 1350375189, '127.0.0.1'),
(206, 1350376520, '127.0.0.1'),
(207, 1350579532, '::1'),
(208, 1354261639, '::1'),
(209, 1354262565, '::1'),
(210, 1354263569, '::1'),
(211, 1354264502, '::1'),
(212, 1354265431, '::1'),
(213, 1354266407, '::1'),
(214, 1354267535, '::1'),
(215, 1354268455, '::1'),
(216, 1354269507, '::1'),
(217, 1354270568, '::1'),
(218, 1354280353, '::1'),
(219, 1354281486, '::1'),
(220, 1354287290, '::1'),
(221, 1356599376, '::1'),
(222, 1356600690, '::1'),
(223, 1356686003, '::1'),
(224, 1356689032, '::1'),
(225, 1356714124, '::1'),
(226, 1356744946, '::1'),
(227, 1356745853, '::1'),
(228, 1356746789, '::1'),
(229, 1356747827, '::1'),
(230, 1356748819, '::1'),
(231, 1356749937, '::1'),
(232, 1356752481, '::1'),
(233, 1356753646, '::1'),
(234, 1356754580, '::1'),
(235, 1356755557, '::1'),
(236, 1356756457, '::1'),
(237, 1356797958, '::1'),
(238, 1356798905, '::1'),
(239, 1356799847, '::1'),
(240, 1356801045, '::1'),
(241, 1356860711, '::1'),
(242, 1356861717, '::1'),
(243, 1356862759, '::1'),
(244, 1356863682, '::1'),
(245, 1356867613, '::1'),
(246, 1356876325, '::1'),
(247, 1356877888, '::1'),
(248, 1356878810, '::1'),
(249, 1356879733, '::1'),
(250, 1356880646, '::1'),
(251, 1356881740, '::1'),
(252, 1356882980, '::1'),
(253, 1356886457, '::1'),
(254, 1356887824, '::1'),
(255, 1356969487, '::1'),
(256, 1356973175, '::1'),
(257, 1356974075, '::1'),
(258, 1356974998, '::1'),
(259, 1356976015, '::1'),
(260, 1356977127, '::1'),
(261, 1357024088, '::1'),
(262, 1357025223, '::1'),
(263, 1357026262, '::1'),
(264, 1357027166, '::1'),
(265, 1357028422, '::1'),
(266, 1357029464, '::1'),
(267, 1357030396, '::1'),
(268, 1357031502, '::1'),
(269, 1357032410, '::1'),
(270, 1357033313, '::1'),
(271, 1357034358, '::1'),
(272, 1357038010, '::1'),
(273, 1357040132, '::1'),
(274, 1357042793, '::1'),
(275, 1357043790, '::1'),
(276, 1357044733, '::1'),
(277, 1357045686, '::1'),
(278, 1357046591, '::1'),
(279, 1357047669, '::1'),
(280, 1357048607, '::1'),
(281, 1357050052, '::1'),
(282, 1357051275, '::1'),
(283, 1357052191, '::1'),
(284, 1357053166, '::1'),
(285, 1357055345, '::1'),
(286, 1357056472, '::1'),
(287, 1357058387, '::1'),
(288, 1357091229, '::1'),
(289, 1357092938, '::1'),
(290, 1357094191, '::1'),
(291, 1357095783, '::1'),
(292, 1357099594, '::1'),
(293, 1357100546, '::1'),
(294, 1357101855, '::1'),
(295, 1357102784, '::1'),
(296, 1357107017, '::1'),
(297, 1357107921, '::1'),
(298, 1357109559, '::1'),
(299, 1357110555, '::1'),
(300, 1357112562, '::1'),
(301, 1357114100, '::1'),
(302, 1357115023, '::1'),
(303, 1357118999, '::1'),
(304, 1357120695, '::1'),
(305, 1357144124, '::1'),
(306, 1357176828, '::1'),
(307, 1357179981, '::1'),
(308, 1357183285, '::1'),
(309, 1357184708, '::1'),
(310, 1357186485, '::1'),
(311, 1357187446, '::1'),
(312, 1357192539, '::1'),
(313, 1357194144, '::1'),
(314, 1357195146, '::1'),
(315, 1357196141, '::1'),
(316, 1357197497, '::1'),
(317, 1357199526, '::1'),
(318, 1357200512, '::1'),
(319, 1357202071, '::1'),
(320, 1357203124, '::1'),
(321, 1357206179, '::1'),
(322, 1357220831, '::1'),
(323, 1357224458, '::1'),
(324, 1357226517, '::1'),
(325, 1357230198, '::1'),
(326, 1357231105, '::1'),
(327, 1357232074, '::1'),
(328, 1357233123, '::1'),
(329, 1357234025, '::1'),
(330, 1357263911, '::1'),
(331, 1357274616, '::1'),
(332, 1357291425, '::1'),
(333, 1357292342, '::1'),
(334, 1357293286, '::1'),
(335, 1357294308, '::1'),
(336, 1357307339, '183.81.52.231'),
(337, 1357307942, '58.187.109.18'),
(338, 1357308624, '183.81.52.231'),
(339, 1357309623, '58.187.109.18'),
(340, 1357309683, '183.81.52.231'),
(341, 1357310697, '58.187.109.18'),
(342, 1357311429, '183.81.52.231'),
(343, 1357311796, '58.187.109.18'),
(344, 1357313690, '183.81.52.231'),
(345, 1357363515, '58.187.36.203'),
(346, 1357364589, '58.187.36.203'),
(347, 1357368400, '58.187.109.18'),
(348, 1357369761, '58.187.109.18'),
(349, 1357370732, '58.187.109.18'),
(350, 1357372090, '58.187.109.18'),
(351, 1357373597, '58.187.109.18'),
(352, 1357375078, '58.187.109.18'),
(353, 1357376292, '58.187.109.18'),
(354, 1357377939, '58.187.109.18'),
(355, 1357380506, '58.187.109.18'),
(356, 1357387807, '58.187.109.18'),
(357, 1357400643, '58.187.109.18'),
(358, 1357433842, '58.187.109.18'),
(359, 1357435027, '58.187.109.18'),
(360, 1357451052, '183.81.52.231'),
(361, 1357454479, '183.81.52.231'),
(362, 1357455385, '183.81.52.231'),
(363, 1357456403, '183.81.52.231'),
(364, 1357457524, '183.81.52.231'),
(365, 1357465927, '204.236.235.245'),
(366, 1357484894, '183.81.52.231'),
(367, 1357521850, '204.236.235.245'),
(368, 1357541979, '113.23.20.69'),
(369, 1357542914, '113.23.20.69'),
(370, 1357571897, '183.81.52.231'),
(371, 1357574582, '183.81.52.231'),
(372, 1357613695, '27.69.3.104'),
(373, 1357620167, '58.187.109.18'),
(374, 1357621838, '58.187.109.18'),
(375, 1357624968, '113.23.11.82'),
(376, 1357625259, '58.187.109.18'),
(377, 1357626413, '58.187.109.18'),
(378, 1357635005, '58.187.109.18'),
(379, 1357636353, '204.236.235.245'),
(380, 1357645690, '183.81.52.231'),
(381, 1357648690, '58.187.109.18'),
(382, 1357649295, '183.81.52.231'),
(383, 1357650525, '183.81.52.231'),
(384, 1357656319, '183.81.52.231'),
(385, 1357656643, '58.187.109.18'),
(386, 1357696118, '204.236.235.245'),
(387, 1357709854, '58.187.109.18'),
(388, 1357711004, '113.23.11.82'),
(389, 1357713468, '58.187.109.18'),
(390, 1357719915, '58.187.109.18'),
(391, 1357723694, '58.187.109.18'),
(392, 1357725835, '58.187.109.18'),
(393, 1357727298, '58.187.109.18'),
(394, 1357730902, '58.187.109.18'),
(395, 1357787354, '58.187.109.18'),
(396, 1357789376, '113.23.11.82'),
(397, 1357789400, '123.27.65.96'),
(398, 1357791030, '58.187.109.18'),
(399, 1357809609, '58.187.109.18'),
(400, 1357810547, '58.187.109.18'),
(401, 1357811500, '58.187.109.18'),
(402, 1357812406, '58.187.109.18'),
(403, 1357813450, '58.187.109.18'),
(404, 1357814558, '58.187.109.18'),
(405, 1357818190, '58.187.109.18'),
(406, 1357821608, '58.187.109.18'),
(407, 1357829917, '58.187.109.18'),
(408, 1357830034, '183.81.52.231'),
(409, 1357831818, '58.187.109.18'),
(410, 1357832946, '58.187.109.18'),
(411, 1357858561, '204.236.235.245'),
(412, 1357865235, '58.187.109.18'),
(413, 1357866485, '58.187.109.18'),
(414, 1357870105, '58.187.61.196'),
(415, 1357873349, '58.187.109.18'),
(416, 1357874595, '58.187.109.18'),
(417, 1357875412, '113.23.68.37'),
(418, 1357875775, '58.187.109.18'),
(419, 1357875777, '115.82.187.252'),
(420, 1357877395, '58.187.109.18'),
(421, 1357895917, '113.23.11.82'),
(422, 1357897269, '113.23.11.82'),
(423, 1357898296, '58.187.109.18'),
(424, 1357899580, '58.187.109.18'),
(425, 1357901736, '58.187.61.196'),
(426, 1357902942, '58.187.61.196'),
(427, 1357903877, '58.187.61.196'),
(428, 1357906681, '58.187.61.196'),
(429, 1357907747, '58.187.61.196'),
(430, 1357908764, '58.187.61.196'),
(431, 1357910161, '58.187.61.196'),
(432, 1357910211, '58.187.109.18'),
(433, 1357911341, '58.187.109.18'),
(434, 1357957019, '58.187.109.18'),
(435, 1357958953, '58.187.109.18'),
(436, 1357960392, '58.187.109.18'),
(437, 1357961504, '58.187.109.18'),
(438, 1357962465, '58.187.109.18'),
(439, 1357964989, '58.187.109.18'),
(440, 1357965949, '58.187.109.18'),
(441, 1357966866, '58.187.109.18'),
(442, 1357967982, '58.187.109.18'),
(443, 1357970609, '58.187.61.196'),
(444, 1357974447, '58.187.109.18'),
(445, 1357988910, '58.187.109.18'),
(446, 1357990836, '58.187.109.18'),
(447, 1358006967, '58.187.109.18'),
(448, 1358060936, '113.23.81.123'),
(449, 1358066032, '113.23.81.123'),
(450, 1358069884, '113.23.81.123'),
(451, 1358096402, '204.236.235.245'),
(452, 1358152964, '58.187.61.196'),
(453, 1358154163, '58.187.61.196'),
(454, 1358155476, '58.187.61.196'),
(455, 1358156400, '58.187.61.196'),
(456, 1358156721, '117.6.95.224'),
(457, 1358157454, '113.23.81.123'),
(458, 1358159488, '113.23.81.123'),
(459, 1358161514, '204.236.235.245'),
(460, 1358173145, '58.187.61.196'),
(461, 1358220361, '113.23.81.123'),
(462, 1358221582, '113.23.81.123'),
(463, 1358243858, '204.236.235.245'),
(464, 1358244299, '113.23.81.123'),
(465, 1358265150, '113.23.81.123'),
(466, 1358311724, '204.236.235.245'),
(467, 1358312759, '204.236.235.245'),
(468, 1358416820, '58.187.40.138'),
(469, 1358480593, '113.23.22.70'),
(470, 1358480741, '204.236.235.245'),
(471, 1358484204, '113.23.22.70'),
(472, 1358567450, '58.187.40.138'),
(473, 1358667147, '58.187.40.138'),
(474, 1358673501, '58.187.40.138'),
(475, 1358736071, '113.23.8.45'),
(476, 1358739700, '113.23.8.45'),
(477, 1358749978, '113.23.8.45'),
(478, 1358750011, '123.16.235.91'),
(479, 1358753647, '123.16.235.91'),
(480, 1358754007, '113.23.8.45'),
(481, 1358757616, '113.23.8.45'),
(482, 1358762331, '58.187.41.110'),
(483, 1358774285, '58.187.122.160'),
(484, 1358836450, '113.23.11.93'),
(485, 1358839416, '113.23.11.93'),
(486, 1358839960, '58.187.40.138'),
(487, 1358840380, '113.23.11.93'),
(488, 1358841684, '58.187.40.138'),
(489, 1358842453, '113.23.11.93'),
(490, 1358842618, '58.187.40.138'),
(491, 1358843390, '113.23.11.93'),
(492, 1358843682, '58.187.40.138'),
(493, 1358844365, '113.23.11.93'),
(494, 1358844610, '58.187.40.138'),
(495, 1358847970, '113.23.11.93'),
(496, 1358905703, '113.23.11.93'),
(497, 1358932060, '58.187.40.138'),
(498, 1358950604, '58.187.40.138'),
(499, 1358995934, '113.23.20.79'),
(500, 1358996014, '173.252.100.112'),
(501, 1358996022, '65.52.0.16'),
(502, 1358996030, '69.171.247.119'),
(503, 1358996496, '101.99.9.155'),
(504, 1358996497, '69.171.229.117'),
(505, 1359098087, '::1'),
(506, 1359337346, '::1'),
(507, 1359338410, '::1'),
(508, 1359339354, '::1'),
(509, 1359340360, '::1'),
(510, 1359341316, '::1'),
(511, 1359348996, '::1'),
(512, 1359362775, '::1'),
(513, 1359364568, '::1'),
(514, 1359365508, '::1'),
(515, 1359384603, '::1'),
(516, 1359385520, '::1'),
(517, 1361808298, '127.0.0.1'),
(518, 1362021605, '127.0.0.1'),
(519, 1362071564, '183.81.54.97'),
(520, 1362071847, '58.187.113.108'),
(521, 1362099874, '58.187.113.108'),
(522, 1362100884, '113.23.8.182'),
(523, 1362104492, '113.23.8.182'),
(524, 1362154933, '27.66.159.148'),
(525, 1362158558, '27.66.159.148'),
(526, 1362158849, '178.154.243.93'),
(527, 1362162170, '27.66.159.148'),
(528, 1362164497, '178.154.243.93'),
(529, 1362170647, '178.154.243.93'),
(530, 1362176224, '178.154.243.93'),
(531, 1362178605, '178.154.243.93'),
(532, 1362187600, '58.187.75.103'),
(533, 1362198845, '27.66.143.124'),
(534, 1362202060, '206.253.226.23'),
(535, 1362212029, '58.187.75.103'),
(536, 1362244443, '183.81.54.97'),
(537, 1362287376, '113.185.7.51'),
(538, 1362297304, '113.185.7.113'),
(539, 1362318012, '178.154.243.93'),
(540, 1362349004, '66.249.73.98'),
(541, 1362360917, '58.187.75.103'),
(542, 1362361921, '58.187.75.103'),
(543, 1362361944, '113.23.8.36'),
(544, 1362362891, '113.23.8.36'),
(545, 1362363478, '58.187.75.103'),
(546, 1362391298, '58.187.75.103'),
(547, 1362470524, '183.81.21.37'),
(548, 1362470524, '183.81.21.37'),
(549, 1362474903, '183.81.22.93'),
(550, 1362497217, '178.154.243.93'),
(551, 1362535994, '66.249.73.98'),
(552, 1362553228, '113.161.76.112'),
(553, 1362557881, '113.23.10.230'),
(554, 1362654114, '14.161.12.121'),
(555, 1362884255, '113.23.124.37'),
(556, 1362915708, '178.154.243.93'),
(557, 1362920372, '178.154.243.93'),
(558, 1362924863, '178.154.243.93'),
(559, 1362934293, '178.154.243.93'),
(560, 1362941838, '178.154.243.93'),
(561, 1362970064, '178.154.243.93'),
(562, 1362977868, '178.154.243.93'),
(563, 1362985428, '178.154.243.93'),
(564, 1363007370, '113.23.124.37'),
(565, 1363078044, '66.249.73.175'),
(566, 1363230791, '42.116.141.70'),
(567, 1363245787, '50.22.199.170'),
(568, 1363387522, '178.154.243.93'),
(569, 1363413005, '113.23.124.37'),
(570, 1363414065, '113.23.124.37'),
(571, 1363449734, '171.225.163.173'),
(572, 1363463870, '178.154.243.93'),
(573, 1363490007, '66.249.74.26'),
(574, 1363491199, '66.249.74.26'),
(575, 1363492219, '66.249.74.26'),
(576, 1363494763, '66.249.74.26'),
(577, 1363496042, '66.249.74.26'),
(578, 1363520790, '113.23.124.37'),
(579, 1363521699, '113.23.124.37'),
(580, 1363523597, '113.23.124.37'),
(581, 1363525001, '113.23.124.37'),
(582, 1363526471, '113.23.124.37'),
(583, 1363527997, '113.23.124.37'),
(584, 1363528135, '183.81.64.159'),
(585, 1363528971, '113.23.124.37'),
(586, 1363529904, '113.23.124.37'),
(587, 1363534284, '113.23.124.37'),
(588, 1363535443, '113.23.124.37'),
(589, 1363568110, '1.54.15.40'),
(590, 1363571609, '113.161.69.102'),
(591, 1363575042, '113.161.69.102'),
(592, 1363577204, '113.23.8.81'),
(593, 1363577233, '113.190.240.240'),
(594, 1363578671, '113.161.69.102'),
(595, 1363582278, '113.161.69.102'),
(596, 1363584841, '115.74.210.243'),
(597, 1363585368, '66.249.74.26'),
(598, 1363586681, '113.161.69.102'),
(599, 1363587088, '66.249.74.26'),
(600, 1363588542, '115.74.210.243'),
(601, 1363590297, '113.161.69.102'),
(602, 1363592956, '66.249.74.26'),
(603, 1363593901, '113.161.69.102'),
(604, 1363595338, '66.249.74.26'),
(605, 1363597084, '66.249.74.26'),
(606, 1363610104, '178.154.243.93'),
(607, 1363622884, '1.54.15.40'),
(608, 1363646811, '1.54.15.40'),
(609, 1363649931, '65.55.213.67'),
(610, 1363650443, '1.54.15.40'),
(611, 1363653848, '1.54.15.40'),
(612, 1363668937, '113.161.69.102'),
(613, 1363672542, '113.161.69.102'),
(614, 1363676148, '113.161.69.102'),
(615, 1363679753, '113.161.69.102'),
(616, 1363683359, '113.161.69.102'),
(617, 1363697153, '123.24.150.132'),
(618, 1363725162, '66.249.74.26'),
(619, 1363728113, '66.249.74.26'),
(620, 1363731519, '66.249.74.26'),
(621, 1363735595, '178.154.243.93'),
(622, 1363741959, '66.249.74.26'),
(623, 1363780157, '123.24.161.191'),
(624, 1363790511, '27.2.119.21'),
(625, 1363795452, '183.81.64.159'),
(626, 1363827665, '1.54.15.40'),
(627, 1363835496, '113.161.69.102'),
(628, 1363840875, '113.161.69.102'),
(629, 1363854254, '113.161.69.102'),
(630, 1363855539, '178.154.243.93'),
(631, 1363858038, '178.154.243.93'),
(632, 1363860399, '178.154.243.93'),
(633, 1363862888, '178.154.243.93'),
(634, 1363867714, '178.154.243.93'),
(635, 1363870268, '178.154.243.93'),
(636, 1363872787, '178.154.243.93'),
(637, 1363875109, '178.154.243.93'),
(638, 1363877395, '178.154.243.93'),
(639, 1363879671, '178.154.243.93'),
(640, 1363881746, '178.154.243.93'),
(641, 1363883903, '178.154.243.93'),
(642, 1363886676, '178.154.243.93'),
(643, 1363888997, '178.154.243.93'),
(644, 1363951819, '113.165.144.85'),
(645, 1364045050, '113.185.7.1'),
(646, 1364056418, '178.154.243.93'),
(647, 1364064609, '113.23.124.37'),
(648, 1364089242, '178.154.243.93'),
(649, 1364099730, '178.154.243.93'),
(650, 1364194247, '113.162.180.208'),
(651, 1364200268, '118.69.122.34'),
(652, 1364201187, '118.69.122.34'),
(653, 1364294273, '178.154.243.93'),
(654, 1364304521, '178.154.243.93'),
(655, 1364308413, '178.154.243.93'),
(656, 1364341061, '178.154.243.93'),
(657, 1364348078, '178.154.243.93'),
(658, 1364355004, '178.154.243.93'),
(659, 1364360063, '178.154.243.93'),
(660, 1364389089, '209.85.238.26'),
(661, 1364390358, '173.199.119.27'),
(662, 1364407111, '66.249.74.26'),
(663, 1364408070, '66.249.74.26'),
(664, 1364410827, '66.249.74.26'),
(665, 1364411860, '66.249.74.26'),
(666, 1364414778, '188.143.232.211'),
(667, 1364414840, '66.249.74.26'),
(668, 1364418169, '66.249.74.26'),
(669, 1364419268, '66.249.74.26'),
(670, 1364423132, '66.249.74.26'),
(671, 1364425235, '66.249.74.26'),
(672, 1364428924, '66.249.74.26'),
(673, 1364430327, '66.249.74.26'),
(674, 1364438096, '66.249.74.26'),
(675, 1364445302, '66.249.74.26'),
(676, 1364447450, '66.249.74.26'),
(677, 1364449457, '66.249.74.26'),
(678, 1364453279, '66.249.74.26'),
(679, 1364454766, '66.249.74.26'),
(680, 1364458444, '66.249.74.26'),
(681, 1364459363, '66.249.74.26'),
(682, 1364460369, '66.249.74.26'),
(683, 1364462665, '66.249.74.26'),
(684, 1364465677, '66.249.74.26'),
(685, 1364466668, '66.249.74.26'),
(686, 1364469353, '66.249.74.26'),
(687, 1364470336, '66.249.74.26'),
(688, 1364471821, '66.249.74.26'),
(689, 1364472983, '66.249.74.26'),
(690, 1364477366, '66.249.74.26'),
(691, 1364478327, '66.249.74.26'),
(692, 1364479794, '66.249.74.26'),
(693, 1364481063, '66.249.74.26'),
(694, 1364482110, '66.249.74.26'),
(695, 1364483379, '66.249.74.26'),
(696, 1364484327, '66.249.74.26'),
(697, 1364493586, '66.249.74.26'),
(698, 1364497306, '66.249.74.26'),
(699, 1364520092, '66.249.74.26'),
(700, 1364520389, '113.23.10.168'),
(701, 1364522875, '66.249.74.26'),
(702, 1364524022, '113.23.10.168'),
(703, 1364527634, '113.23.10.168'),
(704, 1364536564, '66.249.74.26'),
(705, 1364536968, '113.23.10.168'),
(706, 1364539482, '66.249.74.26'),
(707, 1364542235, '113.23.10.168'),
(708, 1364543406, '113.23.10.168'),
(709, 1364545847, '113.23.10.168'),
(710, 1364576468, '66.249.74.26'),
(711, 1364583840, '66.249.74.26'),
(712, 1364592210, '66.249.74.26'),
(713, 1364601291, '66.249.74.26'),
(714, 1364603835, '66.249.74.26'),
(715, 1364605933, '66.249.74.26'),
(716, 1364607619, '66.249.74.26'),
(717, 1364609278, '66.249.74.26'),
(718, 1364614463, '113.160.102.208'),
(719, 1364628788, '66.249.74.26'),
(720, 1364629795, '66.249.74.26'),
(721, 1364633304, '66.249.74.26'),
(722, 1364643740, '66.249.74.26'),
(723, 1364650449, '66.249.74.26'),
(724, 1364662380, '66.249.74.26'),
(725, 1364664164, '66.249.74.26'),
(726, 1364665731, '66.249.74.26'),
(727, 1364667306, '66.249.74.26'),
(728, 1364669214, '66.249.74.26'),
(729, 1364675313, '66.249.74.26'),
(730, 1364676392, '66.249.74.26'),
(731, 1364678562, '66.249.74.26'),
(732, 1364681345, '66.249.74.26'),
(733, 1364683337, '66.249.74.26'),
(734, 1364685659, '66.249.74.26'),
(735, 1364692224, '66.249.74.26'),
(736, 1364697373, '66.249.74.26'),
(737, 1364698758, '66.249.74.26'),
(738, 1364703253, '66.249.74.26'),
(739, 1364708329, '66.249.74.26'),
(740, 1364713363, '66.249.74.26'),
(741, 1364727109, '66.249.74.26'),
(742, 1364732782, '66.249.74.26'),
(743, 1364748984, '66.249.74.26'),
(744, 1364750298, '66.249.74.26'),
(745, 1364751686, '66.249.74.26'),
(746, 1364753419, '66.249.74.26'),
(747, 1364759891, '66.249.74.26'),
(748, 1364760841, '66.249.74.26'),
(749, 1364761749, '66.249.74.26'),
(750, 1364773799, '66.249.74.26'),
(751, 1364774855, '66.249.74.26'),
(752, 1364776739, '66.249.74.26'),
(753, 1364778965, '66.249.74.26'),
(754, 1364786228, '66.249.74.26'),
(755, 1364788803, '66.249.74.26'),
(756, 1364789760, '66.249.74.26'),
(757, 1364790702, '66.249.74.26'),
(758, 1364791733, '66.249.74.26'),
(759, 1364793035, '66.249.74.26'),
(760, 1364794002, '66.249.74.26'),
(761, 1364795183, '178.154.243.93'),
(762, 1364795314, '66.249.74.26'),
(763, 1364796916, '66.249.74.26'),
(764, 1364798178, '66.249.74.26'),
(765, 1364799597, '66.249.74.26'),
(766, 1364800498, '66.249.74.26'),
(767, 1364802519, '66.249.74.26'),
(768, 1364803473, '66.249.74.26'),
(769, 1364805324, '66.249.74.26'),
(770, 1364809371, '66.249.74.26'),
(771, 1364816913, '66.249.74.26'),
(772, 1364818090, '66.249.74.26'),
(773, 1364836895, '66.249.74.26'),
(774, 1364837835, '66.249.74.26'),
(775, 1364849264, '178.154.243.93'),
(776, 1364861875, '66.249.74.26'),
(777, 1364866382, '113.23.9.65'),
(778, 1364867106, '66.249.74.26'),
(779, 1364868833, '113.23.9.65'),
(780, 1364874734, '66.249.74.26'),
(781, 1364875726, '66.249.74.26'),
(782, 1364880290, '66.249.74.26'),
(783, 1364884189, '178.154.243.93'),
(784, 1364890096, '66.249.74.26'),
(785, 1364894048, '66.249.74.26'),
(786, 1364895652, '113.23.9.65'),
(787, 1364896415, '118.68.2.142'),
(788, 1364901166, '66.249.74.26'),
(789, 1364902145, '66.249.74.26'),
(790, 1364903106, '66.249.74.26'),
(791, 1364904024, '66.249.74.26'),
(792, 1364915226, '178.154.243.93'),
(793, 1364923449, '66.249.74.26'),
(794, 1364924572, '66.249.74.26'),
(795, 1364927472, '178.154.243.93'),
(796, 1364931495, '66.249.74.26'),
(797, 1364933246, '66.249.74.26'),
(798, 1364934170, '66.249.74.26'),
(799, 1364949325, '178.154.243.93'),
(800, 1364950749, '178.154.243.93'),
(801, 1364954066, '66.249.74.26'),
(802, 1364961303, '66.249.74.26'),
(803, 1364961745, '123.24.190.237'),
(804, 1365005054, '178.154.243.93'),
(805, 1365044882, '66.249.80.29'),
(806, 1365045190, '66.249.74.26'),
(807, 1365046823, '66.249.74.26'),
(808, 1365049287, '66.249.74.26'),
(809, 1365051190, '66.249.74.26'),
(810, 1365052407, '66.249.74.26'),
(811, 1365053415, '66.249.74.26'),
(812, 1365056014, '66.249.74.26'),
(813, 1365057645, '66.249.74.26'),
(814, 1365058946, '66.249.74.26'),
(815, 1365068012, '66.249.74.26'),
(816, 1365074649, '66.249.74.26'),
(817, 1365076114, '1.53.255.155'),
(818, 1365077163, '66.249.74.26'),
(819, 1365081199, '66.249.74.26'),
(820, 1365082187, '66.249.74.26'),
(821, 1365086785, '123.24.197.61'),
(822, 1365087692, '66.249.74.26'),
(823, 1365090343, '66.249.74.26'),
(824, 1365091814, '66.249.74.26'),
(825, 1365093143, '66.249.74.26'),
(826, 1365095749, '66.249.74.26'),
(827, 1365100908, '66.249.74.26'),
(828, 1365103861, '66.249.74.26'),
(829, 1365106215, '66.249.74.26'),
(830, 1365108213, '66.249.74.26'),
(831, 1365110790, '66.249.74.26'),
(832, 1365112616, '66.249.74.26'),
(833, 1365114843, '66.249.74.26'),
(834, 1365116485, '66.249.74.26'),
(835, 1365119267, '66.249.74.26'),
(836, 1365120655, '66.249.74.26'),
(837, 1365124413, '66.249.74.26'),
(838, 1365133066, '66.249.74.26'),
(839, 1365139003, '66.249.74.26'),
(840, 1365143829, '183.80.108.114'),
(841, 1365153240, '113.160.1.246'),
(842, 1365154719, '113.23.23.162'),
(843, 1365157269, '66.249.74.26'),
(844, 1365157343, '178.154.243.93'),
(845, 1365161627, '66.249.74.26'),
(846, 1365163858, '66.249.74.26'),
(847, 1365165894, '66.249.74.26'),
(848, 1365168855, '66.249.74.26'),
(849, 1365169813, '66.249.74.26'),
(850, 1365171936, '66.249.74.26'),
(851, 1365176849, '66.249.74.26'),
(852, 1365178090, '66.249.74.26'),
(853, 1365184796, '66.249.74.26'),
(854, 1365186653, '66.249.74.26'),
(855, 1365190461, '66.249.74.26'),
(856, 1365193715, '66.249.74.26'),
(857, 1365196292, '178.154.243.93'),
(858, 1365210404, '66.249.74.26'),
(859, 1365215531, '65.55.52.113'),
(860, 1365223736, '66.249.74.26'),
(861, 1365229344, '178.154.243.93'),
(862, 1365245323, '66.249.74.26'),
(863, 1365248999, '66.249.74.26'),
(864, 1365252193, '209.85.238.26'),
(865, 1365258744, '66.249.74.26'),
(866, 1365266040, '66.249.74.26'),
(867, 1365281913, '66.249.73.175'),
(868, 1365285565, '66.249.73.175'),
(869, 1365289886, '66.249.73.175'),
(870, 1365292557, '66.249.73.175'),
(871, 1365297486, '66.249.73.175'),
(872, 1365301574, '66.249.73.175'),
(873, 1365308304, '66.249.73.175'),
(874, 1365311803, '66.249.73.175'),
(875, 1365315072, '66.249.73.175'),
(876, 1365328384, '66.249.73.175'),
(877, 1365333718, '66.249.73.175'),
(878, 1365336099, '66.249.73.175'),
(879, 1365341361, '66.249.73.175'),
(880, 1365352724, '66.249.73.175'),
(881, 1365371562, '66.249.73.175'),
(882, 1365386431, '113.190.156.145'),
(883, 1365393839, '66.249.73.175'),
(884, 1365397099, '178.154.243.93'),
(885, 1365411133, '113.23.8.136'),
(886, 1384172359, '127.0.0.1'),
(887, 1385469736, '127.0.0.1'),
(888, 1385471238, '127.0.0.1'),
(889, 1385474841, '127.0.0.1'),
(890, 1385864527, '127.0.0.1'),
(891, 1386602603, '127.0.0.1'),
(892, 1387468753, '127.0.0.1'),
(893, 1387607673, '127.0.0.1'),
(894, 1389023683, '127.0.0.1'),
(895, 1389454917, '127.0.0.1'),
(896, 1390133952, '127.0.0.1'),
(897, 1390975401, '127.0.0.1'),
(898, 1394551610, '127.0.0.1'),
(899, 1394555212, '127.0.0.1'),
(900, 1395206967, '127.0.0.1'),
(901, 1395208297, '127.0.0.1'),
(902, 1395215609, '127.0.0.1'),
(903, 1395216584, '127.0.0.1'),
(904, 1395217487, '127.0.0.1'),
(905, 1395283886, '127.0.0.1'),
(906, 1395322253, '127.0.0.1'),
(907, 1395323234, '127.0.0.1'),
(908, 1395324299, '127.0.0.1'),
(909, 1395325227, '127.0.0.1'),
(910, 1395326165, '127.0.0.1'),
(911, 1395327221, '127.0.0.1'),
(912, 1395328528, '127.0.0.1'),
(913, 1395329492, '127.0.0.1'),
(914, 1395330398, '127.0.0.1'),
(915, 1395331316, '127.0.0.1'),
(916, 1395332260, '127.0.0.1'),
(917, 1395333237, '127.0.0.1'),
(918, 1395334137, '127.0.0.1'),
(919, 1395335091, '127.0.0.1'),
(920, 1395336206, '127.0.0.1'),
(921, 1395337123, '127.0.0.1'),
(922, 1395338181, '127.0.0.1'),
(923, 1395395637, '127.0.0.1'),
(924, 1395397072, '127.0.0.1'),
(925, 1395398726, '127.0.0.1'),
(926, 1395411907, '127.0.0.1'),
(927, 1395412831, '127.0.0.1'),
(928, 1395413740, '127.0.0.1'),
(929, 1395414678, '127.0.0.1'),
(930, 1395415663, '127.0.0.1'),
(931, 1395416565, '127.0.0.1'),
(932, 1395418862, '127.0.0.1'),
(933, 1395454447, '127.0.0.1'),
(934, 1395458052, '127.0.0.1'),
(935, 1395462718, '127.0.0.1'),
(936, 1395463651, '127.0.0.1'),
(937, 1395464661, '127.0.0.1'),
(938, 1395465599, '127.0.0.1'),
(939, 1395466512, '127.0.0.1'),
(940, 1395475803, '127.0.0.1'),
(941, 1395476717, '127.0.0.1'),
(942, 1395477635, '127.0.0.1'),
(943, 1395478755, '127.0.0.1'),
(944, 1395479681, '127.0.0.1'),
(945, 1395498501, '127.0.0.1'),
(946, 1395499470, '127.0.0.1'),
(947, 1395500441, '127.0.0.1'),
(948, 1395501396, '127.0.0.1'),
(949, 1395502641, '127.0.0.1'),
(950, 1395505209, '127.0.0.1'),
(951, 1395506148, '127.0.0.1'),
(952, 1395507049, '127.0.0.1'),
(953, 1395508003, '127.0.0.1'),
(954, 1395508910, '127.0.0.1'),
(955, 1395509849, '127.0.0.1'),
(956, 1395561709, '127.0.0.1'),
(957, 1395585574, '127.0.0.1'),
(958, 1395586978, '127.0.0.1'),
(959, 1395670117, '127.0.0.1'),
(960, 1395671108, '127.0.0.1'),
(961, 1395672010, '127.0.0.1'),
(962, 1395672928, '127.0.0.1'),
(963, 1395673869, '127.0.0.1'),
(964, 1395674866, '127.0.0.1'),
(965, 1395675779, '127.0.0.1'),
(966, 1395676680, '127.0.0.1'),
(967, 1395677647, '127.0.0.1'),
(968, 1395734315, '127.0.0.1'),
(969, 1395816738, '127.0.0.1'),
(970, 1395817703, '127.0.0.1'),
(971, 1395818976, '127.0.0.1'),
(972, 1395820009, '127.0.0.1'),
(973, 1395821082, '127.0.0.1'),
(974, 1395822350, '127.0.0.1'),
(975, 1395852443, '127.0.0.1'),
(976, 1395858182, '127.0.0.1'),
(977, 1396631753, '127.0.0.1'),
(978, 1396634475, '127.0.0.1'),
(979, 1396635381, '127.0.0.1'),
(980, 1396667882, '127.0.0.1'),
(981, 1396669612, '127.0.0.1'),
(982, 1396671436, '127.0.0.1'),
(983, 1396803773, '127.0.0.1'),
(984, 1396805668, '127.0.0.1'),
(985, 1396807460, '127.0.0.1'),
(986, 1396809741, '127.0.0.1'),
(987, 1396810678, '127.0.0.1'),
(988, 1396843071, '127.0.0.1'),
(989, 1397487420, '127.0.0.1'),
(990, 1397488329, '127.0.0.1'),
(991, 1397489283, '127.0.0.1'),
(992, 1397490216, '127.0.0.1'),
(993, 1397491706, '127.0.0.1'),
(994, 1397661011, '127.0.0.1'),
(995, 1398181345, '127.0.0.1'),
(996, 1398184188, '127.0.0.1'),
(997, 1398271407, '127.0.0.1'),
(998, 1398446744, '127.0.0.1'),
(999, 1398585749, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `thongke_online`
--

CREATE TABLE `thongke_online` (
  `session` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongke_online`
--

INSERT INTO `thongke_online` (`session`, `time`) VALUES
('aeea58c02a61ad8eee3ccc97a3285fca', 1398585755);

-- --------------------------------------------------------

--
-- Table structure for table `tuyendung`
--

CREATE TABLE `tuyendung` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `quyenloi` text COLLATE utf8_unicode_ci,
  `lienhe` text COLLATE utf8_unicode_ci,
  `trinhdo` tinytext COLLATE utf8_unicode_ci,
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noilamviec` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mucluong` mediumtext COLLATE utf8_unicode_ci,
  `hannop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuyendung`
--

INSERT INTO `tuyendung` (`id`, `name`, `alias`, `mota`, `quyenloi`, `lienhe`, `trinhdo`, `gioitinh`, `noilamviec`, `mucluong`, `hannop`, `lang_code`, `order`, `status`) VALUES
(13, 'Nhân viên kinh doanh', 'nhan-vien-kinh-doanh', '&lt;div&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; color: rgb(85, 85, 85);\"&gt;Đại học.&lt;/span&gt;&lt;br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 15px;\" /&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; color: rgb(85, 85, 85);\"&gt;- Chuyên ngành: Tài chính ngân hàng; Ngoại thương; Bảo hiểm,Kinh tế hoặc lĩnh vực liên quan&lt;/span&gt;&lt;br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 15px;\" /&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; color: rgb(85, 85, 85);\"&gt;- Kinh nghiệm: Tối thiểu 02 năm kinh nghiệm trong lĩnh vực Ngân hàng; Ưu tiên người có kinh nghiệm ở vị trí tương đương&lt;/span&gt;&lt;br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 15px;\" /&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; color: rgb(85, 85, 85);\"&gt;- Có kinh nghiệm phục vụ, tư vấn&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; color: rgb(85, 85, 85);\"&gt;&amp;lt;a&amp;gt;sdfsdf&amp;lt;/a&amp;gt;&lt;/span&gt;&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; font-size: 14px; font-family: arial, helvetica, sans-serif; color: rgb(85, 85, 85);\"&gt;- Chuyên ngành: Tài chính ngân hàng; Ngoại thương; Bảo hiểm,Kinh tế hoặc lĩnh vực liên quan&lt;/span&gt;&lt;br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 15px;\" /&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; font-size: 14px; font-family: arial, helvetica, sans-serif; color: rgb(85, 85, 85);\"&gt;- Kinh nghiệm: Tối thiểu 02 năm kinh nghiệm trong lĩnh vực Ngân hàng; Ưu tiên người có kinh nghiệm ở vị trí tương đương&lt;/span&gt;&lt;br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 15px;\" /&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; font-size: 14px; font-family: arial, helvetica, sans-serif; color: rgb(85, 85, 85);\"&gt;- Có kinh nghiệm phục vụ, tư vấn&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; font-size: 14px; font-family: arial, helvetica, sans-serif; color: rgb(85, 85, 85);\"&gt;- Kinh nghiệm: Tối thiểu 02 năm kinh nghiệm trong lĩnh vực Ngân hàng; Ưu tiên người có kinh nghiệm ở vị trí tương đương&lt;/span&gt;&lt;br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 15px;\" /&gt;\r\n	&lt;span style=\"box-sizing: border-box; cursor: default; font-size: 14px; font-family: arial, helvetica, sans-serif; color: rgb(85, 85, 85);\"&gt;- Có kinh nghiệm phục vụ, tư vấn&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n', 'Đại học', 'Nữ', 'Hồ Chí Minh', '5 triệu', '30/08/2017', 'vi', 1, 0),
(19, 'vczvc', 'vczvc', '&lt;div&gt;\r\n	czxvczxvczzxvc&lt;/div&gt;\r\n', '', '', 'czv', 'czvc', 'zcx', 'zvzcxvz', '', 'vi', 255, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tuyendung_en`
--

CREATE TABLE `tuyendung_en` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `quyenloi` text COLLATE utf8_unicode_ci,
  `lienhe` text COLLATE utf8_unicode_ci,
  `trinhdo` tinytext COLLATE utf8_unicode_ci,
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noilamviec` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mucluong` mediumtext COLLATE utf8_unicode_ci,
  `hannop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuyendung_en`
--

INSERT INTO `tuyendung_en` (`id`, `name`, `alias`, `mota`, `quyenloi`, `lienhe`, `trinhdo`, `gioitinh`, `noilamviec`, `mucluong`, `hannop`, `lang_code`, `order`, `status`) VALUES
(19, '', 'vczvc', '', '', '', '', '', '', '', NULL, 'vi', NULL, NULL),
(13, ' Product Quality', 'nhan-vien-kinh-doanh', '&lt;div&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;All products retailed, wholesaled or distributed by Chi Viet Baby Product Co. Ltd are manufactured by original manufacturers. We never accept counterfeit, fake&lt;/span&gt;&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;All products retailed, wholesaled or distributed by Chi Viet Baby Product Co. Ltd are manufactured by original manufacturers. We never accept counterfeit, fake&lt;/span&gt;&lt;/div&gt;\r\n', '&lt;div&gt;\r\n	&lt;span style=\"color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; text-align: justify;\"&gt;All products retailed, wholesaled or distributed by Chi Viet Baby Product Co. Ltd are manufactured by original manufacturers. We never accept counterfeit, fake&lt;/span&gt;&lt;/div&gt;\r\n', 'All products', 'All products', 'All products', '5000', '30/08/2017', 'vi', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_avatar` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT '0000-00-00',
  `register_date` datetime DEFAULT NULL,
  `register_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visited_date` datetime DEFAULT NULL,
  `visited_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sign` text COLLATE utf8_unicode_ci,
  `member_hoten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_ngaysinh` varchar(15) COLLATE utf8_unicode_ci DEFAULT '00-00-0000',
  `member_gioitinh` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_honnhan` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_tinh` int(11) DEFAULT NULL,
  `member_dienthoai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phanloai` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `alias`, `user_avatar`, `password`, `email`, `first_name`, `last_name`, `birthday`, `register_date`, `register_ip`, `visited_date`, `visited_ip`, `active_code`, `status`, `sign`, `member_hoten`, `member_ngaysinh`, `member_gioitinh`, `member_honnhan`, `member_avatar`, `member_diachi`, `member_tinh`, `member_dienthoai`, `member_email`, `phanloai`, `group_id`) VALUES
(47, 'bachvu', '', '', 'e8d8ca34fd5cb124912cbe755badfe14', 'bachvx@outlook.com', 'Bách', 'Vũ', '2014-07-28', '2014-07-07 09:07:58', '14.162.246.252', '2017-10-08 03:10:15', '115.72.187.205', '0', 1, '&lt;div&gt;\r\n	việt nam đang trên đường phảt triển thành con rồng châu Á&lt;/div&gt;\r\n&lt;div&gt;\r\n	dsf&lt;/div&gt;\r\n&lt;div&gt;\r\n	sd&lt;/div&gt;\r\n&lt;div&gt;\r\n	f&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 'bachvx', '19-04-1984', 'Nam', 'Đã có gia đình', NULL, 'hà nội', 2, '0987801393', '', 1, 1),
(55, 'admin', 'admin', '', 'd7c6462a645c23f1ac841350de0be9d5', 'admin@gmail.com', 'admin', 'admin', '2015-10-16', '2015-10-16 09:10:04', '118.70.80.223', '2019-10-02 02:10:12', '103.238.69.181', '0', 1, '', NULL, '00-00-0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_files`
--

CREATE TABLE `user_files` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `denyZipDownload` tinyint(1) NOT NULL DEFAULT '0',
  `denyExtensionRename` tinyint(1) NOT NULL DEFAULT '0',
  `files_upload` tinyint(1) NOT NULL DEFAULT '0',
  `files_delete` tinyint(1) NOT NULL DEFAULT '0',
  `files_copy` tinyint(1) NOT NULL DEFAULT '0',
  `files_move` tinyint(1) NOT NULL DEFAULT '0',
  `files_rename` tinyint(1) NOT NULL DEFAULT '0',
  `dirs_create` tinyint(1) NOT NULL DEFAULT '0',
  `dirs_delete` tinyint(1) NOT NULL DEFAULT '0',
  `dirs_rename` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_files`
--

INSERT INTO `user_files` (`group_id`, `disabled`, `denyZipDownload`, `denyExtensionRename`, `files_upload`, `files_delete`, `files_copy`, `files_move`, `files_rename`, `dirs_create`, `dirs_delete`, `dirs_rename`) VALUES
(1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'none',
  `avatar` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ranking` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_acp` tinyint(1) DEFAULT '0',
  `group_default` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT '0',
  `modified` datetime DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) DEFAULT '0',
  `permission` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'limit',
  `status` tinyint(1) DEFAULT '0',
  `order` int(11) DEFAULT '99'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `group_name`, `type`, `avatar`, `ranking`, `group_acp`, `group_default`, `created`, `created_by`, `modified`, `modified_by`, `permission`, `status`, `order`) VALUES
(1, 'Administrator', 'none', NULL, NULL, 1, 1, '0000-00-00 00:00:00', 0, '2014-06-08 10:06:05', 1, 'Full Access', 1, 0),
(2, 'Quản lý chung', 'none', NULL, NULL, 1, 1, '0000-00-00 00:00:00', 0, '2017-10-08 03:10:20', 55, 'Limit Access', 0, 0),
(4, 'Member', 'none', 'member.gif', 'rMember.png', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 'Limit Access', 1, 0),
(3, 'Biên tập viên', 'none', NULL, NULL, 1, 1, '0000-00-00 00:00:00', 0, '2014-07-04 09:07:12', 32, 'Full Access', 1, 0),
(28, 'Quản lý module bài viết', 'none', NULL, NULL, 1, 1, '2012-07-25 00:00:00', 1, '2014-06-08 10:06:51', 1, 'Full Access', 0, 0),
(29, 'Nhóm chăm sóc khách hàng', 'none', NULL, NULL, 1, 0, '2012-11-22 04:11:45', 1, '2014-06-08 10:06:13', 1, 'Full Access', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_group_privileges`
--

CREATE TABLE `user_group_privileges` (
  `privilege_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group_privileges`
--

INSERT INTO `user_group_privileges` (`privilege_id`, `group_id`, `status`) VALUES
(31, 2, 1),
(30, 2, 1),
(29, 2, 1),
(28, 2, 1),
(26, 2, 1),
(18, 2, 1),
(40, 2, 1),
(39, 2, 1),
(38, 2, 1),
(37, 2, 1),
(36, 2, 1),
(35, 2, 1),
(34, 2, 1),
(33, 2, 1),
(32, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name`, `picture`, `thumb`, `file`, `order`, `status`, `module`, `content`, `lang_code`) VALUES
(1, 'video', '/public/files/editor-upload/images/video/video01.jpg', NULL, 'V218dCra0SQ', 255, 1, 'default', '', '*'),
(3, 'video', '/public/files/editor-upload/images/video/video02.jpg', NULL, 'V218dCra0SQ', 255, 1, 'default', '', '*'),
(4, 'video', '/public/files/editor-upload/images/video/video03.jpg', NULL, 'V218dCra0SQ', 255, 1, 'slide', '', '*'),
(5, 'video', '/public/files/editor-upload/images/video/video04.jpg', NULL, 'V218dCra0SQ', 255, 1, 'slide', '', '*'),
(6, 'video', '/public/files/editor-upload/images/video/video05.jpg', NULL, 'V218dCra0SQ', 255, 1, 'slide', '', '*');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_category`
--
ALTER TABLE `ads_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles_en`
--
ALTER TABLE `articles_en`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backlink`
--
ALTER TABLE `backlink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`status`),
  ADD KEY `newsfeeds` (`module`,`status`),
  ADD KEY `idx_language` (`lang_code`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_reply`
--
ALTER TABLE `comment_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`,`id_number`);

--
-- Indexes for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `diadiem` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `diadiem_attribute`
--
ALTER TABLE `diadiem_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diadiem_attribute_category`
--
ALTER TABLE `diadiem_attribute_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diadiem_category`
--
ALTER TABLE `diadiem_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diadiem_en`
--
ALTER TABLE `diadiem_en`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `diadiem_en` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `diadiem_manu`
--
ALTER TABLE `diadiem_manu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diadiem_sources`
--
ALTER TABLE `diadiem_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diadiem_units`
--
ALTER TABLE `diadiem_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diadiem_view_catergory`
--
ALTER TABLE `diadiem_view_catergory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dichvu_category`
--
ALTER TABLE `dichvu_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dulich`
--
ALTER TABLE `dulich`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_category`
--
ALTER TABLE `faqs_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_reply`
--
ALTER TABLE `faqs_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_album`
--
ALTER TABLE `gallery_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_image`
--
ALTER TABLE `gallery_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genex`
--
ALTER TABLE `genex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genex_page`
--
ALTER TABLE `genex_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang_category`
--
ALTER TABLE `khachhang_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_category`
--
ALTER TABLE `link_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhomdichvu`
--
ALTER TABLE `nhomdichvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagedichvu`
--
ALTER TABLE `pagedichvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phankhu_image`
--
ALTER TABLE `phankhu_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phanphoi`
--
ALTER TABLE `phanphoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quanngon_category`
--
ALTER TABLE `quanngon_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_khoahoc`
--
ALTER TABLE `register_khoahoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_nguontin`
--
ALTER TABLE `register_nguontin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_thoigian`
--
ALTER TABLE `register_thoigian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_trungtam`
--
ALTER TABLE `register_trungtam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thoigian`
--
ALTER TABLE `thoigian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongke_counter`
--
ALTER TABLE `thongke_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuyendung`
--
ALTER TABLE `tuyendung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuyendung_en`
--
ALTER TABLE `tuyendung_en`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group_privileges`
--
ALTER TABLE `user_group_privileges`
  ADD PRIMARY KEY (`privilege_id`,`group_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ads_category`
--
ALTER TABLE `ads_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `backlink`
--
ALTER TABLE `backlink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment_reply`
--
ALTER TABLE `comment_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- AUTO_INCREMENT for table `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=742;

--
-- AUTO_INCREMENT for table `diadiem_attribute`
--
ALTER TABLE `diadiem_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diadiem_attribute_category`
--
ALTER TABLE `diadiem_attribute_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diadiem_category`
--
ALTER TABLE `diadiem_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `diadiem_manu`
--
ALTER TABLE `diadiem_manu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `diadiem_sources`
--
ALTER TABLE `diadiem_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `diadiem_units`
--
ALTER TABLE `diadiem_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `diadiem_view_catergory`
--
ALTER TABLE `diadiem_view_catergory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `dichvu_category`
--
ALTER TABLE `dichvu_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dulich`
--
ALTER TABLE `dulich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `faqs_category`
--
ALTER TABLE `faqs_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs_reply`
--
ALTER TABLE `faqs_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery_album`
--
ALTER TABLE `gallery_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery_image`
--
ALTER TABLE `gallery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `genex`
--
ALTER TABLE `genex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genex_page`
--
ALTER TABLE `genex_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `khachhang_category`
--
ALTER TABLE `khachhang_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `link_category`
--
ALTER TABLE `link_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `money`
--
ALTER TABLE `money`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhomdichvu`
--
ALTER TABLE `nhomdichvu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagedichvu`
--
ALTER TABLE `pagedichvu`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phankhu_image`
--
ALTER TABLE `phankhu_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `phanphoi`
--
ALTER TABLE `phanphoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quanngon_category`
--
ALTER TABLE `quanngon_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `register_khoahoc`
--
ALTER TABLE `register_khoahoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `register_nguontin`
--
ALTER TABLE `register_nguontin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `register_thoigian`
--
ALTER TABLE `register_thoigian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register_trungtam`
--
ALTER TABLE `register_trungtam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `thoigian`
--
ALTER TABLE `thoigian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `thongke_counter`
--
ALTER TABLE `thongke_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `tuyendung`
--
ALTER TABLE `tuyendung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
