-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 08, 2020 lúc 05:40 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `projectthalassa1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

CREATE TABLE `categorys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Hydrotherapy', 'categorys\\July2020\\1ljLrULgGGeTUFBj6ANd.jpg', NULL, '2020-07-08 07:31:47'),
(2, 'Algotherapy', 'categorys\\July2020\\xztK7UGyxnLU3H3f7QKs.jpg', NULL, '2020-07-08 07:33:00'),
(3, 'Physiotherapy', 'categorys\\July2020\\9E0WE8FqtbudXUyA1bP5.jpg', NULL, '2020-07-08 07:33:15'),
(4, 'Aqua Exercise', 'categorys\\July2020\\NTwvm1FunIrTap3MLIWX.jpg', NULL, '2020-07-08 07:33:31'),
(5, 'Underwater Massage', 'categorys\\July2020\\cPE2a8IzMN7dCBxYpFqu.jpg', NULL, '2020-07-08 07:33:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_products`
--

CREATE TABLE `category_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idsubcategory` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_products`
--

INSERT INTO `category_products` (`id`, `name`, `slug`, `details`, `price`, `description`, `image1`, `image2`, `image3`, `image4`, `image5`, `idsubcategory`, `created_at`, `updated_at`) VALUES
(1, 'Signature Salt Bath Treatment', 'Signature-Salt-Bath-Treatment', 'Enjoy the full benefits of Sundara’s', 240, 'Enjoy the full benefits of Sundara’s signature products which draw ingredients indigenous to the area. This treatment begins with exfoliation of the skin, followed by a luxurious bath soak and then full body hydration to conclude the service', 'category-products\\July2020\\FqsrHuxPBQNBEFsNnzX5.jpg', 'category-products\\July2020\\hyVCmeV6V6xYRfs7uwov.jpg', 'category-products\\July2020\\7qdGGZ2pFfvuM0u8dKFR.jpg', 'category-products\\July2020\\PR3fRWfd8y8XtsLOErWZ.jpg', 'category-products\\July2020\\Itt9YT4yp33p75HB8tcA.jpg', 1, NULL, '2020-07-08 07:51:33'),
(2, 'Signature Salt Bath1', 'Signature-Salt-Bath1', 'Enjoy the full benefits of Sundara’s1', 250, 'Enjoy the full benefits of Sundara’s signature products which draw ingredients indigenous to the area. This treatment begins with exfoliation of the skin, followed by a luxurious bath soak and then full body hydration to conclude the service1', 'category-products\\July2020\\SY9V4IQpUVsvawO7ReF6.jpg', 'category-products\\July2020\\O9OsWG7m4ZRPPaX3Qsrj.jpg', 'category-products\\July2020\\jlHN6u8AcEo4DS0qiLQG.jpg', 'category-products\\July2020\\eHwwQH8tlo3FS2UeH94A.jpg', 'category-products\\July2020\\pZ03suGBfDJo5R1RT8Fp.jpg', 1, NULL, '2020-07-08 07:52:26'),
(3, 'Signature Salt Bath2', 'Signature-Salt-Bath2', 'Enjoy the full benefits of Sundara’s2', 250, 'Enjoy the full benefits of Sundara’s signature products which draw ingredients indigenous to the area. This treatment begins with exfoliation of the skin, followed by a luxurious bath soak and then full body hydration to conclude the service2', 'category-products\\July2020\\rXWydZ109B0Rp5vmZjH3.jpg', 'category-products\\July2020\\sbz9wsFKf1y4zQhJ9NDF.jpg', 'category-products\\July2020\\bprA47Y1efZWwNsqmETJ.jpg', 'anh13.jpg', 'category-products\\July2020\\supmOz8LS2LHlhROulmR.jpg', 2, NULL, '2020-07-08 07:53:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(58, 7, 'images', 'image', 'Images', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'idcategory', 'number', 'Idcategory', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(62, 9, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(63, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(64, 9, 'images', 'image', 'Images', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"image|mimes:jpeg,png,jpg,gif,svg|max:2048\"}}', 3),
(65, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(66, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(67, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:225\"}}', 2),
(69, 10, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(70, 10, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(71, 10, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(72, 10, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(73, 10, 'image1', 'image', 'Image1', 1, 1, 1, 1, 1, 1, '{}', 7),
(74, 10, 'image2', 'image', 'Image2', 1, 1, 1, 1, 1, 1, '{}', 8),
(75, 10, 'image3', 'image', 'Image3', 1, 1, 1, 1, 1, 1, '{}', 9),
(76, 10, 'image4', 'image', 'Image4', 1, 1, 1, 1, 1, 1, '{}', 10),
(77, 10, 'image5', 'image', 'Image5', 1, 1, 1, 1, 1, 1, '{}', 11),
(78, 10, 'idsubcategory', 'number', 'Idsubcategory', 1, 1, 1, 1, 1, 1, '{}', 12),
(79, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(80, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-07-08 06:52:34', '2020-07-08 06:52:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-07-08 06:52:34', '2020-07-08 06:52:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-07-08 06:52:34', '2020-07-08 06:52:34'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(7, 'sub_categories', 'sub-categories', 'Sub Category', 'Sub Categories', 'voyager-categories', 'App\\SubCategory', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-08 07:01:51', '2020-07-08 08:27:46'),
(9, 'categorys', 'categorys', 'Category', 'Categorys', 'voyager-categories', 'App\\Categorys', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-08 07:10:15', '2020-07-08 08:13:28'),
(10, 'category_products', 'category-products', 'Category Product', 'Category Products', 'voyager-news', 'App\\CategoryProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-08 07:14:39', '2020-07-08 08:17:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-07-08 06:52:34', '2020-07-08 06:52:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-07-08 06:52:35', '2020-07-08 06:52:35', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2020-07-08 06:52:35', '2020-07-08 08:28:31', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 6, '2020-07-08 06:52:35', '2020-07-08 08:28:31', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 5, '2020-07-08 06:52:35', '2020-07-08 08:28:34', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2020-07-08 06:52:35', '2020-07-08 08:28:27', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-07-08 06:52:35', '2020-07-08 07:06:41', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-07-08 06:52:35', '2020-07-08 07:06:41', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-07-08 06:52:35', '2020-07-08 07:06:41', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-07-08 06:52:35', '2020-07-08 07:06:41', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2020-07-08 06:52:35', '2020-07-08 08:28:27', 'voyager.settings.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 8, '2020-07-08 06:52:37', '2020-07-08 08:28:31', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 9, '2020-07-08 06:52:38', '2020-07-08 08:28:31', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-07-08 06:52:38', '2020-07-08 07:06:41', 'voyager.hooks', NULL),
(15, 1, 'Sub Categories', '', '_self', 'voyage-bag', NULL, NULL, 2, '2020-07-08 07:01:52', '2020-07-08 07:06:53', 'voyager.sub-categories.index', NULL),
(16, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 3, '2020-07-08 07:10:15', '2020-07-08 08:28:18', 'voyager.categorys.index', NULL),
(17, 1, 'Category Products', '', '_self', 'voyager-news', NULL, NULL, 4, '2020-07-08 07:14:39', '2020-07-08 08:28:34', 'voyager.category-products.index', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_08_031303_create_categorys_table', 1),
(4, '2020_07_08_031326_create_sub_categories_table', 1),
(5, '2020_07_08_031336_create_category_products_table', 1),
(6, '2020_07_08_031347_create_orders_table', 1),
(7, '2020_07_08_031359_create_ordetails_table', 1),
(8, '2016_01_01_000000_add_voyager_user_fields', 2),
(9, '2016_01_01_000000_create_data_types_table', 2),
(10, '2016_05_19_173453_create_menu_table', 2),
(11, '2016_10_21_190000_create_roles_table', 2),
(12, '2016_10_21_190000_create_settings_table', 2),
(13, '2016_11_30_135954_create_permission_table', 2),
(14, '2016_11_30_141208_create_permission_role_table', 2),
(15, '2016_12_26_201236_data_types__add__server_side', 2),
(16, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(17, '2017_01_14_005015_create_translations_table', 2),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(22, '2017_08_05_000000_add_group_to_settings_table', 2),
(23, '2017_11_26_013050_add_user_role_relationship', 2),
(24, '2017_11_26_015000_create_user_roles_table', 2),
(25, '2018_03_11_000000_add_user_settings', 2),
(26, '2018_03_14_000000_add_details_to_data_types_table', 2),
(27, '2018_03_16_000000_make_settings_value_nullable', 2),
(28, '2016_01_01_000000_create_pages_table', 3),
(29, '2016_01_01_000000_create_posts_table', 3),
(30, '2016_02_15_204651_create_categories_table', 3),
(31, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderdate` date NOT NULL,
  `customername` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customeremail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerphone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customeraddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `orderdate`, `customername`, `customeremail`, `customerphone`, `customeraddress`, `created_at`, `updated_at`) VALUES
