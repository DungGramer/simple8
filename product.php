<!DOCTYPE html>
<html lang="en">

<head>
	<title>Product | Simple8</title>
	<?php require_once './module/header-meta.php' ?>
	<link rel="stylesheet" href="styles/css/base.css">
	<link rel="stylesheet" href="styles/css/color.css">
	<link rel="stylesheet" href="styles/css/product.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
</head>

<body>
	<?php
	require_once './script/connectDB.php';
	require_once './module/header.php';
	require_once './module/vndFormat.php';

	// if (!isset($_GET['color'])) $_GET['color'] = 'do';
	$pathIMGColor = 'SELECT Image FROM Product WHERE type="' . $_GET['type'] . '" AND Color="' . $_GET['color'] . '" ';
	$pathIMGColor = $database->printTypeProduct($pathIMGColor, 'Image');

	$color = $_GET['color'];
	$image = "SELECT Image FROM Product";
	$image = $database->printData($image);
	$length = count($pathIMGColor);


	//Tên sản phẩm
	$nameProduct = 'SELECT Name FROM Product where type="' . $_GET['type'] . '"';
	$nameProduct = $database->printData($nameProduct);
	$nameProduct = $nameProduct[0]['Name'];
	//Giá sản phẩm
	$cost = 'SELECT Cost FROM Product where type="' . $_GET['type'] . '"';
	$cost = $database->printData($cost);
	$cost = $cost[0]['Cost'];

	//Màu sắc sản phẩm
	$color = 'SELECT Color FROM Product WHERE Availibility=1 AND type="' . $_GET['type'] . '"';
	$color = $database->printTypeProduct($color, 'Color');

	//Size sản phẩm
	$size = 'SELECT Size FROM Product where Availibility=1 AND type="' . $_GET['type'] . '"';
	$size = $database->printTypeProduct($size, 'Size');

	//Mô tả sản phẩm
	$description = 'SELECT Description FROM Product where type="' . $_GET['type'] . '"';
	$description = $database->printTypeProduct($description, 'Description');
	?>

	<section class="product">
		<div class="product-details ptb-100 pb-90">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-7 col-12">
						<div class="product-details-img-content">
							<div class="product-details-tab mr-35 product-details-tab2">
								<div class="product-details-small nav mr-10 product-details-2" role="tablist">
									<button class="btn-up" onclick="moveUp(<?= $length ?> - 3)"><i class="fas fa-chevron-up"></i></button>
									<?php
									foreach ($pathIMGColor as $value) {
										echo '<li><img class="img-item " src="./img/products/' . $value . '" alt="' . $value . '" onclick="change2main(event)"></li>';
									}
									?>
									<button class="btn-down" onclick="moveDown(<?= $length ?> - 3)" style="transform: translateY(<?= (($length - 1) * 150) - 30 ?>px);"><i class="fas fa-chevron-down"></i></button>
								</div>
								<div class="product-details-large tab-content" style="background-image: url('img/products/<?= $pathIMGColor[0]; ?>');">
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-lg-5 col-12">
						<div class="product-details-content">
							<h3><?= $nameProduct ?></h3>

							<div class="details-price">
								<span><?= vndFormat($cost) ?></span>
							</div>
							<div class="quick-view-select">
								<div class="select-option-part">
									<h5>Màu sắc</h5>
									<div class="product__color">
										<?php
										foreach ($color as $value) {
											echo '<div class="color color-' . $value . '" onClick="window.location=\'?type=' . $_GET['type'] . '&color=' . $value . '\';"></div>';
										}
										?>
									</div>
								</div>
								<div class="select-option-part">
									<h5>Kích cỡ</h5>
									<div class="product__size">
										<form class="size" action="module/addcart.php">
											<?php
												//Gửi type
												echo '<input type="radio" name="type" id="' . $_GET['type'] . '" checked value="' . $_GET['type'] . '">';
												//Gửi màu
												echo '<input type="radio" name="color" id="' . $_GET['color'] . '" checked value="' . $_GET['color'] . '">';
												//Chọn size
												foreach ($size as $value) {
													echo '<input required type="radio" id="' . $value . '" name="size" value="' . $value . '">';
													echo '<label for="' . $value . '">' . $value . '</label>';
												}
											?>
									</div>
								</div>
								<p class="description"><?= $description[0] ?></p>
								<input type="submit" value="Thêm vào giỏ hàng">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<section class="size-clothes">
		<div class="container justify-content-center">
			<h2 class="mb-4">Kích cỡ tiêu chuẩn</h2>

			<table class="table table-bordered text-center">
				<thead class="thead-dark">
					<tr>
						<th scope="col">VN</th>
						<th scope="col">Quốc Tế</th>
						<th scope="col">EU</th>
						<th scope="col">UK</th>
						<th scope="col">US</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">S</th>
						<td>XS</td>
						<td>46</td>
						<td>36</td>
						<td>36</td>
					</tr>
					<tr>
						<th scope="row">M</th>
						<td>S</td>
						<td>48</td>
						<td>38</td>
						<td>38</td>
					</tr>
					<tr>
						<th scope="row">L</th>
						<td>M</td>
						<td>50</td>
						<td>40</td>
						<td>40</td>
					</tr>
					<tr>
						<th scope="row">XL</th>
						<td>L</td>
						<td>52</td>
						<td>42</td>
						<td>42</td>
					</tr>
					<tr>
						<th scope="row">XXL</th>
						<td>M</td>
						<td>54</td>
						<td>44</td>
						<td>44</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
	<?php require_once './module/footer.php' ?>
	<script src="./script/script.js"></script>
</body>

</html>