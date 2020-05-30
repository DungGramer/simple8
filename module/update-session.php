<!-- Cập nhật lại giỏ hàng khi thay đổi giá trị (xoá, thêm số lượng) -->
<?php
	if (session_status() == PHP_SESSION_NONE) {
    session_start();
	}
	echo "<pre>";
	print_r($_SESSION);
	echo "</pre>";

	echo "<pre>";
	print_r($_POST);
	echo "</pre>";

	$length = count($_SESSION['cart']);
	$i = 0;
	foreach ($_SESSION['cart'] as $key=>$value) {
		if($i < $length) {
			$_SESSION['cart'][$key]['quantity'] = $_POST['quantity'][$i];
			$i++;
		}
	}

require_once './total-update.php';
header('Location: ' . $_SERVER['HTTP_REFERER']);