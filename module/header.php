<?php
	if (session_status() == PHP_SESSION_NONE) {
		session_start();
	}
?>
<link rel="stylesheet" href="styles/css/header.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Megrim&display=swap" rel="stylesheet">
<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="header__logo d-flex justify-content-between">
			<a class="navbar-brand" href="index.php">
				<img src="img/files/logo-black.svg" width="100" hieght="30" alt="logo">
			</a>
			<button class="header__button navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="header__content collapse navbar-collapse justify-content-between" id="navbarNav">
			<div class="content">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="header__nav-link nav-link" href="shop.php?search=nam">Đồ Nam</a>
						<!-- <span class="sr-only">(current)</span> -->
					</li>
					<li class="nav-item">
						<a class="header__nav-link nav-link" href="shop.php?search=nu">Đồ Nữ</a>
					</li>
					<li class="nav-item">
						<a class="header__nav-link nav-link" href="shop.php?search=giay">Giày</a>
					</li>
			</div>
			<div class="searchbar">
				<form action="module/search.php" method="post">
					<div class="input-field first" id="first">
						<input name="search" class="input" id="inputFocus" type="text" placeholder="Tìm kiếm" />
						<button class="clear" id="clear">
							<i class="fal fa-times"></i>
						</button>
					</div>
				</form>

			</div>
			<!-- END SEARCHBAR -->
			<div class="login" style="float: right;">
				<?php
				if (empty($_SESSION['isLogin'])) {
					echo '<a href="login.php">Đăng nhập / Đăng ký</a>';
				} else {
					echo '<a href="login.php">Xin chào, ' . $_SESSION['name'] . '</a>';
					echo '<a href="logout.php"> Đăng xuất</a>';
				}
				?>
			</div>
			<!-- END LOGIN -->
			<div class="cart">
				<a href="cart.php" class="icon-cart">
					<i class="header__nav-link fal fa-shopping-cart"></i>
					<span class="cart__quantity">
						<?php
						//Set mặc định giỏ hàng = 0 nếu không có sản phẩm
						if (!isset($_SESSION['count'])) {
							$_SESSION['count'] = 0;
						}
						echo $_SESSION['count'];
						?>
					</span>
				</a>
				<ul class="cart-dropdown">
					<?php
					require_once 'vndFormat.php';
					if (empty($_SESSION['total'])) {
						$_SESSION['total'] = 0;
					}
					if (isset($_SESSION['cart'])) {
						foreach ($_SESSION['cart'] as $key => $value) : ?>
							<li class="product-cart">
								<div class="cart-img">
									<a href="#">
										<div class="img" style="background-image: url('img/products/<?= $value['image'] ?>');"></div>
									</a>
								</div>
								<div class="cart-title">
									<h5><a href="shop.php?search='.$key.'"><?= $value['name'] ?></a></h5>
									<h6><?= $value['color'] . ' - ' . $value['size'] ?></h6>
									<span class="price"><?= $value['cost'] ?></span>
									<span> x </span>
									<span class="quantity"><?= $value['quantity'] ?></span>
								</div>
							</li>
					<?php endforeach;
					}
					?>

					<li class="cart-sub-price">
						<div class="cart-sub">
							<h4>Tổng tiền:</h4>
						</div>
						<div class="cart-price">
							<h4><?= vndFormat($_SESSION['total']) ?></h4>
						</div>
					</li>
					<li class="cart-btn-wrapper">
						<a href="cart.php" class="cart-btn">Xem giỏ hàng</a>
						<?php
						if (isset($_SESSION['cart']) || empty($_SESSION['cart'])) {
							echo '<a href="checkout.php" class="cart-btn">Thanh toán</a>';
						}
						?>
					</li>
				</ul>
			</div>
			<!-- END CART -->
			</ul>
		</div>
	</nav>
</header>
<script defer src="script/all.min.js"></script>
<script defer src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script defer src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script defer src="script/header.js"></script>