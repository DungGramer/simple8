<!doctype html>
<html lang="en">

<head>
	<title>Title</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="styles/css/base.css">
	<link rel="stylesheet" href="styles/css/register.css">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
	<?php
		if (session_status() == PHP_SESSION_NONE) {
			session_start();
		}
		require_once './module/header.php';
	?>
	<section class="cover">
		<img src="img/files/shop.jpg" alt="" class="img-fluid">
		<div class="container-fluid">
			<h2 class="text-center">Giỏ hàng</h2>
		</div>
	</section>
	<!-- END COVER -->
	<section class="register">
		<div class="register-area ptb-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-12 col-lg-12 col-xl-6 ml-auto mr-auto">
						<div class="login">
							<div class="login-form-container">
								<div class="login-form">
									<form action="./module/processLogin.php?register=true" method="post">
										<input type="text" name="username" placeholder="Tên đăng nhập">
										<input type="password" name="password" placeholder="Mật khẩu">
										<input name="email" placeholder="Email" type="email">
										<!-- <imput name="register" type="radio" checked value="true" id="register"> -->
										<div class="button-box">
											<button type="submit" class="default-btn floatright">Đăng ký</button>
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