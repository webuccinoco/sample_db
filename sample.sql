-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2025 at 06:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



-- --------------------------------------------------------

--
-- Table structure for table `test_category`
--

CREATE TABLE `test_category` (
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(15) NOT NULL,
  `description` text DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `test_category` (`categoryId`, `categoryName`, `description`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales', NULL, '2024-06-14 04:25:38', '2024-06-06 08:34:33'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', NULL, '2025-06-06 23:18:15', '2024-06-03 06:05:01'),
(3, 'Confections', 'Desserts, candies, and sweet breads', NULL, '2025-05-29 03:37:51', '2025-06-09 06:34:25'),
(4, 'Dairy Products', 'Cheeses', NULL, '2025-02-02 22:43:08', '2025-01-02 11:41:28'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal', NULL, '2024-06-11 04:09:43', '2024-07-14 21:50:06'),
(6, 'Meat/Poultry', 'Prepared meats', NULL, '2024-07-25 19:24:59', '2025-02-03 01:46:46'),
(7, 'Produce', 'Dried fruit and bean curd', NULL, '2025-04-08 08:05:05', '2025-04-19 20:54:26'),
(8, 'Seafood', 'Seaweed and fish', NULL, '2025-02-06 19:22:52', '2025-05-11 21:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `test_product`
--

CREATE TABLE `test_product` (
  `productId` bigint(20) UNSIGNED NOT NULL,
  `productName` varchar(40) NOT NULL,
  `supplierId` bigint(20) UNSIGNED DEFAULT NULL,
  `categoryId` bigint(20) UNSIGNED DEFAULT NULL,
  `quantityPerUnit` varchar(20) DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `unitsInStock` smallint(6) DEFAULT NULL,
  `unitsOnOrder` smallint(6) DEFAULT NULL,
  `reorderLevel` smallint(6) DEFAULT NULL,
  `discontinued` char(1) NOT NULL,
  `made_in` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test_product`
--

INSERT INTO `test_product` (`productId`, `productName`, `supplierId`, `categoryId`, `quantityPerUnit`, `unitPrice`, `unitsInStock`, `unitsOnOrder`, `reorderLevel`, `discontinued`, `made_in`, `paid`, `created_at`, `updated_at`) VALUES
(1, 'Product HHYDP', 1, 1, NULL, 18.00, 71, NULL, NULL, '0', 'Italy', 847498, '2025-06-06 11:16:56', '2025-02-13 16:10:29'),
(2, 'Product RECZE', 1, 1, NULL, 19.00, 90, NULL, NULL, '0', 'France', 538404, '2025-03-06 16:23:56', '2025-02-07 08:59:19'),
(3, 'Product IMEHJ', 1, 2, NULL, 10.00, 20, NULL, NULL, '0', 'UK', 604455, '2024-07-07 21:38:54', '2025-06-11 21:40:40'),
(4, 'Product KSBRM', 2, 2, NULL, 22.00, 9, NULL, NULL, '0', 'UK', 555654, '2025-05-14 05:36:00', '2025-01-16 02:37:06'),
(5, 'Product EPEIM', 2, 2, NULL, 21.35, 33, NULL, NULL, '1', 'UK', 543402, '2024-06-21 23:07:22', '2025-03-21 18:26:57'),
(6, 'Product VAIIV', 3, 2, NULL, 25.00, 15, NULL, NULL, '0', 'UK', 829957, '2025-02-09 05:47:45', '2025-02-04 22:42:05'),
(7, 'Product HMLNI', 3, 7, NULL, 30.00, 21, NULL, NULL, '0', 'Italy', 647420, '2025-05-18 04:01:19', '2025-02-22 06:07:05'),
(8, 'Product WVJFP', 3, 2, NULL, 40.00, 16, NULL, NULL, '0', 'France', 446401, '2025-04-23 13:50:24', '2024-05-18 02:06:17'),
(9, 'Product AOZBW', 4, 6, NULL, 97.00, 7, NULL, NULL, '1', 'Italy', 575487, '2025-05-30 19:55:06', '2025-04-12 16:53:22'),
(10, 'Product YHXGE', 4, 8, NULL, 31.00, 71, NULL, NULL, '0', 'France', 576036, '2025-01-18 07:52:20', '2025-04-15 10:25:53'),
(11, 'Product QMVUN', 5, 4, NULL, 21.00, 41, NULL, NULL, '0', 'UK', 864555, '2025-02-18 00:45:30', '2024-05-22 07:58:36'),
(12, 'Product OSFNS', 5, 4, NULL, 38.00, 33, NULL, NULL, '0', 'Italy', 188376, '2025-05-30 09:32:43', '2025-04-07 05:52:21'),
(13, 'Product POXFU', 6, 8, NULL, 6.00, 27, NULL, NULL, '0', 'Italy', 759066, '2025-04-15 01:45:50', '2025-01-20 19:33:07'),
(14, 'Product PWCJB', 6, 7, NULL, 23.25, 5, NULL, NULL, '0', 'Italy', 473135, '2025-05-12 03:48:43', '2025-06-12 07:14:10'),
(15, 'Product KSZOI', 6, 2, NULL, 15.50, 34, NULL, NULL, '0', 'UK', 24332, '2025-01-18 07:09:06', '2024-05-15 04:43:32'),
(16, 'Product PAFRH', 7, 3, NULL, 17.45, 9, NULL, NULL, '0', 'France', 147344, '2024-05-14 20:18:57', '2025-06-02 23:40:43'),
(17, 'Product BLCAX', 7, 6, NULL, 39.00, 44, NULL, NULL, '1', 'UK', 638324, '2025-01-27 03:57:22', '2025-02-19 09:14:08'),
(18, 'Product CKEDC', 7, 8, NULL, 62.50, 84, NULL, NULL, '0', 'France', 328027, '2025-06-08 23:47:52', '2025-01-03 14:04:46'),
(19, 'Product XKXDO', 8, 3, NULL, 9.20, 66, NULL, NULL, '0', 'UK', 186061, '2025-03-02 09:25:04', '2025-05-13 17:04:35'),
(20, 'Product QHFFP', 8, 3, NULL, 81.00, 78, NULL, NULL, '0', 'Italy', 313761, '2025-01-19 00:41:58', '2025-05-12 07:53:36'),
(21, 'Product VJZZH', 8, 3, NULL, 10.00, 88, NULL, NULL, '0', 'USA', 221506, '2025-03-28 10:16:01', '2025-03-15 10:56:02'),
(22, 'Product CPHFY', 9, 5, NULL, 21.00, 11, NULL, NULL, '0', 'Italy', 799118, '2025-01-04 08:51:34', '2025-03-15 16:10:28'),
(23, 'Product JLUDZ', 9, 5, NULL, 9.00, 46, NULL, NULL, '0', 'Italy', 557048, '2025-01-11 09:30:00', '2024-07-14 05:00:49'),
(24, 'Product QOGNU', 10, 1, NULL, 4.50, 27, NULL, NULL, '1', 'Italy', 819806, '2025-06-13 15:58:54', '2025-02-21 18:27:53'),
(25, 'Product LYLNI', 11, 3, NULL, 14.00, 36, NULL, NULL, '0', 'UK', 373919, '2025-01-20 00:42:58', '2025-02-07 19:32:10'),
(26, 'Product HLGZA', 11, 3, NULL, 31.23, 87, NULL, NULL, '0', 'UK', 399147, '2025-01-23 09:42:54', '2025-04-15 01:47:44'),
(27, 'Product SMIOH', 11, 3, NULL, 43.90, 65, NULL, NULL, '0', 'Italy', 454288, '2025-05-22 17:35:44', '2024-06-21 02:07:19'),
(28, 'Product OFBNT', 12, 7, NULL, 45.60, 63, NULL, NULL, '1', 'Italy', 859299, '2025-05-04 14:38:45', '2025-01-11 12:32:26'),
(29, 'Product VJXYN', 12, 6, NULL, 123.79, 50, NULL, NULL, '1', 'UK', 450879, '2025-01-17 03:29:42', '2024-06-17 10:18:08'),
(30, 'Product LYERX', 13, 8, NULL, 25.89, 38, NULL, NULL, '0', 'Italy', 318206, '2024-05-29 13:40:20', '2025-01-02 23:42:17'),
(31, 'Product XWOXC', 14, 4, NULL, 12.50, 42, NULL, NULL, '0', 'UK', 77972, '2025-06-14 17:14:43', '2024-06-12 16:45:05'),
(32, 'Product NUNAW', 14, 4, NULL, 32.00, 11, NULL, NULL, '0', 'France', 523116, '2025-01-10 17:37:04', '2024-05-12 05:57:22'),
(33, 'Product ASTMN', 15, 4, NULL, 2.50, 81, NULL, NULL, '0', 'USA', 795116, '2024-05-05 10:40:31', '2025-05-17 19:17:02'),
(34, 'Product SWNJY', 16, 1, NULL, 14.00, 56, NULL, NULL, '0', 'USA', 207698, '2024-07-29 17:32:15', '2025-06-05 20:10:38'),
(35, 'Product NEVTJ', 16, 1, NULL, 18.00, 10, NULL, NULL, '0', 'UK', 828213, '2025-01-21 06:28:03', '2024-07-11 15:53:32'),
(36, 'Product GMKIJ', 17, 8, NULL, 19.00, 87, NULL, NULL, '0', 'Italy', 613731, '2024-05-03 14:07:25', '2025-06-09 20:56:36'),
(37, 'Product EVFFA', 17, 8, NULL, 26.00, 94, NULL, NULL, '0', 'UK', 371225, '2025-03-18 19:30:21', '2024-05-10 19:09:08'),
(38, 'Product QDOMO', 18, 1, NULL, 263.50, 83, NULL, NULL, '0', 'France', 850379, '2025-05-06 18:43:22', '2025-02-26 01:38:39'),
(39, 'Product LSOFL', 18, 1, NULL, 18.00, 99, NULL, NULL, '0', 'UK', 846472, '2025-05-30 02:17:29', '2024-06-05 00:17:35'),
(40, 'Product YZIXQ', 19, 8, NULL, 18.40, 43, NULL, NULL, '0', 'UK', 353691, '2024-06-26 10:19:58', '2024-05-18 16:41:33'),
(41, 'Product TTEEX', 19, 8, NULL, 9.65, 62, NULL, NULL, '0', 'France', 668117, '2025-04-09 15:44:29', '2025-03-29 11:06:15'),
(42, 'Product RJVNM', 20, 5, NULL, 14.00, 16, NULL, NULL, '1', 'Italy', 49097, '2025-05-19 22:28:11', '2025-01-22 00:11:54'),
(43, 'Product ZZZHR', 20, 1, NULL, 46.00, 75, NULL, NULL, '0', 'France', 785806, '2024-06-10 14:35:24', '2024-07-14 22:51:00'),
(44, 'Product VJIEO', 20, 2, NULL, 19.45, 32, NULL, NULL, '0', 'UK', 522142, '2025-04-09 15:25:38', '2025-04-17 09:48:01'),
(45, 'Product AQOKR', 21, 8, NULL, 9.50, 23, NULL, NULL, '0', 'USA', 686513, '2025-02-20 22:29:18', '2025-01-24 07:26:56'),
(46, 'Product CBRRL', 21, 8, NULL, 12.00, 44, NULL, NULL, '0', 'Italy', 380765, '2024-07-22 10:09:22', '2024-05-24 05:57:46'),
(47, 'Product EZZPR', 22, 3, NULL, 9.50, 45, NULL, NULL, '0', 'UK', 517835, '2024-07-28 21:52:00', '2024-06-04 11:35:12'),
(48, 'Product MYNXN', 22, 3, NULL, 12.75, 87, NULL, NULL, '0', 'USA', 309202, '2025-01-25 20:59:18', '2025-02-26 14:15:09'),
(49, 'Product FPYPN', 23, 3, NULL, 20.00, 17, NULL, NULL, '0', 'USA', 553126, '2025-04-19 04:38:28', '2025-06-07 16:15:22'),
(50, 'Product BIUDV', 23, 3, NULL, 16.25, 85, NULL, NULL, '0', 'France', 230497, '2025-03-16 00:27:08', '2025-04-14 21:09:57'),
(51, 'Product APITJ', 24, 7, NULL, 53.00, 15, NULL, NULL, '0', 'USA', 792628, '2025-01-20 05:10:18', '2025-05-16 01:33:47'),
(52, 'Product QSRXF', 24, 5, NULL, 7.00, 45, NULL, NULL, '0', 'UK', 338987, '2025-01-06 09:51:17', '2024-07-24 23:26:15'),
(53, 'Product BKGEA', 24, 6, NULL, 32.80, 15, NULL, NULL, '1', 'USA', 712220, '2025-03-24 09:03:09', '2024-06-03 21:38:37'),
(54, 'Product QAQRL', 25, 6, NULL, 7.45, 100, NULL, NULL, '0', 'France', 464965, '2025-05-25 04:14:21', '2024-05-05 18:52:16'),
(55, 'Product YYWRT', 25, 6, NULL, 24.00, 55, NULL, NULL, '0', 'Italy', 66990, '2024-05-01 01:02:31', '2024-05-24 01:16:19'),
(56, 'Product VKCMF', 26, 5, NULL, 38.00, 96, NULL, NULL, '0', 'Italy', 873005, '2024-07-07 01:45:00', '2025-05-29 18:38:33'),
(57, 'Product OVLQI', 26, 5, NULL, 19.50, 30, NULL, NULL, '0', 'USA', 360806, '2025-05-25 02:43:46', '2024-07-04 07:35:21'),
(58, 'Product ACRVI', 27, 8, NULL, 13.25, 73, NULL, NULL, '0', 'France', 817881, '2025-06-01 02:19:44', '2025-05-17 23:03:20'),
(59, 'Product UKXRI', 28, 4, NULL, 55.00, 98, NULL, NULL, '0', 'UK', 779130, '2024-06-21 21:24:39', '2025-04-23 03:21:36'),
(60, 'Product WHBYK', 28, 4, NULL, 34.00, 22, NULL, NULL, '0', 'UK', 464272, '2024-07-03 13:26:18', '2025-04-23 00:43:44'),
(61, 'Product XYZPE', 29, 2, NULL, 28.50, 36, NULL, NULL, '0', 'Italy', 897017, '2025-06-08 20:22:38', '2024-05-23 22:20:53'),
(62, 'Product WUXYK', 29, 3, NULL, 49.30, 55, NULL, NULL, '0', 'Italy', 710261, '2025-02-22 08:40:58', '2024-07-23 05:12:32'),
(63, 'Product ICKNK', 7, 2, NULL, 43.90, 98, NULL, NULL, '0', 'France', 788999, '2024-07-20 19:34:25', '2025-04-15 15:41:02'),
(64, 'Product HCQDE', 12, 5, NULL, 33.25, 58, NULL, NULL, '0', 'UK', 267838, '2025-02-10 19:09:11', '2025-06-13 07:19:20'),
(65, 'Product XYWBZ', 2, 2, NULL, 21.05, 28, NULL, NULL, '0', 'UK', 69934, '2025-02-17 21:15:05', '2025-02-22 00:59:46'),
(66, 'Product LQMGN', 2, 2, NULL, 17.00, 44, NULL, NULL, '0', 'France', 221671, '2025-03-28 19:05:24', '2024-06-25 10:21:12'),
(67, 'Product XLXQF', 16, 1, NULL, 14.00, 51, NULL, NULL, '0', 'USA', 861376, '2025-01-24 19:58:22', '2025-05-25 12:46:19'),
(68, 'Product TBTBL', 8, 3, NULL, 12.50, 65, NULL, NULL, '0', 'UK', 736093, '2025-01-06 06:04:55', '2025-05-02 10:12:40'),
(69, 'Product COAXA', 15, 4, NULL, 36.00, 11, NULL, NULL, '0', 'Italy', 333122, '2025-02-13 02:27:10', '2025-06-10 12:30:30'),
(70, 'Product TOONT', 7, 1, NULL, 15.00, 86, NULL, NULL, '0', 'France', 364885, '2025-06-03 00:48:24', '2024-07-18 15:08:37'),
(71, 'Product MYMOI', 15, 4, NULL, 21.50, 31, NULL, NULL, '0', 'USA', 100413, '2025-04-03 15:41:39', '2024-07-18 20:22:07'),
(72, 'Product GEEOO', 14, 4, NULL, 34.80, 74, NULL, NULL, '0', 'France', 10315, '2024-07-25 10:34:14', '2025-01-24 04:07:42'),
(73, 'Product WEUJZ', 17, 8, NULL, 15.00, 29, NULL, NULL, '0', 'UK', 368896, '2025-03-23 02:11:56', '2024-07-18 12:08:33'),
(74, 'Product BKAZJ', 4, 7, NULL, 10.00, 38, NULL, NULL, '0', 'Italy', 337580, '2025-03-16 04:11:45', '2025-02-13 02:47:54'),
(75, 'Product BWRLG', 12, 1, NULL, 7.75, 30, NULL, NULL, '0', 'USA', 748547, '2025-02-25 13:55:20', '2025-01-14 05:32:22'),
(76, 'Product JYGFE', 23, 1, NULL, 18.00, 66, NULL, NULL, '0', 'France', 557171, '2024-07-02 16:51:37', '2025-01-19 20:24:17'),
(77, 'Product LUNZZ', 12, 2, NULL, 13.00, 74, NULL, NULL, '0', 'France', 74852, '2025-05-13 19:10:59', '2025-02-02 09:37:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test_category`


--
-- Indexes for table `test_product`
--
ALTER TABLE `test_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `test_product_supplierid_foreign` (`supplierId`),
  ADD KEY `test_product_categoryid_foreign` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
ALTER TABLE `test_category`
  ADD PRIMARY KEY (`categoryId`);

--
-- AUTO_INCREMENT for table `test_category`
--
ALTER TABLE `test_category`
  MODIFY `categoryId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--

--
-- AUTO_INCREMENT for table `test_product`
--
ALTER TABLE `test_product`
  MODIFY `productId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

