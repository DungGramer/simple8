CREATE DATABASE IF NOT EXISTS simple8;
use simple8;
-- DROP database simple8;
CREATE TABLE Cart (
	Cart_id VARCHAR(7) PRIMARY KEY
);

CREATE TABLE Customer (
	User_id   VARCHAR(6)  PRIMARY KEY,
	User_pass VARCHAR(50) NOT NULL,
	`Name`    VARCHAR(30) NOT NULL,
	`Address` VARCHAR(60) NOT NULL,
	Phone     INT         NOT NULL,
	Cart_id   VARCHAR(7)  NOT NULL,
	FOREIGN KEY (Cart_id) REFERENCES Cart(Cart_id)
);

CREATE TABLE Payment (
	Payment_id   VARCHAR(7)  PRIMARY KEY,       
	Payment_date DATE        NOT NULL,      
	Payment_type VARCHAR(10) NOT NULL,      
	User_id      VARCHAR(6)  NOT NULL,      
	Cart_id      VARCHAR(7)  NOT NULL,      
	FOREIGN KEY (User_id)  REFERENCES  Customer(User_id),
	FOREIGN KEY (Cart_id)  REFERENCES  Cart(Cart_id)
);

CREATE TABLE Product (
	Product_id  	VARCHAR(7)		PRIMARY KEY,
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
	Quantity   INT        NOT NULL,
	Date_added DATE       NOT NULL,
	Cart_id    VARCHAR(7) NOT NULL,
	Product_id VARCHAR(7) NOT NULL,
	FOREIGN KEY (Cart_id) 	 REFERENCES Cart(Cart_id),
	FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
	PRIMARY KEY (Cart_id, Product_id)
);
-- DELETE FROM `Product` where Product_id LIKE "sm-%";
INSERT INTO `Product` 
(Product_id , `Type`    , Color          , Size , Gender, Availibility, Cost  , `Image`                     , `Description`		) values
("sm-dS"    , "Áo sơ mi", "Đỏ"           , "S"  , "Nam" , "Còn hàng"  , 399000, "tshirt_do (1).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dM"    , "Áo sơ mi", "Đỏ"           , "M"  , "Nam" , "Còn hàng"  , 399000, "tshirt_do (2).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dL"    , "Áo sơ mi", "Đỏ"           , "L"  , "Nam" , "Còn hàng"  , 399000, "tshirt_do (3).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dXL"   , "Áo sơ mi", "Đỏ"           , "XL" , "Nam" , "Còn hàng"  , 399000, "tshirt_do (4).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-d2XL"  , "Áo sơ mi", "Đỏ"           , "XXL", "Nam" , "Còn hàng"  , 399000, "tshirt_do (5).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqS"  , "Áo sơ mi", "Xanh hải quân", "S"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xanhhaiquan (1).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqM"  , "Áo sơ mi", "Xanh hải quân", "M"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xanhhaiquan (2).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqL"  , "Áo sơ mi", "Xanh hải quân", "L"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xanhhaiquan (3).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqXL" , "Áo sơ mi", "Xanh hải quân", "XL" , "Nam" , "Còn hàng"  , 399000, "tshirt_xanhhaiquan (4).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhq2XL", "Áo sơ mi", "Xanh hải quân", "XXL", "Nam" , "Còn hàng"  , 399000, "tshirt_xanhhaiquan (5).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denS"  , "Áo sơ mi", "Đen"          , "S"  , "Nam" , "Còn hàng"  , 399000, "tshirt_den (1).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denM"  , "Áo sơ mi", "Đen"          , "M"  , "Nam" , "Còn hàng"  , 399000, "tshirt_den (2).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denL"  , "Áo sơ mi", "Đen"          , "L"  , "Nam" , "Còn hàng"  , 399000, "tshirt_den (3).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denXL" , "Áo sơ mi", "Đen"          , "XL" , "Nam" , "Còn hàng"  , 399000, "tshirt_den (4).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-den2XL", "Áo sơ mi", "Đen"          , "XXL", "Nam" , "Còn hàng"  , 399000, "tshirt_den (5).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbS"   , "Áo sơ mi", "Xanh biển"    , "S"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xanhbien (1).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbM"   , "Áo sơ mi", "Xanh biển"    , "M"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xanhbien (2).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbL"   , "Áo sơ mi", "Xanh biển"    , "L"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xanhbien (3).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbXL"  , "Áo sơ mi", "Xanh biển"    , "XL" , "Nam" , "Còn hàng"  , 399000, "tshirt_xanhbien (4).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xb2XL" , "Áo sơ mi", "Xanh biển"    , "XXL", "Nam" , "Còn hàng"  , 399000, "tshirt_xanhbien (5).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xS"    , "Áo sơ mi", "Xám"          , "S"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xam (1).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xM"    , "Áo sơ mi", "Xám"          , "M"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xam (2).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xL"    , "Áo sơ mi", "Xám"          , "L"  , "Nam" , "Còn hàng"  , 399000, "tshirt_xam (3).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xXL"   , "Áo sơ mi", "Xám"          , "XL" , "Nam" , "Còn hàng"  , 399000, "tshirt_xam (4).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-x2XL"  , "Áo sơ mi", "Xám"          , "XXL", "Nam" , "Còn hàng"  , 399000, "tshirt_xam (5).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.");



