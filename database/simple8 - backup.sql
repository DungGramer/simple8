CREATE DATABASE IF NOT EXISTS simple8;
use simple8;
--  DROP database simple8;

CREATE TABLE Customer (
	Username VARCHAR(20) PRIMARY KEY,
	`Name`    VARCHAR(30) NOT NULL,
	`Address` VARCHAR(60) NOT NULL,
	Phone     INT         NOT NULL,
  Email VARCHAR(50)
);

CREATE TABLE `Account` (
	Username VARCHAR(20) NOT NULL,
    `Password` VARCHAR(20) NOT NULL,
    `Type` INT NOT NULL,
	FOREIGN KEY (Username) REFERENCES Customer(Username)
);
CREATE TABLE Cart (
	Cart_id VARCHAR(7) PRIMARY KEY,
	Username VARCHAR(20),
	FOREIGN KEY (Username) REFERENCES Customer(Username)
);

CREATE TABLE Product (
	Product_id  	VARCHAR(20)		PRIMARY KEY,
	`Name`			VARCHAR(100),
	`Type`      	VARCHAR(20),          
	Color       	VARCHAR(30),         
	Size        	VARCHAR(10)	NOT NULL,
	Gender      	VARCHAR(6),          
	Availibility	VARCHAR(20),         
	Cost 					INT NOT NULL,
	`Image`				VARCHAR(255),
	`Description` TEXT		 
);

CREATE TABLE Cart_item (
	Cart_id    VARCHAR(7) NOT NULL,
	Product_id VARCHAR(20) NOT NULL,
	Quantity   INT        NOT NULL,
	Date_added DATE       NOT NULL,
	FOREIGN KEY (Cart_id) 	 REFERENCES Cart(Cart_id) ON DELETE CASCADE,
	FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);
-- DELETE FROM `Product` where Product_id LIKE "sm-%";
INSERT INTO `Product` 
(Product_id , `Name` 		 , `Type`, Color        , Size , Gender, Availibility, Cost  , `Image`                     , `Description`		) values
("sm-dS"    , "Áo sơ mi" , "sm"  , "do"         , "S"  , "Nam" , "1"         , 399000, "tshirt_do (1).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dM"    , "Áo sơ mi" , "sm"  , "do"         , "M"  , "Nam" , "1"         , 399000, "tshirt_do (2).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dL"    , "Áo sơ mi" , "sm"  , "do"         , "L"  , "Nam" , "1"         , 399000, "tshirt_do (3).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dXL"   , "Áo sơ mi" , "sm"  , "do"         , "XL" , "Nam" , "1"         , 399000, "tshirt_do (4).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-d2XL"  , "Áo sơ mi" , "sm"  , "do"         , "XXL", "Nam" , "1"         , 399000, "tshirt_do (5).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqS"  , "Áo sơ mi" , "sm"  , "xanhhaiquan", "S"  , "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (1).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqM"  , "Áo sơ mi" , "sm"  , "xanhhaiquan", "M"  , "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (2).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqL"  , "Áo sơ mi" , "sm"  , "xanhhaiquan", "L"  , "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (3).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqXL" , "Áo sơ mi" , "sm"  , "xanhhaiquan", "XL" , "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (4).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhq2XL", "Áo sơ mi" , "sm"  , "xanhhaiquan", "XXL", "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (5).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denS"  , "Áo sơ mi" , "sm"  , "den"        , "S"  , "Nam" , "1"         , 399000, "tshirt_den (1).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denM"  , "Áo sơ mi" , "sm"  , "den"        , "M"  , "Nam" , "1"         , 399000, "tshirt_den (2).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denL"  , "Áo sơ mi" , "sm"  , "den"        , "L"  , "Nam" , "1"         , 399000, "tshirt_den (3).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denXL" , "Áo sơ mi" , "sm"  , "den"        , "XL" , "Nam" , "1"         , 399000, "tshirt_den (4).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-den2XL", "Áo sơ mi" , "sm"  , "den"        , "XXL", "Nam" , "1"         , 399000, "tshirt_den (5).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbS"   , "Áo sơ mi" , "sm"  , "xanhbien"   , "S"  , "Nam" , "1"         , 399000, "tshirt_xanhbien (1).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbM"   , "Áo sơ mi" , "sm"  , "xanhbien"   , "M"  , "Nam" , "1"         , 399000, "tshirt_xanhbien (2).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbL"   , "Áo sơ mi" , "sm"  , "xanhbien"   , "L"  , "Nam" , "1"         , 399000, "tshirt_xanhbien (3).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbXL"  , "Áo sơ mi" , "sm"  , "xanhbien"   , "XL" , "Nam" , "1"         , 399000, "tshirt_xanhbien (4).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xb2XL" , "Áo sơ mi" , "sm"  , "xanhbien"   , "XXL", "Nam" , "1"         , 399000, "tshirt_xanhbien (5).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xS"    , "Áo sơ mi" , "sm"  , "xam"        , "S"  , "Nam" , "1"         , 399000, "tshirt_xam (1).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xM"    , "Áo sơ mi" , "sm"  , "xam"        , "M"  , "Nam" , "1"         , 399000, "tshirt_xam (2).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xL"    , "Áo sơ mi" , "sm"  , "xam"        , "L"  , "Nam" , "1"         , 399000, "tshirt_xam (3).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xXL"   , "Áo sơ mi" , "sm"  , "xam"        , "XL" , "Nam" , "1"         , 399000, "tshirt_xam (4).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-x2XL"  , "Áo sơ mi" , "sm"  , "xam"        , "XXL", "Nam" , "1"         , 399000, "tshirt_xam (5).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.");


INSERT INTO `customer` (`Username`, `Name`, `Address`, `Phone`, `Email`) VALUES
('admin', 'Quản trị viên', '125D Minh Khai', 334565999, 'dung.dev.gramer@gmail.com'),
('user', 'Người dùng', 'Ngõ Gốc Đề, Minh Khai', 582242088, 'hoang.nm4@oude.edu.vn');

INSERT INTO `account` (`Username`, `Password`, `Type`) VALUES
('admin', 'admin', 1),
('user', 'user', 0);