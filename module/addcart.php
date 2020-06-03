<?php
	if (isset($_GET)) {
		require_once "../script/connectDB.php";
		$product = 'SELECT * FROM Product WHERE type="'.$_GET['type'].'" AND Color="'.$_GET['color'].'" AND Size="'.$_GET['size'].'" ';
		$product = $database->printData($product);

		$id = $product[0]['Product_id'];

		$color = $product[0]['Color'];
		$color = $covertVI[$color];

		$name = $product[0]['Name'];

		$size = $product[0]['Size'];

		$cost = $product[0]['Cost'];
		$cost = $database->vndFormat($cost);

		$image = $product[0]['Image'];

		if(!isset($_SESSION['cart'])) {
			$cart = [];
			$cart[$id] = [
				"name"=>$name,
				"color"=>$color,
				"size"=>$size,
				"cost"=>$cost,
				"quantity"=>"1",
				"image"=>$image
			];
		} else {
			$cart = $_SESSION['cart'];
			if(array_key_exists($id, $cart)) {
				$cart[$id] = [
					"name"=>$name,
					"color"=>$color,
					"size"=>$size,
					"cost"=>$cost,
					"quantity"=>(int)$cart[$id]['quantity'] + 1,
					"image"=>$image
				];
			} else {
				$cart[$id] = [
					"name"=>$name,
					"color"=>$color,
					"size"=>$size,
					"cost"=>$cost,
					"quantity"=>"1",
					"image"=>$image
				];
			}
		}
		$_SESSION['cart'] = $cart;
	} else {
		//Quay về home
		header('Location: ' . $_SERVER['HTTP_REFERER']);
	}
	// Update lại tổng tiền, số lượng
	require_once './total-update.php';
	// Quay về cart
	header('Location:../cart.php');