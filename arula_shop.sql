-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2021 lúc 07:38 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `arula_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` bigint(20) NOT NULL,
  `cart_qty` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `cart_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_qty`, `user_id`, `pro_id`, `cart_status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 8, 2, '2021-12-08 01:21:51', '2021-12-08 22:58:13'),
(3, 2, 2, 2, 2, '2021-12-08 02:00:32', '2021-12-08 22:58:13'),
(4, 3, 2, 3, 2, '2021-12-08 02:00:39', '2021-12-08 22:58:13'),
(5, 1, 2, 7, 2, '2021-12-08 22:26:38', '2021-12-08 22:58:13'),
(6, 3, 2, 3, 2, '2021-12-09 00:21:36', '2021-12-19 23:06:43'),
(7, 2, 2, 1, 2, '2021-12-09 00:29:21', '2021-12-19 23:06:43'),
(8, 2, 2, 4, 2, '2021-12-19 23:06:18', '2021-12-19 23:06:43'),
(9, 3, 3, 4, 2, '2021-12-19 23:18:57', '2021-12-19 23:30:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_sorting` int(11) NOT NULL,
  `category_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`, `category_slug`, `category_sorting`, `category_status`, `created_at`, `updated_at`) VALUES
(4, 'cate 1', '61b04be6b0c27_1638943718_product-2.jpg', 'cate-1', 1, 1, '2021-12-04 19:57:47', '2021-12-07 23:08:38'),
(5, 'cate 2', '61af09f85ebc0_1638861304_cat-4.jpg', 'cate-2', 2, 1, '2021-12-04 20:21:20', '2021-12-19 23:07:28'),
(6, 'cate 3', '61af0d6cb4114_1638862188_cat-3.jpg', 'cate-3', 3, 1, '2021-12-07 00:29:48', '2021-12-19 23:30:53'),
(7, 'cate 4', '61af0d882c239_1638862216_cat-1.jpg', 'cate-4', 4, 1, '2021-12-07 00:30:16', '2021-12-07 00:30:16'),
(8, 'test', '61c01db19d649_1639980465_Life\'s Pleasures.png', 'test', 5, 2, '2021-12-19 23:07:46', '2021-12-19 23:07:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_qty` int(11) NOT NULL,
  `coupon_date_start` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_date_end` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_used` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_condition` int(11) NOT NULL,
  `coupon_sale_number` int(11) NOT NULL,
  `coupon_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_code`, `coupon_qty`, `coupon_date_start`, `coupon_date_end`, `coupon_used`, `coupon_condition`, `coupon_sale_number`, `coupon_status`, `created_at`, `updated_at`) VALUES
(2, 'sale', 123, '2021/12/06', '2021/12/23', NULL, 2, 2, 1, '2021-12-05 23:01:40', '2021-12-19 23:32:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phone`, `customer_pay`, `customer_note`, `created_at`, `updated_at`) VALUES
(1, 'xsxsxs', 'dsdhsd@gmail.com', 'sxsxsxs', '0773654022', 'COD', 'sxsxsx', '2021-12-06 07:16:32', '2021-12-06 07:16:32'),
(5, 'test kkk', 'test@gmail.com', 'xsxsxs', '0223564897', 'COD', NULL, '2021-12-08 22:58:13', '2021-12-08 22:58:13'),
(6, 'Pj Phạm', 'pj1234@gmail.com', '123/456 phú lợi', '0223568791', 'COD', NULL, '2021-12-19 23:06:43', '2021-12-19 23:06:43'),
(7, 'ffe fefe', 'efefe@gmail.com', 'fefefefe', '0223569842', 'COD', NULL, '2021-12-19 23:30:16', '2021-12-19 23:30:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `gallery_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_sorting` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `pro_id`, `gallery_image`, `gallery_sorting`, `created_at`, `updated_at`) VALUES
(1, 1, '61b047b272693_1638942642_8e81b2af40867854a268caaa14336fdb.jpg', 4, '2021-12-07 22:50:42', '2021-12-07 22:51:08'),
(2, 1, '61b047b2a11ca_1638942642_fa2c40fd22862af76163349c27974642.jpg', 5, '2021-12-07 22:50:42', '2021-12-07 22:51:08'),
(3, 1, '61b047b2c821e_1638942642_2034d6660d92c90ab2ea3a256789a38e.jpg', 3, '2021-12-07 22:50:42', '2021-12-07 22:51:08'),
(4, 1, '61b047b2ef06a_1638942642_127999e6bbed11f129ab3d31f43df719.jpg', 2, '2021-12-07 22:50:43', '2021-12-07 22:51:06'),
(5, 1, '61b047b3207cc_1638942643_66dd5feb227c4bd3545d4e2f424926a4.jpg', 1, '2021-12-07 22:50:43', '2021-12-07 22:51:02'),
(6, 1, '61b047bcaa29b_1638942652_1e70447253553c315ab99115524ccbc9.jpg', 6, '2021-12-07 22:50:52', '2021-12-07 22:50:52'),
(7, 2, '61b047da07e24_1638942682_4b83fb1b7c708e47e38074b0aa084080.jpg', 1, '2021-12-07 22:51:22', '2021-12-07 22:51:22'),
(8, 2, '61b047da2ff57_1638942682_0fbe6a653bb92bdbfc4c0790a2fbcc44.jpg', 2, '2021-12-07 22:51:22', '2021-12-07 22:51:22'),
(9, 2, '61b047da4e62b_1638942682_c3ad190c7f237525dddbcfc82987ea45.jpg', 3, '2021-12-07 22:51:22', '2021-12-07 22:51:22'),
(10, 3, '61b047e905f02_1638942697_e4b4486303d255bb6a56aef800cde929.jpg', 5, '2021-12-07 22:51:37', '2021-12-07 22:51:51'),
(11, 3, '61b047e931e01_1638942697_19285dea1794fd45006ce2ab7d971342.jpg', 3, '2021-12-07 22:51:37', '2021-12-07 22:51:47'),
(12, 3, '61b047e95060f_1638942697_11e99058f6d7eeb26e104782c3b173dc.jpg', 2, '2021-12-07 22:51:37', '2021-12-07 22:51:46'),
(13, 3, '61b047e96bf11_1638942697_2d902a9e77468da7660262bb02186683.jpg', 1, '2021-12-07 22:51:37', '2021-12-07 22:51:43'),
(14, 3, '61b047e98912d_1638942697_ffad8a2b1e3be733a0317bfc7c0ffc63.jpg', 4, '2021-12-07 22:51:37', '2021-12-07 22:51:51'),
(15, 4, '61b0493f53790_1638943039_decf6c5e267d17f05306193e06190fb5.jpg', 3, '2021-12-07 22:57:19', '2021-12-07 22:57:29'),
(16, 4, '61b0493f77c41_1638943039_3c136c7b25f6a58f6619bdb2a19ce9d7.jpg', 2, '2021-12-07 22:57:19', '2021-12-07 22:57:29'),
(17, 4, '61b0493f9f709_1638943039_420e4c9474542c650592a7f701d832bf.jpg', 4, '2021-12-07 22:57:19', '2021-12-07 22:57:25'),
(18, 4, '61b0493fc466c_1638943039_e76b2f2ca93f9cc6f66dc623b3d9919c.jpg', 1, '2021-12-07 22:57:19', '2021-12-07 22:57:25'),
(19, 5, '61b04a6ed0748_1638943342_S0417a1c132bc49e08397aee04d4ab778w.jpg_720x720q80.jpg_.webp', 1, '2021-12-07 23:02:23', '2021-12-07 23:02:23'),
(20, 5, '61b04a6f09353_1638943343_Sa08215662c0540f4bcdc824e024f86810.jpg_720x720q80.jpg_.webp', 2, '2021-12-07 23:02:23', '2021-12-07 23:02:23'),
(21, 5, '61b04a6f2bcee_1638943343_S904de87b15ff46098dc85f968e07f796A.jpg_720x720q80.jpg_.webp', 3, '2021-12-07 23:02:23', '2021-12-07 23:02:23'),
(22, 5, '61b04a6f52679_1638943343_Sd7d2638f24c54a388613cebaa45f7d1ce.jpg_720x720q80.jpg_.webp', 4, '2021-12-07 23:02:23', '2021-12-07 23:02:23'),
(23, 5, '61b04a6f74f08_1638943343_S4cfe35f92471403ca3c619c7b9c6a048q.jpg_720x720q80.jpg_.webp', 5, '2021-12-07 23:02:23', '2021-12-07 23:02:23'),
(24, 6, '61b04bb31e047_1638943667_3e4e173acbad5a69a552aed8eaafdf84.jpg', 4, '2021-12-07 23:07:47', '2021-12-07 23:07:57'),
(25, 6, '61b04bb356a12_1638943667_2a0a2c9c19f79f510f5bfc5b64f720ab.jpg', 3, '2021-12-07 23:07:47', '2021-12-07 23:07:57'),
(26, 6, '61b04bb37edff_1638943667_b1ed44c960892908af81dcd03fa03248.jpg', 2, '2021-12-07 23:07:47', '2021-12-07 23:07:54'),
(27, 6, '61b04bb398d4f_1638943667_f9b9891662c65a40df4a016cf1158fe8.jpg', 1, '2021-12-07 23:07:47', '2021-12-07 23:07:53'),
(28, 7, '61b04d2908266_1638944041_046b2272ed6f29d01072cba0cfbed72b.jpg', 6, '2021-12-07 23:14:01', '2021-12-07 23:14:44'),
(29, 7, '61b04d293f637_1638944041_f3803ffe46b2662f2e210197733ad7a8.jpg', 5, '2021-12-07 23:14:01', '2021-12-07 23:14:44'),
(30, 7, '61b04d295ff06_1638944041_8b324af8009650efa664ad8dc1524250.jpg', 3, '2021-12-07 23:14:01', '2021-12-07 23:14:44'),
(31, 7, '61b04d2986011_1638944041_880b5684d75f9410b8d31ff659389ea9.jpg', 2, '2021-12-07 23:14:01', '2021-12-07 23:14:41'),
(32, 7, '61b04d299f86e_1638944041_43e958e4d2c1d46d1edb3f91edc5cb4f.jpg', 4, '2021-12-07 23:14:01', '2021-12-07 23:14:44'),
(33, 7, '61b04d351cb57_1638944053_50d32661ed64dad2248574522420c99c.jpg', 7, '2021-12-07 23:14:13', '2021-12-07 23:14:21'),
(34, 7, '61b04d354e805_1638944053_c914b3c0398ac3886d789dee0d40fc1c.jpg', 1, '2021-12-07 23:14:13', '2021-12-07 23:14:21'),
(35, 8, '61b04de509503_1638944229_2080b9bd6f8bda4020197a18c55e90af.jpg', 5, '2021-12-07 23:17:09', '2021-12-07 23:17:23'),
(36, 8, '61b04de529554_1638944229_f0b0dac706ec41213bbcbedea140fe67.jpg', 3, '2021-12-07 23:17:09', '2021-12-07 23:17:23'),
(37, 8, '61b04de547531_1638944229_cd9c9efbabcbe93a28adb5747e9e447d.jpg', 4, '2021-12-07 23:17:09', '2021-12-07 23:17:23'),
(38, 8, '61b04de5624b2_1638944229_e92013c699a75f5af52f8f1b937e45ee.jpg', 2, '2021-12-07 23:17:09', '2021-12-07 23:17:20'),
(39, 8, '61b04de576358_1638944229_14e4e46532164343a87a9f5236336251.jpg', 1, '2021-12-07 23:17:09', '2021-12-07 23:17:16'),
(40, 9, '61b04ebf09e0f_1638944447_4c2d863033790d7bddc958cc69a7caa5.jpg', 4, '2021-12-07 23:20:47', '2021-12-07 23:20:58'),
(41, 9, '61b04ebf3e414_1638944447_78211a956b580d08a284c676695ab692.jpg', 5, '2021-12-07 23:20:47', '2021-12-07 23:20:58'),
(42, 9, '61b04ebf69490_1638944447_d161d680404c87226134be3876aafba6.jpg', 2, '2021-12-07 23:20:47', '2021-12-07 23:20:56'),
(43, 9, '61b04ebf921cc_1638944447_06dfa256b80823a625632166a5455db2.jpg', 3, '2021-12-07 23:20:47', '2021-12-07 23:20:58'),
(44, 9, '61b04ebfb8fd8_1638944447_0b4074dcf4d2690dd87b4b357bec16cc.jpg', 1, '2021-12-07 23:20:47', '2021-12-07 23:20:54'),
(45, 9, '61b04ed69441b_1638944470_3419f42ca30605c974f54120636d3eac.jpg', 6, '2021-12-07 23:21:10', '2021-12-07 23:21:10'),
(46, 9, '61b04ed6ca7d4_1638944470_be82d57a8efd2bd6d30a6b44d625fe44.jpg', 7, '2021-12-07 23:21:11', '2021-12-07 23:21:11'),
(47, 9, '61c0233206db2_1639981874_Life\'s Pleasures.png', 8, '2021-12-07 23:21:11', '2021-12-19 23:31:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_order`
--

CREATE TABLE `info_order` (
  `info_order_id` bigint(20) NOT NULL,
  `info_order_name` varchar(255) NOT NULL,
  `info_order_email` varchar(255) NOT NULL,
  `info_order_phone` varchar(255) NOT NULL,
  `info_order_address` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `info_order`
--

INSERT INTO `info_order` (`info_order_id`, `info_order_name`, `info_order_email`, `info_order_phone`, `info_order_address`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'firstname=Pj&lastname=Phạm', 'pj1234@gmail.com', '0223568791', '123/456 phú lợi', 2, '2021-12-08 22:58:13', '2021-12-11 22:23:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `cus_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` bigint(20) UNSIGNED NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `cus_id`, `order_code`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 123654789, 3, '2021-12-06 07:17:23', '2021-12-06 20:59:45'),
(4, 5, 820171465, 1, '2021-12-08 22:58:13', '2021-12-08 22:58:13'),
(5, 6, 1667874025, 2, '2021-12-19 23:06:43', '2021-12-19 23:08:20'),
(6, 7, 1795531892, 3, '2021-12-19 23:30:16', '2021-12-19 23:31:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderdetail_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `order_de_price` int(11) NOT NULL,
  `order_de_qty` int(11) NOT NULL,
  `order_de_coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`orderdetail_id`, `order_code`, `pro_id`, `order_de_price`, `order_de_qty`, `order_de_coupon`, `created_at`, `updated_at`) VALUES
(1, 123654789, 1, 20000, 11, 'no', '2021-12-06 07:18:21', '2021-12-06 01:16:19'),
(6, 820171465, 8, 99000, 2, 'no', '2021-12-08 22:58:13', '2021-12-08 22:58:13'),
(7, 820171465, 2, 200000, 2, 'no', '2021-12-08 22:58:13', '2021-12-08 22:58:13'),
(8, 820171465, 3, 50000, 1, 'no', '2021-12-08 22:58:13', '2021-12-08 22:58:49'),
(9, 820171465, 7, 350000, 1, 'no', '2021-12-08 22:58:13', '2021-12-08 22:58:13'),
(10, 1667874025, 3, 50000, 3, 'no', '2021-12-19 23:06:43', '2021-12-19 23:06:43'),
(11, 1667874025, 1, 90000, 2, 'no', '2021-12-19 23:06:43', '2021-12-19 23:06:43'),
(12, 1667874025, 4, 145000, 2, 'no', '2021-12-19 23:06:43', '2021-12-19 23:06:43'),
(13, 1795531892, 4, 145000, 3, 'no', '2021-12-19 23:30:16', '2021-12-19 23:30:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_price_sale` bigint(20) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_view` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sold` int(11) NOT NULL,
  `product_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_slug`, `category_id`, `product_desc`, `product_info`, `product_price`, `product_price_sale`, `product_quantity`, `product_size`, `product_color`, `product_view`, `product_image`, `product_sold`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'product 1', 'product-1', 4, '<p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>\n\n<p>Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.</p>', '<p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>\n\n<div class=\"row\">\n<div class=\"col-md-6\">\n<ul>\n	<li>Sit erat duo lorem duo ea consetetur, et eirmod takimata.</li>\n	<li>Amet kasd gubergren sit sanctus et lorem eos sadipscing at.</li>\n	<li>Duo amet accusam eirmod nonumy stet et et stet eirmod.</li>\n	<li>Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.</li>\n</ul>\n</div>\n\n<div class=\"col-md-6\">\n<ul>\n	<li>Sit erat duo lorem duo ea consetetur, et eirmod takimata.</li>\n	<li>Amet kasd gubergren sit sanctus et lorem eos sadipscing at.</li>\n	<li>Duo amet accusam eirmod nonumy stet et et stet eirmod.</li>\n	<li>Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.</li>\n</ul>\n</div>\n</div>', 1000000, 90000, 630, 'M,L,XL,2XL', 'Black,White', 20, '61b0479ab942b_1638942618_127999e6bbed11f129ab3d31f43df719.jpg', 49, 1, '2021-12-04 22:10:58', '2021-12-19 23:08:20'),
(2, 'product 2', 'product-2', 7, 'product 2', 'product 2', 200000, 0, 203, 'M,L,XL,2XL', 'Black,White', 3, '61af101887a8c_1638862872_product-7.jpg', 0, 1, '2021-12-04 22:33:50', '2021-12-19 23:29:14'),
(3, 'product 3', 'product-3', 7, 'product 3', 'product 3', 50000, 0, 203, 'M,L,XL,2XL', 'Black,White', 3, '61b04567e49c0_1638942055_2d902a9e77468da7660262bb02186683.jpg', 3, 1, '2021-12-07 00:36:03', '2021-12-19 23:29:22'),
(4, 'product 4', 'product-4', 7, 'product 4', 'product 4', 145000, 0, 200, 'M,L,XL,2XL', 'Black,White', 0, '61b04931cdcbf_1638943025_e76b2f2ca93f9cc6f66dc623b3d9919c.jpg', 5, 1, '2021-12-07 22:57:06', '2021-12-19 23:31:30'),
(5, 'product 5', 'product-5', 7, 'product 5', 'product 5', 200000, 150000, 200, 'M,L,XL,2XL', 'Black,White', 3, '61b04a2fbaf9a_1638943279_Se922021ef0c14b26b4078c857118db5ds.jpg_720x720q80.jpg_.webp', 0, 1, '2021-12-07 23:01:19', '2021-12-19 23:18:04'),
(6, 'product 6', 'product-6', 4, 'product 6', 'product 6', 150000, 0, 203, 'XS,M,L,XL,2XL', 'Black,White,Green', 6, '61b04b9eeba36_1638943646_f9b9891662c65a40df4a016cf1158fe8.jpg', 0, 1, '2021-12-07 23:07:27', '2021-12-19 20:36:44'),
(7, 'product 7', 'product-7', 4, 'product 7', 'product 7', 508000, 350000, 20, 'M,L,XL,2XL', 'Black,White', 1, '61b04d1582d47_1638944021_c914b3c0398ac3886d789dee0d40fc1c.jpg', 0, 1, '2021-12-07 23:13:41', '2021-12-19 20:36:53'),
(8, 'product 8', 'product-8', 4, 'product 8', 'product 8', 99000, 0, 430, 'S,M,L', 'Black,Red,Purple', 0, '61b04dd866133_1638944216_14e4e46532164343a87a9f5236336251.jpg', 0, 1, '2021-12-07 23:16:56', '2021-12-19 20:29:21'),
(9, 'product 9', 'product-9', 6, 'product 9', 'product 9', 139000, 0, 207, 'XS,S,M', 'Black,White,Green', 0, '61b04eab46262_1638944427_0b4074dcf4d2690dd87b4b357bec16cc.jpg', 0, 1, '2021-12-07 23:20:27', '2021-12-19 20:29:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_status` tinyint(4) NOT NULL,
  `slider_sorting` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_title`, `slider_content`, `slider_url`, `slider_image`, `slider_status`, `slider_sorting`, `created_at`, `updated_at`) VALUES
(1, 'Kids Fashion', 'Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam', NULL, '61af09b20c526_carousel-3.jpg', 1, 1, '2021-12-07 02:44:33', '2021-12-07 00:24:17'),
(2, 'Women Fashion', 'Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam', NULL, '61af09a94dd33_carousel-2.jpg', 1, 3, '2021-12-06 20:15:53', '2021-12-07 00:24:17'),
(3, 'Men Fashion', 'Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam', NULL, '61af09a1e048f_carousel-1.jpg', 1, 2, '2021-12-06 20:20:03', '2021-12-07 00:24:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistical`
--

CREATE TABLE `statistical` (
  `id_statistic` int(11) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `sales` varchar(255) NOT NULL,
  `profit` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `statistical`
--

INSERT INTO `statistical` (`id_statistic`, `order_date`, `sales`, `profit`, `quantity`, `total_order`, `created_at`, `updated_at`) VALUES
(1, '2021-12-05', '22000000', '21998000', 22, 2, '2021-12-05 01:19:08', '2021-12-05 01:22:19'),
(2, '2021-12-06', '41000000', '80999000', 11, 1, '2021-12-05 20:59:45', '2021-12-05 20:59:45'),
(3, '2021-12-07', '22000000', '41998000', 22, 2, '2021-12-07 01:19:08', '2021-12-07 01:22:19'),
(4, '2021-12-20', '435000', '434000', 3, 1, '2021-12-19 23:31:37', '2021-12-19 23:31:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$f9T36WpzK80pllMnookQ0eGbOpy5/ri6Dmgsx2PN2z80FJC2JZ68q', 2, NULL, '2021-12-03 08:53:46', '2021-12-03 08:53:46'),
(2, 'nguyễn văn a', 'user@gmail.com', '$2y$10$f9T36WpzK80pllMnookQ0eGbOpy5/ri6Dmgsx2PN2z80FJC2JZ68q', 1, NULL, '2021-12-03 02:51:43', '2021-12-03 02:51:43'),
(3, 'phạm văn b', 'user2@gmail.com', '$2y$10$s4AdUWUHf9jmcip4HmmlxOn3.JMZdnJIiHjXkEiKHA2Dm8p9zwaqS', 1, NULL, '2021-12-03 02:53:34', '2021-12-05 23:40:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `pro_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 6, 2, '2021-12-09 00:27:54', '2021-12-09 00:27:54'),
(4, 1, 2, '2021-12-09 00:27:57', '2021-12-09 00:27:57'),
(6, 6, 1, '2021-12-19 19:45:46', '2021-12-19 19:45:46'),
(7, 4, 2, '2021-12-19 23:05:54', '2021-12-19 23:05:54'),
(8, 1, 3, '2021-12-19 23:18:42', '2021-12-19 23:18:42'),
(9, 4, 3, '2021-12-19 23:18:46', '2021-12-19 23:18:46'),
(10, 2, 3, '2021-12-19 23:28:29', '2021-12-19 23:28:29');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`,`pro_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_category_slug_unique` (`category_slug`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`),
  ADD KEY `gallery_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `info_order`
--
ALTER TABLE `info_order`
  ADD PRIMARY KEY (`info_order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_code` (`order_code`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderdetail_id`),
  ADD KEY `orderdetail_pro_id_foreign` (`pro_id`),
  ADD KEY `order_code` (`order_code`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_product_slug_unique` (`product_slug`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `statistical`
--
ALTER TABLE `statistical`
  ADD PRIMARY KEY (`id_statistic`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `wishlist_pro_id_foreign` (`pro_id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `info_order`
--
ALTER TABLE `info_order`
  MODIFY `info_order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `orderdetail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `statistical`
--
ALTER TABLE `statistical`
  MODIFY `id_statistic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `info_order`
--
ALTER TABLE `info_order`
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`order_code`) REFERENCES `order` (`order_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
