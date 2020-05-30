<!-- Xoá đơn hàng trong Cart -->
<?php
if (session_status() == PHP_SESSION_NONE) {
	session_start();
}
$key = $_GET['key'];
unset($_SESSION['cart'][''.$key.'']);
require_once './total-update.php';
header('Location: ' . $_SERVER['HTTP_REFERER']);