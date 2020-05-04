<?php
	//Xuất Table ra JSON
	function SQLtoJSON($table, $nameFile) {
		$connect = new mysqli('localhost', 'root', '', 'simple8');
		$query = 'SELECT * FROM '.$table.'';
		$result = mysqli_query($connect, $query);
		$json_array = [];
		
		//Chuyển SQL sang mảng json_array
		while($row = mysqli_fetch_assoc($result)) {
			$json_array[] = $row;
		}

		//Chuyển mảng thành JSON, có Unicode và format đẹp
		$json = json_encode($json_array,\JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
		mysqli_close($connect);

		//Ghi vào file simple8.json
		$fp = fopen('database/'.$nameFile.'.json', 'w');
		fwrite($fp, $json);
		fclose($fp);
		}

	//Xuất bảng JSON ra cột JSON
	function pathImage($path, $item) {
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
	}
?>