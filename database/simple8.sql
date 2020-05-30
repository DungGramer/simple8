-- CREATE DATABASE IF NOT EXISTS simple8;
-- use simple8;
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

INSERT INTO `product`
(`Product_id`         ,  `Name`                      ,  `Type`  ,  `Color`      ,  `Size`,  `Gender`,  `Availibility`,  `Cost`,  `Image`                     ,  `Description`) VALUES
('110i-hongL'         ,  'Áo thun polo'              ,  '110i'  ,  'hong'       ,  'L'   ,  'nu'    ,  '1'           ,  200000,  '08_1_2_2_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-hongM'         ,  'Áo thun polo'              ,  '110i'  ,  'hong'       ,  'M'   ,  'nu'    ,  '1'           ,  200000,  '08_1_2_5_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-hongS'         ,  'Áo thun polo'              ,  '110i'  ,  'hong'       ,  'S'   ,  'nu'    ,  '1'           ,  200000,  '08_1_2_6_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-hongXL'        ,  'Áo thun polo'              ,  '110i'  ,  'hong'       ,  'XL'  ,  'nu'    ,  '1'           ,  200000,  '08_1_2_7_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-hongXXL'       ,  'Áo thun polo'              ,  '110i'  ,  'hong'       ,  'XXL' ,  'nu'    ,  '1'           ,  200000,  '08_1_2_1_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-trangL'        ,  'Áo thun polo'              ,  '110i'  ,  'trang'      ,  'L'   ,  'nu'    ,  '1'           ,  200000,  '16_1_2_5_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-trangM'        ,  'Áo thun polo'              ,  '110i'  ,  'trang'      ,  'M'   ,  'nu'    ,  '1'           ,  200000,  '16_1_2_6_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-trangS'        ,  'Áo thun polo'              ,  '110i'  ,  'trang'      ,  'S'   ,  'nu'    ,  '1'           ,  200000,  '16_1_2_8_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-trangXL'       ,  'Áo thun polo'              ,  '110i'  ,  'trang'      ,  'XL'  ,  'nu'    ,  '1'           ,  200000,  '16_2_1_3_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-trangXXL'      ,  'Áo thun polo'              ,  '110i'  ,  'trang'      ,  'XXL' ,  'nu'    ,  '1'           ,  200000,  '16_1_2_1_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-xamL'          ,  'Áo thun polo'              ,  '110i'  ,  'xam'        ,  'L'   ,  'nu'    ,  '1'           ,  200000,  '03_1_2_2_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-xamM'          ,  'Áo thun polo'              ,  '110i'  ,  'xam'        ,  'M'   ,  'nu'    ,  '1'           ,  200000,  '03_1_2_5_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-xamS'          ,  'Áo thun polo'              ,  '110i'  ,  'xam'        ,  'S'   ,  'nu'    ,  '1'           ,  200000,  '03_1_2_6_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-xamXL'         ,  'Áo thun polo'              ,  '110i'  ,  'xam'        ,  'XL'  ,  'nu'    ,  '1'           ,  200000,  '03_1_2_7_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('110i-xamXXL'        ,  'Áo thun polo'              ,  '110i'  ,  'xam'        ,  'XXL' ,  'nu'    ,  '1'           ,  200000,  '03_1_2_1_0800_0800.jpg'    ,  'Cotton và lycra vải pha trộn.\r\nCổ áo polo tương phản.\r\n'),
('ct-xamL'            ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xam'        ,  'L'   ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sa094_2_0.jpg'   ,  ''),
('ct-xamM'            ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xam'        ,  'M'   ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sa094-l0.jpg'    ,  ''),
('ct-xamS'            ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xam'        ,  'S'   ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sa094_2_0.jpg'   ,  ''),
('ct-xamXL'           ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xam'        ,  'XL'  ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sa094-l0.jpg'    ,  ''),
('ct-xamXXL'          ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xam'        ,  'XXL' ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sa094_1_0.jpg'   ,  ''),
('ct-xanhduongL'      ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xanhduong'  ,  'L'   ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sb596-340.jpg'   ,  ''),
('ct-xanhduongM'      ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xanhduong'  ,  'M'   ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sb596-350.jpg'   ,  ''),
('ct-xanhduongS'      ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xanhduong'  ,  'S'   ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sb596-360.jpg'   ,  ''),
('ct-xanhduongXL'     ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xanhduong'  ,  'XL'  ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sb596-xl_10.jpg' ,  ''),
('ct-xanhduongXXL'    ,  'Áo phông nam cơ bản cổ tim',  'ct'    ,  'xanhduong'  ,  'XXL' ,  'nam'   ,  '1'           ,  129000,  '8ts19a002-sb596-330.jpg'   ,  ''),
('djvr-vangL'         ,  'Áo dưa hấu'                ,  'djvr'  ,  'vang'       ,  'L'   ,  'nu'    ,  '1'           ,  160000,  '43_1_2_5_0800_0800.jpg'    ,  ''),
('djvr-vangM'         ,  'Áo dưa hấu'                ,  'djvr'  ,  'vang'       ,  'M'   ,  'nu'    ,  '1'           ,  160000,  '43_1_2_6_0800_0800.jpg'    ,  ''),
('djvr-vangS'         ,  'Áo dưa hấu'                ,  'djvr'  ,  'vang'       ,  'S'   ,  'nu'    ,  '1'           ,  160000,  '43_1_2_7_0800_0800.jpg'    ,  ''),
('djvr-vangXL'        ,  'Áo dưa hấu'                ,  'djvr'  ,  'vang'       ,  'XL'  ,  'nu'    ,  '1'           ,  160000,  '43_1_2_8_0800_0800.jpg'    ,  ''),
('djvr-vangXXL'       ,  'Áo dưa hấu'                ,  'djvr'  ,  'vang'       ,  'XXL' ,  'nu'    ,  '1'           ,  160000,  '43_1_2_1_0800_0800.jpg'    ,  ''),
('N73-doL'            ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'do'         ,  'L'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_XT7_211.jpg'        ,  ''),
('N73-doM'            ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'do'         ,  'M'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_XT7_220.jpg'        ,  ''),
('N73-doS'            ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'do'         ,  'S'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_XT7_230.jpg'        ,  ''),
('N73-doXL'           ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'do'         ,  'XL'  ,  'nam'   ,  '1'           ,  399000,  'BH4745_XT7_240.jpg'        ,  ''),
('N73-doXXL'          ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'do'         ,  'XXL' ,  'nam'   ,  '1'           ,  399000,  'BH4745_XT7_201.jpg'        ,  ''),
('N73-trangL'         ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'trang'      ,  'L'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_N73_211.jpg'        ,  ''),
('N73-trangM'         ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'trang'      ,  'M'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_N73_220.jpg'        ,  ''),
('N73-trangS'         ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'trang'      ,  'S'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_N73_230.jpg'        ,  ''),
('N73-trangXL'        ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'trang'      ,  'XL'  ,  'nam'   ,  '1'           ,  399000,  'BH4745_N73_240.jpg'        ,  ''),
('N73-trangXXL'       ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'trang'      ,  'XXL' ,  'nam'   ,  '1'           ,  399000,  'BH4745_N73_201.jpg'        ,  ''),
('N73-xanhduongL'     ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhduong'  ,  'L'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_L3L_211.jpg'        ,  ''),
('N73-xanhduongM'     ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhduong'  ,  'M'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_L3L_220.jpg'        ,  ''),
('N73-xanhduongS'     ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhduong'  ,  'S'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_L3L_230.jpg'        ,  ''),
('N73-xanhduongXL'    ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhduong'  ,  'XL'  ,  'nam'   ,  '1'           ,  399000,  'BH4745_L3L_240.jpg'        ,  ''),
('N73-xanhduongXXL'   ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhduong'  ,  'XXL' ,  'nam'   ,  '1'           ,  399000,  'BH4745_L3L_201.jpg'        ,  ''),
('N73-xanhlaL'        ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhla'     ,  'L'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_M3N_211.jpg'        ,  ''),
('N73-xanhlaM'        ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhla'     ,  'M'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_M3N_220.jpg'        ,  ''),
('N73-xanhlaS'        ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhla'     ,  'S'   ,  'nam'   ,  '1'           ,  399000,  'BH4745_M3N_230.jpg'        ,  ''),
('N73-xanhlaXL'       ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhla'     ,  'XL'  ,  'nam'   ,  '1'           ,  399000,  'BH4745_M3N_240.jpg'        ,  ''),
('N73-xanhlaXXL'      ,  'Áo khoác Lacoste SPORT'    ,  'N73'   ,  'xanhla'     ,  'XXL' ,  'nam'   ,  '1'           ,  399000,  'BH4745_M3N_201.jpg'        ,  ''),
('p2-denL'            ,  'Áo Lacoste '               ,  'p2'    ,  'den'        ,  'L'   ,  'nam'   ,  '1'           ,  160000,  'TH8684_TR2_210.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-denM'            ,  'Áo Lacoste '               ,  'p2'    ,  'den'        ,  'M'   ,  'nam'   ,  '1'           ,  160000,  'TH8684_TR2_220.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-denS'            ,  'Áo Lacoste '               ,  'p2'    ,  'den'        ,  'S'   ,  'nam'   ,  '1'           ,  160000,  'TH8684_TR2_230.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-denXL'           ,  'Áo Lacoste '               ,  'p2'    ,  'den'        ,  'XL'  ,  'nam'   ,  '1'           ,  160000,  'TH8684_TR2_240.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-denXXL'          ,  'Áo Lacoste '               ,  'p2'    ,  'den'        ,  'XXL' ,  'nam'   ,  '1'           ,  160000,  'TH8684_TR2_200.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-trangL'          ,  'Áo Lacoste '               ,  'p2'    ,  'trang'      ,  'L'   ,  'nam'   ,  '1'           ,  160000,  'TH8684_MC3_211.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-trangM'          ,  'Áo Lacoste '               ,  'p2'    ,  'trang'      ,  'M'   ,  'nam'   ,  '1'           ,  160000,  'TH8684_MC3_220.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-trangS'          ,  'Áo Lacoste '               ,  'p2'    ,  'trang'      ,  'S'   ,  'nam'   ,  '1'           ,  160000,  'TH8684_MC3_240.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-trangXL'         ,  'Áo Lacoste '               ,  'p2'    ,  'trang'      ,  'XL'  ,  'nam'   ,  '1'           ,  160000,  'TH8684_MC3_220.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('p2-trangXXL'        ,  'Áo Lacoste '               ,  'p2'    ,  'trang'      ,  'XXL' ,  'nam'   ,  '1'           ,  160000,  'TH8684_MC3_201.jpg'        ,  'Áo cotton pha kỹ thuật\r\nCổ thuyền phi hành đoàn\r\nLacoste in hình cá sấu trên ngực\r\nTrang trí quá mức\r\nVải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('pique-hongL'        ,  'Áo sơ mi Pique'            ,  'pique' ,  'hong'       ,  'L'   ,  'nam'   ,  '1'           ,  200000,  'CH9612_99P_200.jpg'        ,  ''),
('pique-hongM'        ,  'Áo sơ mi Pique'            ,  'pique' ,  'hong'       ,  'M'   ,  'nam'   ,  '1'           ,  200000,  'CH9612_99P_211.jpg'        ,  ''),
('pique-hongS'        ,  'Áo sơ mi Pique'            ,  'pique' ,  'hong'       ,  'S'   ,  'nam'   ,  '1'           ,  200000,  'CH9612_99P_220.jpg'        ,  ''),
('pique-hongXL'       ,  'Áo sơ mi Pique'            ,  'pique' ,  'hong'       ,  'XL'  ,  'nam'   ,  '1'           ,  200000,  'CH9612_99P_240.jpg'        ,  ''),
('pique-hongXXL'      ,  'Áo sơ mi Pique'            ,  'pique' ,  'hong'       ,  'XXL' ,  'nam'   ,  '1'           ,  200000,  'CH9612_99P_21.jpg'         ,  ''),
('pique-xamL'         ,  'Áo sơ mi Pique'            ,  'pique' ,  'xam'        ,  'L'   ,  'nam'   ,  '1'           ,  200000,  'CH9612_7FP_210.jpg'        ,  ''),
('pique-xamM'         ,  'Áo sơ mi Pique'            ,  'pique' ,  'xam'        ,  'M'   ,  'nam'   ,  '1'           ,  200000,  'CH9612_7FP_220.jpg'        ,  ''),
('pique-xamS'         ,  'Áo sơ mi Pique'            ,  'pique' ,  'xam'        ,  'S'   ,  'nam'   ,  '1'           ,  200000,  'CH9612_7FP_230.jpg'        ,  ''),
('pique-xamXL'        ,  'Áo sơ mi Pique'            ,  'pique' ,  'xam'        ,  'XL'  ,  'nam'   ,  '1'           ,  200000,  'CH9612_7FP_240.jpg'        ,  ''),
('pique-xamXXL'       ,  'Áo sơ mi Pique'            ,  'pique' ,  'xam'        ,  'XXL' ,  'nam'   ,  '1'           ,  200000,  'CH9612_7FP_200.jpg'        ,  ''),
('roland-trangL'      ,  'Roland Garros'             ,  'roland',  'trang'      ,  'L'   ,  'nam'   ,  '1'           ,  450000,  'BH3635_J72_211.jpg'        ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-trangM'      ,  'Roland Garros'             ,  'roland',  'trang'      ,  'M'   ,  'nam'   ,  '1'           ,  450000,  'BH3635_J72_221.jpg'        ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-trangS'      ,  'Roland Garros'             ,  'roland',  'trang'      ,  'S'   ,  'nam'   ,  '1'           ,  450000,  'BH3635_J72_231.jpg'        ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-trangXL'     ,  'Roland Garros'             ,  'roland',  'trang'      ,  'XL'  ,  'nam'   ,  '1'           ,  450000,  'BH3635_J72_241.jpg'        ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-trangXXL'    ,  'Roland Garros'             ,  'roland',  'trang'      ,  'XXL' ,  'nam'   ,  '1'           ,  450000,  'BH3635_J72_201.jpg'        ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-xanhlaL'     ,  'Roland Garros'             ,  'roland',  'xanhla'     ,  'L'   ,  'nam'   ,  '1'           ,  450000,  ''                          ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-xanhlaM'     ,  'Roland Garros'             ,  'roland',  'xanhla'     ,  'M'   ,  'nam'   ,  '1'           ,  450000,  'BH3635_DG8_24.jpg'         ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-xanhlaS'     ,  'Roland Garros'             ,  'roland',  'xanhla'     ,  'S'   ,  'nam'   ,  '1'           ,  450000,  ''                          ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-xanhlaXL'    ,  'Roland Garros'             ,  'roland',  'xanhla'     ,  'XL'  ,  'nam'   ,  '1'           ,  450000,  'BH3635_DG8_24.jpg'         ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('roland-xanhlaXXL'   ,  'Roland Garros'             ,  'roland',  'xanhla'     ,  'XXL' ,  'nam'   ,  '1'           ,  450000,  'BH3635_DG8_24.jpg'         ,  'Chiếc áo gió zip này từ bộ sưu tập Roland Garros tạo nên dấu ấn với vẻ ngoài hiện đại và mui xe được lót bằng lưới thoáng khí. Được chế tạo bằng vải taffeta chịu nước nhẹ,  nó được thiết kế chi tiết với khóa kéo đôi,  thanh trượt mang nhãn hiệu Lacoste và hoàn thiện đàn hồi ở cổ tay. Hai túi có ống ở phía trước,  viền có thể điều chỉnh với nút chặn và huy hiệu Roland Garros độc quyền thể hiện thiết kế thể thao của nó.'),
('sleeve-xamL'        ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xam'        ,  'L'   ,  'nam'   ,  '1'           ,  125000,  '35_1_2_2_0800_0800.jpg'    ,  ''),
('sleeve-xamM'        ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xam'        ,  'M'   ,  'nam'   ,  '1'           ,  125000,  '35_1_2_5_0800_0800.jpg'    ,  ''),
('sleeve-xamS'        ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xam'        ,  'S'   ,  'nam'   ,  '1'           ,  125000,  '35_1_2_6_0800_0800.jpg'    ,  ''),
('sleeve-xamXL'       ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xam'        ,  'XL'  ,  'nam'   ,  '1'           ,  125000,  '35_1_2_7_0800_0800.jpg'    ,  ''),
('sleeve-xamXXL'      ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xam'        ,  'XXL' ,  'nam'   ,  '1'           ,  125000,  '35_1_2_1_0800_0800.jpg'    ,  ''),
('sleeve-xanhduongL'  ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xanhduong'  ,  'L'   ,  'nam'   ,  '1'           ,  125000,  '09_1_2_5_1000_1000.jpg'    ,  ''),
('sleeve-xanhduongM'  ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xanhduong'  ,  'M'   ,  'nam'   ,  '1'           ,  125000,  '09_1_2_6_0800_0800.jpg'    ,  ''),
('sleeve-xanhduongS'  ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xanhduong'  ,  'S'   ,  'nam'   ,  '1'           ,  125000,  '09_1_2_7_0800_0800.jpg'    ,  ''),
('sleeve-xanhduongXL' ,  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xanhduong'  ,  'XL'  ,  'nam'   ,  '1'           ,  125000,  '09_1_2_8_0800_0800.jpg'    ,  ''),
('sleeve-xanhduongXXL',  'Áo sơ mi ngắn tay'         ,  'sleeve',  'xanhduong'  ,  'XXL' ,  'nam'   ,  '1'           ,  125000,  '09_1_2_1_0800_0800.jpg'    ,  ''),
('sm-d2XL'            ,  'Áo sơ mi'                  ,  'sm'    ,  'do'         ,  'XXL' ,  'Nam'   ,  '1'           ,  399000,  'tshirt_do (5).jpg'         ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-den2'            ,  'Áo sơ mi'                  ,  'sm'    ,  'den'        ,  'XXL' ,  'Nam'   ,  '1'           ,  399000,  'tshirt_den (5).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-denL'            ,  'Áo sơ mi'                  ,  'sm'    ,  'den'        ,  'L'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_den (3).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-denM'            ,  'Áo sơ mi'                  ,  'sm'    ,  'den'        ,  'M'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_den (2).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-denS'            ,  'Áo sơ mi'                  ,  'sm'    ,  'den'        ,  'S'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_den (1).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-denX'            ,  'Áo sơ mi'                  ,  'sm'    ,  'den'        ,  'XL'  ,  'Nam'   ,  '1'           ,  399000,  'tshirt_den (4).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-dL'              ,  'Áo sơ mi'                  ,  'sm'    ,  'do'         ,  'L'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_do (3).jpg'         ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-dM'              ,  'Áo sơ mi'                  ,  'sm'    ,  'do'         ,  'M'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_do (2).jpg'         ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-dS'              ,  'Áo sơ mi'                  ,  'sm'    ,  'do'         ,  'S'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_do (1).jpg'         ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-dXL'             ,  'Áo sơ mi'                  ,  'sm'    ,  'do'         ,  'XL'  ,  'Nam'   ,  '1'           ,  399000,  'tshirt_do (4).jpg'         ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-x2XL'            ,  'Áo sơ mi'                  ,  'sm'    ,  'xam'        ,  'XXL' ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xam (5).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xb2X'            ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhbien'   ,  'XXL' ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhbien (5).jpg'   ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xbL'             ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhbien'   ,  'L'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhbien (3).jpg'   ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xbM'             ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhbien'   ,  'M'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhbien (2).jpg'   ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xbS'             ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhbien'   ,  'S'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhbien (1).jpg'   ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xbXL'            ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhbien'   ,  'XL'  ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhbien (4).jpg'   ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhq2'            ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhhaiquan',  'XXL' ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhhaiquan (5).jpg',  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhqL'            ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhhaiquan',  'L'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhhaiquan (3).jpg',  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhqM'            ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhhaiquan',  'M'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhhaiquan (2).jpg',  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhqS'            ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhhaiquan',  'S'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhhaiquan (1).jpg',  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xhqX'            ,  'Áo sơ mi'                  ,  'sm'    ,  'xanhhaiquan',  'XL'  ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xanhhaiquan (4).jpg',  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xL'              ,  'Áo sơ mi'                  ,  'sm'    ,  'xam'        ,  'L'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xam (3).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xM'              ,  'Áo sơ mi'                  ,  'sm'    ,  'xam'        ,  'M'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xam (2).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xS'              ,  'Áo sơ mi'                  ,  'sm'    ,  'xam'        ,  'S'   ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xam (1).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('sm-xXL'             ,  'Áo sơ mi'                  ,  'sm'    ,  'xam'        ,  'XL'  ,  'Nam'   ,  '1'           ,  399000,  'tshirt_xam (4).jpg'        ,  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit reprehenderit vel corrupti veritatis,  officiis vitae rerum consequuntur sint eaque exercitationem.'),
('vvvx-trangL'        ,  'Áo sơ mi Sport'            ,  'vvvx'  ,  'trang'      ,  'L'   ,  'nam'   ,  '1'           ,  300000,  'TH4865_522_201.jpg'        ,  'Vải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('vvvx-trangM'        ,  'Áo sơ mi Sport'            ,  'vvvx'  ,  'trang'      ,  'M'   ,  'nam'   ,  '1'           ,  300000,  'TH4865_522_220.jpg'        ,  'Vải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('vvvx-trangS'        ,  'Áo sơ mi Sport'            ,  'vvvx'  ,  'trang'      ,  'S'   ,  'nam'   ,  '1'           ,  300000,  'TH4865_522_221.jpg'        ,  'Vải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('vvvx-trangXL'       ,  'Áo sơ mi Sport'            ,  'vvvx'  ,  'trang'      ,  'XL'  ,  'nam'   ,  '1'           ,  300000,  'TH4865_522_230.jpg'        ,  'Vải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)'),
('vvvx-trangXXL'      ,  'Áo sơ mi Sport'            ,  'vvvx'  ,  'trang'      ,  'XXL' ,  'nam'   ,  '1'           ,  300000,  'TH4865_522_200.jpg'        ,  'Vải chính: Cotton (65%),  Polyester (35%) / Đường viền cổ áo: Cotton (50%),  Polyester (50%)');

INSERT INTO `customer`
(`Username`, `Name`         , `Address`       				, `Phone`   , `Email`) VALUES             
('admin'   , 'Quản trị viên', '125D Minh Khai'			 	, 334565999 , 'dung.dev.gramer@gmail.com'), 
('user'    , 'Người dùng'   , 'Ngõ Gốc Đề, Minh Khai' , 582242088 , 'hoang.nm4@oude.edu.vn');

INSERT INTO `account`
(`Username`, `Password`, `Type`) VALUES
('admin'   , 'admin'   , 1),
('user'    , 'user'    , 0);
