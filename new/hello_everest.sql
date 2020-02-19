-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 09:19 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hello_everest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Administrator',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'demo@ecommerce.com', '01629552892', 'Administrator', '1568041316flag-400.png', '$2y$10$5gMLpTZ9me1axKTKBv7vuukU5hl/zEhOj3rtIKhUkLf3pgkN5Uql2', 1, 'ZvDLwHLhNYrIHxzvtRQqM4dNEMl53hh9EA1DODkgNT6dTqTDWTOMX4hxlin0', '2018-02-28 23:27:08', '2019-09-09 09:01:56', 'Hello Everest'),
(4, 'Staff', 'staff@gmail.com', '34534534534', 'Staff', '1558707029staff.jpg', '$2y$10$I/2L8FXvxOQV7irwh2PH2upufB0DBMponc99HDo8U4cWx2B/6ASwa', 1, 'EteXf3soRBh36HEtMwgDVSqPeMt40MM8ubnlOAMsDXlobvZX540qncstFLlC', '2019-05-24 08:10:30', '2019-05-24 08:10:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(1, 'fhgchv', 28, 'utfcyvubknlkm', '2019-09-09 18:33:26', '2019-09-09 18:33:26', NULL, NULL),
(2, 'hi', 29, 'active', '2019-09-09 18:41:44', '2019-09-09 18:41:44', NULL, NULL),
(3, 'hi', 29, 'santo', '2019-09-09 18:53:07', '2019-09-09 18:53:07', NULL, NULL),
(4, 'test', 33, 'nothing', '2019-09-09 19:19:29', '2019-09-09 19:19:29', NULL, NULL),
(5, 'test', 33, 'nothing', '2019-09-09 19:20:50', '2019-09-09 19:20:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'utfcyvubknlkm', NULL, '2019-09-09 18:33:26', '2019-09-09 18:33:26'),
(2, 2, 'active', NULL, '2019-09-09 18:41:44', '2019-09-09 18:41:44'),
(3, 3, 'santo', NULL, '2019-09-09 18:53:07', '2019-09-09 18:53:07'),
(5, 5, 'nothing', NULL, '2019-09-09 19:20:50', '2019-09-09 19:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1560581916Banner05.jpg', 'https://www.google.com/', 'TopSmall'),
(2, '1560581909Banner04.jpg', NULL, 'TopSmall'),
(3, '1560581926Banner06.jpg', 'https://www.google.com/', 'Large'),
(4, '1564398600side-triple3.jpg', 'https://www.google.com/', 'BottomSmall'),
(5, '1564398579side-triple2.jpg', 'https://www.google.com/', 'BottomSmall'),
(6, '1564398571side-triple1.jpg', 'https://www.google.com/', 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(26, 8, 'The test blog', '<div align=\"justify\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</div>', '1567960809muna3.jpg', 's', 8, 1, 'Technology,test', '<div align=\"justify\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</div>', 'Technology,test', '2019-09-08 23:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(8, 'Technology', 'technology'),
(9, 'Boy\'s Fashoin', 'boy-fashion');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`) VALUES
(4, 'Electronics', 'electronics', 0, '1567912175sharpicons_socket-2-512.png'),
(5, 'Household & Furniture', 'household-furniture', 0, '1567912239sofa-512.png'),
(6, 'Medicine / Healthcare', 'medicine-healthcare', 0, '15679121193f97a582a7fcfe2f6437482979c79add.png'),
(7, 'Toys & Games', 'toys-games', 0, '1567912002Game-Icon-PNG-Image-715x715.png'),
(8, 'Baby & Kids', 'baby-kids', 0, '1567911939baby.png'),
(9, 'Girl\'s Fashoin', 'girl-s-fashoin', 0, '15679117601502103958.female-silhouette.png'),
(10, 'Boy\'s Fashoin', 'boy-s-fashoin', 0, '15679116931502101936.man-standing-up.png'),
(11, 'Women\'s Shopping', 'women-s-clothing', 0, '15679115451528806661.dress.png'),
(12, 'Men\'s Shopping', 'men-s-clothing', 0, '15679115011528806598.shirt.png'),
(13, 'Educational', 'educationals', 0, '156733021015673076308e81fce56cee548c7cc44d1a985657b7.png'),
(14, 'Beauty & Personal Care', 'beauty-personal', 0, '1567912378Hand_lotion-512.png'),
(15, 'Fresh Deals / Grocery', 'fresh-deals', 0, '1567912545food_basket-512.png'),
(16, 'Organic / Natural food items', 'natural-food-items', 0, '1567912768078-512.png'),
(17, 'Religious store', 'religious-store', 0, '1567912846Business_Marketing_45-512.png'),
(18, 'Travel', 'travel', 0, '1567912896travel_agency-512.png'),
(19, 'Wedding Store', 'wedding-store', 0, '1567912989love_wedding-08-512.png'),
(20, 'Undergarments', 'undergarments', 0, '1567913063v-13-512.png'),
(21, 'Budget Bazaar', 'budget-bazaar', 0, '1567913115Business_Marketing_45-512.png'),
(22, 'Mathematics', 'mathe', 1, NULL),
(23, 'Physics', 'physics', 1, NULL),
(24, 'Chemistry', 'chemistry', 1, NULL),
(25, 'Biology', 'biology', 1, NULL),
(26, 'Computer', 'computer', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(1, 2, 'LCD TV', 'lcd-tv', 1),
(2, 2, 'LED TV', 'led-tv', 1),
(3, 2, 'Curved TV', 'curved-tv', 1),
(4, 2, 'Plasma TV', 'plasma-tv', 1),
(5, 3, 'Top Freezer', 'top-freezer', 1),
(6, 3, 'Side-by-Side', 'side-by-side', 1),
(7, 3, 'Counter-Depth', 'counter-depth', 1),
(8, 3, 'Mini Fridge', 'mini-fridge', 1),
(9, 4, 'Front Loading', 'front-loading', 1),
(10, 4, 'Top Loading', 'top-loading', 1),
(11, 4, 'Washer Dryer Combo', 'washer-dryer-combo', 1),
(12, 4, 'Laundry Center', 'laundry-center', 1),
(13, 5, 'Central Air', 'central-air', 1),
(14, 5, 'Window Air', 'window-air', 1),
(15, 5, 'Portable Air', 'portable-air', 1),
(16, 17, 'English Book', 'englishbook', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 3204, 0, NULL),
(4, 'browser', 'Linux', 261, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 468, 0, NULL),
(6, 'browser', 'Windows 7', 421, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 538, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 424, 0, NULL),
(11, 'browser', 'Mac OS X', 510, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 4, 0, NULL),
(18, 'browser', 'iPhone', 8, 0, NULL),
(19, 'referral', 'www.laraecom.tk', 59, 0, NULL),
(20, 'referral', 'kproxy.com', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '991', 17, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 1, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 84.63, 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/MGucWKc.jpg\" width=\"350\"></div></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(96, 83, '1565111160PuU2mj63.jpg'),
(97, 83, '15651111614I2XRVXd.jpg'),
(98, 83, '1565111161OKf5pIwB.jpg'),
(99, 80, '15651111670AvRebXq.jpg'),
(100, 80, '1565111179ZhomVw4K.jpg'),
(101, 80, '1565111179akq5e5E1.jpg'),
(129, 87, '15680867492_14_4_1_1-100x100.jpg'),
(130, 87, '15680867492_14_4_1_1-150x150.jpg'),
(131, 87, '15680867492_14_4_1_1-300x300.jpg'),
(132, 88, '15680868142_14_4_1_1-100x100.jpg'),
(133, 88, '15680868142_14_4_1_1-150x150.jpg'),
(134, 88, '15680868142_14_4_1_1-300x300.jpg'),
(135, 89, '15680869272_14_4_1_1-100x100.jpg'),
(136, 89, '15680869272_14_4_1_1-150x150.jpg'),
(137, 89, '15680869272_14_4_1_1-300x300.jpg'),
(138, 90, '1568087409127928052bluevalvetsaree1505385545.jpg'),
(139, 90, '1568087409127928052bluevalvetsaree1505385545-100x100.jpg'),
(140, 90, '1568087409134534966-79241031-1518701993.jpg'),
(141, 90, '1568087409134534966-79241031-1518701993-100x100.jpg'),
(142, 90, '1568087409134534966-79241031-1518701993-150x150.jpg'),
(143, 91, '1568087522132176815REMPREDGOVM2110114877624841513840413.jpg'),
(144, 91, '1568087522132176815REMPREDGOVM2110114877624841513840413-150x150.jpg'),
(145, 92, '1568087686127928052bluevalvetsaree1505385545.jpg'),
(146, 92, '1568087686127928052bluevalvetsaree1505385545-300x300.jpg'),
(149, 94, '1568882010cash.png'),
(150, 94, '1568882010flag-400.png'),
(151, 94, '1568882010img_logo.png'),
(152, 94, '1568882010img_logo (1).png'),
(153, 95, '15688824841559123669.jpg.400x200_q85.jpg'),
(154, 95, '1568882484cash.png'),
(155, 96, '1569224728tisort_empathy_6314_626_626.jpg'),
(156, 96, '1569224728tshirt-2.jpg'),
(157, 99, '15694795992_14_4_1_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci,
  `header_phone` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `map_key` text COLLATE utf8mb4_unicode_ci,
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `is_contact` tinyint(1) NOT NULL DEFAULT '0',
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_check` tinyint(1) DEFAULT '0',
  `stripe_check` tinyint(1) NOT NULL DEFAULT '0',
  `cod_check` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_business` text COLLATE utf8mb4_unicode_ci,
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `add_cart` text COLLATE utf8mb4_unicode_ci,
  `out_stock` text COLLATE utf8mb4_unicode_ci,
  `add_wish` text COLLATE utf8mb4_unicode_ci,
  `already_wish` text COLLATE utf8mb4_unicode_ci,
  `wish_remove` text COLLATE utf8mb4_unicode_ci,
  `add_compare` text COLLATE utf8mb4_unicode_ci,
  `already_compare` text COLLATE utf8mb4_unicode_ci,
  `compare_remove` text COLLATE utf8mb4_unicode_ci,
  `color_change` text COLLATE utf8mb4_unicode_ci,
  `coupon_found` text COLLATE utf8mb4_unicode_ci,
  `no_coupon` text COLLATE utf8mb4_unicode_ci,
  `already_coupon` text COLLATE utf8mb4_unicode_ci,
  `order_title` text COLLATE utf8mb4_unicode_ci,
  `order_text` text COLLATE utf8mb4_unicode_ci,
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int(100) NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `already_cart` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `cod_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_photo` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT '0',
  `is_paystack` tinyint(1) NOT NULL DEFAULT '0',
  `paystack_key` text COLLATE utf8mb4_unicode_ci,
  `paystack_email` text COLLATE utf8mb4_unicode_ci,
  `paystack_photo` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `paypal_check`, `stripe_check`, `cod_check`, `paypal_business`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `vendor_ship_info`, `reg_vendor`, `cod_photo`, `paypal_photo`, `stripe_photo`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_photo`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_photo`) VALUES
(1, '1567416329Screenshot_1.jpg', '1567415930Hello-everest-2 - Copy.jpg', 'Hello Everest', 'muraly1989@gmail.com', '0123 456789', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', 'COPYRIGHT © 2019. All Rights Reserved By <a href=\"http://geniusocean.com/\">GeniusOcean.com</a>', '#009fb5', '1567964886loader.gif', '1567964893loader.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 1, '<div id=\"disqus_thread\">         \n    <script>\n    /**\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\n    /*\n    var disqus_config = function () {\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\n    };\n    */\n    (function() { // DON\'T EDIT BELOW THIS LINE\n    var d = document, s = d.createElement(\'script\');\n    s.src = \'https://junnun.disqus.com/embed.js\';\n    s.setAttribute(\'data-timestamp\', +new Date());\n    (d.head || d.body).appendChild(s);\n    })();\n    </script>\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\n    </div>', 1, 1, 1, 1, 1, 1, 'shaon143-facilitator-1@gmail.com', 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 5, 5, 10, 5, 'ssl://smtp.gmail.com', '465', 'lopaniku@gmail.com', 'mmtvbfhfqapupnuh', 'lopaniku@gmail.com', 'Hello Everest', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 0, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 0, 5, 1, 1, 1, '1567995665cash-on-delivery-icon-14.jpg.png', '1567995665Pay-Pal.png', '1567995665stripe-payment-logo.png', '#143250', '#143250', '#02020c', 1, '#02020c', '#009fb6', 0, 1, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', '1567995665instamojo_owler_20160227_002124_original.png', 1, 1, 1, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', '1567995665MjE-Paystack-Extension-Release-1024x538.png');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(1, 1, 'English', '1568040844ocZVqhWt.json'),
(2, 0, 'বাংলা', '1568095630Ipk0A9Mk.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(4, NULL, 53, NULL, NULL, NULL, 1, '2019-09-10 08:48:56', '2019-09-10 09:51:10'),
(14, NULL, 54, NULL, NULL, NULL, 1, '2019-09-16 10:09:07', '2019-09-23 07:46:22'),
(15, NULL, 54, NULL, NULL, NULL, 1, '2019-09-16 10:09:13', '2019-09-23 07:46:22'),
(16, NULL, 54, NULL, NULL, NULL, 1, '2019-09-16 10:09:22', '2019-09-23 07:46:22'),
(21, NULL, NULL, NULL, 97, NULL, 1, '2019-09-23 08:50:44', '2019-09-25 12:37:21'),
(22, NULL, 55, NULL, NULL, NULL, 1, '2019-09-25 12:12:31', '2019-09-25 12:37:09'),
(23, NULL, 55, NULL, NULL, NULL, 1, '2019-09-25 12:12:43', '2019-09-25 12:37:09'),
(24, NULL, 55, NULL, NULL, NULL, 1, '2019-09-25 12:12:48', '2019-09-25 12:37:09'),
(43, NULL, 57, NULL, NULL, NULL, 0, '2019-12-10 02:01:20', '2019-12-10 02:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `tax`, `dp`, `pay_id`) VALUES
(1, NULL, 'BZh91AY&SY1Û\nß\0ß@\0Psø+k÷D¿ïÿú`?}\0JB¨$ªUAæ\0L\0L\0`\0&Ó\0		\0L\0Ãb`00\0	\0sLL\0&\0&\00\0Ii¢\'é5\'é©é2©OQõCÔÍ$$Ñ4ÚHõ\Zhi£LÔ²P?9Ú\"=éð>ù\'¼üÜó¾_6ÞÅp¹M=ìl¶9.²ZL0»+,YËÞ£sf²ÑÑ³K47w0Â]MÅ=ë´ºtfzÝÓÎ·ºn¹£Ä³MG·­$æäy q:.RIú=M=Óê>hä]bY$uºÇ¹ÔüU$þ¬e*)(¦¸Z$îRe0ZMÕ¦i¨YL®Ê¥ÉJJE$R.»FÕ\"]u.Ãê80Ì¤ËK,Ó\rØ²V0ºÌ°§ÖLÏÍífäØ¨JÝuÜ0rp´æfji¶l¸\\±s­ÐÝ¦\rÚc¥³N.ÃØÞYrÝI¹»N\npÃuæÆÉ\rEæì±³-ÆS)dÃvJK.ºãL©³,MÅl,beY8:Äù*CÁK `)XAa¸i\n8Ä .X²QD³Fb(¹IJy¨Õ-KÃ6²\"Ah¡R B#£\0#7Ieª%rÒ\nXÀÀ£{7`Ó3ÅâÙÄ­OTnÓíì©i&ZiMÔt[\\»FV:)áFÆX4£XU8gU[4ÒîÃN\'GBê:8]ÃyMÚn±G+Í`¨~ÉdöÏÐñwØ¢~aÄ?§°4v$Öäì9[ÔÇØÕdõ\"ê2³¾BZNgÂu]÷ÈÏ`Q¨°Ó¹þ_»Çàø¹9+Ú¥ÜÏ4ÌÏsü¼ÞzÎÇYQ÷KOÑGtËíx1!æ ðÏ	»ðYÌÿøÎe7NXY,¨îxÉËóju|Ò§ªiàîYfòë*dwIñNK¥äºÊRï\'Ä³eïF[¹\\Ú{{Ì©DØ¢ÄÄr|Cììyi¢N\'s°¹1ô6yô9lcµEÝfÒæµ±¼Üü«RÇ¹IÙé9v©§¸±iRóÜ.ÔÒyÂÒN] ü´ú\nQ	Tû¨z7¥¡B`ä¼9Ðhlsp#´»µóºZ~GAyEã\nX©»Í61*~Òó÷¥Ýè<`Ca½Írº1Áè70 è(¦­IÊò.ju;K<8MÓÅåìÚ-(K­(º§¼t5,2G¥³Èx\Zñy@ÖXL\"G¹G¬o>Gé.ùSån¤©¼Üáö¼Vz6:¼ïpbÝàx>ï£  Â0hÞGÎ÷»Û£e,9Ôí)§tí<Øx©vÀ51À¤±a£-LhVÂbïi¦iÅàk:Î¨ô£êÄ °	#$bb4AA,\"]ÍÉàj?B`·KÔ+M\ZÂinÑC¸å§\'¸&i\rï¶mÈs:ÚR&§3»,ÌÄÝ7%<æfS\'î\'ëFÎòdÙÃ¤ôIÂY¤í,ò¬Ã¨ìñ¥À²JÓ±g2òvSö}gÌáè»Ñà(ôô½Beþ.äp¡ c¶¾', 'Cash On Delivery', 'pickup', 'Dhaka', '2', 3189.12, NULL, NULL, '9ANz1568093716', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', 'Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 05:35:16', '2019-09-10 05:35:16', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(2, 25, 'BZh91AY&SY#Ñù\0Xß@\0Pø+Kô¿ïÿúP½#e£@Ð¡\0\0\0\r\0\0\0\0	@\n5H4h44È4\0È4Ð\"DP)¦Êh\0Õ¦@\0\0\0\r\0\0\0\0	#44e0¦Ú AÊP)`¦ó Qâ³Þ¨³LQ¬ü!qÐf}I(Ðw]Q]¬Ð^/0¸©Ô­\ZºjBs!p®5´a8Qö/.6\';p9p% $P©üèPî?\"BíN-\"æ3¦cN.(ÂPF,a.9ÕB))!X·R%L^,9m) %âó!UP¼l6É UJ¶kQ:0óåQ¹å)RY®g|,æ($q(¡ÃqÆBQKYo¼ä[ZF#s)(ÉPîáR·2%`(0ö`ÌÉn·6WÑGîñ)J\"ªB1	uF,«²¡#me,¢;#T­ETY$\'1²rÁö¤+$\nm\0Aº3dRe&g,¯3¹L­©TÀ\"¬czØVsXÒÊm)0lîU¶m¶Ñ­¦¨Ì&o³o%\'ã è=ægyy\"óõIÏÐú§Ä©å_c#aÚGü×r:¸3\\âãôrßx°ë(ÝmÜ}Ï§¡ø,nR8/ÒeÊFa3fâ§\0238­^þ9LGEåØ>ðq©aÐ*YM¥hV¡Æ<Æm/Ë(\\\'©¸ààêr\nþ&¶/ÃÝñÎnåª$«2|Ï´À±p×ÔD pVXv6#´®ÑÇio!+µâ}Ñ\"GsZó1Ô³¿¸2D;T(é©;ÏcÀl¨qÄBñT9z^K@39JtÄ$IMÈ[RúìH÷¶¡r5oì7³7räsÔcââÖ2èm5#IÁUL­t@0[tK1o!¨ ÈewBkÎ0ÏÔØI@Ó.Ì(tõ%Õu¼iÅ¼÷ÇJ\ZE¸ìÀÿãeÄ/3,nDÙ´29¢ÇEÀtÄàqøù´±t)IE°ÜI*\Z@ó,|9ÓÝâ 1òd$ÁÂdF¢ÀÈÌÜXç]½)¯yuÇi	(\"ð*LZåº¸W\rÔäu´¨QU#( /00q2ª¡Eõ.&5âåªmØRØBjj/ZÄõ\'i!*|AR¯öÞpð£ý7ïà Ô	Oü]ÉáB@;Gä', 'Cash On Delivery', 'shipto', 'Dhaka', '2', 1100, NULL, NULL, 'rqet1568093863', 'Pending', 'sumonit1998@gmail.com', 'Sumon', 'Bangladesh', '01724209859', 'Tangail', 'tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 05:37:43', '2019-09-10 05:37:43', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(3, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, 'h6KH1568109428', 'Pending', 'test@gitanjali.com', 'Nikunja Behari Gswami', 'Bangladesh', '5143876184', 'Charton Place, Winston Salem', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 09:57:08', '2019-09-10 09:57:08', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(4, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, 'KADV1568109484', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Gswami', 'Bangladesh', '5143876184', 'Charton Place, Winston Salem', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 09:58:04', '2019-09-10 09:58:04', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(5, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, '5tGb1568109753', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Gswami', 'Bangladesh', '5143876184', 'Charton Place, Winston Salem', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 10:02:33', '2019-09-10 10:02:33', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(6, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, 'qSAT1568109840', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', 'Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 10:04:00', '2019-09-10 10:04:00', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(7, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, 'ySG01568109992', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', 'Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 10:06:32', '2019-09-10 10:06:32', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(8, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, 'VZ0K1568110266', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', 'Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 10:11:06', '2019-09-10 10:11:06', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(9, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, 'AI0d1568110380', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', 'Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 10:13:00', '2019-09-10 10:13:00', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(10, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, '6qZl1568110435', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', 'Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 10:13:55', '2019-09-10 10:13:55', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(11, NULL, 'BZh91AY&SY8h·\0­_@\0Psø?ÏýÔ¿ïÿú`ÿ>@\0H$ `20110LÓL`20110LÓL`20110LÓL`20110LÓLHF¤\Z F@\r\04\0\n\"hÈ¦M	Òj=4Êz1=FÔzO5ORÂF\"GÉù¿Cö{`ù¿ãõ`²IaöK¤bÒéýçïc#èbQz¥fI\'!0ÐP~Ä±èÓòá¡9pÂÜ¶Óaz¾·GNZrc[\0PzZ4á\\kØ9xL¼@³¸4zJ,rÂ=ÑrÝ:ÚNÜ#´ä$l2q6³jSÊ³ÌÀÉ©gãÅòz§áôL%ßo]é$ð+\"ë\rÖÌF:cÔ u(Øb° Ç,]¼4ì04#tÛ\\@\0¦Ã6éóùÒÄ01_.Ã\r½,$0ÛLtôé³NÄCm´Ó·NHXÄ4F49m§Iæ¤ yO!¥tvEZ\r´ÛÎÌazïm¦Ì:<\rÅ¦£ÅK125®V¹	ÀðéÃcgvØlvniË°rP¤0íÓ\"Ûm§,våÈÐÛ°hpfBÐÚl)î+ú¨?²{àF*[M\"F(GÂÒ4ú\"ÐÆéÀÛÆ4påc\r	B>!#HÅA¡J#\nb SÅÀ@`\"w¹Ýhmï÷ß«´}Zx§!µáà+AÚåÃ£Áº`P&4\Z`pÁêë3 ÆÜk¦9C£tHY±ËC¦³0áÛ·%C,y^G£Èrò6Áêô:#ÑÏT::z48VÃFê>wàpu:J851<\rå$ïSû¼Zdöë´ÄÌÔà»õt¿³/iSÛÓ¢\ZCòÂc-<¤k£yö<óâTïT÷ÂY¶^8?7ið7cæØ¶ç\'èxÍ¹îÝ01Î(Ü`Y[¨7§çJý£CïMÇT°5¹°Yi%LM¸¦eMdØg0,-\n!gÙ½ÌÇj6Îòæ©º|\ZKËÍå¥\ZµÐRDq>ìÄ¶à·ÀøvÐíð½÷Örðõl6ÿ=\Z\n<gAáÀÆ1Ìì6CC©9ÁÀÞhjIP¢ÇÕàÂ`VÈ^#B=&ÎJ&ÂhfÜ¥,Ì¦ùÔ{§Ð£éè3´Ý6%MSÐY)bÅÎÉ¹PÂddb§¤å\nx½I­÷<¥DB©>4ª¶l9IiÁÑÚm;\'lÈÂuØÍs¢j8ÆS )y0,£9¤Êj&rçÝà	ºHfíNp¤©gÅÊvÁü¥Íóî;çaI@i¦9ø-jÿa·aêÂ§\\À£8g%ËÚlå`TÂQÒ~O[T	bd0eë0),M!ðt\'9ÌÞM²òMU$¥¤±iï.q&³Ó<KÎ¸z¦µC[Zå&É¨|g^wÍmÇ2H\\ÞsS§Ñ*xe§rT*T¤È´=çDÞ>NT¤ÖÄíGJ\Z¦Æy¥!F2Ò^^ã2C¼¼L¢Å[æ×;&SºföÈ~\"v+\0bÀ0 \0IB\0yÎi:gç0L¦&¢¡PõLNôÉxró$^Iih\\êîfvÏ\Z]Ðúáì½vmx_tzJKFRÓd6®7,b`15Ê±ýI®oJO!ÖlLÏ9:ÈÂBÒ2\"ÓYwÔÈ´ÜqRç#ç2dÚJ8ÊEC3ir¡Ær­;åÎÉ!öîîõHÀ#¦)?ñw$S	+p', 'Cash On Delivery', 'pickup', 'Dhaka', '3', 1969.44, NULL, NULL, 'nCga1568110667', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', 'Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-10 10:17:47', '2019-09-10 10:17:47', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(12, 54, 'BZh91AY&SYôt}\0_P\0Xø+OýD¿ÿÿúPy·¹S¬»\0Ða)MOP6êh\Z\0\0 \Z\0Ð	DdÒSôhC@\r@h\0&¢M\r\0Ðhhê4i¦j\0À2`0&ÀÑ4SL¢¨Ê@É¡Ñ£jXHd$:3â;a$æ\n\'Ê³mvÑ£ÈÎQ!êÕ}4QÊ%*^|PnâÜ´WO*C9}NW2Mj*Ò	yrûJ¥äµPÒ!ÚñLÑÒ{\ZpÀ%²WBÍ\0ÐÈÈØf}æk¡ÁHSI¡/KOÆ5°2nP!RBÁ\"aÕByÄ\nY¼îê0À°Ã«Ø`Õ\0d¨HlÑ4É¬4XAX¦k[ÑÊ3ª­bKC4fëBÅ\0¢hL¤ElI¤È±C\"gaB¤k*PARÅ\"3,©Qj©B\nÌà°Ñ2GÄR\Z!èF2*Js!j¼+QZàÂ	À ¡WRV\n²GD¢þIpÀº¨`§Â½	bà¬XR,.Q¢Xe¡)¢:\n5$!Hm$ÚÓÂýLN¤´e\Ze¤­\r4ëº±×VX¾É2)H-x2¶\"ÊfÚhétÁEI­ÖÅddºë¬RÖKLÇ\ZYeh,PÊK,O¨ò4=Ç3Ü\\ø>\'y£¥ÁùrduÏ2ÒÃe1ÊÉ	&¢êY8@$ËcWá	äPöÁ%(éÈødmRo=ÙBªNÀÈ¡¬Þ³°âµ\r~ä%?è#±c2øÎêp1s\r6°Ã\0ÙC.c5Ï8¨w\ZÌÐðgÀs·|a8Ucj0(ØXmªÙ\\÷Ù°ÔbW0p¿\nÖBYÖI­åò ñ¡ÔÄ-ÃqúûfsB\ZßÈÏy·2&a6,7GØÜ½à6-6b!®NÞV\'p´C´¹-A$ª580®yzz·³èmâu6òÈíà1£èu(À³Pî`p#]]P¡@Â©Ë4%fX¨U.òF@±Z6üÃ)EÐÓ+ÖÞÒy®v\ZgÚbcëÒ;µÊ¥Q¼>cÿN&Â¤/°ÕUfQsÐvÈÐë¦È!2£a¨Wq)\\ì éÎôãwüÁLßÖÈCN\"\nABEJdA,ÁÖ14ËtÑ*.|Íò^¡N!(ÔP\\t3ÊîvñX¤did§T¡upÁjÂ¥a©¯%æÑ}9Ë3p (¨¢ËÁæV6òH	WÜÂj.H×¬Â«´gÓÄæó:zÅ\'ñw$S	GGÐð', 'Cash On Delivery', 'shipto', 'Dhaka', '1', 33, NULL, NULL, 'LRTM1568628663', 'Pending', 'pvlbds@gmail.com', 'Tarikul Pavel', 'Bangladesh', '01679627106', 'House 6, Road 5, Kaderabad Housing, Mohamamdpur', 'Dhaka', '1207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-09-16 10:11:03', '2019-09-16 10:11:03', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(13, 54, 'BZh91AY&SYy#2ç\0ßP\0Xø?ÏüD¿ïÿúP~îîãb;\rZa)@!êi£@Ðh P\0\0 5=ª\0\0\0È\0Ô\0jB%0mP\0ô6ÈLi0#À\0\0Â0\n¡!4hÐ$Í#M26 Ðô¨ÙÄBò!;ÝîD#ã\'Áâ½+3Hz²®aÅs`ÜWªÔ×³Enô¦¢óFëSÒ/Ic¹·pÜJÕ¬rÝ =tlQBÎ¤JÈ±èê¢ =,pHSÔÔÁÌàÉØÖ¾=ÉìJzâäz¢ÈÑ-wTd$F `ÁeñSXÃIqhaA¬íIÂíµË ÄÆA@X^ÖËx¦D33QìÅ¯XÙÞ§DQä\\KÆJÌåáç$\n!1ód±Yím«å(¦¥ëK){,ª¹xÞVáª¡Ì3@×Árê¡1y½êÁJ©½¥2xS^¨VÀ09$¦¢&s+oñÎ ´ °-U`,«µ,-Ê½aiF\"\\Q¦È2 b¤D ²$Yë5p%7¤, I|F%¤áÃl\\jcÎ»2å°æÉkk´Á%.ÊM¶\\1+LçRÚêK\ZçSIºÆ¹räÁbÊqó3y°:]!i&?0ðÙÍÃ*5ÀÒÆ$Ee¥¶-(]}qk@±É²ßÒ]ïj|+âå>\'kÍ¡Íp{cÛrø³Ð¹§¹¼jnqÂqðS&ýw!ÂF¶ØäyT&÷&tæ1gf`ØfÌs\\ÑÚ¦\ZtÕb·Éj`v5²4$à}%ànåY©~ÞåÊR3-2`¿Åñ|Û3¯ÒMD¬ªM1¶DgKJÍ0ô1ÎÄç¹£eÙè0ã¹ýÿÉi,íßÉ§{<áÖ¥%fØ01pEºßÏ¬vÄB6`çJP¨;QÐéåÛÑ¶Í®*rÈ²ÑtÆù¤¿2ä¼Vw×Ý	Þ\rÖ[Z8ô9pJL+èÔ¹qvaéÓe¡8³8+2²¨È#F``¢8ÐÆÄ-åÇ\n;ÒÂ#µrT1¹&ÿ³+CLJýæg_ÝÙb_;?ã¶¸jt/¦·Å>nS%êc-ÅÒu59C;¦9Ng=Ûi?l¾¢ÖÏ¬ÉKF¥¢1nR¶¸éôôfêõÇìJP/¥* 1FPRH²IL0.k:Æª1¤SãC3axzV[êÐ]\r+ÕQË|¦&Wªqu;3Æ,¤hlã0ácCHê½a`.µDfSÈÛ0Çb\\èÒë8¨º.Â8«{yñ_\\êIZÅ3ºJK±¥rcã^¦nP³g\"jÅÜN$HÌ¹À', 'Cash On Delivery', 'shipto', 'Dhaka', '1', 22.83, NULL, NULL, 'b80f1569225198', 'Completed', 'pvlbds@gmail.com', 'Tarikul Pavel', 'Bangladesh', '01679627106', 'House 6, Road 5, Kaderabad Housing, Mohamamdpur', 'Dhaka', '1207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2019-09-23 07:53:18', '2019-09-23 09:03:16', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(14, 13, 'BZh91AY&SY{óþ\0ß@\0Psø+k÷D¿ïÿú`?}\0R¨$ª#b`00\0	\0sLL\0&\0&\00\0iÀÀ\0&\0aÍ10\0\0\0À\0L$©èäÔli§¤ÐCÔÓC \"MMM¥Qi0ÔD´ ~-R9Ú\"=éúÖIï?#¼ßNs{@ÞÅo}qM;ØÙl8ZèÑrthÃ+Yn^õ5ËS£f«j[»4L)¹tRÕïSV£3Öî:7:2Þf0ê[v%µj|Rýi$O4w#ÍÑxúOÔÕîQíîFKIp³ÜÃça?Hþ­\' ÊTR*QMU¸\\IÜ¤Êh\\.}8V­Õ¨ZaLH¥)Ã\r\n\"aªa£ê84fJReªÖÕ£v¡1-}iÔÌüÞÆpM©Î8hrp¹ÌÌÖjÛ6°\\X¸Øfr74ÐÓ¹¦<\ropr6ÓÑ³®[©77jèÔSØ&5F&ì´Ùã)´Ñ»VIl0ÀÕ6ejÜP³\rL«3ÞY£ NÕCHw)dÅ¬RJy¥ÂßE¦°ÄZ¥*1-¥J0RRj5¥ÓÍÄZ\"Ah¡R B#£I(ð¼<aêðÖá!øJemí»CVgÅ³ZÏTnÕÃvö©rM\Z.j¦ê:/^\na¡ÑÊpÎØÕ©hÅ8lÎêÙ»ÃG£¡0áÃ<¦í[¬ÐÔå®CóþHû\'±âu9ð\\àûÔOô;Úî\0ëÀ]z¥>Äö-Ñ6OR0 Ñ»ä%ÉÌý\'V[¸(ÊXiã}{Ùó|\\ãgÈõ\'QsxÚxÉÌÐîxåäNóÖv:Êº\\ø(î}¯j	¬æxMÜÑh¦gøGÈs)¸ârÑiiJ÷¾ç¹O6³«Û*z¦¯rÖÞajç|gS	0£òÃÉñ­²ÍïF[¹`Ú|J>&ó*Q600_\0þ:ð\Zh¦Sà\\p¶>Ï\nt°Ä¹Ìi.3-ÍgÚÙRÏr³Òrí7SW¸²åLOpÃYªyÂå<»%A÷¿iô¨î¥ÔFó´(C WcÊm265pÒ\\éy^çÊè1(Äh¥7pÙ«cISö½0ïØ\Zt\ZÜëé!Êr§BiúÔ±#¦³©Ú[É¤©ÂnM%¶Ñr¤Âar*xLGCYc)ÉEÃü©cÅðGFÄ2ûzÆóå|&2|ÍÔ7>×ÞÔõÙÎë¸!Þò4m0Ú\\êï#ç{ÝíÑ²ÏbvÕÝ;O6\"\'T+ÊK\Z1ÊÆÌØLm4ÃM8;ÇA´Àç:QÜ1@#&â4$HÐ@aY\Z °bsÅØe<¥ænò÷(\\¶²aÍ%­<Ýnq=j\\d¥7>9èáÍ£yg[¢ÓYÌçËfi7MÆÇIO9¢k9R~â~´lï(ø¦Î\' ì\\&mS´·ýf£³ÆbR\\}.©ä©.v#¬æbRnÊ~Ò¬ö¸z0ôCÞ(ós<âeü]ÉáBByïÏø', 'Cash On Delivery', 'pickup', 'Dhaka', '2', 3189.12, NULL, NULL, '97vn1569228207', 'Completed', 'vendor@gmail.com', 'User', 'Bangladesh', '3453453345453411', 'Space Needle 400 Broad St, Seattles', 'Washington, DC', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2019-09-23 08:43:27', '2019-09-24 06:08:29', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(15, 13, 'BZh91AY&SYmÀ\0\\_@\0ø+ôd¿ïÿúP½E\0ÈF@\0@\0\0\0\0JhÐjòL\0i \0Q$õ\r\Z\r\r¤ÚG¨ô\0\0\0\0\0A	è	¦¡ê4ÔzÑ	\n	RBqÙîÖYÃÃ\ZD¶p~(à%\"¸6âÃnmËEv¸¦Âí8Î+RH¡±#2åIÔciìX©³¹±§B\\\"åC_¡=PòlQ\0t_Eáà2I6	ÁDÝ¡4Ö¤Þ0,fEB ÖyHP\nÂ\\ÅQPuxMãdªõYÕgChÙ]\"jPThLà|J.åH-hÈ¡r1*PARÅ\r	!PgUrõÎ ð¥ä¹uJ	Ú·\nª¨T½¨UÞµ°^¡[:6M,®¨rÈO´ìBê ,0~L¡l«²eÊ1²CPw¤(©!B@c#r)H1í0{ 7$,RFGÌc+´ ÃlV,©6D*¥«ô±UDt¨×rÅª\nè³{ÚÐyÝqPv+Y^½¢Hb(Ä5é4aI¡ÉÄXÑ4Û.n<ORù.ñ±]x\"X¬zCièi?ÀÏCÖ3£ÑCÌû,a3\Za¦Dà¦ ä@Úo9,¿Rìf%}6PGÂÆFÃÚês1Ã\r6à½ÃÂZÚ[fÈ	L2OÒâ¡¬EÇ4ivóÎ·RÂ¢\n£nµW?Ó¸ÈÄ¨Ó KD£±ÑÆ^Ì&¼¸¾Ã Õ®=¸;jA$Ô:¹pèr8ÏøëºHM®¶8b!q`M{XbÒM\rL;fJ£YczÜ ÏrO¨\'rS\ZÓù\Z»7øö5è1¢P5k9%Æã¨3¡B	&/\n¦,Ðb¡T¼Åh0ßÿØÎÅ\r2ÛÃ_À%åa¦yýûã]§B©A¸èÃÿ;\r6Ê¾ã?3;\"¬ÚÈÈÕpö4ß^lY¬)£!»Îe<ÔjsíßÞ×wªN°D\"û¤AD@¡\"BS\"\"Ì§!×.PWD¨¾Ãâ±ð!%\\%\"MÐdkÑÂ X,KÀêkYÀÁbºÈO8©C]f>Jù#Ý«îâ_ÍCEE\\ÈÐâ{åÀ,¾, Ì¹V¢ùô<ðÀ»wL\"jÅÜN$!G°\0', 'Cash On Delivery', 'pickup', 'Dhaka', '1', 7.81, NULL, NULL, 'ibiP1569228644', 'Completed', 'vendor@gmail.com', 'User', 'Bangladesh', '3453453345453411', 'Space Needle 400 Broad St, Seattles', 'Washington, DC', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2019-09-23 08:50:44', '2019-09-23 08:54:40', NULL, NULL, '$', 1, 6, 10, 0, NULL),
(16, 53, 'BZh91AY&SYBÀäå\0_P\0Xø?ÏüD¿ïÿúP~îÍ©¦&\0\nVÚæÓ0\0\0\0L#$	¤I¨ý$\r\0 \0\0Ð\0I©SÔñOP4`ÔhÉêÔ 9¦&4À#\0\0\0À*a4©3HÃSLCÔ=&jJH1ñ|[ÈúGt<]õw÷ÑsÁjVf±!ÆãØVQ¬KUvZ=ìâÑY¿I¹£ôÎùcÜï÷\"Ví^ÍçÒ¢Ö·}Ë²sìÒú:oiÎî1Ù¢!Gc5Íps;Ù¹5¯Ö¥Dz#ÔÙ1«W×ddB#\"YÂ¦Q6R0£:÷ÌP-²ÇÂLñPµ±ÎJJQÌbô(e8w©Õr®bÂÆKåÃÎ\n!1óõä(~Ñ\nÃÄlKµE\n4­X¢Y*¢ÕË2UJX´Ô´îCaGæJ kËTU	ºÀR¤êo<D)®¨XÈ09IMD+U|4HN	°-,U@Xß:êÂÜ«Ø)aK\n3ÌÐÔDÔ¨d 1BQäÑ ²%ñLb\nm¸dácSÆ-Øt)15ÎbNÝ&5É!b×Qñ££r]K%94Y|a4^±W*××ÞàÔýîOcÏK±¡òAå7¬{­îS\'êdì+òO²<ôÊéKdVP²Úpj@©Å®¿Ú_µF_7JØ±GÁâïäû49¢­îØöØ¶*ç4,gØÜ4¶¸FIåGä|d»óÕbäj\\É©G!6¸±Mæd5ÞsXÑÉ-+³ÎÁ_´\\uµ24$Þ}åÞíãKè¿vÎeÔQFKÕ.LÌ[t`îÍl­ÌDª¥FÍHRÍVpó°Å-iÆÆvdW »×ÓýK2®S¸³ÜÆnêQDªÌ­ËÑTíwGcÊ9DB5ÜçJP¤Ðéãr»²­\n8äUX²cF7ÉmëðUØWT#lt&[7µRØÑÃ¡ÇzR]O»JÅDÆuVöõ7ý¨Ñh¨È# `¢8ÐÇ8±ÂPÅÑ%DgRnðj2¬0Ä­Ü^êû+×w&%îbÇß²ôºÄQ©ÀðOÙÐ¡æ-R=lµ¥,cxIÈªà6w9ÙÏ Ü1N¢ã¨ÉEcJ±6¨¢vQ~üÞ¨ýÉJ$êJb$¡\0X$ì!3)9æÚô\\­Ý+ülYØ%ÌJªù4C5ªR8óQ¥ÕÆh±2µIÁæuã\\-588Ì8`ÔÖ92²·\r±DÅ¦=q²a´¸°Ñ¨à¡dYº8)¹¸î[NuSJX&vÉDºÙ±XÂØâ¥GüA§OªAIH5?âîH§\nX ', 'Cash On Delivery', 'shipto', 'Dhaka', '1', 17.33, NULL, NULL, 'cT8O1570250294', 'Completed', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2019-10-05 04:38:14', '2019-10-05 04:40:59', NULL, NULL, '$', 1, 0, 10, 0, NULL),
(17, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'o9Tk1570860365', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:06:05', '2019-10-12 06:06:05', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(18, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, '0A1d1570860408', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:06:48', '2019-10-12 06:06:48', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(19, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'pFn71570860451', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:07:31', '2019-10-12 06:07:31', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(20, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'JckN1570860594', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:09:54', '2019-10-12 06:09:54', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(21, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'Pjkz1570860905', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:15:05', '2019-10-12 06:15:05', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(22, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'WBRV1570860908', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:15:08', '2019-10-12 06:15:08', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(23, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'XUb11570861043', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:17:23', '2019-10-12 06:17:23', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(24, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'V6dL1570861309', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:21:49', '2019-10-12 06:21:49', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(25, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'nKOg1570861354', 'Pending', 'lopaniku@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:22:34', '2019-10-12 06:22:34', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `tax`, `dp`, `pay_id`) VALUES
(26, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, '1ZGR1570861432', 'Pending', 'muraly1989@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:23:52', '2019-10-12 06:23:52', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(27, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, '5rSB1570861559', 'Pending', 'muraly1989@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:25:59', '2019-10-12 06:25:59', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(28, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, '66B11570861604', 'Pending', 'muraly1989@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:26:44', '2019-10-12 06:26:44', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(29, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'u3DR1570861717', 'Pending', 'muraly1989@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:28:37', '2019-10-12 06:28:37', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(30, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'H38A1570861795', 'Pending', 'muraly1989@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-10-12 06:29:55', '2019-10-12 06:29:55', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(31, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'VIfb1570861871', 'Declined', 'muraly1989@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'declined', '2019-10-12 06:31:11', '2019-10-12 07:34:01', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(32, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'dz0Q1570861910', 'Declined', 'muraly1989@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'declined', '2019-10-12 06:31:50', '2019-10-12 07:33:14', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL),
(33, 53, 'BZh91AY&SYØ\0Á_@\0Psø?ïÿÔ¿ïÿú`ÿ>@(@R R@sFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"H	4¡0SM\r£@\0\0RD¤Ä4h&!¢êÐe£Ò=Gz1>,ô{Ïìübýßíð`²¤IaõK¤béùOÏEê9bI\'!.ÐP~¡ÂXxiynÐ¥ØpÙ¡§£è`ìtÝÀòåÃNÔc·«vèYÆ¡\nh=[!Ëpð=CCgA 9!àú\n,9a¯Ñ8Ë§ctà!QµDfn¢Ü³%<féZßÝçmÏ	Ô< ¾h¤\nPqhrØöYÃWö6RA-À9béÛB\rÀ°Ò4é³íåÃF\\DG´¦»6tüGÂÈ 1ÝÃÅØiîÉu4Ó^©Á£.CM,ÙÛCpZb#\Z¶\npÜóÐáó÷vU ¿\rÉváÝfÌac£`°dÔi²ÙÉ02,XXÌÄÀ±FeËê\nWCÜÃÔà 88rlpÇmC¤.ð`Z\r·w§ÁÂB»·-ÐSfÍË:pàC.ÁÐÙÐ473d4¦<«çP{éÚdR1RÍ4¡HÓöÅ¡n4ÞíÂÉf-Â,`]¡¸À|LBF0#\01ADaLD\n`£¡ER\nÍSnéd¼åß!5ÄIËm×\'ìQI)á¸íÀaï¼<´÷,9xs»v,°yjùàcwË8CÆ\\Ðå¡»W-	\rºpnÄ­lò¼7xy^FÌ2Gn:!·£ÃCrdK0J\' ýÿ.ôc½ÐQÁü2<MlO½OÕâo5¦o-R¶®ø?F^EO(pa¤8I/(L&2Óµtn>éyýJOaø¥ð±Î÷<Ç´Þ}Z{ö¸¿Sêo5Âæå\'å01Îm0Ni£SâëTâ´©:ysê¤Úe?¤åo;%±°å5M	ôQ,v@Áà:7(\nB1Cý,î}èäÔnc)¾{òóYyiFDÜå)I±Êqt^R|JãiÓC§Ô}\'ÈáÛÑ°h!b\Z¥JBéR¥L\'q5)ÐÃÚl2IP¢ÇÑêa0+d¼ÞZ#aFEÍÑ<M\\Å\næÂl4mRLfs|é=æQàºz%C¦vg!®TÊyË%,X¹Û6ªLÌÃ,Té\'Sìõ\'Á­ÿhÆ\n!ôE¨TO]èÒi\rî6iÝ30dÀòh¹ºdtÂÇTÜK¼JQ¤Ù3LÓ¹sîõ$Âm\Z;²,û;gÜpG²Y¨ß:çç¥%¥¥å*%Éy\'ÔÄ¼ÌçJ;J!¤00,/i®,P`^0-0tÍëe&äÌ±33õ&Èp(S¨Ü[+³V´üÂXO;+þU=R¡©©rÅ\\È{§4¼ïNwQLä.o:¡ÅÓæ>ÇYiÜ\n)3-iºo#ÔÝ3e)51%;bQæIRÃ)°é8Ìg<±PôÒ\Zc-%åáiª4(´;ËÄÌê,X©Íc3®l3¶g;æÂCñQ(UyJ-$¡HRÅ @\n!\n1E\nUI¼Ðë\'Dîw&sa(¨T<Læ\'f¼H¹y/$ÐÀ´¤,zÁÐ<c\Z\\FÐøÃÈðÙÑ¥ÚùH	Èw¨#46{\ZpY:ÍQ´©c¤¨zÐÿÔ¦ô¤å;\rsdÐî\'RYCZFpâZj.úNÌ\\âu®uc%´©Ó)8¡È\\¨i1Ü¤ìO	bÎÙ!õïï	\"¥\nKJhÿâîH§\nÐs{\0', 'bKash', 'shipto', 'Dhaka', '3', 2078.56, '123456', NULL, 'ZdFW1570862040', 'Declined', 'muraly1989@gmail.com', 'Nikunja Behari Goswami', 'Bangladesh', '01723681138', '8, Sabalia', 'Tangail', '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'declined', '2019-10-12 06:34:00', '2019-10-12 07:33:04', NULL, NULL, '৳', 84.63, 0, 10, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci,
  `contact_text` text COLLATE utf8mb4_unicode_ci,
  `side_title` text COLLATE utf8mb4_unicode_ci,
  `side_text` text COLLATE utf8mb4_unicode_ci,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `slider` tinyint(1) NOT NULL DEFAULT '1',
  `service` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `small_banner` tinyint(1) NOT NULL DEFAULT '1',
  `best` tinyint(1) NOT NULL DEFAULT '1',
  `top_rated` tinyint(1) NOT NULL DEFAULT '1',
  `large_banner` tinyint(1) NOT NULL DEFAULT '1',
  `big` tinyint(1) NOT NULL DEFAULT '1',
  `hot_sale` tinyint(1) NOT NULL DEFAULT '1',
  `partners` tinyint(1) NOT NULL DEFAULT '0',
  `review_blog` tinyint(1) NOT NULL DEFAULT '1',
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `bottom_small` tinyint(1) NOT NULL DEFAULT '0',
  `flash_deal` tinyint(1) NOT NULL DEFAULT '0',
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'muraly1989@gmail.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px; font-weight: 600; line-height: 50px; font-size: 40px; color: rgb(255, 85, 0); text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '3584 Hickory Heights Drive ,Hanover MD 21076, USA', '00 000 000 000', '00 000 000 000', 'muraly1989@gmail.com', 'http://laraecom.tk', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1565150257banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 1, 1, '1565150257banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(1, '1563165366brand-1.png', 'https://www.google.com/'),
(2, '1563165383brand-2.png', 'https://www.google.com/'),
(3, '1563165393brand-3.png', 'https://www.google.com/'),
(4, '1563165400brand-1.png', NULL),
(5, '1563165411brand-2.png', NULL),
(6, '1563165444brand-3.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `photo`, `title`, `details`, `status`) VALUES
(2, '15679955751200x630wa.png', 'Rocket', '<b>Rocket Mobile No: +880 1xxx-xxxxxx<br>Rocket Reference No: xxxx</b>', 1),
(3, '1567995405index.png', 'bKash', '<div style=\"text-align: left;\"><b>Mobile Number: +880 1723681138<br></b></div><b><div style=\"text-align: left;\"><b>Reference Number: 787980</b></div></b>', 1),
(4, NULL, 'QuickCash', '<b>MOBILE NUMBER: 9038423432849</b>', 0),
(5, NULL, 'Easy Cash', '<b>Please Call at 98989898989</b>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(3, 'Dhaka'),
(7, 'Tangail'),
(8, 'Mirzapur');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `stime` time(6) NOT NULL,
  `etime` time(6) NOT NULL,
  `slimit` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `views` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License','Class') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `date`, `stime`, `etime`, `slimit`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`) VALUES
(87, NULL, 'normal', NULL, 0, 4, 19, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'HP Pavilion', 'hp-pavilion-ehr8768f', '1568086749lgQPCdWR.png', '1568086749wdCZ2op8.jpg', NULL, NULL, NULL, NULL, NULL, 500, 0, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 10, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 1, 10, 'HP,Laptop', '20% OFF', '#ff0000', 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-10 03:39:09', '2019-11-28 02:09:14', 0, NULL),
(88, NULL, 'normal', NULL, 0, 4, 19, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'HP Pavilion (Copy) (Copy) (Copy) (Copy)', 'hp-pavilion-copy-copy-copy-copy-xqc88hzd', '15680868147UIb144d.png', '1568086814GBlDxzrN.jpg', NULL, NULL, NULL, NULL, NULL, 1499.2, 0, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 7, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 1, 106, 'HP,Laptop', '10% OFF', '#ff0000', 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 0, 0, 0, '2019-09-10 03:40:14', '2019-12-25 04:47:40', 0, NULL),
(89, NULL, 'normal', NULL, 0, 4, 19, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'HP Pavilion (Copy)', 'hp-pavilion-copy-e9o896qe', '1568086927X0Vencyz.png', '1568086927zP1NfoPR.jpg', NULL, NULL, NULL, NULL, NULL, 1400, 1499.9, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 7, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 1, 64, 'HP,Laptop', '10% OFF', '#ff0000', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=Fe9YJozRi78', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 0, 0, 0, '2019-09-10 03:42:07', '2019-12-26 02:11:26', 1, '19/30/2019'),
(90, NULL, 'normal', NULL, 0, 11, 11, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Velvet and net saree with Blouse piece', 'velvet-and-net-saree-with-blouse-piece-fd0904ai', '1568087409aDZhteE4.png', '15680874090mDjI5Hx.jpg', NULL, NULL, NULL, NULL, NULL, 200.4, 210, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 18, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 1, 18, 'Women', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=_gyJQkPSFiU', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 0, 0, 0, '2019-09-10 03:50:09', '2019-12-25 02:39:34', 0, NULL),
(91, NULL, 'normal', NULL, 0, 11, 11, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Cotton Silk Partywear With Blouse Saree', 'cotton-silk-partywear-with-blouse-saree-pqe91yxn', '1568087522IO15cKsi.png', '156808752244YbOpVl.jpg', NULL, NULL, NULL, NULL, NULL, 190, 0, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 20, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 1, 4, 'Women', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=_gyJQkPSFiU', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2019-09-10 03:52:02', '2019-11-27 05:08:10', 0, NULL),
(92, NULL, 'normal', NULL, 0, 11, 11, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Cotton Silk Partywear With Blouse Saree (Copy)', 'cotton-silk-partywear-with-blouse-saree-copy-ns892dgl', '1568087686GkPkMkLX.png', '1568087686dWcWOcYR.jpg', NULL, NULL, NULL, NULL, NULL, 190, 200, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 18, 'Pellentesque habitant morbi tristique senectus et netus et malesuada \r\nfames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, \r\nultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam \r\negestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend \r\nleo.', 1, 6, 'Women', '5% OFF', '#ff0000', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=_gyJQkPSFiU', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-10 03:54:46', '2019-12-25 00:54:54', 0, NULL),
(94, NULL, 'normal', NULL, 53, 4, 19, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'TEst', 'test-7u794sz5', '1568882010a03soUYB.png', '1568882010r61cvkA8.jpg', NULL, NULL, NULL, NULL, NULL, 5, 0, 'test', 12, 'test', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-19 08:33:30', '2019-09-26 12:18:09', 0, NULL),
(95, NULL, 'normal', NULL, 53, 21, NULL, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Test', 'test-ofx95yyq', '1568882484TcKlQZRK.png', '1568882484gIFneEYM.jpg', NULL, NULL, NULL, NULL, NULL, 5, 0, 'test', NULL, 'test', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-19 08:41:24', '2019-09-21 07:39:13', 0, NULL),
(96, NULL, 'normal', NULL, 53, 12, 16, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Half Sleeve Tshirt', 'half-sleeve-tshirt-dmy96nqx', '1569224728DEQsrGmB.png', '1569224728BujcSeng.jpg', NULL, 'M,X,XL', '8,5,5', '0,0,5', '#000000,#c3c3c3,#51a77b', 15, 20, '<div class=\"colon set1\">\r\n                                        <span class=\"tab-icon-all set1 hidden-xs\"></span>\r\n\r\n                                        Made of 100% good quality combed cotton. The pattern of t-shirt is comfy and roomy.<br>The collar is roomy. It is not slim-fit.<br><br>The highlight of the Original fabric is that it doesn\'t shrink as long as the washing instructions are heeded.<br><br>The coloring materials used for production are certified and safe, posing no risk for human health.<br><br>\r\n                                            <p class=\"\">\r\n                                                We use special printing \r\ntechnique called screen printing on all our breathable fabrics without \r\npresenting any sense of plasticity.</p>\r\n                                        </div>', NULL, 'We stand behind every item at all times. If you are unsatisfied \r\nwith your purchase for any reason, simply ship it back to us whenever \r\nyou want to exchange or get a refund for it.', 1, 10, 'tshirt,men', NULL, NULL, 0, '3', 0, NULL, NULL, 'https://youtu.be/L-9s4nTLSdA', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-23 07:45:28', '2019-12-25 01:03:43', 0, NULL),
(97, NULL, 'normal', NULL, 13, 10, 6, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 't-shart-007', 't-shart-007-ogr97kpv', '1569228588Ta0RcFXY.png', '1569228588uB0U1aLF.jpg', NULL, NULL, NULL, NULL, NULL, 2, 2, '<br>', 4, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-23 08:49:48', '2019-11-01 06:01:39', 0, NULL),
(98, NULL, 'normal', NULL, 55, 12, 16, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'shirt', 'shirt-3xo98nd2', '1569413779ifUZObXv.png', '1569413779DsBzg3Vy.jpg', NULL, NULL, NULL, NULL, NULL, 20, 25, '<br>', 2, '<br>', 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-25 12:16:19', '2019-09-25 12:43:03', 0, NULL),
(99, NULL, 'normal', NULL, 13, 10, 5, NULL, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Another New product', 'another-new-product-jlr99hef', '15694795999YRMt567.png', '1569479599muBoHlRd.jpg', NULL, NULL, NULL, NULL, NULL, 150, 140, '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries,', 5, '<br>', 1, 4, 'New', 'New', '#0055e7', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=msCn-jEoIwM&t=1s', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-26 06:33:19', '2019-10-04 19:23:53', 0, NULL),
(100, NULL, 'normal', NULL, 29, 10, 4, 9, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'SM Santo', 'sm-santo-dgy100mo7', '1569735152rSqXWjC4.png', '1569735152As0qi7Ms.jpg', NULL, NULL, NULL, NULL, NULL, 50, 80, 'test', NULL, 'test', 1, 10, 'sm', '40% Off', '#1691ee', 0, NULL, 0, NULL, NULL, 'https://youtube.com', 'Digital', NULL, NULL, 'https://facebook.com', NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 0, 0, 0, '2019-09-29 05:32:32', '2019-12-25 04:47:13', 0, NULL),
(101, NULL, 'normal', NULL, 0, 13, 17, 16, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Chemistry', 'chemistry-pbx101kvw', '15765638291ErcIqzo.png', '1576563830GnUCvsco.jpg', '1576563829php_zip-1.15.4-7.2-nts-vc15-x64.zip', NULL, NULL, NULL, NULL, 444, 44, 'book', NULL, '<br>', 1, 0, 'eqweqeq', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-17 00:23:49', '2019-12-17 00:23:50', 0, NULL),
(102, NULL, 'normal', NULL, 0, 13, 17, 16, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Chemistry', 'chemistry-awj102ysb', '1576566852letK7VX1.png', '15765668533N6P395m.jpg', '1576566852php_zip-1.15.4-7.2-nts-vc15-x64.zip', NULL, NULL, NULL, NULL, 444, 44, 'book', NULL, '<br>', 1, 0, 'eqweqeq', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-17 01:14:12', '2019-12-17 01:14:13', 0, NULL),
(103, NULL, 'normal', NULL, 0, 13, 17, 16, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Chemistry', 'chemistry-hmj103ulp', '15765673528HHnWPdc.png', '1576567353hzGgbfc5.jpg', '1576567352php_zip-1.15.4-7.2-nts-vc15-x64.zip', NULL, NULL, NULL, NULL, 444, 44, 'book', NULL, '<br>', 1, 0, 'eqweqeq', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-17 01:22:32', '2019-12-17 01:22:33', 0, NULL),
(104, NULL, 'normal', NULL, 0, 13, 17, 16, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Physics', 'physics-mff104thx', '1576567500vF7g9Hfy.png', '1576567500tJTjMjiy.jpg', '1576567500php_zip-1.15.4-7.2-nts-vc15-x64.zip', NULL, NULL, NULL, NULL, 444, 44, 'book', NULL, '<br>', 1, 0, 'sdasdasd', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-17 01:25:00', '2019-12-17 01:25:00', 0, NULL),
(105, NULL, 'normal', NULL, 0, 13, 17, 16, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Mathematics', 'mathematics-skk105cec', '1576567769u5insiJX.png', '1576567769ViGxAgC2.jpg', '1576567769NOTICE_B.Sc_Defense-Spring-2019.pdf', NULL, NULL, NULL, NULL, 444, 44, 'easdasda', NULL, 'dasdadaas', 1, 0, 'sdadadadad', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-17 01:29:29', '2019-12-17 01:29:29', 0, NULL),
(106, NULL, 'normal', NULL, 57, 13, 17, 16, '0000-00-00', '00:00:00.000000', '00:00:00.000000', 0, 'Physics2', 'physics2-miw106pr9', '1576652446n8DNAlSc.png', '1576652452M898y72K.jpg', '15766524464-5-2019 10-1PM.pdf', NULL, NULL, NULL, NULL, 5555, 555, 'dfgdfggdfgdgdf', NULL, 'dfgdfgdfgdfgdfgdfgdgd', 1, 0, 'gdfgfdgdfgdfg', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-18 01:00:46', '2019-12-18 01:00:53', 0, NULL),
(107, NULL, 'normal', NULL, 57, 13, 17, 16, '2019-12-25', '13:00:00.000000', '14:00:00.000000', 40, 'Basudev Goswami', 'basudev-goswami-9mp107ly0', '1577293188lbtr3yGs.png', '157729319067mG8U6n.jpg', '15772931884-5-2019 10-1PM.pdf', NULL, NULL, NULL, NULL, 3321, 3121, 'dsaaadasdadaadasda', NULL, 'weweqqwqeqe', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-25 10:59:48', '2019-12-25 10:59:50', 0, NULL),
(108, NULL, 'normal', NULL, 57, 13, 17, 16, '2019-12-25', '14:00:00.000000', '16:30:00.000000', 40, 'Size', 'size-pao108y3r', '1577294248BQFc6Wik.png', '1577294248c0D3GObV.jpg', '15772942484-5-2019 10-1PM.pdf', NULL, NULL, NULL, NULL, 8789, 8898908, 'jhkjlkjlklkjkhkhuubb', NULL, 'jhkjhk', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-25 11:17:28', '2019-12-25 11:17:28', 0, NULL),
(109, NULL, 'normal', NULL, 57, 13, 17, 16, '2019-12-25', '16:00:00.000000', '18:00:00.000000', 40, 'pineapple', 'pineapple-x6c1093sh', '1577336279CRFYS5ky.png', '1577336281hv0QPSxp.jpg', '15773362794-5-2019 10-1PM.pdf', NULL, NULL, NULL, NULL, 678688, 688876868, 'hgjhkhkjhuiuiouoiuyitrtyr', NULL, 'jhkhkjhjjk', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-25 22:57:59', '2019-12-25 22:58:01', 0, NULL),
(110, NULL, 'normal', NULL, 57, 13, NULL, NULL, '2019-12-26', '12:00:00.000000', '14:00:00.000000', 40, 'pineapple', 'pineapple-ubl1108ow', '1577345081S5wHnpbq.png', '1577345082ZstzirDH.jpg', '15773450814-5-2019 10-1PM.pdf', NULL, NULL, NULL, NULL, 44, 44, 'cvbnvbnbb', NULL, 'nbvnvnvb', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-26 01:24:41', '2019-12-26 01:24:42', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 29, '2018-09-01'),
(2, 29, '2018-11-18'),
(3, 29, '2018-11-18'),
(8, 29, '2018-11-18'),
(9, 28, '2018-11-18'),
(10, 28, '2018-11-18'),
(15, 30, '2018-11-18'),
(16, 30, '2018-11-18'),
(17, 30, '2018-11-18'),
(18, 30, '2018-11-18'),
(19, 30, '2018-11-18'),
(20, 27, '2018-11-18'),
(22, 29, '2018-11-18'),
(23, 28, '2018-11-18'),
(24, 30, '2018-11-18'),
(25, 30, '2018-11-18'),
(26, 30, '2018-11-18'),
(27, 30, '2018-11-18'),
(28, 21, '2018-11-18'),
(29, 7, '2018-11-18'),
(30, 21, '2018-11-19'),
(31, 1, '2018-11-19'),
(32, 27, '2018-11-19'),
(33, 27, '2018-11-20'),
(34, 22, '2018-11-22'),
(35, 22, '2018-11-22'),
(36, 22, '2018-11-22'),
(46, 27, '2018-11-25'),
(47, 29, '2018-11-25'),
(48, 29, '2018-11-25'),
(49, 29, '2018-11-25'),
(50, 29, '2018-11-25'),
(51, 28, '2018-11-25'),
(52, 28, '2018-11-25'),
(53, 22, '2018-11-25'),
(54, 26, '2018-11-25'),
(55, 29, '2018-11-25'),
(56, 27, '2018-11-25'),
(57, 27, '2018-11-25'),
(58, 27, '2018-11-25'),
(59, 27, '2018-11-25'),
(61, 30, '2018-11-25'),
(62, 13, '2018-11-25'),
(115, 1, '2018-12-08'),
(116, 1, '2018-12-08'),
(118, 29, '2018-12-08'),
(119, 29, '2018-12-08'),
(120, 29, '2018-12-08'),
(121, 29, '2018-12-08'),
(122, 29, '2018-12-08'),
(123, 29, '2018-12-08'),
(138, 30, '2018-12-08'),
(139, 30, '2018-12-08'),
(140, 29, '2018-12-08'),
(141, 30, '2018-12-08'),
(142, 30, '2018-12-08'),
(143, 30, '2018-12-08'),
(144, 30, '2018-12-08'),
(145, 30, '2018-12-08'),
(146, 30, '2018-12-08'),
(147, 30, '2018-12-08'),
(148, 30, '2018-12-08'),
(149, 29, '2018-12-08'),
(151, 29, '2018-12-08'),
(152, 29, '2018-12-08'),
(153, 29, '2018-12-08'),
(154, 29, '2018-12-08'),
(155, 29, '2018-12-08'),
(156, 30, '2018-12-08'),
(157, 30, '2018-12-08'),
(158, 30, '2018-12-08'),
(159, 30, '2018-12-08'),
(160, 30, '2018-12-08'),
(161, 30, '2018-12-08'),
(162, 30, '2018-12-08'),
(163, 30, '2018-12-08'),
(164, 30, '2018-12-08'),
(165, 30, '2018-12-08'),
(166, 30, '2018-12-08'),
(167, 30, '2018-12-08'),
(168, 30, '2018-12-08'),
(169, 30, '2018-12-08'),
(170, 30, '2018-12-08'),
(171, 30, '2018-12-08'),
(172, 30, '2018-12-08'),
(173, 30, '2018-12-08'),
(174, 30, '2018-12-08'),
(175, 30, '2018-12-08'),
(176, 30, '2018-12-08'),
(177, 30, '2018-12-08'),
(178, 30, '2018-12-08'),
(179, 30, '2018-12-08'),
(180, 30, '2018-12-08'),
(181, 30, '2018-12-08'),
(182, 30, '2018-12-08'),
(183, 30, '2018-12-08'),
(184, 30, '2018-12-08'),
(185, 30, '2018-12-08'),
(186, 30, '2018-12-08'),
(187, 30, '2018-12-08'),
(188, 30, '2018-12-08'),
(189, 30, '2018-12-08'),
(190, 30, '2018-12-08'),
(191, 30, '2018-12-08'),
(199, 29, '2018-12-08'),
(200, 29, '2018-12-08'),
(201, 29, '2018-12-08'),
(213, 30, '2018-12-08'),
(214, 30, '2018-12-08'),
(215, 30, '2018-12-08'),
(216, 30, '2018-12-08'),
(217, 29, '2018-12-08'),
(218, 29, '2018-12-08'),
(219, 29, '2018-12-08'),
(220, 30, '2018-12-08'),
(221, 30, '2018-12-08'),
(222, 30, '2018-12-08'),
(223, 30, '2018-12-08'),
(224, 30, '2018-12-08'),
(225, 30, '2018-12-08'),
(226, 30, '2018-12-08'),
(227, 30, '2018-12-08'),
(228, 30, '2018-12-08'),
(229, 30, '2018-12-08'),
(230, 30, '2018-12-08'),
(231, 30, '2018-12-08'),
(232, 30, '2018-12-08'),
(233, 30, '2018-12-08'),
(234, 30, '2018-12-08'),
(235, 30, '2018-12-08'),
(236, 30, '2018-12-08'),
(237, 30, '2018-12-08'),
(238, 30, '2018-12-08'),
(239, 30, '2018-12-08'),
(240, 30, '2018-12-08'),
(241, 30, '2018-12-08'),
(242, 30, '2018-12-08'),
(243, 30, '2018-12-08'),
(244, 30, '2018-12-08'),
(245, 30, '2018-12-08'),
(246, 30, '2018-12-08'),
(247, 30, '2018-12-08'),
(277, 30, '2018-12-09'),
(302, 30, '2018-12-09'),
(303, 30, '2018-12-09'),
(315, 4, '2018-12-19'),
(316, 29, '2018-12-19'),
(317, 29, '2018-12-19'),
(318, 29, '2018-12-19'),
(319, 29, '2018-12-19'),
(320, 29, '2018-12-19'),
(321, 29, '2018-12-19'),
(322, 29, '2018-12-19'),
(323, 29, '2018-12-19'),
(324, 29, '2018-12-19'),
(325, 29, '2018-12-19'),
(326, 29, '2018-12-19'),
(327, 29, '2018-12-19'),
(328, 29, '2018-12-19'),
(329, 29, '2018-12-19'),
(330, 29, '2018-12-19'),
(331, 29, '2018-12-19'),
(332, 29, '2018-12-19'),
(333, 29, '2018-12-19'),
(334, 30, '2018-12-19'),
(335, 30, '2018-12-19'),
(336, 30, '2018-12-19'),
(337, 30, '2018-12-19'),
(338, 30, '2018-12-19'),
(339, 30, '2018-12-19'),
(340, 30, '2018-12-19'),
(341, 30, '2018-12-19'),
(342, 30, '2018-12-19'),
(371, 30, '2018-12-19'),
(372, 30, '2018-12-19'),
(376, 28, '2018-12-19'),
(395, 1, '2018-12-20'),
(396, 1, '2018-12-20'),
(397, 1, '2018-12-20'),
(398, 1, '2018-12-20'),
(399, 1, '2018-12-20'),
(400, 5, '2018-12-20'),
(401, 1, '2018-12-20'),
(402, 1, '2018-12-20'),
(403, 1, '2018-12-20'),
(404, 1, '2018-12-20'),
(1625, 80, '2019-08-05'),
(1628, 83, '2019-08-05'),
(1629, 80, '2019-08-05'),
(1634, 80, '2019-08-06'),
(1640, 80, '2019-08-06'),
(1641, 80, '2019-08-06'),
(1643, 83, '2019-08-06'),
(1644, 83, '2019-08-06'),
(1645, 80, '2019-08-06'),
(1654, 80, '2019-08-06'),
(1655, 80, '2019-08-06'),
(1695, 80, '2019-08-06'),
(1696, 80, '2019-08-06'),
(1700, 83, '2019-08-06'),
(1701, 83, '2019-08-06'),
(1703, 83, '2019-08-06'),
(1704, 83, '2019-08-06'),
(1705, 83, '2019-08-06'),
(1708, 83, '2019-08-06'),
(1709, 83, '2019-08-06'),
(1842, 83, '2019-08-07'),
(1855, 80, '2019-09-02'),
(1942, 83, '2019-09-05'),
(1966, 83, '2019-09-08'),
(1967, 83, '2019-09-08'),
(1968, 83, '2019-09-08'),
(1969, 83, '2019-09-08'),
(1970, 83, '2019-09-08'),
(1971, 83, '2019-09-08'),
(1972, 83, '2019-09-08'),
(1973, 83, '2019-09-08'),
(1974, 83, '2019-09-08'),
(1975, 83, '2019-09-08'),
(1976, 83, '2019-09-08'),
(1977, 83, '2019-09-08'),
(1978, 83, '2019-09-08'),
(1979, 83, '2019-09-08'),
(1980, 83, '2019-09-08'),
(1981, 83, '2019-09-08'),
(1982, 83, '2019-09-08'),
(1983, 83, '2019-09-08'),
(1984, 83, '2019-09-08'),
(1985, 83, '2019-09-08'),
(1986, 83, '2019-09-08'),
(1987, 83, '2019-09-08'),
(2009, 80, '2019-09-10'),
(2010, 88, '2019-09-10'),
(2011, 89, '2019-09-10'),
(2012, 87, '2019-09-10'),
(2013, 87, '2019-09-10'),
(2014, 90, '2019-09-10'),
(2015, 88, '2019-09-10'),
(2016, 88, '2019-09-10'),
(2017, 89, '2019-09-10'),
(2018, 89, '2019-09-10'),
(2019, 88, '2019-09-10'),
(2020, 91, '2019-09-11'),
(2021, 87, '2019-09-11'),
(2022, 92, '2019-09-11'),
(2023, 90, '2019-09-11'),
(2024, 92, '2019-09-11'),
(2025, 92, '2019-09-11'),
(2026, 87, '2019-09-11'),
(2027, 89, '2019-09-11'),
(2028, 89, '2019-09-12'),
(2029, 89, '2019-09-12'),
(2030, 88, '2019-09-12'),
(2031, 90, '2019-09-12'),
(2032, 91, '2019-09-12'),
(2033, 92, '2019-09-12'),
(2038, 91, '2019-09-17'),
(2039, 87, '2019-09-19'),
(2040, 88, '2019-09-19'),
(2041, 92, '2019-09-19'),
(2042, 89, '2019-09-21'),
(2043, 94, '2019-09-21'),
(2044, 95, '2019-09-21'),
(2045, 89, '2019-09-22'),
(2046, 89, '2019-09-23'),
(2047, 96, '2019-09-23'),
(2048, 96, '2019-09-23'),
(2049, 96, '2019-09-23'),
(2050, 96, '2019-09-23'),
(2051, 96, '2019-09-23'),
(2052, 89, '2019-09-23'),
(2053, 88, '2019-09-23'),
(2054, 97, '2019-09-23'),
(2055, 97, '2019-09-23'),
(2056, 96, '2019-09-24'),
(2057, 97, '2019-09-24'),
(2058, 90, '2019-09-24'),
(2059, 89, '2019-09-25'),
(2060, 96, '2019-09-25'),
(2061, 88, '2019-09-26'),
(2062, 99, '2019-09-26'),
(2063, 90, '2019-09-26'),
(2064, 88, '2019-09-26'),
(2065, 88, '2019-09-26'),
(2066, 90, '2019-09-26'),
(2067, 99, '2019-09-26'),
(2068, 97, '2019-09-26'),
(2069, 89, '2019-09-26'),
(2070, 94, '2019-09-26'),
(2071, 89, '2019-09-26'),
(2072, 99, '2019-09-26'),
(2073, 90, '2019-09-28'),
(2074, 89, '2019-09-28'),
(2075, 90, '2019-09-28'),
(2076, 90, '2019-09-28'),
(2077, 90, '2019-09-28'),
(2078, 90, '2019-09-28'),
(2079, 90, '2019-09-28'),
(2080, 89, '2019-09-28'),
(2081, 89, '2019-09-29'),
(2082, 88, '2019-09-29'),
(2083, 88, '2019-09-29'),
(2084, 88, '2019-09-29'),
(2085, 88, '2019-09-29'),
(2086, 89, '2019-09-30'),
(2087, 100, '2019-09-30'),
(2088, 88, '2019-10-01'),
(2089, 88, '2019-10-01'),
(2090, 88, '2019-10-01'),
(2091, 96, '2019-10-01'),
(2092, 99, '2019-10-04'),
(2093, 88, '2019-10-05'),
(2094, 90, '2019-10-15'),
(2095, 90, '2019-10-19'),
(2096, 87, '2019-10-22'),
(2097, 87, '2019-10-22'),
(2098, 88, '2019-11-01'),
(2099, 87, '2019-11-01'),
(2100, 87, '2019-11-01'),
(2101, 88, '2019-11-01'),
(2102, 88, '2019-11-01'),
(2103, 88, '2019-11-01'),
(2104, 88, '2019-11-01'),
(2105, 96, '2019-11-01'),
(2106, 97, '2019-11-01'),
(2107, 100, '2019-11-26'),
(2108, 100, '2019-11-26'),
(2109, 88, '2019-11-27'),
(2110, 88, '2019-11-27'),
(2111, 88, '2019-11-27'),
(2112, 88, '2019-11-27'),
(2113, 88, '2019-11-27'),
(2114, 88, '2019-11-27'),
(2115, 88, '2019-11-27'),
(2116, 89, '2019-11-27'),
(2117, 89, '2019-11-27'),
(2118, 100, '2019-11-27'),
(2119, 89, '2019-11-27'),
(2120, 90, '2019-11-27'),
(2121, 89, '2019-11-27'),
(2122, 88, '2019-11-27'),
(2123, 88, '2019-11-27'),
(2124, 88, '2019-11-27'),
(2125, 88, '2019-11-27'),
(2126, 88, '2019-11-27'),
(2127, 88, '2019-11-27'),
(2128, 88, '2019-11-27'),
(2129, 88, '2019-11-27'),
(2130, 88, '2019-11-27'),
(2131, 88, '2019-11-27'),
(2132, 88, '2019-11-27'),
(2133, 88, '2019-11-27'),
(2134, 88, '2019-11-27'),
(2135, 88, '2019-11-27'),
(2136, 88, '2019-11-27'),
(2137, 88, '2019-11-27'),
(2138, 88, '2019-11-27'),
(2139, 88, '2019-11-27'),
(2140, 88, '2019-11-27'),
(2141, 88, '2019-11-27'),
(2142, 88, '2019-11-27'),
(2143, 88, '2019-11-27'),
(2144, 88, '2019-11-27'),
(2145, 88, '2019-11-27'),
(2146, 88, '2019-11-27'),
(2147, 88, '2019-11-27'),
(2148, 88, '2019-11-27'),
(2149, 88, '2019-11-27'),
(2150, 88, '2019-11-27'),
(2151, 88, '2019-11-27'),
(2152, 88, '2019-11-27'),
(2153, 88, '2019-11-27'),
(2154, 88, '2019-11-27'),
(2155, 88, '2019-11-27'),
(2156, 88, '2019-11-27'),
(2157, 88, '2019-11-27'),
(2158, 88, '2019-11-27'),
(2159, 88, '2019-11-27'),
(2160, 88, '2019-11-27'),
(2161, 88, '2019-11-27'),
(2162, 88, '2019-11-27'),
(2163, 88, '2019-11-27'),
(2164, 88, '2019-11-27'),
(2165, 88, '2019-11-27'),
(2166, 88, '2019-11-27'),
(2167, 88, '2019-11-27'),
(2168, 88, '2019-11-27'),
(2169, 88, '2019-11-27'),
(2170, 88, '2019-11-27'),
(2171, 88, '2019-11-27'),
(2172, 88, '2019-11-27'),
(2173, 88, '2019-11-27'),
(2174, 88, '2019-11-27'),
(2175, 88, '2019-11-27'),
(2176, 88, '2019-11-27'),
(2177, 88, '2019-11-27'),
(2178, 88, '2019-11-27'),
(2179, 88, '2019-11-27'),
(2180, 88, '2019-11-27'),
(2181, 88, '2019-11-27'),
(2182, 88, '2019-11-27'),
(2183, 88, '2019-11-27'),
(2184, 88, '2019-11-27'),
(2185, 88, '2019-11-27'),
(2186, 88, '2019-11-27'),
(2187, 88, '2019-11-27'),
(2188, 88, '2019-11-27'),
(2189, 88, '2019-11-27'),
(2190, 88, '2019-11-27'),
(2191, 88, '2019-11-27'),
(2192, 88, '2019-11-27'),
(2193, 88, '2019-11-27'),
(2194, 88, '2019-11-27'),
(2195, 88, '2019-11-27'),
(2196, 88, '2019-11-27'),
(2197, 88, '2019-11-27'),
(2198, 88, '2019-11-27'),
(2199, 88, '2019-11-27'),
(2200, 88, '2019-11-27'),
(2201, 88, '2019-11-27'),
(2202, 88, '2019-11-27'),
(2203, 88, '2019-11-27'),
(2204, 88, '2019-11-27'),
(2205, 88, '2019-11-27'),
(2206, 88, '2019-11-27'),
(2207, 88, '2019-11-27'),
(2208, 88, '2019-11-27'),
(2209, 88, '2019-11-27'),
(2210, 88, '2019-11-27'),
(2211, 88, '2019-11-27'),
(2212, 88, '2019-11-27'),
(2213, 88, '2019-11-27'),
(2214, 88, '2019-11-27'),
(2215, 88, '2019-11-27'),
(2216, 88, '2019-11-27'),
(2217, 88, '2019-11-27'),
(2218, 88, '2019-11-27'),
(2219, 88, '2019-11-27'),
(2220, 88, '2019-11-27'),
(2221, 88, '2019-11-27'),
(2222, 88, '2019-11-27'),
(2223, 88, '2019-11-27'),
(2224, 88, '2019-11-27'),
(2225, 88, '2019-11-27'),
(2226, 88, '2019-11-27'),
(2227, 88, '2019-11-27'),
(2228, 88, '2019-11-27'),
(2229, 88, '2019-11-27'),
(2230, 88, '2019-11-27'),
(2231, 88, '2019-11-27'),
(2232, 88, '2019-11-27'),
(2233, 88, '2019-11-27'),
(2234, 88, '2019-11-27'),
(2235, 88, '2019-11-27'),
(2236, 88, '2019-11-27'),
(2237, 88, '2019-11-27'),
(2238, 88, '2019-11-27'),
(2239, 88, '2019-11-27'),
(2240, 88, '2019-11-27'),
(2241, 88, '2019-11-27'),
(2242, 88, '2019-11-27'),
(2243, 88, '2019-11-27'),
(2244, 88, '2019-11-27'),
(2245, 88, '2019-11-27'),
(2246, 88, '2019-11-27'),
(2247, 88, '2019-11-27'),
(2248, 88, '2019-11-27'),
(2249, 88, '2019-11-27'),
(2250, 88, '2019-11-27'),
(2251, 88, '2019-11-27'),
(2252, 91, '2019-11-27'),
(2253, 90, '2019-11-27'),
(2254, 90, '2019-11-27'),
(2255, 89, '2019-11-27'),
(2256, 89, '2019-11-27'),
(2257, 89, '2019-11-27'),
(2258, 100, '2019-11-27'),
(2259, 100, '2019-11-27'),
(2260, 89, '2019-11-27'),
(2261, 89, '2019-11-27'),
(2262, 89, '2019-11-27'),
(2263, 89, '2019-11-27'),
(2264, 89, '2019-11-27'),
(2265, 89, '2019-11-27'),
(2266, 100, '2019-11-27'),
(2267, 89, '2019-11-28'),
(2268, 89, '2019-11-28'),
(2269, 89, '2019-11-28'),
(2270, 89, '2019-11-28'),
(2271, 89, '2019-11-28'),
(2272, 89, '2019-11-28'),
(2273, 89, '2019-11-28'),
(2274, 89, '2019-11-28'),
(2275, 89, '2019-11-28'),
(2276, 89, '2019-11-28'),
(2277, 89, '2019-11-28'),
(2278, 89, '2019-11-28'),
(2279, 89, '2019-11-28'),
(2280, 89, '2019-11-28'),
(2281, 89, '2019-11-28'),
(2282, 89, '2019-11-28'),
(2283, 89, '2019-11-28'),
(2284, 89, '2019-11-28'),
(2285, 88, '2019-11-28'),
(2286, 87, '2019-11-28'),
(2287, 89, '2019-11-28'),
(2288, 89, '2019-11-28'),
(2289, 89, '2019-11-28'),
(2290, 89, '2019-11-28'),
(2291, 88, '2019-11-28'),
(2292, 89, '2019-11-28'),
(2293, 89, '2019-11-28'),
(2294, 88, '2019-11-28'),
(2295, 88, '2019-11-28'),
(2296, 88, '2019-11-28'),
(2297, 100, '2019-12-25'),
(2298, 100, '2019-12-25'),
(2299, 92, '2019-12-25'),
(2300, 96, '2019-12-25'),
(2301, 89, '2019-12-25'),
(2302, 89, '2019-12-25'),
(2303, 89, '2019-12-25'),
(2304, 89, '2019-12-25'),
(2305, 90, '2019-12-25'),
(2306, 100, '2019-12-25'),
(2307, 88, '2019-12-25'),
(2308, 89, '2019-12-26'),
(2309, 89, '2019-12-26'),
(2310, 89, '2019-12-26'),
(2311, 89, '2019-12-26'),
(2312, 89, '2019-12-26'),
(2313, 89, '2019-12-26'),
(2314, 89, '2019-12-26'),
(2315, 89, '2019-12-26'),
(2316, 89, '2019-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`) VALUES
(2, 13, 88, 'This product is good', 5, '2019-09-26 06:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 13, 49, 'dthdfjhjhtdsjh', '2019-07-19 23:32:27', '2019-07-19 23:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1561348133service1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1561348138service2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1561348143service3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1561348147service4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1563247602brand1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1563247614brand2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1563247620brand3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1563247670brand4.png');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1567922099jewel_hbdesktop_6apr.jpg', NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1567922127bigbang_akank_w_hb_300318.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `d_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/royalcommerce/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/marketplace/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(2, 9, 'Shorts & Skirts', 'shorts-skirts', 1),
(3, 9, 'Dresses & Rompers', 'dresses-rompers', 1),
(4, 10, 'Boy Shoes', 'boy-shoes', 1),
(5, 10, 'Boy Pants & Jeans', 'boy-pants-jeans', 1),
(6, 10, 'Boy Casuals shirts', 'boy-casuals-shirts', 1),
(7, 10, 'Boy\'s Polo shirt', 'boy-s-polo-shirt', 1),
(8, 11, 'Women Hand Bags', 'women-hand-bags', 1),
(9, 11, 'Women Jeans', 'women-jeans', 1),
(10, 11, 'Women Shirt & Tops', 'women-shirt-tops', 1),
(11, 11, 'Women Dresses', 'women-dresses', 1),
(12, 12, 'Belt and Wallet', 'belt-wallet', 1),
(13, 12, 'Sunglasses & Frame', 'sunglassess-frame', 1),
(14, 12, 'Man shoes', 'man-shoes', 1),
(15, 12, 'Man Jeans', 'man-jeans', 1),
(16, 12, 'Man Polo Shirt', 'man-polo-shirt', 1),
(17, 13, 'Book', 'book', 1),
(18, 9, 'Sweaters', 'sweaters', 1),
(19, 4, 'Laptop', 'laptop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `status` tinyint(10) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`) VALUES
(13, 'User', '1557677677bouquet_PNG62.png', '1234', 'Washington, DC', 'Space Needle 400 Broad St, Seattles', '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$F7C8my/tjdbLp7DZSSLUfeHpELYnwzh9XToFZLAui0ol7DxnIdtQe', 'sNRM3PJdfLmMKRNVY7uAmpRk8eEOIw6K9LRT6y5IB0WRSDFzGI5A79gUQfnl', '2018-03-07 18:05:44', '2019-12-05 01:00:13', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1561022111Vendor-pages.jpg', 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 2, 1, 1, 1, 1, 1, 6, 7.1, '2020-01-04', 0),
(22, 'Junnun', NULL, '1231', 'Test City', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$k6yiGwFKtAtDS4gWUAS9reLieCX30brei.curjp28IRxMcxGM8Bn2', '5AwGXLkE4buRqHHxnA4pbHrhhX2mXmqddnSoOaNB891vbeUlFhjv6Kwql9OM', '2019-06-20 12:26:24', '2019-07-03 14:35:24', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(24, 'Genius Oceanss', NULL, NULL, NULL, 'sdfsd', '34534534', NULL, 'usersss@gmail.com', '$2y$10$tD52hKuLyowGfgAoJPrkKucyfhCSTAVMQ7kAd7dy5kTc1JHaLsRpC', NULL, '2019-08-05 05:06:13', '2019-08-05 05:06:13', 0, 0, '196452f13e319b49204680f4c4d89c54', 'No', '68e53c90d8fb4c4f69d60be7385bbedf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(25, 'Sumon', NULL, NULL, NULL, 'Tangail', '01724209859', NULL, 'sumonit1998@gmail.com', '$2y$10$F7C8my/tjdbLp7DZSSLUfeHpELYnwzh9XToFZLAui0ol7DxnIdtQe', 'mlOyfqfUNFhL7H5FSFsRYwYpuMqb68NtQrWyCwQL5QgwnwkVww6F5V0L2oWu', '2019-09-01 03:10:25', '2019-09-03 23:18:34', 0, 0, '2196076ced0ad8733a29e7f2b3dff8a6', 'Yes', '0ab2852de1ca191655de797ccad0e933', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(29, 'Sumon', NULL, NULL, NULL, 'tangaila', '01745865214', NULL, 'sumonit1998@yahoo.com', '$2y$10$JSfVqTzQ/1I6sQXUDiy3v.2x.NzDIDexUo37JomZZIbu0POPLH0k.', 'tipizx17TduOJLRKWTF9vyWfQpIylV6uLzZc94KOtRbbsuJ3UlP9wdffmhiJ', '2019-09-09 18:36:46', '2019-11-27 03:21:40', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '1557f623a6e80604b24a054241c0b459', 0, 'Hello Everest', 'Santo', '548625486', 'Tangail', '289652615', 'Hii', '<br>', '1574846500155c66d1b3cf273b3b1258c86695c1d3.jpg', '#', '#', '#', '#', 1, 1, 1, 1, 1, 0, 0, 0, '2019-12-24', 0),
(53, 'Nikunja Behari Goswami', NULL, NULL, NULL, 'Sabalia', '01723681138', NULL, 'lopaniku@gmail.com', '$2y$10$fGu3EV3JAKKK9ejrlkGNc.Ei3i9IgFVlZNrXGHI.Z/XabKAeiW5l2', '6em7stqt5jqWHhlro7v4upNFlxgFsURF91BKTheh4E9NWrMtHW6LxwaxAmTA', '2019-09-10 08:48:35', '2019-10-12 05:12:59', 0, 0, '16c9b002dc17ba5160e634d62ccf2502', 'Yes', 'b7fb4bdfbb152d4dbffa2843be1745e1', 0, 'nikuniku', 'Nikunja Behari Goswami', '123456', 'Sabalia', '123456', 'nothing', '<br>', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 36.5, '2019-11-11', 0),
(54, 'Tarikul Pavel', NULL, '1207', 'Dhaka', 'House 6, Road 5, Kaderabad Housing, Mohamamdpur', '01679627106', NULL, 'pvlbds@gmail.com', '$2y$10$vrt8TpdbC28oAlk706uXIusSfPJISS/s/GVEVhSv7x9S2AS8quoGa', 'FTKzxtoREvclS1YfBQ36q1bf4uep3qBkUDVyDXZc5gaGebmFLP950MTtldpk', '2019-09-16 10:02:42', '2019-09-23 08:09:10', 0, 0, '160445f2e7ef121a58638f4e6d742809', 'Yes', 'd4f9499e172873ab3f2da265079153bc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(55, 'Basudev Goswami', NULL, NULL, NULL, 'sabalia', '01783388303', NULL, 'basudev15-1859@diu.edu.bd', '$2y$10$drULAktEyFwzxU617zjgd.ctzoyxIyJD7YUzC3c.4I41kasXSoXo2', 'tHkYkEXBHZ73K6IB102SxGBALM1VLHKrFSUTP2nbn49YvGhII9VKiIHl5VqF', '2019-09-25 12:06:11', '2019-09-25 12:14:01', 0, 0, '9933875d72385792cfcee17f9ceef3e3', 'Yes', '7981cba11a27a40ceeaac6c5a8cdd628', 0, 'niketon', 'Basudev', '1234', 'sabalia', '12345678', 'nothing', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-10-25', 0),
(56, 'sumon', NULL, NULL, NULL, 'Tangail', '01724209859', NULL, 'shumonit1998@gmail.com', '$2y$10$AgPwV.15IqLScUnhNzPfE.l38QX2OgBuU.7DHSENsrz5FVkdrK2yW', 'qyxrbevgY8e6fTAbJQULX6KnfcrSMCbuvfSenYxYmKWw8yjnbgzkJ41BqOVA', '2019-11-27 00:50:51', '2019-11-27 00:52:17', 0, 0, 'd9c6e2a40514aba125382daf4ca466a7', 'Yes', 'b5a27ea3f3cf9a907b139006bea8935a', 0, 'Santo Shop', 'Santo', '0123456', '0123456', '0123456789', 'Hello', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(57, 'Basudev Goswami', NULL, NULL, NULL, 'sabalia', '01783388303', NULL, 'rashbeharigoswami@gmail.com', '$2y$10$e48X0OOUtejUMEZSr9GwPOKAD/X3igd78VSp9qbfGYGLHb02faCm.', '5xv6jBTcNfxaNX3gKw1I8Nqqff7IJbOPQq1DMjqhIeQgvaQeXwHXllq7aK8i', '2019-12-10 01:59:57', '2019-12-17 05:02:14', 0, 0, '57761ecc35dbbdb401c7dc75c48bb5d6', 'Yes', '7dc70d2682fd931c1d3352e9ba21f0ab', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2020-01-16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 53, 'b80f1569225198', 1, '2019-09-23 07:53:18', '2019-09-23 07:54:11'),
(2, 13, 'ibiP1569228644', 1, '2019-09-23 08:50:44', '2019-09-23 08:57:41'),
(3, 53, 'cT8O1570250294', 1, '2019-10-05 04:38:14', '2019-10-12 05:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`) VALUES
(23, 13, 7, 'Unlimited', '$', 'USD', 250, 365, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_1F1VfOJlIV5dN9n7Web4Fpc8', 'ch_1F1VfNJlIV5dN9n7HB8rW2Vm', '2019-07-29 04:01:20', '2019-07-29 04:01:20', 1),
(24, 53, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-09-10 08:50:03', '2019-09-19 08:40:58', 1),
(26, 55, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-09-25 12:14:01', '2019-09-25 12:14:01', 1),
(27, 13, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-09-25 16:22:20', '2019-09-25 16:22:20', 1),
(28, 29, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-09-29 05:29:28', '2019-09-29 05:29:28', 1),
(29, 53, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-10-12 05:12:59', '2019-10-12 05:12:59', 1),
(30, 53, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', NULL, NULL, '2019-10-12 05:13:22', '2019-10-12 05:13:22', 0),
(31, 29, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-11-24 01:55:42', '2019-11-24 01:55:42', 1),
(32, 13, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-12-05 01:00:13', '2019-12-05 01:00:13', 1),
(33, 57, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', NULL, NULL, '2019-12-11 01:22:31', '2019-12-11 01:22:31', 0),
(34, 57, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', NULL, NULL, '2019-12-11 01:22:56', '2019-12-11 01:22:56', 0),
(35, 57, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-12-17 05:02:14', '2019-12-17 05:02:14', 1),
(36, 57, 1, 'Basic', '$', 'USD', 0, 30, 999, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-12-17 05:04:15', '2019-12-17 05:04:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(1, 53, 13, 1, 20.75, 'b80f1569225198', 'completed'),
(2, 13, 15, 1, 7.1, 'ibiP1569228644', 'completed'),
(3, 53, 16, 1, 15.75, 'cT8O1570250294', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(6, 13, 89),
(7, 13, 88),
(8, 53, 88),
(9, 56, 88);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2317;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
