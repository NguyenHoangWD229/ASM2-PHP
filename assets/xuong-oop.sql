-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2024 at 07:20 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xuong-oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `id` int NOT NULL,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(4, 'ABC'),
(1, 'Điện thoại di động'),
(2, 'Laptop'),
(5, 'XYZ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status_delivery` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `status_payment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `status_delivery`, `status_payment`, `created_at`, `updated_at`) VALUES
(1, 107, 'Nguyễn Văn Hoàng', 'hoang@gmail.com', '03333333333', 'Thanh xuân ', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 14:04:55', '2024-06-10 14:04:55'),
(2, 107, 'Nguyễn Văn Hoàng', 'hoang@gmail.com', '03333333333', 'Thanh xuân ', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 14:06:07', '2024-06-10 14:06:07'),
(3, 107, 'Nguyễn Văn Hoàng', 'hoang@gmail.com', '03333333333', 'Thanh xuân ', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 14:07:51', '2024-06-10 14:07:51'),
(4, 106, 'Lê Anh', 'anh@gmail.com', '03453453453', 'Nam từ liên ', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 14:40:01', '2024-06-10 14:40:01'),
(5, 107, 'Nguyễn Văn Hoàng', 'hoang@gmail.com', '03333333333', 'Thanh xuân ', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 15:23:58', '2024-06-10 15:23:58'),
(6, 110, 'Thai ', 'thai123@gmail.com', '', '', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:13:29', '2024-06-10 16:13:29'),
(7, 107, 'Nguyễn Văn Hoàng', 'hoang@gmail.com', '0347396537', 'thành pho hà nội', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:16:50', '2024-06-10 16:16:50'),
(8, 107, 'Nguyễn Văn Hoàng', 'hoang@gmail.com', '0347396537', 'thành pho hà nội', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:17:46', '2024-06-10 16:17:46'),
(9, 107, 'Nguyễn Văn Hoàng', 'hoang@gmail.com', '02222222', ' hà nội', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:19:56', '2024-06-10 16:19:56'),
(10, 106, 'Lê Anh', 'anh@gmail.com', '3333333333', 'Thanh xuân', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:23:05', '2024-06-10 16:23:05'),
(11, 106, 'Lê Anh', 'anh@gmail.com', '3333333333', 'Thanh xuân', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:29:37', '2024-06-10 16:29:37'),
(12, 106, 'Lê Anh', 'anh@gmail.com', '3333333333', 'Thanh xuân', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:32:06', '2024-06-10 16:32:06'),
(13, 106, 'Lê Anh', 'anh@gmail.com', '033333333', 'Thanh xuân', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:46:25', '2024-06-10 16:46:25'),
(14, 106, 'Lê Anh', 'anh@gmail.com', '3333333333', 'Thanh xuân', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 16:58:37', '2024-06-10 16:58:37'),
(15, 106, 'Lê Anh', 'anh@gmail.com', '0349999999', ' hà nội', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 17:02:02', '2024-06-10 17:02:02'),
(16, 106, 'Lê Anh', 'anh@gmail.com', '0347396537', 'thành pho hà nội', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 17:04:35', '2024-06-10 17:04:35'),
(17, 106, 'Lê Anh', 'anh@gmail.com', '0349999999', 'hà nội', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 17:07:27', '2024-06-10 17:07:27'),
(18, 106, 'Lê Anh', 'anh@gmail.com', '03453453453', 'Thôn Đồng Kỳ, Đông Hải, Quỳnh Phụ, Thái Bình', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 17:08:17', '2024-06-10 17:08:17'),
(19, 105, 'Trần Bình b', 'binh@gmail.com', '0349999999', 'hà nội', NULL, NULL, NULL, NULL, '0', 0, '2024-06-10 17:17:12', '2024-06-10 17:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price_regular` int NOT NULL,
  `price_sale` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price_regular`, `price_sale`) VALUES
(1, 1, 11, 3, 1000000, NULL),
(2, 1, 12, 1, 1000000, 850000),
(3, 2, 11, 3, 1000000, NULL),
(4, 3, 12, 3, 1000000, 850000),
(5, 4, 11, 1, 1000000, NULL),
(6, 5, 12, 13, 1000000, 850000),
(7, 14, 12, 1, 1000000, 850000),
(8, 15, 12, 4, 1000000, 850000),
(9, 16, 12, 5, 1000000, 850000),
(10, 18, 5, 3, 1000000, NULL),
(11, 18, 4, 1, 1000000, 850000),
(12, 19, 4, 12, 1000000, 850000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_thumbnail` varchar(255) DEFAULT NULL,
  `price_regular` int NOT NULL,
  `price_sale` int DEFAULT NULL,
  `overview` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `img_thumbnail`, `price_regular`, `price_sale`, `overview`, `content`, `created_at`, `updated_at`) VALUES
(3, 1, 'Xiaomi 8PRO', 'assets/img/phone.jpg', 1000000, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(4, 2, 'ASUS OFFICE O35', 'assets/img/laptop.jpg', 1000000, 850000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(5, 1, 'IPHONE 12', 'assets/img/phone.jpg', 1000000, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(6, 2, 'ASUS GAMING G56', 'assets/img/laptop.jpg', 1000000, 850000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(7, 1, 'IPHONE 13', 'assets/img/phone.jpg', 1000000, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(8, 1, 'IPHONE 14', 'assets/img/phone.jpg', 1000000, 850000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(9, 2, 'ASUS TUF FX25', 'assets/img/laptop.jpg', 1000000, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(10, 1, 'IPHONE 15', 'assets/img/phone.jpg', 1000000, 850000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(11, 2, 'ASUS AIO 45X', 'assets/img/laptop.jpg', 1000000, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\n    <figure class=\"g12-xs g3-md page-section__image\">\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\n      <figcaption>\n        <div class=\"page-section__squiggle\">\n          <div class=\"page-section__squiggle-one\"></div>\n          <div class=\"page-section__squiggle-two\"></div>\n        </div>\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\n      </figcaption>\n    </figure>\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\n</p>\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\n</p>\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\n</p>\n    </div>\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\n      <div class=\"page-display__block\">\n\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\n          <script data-cfasync=\"false\" type=\"text/javascript\">\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\n          </script>\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\n      </div>\n    </div>\n  </div>', '2024-05-31 02:43:48', '2024-05-31 02:43:48'),
(12, 2, 'ASUS VIVOBOOK V1234567', 'assets/img/laptop.jpg', 1000000, 850000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<div class=\"gr\">\r\n    <figure class=\"g12-xs g3-md page-section__image\">\r\n      <img src=\"https://loremipsum.io/assets/images/lorem-ipsum-magazine-layout.jpg\" alt=\"Lorem ipsum used in a magazine layout\">\r\n      <figcaption>\r\n        <div class=\"page-section__squiggle\">\r\n          <div class=\"page-section__squiggle-one\"></div>\r\n          <div class=\"page-section__squiggle-two\"></div>\r\n        </div>\r\n        <h4 class=\"f5 cl-gray-1 page-section__caption\">Magazine layout with lorem ipsum</h4>\r\n      </figcaption>\r\n    </figure>\r\n    <div class=\"g12-xs g9-md g6-xl page-section__block\">\r\n      <h3 class=\"f5 cl-orange mb16\">History, Purpose and Usage</h3>\r\n      <p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or <em>lipsum</em> as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s <em>De Finibus Bonorum et Malorum</em> for use in a type specimen book. It usually begins with:\r\n</p>\r\n      <blockquote class=\"page-section__blockquote\">“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote>\r\n      <p class=\"f4 cl-white mv16\">The purpose of <em>lorem ipsum</em> is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without <a href=\"#controversy\" title=\"Controversy in the Design World\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\r\n</p>\r\n      <p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our <a href=\"#generator\" title=\"Lorem Ipsum Generator\">generator</a> to get your own, or read on for the authoritative history of <em>lorem ipsum</em>.\r\n</p>\r\n    </div>\r\n    <div class=\"g12-xs g3-xl page-display s-half-page\">\r\n      <div class=\"page-display__block\">\r\n\r\n        <div align=\"center\" data-freestar-ad=\"__300x600\" id=\"loremipsum_siderail_right_2\" name=\"loremipsum_siderail_right_2\" data-google-query-id=\"\">\r\n          <script data-cfasync=\"false\" type=\"text/javascript\">\r\n            freestar.config.enabled_slots.push({ placementName: \"loremipsum_siderail_right_2\", slotId: \"loremipsum_siderail_right_2\" });\r\n          </script>\r\n        <div id=\"google_ads_iframe_/15184186,22580084566/loremipsum_siderail_right_2_0__container__\" style=\"border: 0pt none; width: 300px; height: 0px;\"></div></div>\r\n      </div>\r\n    </div>\r\n  </div>', '2024-05-31 02:43:48', '2024-06-10 10:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'hoangnvph36355', NULL, 'A@gmail.com', '$2y$10$pHWLSLjJRtFm0BV1mSlTFeuZGRkc.fGouZSlD88lZ0pkL2Tv.PFiO', '2024-06-09 23:21:02', '2024-06-09 23:21:02'),
(3, 'Nguyễn Văn 0', NULL, 'a0@gmail.com', '$2y$10$0VfzlIBAWRKYFOk8QEGej.ZQKZ2aP7c6QDM7oko3Vd0J2MY9FnvEW', '2024-06-09 23:26:49', '2024-06-09 23:26:49'),
(4, 'Nguyễn Văn 1', NULL, 'a1@gmail.com', '$2y$10$tf/aEqf1DNtmkhhEuwlQPu/Cee4gfT3chwNz1Cg61CQWApDHyNd92', '2024-06-09 23:26:49', '2024-06-09 23:26:49'),
(5, 'Nguyễn Văn 2', NULL, 'a2@gmail.com', '$2y$10$S.ucxxC2YPqsO/.L2vlm1.iOx8qlnP0/AkG7O1b4xhRSECf.JaSPy', '2024-06-09 23:26:49', '2024-06-09 23:26:49'),
(6, 'Nguyễn Văn 3', NULL, 'a3@gmail.com', '$2y$10$JzW4HAD7oRQIlCWjEMHmvOxfq77/iXCvLlCCcoJ4734uoKMOnFMI2', '2024-06-09 23:26:49', '2024-06-09 23:26:49'),
(7, 'Nguyễn Văn 4', NULL, 'a4@gmail.com', '$2y$10$DJ1hUyiWGEd4e1drHKfBXOMU2BB.e5AuV2MM8TCClegHutyXXzwWO', '2024-06-09 23:26:49', '2024-06-09 23:26:49'),
(8, 'Nguyễn Văn 5', NULL, 'a5@gmail.com', '$2y$10$2PAgK9b3rI9NvjJYgwUL3OFTMJoHuqO5waDoxDNhxxSb9DerHeHhy', '2024-06-09 23:26:49', '2024-06-09 23:26:49'),
(9, 'Nguyễn Văn 6', NULL, 'a6@gmail.com', '$2y$10$Uz12sWqiAYTyenuMhISKzehe4J15K2LB08S0MgKM59qHCcp6mynJq', '2024-06-09 23:26:49', '2024-06-09 23:26:49'),
(10, 'Nguyễn Văn 7', NULL, 'a7@gmail.com', '$2y$10$O.Lqd1xGnYbaSNTT7oFoBOmr6oUlTIXCOkKGsTw2ZKHP0QROq8GCK', '2024-06-09 23:26:49', '2024-06-09 23:26:49'),
(11, 'Nguyễn Văn 8', NULL, 'a8@gmail.com', '$2y$10$8AuEDwSOxj.tj1PJIx6B1OEHyoU7.ZzM51kCyNmKStNGEkmALMaXW', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(12, 'Nguyễn Văn 9', NULL, 'a9@gmail.com', '$2y$10$rBDh/A9tJo9yPwL/hGRDaums3oObA8t0bVnefWXXROvd6keBwNxeO', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(13, 'Nguyễn Văn 10', NULL, 'a10@gmail.com', '$2y$10$d/401EIMlgWSShOBi0oBYe5RFgbviglp5nXCiFUfoLJN8MJ3IIlI6', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(14, 'Nguyễn Văn 11', NULL, 'a11@gmail.com', '$2y$10$xBmsT/.cfisToKAqJgGQbe1Fdd/F12ku18hVGbrCObPxoF2Zh/./O', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(15, 'Nguyễn Văn 12', NULL, 'a12@gmail.com', '$2y$10$1hnoMAYsGgyws7nDDt4Bn.M0v5io1b2seVMajE5LWcwRTazS9vZWy', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(16, 'Nguyễn Văn 13', NULL, 'a13@gmail.com', '$2y$10$mfgRfwE0ADa0nNMppGtBH.URHJYr83sgbi9YI/D/1oNf/WQaI1dY2', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(17, 'Nguyễn Văn 14', NULL, 'a14@gmail.com', '$2y$10$S.gnWYJa/TPcktXcPoreCuzbE0nvxI4TPcfRysBX7Ezx.wiE1s.iW', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(18, 'Nguyễn Văn 15', NULL, 'a15@gmail.com', '$2y$10$/2NeGGgSyxnHOd8eyEzsVepbCScd.5SFov.en25TCvOSAdxx3hjkS', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(19, 'Nguyễn Văn 16', NULL, 'a16@gmail.com', '$2y$10$qUfwMkGFV8ucZBWFn.kt..twMAdgGzOWirJgBI6dr.t8v7mviDVsy', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(20, 'Nguyễn Văn 17', NULL, 'a17@gmail.com', '$2y$10$7UQ.cmTyu3RCCbgnloLwu..XBnkJV8D4xn5o4Nof8PZm83blB/6JK', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(21, 'Nguyễn Văn 18', NULL, 'a18@gmail.com', '$2y$10$p46Tt2Y./ut/MD2ERgJH0uQLp9SgaGFMummMODP9EYKBN7Zk2s9.G', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(22, 'Nguyễn Văn 19', NULL, 'a19@gmail.com', '$2y$10$3xnpa3yR1V0fQkZpJlgrruaS3Uv6C2OQMScHl6UEQwGZmyRy6QOlG', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(23, 'Nguyễn Văn 20', NULL, 'a20@gmail.com', '$2y$10$qqp7xulGzdKTd7ggSg.E3egZ5b7HZsVTlz.fWwQ0fR3724PganHi2', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(24, 'Nguyễn Văn 21', NULL, 'a21@gmail.com', '$2y$10$bFSfKHFdqbABLgNePRK/r.i6ClBanBjgP88gCVwV0auxlrHU5AGMy', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(25, 'Nguyễn Văn 22', NULL, 'a22@gmail.com', '$2y$10$NGza9G6UlZQJYnGZoSl/uuEZWLN8Hu4m5p2ihwrOS2/z75qQoaSa2', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(26, 'Nguyễn Văn 23', NULL, 'a23@gmail.com', '$2y$10$c/TS8nruaoCDwkIwWv7AreFYd76ZcNKy5A.JUZct.Ldl9E0/eyCju', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(27, 'Nguyễn Văn 24', NULL, 'a24@gmail.com', '$2y$10$jAGqv8b.CyMrbBm8XQnrFOQ6ulRqzMBP9iwtWBgOV7t6PvCgynmQK', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(28, 'Nguyễn Văn 25', NULL, 'a25@gmail.com', '$2y$10$WG1pgClzbbyUYlelxNJmmeJzNnZy12l5BGZiblqX4JgCkKDLX5a3e', '2024-06-09 23:26:50', '2024-06-09 23:26:50'),
(29, 'Nguyễn Văn 26', NULL, 'a26@gmail.com', '$2y$10$0.xP1jNilwp/uzFScpI4ZOg2ke2vNzkKzgO8MIclxzGzlxQpi/TVy', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(30, 'Nguyễn Văn 27', NULL, 'a27@gmail.com', '$2y$10$dRg.h1QDFgfta0p9ByzFJum0I5KxpW2L8NcGyXSUtK6hzYWxXNbDi', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(31, 'Nguyễn Văn 28', NULL, 'a28@gmail.com', '$2y$10$t./thWGKTDMg75w9XQVYA.XtLG6Br4qiWjVC80ZgQBnmDk5BlQscG', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(32, 'Nguyễn Văn 29', NULL, 'a29@gmail.com', '$2y$10$BhiqEChfj0hcaH.Vwi2Vpe7W8uBLoMUAdJrvn6wqcfBjM8uN7tM0m', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(33, 'Nguyễn Văn 30', NULL, 'a30@gmail.com', '$2y$10$IGQtYIOwghRvZn4gMSMTju/YbqdcK8bW7j1BzRTFhQ0E6geSDqvPO', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(34, 'Nguyễn Văn 31', NULL, 'a31@gmail.com', '$2y$10$isX/UosgyKOoNNoQz18qg.ZUwp/dYdGBs9N47h59ttCT8NC7cVG9K', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(35, 'Nguyễn Văn 32', NULL, 'a32@gmail.com', '$2y$10$WnAm9VqutP6MdRypiZoJi.lXHihqbCXrm3VHtYhOZ.2NK01uEPSJi', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(36, 'Nguyễn Văn 33', NULL, 'a33@gmail.com', '$2y$10$ZCrlLqWqdimetcs4xZroTOe39E1w07PCBjMQrZBBNZ6OBSiY6WmmO', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(37, 'Nguyễn Văn 34', NULL, 'a34@gmail.com', '$2y$10$J4VpulHr8xdndvk19Iw8reh0aVRPV/6AVSXqqHBggOPLjvyPtuT5m', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(38, 'Nguyễn Văn 35', NULL, 'a35@gmail.com', '$2y$10$cveZiytpOq2x0Rlv7ePzN.QwG7kNsp1bCStTBXxo9yNwGGtyV0utu', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(39, 'Nguyễn Văn 36', NULL, 'a36@gmail.com', '$2y$10$gai.wqU44JZe.HlW7Dx2/O/Jxgch9lTvotC97v6NSNNPH0J3ni4lK', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(40, 'Nguyễn Văn 37', NULL, 'a37@gmail.com', '$2y$10$fLnMGAnqQ.1sFou9V7o11OjhVhio5sScaNipuFWoxNshyK/1tLxo2', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(41, 'Nguyễn Văn 38', NULL, 'a38@gmail.com', '$2y$10$PyNVq3OBj3wqX05Y3Ffz4OCKJE8pKxZYpMiio5mzn2.EIBC5JZiu6', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(42, 'Nguyễn Văn 39', NULL, 'a39@gmail.com', '$2y$10$Fk3R2StwQ37J9fSbRQkU5eu8EItn4lV4ojjKlZ1tBGiU2VteAoEvO', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(43, 'Nguyễn Văn 40', NULL, 'a40@gmail.com', '$2y$10$ph/i7DBu4YJQgFN27PJaNO9x1rlsfP3CwPnUa38gMZtEh9nF.nAlS', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(44, 'Nguyễn Văn 41', NULL, 'a41@gmail.com', '$2y$10$4k3h0JTOTOaAalIQnX33AONpE5kMEqJxvy23gn8q.W.bV7ji9jFw.', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(45, 'Nguyễn Văn 42', NULL, 'a42@gmail.com', '$2y$10$FA7QpYH4fang7Vl7G2LaX.WWOuj1dT2Y5CYxfUaeygJn6dLiuCvhO', '2024-06-09 23:26:51', '2024-06-09 23:26:51'),
(46, 'Nguyễn Văn 43', NULL, 'a43@gmail.com', '$2y$10$Hds9yjyLvCfh8WCZFTepZ.j8QGCQ4Bq5oRxt7ELTFS5L5/g/IHuZC', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(47, 'Nguyễn Văn 44', NULL, 'a44@gmail.com', '$2y$10$eRKD/3wp5/PP/oUDNyd5FeL2NXWQH2Uq6uxqgRQQpHIcI80t3tsE.', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(48, 'Nguyễn Văn 45', NULL, 'a45@gmail.com', '$2y$10$Y9a34Ot8tcTeXh2dDvK9X.kH3lHg8IJeu2TXp9oqeUG.1TQXfvCo2', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(49, 'Nguyễn Văn 46', NULL, 'a46@gmail.com', '$2y$10$XIKx8P.GK7WUOZiI4ckIte1KOriKU7Bm0XsAl584RMAYlWqhDZKTe', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(50, 'Nguyễn Văn 47', NULL, 'a47@gmail.com', '$2y$10$FnUtHbRWiAmU0BokJ9PDxuyhn41juoNdGvoZY2kfum7S4IQZkU0j.', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(51, 'Nguyễn Văn 48', NULL, 'a48@gmail.com', '$2y$10$D2V7zJcp4M8/NbEsjQlsEu58C2e1lNqq1mw8GoZNBY/UzCTl4pccu', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(52, 'Nguyễn Văn 49', NULL, 'a49@gmail.com', '$2y$10$xPhu6OGmXKKUaKBzkJwMrOQnQhBcaG6lT4veGb1UC6Rw8DDhXSVn2', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(53, 'Nguyễn Văn 50', NULL, 'a50@gmail.com', '$2y$10$RTlQd/A5gi0EG.rM9e4hMeEfPW576JD8NIr5vrmit483NwLmnmX76', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(54, 'Nguyễn Văn 51', NULL, 'a51@gmail.com', '$2y$10$WzgRtxPt1xrVChveTCeclu4jV6/EDCUI93q4JfkaPdtW1CMyDXxGC', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(55, 'Nguyễn Văn 52', NULL, 'a52@gmail.com', '$2y$10$L0ASvL4f21TL2vTXaulX1eAdiRDVYbiC1cKIPOFzymA1UvhH.1P3K', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(56, 'Nguyễn Văn 53', NULL, 'a53@gmail.com', '$2y$10$rjscyT9C04KLaEp/wgnbgu6hWNgwiN4ZHioMciQ1lQJtPwAC/aKgO', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(57, 'Nguyễn Văn 54', NULL, 'a54@gmail.com', '$2y$10$2DYsoNpHDE68YJnY5.6bdelafbsQB4bmCpXlrNDwRhU6rLW8nmFW6', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(58, 'Nguyễn Văn 55', NULL, 'a55@gmail.com', '$2y$10$lpKZUbwT/4kcFN07r8CDDeLwEC0DNS/PHqNvSdsSnEVTYA.NGDX3e', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(59, 'Nguyễn Văn 56', NULL, 'a56@gmail.com', '$2y$10$A8J2BC09xM3uBxNZmFUYIOu02tiu2UPu.ucXrCYDh3ZqJ4bSrGDQW', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(60, 'Nguyễn Văn 57', NULL, 'a57@gmail.com', '$2y$10$pjOmInD5g/XDMBOggShNsOOhj89KkriOmK1knkhBaiCgKXhjV7xrC', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(61, 'Nguyễn Văn 58', NULL, 'a58@gmail.com', '$2y$10$28/pA/ywYX.fYuUhrlViKunG00dkGFYdDrUIslnpysE/RO2alvHTi', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(62, 'Nguyễn Văn 59', NULL, 'a59@gmail.com', '$2y$10$4Rfkd5Qr62yz.BQveP2c/uB0GMziS4xeERqDGT6XfIDBmXuj.H6vC', '2024-06-09 23:26:52', '2024-06-09 23:26:52'),
(63, 'Nguyễn Văn 60', NULL, 'a60@gmail.com', '$2y$10$IEydaoq8gHSAHv2RqfpLqutG0Ai0ZFk9F6Vy979YLKZnmrJoC9Rx.', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(64, 'Nguyễn Văn 61', NULL, 'a61@gmail.com', '$2y$10$VdzQ1dSEdLSn4tHNAkw7nu9tfrqmxhF7x34BuViqiCT.GRvt/Dfr6', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(65, 'Nguyễn Văn 62', NULL, 'a62@gmail.com', '$2y$10$CJZSrEcoIR6A/r8GGmazSeVUyEHwVHR5/KhVq6p9hLQVBbctf2B9S', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(66, 'Nguyễn Văn 63', NULL, 'a63@gmail.com', '$2y$10$XK4m2Q5YuhbNbsjOt1T.BOayOTIwIrshABj8vRGq1P.rUsNskXcwa', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(67, 'Nguyễn Văn 64', NULL, 'a64@gmail.com', '$2y$10$X3Y.ju.nWAQPPknUVc52.u7p3K0B0wgXaGbGtnbUSXLjvBh3miup6', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(68, 'Nguyễn Văn 65', NULL, 'a65@gmail.com', '$2y$10$j/NDKSJzv9Fa.Wm0S6Ohx.VGxANO4RDRpkEU58irX2mCVav4ZHuIq', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(69, 'Nguyễn Văn 66', NULL, 'a66@gmail.com', '$2y$10$zx1MvZmA2SFt9XhkqRNii.czB7MIMtTvHeRWAoa.VaiJtr0FM5MfO', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(70, 'Nguyễn Văn 67', NULL, 'a67@gmail.com', '$2y$10$CROHimf3LA0SVdj5eRAP4.3eDepnUASxX4sgEvZUiSiS3FFFio3S6', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(71, 'Nguyễn Văn 68', NULL, 'a68@gmail.com', '$2y$10$1/KjNWTFiy5JkhBfQmbviub5IpbUv56flb9Th8tUqiZnKE2NQwSNK', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(72, 'Nguyễn Văn 69', NULL, 'a69@gmail.com', '$2y$10$qKfHWaeMyINvQYDFj9wbl.zzDSLNOkQA9z9MuKDv9T14kNpfSahJ6', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(73, 'Nguyễn Văn 70', NULL, 'a70@gmail.com', '$2y$10$gtt8q6nFKUaN0grZMqal4ulenXl1CtvJZGkXgxO.RhD3B5X5NSNoC', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(74, 'Nguyễn Văn 71', NULL, 'a71@gmail.com', '$2y$10$auJPBMJHm3xPd0UxRFQIOOP6nvssdtzbuJ5pNflYJPFWhgEFQCaU6', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(75, 'Nguyễn Văn 72', NULL, 'a72@gmail.com', '$2y$10$5UO3V/LUun3KwNh14iE1MuNK8qAXyP0NN27cWM9uxPx0q82MNKxY6', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(76, 'Nguyễn Văn 73', NULL, 'a73@gmail.com', '$2y$10$C/xlLPJBbqBEyOaZ.70eSeYcoIrfYYbO2y3mDLMstn9JBirjzG3Dy', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(77, 'Nguyễn Văn 74', NULL, 'a74@gmail.com', '$2y$10$6gLqEiZlXNE.d5hMpfm6sugaLHiHsIMtknJN6p75sysfl3L8yMW7K', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(78, 'Nguyễn Văn 75', NULL, 'a75@gmail.com', '$2y$10$7nNEMfd.isHZJphGLa6zeO1yHIG.stANdM2tvGEk0yk55WsnR7/Qq', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(79, 'Nguyễn Văn 76', NULL, 'a76@gmail.com', '$2y$10$3kzn.IyAyTU5zazxUEUr1uTZW6OSbQiyf4a9psvq/Vk9YIHaAr89O', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(80, 'Nguyễn Văn 77', NULL, 'a77@gmail.com', '$2y$10$gKCVa9u.srRQHAsF2PfePOws233tPCSakyQzaL4gHcKgg8wrZtNXG', '2024-06-09 23:26:53', '2024-06-09 23:26:53'),
(81, 'Nguyễn Văn 78', NULL, 'a78@gmail.com', '$2y$10$B8Rglrl6RLMiMbU8vw/yf.PPVv1C1pV1tqEaREW8n8Ufb5c8QjEOG', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(82, 'Nguyễn Văn 79', NULL, 'a79@gmail.com', '$2y$10$d2YJYlVc.AX26Yn.SdGyvuftUq3Z0zTwjK8e3N.VZvLBQx39Gq5zK', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(83, 'Nguyễn Văn 80', NULL, 'a80@gmail.com', '$2y$10$O2b4gBpkeiDnYS7rfY489O9FIY4NA.2/BK5CjDCfMOoC3zL6EVOsa', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(84, 'Nguyễn Văn 81', NULL, 'a81@gmail.com', '$2y$10$kgyX8iHQTO5pZKzgQgIMn.Ik5GBV8daN4xs6hmSSu78FLzRtqw90e', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(85, 'Nguyễn Văn 82', NULL, 'a82@gmail.com', '$2y$10$HW4sH7gkHvFRXr0q77R21.pxfPBencZ2LjDUQm2lM7tipc5ud/bEC', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(86, 'Nguyễn Văn 83', NULL, 'a83@gmail.com', '$2y$10$caeFhXtvDuwnZM6QaNZq3ewbo1wf8tJ7bvwCzNdWE.jVlmNUXmOBC', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(87, 'Nguyễn Văn 84', NULL, 'a84@gmail.com', '$2y$10$V8sCnZbW/2GozSX2eGGyS.mnC4Wnf2QIT0Rb60ROkVs2w96Y/Fgmy', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(88, 'Nguyễn Văn 85', NULL, 'a85@gmail.com', '$2y$10$qpK3gXoqjNh/LODb9OcX2.RiGFm4cM2hqF6x1zu6X0VbLVqfAAX.W', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(89, 'Nguyễn Văn 86', NULL, 'a86@gmail.com', '$2y$10$Mo6Ct5JbdFf7jqhGJhLMHuhETy2/wXUL.z.S5pmZF1cnemgqlHd8C', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(90, 'Nguyễn Văn 87', NULL, 'a87@gmail.com', '$2y$10$QdDK2I/E7nE1K9WYGdLkI.hdShD8isZCHzoZhvhMe52/a0e83X.TK', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(91, 'Nguyễn Văn 88', NULL, 'a88@gmail.com', '$2y$10$TdQEiziQ3j44mfYZ4fHI6.4236sUva1mGYIWz00ny0zjqLr7vATKm', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(92, 'Nguyễn Văn 89', NULL, 'a89@gmail.com', '$2y$10$LxMWR5SfIw7W/lgm4UzpZuKEgmOS2/cPzWJXeLHfmPskEUbcz7zO6', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(93, 'Nguyễn Văn 90', NULL, 'a90@gmail.com', '$2y$10$AjCVO6drfhdzIpujFBLEY.9Ht49lh1kcWDTzuceKQdQ2SEYaZAA9e', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(94, 'Nguyễn Văn 91', NULL, 'a91@gmail.com', '$2y$10$2itHkBmaYK4VT9FUaSpfPODmu5.728vTttMb.s5Z3s0B7ZcrMeESy', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(95, 'Nguyễn Văn 92', NULL, 'a92@gmail.com', '$2y$10$NcCqgGYbOBTqh6FgFFvu3.yQmnBzXmqsK2px6y/PZo5NspfcmYA4a', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(96, 'Nguyễn Văn 93', NULL, 'a93@gmail.com', '$2y$10$VPNMZ5LuSJLmTIKBlGIvR.JX6CYReBhSr2/j5ZNA82a27qYaI9TMC', '2024-06-09 23:26:54', '2024-06-09 23:26:54'),
(97, 'Nguyễn Văn 94', NULL, 'a94@gmail.com', '$2y$10$Znsek88k5pwmcfs6ImFeXuAfvjZ1q5Irxky9dd3slWkF1iOGTVg7u', '2024-06-09 23:26:55', '2024-06-09 23:26:55'),
(98, 'Nguyễn Văn 95', 'assets/uploads/1717988516wallpaperflare.com_wallpaper (4).jpg', 'a95@gmail.com', '$2y$10$5/RgJoAQkJwE7N1Y9dtPUuymJymUuGCMuloQQKWCtQZKmMk2FFABC', '2024-06-09 23:26:55', '2024-06-09 23:26:55'),
(99, 'Nguyễn Văn 96', 'assets/uploads/1717985388destop1.jpg', 'a96@gmail.com', '$2y$10$/8gtkw1jc0ec7pSR/Nr8qetzfyaKl9dmoTfgF5OTAkGq0BpINiBke', '2024-06-09 23:26:55', '2024-06-09 23:26:55'),
(105, 'Trần Bình b', 'assets/uploads/1717984852anhnen.jpg', 'binh@gmail.com', '$2y$10$gDvGU6ni2corLe1OBH1Rneq8gJv5gliErCRCXXdmpVQ.nyoG8.Lju', '2024-06-10 02:00:52', '2024-06-10 02:00:52'),
(106, 'Lê Anh', 'assets/uploads/1717988652wallpaperflare.com_wallpaper.jpg', 'anh@gmail.com', '$2y$10$z.U8yEV2DLJ.Q7c8nPUs5ub6MDANJb3kKgxgjmtKk5OZHfrewV4A6', '2024-06-10 03:04:12', '2024-06-10 03:04:12'),
(107, 'Nguyễn Văn Hoàng', 'assets/uploads/1718033449tải xuống.jpg', 'hoang@gmail.com', '$2y$10$uMIvuU7YwGZko2ypmmYh4.CenhTm8pSbAvnC6VvlcPphV/zk17E5O', '2024-06-10 04:06:59', '2024-06-10 04:06:59'),
(109, 'hoang', 'assets/uploads/1718033961anhnen.jpg', 'hoang12345@gmail.com', '$2y$10$HBOkvu7Sh1NiWY7oI/YaK.fWCP0oesx1jizSWVV6knG3WIHAAgJhK', '2024-06-10 15:39:21', '2024-06-10 15:39:21'),
(110, 'Thai ', 'assets/uploads/1718035482plugin-manh-me.jpg', 'thai123456@gmail.com', '$2y$10$D3aCEixNf8El5NfINgDSOOL/qWHPeR6HqzEZWZ1APMWTRqSH58w16', '2024-06-10 16:04:42', '2024-06-10 16:04:42'),
(112, 'Nguyễn Văn hoàng', 'assets/uploads/17180382489b01098c8c62aca94e02bc4c5ecd988a.jpg', 'hoangnvph36355@fpt.edu.vn', '$2y$10$ygGwiLj6G9HGkBMiB.0du.XX/ZyDnc1scOFzMj7o3SbGeWcjigO7.', '2024-06-10 16:36:44', '2024-06-10 16:36:44'),
(113, 'toàn', 'assets/uploads/1718039977mô phật mô phật.jpg', 'toan@gmail.com', '$2y$10$.PN/j4zlfRdxukpn2P.3RejNHcR2oLipEpQ7eKSL5JlXiclUPBxWC', '2024-06-10 17:19:37', '2024-06-10 17:19:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cart_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
