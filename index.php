<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
		<link rel="stylesheet" href="./styles/css/base.css">
		<link rel="stylesheet" href="./styles/css/index.css">
	
		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<!--Scroll reveal CDN-->
		<script defer src="https://unpkg.com/scrollreveal"></script>
	</head>
	<body>
		<?php require_once('module/header.php'); ?>
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
						<img src="img/files/men.jpg" alt="">
						<h3>Đồ nam</h3>
					</div>

					<div class="col-md-3">
						<img src="img/files/women.jpg" alt="">
						<h3>Đồ nam</h3>
					</div>

					<div class="col-md-3">
						<img src="img/files/shoes.jpg" alt="">
						<h3>Đồ nam</h3>
					</div>
				</div>
			</div>
		</section>
	<!-- Story end -->

	<!-- Carousel end -->
	<section class="choose-3">
		<h2 class="sub-headline">Lựa chọn</h2>
		<h1 class="headline headline-dark">kiểu dáng</h1>
		<div class="container">
			<div class="div3 man" style="background-image: url('./img/files/men.jpg');" onClick="window.location='./product.php?type=sm';"></div>
			<div class="div3 women" style="background-image: url('./img/files/women.jpg');"onClick="window.location='./product.php';"></div>
			<div class="div3 shoes" style="background-image: url('./img/files/shoes.jpg');"onClick="window.location='./product.php';"></div>
		</div>
	</section>
	<!-- Choose 3 end -->
	<?php require_once('module/footer.php'); ?>
	<script src="./script/index.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>