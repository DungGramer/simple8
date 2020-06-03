<!doctype html>
<html lang="en">

<head>
	<title>Login | Simple8</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="styles/css/base.css">
	<link rel="stylesheet" href="styles/css/login.css">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
	<?php
		if (session_status() == PHP_SESSION_NONE) {
			session_start();
		}
		if (!isset($_SESSION['isLogin']) == 'undefined')  $_SESSION['isLogin'] = false;

		//Kiểm tra Login
		if ($_SESSION['isLogin'] == true) { 
			//Kiểm tra loại account, nếu là Admin thì tới trang quản trị
			if ($_SESSION['typeAccount'] == 1){
				header('Location:./admin/admin-index.php');
				exit();
			} else {
				header('Location:./index.php');
			};
		} else { 
			require_once './module/header.php';
		};
	?>
	<section class="cover">
		<img src="img/files/shop.jpg" alt="" class="img-fluid">
		<div class="container-fluid">
			<h2 class="text-center">Giỏ hàng</h2>
		</div>
	</section>
	<!-- END COVER -->
	<section class="login">
		<div class="register-area ptb-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
						<div class="login">
							<div class="login-form-container">
								<div class="login-form">
									<form action="./module/processLogin.php" method="post">
										<input type="text" name="username" placeholder="Tên đăng nhập">
										<input type="password" name="password" placeholder="Mật khẩu">
										<div class="button-box">
											<div class="login-toggle-btn">
												<input type="checkbox">
												<label>Nhớ tài khoản</label>
												<a href="#">Quên mật khẩu?</a>
											</div>
											<button type="submit" class="default-btn floatright">Đăng nhập</button>
											<a class="register default-btn floatright" href="register.php">Đăng ký</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<?php require_once './module/footer.php' ?>
</body>

</html>