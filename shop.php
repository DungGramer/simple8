<?php require_once './script/connectDB.php' ?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="styles/css/base.css">
	<link rel="stylesheet" href="styles/css/color.css">
	<link rel="stylesheet" href="styles/css/shop.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
	<?php
	require_once './module/cover.php';
	require_once './module/vndFormat.php';
	$search = $_GET['search'];
	$query = "SELECT * FROM Product WHERE Product_id LIKE '%$search%' OR `Name` LIKE '%$search%' OR `Type` LIKE '%$search%' OR Color LIKE '%$search%' OR `Size` LIKE '%$search%' OR `Gender` LIKE '%$search%' GROUP BY Type";
	$search = $database->printData($query);

	//Nếu chỉ có 1 sản phẩm -> sang trang product 
	if (count($search) == 1) {
		header('Location:./product.php?type=' . $search[0]['Type'] . '&color=' . $search[0]['Color'] . '');
	} else {
		require_once './module/header.php';
	}
	//Màu sắc
	$color = 'SELECT Color FROM Product WHERE Availibility=1';
	$color = $database->printTypeProduct($color, 'Color');
	//Kích cỡ
	$size = 'SELECT Size FROM Product where Availibility=1';
	$size = $database->printTypeProduct($size, 'Size');
	$length = count($search);
	?>
	<!-- END HEADER -->
	<?php
	coverSection('', 'img/files/shop.jpg');
	?>
	<!-- END COVER -->

	<section class="shop">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3">
					<div class="row3 color-wrapper">
						<h3>Màu sắc</h3>
						<?php
						foreach ($color as $value) {
							echo '<a href="?search=' . $value . '">';
							echo '<div class="color color-' . $value . '" ></div>';
							echo '</a>';
						}
						?>
					</div>

					<div class="row3 size-wrapper">
						<h3>Kích cỡ</h3>
						<?php
						foreach ($size as $value) {
							echo '<a href="?search=' . $value . '">';
							echo '<div class="size" >' . $value . '</div>';
							echo '</a>';
						}
						?>
					</div>
				</div>
				<div class="col-lg-9">
					<?php
					for ($i = 0; $i < $length; $i++) : ?>
						<div class="col-sm-6 col-md-4 col-lg-4 col-xs-12 float-left" style="width:100%;">
							<div class="product-wrapper">
								<a href="product.php?type=<?= $search[$i]['Type'] . '&color=' . $search[$i]['Color'] ?>">
									<div class="product-img" style="background-image: url('img/products/<?= $search[$i]['Image'] ?>')"></div>
									<div class="product-content">
										<h4><?= $search[$i]['Name'] ?></h4>
										<span><?= vndFormat($search[$i]['Cost']) ?></span>
									</div>
								</a>
							</div>
						</div>
					<?php endfor ?>
				</div>
				<div class="col-lg-9">
					<nav aria-label="page navigation">
						<ul class="pagination justify-content-center mt-4">
							<li class="page-item disabled">
								<a class="page-link" href="#" tabindex="-1"><i class="far fa-chevron-left"></i></a>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active">
								<a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
							</li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item disabled"><a class="page-link" href="#">...</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item">
								<a class="page-link" href="#"><i class="far fa-chevron-right"></i></a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- END PRODUCT -->

	</section>
	<?php require_once './module/footer.php' ?>
	<!-- END FOOTER -->
</body>

</html>