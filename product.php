<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
	<link rel="stylesheet" href="./styles/css/base.css">
	<link rel="stylesheet" href="./styles/css/product.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
	<script src="./script/all.min.js"></script>
</head>
<body>
	<?php 
		require_once('./script/connectDB.php');
		require_once('./module/header.php');
		$database = new database();
		//Lấy cột ảnh ra file JSON
		$arrImage = $database->SQLtoJSON('SELECT Image FROM Product', 'image-URL');
	?>
	<section class="product__image">
		<div class="container">
			<div class="product__image-left--slide">
				<button class="btn btn-up" onclick="moveUp(6 - 4)"><i class="fas fa-chevron-up"></i></button>
				<div class="product__image-left--img">
					<ul>
						<?php
							$image = "SELECT Image FROM Product";
							$image = $database->printData($image);
							if(!isset($_GET['color'])) {
								$_GET['color'] = 'do';
							}
							$pathColor = []; 
							$color = $_GET['color'];
							
							//Lấy tên file theo màu
							foreach($image as $key=>$value) {
								if(preg_match("/\B_$color/i", $image[$key]['Image'])) {
									$pathColor[] = $image[$key]['Image'];
								}
							}
							//Lọc tên file trùng lặp
							$pathColor = array_unique($pathColor);
							foreach($pathColor as $value) {
								echo '<li><img class="img-item" src="./img/products/'.$value.'" alt="'.$value.'" onclick="change2main(event)"></li>';
							}
						?>
					</ul>
					<button class="btn btn-down" onclick="moveDown(6 - 4)"><i class="fas fa-chevron-down"></i></button>
				</div>
		</div>
		<div class="product__image-main" style="background-image: url('./img/products/<?php echo $pathColor[0]; ?>');">
		</div>
			<div class="product__info">
				<?php 
					$product = 'SELECT Type FROM Product where Product_id LIKE "sm-%"';
					$product = $database->printData($product);
					$cost = 'SELECT Cost FROM Product where Product_id LIKE "sm-%"';
					$cost = $database->printData($cost);

					$color = 'SELECT Image FROM Product where Product_id LIKE "sm-%"';	
					$color = $database->printData($color);
					$color = $database->getOutArr($color, 'Image');
					$newColor = [];
					foreach($color as $key=>$value) {
						preg_match("/(?<=_)+\w+/", $color[$key], $newColor[]);
					}
					$newColor = $database->getOutArr($newColor, 0);
					$newColor = array_unique($newColor);
					
					$size = 'SELECT Size FROM Product where Product_id LIKE "sm-%"';	
					$size = $database->printData($size);
					$size = $database->getOutArr($size, 'Size');
					$size = array_unique($size);
					

					echo '<h2> '.$product[0]['Type'].'</h2>';
					echo '<p>'.$cost[0]['Cost'].' vnđ</p>';
					echo '<h5>MÀU SẮC:</h5>';
					echo '<div class="product__color">';					
						foreach($newColor as $value) {
							echo '<div class="color color-'.$value.'" onClick="window.location=\'?color='.$value.'\';"></div>';
						}
					echo '</div>';
					echo '<h5>KÍCH CỠ:</h5>';
					echo '<div class="product__size">';
					foreach($size as $value) {
						echo '<div class="size" onClick="window.location=\'?size='.$value.'\';">'.$value.'</div>';
					}
					echo '</div>';
					echo '<h5>SỐ LƯỢNG:</h5>';
					
				?>
				<div class="box-qty">
					<input type="text" pattern="\d*(\.\d+)?" name="qty" id="qty" maxlength="12" value="1" title="Số lượng" class="input-text qty" minlength="0">
					<div class="control-qty">
							<a href="#" class="btn-number" data-field="qty" data-type="plus"><i class="fas fa-chevron-up"></i></a>
							<a href="#" class="btn-number" data-field="qty" data-type="minus"><i class="fas fa-chevron-down"></i></a>
							
					</div>
				</div>
				<?php 
					$description = 'SELECT Description FROM Product where Product_id LIKE "sm-%"';
					$description = $database->printData($description);
					$description = $database->getOutArr($description, 'Description');
					$description = array_unique($description);

					echo '<h5>MÔ TẢ:</h5>';
					echo '<p class="description">'.$description[0].'</p>'
				?>
				<a class="addCart">
					Thêm vào giỏ
				</a>
			<!-- <form action="" method="get">
				<input id="color-den" type="submit" name="color" onclick="changeImage('den')" value="den"></input>
				<input id="color-do" type="submit" name="color" onclick="changeImage('do')" value="do"></input>
			</form> -->
			
			</div>
		</div>
		

		
	</section>

	<script src="./script/script.js"></script>
	<?php require_once('./module/footer.php'); ?>
</body>
</html>