<?php
	require_once '../script/connectDB.php';
	if (empty($_POST['Description'])) {
		$_POST['Description'] = '';
	}
	echo "<pre>";
	print_r($_POST);
	echo "</pre>";
	$file = $_FILES['Image'];
	foreach ($file['name'] as $key => $value) {
		if ($file['name'] !== null) {
			$fileName = $file['tmp_name'][$key];
			$path = '../img/products/'  . $file['name'][$key];
			move_uploaded_file($fileName, $path);
		}
	}
	// Create Product_id
	$length = count($file['name']) -1;
	$i = 0;
	foreach ($_POST['Color'] as $color) {
		foreach($_POST['Size'] as $size) {
			$id = $_POST['Type'] . '-' . $color . $size;
			$query = 'INSERT INTO `Product` values ("'.$id.'", "'.$_POST['Name'].'", "'.$_POST['Type'].'", "'.$color.'", "'.$size.'", "'.$_POST['Gender'].'", "1", "'.$_POST['Cost'].'", "'.$file['name'][$i].'" , "'.$_POST['Description'].'");';
			$database->insertData($query);
			if($i < $length || $i < 0) {
				$i++;
			} else if ($i >= $length) {
				$i--;
			}
		}
	}
?>