(1, '2020-07-08', 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0369835839', 'Bình Quý Thăng Bình Quảng Nam', NULL, NULL),
(2, '2020-07-08', 'Nguyễn Văn B', 'nguyenvanb@gmail.com', '0369835839', 'Bình Quý Thăng Bình Quảng Nam', NULL, NULL),
(3, '2020-07-08', 'Nguyễn Văn C', 'nguyenvanc@gmail.com', '0369835839', 'Bình Quý Thăng Bình Quảng Nam', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordetails`
--

CREATE TABLE `ordetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `idproduct` int(11) NOT NULL,
  `idorder` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ordetails`
--

INSERT INTO `ordetails` (`id`, `idproduct`, `idorder`, `price`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 240, 240, NULL, NULL),
(2, 2, 2, 250, 250, NULL, NULL),
(3, 2, 3, 250, 240, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-07-08 06:52:38', '2020-07-08 06:52:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(2, 'browse_bread', NULL, '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(3, 'browse_database', NULL, '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(4, 'browse_media', NULL, '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(5, 'browse_compass', NULL, '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(6, 'browse_menus', 'menus', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(7, 'read_menus', 'menus', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(8, 'edit_menus', 'menus', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(9, 'add_menus', 'menus', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(10, 'delete_menus', 'menus', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(11, 'browse_roles', 'roles', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(12, 'read_roles', 'roles', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(13, 'edit_roles', 'roles', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(14, 'add_roles', 'roles', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(15, 'delete_roles', 'roles', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(16, 'browse_users', 'users', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(17, 'read_users', 'users', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(18, 'edit_users', 'users', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(19, 'add_users', 'users', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(20, 'delete_users', 'users', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(21, 'browse_settings', 'settings', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(22, 'read_settings', 'settings', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(23, 'edit_settings', 'settings', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(24, 'add_settings', 'settings', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(25, 'delete_settings', 'settings', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(31, 'browse_posts', 'posts', '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(32, 'read_posts', 'posts', '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(33, 'edit_posts', 'posts', '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(34, 'add_posts', 'posts', '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(35, 'delete_posts', 'posts', '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(36, 'browse_pages', 'pages', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(37, 'read_pages', 'pages', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(38, 'edit_pages', 'pages', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(39, 'add_pages', 'pages', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(40, 'delete_pages', 'pages', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(41, 'browse_hooks', NULL, '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(42, 'browse_sub_categories', 'sub_categories', '2020-07-08 07:01:52', '2020-07-08 07:01:52'),
(43, 'read_sub_categories', 'sub_categories', '2020-07-08 07:01:52', '2020-07-08 07:01:52'),
(44, 'edit_sub_categories', 'sub_categories', '2020-07-08 07:01:52', '2020-07-08 07:01:52'),
(45, 'add_sub_categories', 'sub_categories', '2020-07-08 07:01:52', '2020-07-08 07:01:52'),
(46, 'delete_sub_categories', 'sub_categories', '2020-07-08 07:01:52', '2020-07-08 07:01:52'),
(47, 'browse_categorys', 'categorys', '2020-07-08 07:10:15', '2020-07-08 07:10:15'),
(48, 'read_categorys', 'categorys', '2020-07-08 07:10:15', '2020-07-08 07:10:15'),
(49, 'edit_categorys', 'categorys', '2020-07-08 07:10:15', '2020-07-08 07:10:15'),
(50, 'add_categorys', 'categorys', '2020-07-08 07:10:15', '2020-07-08 07:10:15'),
(51, 'delete_categorys', 'categorys', '2020-07-08 07:10:15', '2020-07-08 07:10:15'),
(52, 'browse_category_products', 'category_products', '2020-07-08 07:14:39', '2020-07-08 07:14:39'),
(53, 'read_category_products', 'category_products', '2020-07-08 07:14:39', '2020-07-08 07:14:39'),
(54, 'edit_category_products', 'category_products', '2020-07-08 07:14:39', '2020-07-08 07:14:39'),
(55, 'add_category_products', 'category_products', '2020-07-08 07:14:39', '2020-07-08 07:14:39'),
(56, 'delete_category_products', 'category_products', '2020-07-08 07:14:39', '2020-07-08 07:14:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-08 06:52:37', '2020-07-08 06:52:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-07-08 06:52:35', '2020-07-08 06:52:35'),
(2, 'user', 'Normal User', '2020-07-08 06:52:35', '2020-07-08 06:52:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'thalassa', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'thalassa', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\July2020\\h6o3u0M7JulyPta75jfY.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcategory` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `images`, `idcategory`, `created_at`, `updated_at`) VALUES
(1, 'Signature Salt Bath1', 'sub-categories\\July2020\\GyHanhhX6Das65Gltspk.jpg', 1, NULL, '2020-07-08 07:53:55'),
(2, 'Signature Salt Bath2', 'sub-categories\\July2020\\xjY0QSt7yjnmGrMpG9qA.jpg', 1, NULL, '2020-07-08 07:54:09'),
(3, 'Signature Salt Bath3', 'sub-categories\\July2020\\8YwrkbwlU972lMSRjVFJ.jpg', 2, NULL, '2020-07-08 07:54:24'),
(4, 'Signature Salt Bath4', 'sub-categories\\July2020\\hOPqMZL59jhAeyAsYTXW.jpg', 1, NULL, '2020-07-08 07:54:40'),
(5, 'Signature Salt Bath5', 'sub-categories\\July2020\\VkRMHfAs9H5bN0Y8dQ89.jpg', 1, NULL, '2020-07-08 07:54:54'),
(6, 'Signature Salt Bath6', 'sub-categories\\July2020\\JZFn8pU3eFmfffXCxcJQ.jpg', 1, NULL, '2020-07-08 07:55:09'),
(7, 'Signature Salt Bath7', 'sub-categories\\July2020\\1UXnIydHO1eenuhWGQzJ.jpg', 2, NULL, '2020-07-08 07:55:25'),
(8, 'tesst du lieu', 'sub-categories\\July2020\\ApyK6HchTgJm25UdstR5.jpg', 1, '2020-07-08 08:00:00', '2020-07-08 08:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-07-08 06:52:38', '2020-07-08 06:52:38'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-07-08 06:52:38', '2020-07-08 06:52:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$7Yla5WBACQcHlMGMoUL3BOQuEbioeZfW9m6mT.hS.7.4E3ILhgOoa', 'Dtjfd2tCMPNmB2T5eFzXoPGuQSuUscP9ZZs5AvToqBJR06BXDBYAB777RfUe', NULL, '2020-07-08 06:52:37', '2020-07-08 06:52:37'),
(2, 1, 'Lê Đức Tài', 'leductaiqnam@email.com', 'users/default.png', NULL, '$2y$10$rvDOxXq3/rSEBUyi.qbJPO6MtSMkiD/NE05ZpX7Dy34CKxXY2CvN6', NULL, '{\"locale\":\"en\"}', '2020-07-08 08:34:08', '2020-07-08 08:34:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorys_name_unique` (`name`);

--
-- Chỉ mục cho bảng `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_products_name_unique` (`name`),
  ADD UNIQUE KEY `category_products_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ordetails`
--
ALTER TABLE `ordetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ordetails`
--
ALTER TABLE `ordetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
