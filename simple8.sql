-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2020 lúc 09:56 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `simple8`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`Username`, `Password`, `Type`) VALUES
('a', 'a', 0),
('ab', 'ab', 0),
('admin', 'admin', 1),
('ax', 'ax', 0),
('user', 'user', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `Cart_id` varchar(7) NOT NULL,
  `Username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `Cart_id` varchar(7) NOT NULL,
  `Product_id` varchar(7) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `Username` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`Username`, `Name`, `Address`, `Phone`, `Email`) VALUES
('admin', 'Quản trị viên', '125D Minh Khai', 334565999, 'dung.dev.gramer@gmail.com'),
('user', 'Người dùng', 'Ngõ Gốc Đề, Minh Khai', 582242088, 'hoang.nm4@oude.edu.vn'),
('a', '', '', 0, 'a@gmail.com'),
('ab', '', '', 0, 'a@gmail.com'),
('ax', '', '', 0, 'a@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `Product_id` varchar(7) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Color` varchar(30) DEFAULT NULL,
  `Size` varchar(10) NOT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Availibility` varchar(20) DEFAULT NULL,
  `Cost` int(11) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`Product_id`, `Name`, `Type`, `Color`, `Size`, `Gender`, `Availibility`, `Cost`, `Image`, `Description`) VALUES
('sm-d2XL', 'Áo sơ mi', 'sm', 'do', 'XXL', 'Nam', '1', 399000, 'tshirt_do (5).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-den2', 'Áo sơ mi', 'sm', 'den', 'XXL', 'Nam', '1', 399000, 'tshirt_den (5).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-denL', 'Áo sơ mi', 'sm', 'den', 'L', 'Nam', '1', 399000, 'tshirt_den (3).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-denM', 'Áo sơ mi', 'sm', 'den', 'M', 'Nam', '1', 399000, 'tshirt_den (2).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-denS', 'Áo sơ mi', 'sm', 'den', 'S', 'Nam', '1', 399000, 'tshirt_den (1).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-denX', 'Áo sơ mi', 'sm', 'den', 'XL', 'Nam', '1', 399000, 'tshirt_den (4).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-dL', 'Áo sơ mi', 'sm', 'do', 'L', 'Nam', '1', 399000, 'tshirt_do (3).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-dM', 'Áo sơ mi', 'sm', 'do', 'M', 'Nam', '1', 399000, 'tshirt_do (2).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-dS', 'Áo sơ mi', 'sm', 'do', 'S', 'Nam', '1', 399000, 'tshirt_do (1).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-dXL', 'Áo sơ mi', 'sm', 'do', 'XL', 'Nam', '1', 399000, 'tshirt_do (4).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-x2XL', 'Áo sơ mi', 'sm', 'xam', 'XXL', 'Nam', '1', 399000, 'tshirt_xam (5).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xb2X', 'Áo sơ mi', 'sm', 'xanhbien', 'XXL', 'Nam', '1', 399000, 'tshirt_xanhbien (5).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xbL', 'Áo sơ mi', 'sm', 'xanhbien', 'L', 'Nam', '1', 399000, 'tshirt_xanhbien (3).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xbM', 'Áo sơ mi', 'sm', 'xanhbien', 'M', 'Nam', '1', 399000, 'tshirt_xanhbien (2).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xbS', 'Áo sơ mi', 'sm', 'xanhbien', 'S', 'Nam', '1', 399000, 'tshirt_xanhbien (1).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xbXL', 'Áo sơ mi', 'sm', 'xanhbien', 'XL', 'Nam', '1', 399000, 'tshirt_xanhbien (4).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhq2', 'Áo sơ mi', 'sm', 'xanhhaiquan', 'XXL', 'Nam', '1', 399000, 'tshirt_xanhhaiquan (5).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhqL', 'Áo sơ mi', 'sm', 'xanhhaiquan', 'L', 'Nam', '1', 399000, 'tshirt_xanhhaiquan (3).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhqM', 'Áo sơ mi', 'sm', 'xanhhaiquan', 'M', 'Nam', '1', 399000, 'tshirt_xanhhaiquan (2).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhqS', 'Áo sơ mi', 'sm', 'xanhhaiquan', 'S', 'Nam', '1', 399000, 'tshirt_xanhhaiquan (1).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhqX', 'Áo sơ mi', 'sm', 'xanhhaiquan', 'XL', 'Nam', '1', 399000, 'tshirt_xanhhaiquan (4).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xL', 'Áo sơ mi', 'sm', 'xam', 'L', 'Nam', '1', 399000, 'tshirt_xam (3).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xM', 'Áo sơ mi', 'sm', 'xam', 'M', 'Nam', '1', 399000, 'tshirt_xam (2).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xS', 'Áo sơ mi', 'sm', 'xam', 'S', 'Nam', '1', 399000, 'tshirt_xam (1).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xXL', 'Áo sơ mi', 'sm', 'xam', 'XL', 'Nam', '1', 399000, 'tshirt_xam (4).jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_id`),
  ADD KEY `Username` (`Username`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`Product_id`),
  ADD KEY `Cart_id` (`Cart_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD KEY `Username` (`Username`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `account` (`Username`);

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`Cart_id`) REFERENCES `cart` (`Cart_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`);

--
-- Các ràng buộc cho bảng `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `account` (`Username`) ON DELETE CASCADE ;
SET FOREIGN_KEY_CHECKS=0;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
