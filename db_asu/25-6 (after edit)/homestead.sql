-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 24, 2018 at 09:54 PM
-- Server version: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'jzH9WS2NZr5u7AMZDm7nU0LV7ORWyLsC', 1, '2018-06-14 00:05:13', '2018-06-14 00:05:13', '2018-06-14 00:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `block__blocks`
--

DROP TABLE IF EXISTS `block__blocks`;
CREATE TABLE IF NOT EXISTS `block__blocks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `block__blocks`
--

INSERT INTO `block__blocks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'about-asu', '2018-06-21 07:50:51', '2018-06-21 07:50:51'),
(2, 'modal', '2018-06-22 04:37:56', '2018-06-22 04:37:56'),
(3, 'map', '2018-06-22 04:42:29', '2018-06-22 04:42:29'),
(4, 'contact-info', '2018-06-22 04:45:55', '2018-06-22 04:45:55'),
(5, 'gallery', '2018-06-22 04:48:32', '2018-06-22 04:48:32'),
(6, 'qoutes', '2018-06-22 05:12:28', '2018-06-22 05:12:28'),
(7, 'swiper', '2018-06-22 07:08:33', '2018-06-22 07:08:33'),
(8, 'services', '2018-06-24 01:35:33', '2018-06-24 01:35:33'),
(9, 'asu-on', '2018-06-24 01:40:04', '2018-06-24 01:40:04'),
(10, 'facts', '2018-06-24 01:42:46', '2018-06-24 01:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `block__blocks_translations`
--

DROP TABLE IF EXISTS `block__blocks_translations`;
CREATE TABLE IF NOT EXISTS `block__blocks_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `online` tinyint(4) DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `block_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `block__blocks_translations_block_id_locale_unique` (`block_id`,`locale`),
  KEY `block__blocks_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `block__blocks_translations`
--

INSERT INTO `block__blocks_translations` (`id`, `online`, `body`, `block_id`, `locale`) VALUES
(1, 1, '<!-- A Few Words About the University-->\r\n<section class=\"section-70 section-md-114 bg-index-body\">\r\n<div class=\"shell\">\r\n<div class=\"range text-sm-left range-sm-justify\">\r\n<div class=\"cell-sm-7 view-animate fadeInRightSm delay-04\">\r\n<div class=\"img-wrap-2\">\r\n<figure><img alt=\"\" class=\"img-responsive reveal-inline-block\" src=\"http://localhost:8000/assets/media/home-01-620-350.jpg\" style=\"width: 620px; height: 350px;\" /></figure>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-sm-5 offset-top-50 offset-sm-top-0\">\r\n<h2 class=\"home-headings-custom text-bold view-animate fadeInLeftSm delay-06\"><span class=\"first-word\">About </span>ASU</h2>\r\n\r\n<div class=\"offset-top-35 offset-md-top-60 view-animate fadeInLeftSm delay-08\">\r\n<p>Ain Shams University, as the third Egyptian university, was founded in July 1950 under the name of &quot;Ibrahim Pasha University&quot;. It participated with the two earlier universities, &quot;Cairo University&quot; (Fua&#39;d the 1st ) and &quot;Alexandria University&quot; (Farouk the 1st) in fulfilling the message of universities and meeting the increasing demand of youth for higher education. When it was first established, Ain Shams University comprised a number of distinguished faculties and academic institutes, which were later developed into university.</p>\r\n</div>\r\n\r\n<div class=\"offset-top-30 view-animate fadeInLeftSm delay-1\"><a class=\"btn btn-ellipse btn-icon btn-icon-right btn-primary\" href=\"history.html\"><span>Learn More</span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 1, 'en'),
(2, 1, '<section class=\"section-70 section-md-114 bg-index-body\">\r\n<div class=\"shell\">\r\n<div class=\"range text-sm-left range-sm-justify\">\r\n<div class=\"cell-sm-7 view-animate fadeInRightSm delay-04\">\r\n<div class=\"img-wrap-2\">\r\n<figure><img alt=\"asu\" class=\"img-responsive reveal-inline-block\" src=\"http://localhost:8000/assets/media/home-01-620-350.jpg\" style=\"width: 620px; height: 350px;\" /></figure>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-sm-5 offset-top-50 offset-sm-top-0\">\r\n<h2 class=\"home-headings-custom text-bold view-animate fadeInLeftSm delay-06\" style=\"text-align: right\"><span class=\"first-word\">عن </span>الجامعة</h2>\r\n\r\n<div class=\"offset-top-35 offset-md-top-60 view-animate fadeInLeftSm delay-08\">\r\n<p>جامعة عين شمس ، الجامعة المصرية الثالثة ، تأسست في يوليو 1950 تحت اسم &quot;جامعة إبراهيم باشا&quot;. شاركت مع جامعتين سابقتين هما &quot;جامعة القاهرة&quot; (فؤاد الأول) و &quot;جامعة الإسكندرية&quot; (فاروق الأول) في الوفاء برسالة الجامعات وتلبية الطلب المتزايد للشباب للتعليم العالي. عندما تأسست جامعة عين شمس ، تألفت من عدد من الكليات والمعاهد الأكاديمية المتميزة ، والتي تم تطويرها فيما بعد لتصبح جامعة.</p>\r\n</div>\r\n\r\n<div class=\"offset-top-30 view-animate fadeInLeftSm delay-1\"><a class=\"btn btn-ellipse btn-icon btn-icon-right btn-primary\" href=\"history_ar.html\"><span>أعرف المزيد</span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 1, 'ar'),
(3, 1, '<div class=\"modal fade\" id=\"myModal\" role=\"dialog\">\r\n<div class=\"modal-dialog\"><!-- Modal content-->\r\n<div class=\"modal-content\">\r\n<div class=\"modal-header\"><button class=\"close mdi mdi-window-close\" data-dismiss=\"modal\" type=\"button\"></button></div>\r\n\r\n<div class=\"modal-body\">\r\n<div class=\"embed-responsive embed-responsive-16by9\"><iframe allow=\"autoplay; encrypted-media\" allowfullscreen=\"\" class=\"embed-responsive-item\" frameborder=\"0\" src=\"https://www.youtube.com/embed/Fe1gTYxyPQU\"></iframe></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 2, 'en'),
(4, 1, '<div class=\"modal fade\" id=\"myModal\" role=\"dialog\">\r\n<div class=\"modal-dialog\"><!-- Modal content-->\r\n<div class=\"modal-content\">\r\n<div class=\"modal-header\"><button class=\"close mdi mdi-window-close\" data-dismiss=\"modal\" type=\"button\"></button></div>\r\n\r\n<div class=\"modal-body\">\r\n<div class=\"embed-responsive embed-responsive-16by9\"><iframe allow=\"autoplay; encrypted-media\" allowfullscreen=\"\" class=\"embed-responsive-item\" frameborder=\"0\" src=\"https://www.youtube.com/embed/Fe1gTYxyPQU\"></iframe></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 2, 'ar'),
(5, 1, '<section><!-- RD Google Map-->\r\n<div class=\"rd-google-map\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"500\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3452.6088012526307!2d31.28445!3d30.076746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzDCsDA0JzM2LjMiTiAzMcKwMTcnMDQuMCJF!5e0!3m2!1sen!2seg!4v1522839739922\" style=\"border:0\" width=\"100%\"></iframe></div>\r\n</section>', 3, 'en'),
(6, 1, '<section><!-- RD Google Map-->\r\n<div class=\"rd-google-map\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"500\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3452.6088012526307!2d31.28445!3d30.076746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzDCsDA0JzM2LjMiTiAzMcKwMTcnMDQuMCJF!5e0!3m2!1sen!2seg!4v1522839739922\" style=\"border:0\" width=\"100%\"></iframe></div>\r\n</section>', 3, 'ar'),
(7, 1, '<section class=\"section-60\" style=\"background-color: white;\">\r\n          <div class=\"shell\">\r\n            <div class=\"range range-xs-center features-list\">\r\n              <div class=\"cell-sm-4\">\r\n                <div class=\"unit unit-vertical unit-responsive-md section-45\">\r\n                  <div class=\"unit-left\"><span class=\"icon icon-contact-sm text-madison mdi mdi-phone\"></span></div>\r\n                  <div class=\"unit-body\"><a class=\"h6 text-regular\" href=\"tel:#\">26831231 , </a><a class=\"h6 text-regular\" href=\"tel:#\">26831417 , </a><a class=\"h6 text-regular\" href=\"tel:#\"> 26831474 </a></div>\r\n                </div>\r\n              </div>\r\n              <div class=\"cell-sm-4\">\r\n                <div class=\"unit unit-vertical unit-responsive-md section-45\">\r\n                  <div class=\"unit-left\"><span class=\"icon icon-contact-sm text-madison mdi mdi-map-marker\"></span></div>\r\n                  <div class=\"unit-body\"><a class=\"h6 text-regular\" href=\"#\">El-Khalyfa El-Mamoun Street Abbasya,  <br class=\"visible-lg-inline\"> Cairo , Eygpt</a></div>\r\n                </div>\r\n              </div>\r\n              <div class=\"cell-sm-4\">\r\n                <div class=\"unit unit-vertical unit-responsive-md section-45\">\r\n                  <div class=\"unit-left\"><span class=\"icon icon-contact-sm text-madison mdi mdi-email-open\"></span></div>\r\n                  <div class=\"unit-body\"><a class=\"h6 text-regular\" href=\"mailto:#\">Info@asu.edu.eg</a></div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </section>', 4, 'en'),
(8, 1, '<section class=\"section-60\">\r\n<div class=\"shell\">\r\n<div class=\"range range-xs-center features-list\">\r\n<div class=\"cell-sm-4\">\r\n<div class=\"unit unit-vertical unit-responsive-md section-45\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\"><a class=\"h6 text-regular\" href=\"tel:#\">26831231 , </a><a class=\"h6 text-regular\" href=\"tel:#\">26831417 , </a><a class=\"h6 text-regular\" href=\"tel:#\"> 26831474 </a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-sm-4\">\r\n<div class=\"unit unit-vertical unit-responsive-md section-45\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\"><a class=\"h6 text-regular\" href=\"#\">شارع الخليفة المأمون، العباسية، ،<br class=\"visible-lg-inline\" />\r\nالقاهرة،, مصر</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-sm-4\">\r\n<div class=\"unit unit-vertical unit-responsive-md section-45\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\"><a class=\"h6 text-regular\" href=\"mailto:#\">Info@asu.edu.eg</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 4, 'ar'),
(9, 1, '<section>\r\n<div class=\"owl-carousel flickr\" data-dots=\"false\" data-flickr-tags=\"59029\" data-items=\"1\" data-md-items=\"6\" data-mouse-drag=\"true\" data-nav=\"false\" data-photo-swipe-gallery=\"\" data-sm-items=\"4\" data-stage-padding=\"0\" data-xl-items=\"6\" data-xl-stage-padding=\"0\" data-xs-items=\"2\"><a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/1.jpg\"><img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/1.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/2.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/2.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/3.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/3.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/4.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/4.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"images/Gallery/5.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/5.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/6.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/6.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/7.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/7.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/8.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/8.jpg\" width=\"320\" /> </a></div>\r\n\r\n<div class=\"offset-top-50 offset-lg-top-56 view-animate fadeInUpSmall\" style=\"\r\n    text-align:  center;\r\n    background-color:  white;\r\n\"><a class=\"btn btn-ellipse btn-icon btn-icon-right btn-primary\" href=\"gallary.html\"><span>ASU Gallary</span></a></div>\r\n</section>', 5, 'en'),
(10, 1, '<section>\r\n<div class=\"owl-carousel flickr\" data-dots=\"false\" data-flickr-tags=\"59029\" data-items=\"1\" data-md-items=\"6\" data-mouse-drag=\"true\" data-nav=\"false\" data-photo-swipe-gallery=\"\" data-sm-items=\"4\" data-stage-padding=\"0\" data-xl-items=\"6\" data-xl-stage-padding=\"0\" data-xs-items=\"2\"><a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/1.jpg\"><img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/1.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/2.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/2.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/3.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/3.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/4.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/4.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"images/Gallery/5.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/5.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/6.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/6.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/7.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" height=\"320\" src=\"http://localhost:8000/assets/media/7.jpg\" width=\"320\" /> </a> <a class=\"thumbnail-default\" data-image_c=\"href\" data-photo-swipe-item=\"\" data-size=\"320x320\" href=\"http://localhost:8000/assets/media/8.jpg\"> <img alt=\"\" data-image_n=\"src\" data-title=\"alt\" src=\"http://localhost:8000/assets/media/8.jpg\" style=\"width: 320px; height: 320px;\" /> </a></div>\r\n\r\n<div class=\"offset-top-50 offset-lg-top-56 view-animate fadeInUpSmall\"><a class=\"btn btn-ellipse btn-icon btn-icon-right btn-primary\" href=\"gallary.html\"><span>ألبوم الصور</span></a></div>\r\n</section>', 5, 'ar'),
(11, 1, '<section class=\"context-dark parallax-container position-relative\" data-parallax-img=\"http://localhost:8000/assets/media/parallax-03.jpg\">\r\n<div class=\"parallax-content\">\r\n<div class=\"shell section-70 section-xl-114\">\r\n<div class=\"owl-carousel owl-carousel-default carousel-type-1 veil-xl-owl-dots veil-owl-nav reveal-xl-owl-nav\" data-dots=\"true\" data-items=\"1\" data-loop=\"true\" data-margin=\"30\" data-nav=\"true\" data-nav-class=\"[\" data-sm-items=\"2\" owl-next=\"\" owl-prev=\"\">\r\n<div>\r\n<div class=\"quote-classic-boxed text-left\">\r\n<div class=\"quote-body\"><q style=\"display: inline-block;text-align: justify; height: 260px;\r\n                         overflow: hidden;\">Ain Shams University is one of the largest universities in the Middle East in terms of study programs, number of students and faculty members, and since Ain Shams University owns many elements of success, the current university&rsquo;s plan is characterized by channeling of efforts to achieve internationalization in all education and research aspects. Thus, realizing the university&#39;s vision of graduating graduates equipped with the skills needed for the labor market both at the local, regional, and international levels. Moreover, directing the university&#39;s efforts in the development of the educational and research plans directly contributes to the achievement of national development plans.</q>\r\n<div class=\"offset-top-30 text-left\">\r\n<div class=\"unit unit-horizontal\">\r\n<div class=\"unit-left\"><img alt=\"\" class=\"img-responsive reveal-inline-block img-circle\" src=\"http://localhost:8000/assets/media/1.png\" style=\"width: 80px; height: 80px;\" /></div>\r\n\r\n<div class=\"unit-body\"><cite class=\"font-accent\">Prof. Abdel Wahab Ezzet</cite>\r\n\r\n<div class=\"offset-top-5\">\r\n<p class=\"text-dark text-italic\">President of Ain Shams University</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div class=\"quote-classic-boxed text-left\">\r\n<div class=\"quote-body\"><q style=\"display: inline-block;text-align: justify; height: 260px;\r\n                         overflow: hidden;\">The immense human resources of Ain Shams University in scientific research can lead to a qualitative leap in the university&#39;s contributions to all scientific and literary fields at the international level. Since, Ain shams University puts a huge importance to the provision of resources to researchers either Faculty members, or postgraduate students. On the other hand, the University contributes significantly to the modernization of graduate programs by developing new disciplines and specialization to conform to the global trends in scientific and literary fields and are integrated with national development plans so that this research can be utilized in the applied fields.</q>\r\n\r\n<div class=\"offset-top-30 text-left\">\r\n<div class=\"unit unit-horizontal\">\r\n<div class=\"unit-left\"><img alt=\"\" class=\"img-responsive reveal-inline-block img-circle\" src=\"http://localhost:8000/assets/media/2.png\" style=\"width: 80px; height: 80px;\" /></div>\r\n\r\n<div class=\"unit-body\"><cite class=\"font-accent\">Prof. Dr. Abdel Nasser Singab</cite>\r\n\r\n<div class=\"offset-top-5\">\r\n<p class=\"text-dark text-italic\">VP for Graduate Studies and Research at Ain Shams University</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div class=\"quote-classic-boxed text-left\">\r\n<div class=\"quote-body\"><q style=\"display: inline-block;text-align: justify;  height: 260px;\r\n                         overflow: hidden;\">Ain Shams University is one of the largest Egyptian universities in terms of the number of bachelor students, and since an important part of the university&#39;s mission is to graduate students who are able to keep abreast of modern aspects in all areas; then, Ain Shams University has taken on itself modernizing its educational system from provision of modern teaching aids, students training in the skills needed for the labor market, continuous updating of academic curricula, development of new academic programs ... etc. The university also pays great attention to providing an attractive learning environment for students that has enabled us to apply modern methods of education.</q>\r\n\r\n<div class=\"offset-top-30 text-left\">\r\n<div class=\"unit unit-horizontal\">\r\n<div class=\"unit-left\"><img alt=\"\" class=\"img-responsive reveal-inline-block img-circle\" src=\"http://localhost:8000/assets/media/4.png\" style=\"width: 80px; height: 80px;\" /></div>\r\n\r\n<div class=\"unit-body\"><cite class=\"font-accent\">Dr.Fathi Sharkawy</cite>\r\n\r\n<div class=\"offset-top-5\">\r\n<p class=\"text-dark text-italic\">Vice President for Graduate Studies and Research discusses the mechanisms of attracting international students with Saudi and Bahraini cultural advisors</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div class=\"quote-classic-boxed text-left\">\r\n<div class=\"quote-body\"><q style=\"display: inline-block;text-align: justify;  height: 260px;\r\n                         overflow: hidden;\">The service of society and the development of the environment is one of the fundamental pillars of the Ain Shams university&#39;s key role and actually the university has a great potential of this role, the university provides consultations and technical support to the various companies and entities in Egypt. Additionally, Ain Shams university conducts Research and Development (R&amp;D) role for several of these companies. Moreover, the university has completed many projects to serve society and develop the environment through its consultation units. As the university provides technical consultation through its scientific staff at the highest level of efficiency leading to the most suitable scientific solutions with the lowest cost, thus maximizing the role of the university in the service of society.</q>\r\n\r\n<div class=\"offset-top-30 text-left\">\r\n<div class=\"unit unit-horizontal\">\r\n<div class=\"unit-left\"><img alt=\"\" class=\"img-responsive reveal-inline-block img-circle\" src=\"http://localhost:8000/assets/media/3.png\" style=\"width: 80px; height: 80px;\" /></div>\r\n\r\n<div class=\"unit-body\"><cite class=\"font-accent\">Prof.Dr .Nazmy Abdul Hamid Abdul Ghani </cite>\r\n\r\n<div class=\"offset-top-5\">\r\n<p class=\"text-dark text-italic\">Vice President of Ain Shams University for Community Service and Environmental Development</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 6, 'en'),
(12, 1, '<section class=\"context-dark parallax-container position-relative\" data-parallax-img=\"images/parallax-03.jpg\"><!-- >>>>>>> 299ce8d6236e76bcfba833843471ac5a0577ace7 -->\r\n<div class=\"parallax-content\">\r\n<div class=\"shell section-70 section-xl-114\">\r\n<div class=\"owl-carousel owl-carousel-default carousel-type-1 veil-xl-owl-dots veil-owl-nav reveal-xl-owl-nav\" data-dots=\"true\" data-items=\"1\" data-loop=\"true\" data-margin=\"30\" data-nav=\"true\" data-nav-class=\"[\" data-sm-items=\"2\" owl-next=\"\" owl-prev=\"\">\r\n<div>\r\n<div class=\"quote-classic-boxed text-left\">\r\n<div class=\"quote-body\"><q style=\"display: inline-block;text-align: justify; height: 260px;\r\n                         overflow: hidden;\">تعد جامعة عين شمس واحدة من أكبر الجامعات في الشرق الأوسط من حيث البرامج الدراسية ، وعدد الطلاب وأعضاء هيئة التدريس ، وبما أن جامعة عين شمس تمتلك العديد من عناصر النجاح ، فإن خطة الجامعة الحالية تتميز بتوجيه الجهود لتحقيق التدويل. في جميع جوانب التعليم والبحث. وبالتالي ، تحقيق رؤية الجامعة للخريجين المتخرجين المجهزة بالمهارات اللازمة لسوق العمل على المستويات المحلية والإقليمية والدولية. علاوة على ذلك ، فإن توجيه جهود الجامعة في تطوير الخطط التعليمية والبحثية يساهم بشكل مباشر في تحقيق خطط التنمية الوطنية.</q>\r\n<div class=\"offset-top-30 text-left\">\r\n<div class=\"unit unit-horizontal\">\r\n<div class=\"unit-left\"><img alt=\"\" class=\"img-responsive reveal-inline-block img-circle\" height=\"80\" src=\"images/users/1.png\" width=\"80\" /></div>\r\n\r\n<div class=\"unit-body\"><cite class=\"font-accent\">أ.د. عبد الوهاب عزت</cite>\r\n\r\n<div class=\"offset-top-5\">\r\n<p class=\"text-dark text-italic\">رئيس جامعة عين شمس</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div class=\"quote-classic-boxed text-left\">\r\n<div class=\"quote-body\"><q style=\"display: inline-block;text-align: justify; height: 260px;\r\n                         overflow: hidden;\">يمكن للموارد البشرية الهائلة لجامعة عين شمس في البحث العلمي أن تؤدي إلى نقلة نوعية في مساهمات الجامعة في جميع المجالات العلمية والأدبية على المستوى الدولي. منذ ذلك الحين ، تضع جامعة عين شمس أهمية كبيرة لتوفير الموارد للباحثين سواء أعضاء هيئة التدريس ، أو طلاب الدراسات العليا. من ناحية أخرى ، تساهم الجامعة بشكل كبير في تحديث برامج الدراسات العليا من خلال تطوير تخصصات وتخصصات جديدة لتتوافق مع الاتجاهات العالمية في المجالات العلمية والأدبية ، وتتكامل مع خطط التنمية الوطنية بحيث يمكن استخدام هذا البحث في المجالات التطبيقية. .</q>\r\n\r\n<div class=\"offset-top-30 text-left\">\r\n<div class=\"unit unit-horizontal\">\r\n<div class=\"unit-left\"><img alt=\"\" class=\"img-responsive reveal-inline-block img-circle\" height=\"80\" src=\"images/users/2.png\" width=\"80\" /></div>\r\n\r\n<div class=\"unit-body\"><cite class=\"font-accent\">الأستاذ الدكتور عبد الناصر سنجاب</cite>\r\n\r\n<div class=\"offset-top-5\">\r\n<p class=\"text-dark text-italic\">نائب رئيس الجامعة للدراسات العليا والبحثية بجامعة عين شمس</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div class=\"quote-classic-boxed text-left\">\r\n<div class=\"quote-body\"><q style=\"display: inline-block;text-align: justify;  height: 260px;\r\n                         overflow: hidden;\">تعد جامعة عين شمس واحدة من أكبر الجامعات المصرية من حيث عدد طلاب البكالوريوس ، وبما أن جزءاً هاماً من رسالة الجامعة هو تخريج الطلاب القادرين على مواكبة الجوانب الحديثة في جميع المجالات ؛ ثم قامت جامعة عين شمس بتحديث نظامها التعليمي من خلال توفير الوسائل التعليمية الحديثة ، تدريب الطلاب على المهارات اللازمة لسوق العمل ، التحديث المستمر للمناهج الدراسية ، تطوير برامج أكاديمية جديدة ... الخ. تولي اهتماما كبيرا بتوفير بيئة تعليمية جذابة للطلاب مكنتنا من تطبيق أساليب التعليم الحديثة.</q>\r\n\r\n<div class=\"offset-top-30 text-left\">\r\n<div class=\"unit unit-horizontal\">\r\n<div class=\"unit-left\"><img alt=\"\" class=\"img-responsive reveal-inline-block img-circle\" height=\"80\" src=\"images/users/4.png\" width=\"80\" /></div>\r\n\r\n<div class=\"unit-body\"><cite class=\"font-accent\">دكتور فتحي شرقاوي</cite>\r\n\r\n<div class=\"offset-top-5\">\r\n<p class=\"text-dark text-italic\">يناقش نائب رئيس الجامعة للدراسات العليا والبحثية آليات جذب الطلاب الدوليين مع المستشارين الثقافيين السعوديين والبحرينيين</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div class=\"quote-classic-boxed text-left\">\r\n<div class=\"quote-body\"><q style=\"display: inline-block;text-align: justify;  height: 260px;\r\n                         overflow: hidden;\">خدمة المجتمع وتنمية البيئة هي أحد الركائز الأساسية للدور الرئيسي لجامعة عين شمس ، وفي الواقع تتمتع الجامعة بإمكانيات كبيرة لهذا الدور ، وتقدم الجامعة الاستشارات والدعم الفني لمختلف الشركات والهيئات في مصر. . بالإضافة إلى ذلك ، تقوم جامعة عين شمس بدور البحث والتطوير (R &amp; D) للعديد من هذه الشركات. علاوة على ذلك ، أنجزت الجامعة العديد من المشاريع لخدمة المجتمع وتنمية البيئة من خلال وحدات التشاور التابعة لها. كما توفر الجامعة الاستشارات الفنية من خلال موظفيها العلميين على أعلى مستوى من الكفاءة مما يؤدي إلى أنسب الحلول العلمية بأقل تكلفة ، وبالتالي تعظيم دور الجامعة في خدمة المجتمع.</q>\r\n\r\n<div class=\"offset-top-30 text-left\">\r\n<div class=\"unit unit-horizontal\">\r\n<div class=\"unit-left\"><img alt=\"\" class=\"img-responsive reveal-inline-block img-circle\" height=\"80\" src=\"images/users/3.png\" width=\"80\" /></div>\r\n\r\n<div class=\"unit-body\"><cite class=\"font-accent\">أ.د.نظمي عبد الحميد عبد الغني</cite>\r\n\r\n<div class=\"offset-top-5\">\r\n<p class=\"text-dark text-italic\">نائب رئيس جامعة عين شمس لخدمة المجتمع وتنمية البيئة</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 6, 'ar'),
(13, 1, '<section><!-- Swiper-->\r\n<div class=\"swiper-container swiper-slider swiper-slider-3\" data-dragable=\"false\" data-height=\"100vh\" data-loop=\"false\" data-min-height=\"480px\" data-slide-effect=\"true\">\r\n<div class=\"swiper-wrapper\">\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/slide-01-1920x1000.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-condensed\">\r\n<div class=\"cell-md-7 text-center cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Welcome to Ain Shams University</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">Ain Shams University, as the third Egyptian university, was founded in July 1950 under the name of &quot;Ibrahim Pasha University&quot;.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-madison btn-ellipse\" href=\"#\">Sign IN /Sign Up</a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\"><a class=\"btn btn-primary btn-ellipse veil reveal-lg-inline-block\" href=\"#\">Learn More</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/slide-02-1920x1000.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-lg-left range-condensed\">\r\n<div class=\"cell-md-7 text-md-left cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Building Your Knowledge</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">The Central Library; was founded in 1950, upon the foundation of Ain Shams University . It is an academic library, so its visitors are University staff members, students, researchers,and adminstrators from the university.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"#\">learn More</a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/StudentActivities/29103472_1823136577979019_5336317236862779392_n.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-lg-right range-condensed\">\r\n<div class=\"cell-md-6 text-md-left cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Different Kinds of Activities &amp;&amp; Student Activities</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">While faculty staff thought of establishing club where they can practice their activity and to meet them outside the university so they saw it the right thing to solve the existing faculty association and transfer balance to create a faculty club.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"#\">Learn More</a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/slide-02-1920x1000.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-lg-left range-condensed\">\r\n<div class=\"cell-md-7 text-md-left cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Building Your Knowledge</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">The Central Library; was founded in 1950, upon the foundation of Ain Shams University . It is an academic library, so its visitors are University staff members, students, researchers,and adminstrators from the university.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"#\">Learn More </a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/StudentActivities/201802018662.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-lg-right range-condensed\">\r\n<div class=\"cell-md-6 text-md-left cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Different Kinds of Activities &amp;&amp; Student Activities</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">While faculty staff thought of establishing club where they can practice their activity and to meet them outside the university so they saw it the right thing to solve the existing faculty association and transfer balance to create a faculty club.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"#\">Learn More</a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&gt;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- Swiper Pagination-->\r\n\r\n<div class=\"swiper-pagination\">&nbsp;</div>\r\n</div>\r\n</section>', 7, 'en'),
(14, 1, '<section><!-- Swiper-->\r\n<div class=\"swiper-container swiper-slider swiper-slider-3\" data-dragable=\"false\" data-height=\"100vh\" data-loop=\"false\" data-min-height=\"480px\" data-slide-effect=\"true\">\r\n<div class=\"swiper-wrapper\">\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/slide-01-1920x1000.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-condensed\">\r\n<div class=\"cell-md-7 text-center cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Welcome to Ain Shams University</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">Ain Shams University, as the third Egyptian university, was founded in July 1950 under the name of &quot;Ibrahim Pasha University&quot;.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-madison btn-ellipse\" href=\"#\">Sign IN /Sign Up</a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\"><a class=\"btn btn-primary btn-ellipse veil reveal-lg-inline-block\" href=\"#\">Learn More</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/slide-02-1920x1000.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-lg-left range-condensed\">\r\n<div class=\"cell-md-7 text-md-left cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Building Your Knowledge</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">The Central Library; was founded in 1950, upon the foundation of Ain Shams University . It is an academic library, so its visitors are University staff members, students, researchers,and adminstrators from the university.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"#\">learn More</a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/StudentActivities/29103472_1823136577979019_5336317236862779392_n.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-lg-right range-condensed\">\r\n<div class=\"cell-md-6 text-md-left cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Different Kinds of Activities &amp;&amp; Student Activities</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">While faculty staff thought of establishing club where they can practice their activity and to meet them outside the university so they saw it the right thing to solve the existing faculty association and transfer balance to create a faculty club.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"#\">Learn More</a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/slide-02-1920x1000.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-lg-left range-condensed\">\r\n<div class=\"cell-md-7 text-md-left cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Building Your Knowledge</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">The Central Library; was founded in 1950, upon the foundation of Ain Shams University . It is an academic library, so its visitors are University staff members, students, researchers,and adminstrators from the university.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"#\">Learn More </a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"swiper-slide\" data-slide-bg=\"http://localhost:8000/themes/asu/images/StudentActivities/201802018662.jpg\" style=\"background-position: 80% center;\">\r\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\r\n<div class=\"container\">\r\n<div class=\"range range-xs-center range-lg-right range-condensed\">\r\n<div class=\"cell-md-6 text-md-left cell-xs-10\">\r\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\r\n<h1 class=\"text-bold\">Different Kinds of Activities &amp;&amp; Student Activities</h1>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\r\n<h5 class=\"text-regular font-default\">While faculty staff thought of establishing club where they can practice their activity and to meet them outside the university so they saw it the right thing to solve the existing faculty association and transfer balance to create a faculty club.</h5>\r\n</div>\r\n\r\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"#\">Learn More</a>\r\n\r\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&gt;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- Swiper Pagination-->\r\n\r\n<div class=\"swiper-pagination\">&nbsp;</div>\r\n</div>\r\n</section>', 7, 'ar'),
(15, 1, '<section class=\"bg-madison section-70 section-md-114 text-center\" style=\"background: url(&quot;http://localhost:8000/themes/asu/images/bg-pattern.jpg&quot;) center; background-size: cover;\">\r\n<div class=\"shell\">\r\n<h2 class=\"text-bold text-white view-animate fadeInUpSmall delay-04\">ASU Services</h2>\r\n\r\n<div class=\"range range-xs-center offset-top-60 text-sm-left\">\r\n<div class=\"cell-sm-6 cell-md-4 view-animate fadeInRightSm delay-1\">\r\n<article class=\"post-news bg-white\"><a href=\"#detailedNews.html\"><img alt=\"\" class=\"img-responsive\" height=\"240\" src=\"http://localhost:8000/themes/asu/images/home-02-370x240.jpg\" width=\"370\" /></a>\r\n\r\n<div class=\"post-news-body-variant-1\">\r\n<h6><a href=\"\">Alumni</a></h6>\r\n</div>\r\n</article>\r\n</div>\r\n\r\n<div class=\"cell-sm-6 cell-md-4 view-animate fadeInUpSmall delay-08\">\r\n<article class=\"post-news bg-white\"><a href=\"#news-post-page.html\"><img alt=\"\" class=\"img-responsive\" height=\"240\" src=\"http://localhost:8000/themes/asu/images/home-03-370x240.jpg\" width=\"370\" /></a>\r\n\r\n<div class=\"post-news-body-variant-1\">\r\n<h6><a href=\"\">International Students</a></h6>\r\n</div>\r\n</article>\r\n</div>\r\n\r\n<div class=\"cell-sm-6 cell-md-4 offset-top-30 offset-md-top-0 view-animate fadeInLeftSm delay-1\">\r\n<article class=\"post-news bg-white\"><a href=\"#news-post-page.html\"><img alt=\"\" class=\"img-responsive\" height=\"240\" src=\"http://localhost:8000/themes/asu/images/home-04-370x240.png\" width=\"370\" /></a>\r\n\r\n<div class=\"post-news-body-variant-1\">\r\n<h6><a href=\"\">ASU E-Learning</a></h6>\r\n</div>\r\n</article>\r\n</div>\r\n</div>\r\n\r\n<div class=\"offset-top-50 offset-lg-top-56 view-animate fadeInUpSmall\"><a class=\"btn btn-ellipse btn-icon btn-icon-right btn-primary\" href=\"#services.html\"><span>More Services</span></a></div>\r\n</div>\r\n</section>', 8, 'en'),
(16, 1, '<section class=\"bg-madison section-70 section-md-114 text-center\" style=\"background: url(&quot;http://localhost:8000/themes/asu/images/bg-pattern.jpg&quot;) center; background-size: cover;\">\r\n<div class=\"shell\">\r\n<h2 class=\"text-bold text-white view-animate fadeInUpSmall delay-04\">الخدمات</h2>\r\n\r\n<div class=\"range range-xs-center offset-top-60 text-sm-left\">\r\n<div class=\"cell-sm-6 cell-md-4 view-animate fadeInRightSm delay-1\">\r\n<article class=\"post-news bg-white\"><a href=\"#detailedNews.html\"><img alt=\"\" class=\"img-responsive\" height=\"240\" src=\"http://localhost:8000/themes/asu/images/home-02-370x240.jpg\" width=\"370\" /></a>\r\n\r\n<div class=\"post-news-body-variant-1\">\r\n<h6 style=\"text-align: right\"><a href=\"\">الخريجون</a></h6>\r\n</div>\r\n</article>\r\n</div>\r\n\r\n<div class=\"cell-sm-6 cell-md-4 view-animate fadeInUpSmall delay-08\">\r\n<article class=\"post-news bg-white\"><a href=\"#news-post-page.html\"><img alt=\"\" class=\"img-responsive\" height=\"240\" src=\"http://localhost:8000/themes/asu/images/home-03-370x240.jpg\" width=\"370\" /></a>\r\n\r\n<div class=\"post-news-body-variant-1\">\r\n<h6 style=\"text-align: right\"><a href=\"\">الطلاب الوافدين</a></h6>\r\n</div>\r\n</article>\r\n</div>\r\n\r\n<div class=\"cell-sm-6 cell-md-4 offset-top-30 offset-md-top-0 view-animate fadeInLeftSm delay-1\">\r\n<article class=\"post-news bg-white\"><a href=\"#news-post-page.html\"><img alt=\"\" class=\"img-responsive\" height=\"240\" src=\"http://localhost:8000/themes/asu/images/home-04-370x240.png\" width=\"370\" /></a>\r\n\r\n<div class=\"post-news-body-variant-1\">\r\n<h6 style=\"text-align: right\"><a href=\"\">التعليم الإلكتروني</a></h6>\r\n</div>\r\n</article>\r\n</div>\r\n</div>\r\n\r\n<div class=\"offset-top-50 offset-lg-top-56 view-animate fadeInUpSmall\"><a class=\"btn btn-ellipse btn-icon btn-icon-right btn-primary\" href=\"\"><span>خدمات أخري</span></a></div>\r\n</div>\r\n</section>', 8, 'ar');
INSERT INTO `block__blocks_translations` (`id`, `online`, `body`, `block_id`, `locale`) VALUES
(17, 1, '<section class=\"bg-catskill\">\r\n          <div class=\"shell section-70 \" style=\"padding-top: 20px;\">\r\n            <h2 class=\"home-headings-custom text-bold view-animate fadeInUpSmall delay-06\"><span class=\"first-word\">ASU  </span>ON</h2>\r\n            <div class=\"range offset-top-10 text-center range-xs-center\">\r\n              <div class=\"cell-xs-12 cell-lg-12\">\r\n                <div class=\"range text-md-left offset-top-10\">\r\n                  <div class=\"cell-xs-6 cell-md-3\">\r\n                    <div class=\"unit unit-sm unit-sm-horizontal text-sm-left\">\r\n                      <div class=\"unit-left\"><span class=\"icon icon-lg mdi mdi-facebook icon-primary-face \"></span></div>\r\n                      <div class=\"unit-body\">\r\n                        <div class=\"offset-top-10\">\r\n                          <a href=\"https://www.facebook.com/AinShams.University.EG/\"><h6 class=\"text-bold\">FaceBook</h6>\r\n                          <p style=\"white-space: nowrap; width: 170px; height: 80px; overflow: hidden; text-overflow: ellipsis; \">تتقدم جامعة عين شمس بأسمى آيات التهاني، وأصدق الأمنيات لفخامة الرئيس عبد الفتاح السيسي بمناسبة فوزه الساحق بفترة رئاسية ثانية في الانتخابات الرئاسية الاخيرة...\r\n                            </p></a>\r\n                            <a class=\" btn-ellipse  btn-icon-right btn-primary readMoreBtn\" href=\"https://www.facebook.com/AinShams.University.EG/\" style=\"margin-top: 5px;\"><span>Read More</span></a>\r\n                            \r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"cell-xs-6 cell-md-3 offset-md-top-0\">\r\n                    <div class=\"unit unit-sm unit-sm-horizontal text-sm-left\">\r\n                      <div class=\"unit-left\"><span class=\"icon icon-lg mdi mdi-twitter icon-primary-twi \"></span></div>\r\n                      <div class=\"unit-body\">\r\n                        <div class=\"offset-top-10\">\r\n                          <a href=\"https://twitter.com/ainshamsegypt\"><h6 class=\"text-bold\">Twitter</h6>\r\n                          <p style=\"white-space: nowrap; width: 170px; height: 80px; overflow: hidden; text-overflow: ellipsis; \">فتتح أ.د عبد الوهاب عزت رئيس جامعة عين شمس مؤتمر الجامعة السابع تحت عنوان عالمية وانطلاق، بحضور علي عبدالعال، رئيس مجلس النواب،  ..........</p></a>\r\n                          <a class=\" btn-ellipse  btn-icon-right btn-primary readMoreBtn\" href=\"https://twitter.com/ainshamsegypt\"><span>Read More</span></a>\r\n                          \r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"cell-xs-6 cell-md-3 offset-top-50 offset-md-top-0\">\r\n                    <div class=\"unit unit-sm unit-sm-horizontal text-sm-left\">\r\n                      <div class=\"unit-left\"><span class=\"icon icon-lg mdi fa-youtube icon-primary-youtube\"></span></div>\r\n                      <div class=\"unit-body\">\r\n                        <div class=\"offset-top-10\">\r\n                          <a href=\"https://www.youtube.com/channel/UCpVsIJu2yTugSBnkxHs6t-g/featured?disable_polymer=true\"><h6 class=\"text-bold\">Youtube</h6>\r\n                          <p style=\"white-space: nowrap; width: 170px; height: 80px; overflow: hidden; text-overflow: ellipsis; \">كلمة السيد الاستاذ الدكتور / عبدالوهاب <br>\r\n                            <br><br>\r\n                          </p></a>\r\n                          <a class=\" btn-ellipse  btn-icon-right btn-primary readMoreBtn\" href=\"https://twitter.com/ainshamsegypt\"><span>Read More</span></a>\r\n                          \r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"cell-xs-6 cell-md-3 offset-top-50 offset-md-top-0\">\r\n                    <div class=\"unit unit-sm unit-sm-horizontal text-sm-left\">\r\n                      <div class=\"unit-left\"><span class=\"icon icon-lg mdi mdi-radio icon-primary\"></span></div>\r\n                      <div class=\"unit-body\">\r\n                        <div class=\"offset-top-10\">\r\n                          <a href=\"http://radioainshams.com/\"><h6 class=\"text-bold\">Radio Ain Shams</h6>\r\n                          <p style=\" height: 80px; margin-bottom: 0; width: 170px; \">\r\n                              <a href=\"https://goo.gl/SL6n2P\">اسمعونا علي </a>  : Playstore<br>\r\n                              <a href=\"https://goo.gl/oZNb3N\"> اسمعونا علي</a>  : Applestore<br><br><br>\r\n\r\n                          </p></a>\r\n                          <a class=\" btn-ellipse  btn-icon-right btn-primary readMoreBtn\" href=\"www.radioainshams.com\"><span>Read More</span></a>\r\n                         \r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </section>', 9, 'en'),
(18, 1, '<section class=\"bg-catskill\">\r\n<div class=\"shell section-70 \" style=\"padding-top: 20px;\">\r\n<h2 class=\"home-headings-custom text-bold view-animate fadeInUpSmall delay-06\"><span class=\"first-word\">لمزيد من </span> الاطلاع</h2>\r\n\r\n<div class=\"range offset-top-10 text-center range-xs-center\">\r\n<div class=\"cell-xs-12 cell-lg-12\">\r\n<div class=\"range text-md-left offset-top-10\">\r\n<div class=\"cell-xs-6 cell-md-3\">\r\n<div class=\"unit unit-sm unit-sm-horizontal text-sm-left\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"offset-top-10\">\r\n<h6 class=\"text-bold\"><a href=\"https://www.facebook.com/AinShams.University.EG/\">FaceBook</a></h6>\r\n\r\n<p style=\"white-space: nowrap; width: 170px; height: 80px; overflow: hidden; text-overflow: ellipsis; \"><a href=\"https://www.facebook.com/AinShams.University.EG/\">تتقدم جامعة عين شمس بأسمى آيات التهاني، وأصدق الأمنيات لفخامة الرئيس عبد الفتاح السيسي بمناسبة فوزه الساحق بفترة رئاسية ثانية في الانتخابات الرئاسية الاخيرة... </a></p>\r\n<a class=\"btn-ellipse  btn-icon-right btn-primary readMoreBtn\" href=\"https://www.facebook.com/AinShams.University.EG/\" style=\"margin-top: 5px;\"><span>االمزيد</span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 cell-md-3 offset-md-top-0\">\r\n<div class=\"unit unit-sm unit-sm-horizontal text-sm-left\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"offset-top-10\">\r\n<h6 class=\"text-bold\"><a href=\"https://twitter.com/ainshamsegypt\">Twitter</a></h6>\r\n\r\n<p style=\"white-space: nowrap; width: 170px; height: 80px; overflow: hidden; text-overflow: ellipsis; \"><a href=\"https://twitter.com/ainshamsegypt\">فتتح أ.د عبد الوهاب عزت رئيس جامعة عين شمس مؤتمر الجامعة السابع تحت عنوان عالمية وانطلاق، بحضور علي عبدالعال، رئيس مجلس النواب، ..........</a></p>\r\n<a class=\"btn-ellipse  btn-icon-right btn-primary readMoreBtn\" href=\"https://twitter.com/ainshamsegypt\"><span>المزيد</span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 cell-md-3 offset-top-50 offset-md-top-0\">\r\n<div class=\"unit unit-sm unit-sm-horizontal text-sm-left\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"offset-top-10\">\r\n<h6 class=\"text-bold\"><a href=\"https://twitter.com/ainshamsegypt\">Youtube</a></h6>\r\n\r\n<p style=\"white-space: nowrap; width: 170px; height: 80px; overflow: hidden; text-overflow: ellipsis; \"><a href=\"https://twitter.com/ainshamsegypt\">كلمة السيد الاستاذ الدكتور / عبدالوهاب </a><br />\r\n<br />\r\n&nbsp;</p>\r\n<a class=\"btn-ellipse  btn-icon-right btn-primary readMoreBtn\" href=\"https://twitter.com/ainshamsegypt\"><span>المزيد</span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 cell-md-3 offset-top-50 offset-md-top-0\">\r\n<div class=\"unit unit-sm unit-sm-horizontal text-sm-left\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"offset-top-10\">\r\n<h6 class=\"text-bold\"><a href=\"www.radioainshams.com\">Radio Ain Shams</a></h6>\r\n\r\n<p style=\" height: 80px;  \"><a href=\"https://goo.gl/SL6n2P\">اسمعونا علي </a> : Playstore<br />\r\n<a href=\"https://goo.gl/oZNb3N\">اسمعونا علي</a> : Applestore<br />\r\n<br />\r\n&nbsp;</p>\r\n<a class=\"btn-ellipse  btn-icon-right btn-primary readMoreBtn\" href=\"www.radioainshams.com\"><span>المزيد</span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 9, 'ar'),
(19, 1, '<section class=\"text-center bg-index-body\" style=\"background-color: white;\">\r\n          <div class=\"shell\">\r\n            <div class=\"range range-xs-center range-sm-left offset-top-0\">\r\n              <div class=\"cell-xs-10 cell-sm-7 section-image-aside section-image-aside-right\">\r\n                <div class=\"section-image-aside-img veil reveal-sm-block view-animate zoomInSmall delay-04\" style=\"background-image: url(http://localhost:8000/themes/asu/images/ASU-ON.jpg);\"></div>\r\n                <div class=\"section-image-aside-body section-70 section-md-114 inset-md-right-70 inset-lg-right-110\">\r\n                  <h2 class=\"home-headings-custom text-bold view-animate fadeInLeftSm delay-04\"><span class=\"first-word\">ASU </span>Facts</h2>\r\n                  <div class=\"offset-top-35 offset-md-top-60 view-animate fadeInLeftSm delay-06\"> Below are some interesting facts about Ain Shams university .</div>\r\n                  <div class=\"text-center text-xs-left\">\r\n                    <div class=\"range range-xs-center range-md-left offset-top-65 counters\">\r\n                      <div class=\"cell-xs-6 view-animate fadeInLeftSm delay-08\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi mdi-trophy-award\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary\"><span class=\"counter\" data-speed=\"1250\" data-from=\"0\" data-to=\"200\"></span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">Top 200 in Times Higher Education GoldenAge Universities</h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                      <div class=\"cell-xs-6 offset-top-65 offset-xs-top-0 view-animate fadeInLeftSm delay-04\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi fa-star-o\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary\"><span class=\"counter\" data-speed=\"1250\" data-from=\"0\" data-to=\"4\"></span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">4 Stars QS Ranking </h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                      <div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi mdi-domain\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary offset-top-5\"><span class=\"counter\" data-step=\"200\" data-from=\"100\" data-to=\"701\"></span><span>+</span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">Top In  701-800 Shanghai Academic Ranking</h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                      <div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi mdi-domain\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary offset-top-5\"><span class=\"counter\" data-step=\"500\" data-from=\"0\" data-to=\"16\"></span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">College </h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                      <div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi mdi-domain\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary offset-top-5\"><span class=\"counter\" data-step=\"500\" data-from=\"0\" data-to=\"3\"></span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">Postgraduate Institute </h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                      <div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi mdi-account-multiple-outline\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary offset-top-5\"><span class=\"counter\" data-step=\"50000\" data-from=\"0\" data-to=\"20000\"></span><span>+</span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">Faculty members</h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                      <div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-06\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi mdi-account-multiple-outline\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary offset-top-5\"><span class=\"counter\" data-step=\"300000\" data-from=\"0\" data-to=\"250000\"></span><span>+</span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">Students</h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                      \r\n                      <div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi mdi-domain\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary offset-top-5\"><span class=\"counter\" data-step=\"5\" data-from=\"0\" data-to=\"29\"></span><span>+</span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">Joint Programs with international Programs </h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                      <div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\">\r\n                        <!-- Counter type 1-->\r\n                        <div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n                          <div class=\"unit-left\"><span class=\"icon icon-md text-madison mdi mdi-account-multiple-outline\"></span></div>\r\n                          <div class=\"unit-body\">\r\n                            <div class=\"h3 text-bold text-primary offset-top-5\"><span class=\"counter\" data-step=\"50000\" data-from=\"0\" data-to=\"2000\"></span><span>+</span></div>\r\n                            <div class=\"offset-top-3\">\r\n                              <h6 class=\"text-black font-accent text-bold\">International Students</h6>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </section>', 10, 'en'),
(20, 1, '<section class=\"text-center bg-index-body\">\r\n<div class=\"shell\">\r\n<div class=\"range range-xs-center range-sm-right offset-top-0\">\r\n<div class=\"cell-xs-10 cell-sm-7 section-image-aside section-image-aside-left\">\r\n<div class=\"section-image-aside-img veil reveal-sm-block view-animate zoomInSmall delay-04\" style=\"background-image: url(http://localhost:8000/themes/asu/images/ASU-ON.jpg);\">&nbsp;</div>\r\n\r\n<div class=\"section-image-aside-body section-70 section-md-114 inset-md-left-70 inset-lg-left-110\">\r\n<h2 class=\"home-headings-custom text-bold view-animate fadeInLeftSm delay-04\">الجامعة في ارقام</h2>\r\n\r\n<div class=\"offset-top-35 offset-md-top-60 view-animate fadeInLeftSm delay-06\">أرقام مهمة حول جامعة عين شمس.</div>\r\n\r\n<div class=\"text-center text-xs-left\" id=\"facts\">\r\n<div class=\"range range-xs-center range-md-left offset-top-65 counters\">\r\n<div class=\"cell-xs-6 view-animate fadeInLeftSm delay-08\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary\">&nbsp;</div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">ضمن أفضل 200 جامعة في العصر الذهبي للجامعات</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 offset-top-65 offset-xs-top-0 view-animate fadeInLeftSm delay-04\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary\">&nbsp;</div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">حاصلة على 4 نجوم في تصنيف QS</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary offset-top-5\"><span>+</span></div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">ضمن أفضل 701- 800 جامعة في تصنيف شنغهاي</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary offset-top-5\">&nbsp;</div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">كلية</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary offset-top-5\">&nbsp;</div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">معاهد دراسات عليا</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary offset-top-5\"><span>+</span></div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">عضو هيئة تدريس</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-06\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary offset-top-5\"><span>+</span></div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">طالب</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary offset-top-5\"><span>+</span></div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">برنامج دولي مشترك</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"cell-xs-6 offset-top-65 view-animate fadeInLeftSm delay-1\"><!-- Counter type 1-->\r\n<div class=\"unit unit-xs-horizontal unit-responsive-md counter-type-2\">\r\n<div class=\"unit-left\">&nbsp;</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"h3 text-bold text-primary offset-top-5\"><span>+</span></div>\r\n\r\n<div class=\"offset-top-3\">\r\n<h6 class=\"text-black font-accent text-bold\">طالب وافد</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 10, 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `blog__categories`
--

DROP TABLE IF EXISTS `blog__categories`;
CREATE TABLE IF NOT EXISTS `blog__categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog__categories`
--

INSERT INTO `blog__categories` (`id`, `created_at`, `updated_at`) VALUES
(1, '2018-06-23 04:16:29', '2018-06-23 04:16:29'),
(2, '2018-06-23 04:17:21', '2018-06-23 04:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `blog__category_translations`
--

DROP TABLE IF EXISTS `blog__category_translations`;
CREATE TABLE IF NOT EXISTS `blog__category_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  KEY `blog__category_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog__category_translations`
--

INSERT INTO `blog__category_translations` (`id`, `name`, `slug`, `category_id`, `locale`) VALUES
(1, 'Events', 'events', 1, 'en'),
(2, 'أحداث', 'events', 1, 'ar'),
(3, 'News', 'news', 2, 'en'),
(4, 'أخبار', 'news', 2, 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `blog__posts`
--

DROP TABLE IF EXISTS `blog__posts`;
CREATE TABLE IF NOT EXISTS `blog__posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog__posts_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog__posts`
--

INSERT INTO `blog__posts` (`id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2018-06-23 04:47:23', '2018-06-23 04:47:23'),
(2, 1, 2, '2018-06-23 04:50:43', '2018-06-23 04:50:43'),
(3, 2, 2, '2018-06-23 07:17:44', '2018-06-23 07:17:44'),
(4, 2, 2, '2018-06-23 07:26:21', '2018-06-23 07:26:21'),
(5, 2, 2, '2018-06-23 07:27:28', '2018-06-23 07:27:28'),
(6, 2, 2, '2018-06-23 07:28:20', '2018-06-23 07:28:20'),
(7, 1, 2, '2018-06-24 02:38:03', '2018-06-24 02:38:03'),
(8, 1, 2, '2018-06-24 02:39:26', '2018-06-24 02:39:26'),
(9, 1, 2, '2018-06-24 02:40:34', '2018-06-24 02:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `blog__post_translations`
--

DROP TABLE IF EXISTS `blog__post_translations`;
CREATE TABLE IF NOT EXISTS `blog__post_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog__post_translations_post_id_locale_unique` (`post_id`,`locale`),
  KEY `blog__post_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog__post_translations`
--

INSERT INTO `blog__post_translations` (`id`, `post_id`, `locale`, `title`, `slug`, `content`) VALUES
(1, 1, 'en', 'Bola', 'bola', '<p>test test test&nbsp;</p>'),
(2, 1, 'ar', 'بولا', 'news', '<p>بولا بولا</p>'),
(3, 2, 'en', 'Bola Events', 'bola-events', '<div class=\"cell-sm-6 cell-md-3 cell-xl-3\">\r\n<article class=\"post-event\">\r\n<div class=\"post-event-img-overlay\"><img alt=\"\" class=\"img-responsive\" height=\"300\" src=\"http://localhost:8000/themes/asu/images/blog/events-01-420x420.jpg\" width=\"420\" />\r\n<div class=\"post-event-overlay context-dark\">\r\n<div class=\"offset-top-20\"><a class=\"btn btn-primary\" href=\"events/bola-events\">Learn More</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"unit unit-lg unit-lg-horizontal\">\r\n<div class=\"unit-left\">\r\n<div class=\"post-event-meta text-center\">\r\n<div class=\"h3 text-bold reveal-inline-block reveal-lg-block\">2</div>\r\n\r\n<p class=\"reveal-inline-block reveal-lg-block\">April</p>\r\n<span class=\"text-bold reveal-inline-block reveal-lg-block inset-left-10 inset-lg-left-0\">5:00pm</span></div>\r\n</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"post-event-body text-lg-left\">\r\n<h6><a href=\"events/bola-events\">the 7th International Conference of Ain Shams University </a></h6>\r\n\r\n<ul class=\"list-inline list-inline-xs\">\r\n	<li><a href=\"#team-member-profile.html\"><span class=\"inset-left-10 text-dark text-middle\">Dr. Farouk El-Baz</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>'),
(4, 2, 'ar', 'بولا', 'bola-events', '<div class=\"cell-sm-6 cell-md-3 cell-xl-3\">\r\n<article class=\"post-event\">\r\n<div class=\"post-event-img-overlay\"><img alt=\"asu\" class=\"img-responsive\" height=\"300\" src=\"http://localhost:8000/themes/asu/images/blog/events-01-420x420.jpg\" width=\"420\" />\r\n<div class=\"post-event-overlay context-dark\">\r\n<div class=\"offset-top-20\"><a class=\"btn btn-primary\" href=\"events/bola-events\">أعرف المزيد</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"unit unit-lg unit-lg-horizontal\">\r\n<div class=\"unit-left\">\r\n<div class=\"post-event-meta text-center\">\r\n<div class=\"h3 text-bold reveal-inline-block reveal-lg-block\">2</div>\r\n\r\n<p class=\"reveal-inline-block reveal-lg-block\">ابريل</p>\r\n<span class=\"text-bold reveal-inline-block reveal-lg-block inset-left-10 inset-lg-left-0\">5:00م</span></div>\r\n</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"post-event-body text-lg-left\">\r\n<h6><a href=\"events/bola-events\">المؤتمر الدولي السابع لجامعة عين شمس </a></h6>\r\n\r\n<ul class=\"list-inline list-inline-xs\">\r\n	<li><a href=\"#team-member-profile.html\"><span class=\"inset-left-10 text-dark text-middle\">Dr. Farouk El-Baz</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>'),
(5, 3, 'en', '2nd news', '2nd-news', '<p>hi, second news</p>'),
(6, 3, 'ar', 'الخبر الثاني', '2nd-news', '<p>الخبر الثاني</p>'),
(7, 4, 'en', '3rd-news', '3rd-news', '<p>hello again</p>'),
(8, 4, 'ar', 'تالت خبر', '3rd-news', '<p>خبر خبر خبر خبر خبر خبر</p>'),
(9, 5, 'en', 'abdullah', 'abdullah', '<p>4th newwwssssss</p>'),
(10, 5, 'ar', 'خبر رابع', 'خبر رابع', '<p>خبررررررر</p>'),
(11, 6, 'en', '5th newws', '5th-newws', '<p>new new new</p>'),
(12, 6, 'ar', 'خامس خبر', '5th-newws', '<p>هذا خبر</p>'),
(13, 7, 'en', 'event 2', 'event-2', '<div class=\"cell-sm-6 cell-md-3 cell-xl-3\">\r\n<article class=\"post-event\">\r\n<div class=\"post-event-img-overlay\"><img alt=\"\" class=\"img-responsive\" height=\"300\" src=\"http://localhost:8000/themes/asu/images/blog/events-01-420x420.jpg\" width=\"420\" />\r\n<div class=\"post-event-overlay context-dark\">\r\n<div class=\"offset-top-20\"><a class=\"btn btn-primary\" href=\"events/event-2\">Learn More</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"unit unit-lg unit-lg-horizontal\">\r\n<div class=\"unit-left\">\r\n<div class=\"post-event-meta text-center\">\r\n<div class=\"h3 text-bold reveal-inline-block reveal-lg-block\">2</div>\r\n\r\n<p class=\"reveal-inline-block reveal-lg-block\">April</p>\r\n<span class=\"text-bold reveal-inline-block reveal-lg-block inset-left-10 inset-lg-left-0\">5:00pm</span></div>\r\n</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"post-event-body text-lg-left\">\r\n<h6><a href=\"events/event-2\">the 7th International Conference of Ain Shams University </a></h6>\r\n\r\n<ul class=\"list-inline list-inline-xs\">\r\n	<li><a href=\"#team-member-profile.html\"><span class=\"inset-left-10 text-dark text-middle\">Dr. Farouk El-Baz</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>'),
(14, 7, 'ar', 'حدث 2', 'event-2', '<div class=\"cell-sm-6 cell-md-3 cell-xl-3\">\r\n<article class=\"post-event\">\r\n<div class=\"post-event-img-overlay\"><img alt=\"asu\" class=\"img-responsive\" height=\"300\" src=\"http://localhost:8000/themes/asu/images/blog/events-01-420x420.jpg\" width=\"420\" />\r\n<div class=\"post-event-overlay context-dark\">\r\n<div class=\"offset-top-20\"><a class=\"btn btn-primary\" href=\"events/event-2\">أعرف المزيد</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"unit unit-lg unit-lg-horizontal\">\r\n<div class=\"unit-left\">\r\n<div class=\"post-event-meta text-center\">\r\n<div class=\"h3 text-bold reveal-inline-block reveal-lg-block\">2</div>\r\n\r\n<p class=\"reveal-inline-block reveal-lg-block\">ابريل</p>\r\n<span class=\"text-bold reveal-inline-block reveal-lg-block inset-left-10 inset-lg-left-0\">5:00م</span></div>\r\n</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"post-event-body text-lg-left\">\r\n<h6><a href=\"events/event-2\">المؤتمر الدولي السابع لجامعة عين شمس </a></h6>\r\n\r\n<ul class=\"list-inline list-inline-xs\">\r\n	<li><a href=\"#team-member-profile.html\"><span class=\"inset-left-10 text-dark text-middle\">Dr. Farouk El-Baz</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>'),
(15, 8, 'en', 'event 3', 'event-3', '<div class=\"cell-sm-6 cell-md-3 cell-xl-3\">\r\n<article class=\"post-event\">\r\n<div class=\"post-event-img-overlay\"><img alt=\"\" class=\"img-responsive\" src=\"http://localhost:8000/assets/media/received-10213087611368831.jpeg\" style=\"width: 420px; height: 300px;\" />\r\n<div class=\"post-event-overlay context-dark\">\r\n<div class=\"offset-top-20\"><a class=\"btn btn-primary\" href=\"events/event-3\">Learn More</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"unit unit-lg unit-lg-horizontal\">\r\n<div class=\"unit-left\">\r\n<div class=\"post-event-meta text-center\">\r\n<div class=\"h3 text-bold reveal-inline-block reveal-lg-block\">7</div>\r\n\r\n<p class=\"reveal-inline-block reveal-lg-block\">May</p>\r\n<span class=\"text-bold reveal-inline-block reveal-lg-block inset-left-10 inset-lg-left-0\">10:00pm</span></div>\r\n</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"post-event-body text-lg-left\">\r\n<h6><a href=\"events/event-3\">the 7th International Conference of Ain Shams University </a></h6>\r\n\r\n<ul class=\"list-inline list-inline-xs\">\r\n	<li><a href=\"#team-member-profile.html\"><span class=\"inset-left-10 text-dark text-middle\">Dr. Abdullah Ali</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>'),
(16, 8, 'ar', 'حدث 3', 'event-3', '<div class=\"cell-sm-6 cell-md-3 cell-xl-3\">\r\n<article class=\"post-event\">\r\n<div class=\"post-event-img-overlay\"><img alt=\"asu\" class=\"img-responsive\" height=\"300\" src=\"http://localhost:8000/themes/asu/images/blog/events-01-420x420.jpg\" width=\"420\" />\r\n<div class=\"post-event-overlay context-dark\">\r\n<div class=\"offset-top-20\"><a class=\"btn btn-primary\" href=\"events/event-3\">أعرف المزيد</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"unit unit-lg unit-lg-horizontal\">\r\n<div class=\"unit-left\">\r\n<div class=\"post-event-meta text-center\">\r\n<div class=\"h3 text-bold reveal-inline-block reveal-lg-block\">2</div>\r\n\r\n<p class=\"reveal-inline-block reveal-lg-block\">ابريل</p>\r\n<span class=\"text-bold reveal-inline-block reveal-lg-block inset-left-10 inset-lg-left-0\">5:00م</span></div>\r\n</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"post-event-body text-lg-left\">\r\n<h6><a href=\"events/event-3\">جامعة عين شمس فوق </a></h6>\r\n\r\n<ul class=\"list-inline list-inline-xs\">\r\n	<li><a href=\"#team-member-profile.html\"><span class=\"inset-left-10 text-dark text-middle\">Dr. Farouk El-Baz</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>'),
(17, 9, 'en', 'event 4', 'event-4', '<div class=\"cell-sm-6 cell-md-3 cell-xl-3\">\r\n<article class=\"post-event\">\r\n<div class=\"post-event-img-overlay\"><img alt=\"\" class=\"img-responsive\" height=\"300\" src=\"http://localhost:8000/themes/asu/images/blog/events-01-420x420.jpg\" width=\"420\" />\r\n<div class=\"post-event-overlay context-dark\">\r\n<div class=\"offset-top-20\"><a class=\"btn btn-primary\" href=\"events/event-4\">Learn More</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"unit unit-lg unit-lg-horizontal\">\r\n<div class=\"unit-left\">\r\n<div class=\"post-event-meta text-center\">\r\n<div class=\"h3 text-bold reveal-inline-block reveal-lg-block\">2</div>\r\n\r\n<p class=\"reveal-inline-block reveal-lg-block\">April</p>\r\n<span class=\"text-bold reveal-inline-block reveal-lg-block inset-left-10 inset-lg-left-0\">5:00pm</span></div>\r\n</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"post-event-body text-lg-left\">\r\n<h6><a href=\"events/event-4\">the 7th International Conference of Ain Shams University </a></h6>\r\n\r\n<ul class=\"list-inline list-inline-xs\">\r\n	<li><a href=\"#team-member-profile.html\"><span class=\"inset-left-10 text-dark text-middle\">Dr. Farouk El-Baz</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>'),
(18, 9, 'ar', 'حدث 4', 'event-4', '<div class=\"cell-sm-6 cell-md-3 cell-xl-3\">\r\n<article class=\"post-event\">\r\n<div class=\"post-event-img-overlay\"><img alt=\"asu\" class=\"img-responsive\" height=\"300\" src=\"http://localhost:8000/themes/asu/images/blog/events-01-420x420.jpg\" width=\"420\" />\r\n<div class=\"post-event-overlay context-dark\">\r\n<div class=\"offset-top-20\"><a class=\"btn btn-primary\" href=\"events/event-4\">أعرف المزيد</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"unit unit-lg unit-lg-horizontal\">\r\n<div class=\"unit-left\">\r\n<div class=\"post-event-meta text-center\">\r\n<div class=\"h3 text-bold reveal-inline-block reveal-lg-block\">2</div>\r\n\r\n<p class=\"reveal-inline-block reveal-lg-block\">ابريل</p>\r\n<span class=\"text-bold reveal-inline-block reveal-lg-block inset-left-10 inset-lg-left-0\">5:00م</span></div>\r\n</div>\r\n\r\n<div class=\"unit-body\">\r\n<div class=\"post-event-body text-lg-left\">\r\n<h6><a href=\"events/event-4\">المؤتمر الدولي السابع لجامعة عين شمس </a></h6>\r\n\r\n<ul class=\"list-inline list-inline-xs\">\r\n	<li><a href=\"#team-member-profile.html\"><span class=\"inset-left-10 text-dark text-middle\">Dr. Farouk El-Baz</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard__widgets`
--

DROP TABLE IF EXISTS `dashboard__widgets`;
CREATE TABLE IF NOT EXISTS `dashboard__widgets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widgets` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard__widgets_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media__files`
--

DROP TABLE IF EXISTS `media__files`;
CREATE TABLE IF NOT EXISTS `media__files` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_folder` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mimetype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media__files`
--

INSERT INTO `media__files` (`id`, `is_folder`, `filename`, `path`, `extension`, `mimetype`, `filesize`, `folder_id`, `created_at`, `updated_at`) VALUES
(6, 0, '69002.png', '/assets/media/69002.png', 'png', 'image/png', '49653', '0', '2018-06-15 07:58:42', '2018-06-15 07:58:42'),
(7, 0, 'bg-clean-pic-01.jpg', '/assets/media/bg-clean-pic-01.jpg', 'jpg', 'image/jpeg', '222993', '0', '2018-06-15 08:07:12', '2018-06-15 08:07:12'),
(8, 0, 'asu-logo.png', '/assets/media/asu-logo.png', 'png', 'image/png', '10128', '0', '2018-06-16 19:30:19', '2018-06-16 19:30:19'),
(9, 0, 'home-01-620-350.jpg', '/assets/media/home-01-620-350.jpg', 'jpg', 'image/jpeg', '74318', '0', '2018-06-21 07:47:12', '2018-06-21 07:47:12'),
(10, 0, '1.jpg', '/assets/media/1.jpg', 'jpg', 'image/jpeg', '49220', '0', '2018-06-22 04:51:29', '2018-06-22 04:51:29'),
(11, 0, '2.jpg', '/assets/media/2.jpg', 'jpg', 'image/jpeg', '63635', '0', '2018-06-22 04:51:34', '2018-06-22 04:51:34'),
(12, 0, '3.jpg', '/assets/media/3.jpg', 'jpg', 'image/jpeg', '66903', '0', '2018-06-22 04:51:37', '2018-06-22 04:51:37'),
(13, 0, '4.jpg', '/assets/media/4.jpg', 'jpg', 'image/jpeg', '58115', '0', '2018-06-22 04:51:38', '2018-06-22 04:51:38'),
(14, 0, '5.jpg', '/assets/media/5.jpg', 'jpg', 'image/jpeg', '60252', '0', '2018-06-22 04:51:41', '2018-06-22 04:51:41'),
(15, 0, '6.jpg', '/assets/media/6.jpg', 'jpg', 'image/jpeg', '75757', '0', '2018-06-22 04:51:43', '2018-06-22 04:51:43'),
(16, 0, '7.jpg', '/assets/media/7.jpg', 'jpg', 'image/jpeg', '60409', '0', '2018-06-22 04:51:46', '2018-06-22 04:51:46'),
(17, 0, '8.jpg', '/assets/media/8.jpg', 'jpg', 'image/jpeg', '70431', '0', '2018-06-22 04:51:47', '2018-06-22 04:51:47'),
(18, 0, 'parallax-03.jpg', '/assets/media/parallax-03.jpg', 'jpg', 'image/jpeg', '112818', '0', '2018-06-22 05:19:16', '2018-06-22 05:19:16'),
(19, 0, '1.png', '/assets/media/1.png', 'png', 'image/png', '65122', '0', '2018-06-22 05:19:42', '2018-06-22 05:19:42'),
(20, 0, '2.png', '/assets/media/2.png', 'png', 'image/png', '62088', '0', '2018-06-22 05:23:54', '2018-06-22 05:23:54'),
(21, 0, '4.png', '/assets/media/4.png', 'png', 'image/png', '55669', '0', '2018-06-22 05:24:25', '2018-06-22 05:24:25'),
(22, 0, '3.png', '/assets/media/3.png', 'png', 'image/png', '83902', '0', '2018-06-22 05:24:56', '2018-06-22 05:24:56'),
(23, 0, 'received-10213087611368831.jpeg', '/assets/media/received-10213087611368831.jpeg', 'jpeg', 'image/jpeg', '338259', '0', '2018-06-24 06:02:50', '2018-06-24 06:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `media__file_translations`
--

DROP TABLE IF EXISTS `media__file_translations`;
CREATE TABLE IF NOT EXISTS `media__file_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_attribute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media__file_translations_file_id_locale_unique` (`file_id`,`locale`),
  KEY `media__file_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media__imageables`
--

DROP TABLE IF EXISTS `media__imageables`;
CREATE TABLE IF NOT EXISTS `media__imageables` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media__imageables`
--

INSERT INTO `media__imageables` (`id`, `file_id`, `imageable_id`, `imageable_type`, `zone`, `order`, `created_at`, `updated_at`) VALUES
(1, 18, 3, 'Modules\\Blog\\Entities\\Post', 'thumbnail', NULL, '2018-06-23 07:17:45', '2018-06-23 07:17:45'),
(2, 14, 1, 'Modules\\Blog\\Entities\\Post', 'thumbnail', NULL, '2018-06-23 07:24:36', '2018-06-23 07:24:36'),
(3, 18, 4, 'Modules\\Blog\\Entities\\Post', 'thumbnail', NULL, '2018-06-23 07:26:22', '2018-06-23 07:26:22'),
(4, 16, 5, 'Modules\\Blog\\Entities\\Post', 'thumbnail', NULL, '2018-06-23 07:27:28', '2018-06-23 07:27:28'),
(5, 8, 6, 'Modules\\Blog\\Entities\\Post', 'thumbnail', NULL, '2018-06-23 07:29:24', '2018-06-23 07:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `menu__menuitems`
--

DROP TABLE IF EXISTS `menu__menuitems`;
CREATE TABLE IF NOT EXISTS `menu__menuitems` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu__menuitems_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menuitems`
--

INSERT INTO `menu__menuitems` (`id`, `menu_id`, `page_id`, `position`, `target`, `link_type`, `class`, `module_name`, `parent_id`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `is_root`, `icon`) VALUES
(1, 1, NULL, 0, NULL, 'page', '', NULL, NULL, NULL, NULL, NULL, '2018-06-16 18:59:18', '2018-06-16 18:59:18', 1, NULL),
(2, 1, 2, 0, '_self', 'internal', NULL, NULL, 1, NULL, NULL, NULL, '2018-06-16 19:00:44', '2018-06-21 06:14:01', 0, NULL),
(3, 1, NULL, 3, '_self', 'external', NULL, NULL, 1, NULL, NULL, NULL, '2018-06-16 21:26:12', '2018-06-21 06:14:28', 0, NULL),
(4, 1, NULL, 2, '_self', 'page', NULL, NULL, 1, NULL, NULL, NULL, '2018-06-21 06:13:05', '2018-06-21 06:14:01', 0, NULL),
(5, 1, 2, 0, '_self', 'page', NULL, NULL, 4, NULL, NULL, NULL, '2018-06-21 06:13:45', '2018-06-21 06:14:04', 0, NULL),
(6, 1, NULL, 1, '_self', 'page', NULL, NULL, 1, NULL, NULL, NULL, '2018-06-21 06:14:18', '2018-06-21 06:14:28', 0, NULL),
(7, 1, NULL, 0, '_blank', 'external', NULL, NULL, 4, NULL, NULL, NULL, '2018-06-21 06:19:25', '2018-06-21 06:19:25', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu__menuitem_translations`
--

DROP TABLE IF EXISTS `menu__menuitem_translations`;
CREATE TABLE IF NOT EXISTS `menu__menuitem_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menuitem_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu__menuitem_translations_menuitem_id_locale_unique` (`menuitem_id`,`locale`),
  KEY `menu__menuitem_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menuitem_translations`
--

INSERT INTO `menu__menuitem_translations` (`id`, `menuitem_id`, `locale`, `status`, `title`, `url`, `uri`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 0, 'root', NULL, NULL, '2018-06-16 18:59:18', '2018-06-16 18:59:18'),
(2, 1, 'ar', 0, 'root', NULL, NULL, '2018-06-16 18:59:18', '2018-06-16 18:59:18'),
(3, 2, 'en', 1, 'Bola', NULL, 'bola', '2018-06-16 19:00:44', '2018-06-16 19:00:44'),
(4, 2, 'ar', 1, 'بولا', NULL, 'bola-arabic', '2018-06-16 19:00:44', '2018-06-16 19:00:44'),
(5, 3, 'en', 1, 'test', 'asnd,asmnd,asmnd', NULL, '2018-06-16 21:26:12', '2018-06-16 21:26:12'),
(6, 3, 'ar', 1, 'test', 'adhkasjhdkjasd', NULL, '2018-06-16 21:26:12', '2018-06-16 21:26:12'),
(7, 4, 'en', 1, 'Abdullah', NULL, NULL, '2018-06-21 06:13:05', '2018-06-21 06:13:05'),
(8, 4, 'ar', 0, NULL, NULL, NULL, '2018-06-21 06:13:06', '2018-06-21 06:13:06'),
(9, 5, 'en', 1, 'Abdullah 2', NULL, 'bola/bola', '2018-06-21 06:13:46', '2018-06-21 06:17:56'),
(10, 5, 'ar', 0, NULL, NULL, 'bola-arabic/bola-arabic', '2018-06-21 06:13:46', '2018-06-21 06:15:21'),
(11, 6, 'en', 1, 'test', NULL, NULL, '2018-06-21 06:14:18', '2018-06-21 06:18:51'),
(12, 6, 'ar', 0, NULL, NULL, NULL, '2018-06-21 06:14:18', '2018-06-21 06:14:18'),
(13, 7, 'en', 1, 'facebook', 'http://www.facebook.com', NULL, '2018-06-21 06:19:25', '2018-06-21 06:20:11'),
(14, 7, 'ar', 0, NULL, NULL, NULL, '2018-06-21 06:19:25', '2018-06-21 06:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu__menus`
--

DROP TABLE IF EXISTS `menu__menus`;
CREATE TABLE IF NOT EXISTS `menu__menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menus`
--

INSERT INTO `menu__menus` (`id`, `name`, `primary`, `created_at`, `updated_at`) VALUES
(1, 'Main', 0, '2018-06-16 18:59:17', '2018-06-16 21:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu__menu_translations`
--

DROP TABLE IF EXISTS `menu__menu_translations`;
CREATE TABLE IF NOT EXISTS `menu__menu_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu__menu_translations_menu_id_locale_unique` (`menu_id`,`locale`),
  KEY `menu__menu_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menu_translations`
--

INSERT INTO `menu__menu_translations` (`id`, `menu_id`, `locale`, `status`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 1, 'Main', '2018-06-16 18:59:17', '2018-06-16 21:23:29'),
(2, 1, 'ar', 1, 'Main-arabic', '2018-06-16 18:59:17', '2018-06-16 21:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2016_06_24_193447_create_user_tokens_table', 1),
(3, '2014_10_14_200250_create_settings_table', 2),
(4, '2014_10_15_191204_create_setting_translations_table', 2),
(5, '2015_06_18_170048_make_settings_value_text_field', 2),
(6, '2015_10_22_130947_make_settings_name_unique', 2),
(7, '2017_09_17_164631_make_setting_value_nullable', 2),
(8, '2014_11_03_160015_create_menus_table', 3),
(9, '2014_11_03_160138_create_menu-translations_table', 3),
(10, '2014_11_03_160753_create_menuitems_table', 3),
(11, '2014_11_03_160804_create_menuitem_translation_table', 3),
(12, '2014_12_17_185301_add_root_column_to_menus_table', 3),
(13, '2015_09_05_100142_add_icon_column_to_menuitems_table', 3),
(14, '2016_01_26_102307_update_icon_column_on_menuitems_table', 3),
(15, '2016_08_01_142345_add_link_type_colymn_to_menuitems_table', 3),
(16, '2016_08_01_143130_add_class_column_to_menuitems_table', 3),
(17, '2017_09_18_192639_make_title_field_nullable_menu_table', 3),
(18, '2014_10_26_162751_create_files_table', 4),
(19, '2014_10_26_162811_create_file_translations_table', 4),
(20, '2015_02_27_105241_create_image_links_table', 4),
(21, '2015_12_19_143643_add_sortable', 4),
(22, '2017_09_20_144631_add_folders_columns_on_files_table', 4),
(23, '2014_11_30_191858_create_pages_tables', 5),
(24, '2017_10_13_103344_make_status_field_nullable_on_page_translations_table', 5),
(25, '2015_04_02_184200_create_widgets_table', 6),
(26, '2013_04_09_062329_create_revisions_table', 7),
(27, '2015_11_20_184604486385_create_translation_translations_table', 7),
(28, '2015_11_20_184604743083_create_translation_translation_translations_table', 7),
(29, '2015_12_01_094031_update_translation_translations_table_with_index', 7),
(30, '2016_07_12_181155032011_create_tag_tags_table', 8),
(31, '2016_07_12_181155289444_create_tag_tag_translations_table', 8),
(32, '2014_09_27_170107_create_posts_table', 9),
(33, '2014_09_27_175411_create_post_translations_table', 9),
(34, '2014_09_27_175736_create_categories_table', 9),
(35, '2014_09_27_175804_create_category_translations_table', 9),
(36, '2015_05_29_180714_add_status_column_to_post_table', 9),
(37, '2015_04_01_180809_create_blocks_tables', 10);

-- --------------------------------------------------------

--
-- Table structure for table `page__pages`
--

DROP TABLE IF EXISTS `page__pages`;
CREATE TABLE IF NOT EXISTS `page__pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page__pages`
--

INSERT INTO `page__pages` (`id`, `is_home`, `template`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', '2018-06-14 00:05:35', '2018-06-21 08:07:00'),
(2, 0, 'default', '2018-06-16 18:58:12', '2018-06-16 18:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `page__page_translations`
--

DROP TABLE IF EXISTS `page__page_translations`;
CREATE TABLE IF NOT EXISTS `page__page_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page__page_translations_page_id_locale_unique` (`page_id`,`locale`),
  KEY `page__page_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page__page_translations`
--

INSERT INTO `page__page_translations` (`id`, `page_id`, `locale`, `title`, `slug`, `status`, `body`, `meta_title`, `meta_description`, `og_title`, `og_description`, `og_image`, `og_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Home page', 'home', '1', '<section><!-- Swiper-->\n<div class=\"swiper-container swiper-slider swiper-slider-3\" data-dragable=\"false\" data-height=\"100vh\" data-loop=\"false\" data-min-height=\"480px\" data-slide-effect=\"true\">\n<div class=\"swiper-wrapper\">\n<div class=\"swiper-slide\" data-slide-bg=\"images/slide-01-1920x1000.jpg\" style=\"background-position: 80% center;\">\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\n<div class=\"container\">\n<div class=\"range range-xs-center range-condensed\">\n<div class=\"cell-md-7 text-center cell-xs-10\">\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\n<h1 class=\"text-bold\">Welcome to Ain Shams University</h1>\n</div>\n\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\n<h5 class=\"text-regular font-default\">Ain Shams University, as the third Egyptian university, was founded in July 1950 under the name of &quot;Ibrahim Pasha University&quot;.</h5>\n</div>\n\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-madison btn-ellipse\" href=\"login-register.html\">Sign IN /Sign Up</a>\n\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\"><a class=\"btn btn-primary btn-ellipse veil reveal-lg-inline-block\" href=\"academics.html\">Learn More</a></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"swiper-slide\" data-slide-bg=\"images/slide-02-1920x1000.jpg\" style=\"background-position: 80% center;\">\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\n<div class=\"container\">\n<div class=\"range range-xs-center range-lg-left range-condensed\">\n<div class=\"cell-md-7 text-md-left cell-xs-10\">\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\n<h1 class=\"text-bold\">Building Your Knowledge</h1>\n</div>\n\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\n<h5 class=\"text-regular font-default\">The Central Library; was founded in 1950, upon the foundation of Ain Shams University . It is an academic library, so its visitors are University staff members, students, researchers,and adminstrators from the university.</h5>\n</div>\n\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"libraries.html\">learn More</a>\n\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"swiper-slide\" data-slide-bg=\"images/StudentActivities/29103472_1823136577979019_5336317236862779392_n.jpg\" style=\"background-position: 80% center;\">\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\n<div class=\"container\">\n<div class=\"range range-xs-center range-lg-right range-condensed\">\n<div class=\"cell-md-6 text-md-left cell-xs-10\">\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\n<h1 class=\"text-bold\">Different Kinds of Activities &amp;&amp; Student Activities</h1>\n</div>\n\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\n<h5 class=\"text-regular font-default\">While faculty staff thought of establishing club where they can practice their activity and to meet them outside the university so they saw it the right thing to solve the existing faculty association and transfer balance to create a faculty club.</h5>\n</div>\n\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"activities.html\">Learn More</a>\n\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"swiper-slide\" data-slide-bg=\"images/slide-02-1920x1000.jpg\" style=\"background-position: 80% center;\">\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\n<div class=\"container\">\n<div class=\"range range-xs-center range-lg-left range-condensed\">\n<div class=\"cell-md-7 text-md-left cell-xs-10\">\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\n<h1 class=\"text-bold\">Building Your Knowledge</h1>\n</div>\n\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\n<h5 class=\"text-regular font-default\">The Central Library; was founded in 1950, upon the foundation of Ain Shams University . It is an academic library, so its visitors are University staff members, students, researchers,and adminstrators from the university.</h5>\n</div>\n\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"libraries.html\">Learn More </a>\n\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"swiper-slide\" data-slide-bg=\"images/StudentActivities/201802018662.jpg\" style=\"background-position: 80% center;\">\n<div class=\"swiper-slide-caption header-transparent-slide-caption\">\n<div class=\"container\">\n<div class=\"range range-xs-center range-lg-right range-condensed\">\n<div class=\"cell-md-6 text-md-left cell-xs-10\">\n<div data-caption-animate=\"fadeInUp\" data-caption-delay=\"100\" data-caption-duration=\"1700\">\n<h1 class=\"text-bold\">Different Kinds of Activities &amp;&amp; Student Activities</h1>\n</div>\n\n<div class=\"offset-top-20 offset-xs-top-40 offset-xl-top-60\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"150\" data-caption-duration=\"1700\">\n<h5 class=\"text-regular font-default\">While faculty staff thought of establishing club where they can practice their activity and to meet them outside the university so they saw it the right thing to solve the existing faculty association and transfer balance to create a faculty club.</h5>\n</div>\n\n<div class=\"offset-top-20 offset-xl-top-40\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"400\" data-caption-duration=\"1700\"><a class=\"btn btn-ellipse btn-madison\" href=\"activities.html\">Learn More</a>\n\n<div class=\"inset-xs-left-30 reveal-lg-inline-block\">&gt;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', 'Home page', NULL, NULL, NULL, NULL, NULL, '2018-06-14 00:05:35', '2018-06-19 17:49:32'),
(2, 2, 'en', 'bola', 'bola', '1', '<p><span class=\"marker\">bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 18:58:12', '2018-06-16 18:58:12'),
(3, 2, 'ar', 'بولا', 'bola-arabic', '1', '<p>أناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأنا</p>\n\n<p>أناأناأناأناأناأناأناأناأناأناأناأناأناأنا</p>\n\n<p>أناأناأناأناأناأناأناأناأنا</p>\n\n<p>أناأناأناأناأنا</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 18:58:12', '2018-06-16 18:58:12'),
(4, 1, 'ar', 'الرئيسية', 'الرئيسية', NULL, '<h1><b>الصفحة الرئيسية لجامعة عين شمس</b></h1>\n\n<h2>اكتب هنا&nbsp;</h2>\n\n<p><img alt=\"\" src=\"http://localhost:8000/assets/media/bg-clean-pic-01_mediumThumb.jpg\" style=\"width: 180px; height: 101px;\" /></p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 19:17:58', '2018-06-18 23:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

DROP TABLE IF EXISTS `persistences`;
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'say8BJjxN9GgVGybdvZ79NAp7Y49m5uH', '2018-06-14 00:11:26', '2018-06-14 00:11:26'),
(2, 1, 'Qy7mfk6iEuDyj6iruVfXvgTRGVDcQYPD', '2018-06-14 00:12:03', '2018-06-14 00:12:03'),
(3, 1, 'amRRrj0tQoY1DTNIv4VnTumbovmz9pfr', '2018-06-14 00:12:09', '2018-06-14 00:12:09'),
(4, 1, 'fClqv5DLJjbCl0mLbCslFdVNQR4ksski', '2018-06-14 00:12:11', '2018-06-14 00:12:11'),
(5, 1, 'iKAKFPwlBy8bGSIlAyb9YYIuV3LLGYN3', '2018-06-14 00:12:13', '2018-06-14 00:12:13'),
(6, 1, 'DdJP52GUrg55en62Gv26KIrGLdFeI9Qh', '2018-06-14 00:12:39', '2018-06-14 00:12:39'),
(7, 1, 'kBmbS6s7Lecq4oRylRXrm3tmZY43w5vh', '2018-06-14 00:13:41', '2018-06-14 00:13:41'),
(8, 1, '2SEBvj8PmGlagyMpBYKmnqptkiRsm1rQ', '2018-06-14 00:14:06', '2018-06-14 00:14:06'),
(9, 1, 'loDf3qVvz8IXe9CDR2q2AHyEdSI9nvPU', '2018-06-14 00:14:57', '2018-06-14 00:14:57'),
(10, 1, 'cuRtUbSde183T2F0nYHefphPeaAo2yX2', '2018-06-14 00:15:07', '2018-06-14 00:15:07'),
(11, 1, '3teOynxSfZUIPZrOIADipM0rFDMJ59KE', '2018-06-14 00:15:08', '2018-06-14 00:15:08'),
(12, 1, 'htPuJWppO4mBabJDqzu0IGeTafA2RXb6', '2018-06-14 00:15:21', '2018-06-14 00:15:21'),
(13, 1, 'WlO7MRhy17qAZrZNIoSiA1Ad7shC6Eyk', '2018-06-14 00:15:33', '2018-06-14 00:15:33'),
(14, 1, 'EcYWKwp8tHaqzGZMRhWVw6MHhYrRnOwR', '2018-06-14 00:15:45', '2018-06-14 00:15:45'),
(15, 1, 'CxJFSx080JcujVlwNRMt2xh5i0hmklSw', '2018-06-15 03:23:04', '2018-06-15 03:23:04'),
(16, 1, 'E4FrCnnaSkqeLwk6hB9xhFiPEb04ajYW', '2018-06-15 03:23:11', '2018-06-15 03:23:11'),
(17, 1, 'XJyrMTSj3kZVkKKZb8KWtUc6IzqKctFD', '2018-06-15 03:26:05', '2018-06-15 03:26:05'),
(18, 1, '0yT8wAUsOMb6MGbYlanOiQp0fsZ50DrN', '2018-06-15 03:26:18', '2018-06-15 03:26:18'),
(19, 1, '5gBAhL8V3ian6k01GCz3AaswTP7VRisR', '2018-06-15 03:26:23', '2018-06-15 03:26:23'),
(20, 1, 'G8nRGtjGi4gscpKXmN7afA32Kk0vMdck', '2018-06-15 03:26:32', '2018-06-15 03:26:32'),
(21, 1, '6bWhpox2wb5HMWzlkw5pZs4qoz10fbDO', '2018-06-15 03:26:50', '2018-06-15 03:26:50'),
(22, 1, 'aAQ9IFrTQcS72g6r4jkBd2cNOHkx7NH9', '2018-06-15 06:09:08', '2018-06-15 06:09:08'),
(23, 1, 'GeD5VesLbEStf8lCOmihIIqV2emY6RUk', '2018-06-15 06:10:16', '2018-06-15 06:10:16'),
(24, 1, 'nrinv0XYXvAc2GJ8xbnh3ijZZk8x6qXT', '2018-06-15 06:10:34', '2018-06-15 06:10:34'),
(25, 1, 'UbSVpqvX58BcFLvMpP1HqEuAklIdJXty', '2018-06-15 06:10:41', '2018-06-15 06:10:41'),
(26, 1, 'GcChetkReocGiopuF1PIb3isgCAq4ufA', '2018-06-15 06:10:43', '2018-06-15 06:10:43'),
(27, 1, '2wXd5btkGQ8AtFM2UvG5bK5R6G0J0ph7', '2018-06-15 06:11:07', '2018-06-15 06:11:07'),
(28, 1, 'mJzbTxJe1uTFN4l1uXvfh2MQ8JB8ffy7', '2018-06-15 06:11:11', '2018-06-15 06:11:11'),
(29, 1, 'eSxi1DVBbZqiwsGiaQH2tx459tFVX8Pz', '2018-06-15 06:11:13', '2018-06-15 06:11:13'),
(30, 1, '4YbQFDLFjLNLYem0f5MW6iQ1BV1QWeWf', '2018-06-15 06:11:15', '2018-06-15 06:11:15'),
(31, 1, '727d1GdNa82J0S1qjqoy90j77XoxcJA8', '2018-06-15 06:12:16', '2018-06-15 06:12:16'),
(32, 1, 'AtpnAAAumUvUl3LGmfdwZ1SsDSDBtIn3', '2018-06-15 06:14:05', '2018-06-15 06:14:05'),
(33, 1, 'n2Ou53z6NAkC553bhsUb07qdJlHdUqCY', '2018-06-15 06:16:00', '2018-06-15 06:16:00'),
(34, 1, 'CTEK3Mfsu1lPecd9IDCTOgWGRi3gBDEL', '2018-06-15 06:16:19', '2018-06-15 06:16:19'),
(35, 1, 'WrqezA0PbXu35hf88VFFJYojAAr40J6g', '2018-06-15 06:16:36', '2018-06-15 06:16:36'),
(36, 1, 'OauvB11wWvCNdcypCFbKYwmjGGEB9aC7', '2018-06-15 06:16:42', '2018-06-15 06:16:42'),
(37, 1, 'W4tRyLjnPycUexPwTaYRrbxiYwubWnoj', '2018-06-15 06:17:48', '2018-06-15 06:17:48'),
(38, 1, 'AcCaQydgP886vpRF8SVcKUNg6sAPBoVb', '2018-06-15 06:19:28', '2018-06-15 06:19:28'),
(39, 1, 'VoNnFatmZ5rhQDDmqe39oFvDzpG1ISzE', '2018-06-15 06:19:34', '2018-06-15 06:19:34'),
(40, 1, 'UK4nx7mAJmzkrXFr5DALPDqUoWoBRe75', '2018-06-15 06:19:40', '2018-06-15 06:19:40'),
(41, 1, 'RFN1Xwivv1kZAxAlK9aLXddjA9GNaVcP', '2018-06-15 06:20:35', '2018-06-15 06:20:35'),
(42, 1, 'T8LwLeFybkL6VgDXkAdHrAVyIs4VtVSY', '2018-06-15 06:20:38', '2018-06-15 06:20:38'),
(43, 1, 'OuyNnlQ7jrnKPdncj7HIp83dazXEIGhq', '2018-06-15 06:20:40', '2018-06-15 06:20:40'),
(44, 1, 'XTsTrOPYoJJRyQcYT6NpmOMhj9FlMgdX', '2018-06-15 06:20:48', '2018-06-15 06:20:48'),
(45, 1, '7lr1GRbe1gxO3swWXXKW9YYfm6wnTsuv', '2018-06-15 06:20:50', '2018-06-15 06:20:50'),
(46, 1, 'yaOYjzmQRqZNqmuKnVgaA2aISG2PIYIZ', '2018-06-15 06:20:55', '2018-06-15 06:20:55'),
(47, 1, 'BtT1pIX9byhdCleTyVJibs2lhccSV8RB', '2018-06-15 06:21:00', '2018-06-15 06:21:00'),
(48, 1, 'AsEKXJs8OlgA9yRwiB7zMee0S5uDyaS5', '2018-06-15 06:21:02', '2018-06-15 06:21:02'),
(49, 1, 'XYYH38mag0OljSFgY6JWEK59pHwiM25L', '2018-06-15 06:43:59', '2018-06-15 06:43:59'),
(50, 1, 'gO3fdZhv1JSvFi8uySlAB71EUzdAikZp', '2018-06-15 06:53:41', '2018-06-15 06:53:41'),
(51, 1, 'uvjLJSPsmJvQ1L9P3DsTNUxvF3dYtqUs', '2018-06-15 06:57:27', '2018-06-15 06:57:27'),
(52, 1, 'OzjfJweNl2PbSagZrZxikYANZhgYNyky', '2018-06-15 06:57:37', '2018-06-15 06:57:37'),
(53, 1, '5HSaKbG2qrvtlCy6fWOZvvNRhAziZlDn', '2018-06-15 07:20:30', '2018-06-15 07:20:30'),
(54, 1, 'aexyhfYbe7s6K3lIw6FQDx9jlR5ec9aD', '2018-06-15 07:20:32', '2018-06-15 07:20:32'),
(55, 1, 'DWvJS5KhiSjUMpIao3ePmM7H19q7Mr7M', '2018-06-15 07:35:05', '2018-06-15 07:35:05'),
(56, 1, 'Sxb51BSDam8k4f2PTiFYReSiWubh3l7q', '2018-06-15 07:35:14', '2018-06-15 07:35:14'),
(57, 1, 'psHBqdvS1T8GV0MAk1Tk5s78i4FCOOIe', '2018-06-15 07:35:16', '2018-06-15 07:35:16'),
(58, 1, 'EPqEyfPUbqpNOmVp33cBdFqrGW1w4BZM', '2018-06-15 07:35:18', '2018-06-15 07:35:18'),
(59, 1, 'InBTGlqj8Kdey4uZwZbtfhWj7Sbd3knE', '2018-06-15 07:35:47', '2018-06-15 07:35:47'),
(60, 1, 'VWduzFQldLFKf7wN5Vu2YSVU7nTZLCwz', '2018-06-15 07:35:51', '2018-06-15 07:35:51'),
(61, 1, 'WpKPkCcL9lbtrXp15mMjehhIkKn57PZi', '2018-06-15 07:36:07', '2018-06-15 07:36:07'),
(62, 1, 'G1MzDJxEoWDRzCwz8oKiK98dXtN2ICbW', '2018-06-15 07:37:01', '2018-06-15 07:37:01'),
(63, 1, 'vGYblYuo462FaOiwKdhSbuwn8TAusDBX', '2018-06-15 07:37:14', '2018-06-15 07:37:14'),
(64, 1, 'UGBAXV2Jh2uF2Og0QFTFdW8XcHOHk1km', '2018-06-15 07:37:22', '2018-06-15 07:37:22'),
(65, 1, 'AKyE4695V1YW9SGnHNDW6rg4vMM1ufqY', '2018-06-15 07:39:22', '2018-06-15 07:39:22'),
(66, 1, 'j24j6lICuWoOKx4Ni2XtS1XZmo6A9A8G', '2018-06-15 07:39:31', '2018-06-15 07:39:31'),
(67, 1, 'YKvJy8itmNI56CwyKFDsTAee7wAhxHRI', '2018-06-15 07:39:33', '2018-06-15 07:39:33'),
(68, 1, 'yjx1lCWrR1ooTKHL3dJLrXh6bH1XnnOX', '2018-06-15 07:39:43', '2018-06-15 07:39:43'),
(69, 1, 'orzitSZ1VDqGdOnNnZQgTwh4qheqvE7f', '2018-06-15 07:39:45', '2018-06-15 07:39:45'),
(70, 1, 'vzwZYhX3qtV3bERo5HIFhhC1d0TlhfoN', '2018-06-15 07:39:47', '2018-06-15 07:39:47'),
(71, 1, 'uIlcD2Etcb5Fq3XnJBIZBhTlCJeFXKmL', '2018-06-15 07:42:06', '2018-06-15 07:42:06'),
(72, 1, 'TkHnl4uqOWeYkEa7NJEBUSF7zqvgLdQv', '2018-06-15 07:42:42', '2018-06-15 07:42:42'),
(73, 1, 'Ncrmuiha0magZIFmlqjfq6PAjWblM393', '2018-06-15 07:42:44', '2018-06-15 07:42:44'),
(74, 1, 'WP0jI5pNvGkUa9S97e3UrtAfkUQP9SFn', '2018-06-15 07:43:42', '2018-06-15 07:43:42'),
(75, 1, 'fVSIA3bvTFH2ITUEU22rH3UnhZuC4iKx', '2018-06-15 07:43:44', '2018-06-15 07:43:44'),
(76, 1, 'z7FyGy4fHXAEKAUasrQRU2R5ZLM61vhb', '2018-06-15 07:44:42', '2018-06-15 07:44:42'),
(77, 1, '1bgwn1FSG00gBz7O1P5xgfivl9in11J0', '2018-06-15 07:44:44', '2018-06-15 07:44:44'),
(78, 1, 'Q51r7GgMKDBIVJdDIyBpWOz2Kwf158uZ', '2018-06-15 07:44:50', '2018-06-15 07:44:50'),
(79, 1, 'bffKIwSh2kBJV78OXKnGbWpatyUKzHEi', '2018-06-15 07:45:30', '2018-06-15 07:45:30'),
(80, 1, 'RbKvamTkKGl0BllPesES49WnMTU0vzms', '2018-06-15 07:46:10', '2018-06-15 07:46:10'),
(81, 1, 'k3pqGvPhkdzE4jHvFpQhmrOkJ6CNSDoD', '2018-06-15 07:46:49', '2018-06-15 07:46:49'),
(82, 1, 'OZmZDUNJ9lHWRb4eHtbti9nsFECpDuD2', '2018-06-15 07:52:32', '2018-06-15 07:52:32'),
(83, 1, 'SaHMBz2X7chuDmToEow9hureUL8C5dF8', '2018-06-15 07:52:40', '2018-06-15 07:52:40'),
(84, 1, 'gf2B1rW4g60v3xSQfwy77y6saBqo15kc', '2018-06-15 07:52:45', '2018-06-15 07:52:45'),
(85, 1, '9jqEN2DKLAjcfD820LDy71gqUlEbM8H0', '2018-06-15 07:58:33', '2018-06-15 07:58:33'),
(86, 1, 'Z0NT9KZnI5T1VBuja2MlZQgUDHs5rR2B', '2018-06-15 07:58:42', '2018-06-15 07:58:42'),
(87, 1, 'hQVm9RdLwrkaFLWvWua0xROiL67ifV2X', '2018-06-15 07:58:44', '2018-06-15 07:58:44'),
(88, 1, 'abfvJX6gAJH30sW1VPhGQ6lBfIf0XTZ1', '2018-06-15 08:00:15', '2018-06-15 08:00:15'),
(89, 1, 'gK3TxgfRhDjkHhEZNR6q3USoY90BtnS6', '2018-06-15 08:04:01', '2018-06-15 08:04:01'),
(90, 1, '3IiUYYovbqc65YPLmXH2t6wAGRNwBlO4', '2018-06-15 08:04:08', '2018-06-15 08:04:08'),
(91, 1, 'i3dWTKav57vnNZVwPvFApNpvC0O6F4zp', '2018-06-15 08:04:18', '2018-06-15 08:04:18'),
(92, 1, 'k3NhZ8D1Qp7LHdLAPMweGEXyX4eOaQlx', '2018-06-15 08:04:20', '2018-06-15 08:04:20'),
(93, 1, '5N5Pe0q5WTLV1lcye5PYIe4dgVqcf8tn', '2018-06-15 08:04:22', '2018-06-15 08:04:22'),
(94, 1, '1eTXZPnpHKEZmfjRwV1GTeMLIZmen7s6', '2018-06-15 08:04:24', '2018-06-15 08:04:24'),
(95, 1, 'JMf2q0ND4yq8V8nCEEGXDcmqdCefxyuv', '2018-06-15 08:06:48', '2018-06-15 08:06:48'),
(96, 1, 'HLdyzWXNlL7Wc7LLbG012zPdnZIhJWqP', '2018-06-15 08:07:12', '2018-06-15 08:07:12'),
(97, 1, '67ttRPm8fZuBOjNjeZ9vjt7qjEKNV4rP', '2018-06-15 08:07:15', '2018-06-15 08:07:15'),
(98, 1, '9C09jYUaiIEnffkZD5mJ3JINhdR08Bad', '2018-06-15 08:07:28', '2018-06-15 08:07:28'),
(99, 1, '8Af1Mty8quX67dsnqUpyzWtTMNKvrlV1', '2018-06-15 08:07:34', '2018-06-15 08:07:34'),
(100, 1, 'oXxnJ2tYw2Y3g71DnT40jePp3UYh1W4H', '2018-06-15 08:07:36', '2018-06-15 08:07:36'),
(101, 1, '6DBkpMyJvLLJup196SWaNl9ePme0Po9f', '2018-06-15 08:07:39', '2018-06-15 08:07:39'),
(102, 1, 'vxdkMhxCidW6cAngx1BXRw8Il6zcqclK', '2018-06-15 08:08:07', '2018-06-15 08:08:07'),
(103, 1, '8MpkL1OGVzphO1VastvzONbFIFWEnsEQ', '2018-06-15 08:08:08', '2018-06-15 08:08:08'),
(104, 1, 'tpAk3T9BUrH59EQjjlxDf9NNz7x0yBEu', '2018-06-15 08:08:44', '2018-06-15 08:08:44'),
(105, 1, 'e0KfpD9mkrnPkWycsG7669AnM1yMqhVx', '2018-06-15 08:08:48', '2018-06-15 08:08:48'),
(106, 1, 'h8t8yTXYCcx36VVzGvSfUmPlLfQ47i2r', '2018-06-15 08:08:50', '2018-06-15 08:08:50'),
(107, 1, 'LD2SmXOie4qRLYb1sUDk0Rw4OUExJ5DE', '2018-06-15 08:08:52', '2018-06-15 08:08:52'),
(108, 1, 'MivtiTXAzIvX4XdNCsnz9VtIekUWLv7V', '2018-06-15 08:09:14', '2018-06-15 08:09:14'),
(109, 1, 'ixt36g4UonCwqpnVITFmlLM2F2G8X0fn', '2018-06-15 08:10:01', '2018-06-15 08:10:01'),
(110, 1, 'QyPKD5d2nRilK3qOB84XDvQzWwaTBjbR', '2018-06-15 08:10:08', '2018-06-15 08:10:08'),
(111, 1, '4eQT06bEEXdblZFSnnmbuQg78QpjLW8X', '2018-06-15 08:13:06', '2018-06-15 08:13:06'),
(112, 1, 'lRISJkMj6CCqjTsqnyKjvzJpjwYSclT8', '2018-06-15 08:13:19', '2018-06-15 08:13:19'),
(113, 1, 'CQEhf8nfq7jjEOmB24mljgyKFVFH4epj', '2018-06-15 08:14:39', '2018-06-15 08:14:39'),
(114, 1, 'tvsqLxYFDbmjSm7bRn7MvSuuUixoWjZM', '2018-06-15 08:16:17', '2018-06-15 08:16:17'),
(115, 1, 'fq7fDX4yNbTM9nVN3DF9jUaKLumU3czF', '2018-06-15 08:16:19', '2018-06-15 08:16:19'),
(116, 1, '69ETbAdGh1z4bQjuklZkP6i9CG2JgfUh', '2018-06-15 08:16:20', '2018-06-15 08:16:20'),
(117, 1, 'QTzwz2Qny41Rv9LtDTtcYl2vK53dYeHQ', '2018-06-15 08:29:15', '2018-06-15 08:29:15'),
(118, 1, 'ZvaPQdj8YMWxIQLuVsmisXBvNNcWShrY', '2018-06-15 08:32:08', '2018-06-15 08:32:08'),
(119, 1, 'glJPgGbRvpc4Q0w3qkfaynHuTeG8ZSUb', '2018-06-15 08:33:15', '2018-06-15 08:33:15'),
(120, 1, 'OzNkLWWmQRI57NTrOxumwF40cydQc4OS', '2018-06-15 08:33:41', '2018-06-15 08:33:41'),
(121, 1, 'CZ4AjHEe0JwvA4My7GX0AjbbPgwj7MTJ', '2018-06-15 08:33:53', '2018-06-15 08:33:53'),
(123, 1, 'daukjsFUuKGrAI0Sv1EWv60UehXF9s9v', '2018-06-16 18:56:01', '2018-06-16 18:56:01'),
(124, 1, 'pdMuCJCjAIIL1d0LTQ9Y9SKovV9pgCnS', '2018-06-16 18:56:09', '2018-06-16 18:56:09'),
(125, 1, 'X9snx09ZgdlC1lS153980sCwPyFKJl9F', '2018-06-16 18:57:10', '2018-06-16 18:57:10'),
(126, 1, 'ioY7mznec67vF8XGxM3TzxEdr7DWg6pO', '2018-06-16 18:58:12', '2018-06-16 18:58:12'),
(127, 1, '6CjAnWihfKoqqlQbxhOkM0tLJmTmG1YE', '2018-06-16 18:58:15', '2018-06-16 18:58:15'),
(128, 1, 'flUwBNDoQkntpy6l3r0CEm1pnbWczSbJ', '2018-06-16 19:02:56', '2018-06-16 19:02:56'),
(129, 1, 'gyfAkmOOGjeSJ9urqOzldDySfQNOpl7a', '2018-06-16 19:03:03', '2018-06-16 19:03:03'),
(130, 1, 'chLVofaGXVuCp4rIM03LW2UxoYEb2Lml', '2018-06-16 19:03:06', '2018-06-16 19:03:06'),
(131, 1, 'CjcAjdVYU1sQboB2llr3JMiETQ0HbqlT', '2018-06-16 19:03:08', '2018-06-16 19:03:08'),
(132, 1, 'OVRWceeeMC3J8pmXI9gdeJl5QbPtyg48', '2018-06-16 19:04:52', '2018-06-16 19:04:52'),
(133, 1, '8OCXeAJ7g4N7w5bZhDAwchBySHzWOchY', '2018-06-16 19:05:05', '2018-06-16 19:05:05'),
(134, 1, 'P0LKVG3Uv8QfYcNV4Zxa9j7NH8cv3mhx', '2018-06-16 19:05:50', '2018-06-16 19:05:50'),
(135, 1, 'CSAxnth2GFAtf4S5afvhRSAUfg0mJ3UZ', '2018-06-16 19:05:59', '2018-06-16 19:05:59'),
(136, 1, '47Los5m0wUdUWtdMJyZvymVt5AhhjDxq', '2018-06-16 19:06:04', '2018-06-16 19:06:04'),
(137, 1, 'SCVfsUr44s8yKVAbqFQEgpHgmhTfLRWq', '2018-06-16 19:06:05', '2018-06-16 19:06:05'),
(138, 1, 'GydejUQidVJHnS7AqYupDeKb5r4QQoAh', '2018-06-16 19:06:06', '2018-06-16 19:06:06'),
(139, 1, 'GwnATGSHLwaaV1s7k7FSNnUcjbcac9G2', '2018-06-16 19:06:55', '2018-06-16 19:06:55'),
(140, 1, 'zKNGaVsq10GgCIn9vbWxIITmYzqC2EWJ', '2018-06-16 19:07:57', '2018-06-16 19:07:57'),
(141, 1, '4rSzwBUY9TVnEV9FZP5wKjZRmQOH40hq', '2018-06-16 19:10:01', '2018-06-16 19:10:01'),
(142, 1, 'Dxt4xqsHzCUsO8NycBXjyDR3oN5clTDU', '2018-06-16 19:10:02', '2018-06-16 19:10:02'),
(143, 1, 'JT9hq0C6ToGnUDOOPRclFUAHnctvIdbZ', '2018-06-16 19:10:03', '2018-06-16 19:10:03'),
(144, 1, 'C7kPJH2wgbZ13gf7MyE8BwtGro4LZqV4', '2018-06-16 19:10:27', '2018-06-16 19:10:27'),
(145, 1, 'zirEYka911FiuKRFiZBzElrvIq7IKaZ7', '2018-06-16 19:10:29', '2018-06-16 19:10:29'),
(146, 1, 'rpdUxq20BCd0OJ0TWXgXW36kvUE48Vr6', '2018-06-16 19:10:35', '2018-06-16 19:10:35'),
(147, 1, 'huZvsTUU6aAHVX8OzZjfb1ZEmeN0oaE6', '2018-06-16 19:10:39', '2018-06-16 19:10:39'),
(148, 1, 'FqX1vkCZ5yF3KSgTOWEmfyExIXNhEB67', '2018-06-16 19:10:41', '2018-06-16 19:10:41'),
(149, 1, 'AstMvsotfTvhXJwOPCfhXaJ4G7oRiESu', '2018-06-16 19:10:42', '2018-06-16 19:10:42'),
(150, 1, '5wOJ9xOTpiSnNn0omC7tsYDin09LmShf', '2018-06-16 19:11:23', '2018-06-16 19:11:23'),
(151, 1, 'ZgnMGeygXXeyR22rWmHv8P92S7MJqTuO', '2018-06-16 19:11:43', '2018-06-16 19:11:43'),
(152, 1, 'ueYvgvuqu5wrdUcgosJY4CprxcOxsrht', '2018-06-16 19:12:35', '2018-06-16 19:12:35'),
(153, 1, 'GTURwAORQqR14epCtqtxKhP229w1qVRF', '2018-06-16 19:12:48', '2018-06-16 19:12:48'),
(154, 1, 'Viz1V52e4JSgSXQybaFbDAeSz2cIePXR', '2018-06-16 19:16:39', '2018-06-16 19:16:39'),
(155, 1, 'G5LXiLdgYdn2v7ScefeMPfzVY7SD1ruZ', '2018-06-16 19:17:17', '2018-06-16 19:17:17'),
(156, 1, 'ApSvnGCSJaDHUYdNJzKpMq83lClgjjWe', '2018-06-16 19:17:18', '2018-06-16 19:17:18'),
(157, 1, '7Pvpj8mUp5hn5ooxftC81DyONuooQQi3', '2018-06-16 19:17:18', '2018-06-16 19:17:18'),
(158, 1, 'w5YYnTR407UAfBkWMwitVIcIrlX5SA4w', '2018-06-16 19:17:58', '2018-06-16 19:17:58'),
(159, 1, 'eFODzDyHSjv410qezSZ1wxNnkCPqSffY', '2018-06-16 19:18:00', '2018-06-16 19:18:00'),
(160, 1, 'SG2IaOn6lezeuiY42oEXC3NRhBI1EKUv', '2018-06-16 19:27:33', '2018-06-16 19:27:33'),
(161, 1, '4ooeBKZDyUWtuZ1pcr8baJWw58dafaLE', '2018-06-16 19:29:51', '2018-06-16 19:29:51'),
(162, 1, 'pVbfGmXgDHSza1As0VT4iqTY0KU2qRfQ', '2018-06-16 19:30:19', '2018-06-16 19:30:19'),
(163, 1, 'qVNtWNgW3zcPEQziSPFAJh5Vt4fLryg3', '2018-06-16 19:30:24', '2018-06-16 19:30:24'),
(164, 1, 'w6ciI1H94z1j03hNrVapiI2tQSENr5Sx', '2018-06-16 19:30:38', '2018-06-16 19:30:38'),
(165, 1, 'ufPmxvhO9JAAslMGxmgK5hWxiRI6SyCn', '2018-06-16 19:31:24', '2018-06-16 19:31:24'),
(166, 1, 'LAk8qvdb6dic92c48ONnxjTErFDrQuqa', '2018-06-16 21:03:18', '2018-06-16 21:03:18'),
(167, 1, 'cVDe9D6oDt23stfmWTL0mSbHdwAVRhGh', '2018-06-16 21:23:47', '2018-06-16 21:23:47'),
(168, 1, 'eFQ8nspHy0YZYoITdgtmsu32GSwgbfe8', '2018-06-16 21:25:39', '2018-06-16 21:25:39'),
(169, 1, 'qvCCDctZkDenHJsR780SP7t10oqruZVV', '2018-06-16 21:25:43', '2018-06-16 21:25:43'),
(170, 1, 'xQRx6so023Clmnb56d4tyrwh7h2zTiwt', '2018-06-16 21:26:20', '2018-06-16 21:26:20'),
(171, 1, 'HjGLFpvZDMBl9DwlLRbn2tKsrvrkrfi5', '2018-06-16 21:32:07', '2018-06-16 21:32:07'),
(172, 1, 'ElqKqryp29lLrQmvHxzwIJf3LqRGAZ5S', '2018-06-16 21:32:14', '2018-06-16 21:32:14'),
(173, 1, 'V3s7XBpxMxb3w0NtK5TnjcnZUWZJ2kis', '2018-06-16 21:32:15', '2018-06-16 21:32:15'),
(174, 1, 'LchvhJmnX2DqAxUxfVRJBlJTHzdJdv0F', '2018-06-16 21:32:16', '2018-06-16 21:32:16'),
(175, 1, 'hIkZGUzFydwwCPQIg2xPEbf8JfWPPD12', '2018-06-16 21:32:46', '2018-06-16 21:32:46'),
(176, 1, 'y0fU41GBQh7aZ7vUStAiPKg69qOp4cJT', '2018-06-17 17:25:26', '2018-06-17 17:25:26'),
(177, 1, 'grS0ZHkC9D9HnuYXELt5zZTZMnesGYNp', '2018-06-17 17:25:50', '2018-06-17 17:25:50'),
(178, 1, 'JGay24vxU2rcsUy7WXezINNV2oLdWVML', '2018-06-17 17:26:05', '2018-06-17 17:26:05'),
(179, 1, '2UapNkKJhWwFghVopb6pJMrxbns2ioCb', '2018-06-17 17:26:20', '2018-06-17 17:26:20'),
(180, 1, 'VbSOPdxNrBvxeRgb6MdG6TsyX605rN9O', '2018-06-18 23:00:03', '2018-06-18 23:00:03'),
(181, 1, 'i7PinXwFz7WDlLi4lLZIHuSn2IYC7H1h', '2018-06-18 23:00:44', '2018-06-18 23:00:44'),
(182, 1, 'MiSlaaLhjGC8fgx5fVeWFLfFdckPOvZM', '2018-06-18 23:00:56', '2018-06-18 23:00:56'),
(183, 1, 'eS83CcyCqb23hW5I6XqY4ath4PeoOWHX', '2018-06-18 23:09:58', '2018-06-18 23:09:58'),
(184, 1, 'vDMwW8g2qSIhy1AvPkQzgA7mXavf3HAX', '2018-06-18 23:10:07', '2018-06-18 23:10:07'),
(185, 1, 'CBntsqg0ssDtsXebb4JuxyKojbp6QsS1', '2018-06-18 23:10:09', '2018-06-18 23:10:09'),
(186, 1, '9It01lXHrEy1VWHP5I9rIGZO0Zjn7c9y', '2018-06-18 23:10:10', '2018-06-18 23:10:10'),
(187, 1, 'JEpZrf51xZmwHXJBEvXvsJctdvX7uwyz', '2018-06-18 23:11:27', '2018-06-18 23:11:27'),
(188, 1, 'kJnVnvseX5OOeOiHH9JkLRInVwBNgTld', '2018-06-18 23:11:30', '2018-06-18 23:11:30'),
(189, 1, 't1MJnZdcbthPwkFWlyqU3oEW08kPIhAH', '2018-06-18 23:14:50', '2018-06-18 23:14:50'),
(190, 1, '1JbLnVwXYonkbnN931aqRpK29uEbPwjQ', '2018-06-18 23:14:54', '2018-06-18 23:14:54'),
(191, 1, 'yk7U4tLrWnRBfO8DiCpxTDbbfJVNVBtJ', '2018-06-18 23:14:56', '2018-06-18 23:14:56'),
(192, 1, 'HZuneiUwtqUB2ga9wNrjNRDfpsO2GhIc', '2018-06-18 23:15:14', '2018-06-18 23:15:14'),
(193, 1, 'lIfbkXmwwnW4z70EtQAk5doeYUl2aSlA', '2018-06-18 23:15:20', '2018-06-18 23:15:20'),
(194, 1, 'oWSUShNS9U5LE2L3kaR2oPm346EEaJlp', '2018-06-18 23:15:21', '2018-06-18 23:15:21'),
(195, 1, 'jx0S5kWlKth4mAZwiDwotzGfYSVJrcx5', '2018-06-18 23:15:24', '2018-06-18 23:15:24'),
(196, 1, 'xgn2qL43rGclQ3M8uJdtP0f8127qXRVE', '2018-06-18 23:15:37', '2018-06-18 23:15:37'),
(197, 1, '8yKv4IJ4UfLChdcOwBFkves8BPyT25Pe', '2018-06-18 23:15:43', '2018-06-18 23:15:43'),
(198, 1, 'HTMGzEozE3FDBhbX1IgXrxQiNZGglibE', '2018-06-18 23:15:44', '2018-06-18 23:15:44'),
(199, 1, 'ovahE0Yl6gQHA6OKC18ZeGpFtlf3zQ7c', '2018-06-18 23:15:46', '2018-06-18 23:15:46'),
(200, 1, 'Msykv7XzuTHaz2tWQvIPAGFOebsV8prE', '2018-06-18 23:16:38', '2018-06-18 23:16:38'),
(201, 1, 'YdXhzk5lQCZLhPseas5PkKn8nPF3web0', '2018-06-18 23:16:41', '2018-06-18 23:16:41'),
(202, 1, '4ZI6qETwYny49YKluQgTAov487oEWQDj', '2018-06-19 00:11:33', '2018-06-19 00:11:33'),
(203, 1, '64do35Ywx7HCuPoSJRE41aEc2PTrX5Ue', '2018-06-19 00:11:35', '2018-06-19 00:11:35'),
(204, 1, 'L740jDhPG0D3wAj66Cv1ox7i94aHCKNH', '2018-06-19 00:11:36', '2018-06-19 00:11:36'),
(205, 1, 'R9EwnMjLISO5zHqiRRyfjuWONzygbmh4', '2018-06-19 00:12:55', '2018-06-19 00:12:55'),
(206, 1, 'Cucoyct8YrAtHquXwMklta7aQFi2Zhli', '2018-06-19 00:13:07', '2018-06-19 00:13:07'),
(207, 1, 'ENXDfPzAdSbvIKg4YurxxKHw1VD55pou', '2018-06-19 00:13:26', '2018-06-19 00:13:26'),
(208, 1, 'qE0YhgPhEFTFijpgjNuVRUki7TMLMCAz', '2018-06-19 00:13:27', '2018-06-19 00:13:27'),
(209, 1, '5qouR41etQKMFc5RIy4ZYdHNtdVVHqVe', '2018-06-19 00:13:29', '2018-06-19 00:13:29'),
(210, 1, 'tE42RAdj8hatkx2mo3lU7llv1GSBUqZJ', '2018-06-19 00:15:06', '2018-06-19 00:15:06'),
(211, 1, 'TWCk8eBTRWUPAAiC27vPy5aCkwALJgNX', '2018-06-19 00:15:09', '2018-06-19 00:15:09'),
(212, 1, 'RpOqF6bjuviNagdUubOcYVZkqHEWzrtj', '2018-06-19 00:28:04', '2018-06-19 00:28:04'),
(213, 1, 'w1fpSt8EORzASuowdKo0t7WgiAbrttFZ', '2018-06-19 00:28:11', '2018-06-19 00:28:11'),
(214, 1, 'FhXmK6YDZ3wM5K6b6bLGYrCfNpasf6dH', '2018-06-19 00:28:14', '2018-06-19 00:28:14'),
(215, 1, 'aPrhnAhYPLDWuEWFqJZoUQ1sGzMyG4NC', '2018-06-19 00:28:15', '2018-06-19 00:28:15'),
(216, 1, 'WfzdPpOo7n8zHuUAF5vL1gdzFuXaRfl3', '2018-06-19 00:29:26', '2018-06-19 00:29:26'),
(217, 1, 'AomUMEVF1EdPKw0BTAu9Q9BNvGiNEaBn', '2018-06-19 00:29:36', '2018-06-19 00:29:36'),
(218, 1, '1QF5ARfeVUdoIl4EBMBab2G5TDzHVMGa', '2018-06-19 00:30:55', '2018-06-19 00:30:55'),
(219, 1, 'dm64jddG8xNwGBn5VnLYNGx3EWoHktRK', '2018-06-19 00:30:56', '2018-06-19 00:30:56'),
(220, 1, 'oRfJM5Iq5OYEoPrddnG6z3jwfZ2j0qC4', '2018-06-19 00:30:57', '2018-06-19 00:30:57'),
(221, 1, 'FDbqjcDJNvijvRIb3O4CGkUM6Nv9i5ZB', '2018-06-19 01:13:37', '2018-06-19 01:13:37'),
(222, 1, 'ZocivQneWu7QvTg5nZFYRs0G3DeZxSWp', '2018-06-19 01:13:38', '2018-06-19 01:13:38'),
(223, 1, 'nzdNwnk4WWfddXW5Kx3NISDityEYp1NI', '2018-06-19 01:13:40', '2018-06-19 01:13:40'),
(224, 1, '63tsHNc1qWTBNWcu5wLnU1k3M4egAW0R', '2018-06-19 01:14:19', '2018-06-19 01:14:19'),
(225, 1, '965q5ZBBvFaSEsh1xjYbtENKdOR2EVtd', '2018-06-19 01:14:42', '2018-06-19 01:14:42'),
(226, 1, 'rR2az5EGacaS5mTASw3vRVYeaS4ICNnJ', '2018-06-19 17:45:16', '2018-06-19 17:45:16'),
(227, 1, 'zAg97uhID51rNcjwA8L1lfllCrRsAVxA', '2018-06-19 17:45:52', '2018-06-19 17:45:52'),
(228, 1, 'OXarSQ2vGgFD5m4WeDA7eixbntjFqmOL', '2018-06-19 17:45:57', '2018-06-19 17:45:57'),
(229, 1, 'BqVvK2pzUCjh9YKm0luDcMdOEwAAlD1Y', '2018-06-19 17:46:00', '2018-06-19 17:46:00'),
(230, 1, 'gsyygp8Oow4ScUBZgKp8QSXibJUq7YNy', '2018-06-19 17:46:02', '2018-06-19 17:46:02'),
(231, 1, 'gcqT2bjBTfv7Ll3eepOXAgePCQcWQYPi', '2018-06-19 17:47:06', '2018-06-19 17:47:06'),
(232, 1, 'ZnGkXH9EfAIrieQxpQG7M1QGWNFZLH8W', '2018-06-19 17:47:08', '2018-06-19 17:47:08'),
(233, 1, 'yFo3wLx5bZKfYARiNdGxrWti3s7uSImE', '2018-06-19 17:47:56', '2018-06-19 17:47:56'),
(234, 1, 'kkiynVPP08e0lsrQ6y19HjGzMNzQ5R6q', '2018-06-19 17:47:57', '2018-06-19 17:47:57'),
(235, 1, 'pyXQ4N0fsYx9icN9CuG0Q72K5FEMC7sO', '2018-06-19 17:47:59', '2018-06-19 17:47:59'),
(236, 1, 'olKSA4zSdOQV14tRYZQxjKcVAn0wefJq', '2018-06-19 17:48:30', '2018-06-19 17:48:30'),
(237, 1, 'FieKWoG6gQVoUq61X8vi1gcdx0PqPLCN', '2018-06-19 17:49:31', '2018-06-19 17:49:31'),
(238, 1, 'fdqCJN5ZO8wIe632iEvxxANq2IGNvKgW', '2018-06-19 17:49:34', '2018-06-19 17:49:34'),
(239, 1, 'YnVGFD5a4pHlUXCHbdRznPZQBtPFJoYS', '2018-06-19 17:49:40', '2018-06-19 17:49:40'),
(240, 1, '3YicvCf7WhA25EHz0SFOzbheLUFmuAyX', '2018-06-19 17:49:42', '2018-06-19 17:49:42'),
(241, 1, 'J5iZ29Rl0bKWgT7gLLl0tbwL60sqn5vo', '2018-06-19 17:49:43', '2018-06-19 17:49:43'),
(242, 1, '0HMu86KVOLMbBhb6tNld6x56ORhlydIQ', '2018-06-21 03:41:46', '2018-06-21 03:41:46'),
(243, 1, '1LIlr3F6wNEg2l7blWKwCKf8Q9TXJYOT', '2018-06-21 03:42:33', '2018-06-21 03:42:33'),
(244, 1, 'QKABF1w4MdH5oq4VS2SsoPhD3aKzpILc', '2018-06-21 03:42:40', '2018-06-21 03:42:40'),
(245, 1, 'nyzfOvbQYkiw6x4krdQfj5U9Kd032G4i', '2018-06-21 03:42:42', '2018-06-21 03:42:42'),
(246, 1, 'Di19I2L9gIWgiwRtSRMfmL8padsr8ldL', '2018-06-21 03:42:44', '2018-06-21 03:42:44'),
(247, 1, 'hdJ4byM4VqOxZ0fx3B1oUHuELs0Oz14l', '2018-06-21 03:42:58', '2018-06-21 03:42:58'),
(248, 1, 'vrVQFEWHdVud9tS04olKGt0E8svaHGHt', '2018-06-21 03:43:01', '2018-06-21 03:43:01'),
(249, 1, 'GxgGRldKBZ6RmDEd16zCWrALpO7aLlNL', '2018-06-21 03:43:21', '2018-06-21 03:43:21'),
(250, 1, 'FydazQakvkagfkcjU6rg9sO3j3pusfZ9', '2018-06-21 03:43:23', '2018-06-21 03:43:23'),
(251, 1, 'fsGbIHReDWEteen3kUP2LL52BB9dNfla', '2018-06-21 03:43:25', '2018-06-21 03:43:25'),
(252, 1, 'aNtQr4j8WUTGmv37C6bKdxbnDXD1iQmd', '2018-06-21 03:44:05', '2018-06-21 03:44:05'),
(253, 1, 'H9Um2DMH4avvzvvppSytd2jKjvSX6xfI', '2018-06-21 03:44:07', '2018-06-21 03:44:07'),
(254, 1, 'NZz97oXdBJTNraDpE3K82PXw79zgAHlr', '2018-06-21 06:11:09', '2018-06-21 06:11:09'),
(255, 1, 'xEdXkEIzVw6UCM3IeHSRrrUq5lNZYbdc', '2018-06-21 06:13:22', '2018-06-21 06:13:22'),
(256, 1, 'CdMf6ptNtFcoHERpd7TxtRj6yY8OENvs', '2018-06-21 06:13:25', '2018-06-21 06:13:25'),
(257, 1, 'U5wzzzEfqYGa95Lx2uDaE0KISx8Qhn3v', '2018-06-21 06:13:54', '2018-06-21 06:13:54'),
(258, 1, 'qjY689MfdxfYm50r9pzsCnq7ykdF88QA', '2018-06-21 06:13:56', '2018-06-21 06:13:56'),
(259, 1, 'hdyM77Xryqi9DnVQNMQgy9zZvd84UBSR', '2018-06-21 06:13:57', '2018-06-21 06:13:57'),
(260, 1, 'yh2xceMQsxEcWWRxfZrbK1W1XyEFdxo7', '2018-06-21 06:13:59', '2018-06-21 06:13:59'),
(261, 1, 'xwnDIyZEFSxSjeypPZPhbCHxTYG40hrh', '2018-06-21 06:14:01', '2018-06-21 06:14:01'),
(262, 1, 'Zow8cMsHxdyGsxOPgMmW5P2ElphZtwR7', '2018-06-21 06:14:04', '2018-06-21 06:14:04'),
(263, 1, 'IjyeSAOB6HWgL5JwqCe1f5dev3EmXKNk', '2018-06-21 06:14:28', '2018-06-21 06:14:28'),
(264, 1, 'moX2vX8lMX5SA1dBOHCzvwK953MhXqIZ', '2018-06-21 06:16:05', '2018-06-21 06:16:05'),
(265, 1, 'UKKUQo45d3dZCqqO0rGTwWxXkBVKDYwi', '2018-06-21 06:16:07', '2018-06-21 06:16:07'),
(266, 1, '1fybaO7QUPeAenFSnyLqtZ9fV9CmAdQf', '2018-06-21 06:16:09', '2018-06-21 06:16:09'),
(267, 1, 'zUjj8uJ3dh6GuWDkIOJey4JyJ3jB76Iq', '2018-06-21 06:16:17', '2018-06-21 06:16:17'),
(268, 1, 'jElGMsfgoavkHbwhI3Ow6rrVh3M2iJ5P', '2018-06-21 06:16:26', '2018-06-21 06:16:26'),
(269, 1, 'SiLkGZ0DQ1Y04RCIClVuDWukVJvbEPEq', '2018-06-21 06:17:39', '2018-06-21 06:17:39'),
(270, 1, 'W8bcknHYXS7MTsfPs4vnDDFP5tYv02uJ', '2018-06-21 06:17:44', '2018-06-21 06:17:44'),
(271, 1, 'V4EotZGcQ0a5i6nWnGhkPJYh2YjJHR5a', '2018-06-21 07:47:12', '2018-06-21 07:47:12'),
(272, 1, 'E8ClkVQQ6H8iGoM2qtTN7y49Qc3ptaUJ', '2018-06-21 07:52:27', '2018-06-21 07:52:27'),
(273, 1, 'JuFU589GUAFcbjTzXdRhOIu7EzoCYLwX', '2018-06-21 07:52:36', '2018-06-21 07:52:36'),
(274, 1, 'uM7vhonPg8szxaKIeEmQ4dxfW9HnytJ6', '2018-06-21 07:52:37', '2018-06-21 07:52:37'),
(275, 1, 'Iwi7IpJiyRUg1AAFGBgD6fOHvEAhNUPy', '2018-06-21 07:52:39', '2018-06-21 07:52:39'),
(276, 1, 'QUBsgB0onmdZyMafq8eFTrNcobIaa5n8', '2018-06-21 07:58:10', '2018-06-21 07:58:10'),
(277, 1, '0aTsD7kXO64tvZU78jG3fYxHA8zhnRQX', '2018-06-21 07:58:13', '2018-06-21 07:58:13'),
(278, 1, 'P7RQQJNwGIVClrh8ltL280LSyhuHCEP0', '2018-06-21 07:59:11', '2018-06-21 07:59:11'),
(279, 1, '9Cwyzt8aZ8pQipzJcBtRyz92cJ4RQEAb', '2018-06-21 07:59:12', '2018-06-21 07:59:12'),
(280, 1, 'XbVMEYZTjrKWHhwlgn8E2P24lw1AWfEe', '2018-06-21 07:59:14', '2018-06-21 07:59:14'),
(281, 1, 'Yu5T8fPcESwFlEOQ3UV2HyQQwjire208', '2018-06-21 07:59:22', '2018-06-21 07:59:22'),
(282, 1, '2tlFxedTBKt3HjB7v8k60QWsiDDsaAl6', '2018-06-21 07:59:25', '2018-06-21 07:59:25'),
(283, 1, 'EYv3OcI4RTVoAgcnMyPqTQfFkVVMRhyU', '2018-06-21 08:02:44', '2018-06-21 08:02:44'),
(284, 1, 'UVrIcnpbTDZUVkjjA0t3Xglyb6EyLIt4', '2018-06-21 08:02:46', '2018-06-21 08:02:46'),
(285, 1, 'gkiavNIaKWy00CFh6U82icndp1a8bRRN', '2018-06-21 08:02:48', '2018-06-21 08:02:48'),
(286, 1, 'VnPyj7nQFdlDylOfi03XXuRz6SZ7fKII', '2018-06-21 08:06:46', '2018-06-21 08:06:46'),
(287, 1, 'FTnYx2sRuNdaqIgtigxP9Z8hT09hnVBh', '2018-06-21 08:06:47', '2018-06-21 08:06:47'),
(288, 1, 'cVHNaH5keLc9iIsdqlMSQRMAlPlAZ57B', '2018-06-21 08:06:49', '2018-06-21 08:06:49'),
(289, 1, '2fwIN6BTdkZkrib3INLyHazgIYbCplKK', '2018-06-21 08:07:00', '2018-06-21 08:07:00'),
(290, 1, 'q6QbTd23Naoy0Oorug8omctPq8cApoBn', '2018-06-21 08:07:03', '2018-06-21 08:07:03'),
(291, 1, 'zoxPq8it8Ytum8qIfozu60YwYpxVmsZI', '2018-06-21 11:20:21', '2018-06-21 11:20:21'),
(292, 1, 'nIdySPXP0sjRaXPBY6H6FrNlxgp8V3NW', '2018-06-21 11:20:23', '2018-06-21 11:20:23'),
(293, 1, 'QgtYXuz24N7qZxQtUxHXzBXfzfSh0ZUc', '2018-06-21 11:20:25', '2018-06-21 11:20:25'),
(294, 1, '3WMWSj2jR2cbSWzchway6MvDyMGajThl', '2018-06-22 04:51:29', '2018-06-22 04:51:29'),
(295, 1, 'kQS4hxYc9ROYCF1fibrZI72gRMUgsC2e', '2018-06-22 04:51:33', '2018-06-22 04:51:33'),
(296, 1, '9aLT9QyxYPb627Yhy0JHNIf6VnebSm1e', '2018-06-22 04:51:36', '2018-06-22 04:51:36'),
(297, 1, 'jw1FocGw7AiUnhYlIML2LSNC1QjDiNS2', '2018-06-22 04:51:38', '2018-06-22 04:51:38'),
(298, 1, 'mvOlBiT1HNrwg2sbVY2ZTDO5UMKINOM4', '2018-06-22 04:51:41', '2018-06-22 04:51:41'),
(299, 1, 'nwJmZz26N3LpGVZhJPYfRby2OP3G7q4g', '2018-06-22 04:51:43', '2018-06-22 04:51:43'),
(300, 1, 'XxLc5iOVjEDVaDpuCSlOV4G4lSuR8mKK', '2018-06-22 04:51:45', '2018-06-22 04:51:45'),
(301, 1, '5DnWnppww8qOts9wS3lcwO6Ugu4ZdW8c', '2018-06-22 04:51:47', '2018-06-22 04:51:47'),
(302, 1, 'avyafmg6fbWzKdVC4Llpg8ov8Uq1dnFZ', '2018-06-22 05:19:16', '2018-06-22 05:19:16'),
(303, 1, 'r3YO06IiAqQ6al87NinAkJ5CGmAL6oCR', '2018-06-22 05:19:42', '2018-06-22 05:19:42'),
(304, 1, 'Jzrr9lRK2Zbe3Wa0XdqQbpuFriazVYG8', '2018-06-22 05:23:53', '2018-06-22 05:23:53'),
(305, 1, 'eBpHmpflW8dvaOv648TMb56LNKNeoI72', '2018-06-22 05:24:24', '2018-06-22 05:24:24'),
(306, 1, 'CCjMGfQowH0JMQbEcQ2xnMGvA39wpgV8', '2018-06-22 05:24:56', '2018-06-22 05:24:56'),
(307, 1, 'mUerScBTsH5uQTg6Ic2eOYS1OYsmEnAk', '2018-06-23 03:57:17', '2018-06-23 03:57:17'),
(308, 1, 'WSYaNINAhr92axNToPzRcIczVgryCOX7', '2018-06-23 05:11:18', '2018-06-23 05:11:18'),
(309, 1, '7Vym06yOkJC2Y6qhBdA7NJYt8IqLxJMU', '2018-06-23 05:11:45', '2018-06-23 05:11:45'),
(310, 1, 'HoK3RRInPd4cMAT1yKIYxBx0srf4fxGA', '2018-06-23 05:11:46', '2018-06-23 05:11:46'),
(311, 1, 'zoBOnKFK9Nda4Bf3qcJRxYSQptvZgml6', '2018-06-23 05:11:47', '2018-06-23 05:11:47'),
(312, 1, 'BMxvHYQZYHKfp1YMnAyjc0CWCQaVuMoK', '2018-06-23 05:12:16', '2018-06-23 05:12:16'),
(313, 1, 'znfkfR74oC6qNJS8j4Wa82n28rd6XN1R', '2018-06-23 05:12:19', '2018-06-23 05:12:19'),
(314, 1, 'h7dq6kHQQpOMByZa4EjlNj8QpoZDF8cB', '2018-06-23 05:12:59', '2018-06-23 05:12:59'),
(315, 1, 'U51yMJlJDGlVDr7d9PF3hZ2OkBElLg3K', '2018-06-23 05:13:00', '2018-06-23 05:13:00'),
(316, 1, '6zTKbqBExJ8O2L5T0fbUIncKtnW3cLlR', '2018-06-23 05:13:01', '2018-06-23 05:13:01'),
(317, 1, 'mgSskpD9U7YIbdNuz1sah6z0CEHizSsX', '2018-06-24 06:02:49', '2018-06-24 06:02:49'),
(318, 1, 'm5eoLBiuIN2EWJEnCZC3JEINcKwXPk3w', '2018-06-25 04:29:39', '2018-06-25 04:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
CREATE TABLE IF NOT EXISTS `revisions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.export\":true,\"translation.translations.import\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true}', '2018-06-14 00:04:34', '2018-06-14 00:04:34'),
(2, 'user', 'User', NULL, '2018-06-14 00:04:34', '2018-06-14 00:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-06-14 00:05:13', '2018-06-14 00:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `setting__settings`
--

DROP TABLE IF EXISTS `setting__settings`;
CREATE TABLE IF NOT EXISTS `setting__settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plainValue` text COLLATE utf8mb4_unicode_ci,
  `isTranslatable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting__settings_name_unique` (`name`),
  KEY `setting__settings_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting__settings`
--

INSERT INTO `setting__settings` (`id`, `name`, `plainValue`, `isTranslatable`, `created_at`, `updated_at`) VALUES
(1, 'core::template', 'ASU', 0, '2018-06-14 00:05:35', '2018-06-18 23:01:59'),
(2, 'core::locales', '[\"en\",\"ar\"]', 0, '2018-06-14 00:05:35', '2018-06-15 08:30:04'),
(3, 'core::site-name', NULL, 1, '2018-06-15 08:30:03', '2018-06-15 08:30:03'),
(4, 'core::site-name-mini', NULL, 1, '2018-06-15 08:30:03', '2018-06-15 08:30:03'),
(5, 'core::site-description', NULL, 1, '2018-06-15 08:30:03', '2018-06-15 08:30:03'),
(6, 'core::analytics-script', NULL, 0, '2018-06-15 08:30:03', '2018-06-15 08:30:03'),
(7, 'dashboard::welcome-title', NULL, 1, '2018-06-15 08:30:50', '2018-06-15 08:30:50'),
(8, 'dashboard::welcome-description', NULL, 1, '2018-06-15 08:30:50', '2018-06-15 08:30:50'),
(9, 'dashboard::welcome-enabled', '1', 0, '2018-06-15 08:30:50', '2018-06-15 08:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `setting__setting_translations`
--

DROP TABLE IF EXISTS `setting__setting_translations`;
CREATE TABLE IF NOT EXISTS `setting__setting_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting__setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  KEY `setting__setting_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting__setting_translations`
--

INSERT INTO `setting__setting_translations` (`id`, `setting_id`, `locale`, `value`, `description`) VALUES
(1, 3, 'en', 'AinShames university', NULL),
(2, 4, 'en', NULL, NULL),
(3, 5, 'en', NULL, NULL),
(4, 7, 'en', NULL, NULL),
(5, 7, 'ar', NULL, NULL),
(6, 8, 'en', NULL, NULL),
(7, 8, 'ar', NULL, NULL),
(8, 3, 'ar', 'جامعة عين شمس', NULL),
(9, 4, 'ar', NULL, NULL),
(10, 5, 'ar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tag__tagged`
--

DROP TABLE IF EXISTS `tag__tagged`;
CREATE TABLE IF NOT EXISTS `tag__tagged` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag__tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag__tagged`
--

INSERT INTO `tag__tagged` (`id`, `taggable_type`, `taggable_id`, `tag_id`) VALUES
(1, 'Modules\\Blog\\Entities\\Post', 1, 1),
(2, 'Modules\\Blog\\Entities\\Post', 2, 1),
(3, 'Modules\\Blog\\Entities\\Post', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tag__tags`
--

DROP TABLE IF EXISTS `tag__tags`;
CREATE TABLE IF NOT EXISTS `tag__tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag__tags`
--

INSERT INTO `tag__tags` (`id`, `namespace`, `created_at`, `updated_at`) VALUES
(1, 'asgardcms/post', '2018-06-23 04:47:23', '2018-06-23 04:47:23'),
(2, 'asgardcms/post', '2018-06-23 07:26:22', '2018-06-23 07:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `tag__tag_translations`
--

DROP TABLE IF EXISTS `tag__tag_translations`;
CREATE TABLE IF NOT EXISTS `tag__tag_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag__tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  KEY `tag__tag_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag__tag_translations`
--

INSERT INTO `tag__tag_translations` (`id`, `slug`, `name`, `tag_id`, `locale`) VALUES
(1, 'test', 'test', 1, 'en'),
(2, 'newwws', 'newwws', 2, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2018-06-15 06:08:41', '2018-06-15 06:08:41'),
(2, NULL, 'ip', '127.0.0.1', '2018-06-15 06:08:42', '2018-06-15 06:08:42'),
(4, NULL, 'global', NULL, '2018-06-15 06:08:57', '2018-06-15 06:08:57'),
(5, NULL, 'ip', '127.0.0.1', '2018-06-15 06:08:57', '2018-06-15 06:08:57'),
(7, NULL, 'global', NULL, '2018-06-16 18:28:05', '2018-06-16 18:28:05'),
(8, NULL, 'ip', '127.0.0.1', '2018-06-16 18:28:05', '2018-06-16 18:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `translation__translations`
--

DROP TABLE IF EXISTS `translation__translations`;
CREATE TABLE IF NOT EXISTS `translation__translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translation__translations_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation__translations`
--

INSERT INTO `translation__translations` (`id`, `key`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'blog::category.list resource', '2018-06-15 07:20:30', '2018-06-15 07:20:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translation__translation_translations`
--

DROP TABLE IF EXISTS `translation__translation_translations`;
CREATE TABLE IF NOT EXISTS `translation__translation_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_trans_id_locale_unique` (`translation_id`,`locale`),
  KEY `translation__translation_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'bola.e.nasr@gmail.com', '$2y$10$AETjNr.taa7EnteuxXzuxuQXPABetg25lzRANoG6xryhS/cQuYX.C', '{\"block.blocks.index\":true,\"block.blocks.create\":true,\"block.blocks.edit\":true,\"block.blocks.destroy\":true,\"blog.posts.index\":true,\"blog.posts.create\":true,\"blog.posts.edit\":true,\"blog.posts.destroy\":true,\"blog.categories.index\":true,\"blog.categories.create\":true,\"blog.categories.edit\":true,\"blog.categories.destroy\":true,\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.import\":true,\"translation.translations.export\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true}', '2018-06-25 04:29:39', 'Bola', 'Nasr', '2018-06-14 00:05:12', '2018-06-25 04:29:39'),
(4, 'kooko@admin.com', '$2y$10$N6wZEKvgFUvR2C2s9UY8A.y79QkXvMzfeWbRhR0MugD4vX/y66qeG', '', NULL, 'Koko', 'Nasr', '2018-06-15 06:12:17', '2018-06-15 06:12:17'),
(6, 'me@admin.com', '$2y$10$zyFzDYdiYaECp1zOqw6eiO5wphEuas1HVefDGEDwlEpbyIMmuPW52', '', NULL, 'me', 'mee', '2018-06-16 19:11:43', '2018-06-16 19:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_tokens_access_token_unique` (`access_token`),
  KEY `user_tokens_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `user_id`, `access_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'c816709c-7739-4941-ba29-9157343eeb84', '2018-06-14 00:05:14', '2018-06-14 00:05:14');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `block__blocks_translations`
--
ALTER TABLE `block__blocks_translations`
  ADD CONSTRAINT `block__blocks_translations_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `block__blocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog__category_translations`
--
ALTER TABLE `blog__category_translations`
  ADD CONSTRAINT `blog__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog__categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog__post_translations`
--
ALTER TABLE `blog__post_translations`
  ADD CONSTRAINT `blog__post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog__posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dashboard__widgets`
--
ALTER TABLE `dashboard__widgets`
  ADD CONSTRAINT `dashboard__widgets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media__file_translations`
--
ALTER TABLE `media__file_translations`
  ADD CONSTRAINT `media__file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `media__files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menuitems`
--
ALTER TABLE `menu__menuitems`
  ADD CONSTRAINT `menu__menuitems_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menuitem_translations`
--
ALTER TABLE `menu__menuitem_translations`
  ADD CONSTRAINT `menu__menuitem_translations_menuitem_id_foreign` FOREIGN KEY (`menuitem_id`) REFERENCES `menu__menuitems` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menu_translations`
--
ALTER TABLE `menu__menu_translations`
  ADD CONSTRAINT `menu__menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page__page_translations`
--
ALTER TABLE `page__page_translations`
  ADD CONSTRAINT `page__page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `page__pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting__setting_translations`
--
ALTER TABLE `setting__setting_translations`
  ADD CONSTRAINT `setting__setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `setting__settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag__tag_translations`
--
ALTER TABLE `tag__tag_translations`
  ADD CONSTRAINT `tag__tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tag__tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation__translation_translations`
--
ALTER TABLE `translation__translation_translations`
  ADD CONSTRAINT `translation__translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translation__translations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
