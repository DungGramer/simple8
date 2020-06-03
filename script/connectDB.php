<?php
	if (session_status() == PHP_SESSION_NONE) {
		session_start();
	}
	class database {
		private $user = "root";
		private $password = "";
		private $host = "localhost";
		private $database = "simple8";

		//Kết nối Database
		function connection() {
			$connect= new mysqli($this->host, $this->user, $this->password, $this->database);
			if($connect->connect_error){
				die("connection is error");
			} return $connect;
		}

		function printData($query){
			$connect = $this->connection();
			$result = mysqli_query($connect, $query);
			$arr = [];
			//Chuyển SQL sang mảng
			while($row = mysqli_fetch_assoc($result)) {
				$arr[] = $row;
			}
			return $arr;
		}

		function getOutArr($arr, $index) {
			$newArr = [];
			foreach($arr as $key=>$value) {
				$newArr[] = $arr[$key][$index];
			}
			return $newArr;
		}

		function printTypeProduct($query, $arr) {
			$query = $this->printData($query);
			$query = $this->getOutArr($query, $arr);
			$query = array_unique($query);
			return $query;
		}

		function insertData($query) {
			$connect = $this->connection();
			return mysqli_query($connect, $query);
		}

		function vndFormat($priceFloat) {
			$symbol = 'đ';
			$symbol_thousand = '.';
			$decimal_place = 0;
			$price = number_format($priceFloat, $decimal_place, '', $symbol_thousand);
			return $price.$symbol;
		}

		//Xuất Table SQL ra JSON
		// function SQLtoJSON($query, $nameFile) {
		// 	$connect = $this->connection();
		// 	$json_array = $this->printData($query);

		// 	//Chuyển mảng thành JSON, có Unicode và format đẹp
		// 	$json = json_encode($json_array,\JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
		// 	mysqli_close($connect);

		// 	//Ghi vào file simple8.json
		// 	$fp = fopen('database/'.$nameFile.'.json', 'w');
		// 	fwrite($fp, $json);
		// 	fclose($fp);
		// }

		/*Xuất table JSON ra cột JSON
		function tableToColumn($path, $item) {
		$string = file_get_contents($path);
		$jsond = json_decode($string, true);
		$arrImage = [];
		foreach($jsond as $key=>$value) {
			$arrImage[] = $jsond[$key][$item];
		}
		$json = json_encode($arrImage,\JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
		$fp = fopen('database/'.$item.'-URL.json', 'w');
		fwrite($fp, $json);
		fclose($fp);
		}*/

	}
	$covertVI = [
		// Màu sắc
		'hong' => 'Hồng',
		'trang' => 'Trắng',
		'xam' => 'Xám',
		'xanhduong' => 'Xanh dương',
		'vang' => 'Vàng',
		'do' => 'Đỏ',
		'xanhla' => 'Xanh lá',
		'den' => 'Đen',
		'xanhbien' => 'Xanh biển',
		'xanhhaiquan' => 'Xanh hải quân',
		// Phân loại
		'nam' => 'Đồ Nam',
		'nu' => 'Đồ Nữ',
		'giay' => 'Giày'
	];
	$database = new database();
