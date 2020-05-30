<?php
if (session_status() == PHP_SESSION_NONE) {
	session_start();
}
	require_once '../script/connectDB.php';
	$database = new database();

	if ($_GET['register'] = true) {
		// Nếu đăng ký
		$user = $_POST['username'];
		$pass = $_POST['password'];
		if (!empty($_POST['email'])) {
			$email = $_POST['email'];
		}

		$dataUser = $database->printTypeProduct('SELECT Username FROM Account', 'Username');
		if (in_array($user, $dataUser)) {
			//Trùng username
			header('Location: ' . $_SERVER['HTTP_REFERER']);
		} else {
			//Đăng ký thành công
			$database->insertData('INSERT INTO `Account` VALUES ("' . $user . '", "' . $pass . '", 0);');
			$database->insertData('INSERT INTO `Customer`(Username, Email) VALUES ("' . $user . '","' . $email . '") ;');
			header('Location:./index.php');
		}
	}
	// Đăng nhập
	$data = $database->printData('SELECT * FROM Account WHERE Username = "' . $_POST['username'] . '" AND Password = "' . $_POST['password'] . '"');
	$name = $database->printData('SELECT Name FROM Customer WHERE Username = "' . $_POST['username'] . '"');

	if (empty($data)) {
		// Nếu đăng nhập thất bại
		header('Location: ' . $_SERVER['HTTP_REFERER']);
	} else {
		// Nếu đăng nhập thành công
		$_SESSION['isLogin'] = true;
		$_SESSION['Username'] = $data[0]['Username'];
		$_SESSION['name'] = $name[0]['Name'];
		$_SESSION['typeAccount'] = $data[0]['Type'];
	};
