<!DOCTYPE html>
<html lang="en">

<head>
	<title>Simple8 - The Future of Basic</title>
	<?php require_once 'module/header-meta.php' ?>
	<link rel="stylesheet" href="styles/css/index.css">

</head>

<body>
	<?php require_once 'module/header.php' ?>
	<!-- Header end -->
	<section class="main" id="main">
		<div id="carousel" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">

				<div class="carousel-item active">
					<img class="d-block img-fluid " src="img/files/StrateWindow-Bis-Desk.webp" alt="">
					<div class="carousel-caption-men carousel-caption d-none d-sm-block">
						<h5 class="carousel__title--men text-dark">Đồ nam</h5>
						<button type="button" class="carousel__button btn btn-dark">Khám phá</button>
					</div>
				</div>

				<div class="carousel-item">
					<img class="d-block img-fluid " src="img/files/2.jpg" alt="">
					<div class="carousel-caption d-none d-sm-block">
						<h5>Đồ nam</h5>
						<small>
							Khám phá
						</small>
					</div>
				</div>

				<div class="carousel-item">
					<img class="d-block img-fluid " src="img/files/3.jpg" alt="">
					<div class="carousel-caption d-none d-sm-block">
						<h5>Đồ nam</h5>
						<small>
							Khám phá
						</small>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Main end -->
	<section class="top-product">
		<div class="container-fluid">
			<div class="row d-flex justify-content-around align-items-center">
				<div class="col-md-3">
					<img src="img/files/men.jpg" alt="" onClick="window.location='shop.php?search=nam';">
					<h3>Đồ nam</h3>
				</div>

				<div class="col-md-3">
					<img src="img/files/women.jpg" alt="" onClick="window.location='shop.php?search=nu';">
					<h3>Đồ nữ</h3>
				</div>

				<div class="col-md-3">
					<img src="img/files/shoes.jpg" alt="" onClick="window.location='shop.php?search=giay';">
					<h3>Giày</h3>
				</div>
			</div>
		</div>
	</section>
	<!-- Carousel end -->
	<?php require_once 'module/footer.php' ?>
</body>

</html>