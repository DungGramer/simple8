<?php
	session_start();
	echo "<pre>";
	print_r($_GET);
	echo "</pre>";

	if (isset($_GET)) {
		require_once "./script/connectDB.php";
		$database = new database();
		$product = 'SELECT * FROM Product WHERE type="'.$_GET['type'].'" AND Color="'.$_GET['color'].'" AND Size="'.$_GET['size'].'" ';
		$product = $database->printData($product);
		
		$id = $product[0]['Product_id'];

		$color = $product[0]['Color'];
		$color = $database->covertVI($color);

		$type = $product[0]['Type'];
		$type = $database->covertVI($type);

		$size = $product[0]['Size'];

		$cost = $product[0]['Cost'];
		$cost = number_format($cost) . ' vnđ';

		$image = $product[0]['Image'];

/* 		if(array_key_exists($id ,$_SESSION['cart'][$id])) {
			$_SESSION["cart"][$id] = [
				"quantity"=>(int)$_SESSION["cart"][$id]['quantity'] + 1,
				"cost"=>$cost,
				"type"=>$type
			];
		} else {
			$_SESSION["cart"][$id] = [
				"quantity"=>"1",
				"cost"=>$cost,
				"type"=>$type
			];
		} */

		if(!isset($_SESSION['cart'])) {
			$cart = [];
			$cart[$id] = [
				"quantity"=>"1",
				"cost"=>$cost,
				"type"=>$type
			];
		} else {
			$cart = $_SESSION['cart'];
			if(array_key_exists($id, $cart)) {
				$cart[$id] = [
					"quantity"=>(int)$cart[$id]['quantity'] + 1,
					"cost"=>$cost,
					"type"=>$type
				];
			} else {
				$cart[$id] = [
					"quantity"=>"1",
					"cost"=>$cost,
					"type"=>$type
				];
			}
		}
		$_SESSION['cart'] = $cart;
	} else {
		//Quay về home
	}

	
	echo "<pre>";
	print_r($_SESSION['cart']);
	echo "</pre>";
