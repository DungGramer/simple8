<?php
	if (session_status() == PHP_SESSION_NONE) {
		session_start();
	}
	require_once './script/connectDB.php';
	$database = new database();

	function generatorID() {
		return rand(0, 999999);
	}
	$cartID = generatorID();

	$address = $_POST['address'] . ', ' . $_POST['city'];
	$date = date("Y-m-d");
	$productID = [];
	$randUser = generatorID();
	foreach ($_SESSION['cart'] as $key=>$value) {
		$productID[$key]['quantity'] = $value['quantity'];
	}

	// Tạo user ảo
	if(empty($_POST['isLogin'])) {
		$name = $_POST['name'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		echo 'INSERT INTO `customer` VALUES ("'.$randUser.'", "'.$name.'", "'.$address.'", "'.$phone.'", "'.$email.'");';
		$database->insertData('INSERT INTO `customer` VALUES ("'.$randUser.'", "'.$name.'", "'.$address.'", "'.$phone.'", "'.$email.'");');
	}

	// Thêm cartID vào bảng cart
	if(empty($_SESSION['Username'])) { //Nếu không có username - chưa đăng nhập -> SD user ảo
		echo 'INSERT INTO `cart` VALUES ("'.$cartID.'", "'.$randUser.'");';
		$database->insertData('INSERT INTO `cart` VALUES ("'.$cartID.'", "'.$randUser.'");');
	} else { //Nếu đăng nhập
		$database->insertData('INSERT INTO `cart` VALUES ("'.$cartID.'", "'.$_SESSION['Username'].'");');
	}

	// Thêm sản phẩm vào cart_item
	foreach ($productID as $key=>$value) {
		echo 'INSERT INTO `cart_item` VALUES ("'.$cartID.'", "'.$key.'", "'.$value['quantity'].'", "'.$date.'"); ';
		$database->insertData('INSERT INTO `cart_item` VALUES ("'.$cartID.'", "'.$key.'", "'.$value['quantity'].'", "'.$date.'"); ');
	}



	echo "<pre>";
	print_r($productID);
	echo "</pre>";

	// echo "<pre>";
	// print_r($_SESSION);
	// echo "</pre>";


	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";
