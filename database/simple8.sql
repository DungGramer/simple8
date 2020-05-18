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
(Product_id , `Type`, Color        , Size , Gender, Availibility, Cost  , `Image`                     , `Description`		) values
("sm-dS"    , "sm"  , "do"         , "S"  , "Nam" , "1"         , 399000, "tshirt_do (1).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dM"    , "sm"  , "do"         , "M"  , "Nam" , "1"         , 399000, "tshirt_do (2).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dL"    , "sm"  , "do"         , "L"  , "Nam" , "1"         , 399000, "tshirt_do (3).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-dXL"   , "sm"  , "do"         , "XL" , "Nam" , "1"         , 399000, "tshirt_do (4).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-d2XL"  , "sm"  , "do"         , "XXL", "Nam" , "1"         , 399000, "tshirt_do (5).jpg"         , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqS"  , "sm"  , "xanhhaiquan", "S"  , "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (1).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqM"  , "sm"  , "xanhhaiquan", "M"  , "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (2).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqL"  , "sm"  , "xanhhaiquan", "L"  , "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (3).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhqXL" , "sm"  , "xanhhaiquan", "XL" , "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (4).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xhq2XL", "sm"  , "xanhhaiquan", "XXL", "Nam" , "1"         , 399000, "tshirt_xanhhaiquan (5).jpg", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denS"  , "sm"  , "den"        , "S"  , "Nam" , "1"         , 399000, "tshirt_den (1).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denM"  , "sm"  , "den"        , "M"  , "Nam" , "1"         , 399000, "tshirt_den (2).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denL"  , "sm"  , "den"        , "L"  , "Nam" , "1"         , 399000, "tshirt_den (3).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-denXL" , "sm"  , "den"        , "XL" , "Nam" , "1"         , 399000, "tshirt_den (4).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-den2XL", "sm"  , "den"        , "XXL", "Nam" , "1"         , 399000, "tshirt_den (5).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbS"   , "sm"  , "xanhbien"   , "S"  , "Nam" , "1"         , 399000, "tshirt_xanhbien (1).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbM"   , "sm"  , "xanhbien"   , "M"  , "Nam" , "1"         , 399000, "tshirt_xanhbien (2).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbL"   , "sm"  , "xanhbien"   , "L"  , "Nam" , "1"         , 399000, "tshirt_xanhbien (3).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xbXL"  , "sm"  , "xanhbien"   , "XL" , "Nam" , "1"         , 399000, "tshirt_xanhbien (4).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xb2XL" , "sm"  , "xanhbien"   , "XXL", "Nam" , "1"         , 399000, "tshirt_xanhbien (5).jpg"   , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xS"    , "sm"  , "xam"        , "S"  , "Nam" , "1"         , 399000, "tshirt_xam (1).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xM"    , "sm"  , "xam"        , "M"  , "Nam" , "1"         , 399000, "tshirt_xam (2).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xL"    , "sm"  , "xam"        , "L"  , "Nam" , "1"         , 399000, "tshirt_xam (3).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-xXL"   , "sm"  , "xam"        , "XL" , "Nam" , "1"         , 399000, "tshirt_xam (4).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem."),
("sm-x2XL"  , "sm"  , "xam"        , "XXL", "Nam" , "1"         , 399000, "tshirt_xam (5).jpg"        , "Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis, officiis vitae rerum consequuntur sint eaque exercitationem.");


