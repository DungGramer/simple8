<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
		<link rel="stylesheet" href="./styles/css/base.css">
		<link rel="stylesheet" href="./styles/css/index.css">
		<script src="script/scrollreveal.js"></script>
	</head>
	<body>
		<!-- Include header -->
		<?php require_once('module/header.php'); ?>
		<!-- Header end -->
		<section class="main" id="main">
			<div class="container">
				<h1 class="headline">Simple8</h1>

				<div class="headline-description">
					<div class="separator">
						<div class="line"></div>
						<div class="asterisk"><i class="fas fa-asterisk"></i></div>
						<div class="line"></div>
					</div>

					<div class="single-animation">
						<h5>Back to Basic</h5>
						<a href="#" class="btn cta-btn">Khám phá</a>
					</div>

				</div>
			</div>
		</section>
		<!-- Main end -->
		<section class="discover-our-story">
		<div class="container">
			<div class="shop-info">
				<div class="shop-description padding-right animate-left">
					<div class="global-headline">
						<h2 class="sub-headline">Phong cách</h2>
						<h1 class="headline headline-dark">Tối giản</h1>
					</div>

					<p>
					 Với những gam màu đơn sắc, các thiết kế là sự tổng hòa của những đường nét cơ bản, không rườm rà, phức tạp, mang đến sự thanh lịch, tinh tế
					</p>
					<a href="#" class="btn body-btn">Tìm hiểu thêm</a>
				</div>
				<div class="shop-info-img animate-right">
					<img src="img/files/tshirt_xanhhaiquan (8).jpg" alt="">
				</div>
			</div>
		</div>
	</section>
	<!-- Story end -->
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
</body>
</html>