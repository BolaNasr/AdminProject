-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 16, 2018 at 12:46 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'jzH9WS2NZr5u7AMZDm7nU0LV7ORWyLsC', 1, '2018-06-14 00:05:13', '2018-06-14 00:05:13', '2018-06-14 00:05:13'),
(4, 4, 'BY0MHfPdhyJlYpa5ftOPeuuV9dtG7D4e', 0, NULL, '2018-06-15 06:12:17', '2018-06-15 06:12:17'),
(6, 6, 'ecsSPW0ossvwBrE0P1ab0xXgO3gZtTcx', 0, NULL, '2018-06-16 19:11:43', '2018-06-16 19:11:43');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media__files`
--

INSERT INTO `media__files` (`id`, `is_folder`, `filename`, `path`, `extension`, `mimetype`, `filesize`, `folder_id`, `created_at`, `updated_at`) VALUES
(6, 0, '69002.png', '/assets/media/69002.png', 'png', 'image/png', '49653', '0', '2018-06-15 07:58:42', '2018-06-15 07:58:42'),
(7, 0, 'bg-clean-pic-01.jpg', '/assets/media/bg-clean-pic-01.jpg', 'jpg', 'image/jpeg', '222993', '0', '2018-06-15 08:07:12', '2018-06-15 08:07:12'),
(8, 0, 'asu-logo.png', '/assets/media/asu-logo.png', 'png', 'image/png', '10128', '0', '2018-06-16 19:30:19', '2018-06-16 19:30:19');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menuitems`
--

INSERT INTO `menu__menuitems` (`id`, `menu_id`, `page_id`, `position`, `target`, `link_type`, `class`, `module_name`, `parent_id`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `is_root`, `icon`) VALUES
(1, 1, NULL, 0, NULL, 'page', '', NULL, NULL, NULL, NULL, NULL, '2018-06-16 18:59:18', '2018-06-16 18:59:18', 1, NULL),
(2, 1, 2, 0, '_self', 'page', NULL, NULL, 1, NULL, NULL, NULL, '2018-06-16 19:00:44', '2018-06-16 19:00:44', 0, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menuitem_translations`
--

INSERT INTO `menu__menuitem_translations` (`id`, `menuitem_id`, `locale`, `status`, `title`, `url`, `uri`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 0, 'root', NULL, NULL, '2018-06-16 18:59:18', '2018-06-16 18:59:18'),
(2, 1, 'ar', 0, 'root', NULL, NULL, '2018-06-16 18:59:18', '2018-06-16 18:59:18'),
(3, 2, 'en', 1, 'Bola', NULL, 'bola', '2018-06-16 19:00:44', '2018-06-16 19:00:44'),
(4, 2, 'ar', 1, 'بولا', NULL, 'bola-arabic', '2018-06-16 19:00:44', '2018-06-16 19:00:44');

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
(1, 'Bola', 0, '2018-06-16 18:59:17', '2018-06-16 18:59:17');

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
(1, 1, 'en', 1, 'Bola', '2018-06-16 18:59:17', '2018-06-16 18:59:17'),
(2, 1, 'ar', 1, 'Bola', '2018-06-16 18:59:17', '2018-06-16 18:59:17');

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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(36, '2015_05_29_180714_add_status_column_to_post_table', 9);

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
(1, 1, 'home', '2018-06-14 00:05:35', '2018-06-14 00:05:35'),
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
(1, 1, 'en', 'Home page', 'home', '1', '<p><strong>You made it!</strong></p>\n\n<p>You&#39;ve installed AsgardCMS and are ready to proceed to the <a href=\"/en/backend\">administration area</a>.</p>\n\n<h2>What&#39;s next ?</h2>\n\n<p>Learn how you can develop modules for AsgardCMS by reading our <a href=\"https://github.com/AsgardCms/Documentation\">documentation</a>.</p>\n\n<p><img alt=\"\" src=\"http://localhost:8000/assets/media/bg-clean-pic-01_mediumThumb.jpg\" style=\"width: 180px; height: 101px;\" /></p>', 'Home page', NULL, NULL, NULL, NULL, NULL, '2018-06-14 00:05:35', '2018-06-15 08:08:07'),
(2, 2, 'en', 'bola', 'bola', '1', '<p><span class=\"marker\">bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;bla bla bla bla&nbsp;</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 18:58:12', '2018-06-16 18:58:12'),
(3, 2, 'ar', 'بولا', 'bola-arabic', '1', '<p>أناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأناأنا</p>\n\n<p>أناأناأناأناأناأناأناأناأناأناأناأناأناأنا</p>\n\n<p>أناأناأناأناأناأناأناأناأنا</p>\n\n<p>أناأناأناأناأنا</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 18:58:12', '2018-06-16 18:58:12'),
(4, 1, 'ar', 'الرئيسية', 'الرئيسية', NULL, '<p><strong>You made it!</strong></p>\n\n<p>You&#39;ve installed AsgardCMS and are ready to proceed to the&nbsp;<a href=\"/en/backend\">administration area</a>.</p>\n\n<h2>What&#39;s next ?</h2>\n\n<p>Learn how you can develop modules for AsgardCMS اسيتشاينشستاينتسشاينتسشاينتشسانتيreading our&nbsp;<a href=\"https://github.com/AsgardCms/Documentation\">documentation</a>.</p>\n\n<p><img alt=\"\" src=\"http://localhost:8000/assets/media/bg-clean-pic-01_mediumThumb.jpg\" style=\"width: 180px; height: 101px;\" /></p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 19:17:58', '2018-06-16 19:17:58');

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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(122, 1, 'MA6hpckpZSqr1umsyIO42HHiGHAEN1E2', '2018-06-16 18:28:19', '2018-06-16 18:28:19'),
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
(165, 1, 'ufPmxvhO9JAAslMGxmgK5hWxiRI6SyCn', '2018-06-16 19:31:24', '2018-06-16 19:31:24');

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
(1, 'core::template', 'Flatly', 0, '2018-06-14 00:05:35', '2018-06-14 00:05:35'),
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'bola.e.nasr@gmail.com', '$2y$10$AETjNr.taa7EnteuxXzuxuQXPABetg25lzRANoG6xryhS/cQuYX.C', '{\"blog.posts.index\":true,\"blog.posts.create\":true,\"blog.posts.edit\":true,\"blog.posts.destroy\":true,\"blog.categories.index\":true,\"blog.categories.create\":true,\"blog.categories.edit\":true,\"blog.categories.destroy\":true,\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.import\":true,\"translation.translations.export\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true}', '2018-06-16 19:31:24', 'Bola', 'Nasr', '2018-06-14 00:05:12', '2018-06-16 19:31:24'),
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
