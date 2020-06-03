<?php
	require_once './script/connectDB.php';
	// Tạo ID random
	function generatorID() {
		return rand(0, 999999);
	}
	$cartID = generatorID();
	$randUser = generatorID();

	$address = $_POST['address'] . ', ' . $_POST['city'];
	$date = date("Y-m-d");

	$productID = [];
	foreach ($_SESSION['cart'] as $key => $value) {
		$productID[$key]['quantity'] = $value['quantity'];
	}


	// Nếu chưa đăng nhập -> Tạo user ảo
	if(isset($_SESSION['isLogin']) && $_SESSION['isLogin'] == 1) {
		$database->insertData('INSERT INTO `Cart` VALUES ("' . $cartID . '", "' . $_SESSION['Username'] . '");');
	} else {
		$name = $_POST['name'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$database->insertData('INSERT INTO `Customer` VALUES ("' . $randUser . '", "' . $name . '", "' . $address . '", "' . $phone . '", "' . $email . '");');
		$database->insertData('INSERT INTO `Cart` VALUES ("' . $cartID . '", "' . $randUser . '");');
	}

	// Thêm sản phẩm vào bảng cart_item
	foreach ($productID as $key => $value) {
		$database->insertData('INSERT INTO `Cart_item` VALUES ("' . $cartID . '", "' . $key . '", "' . $value['quantity'] . '", "' . $date . '"); ');
	}


