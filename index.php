<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Simple8</title>
	<!-- Font Awesome -->
	<link rel="stylesheet" href="./styles/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="./styles/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="./styles/css/index.css">
</head>
<body>
<?php require_once('./module/header.php'); ?>

	<main>
		<div class="collection">
			<img src="./img/files/collection1.jpg" alt="collection1" class="collection__img collection__img--1">
		</div>

		<div class="product">
			<div class="card">
				<div class="card__header">
						<h1 class="card__header--title">Phụ kiện</h1>
						<a href="" class="card__header--more">Xem tất cả</a>
				</div>
				<div class="card__image">
					<img src="./img/collections/phukien.jpg" alt="phukien" class="card__image--img">
				</div>
			</div>

			<div class="card">
				<div class="card__header">
					<h1 class="card__header--title">Áo thun</h1>
					<a href="" class="card__header--more">Xem tất cả</a>
				</div>
				<div class="card__image">
					<img src="./img/collections/aothun.jpg" alt="phukien" class="card__image--img">
				</div>
			</div>

			<div class="card">
				<div class="card__header">
					<h1 class="card__header--title">Áo khoác</h1>
					<a href="" class="card__header--more">Xem tất cả</a>
				</div>
				<div class="card__image">
					<img src="./img/collections/aokhoac.jpg" alt="phukien" class="card__image--img">
				</div>
			</div>

			<div class="card">
				<div class="card__header">
					<h1 class="card__header--title">Áo sơ mi</h1>
					<a href="" class="card__header--more">Xem tất cả</a>
				</div>
				<div class="card__image">
					<img src="./img/collections/somi.jpg" alt="phukien" class="card__image--img">
				</div>
			</div>

			<div class="card">
				<div class="card__header">
					<h1 class="card__header--title">Áo len</h1>
					<a href="" class="card__header--more">Xem tất cả</a>
				</div>
				<div class="card__image">
					<img src="./img/collections/aolen.jpg" alt="phukien" class="card__image--img">
				</div>
			</div>

			<div class="card">
				<div class="card__header">
					<h1 class="card__header--title">Hoddie</h1>
					<a href="" class="card__header--more">Xem tất cả</a>
				</div>
				<div class="card__image">
					<img src="./img/collections/hoddie.jpg" alt="phukien" class="card__image--img">
				</div>
			</div>
		</div>
		<!-- Áo thun -->
		<div class="tshirt-collection">
				<div class="tshirt tshirt__header">
					<a href="">
						<img src="./img/collections/tshirt-header.jpg" alt="tshirt-header" class="tshirt__header--img">
					</a>
				</div>

				<div class="tshirt tshirt__item">
					<img src="./img/products/tshirt_xanhhaiquan (1).jpg" alt="xanhhaiquan" class="tshirt__item--img">
					<div class="tshirt__content">
					<span class="tshirt__item--header"><br />xanh hải quân</span>
					<span class="tshirt__item--cost"><br />1.600.000 đ</span>
					</div>
				</div>

				<div class="tshirt tshirt__item">
					<img src="./img/products/tshirt_do (1).jpg" alt="xanhhaiquan" class="tshirt__item--img">
					<div class="tshirt__content">
					<span class="tshirt__item--header"><br />T-shirt đỏ</span>
					<span class="tshirt__item--cost"><br />1.600.000 đ</span>
					</div>
				</div>
				
				<div class="tshirt tshirt__item">
					<img src="./img/products/tshirt_den (5).jpg" alt="xanhhaiquan" class="tshirt__item--img">
					<div class="tshirt__content">
					<span class="tshirt__item--header"><br />T-shirt đen</span>
					<span class="tshirt__item--cost"><br />1.600.000 đ</span>
					</div>
				</div>

				<div class="tshirt tshirt__item">
					<img src="./img/products/tshirt_xanhbien (5).jpg" alt="xanhhaiquan" class="tshirt__item--img">
					<div class="tshirt__content">
					<span class="tshirt__item--header"><br />T-shirt xanh biển</span>
					<span class="tshirt__item--cost"><br />1.600.000 đ</span>
					</div>
				</div>
				
				<div class="tshirt tshirt__item">
					<img src="./img/products/tshirt_xam (5).jpg" alt="xanhhaiquan" class="tshirt__item--img">
					<div class="tshirt__content">
					<span class="tshirt__item--header"><br />T-shirt xám</span>
					<span class="tshirt__item--cost"><br />1.600.000 đ</span>
					</div>
				</div>
		</div>
	<?php require_once('./module/footer.php') ?>
	</main>
</body>
</html>