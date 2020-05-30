<!doctype html>
<html lang="en">

<head>
	<title>Checkout | Simple8</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="styles/css/base.css">
	<link rel="stylesheet" href="styles/css/checkout.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
	<?php
	require_once 'module/header.php';
	require_once 'module/vietnam_provinces.php';
	require_once 'module/vndFormat.php';
	require_once 'module/cover.php';
	?>
	<?php
		coverSection('Thanh toán', 'img/files/shop.jpg');
	?>
	<!-- END COVER -->
	<section class="billing">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12 col-12">
					<form action="checkout-complete.php" method="post">
						<div class="checkbox-form">
							<h3>Thông tin thanh toán</h3>
							<div class="row">
								<div class="col-md-12">
									<div class="country-select">
										<label for="city">Tỉnh/Thành phố <span class="required">*</span></label>
										<select name="city">
											<?php
											foreach ($city as $key => $value) {
												echo '<option value="' . $value . '">' . $value . '</option>';
											}
											?>
										</select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label>Họ tên <span class="required">*</span></label>
										<input type="text" id="name" name="name" placeholder="Nhập họ tên" title="Vui lòng nhập đúng họ tên" pattern="[a-zA-Z]+"  required oninvalid="validate('name')" on>
										<!--  oninvalid="this.setCustomValidity('Witinnovation')" onvalid="this.setCustomValidity('')"-->
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label>Địa chỉ cụ thể <span class="required">*</span></label>
										<input type="text" id="address" name="address" placeholder="Ví dụ: Ngõ 125, đường Minh Khai" pattern="[a-zA-Z0-9]+"  title="Vui lòng nhập đúng địa chỉ" required oninvalid="validate('address')">
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list">
										<label>Số điện thoại <span class="required">*</span></label>
										<input type="text" id="phone" name="phone" placeholder="Nhập số điện thoại" pattern="(\+84|0)\d{9,10}" title="Vui lòng nhập số điện thoại" required oninvalid="validate('phone')">
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list">
										<label>Địa chỉ Email</label>
										<input type="email" id="email" name="email" placeholder="Nhập địa chỉ Email" title="Vui lòng nhập đúng định dạng email" oninvalid="validate('email')">
									</div>
								</div>
							</div>
						</div>
				</div>
				<div class="col-lg-6 col-md-12 col-12">
					<div class="your-order">
						<h3>Đơn hàng của bạn</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-name">Sản phẩm</th>
										<th class="product-total">Thành tiền</th>
									</tr>
								</thead>
								<tbody>
									<?php
									foreach ($_SESSION['cart'] as $value) {
										echo '<tr class="cart_item">';
										echo '<td class="product-name">' . $value['name'] . '<strong class="product-quantity"> × ' . $value['quantity'] . '</strong>';
										echo '<p class="product-type">' . $value['color'] . ' - ' . $value['size'] . '</p>';
										echo '</td>';
										echo '<td class="product-total">';
										echo '<span class="amount">' . vndFormat(vndtoNumber($value['cost']) * $value['quantity']) . '</span>';
										echo '</td>';
										echo '</tr>';
									}
									?>
								</tbody>
								<tfoot>
									<tr class="cart-subtotal">
										<th>Tổng đơn hàng</th>
										<td><span class="amount"><?php echo vndFormat($_SESSION['total']);  ?></span></td>
									</tr>
									<tr class="order-total">
										<th>Thanh toán</th>
										<td><strong><span class="amount" style="color: rgb(238, 35, 71); "><?php echo vndFormat($_SESSION['total']);  ?></span></strong>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
						<div class="order-button-payment">
						<?php
							if(!isset($_SESSION['cart']) || !empty($_SESSION['cart']) || $_SESSION['count'] == 0 || $_SESSION['total'] == 0){
								echo '<input id="submit" type="submit" value="Đặt hàng">';
							}
						?>
							
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END BILLING -->
	<?php
	require_once 'module/footer.php';

	?>
	<script src="script/validateForm.js"></script>
</body>

</html>