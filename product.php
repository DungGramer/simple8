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
	session_start();
	require_once('./script/connectDB.php');
	require_once('./module/header.php');
	$database = new database();
	?>
	<section class="product__image">
		<div class="container">
			<div class="product__image-left--slide">
				<button class="btn btn-up" onclick="moveUp(6 - 4)"><i class="fas fa-chevron-up"></i></button>
				<div class="product__image-left--img">
					<ul>
						<?php

						if (!isset($_GET['color'])) {
							$_GET['color'] = 'do';
						}
						$pathIMGColor = 'SELECT Image FROM Product WHERE type="'.$_GET['type'].'" AND Color="'.$_GET['color'].'" ';
						$pathIMGColor = $database->printData($pathIMGColor);
						$pathIMGColor = $database->getOutArr($pathIMGColor, 'Image');

						$color = $_GET['color'];
						$image = "SELECT Image FROM Product";
						$image = $database->printData($image);

						foreach ($pathIMGColor as $value) {
							echo '<li><img class="img-item" src="./img/products/' . $value . '" alt="' . $value . '" onclick="change2main(event)"></li>';
						}
						?>
					</ul>
					<button class="btn btn-down" onclick="moveDown(6 - 4)"><i class="fas fa-chevron-down"></i></button>
				</div>
			</div>
			<div class="product__image-main" style="background-image: url('./img/products/<?php echo $pathIMGColor[0]; ?>');">
			</div>
			<div class="product__info">
				<?php
				//Tên sản phẩm
				$nameProduct = 'SELECT Type FROM Product where type="'.$_GET['type'].'"';
				$nameProduct = $database->printData($nameProduct);
				$nameProduct = $database->covertVI($nameProduct[0]['Type']);
				echo '<h2>'.$nameProduct.'</h2>';

				//Giá sản phẩm
				$cost = 'SELECT Cost FROM Product where type="'.$_GET['type'].'"';
				$cost = $database->printData($cost);
				$cost = $cost[0]['Cost'];
				echo '<p>' . number_format("$cost", 0, '', ',') . ' vnđ</p>';

				//Màu sắc sản phẩm
				$color = 'SELECT Color FROM Product WHERE Availibility=1 AND type="'.$_GET['type'].'"';
				$color = $database->printTypeProduct($color, 'Color');
				echo '<h5>MÀU SẮC:</h5>';
				echo '<div class="product__color">';
				foreach ($color as $value) {
					echo '<div class="color color-' . $value . '" onClick="window.location=\'?type='.$_GET['type'].'&color='.$value.'\';"></div>';
				}
				echo '</div>';

				//Size sản phẩm
				$size = 'SELECT Size FROM Product where Availibility=1 AND type="'.$_GET['type'].'"';
				$size = $database->printTypeProduct($size, 'Size');	
				echo '<h5>KÍCH CỠ:</h5>';
				echo '<div class="product__size">';
				echo '<form class="size" action="./cart.php">';
				//Gửi type
				echo '<input type="radio" name="type" id="' . $_GET['type'] . '" checked value="'.$_GET['type'].'">';
				//Gửi màu
				echo '<input type="radio" name="color" id="' . $_GET['color'] . '" checked value="'.$_GET['color'].'">';
				//Chọn size
				foreach ($size as $value) {
					echo '<input type="radio" id="' . $value . '" name="size" value="' . $value . '">';
					echo '<label for="' . $value . '">' . $value . '</label>';
				}
				echo '</div>';

				//Mô tả sản phẩm
				$description = 'SELECT Description FROM Product where type="'.$_GET['type'].'"';
				$description = $database->printTypeProduct($description, 'Description');
				echo '<h5>MÔ TẢ:</h5>';
				echo '<p class="description">' . $description[0] . '</p>';
				?>
				<input type="submit">
				</form>
			</div>
		</div>
	</section>

	<script src="./script/script.js"></script>
	<?php require_once('./module/footer.php'); ?>
</body>

</html>