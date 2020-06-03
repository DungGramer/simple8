<!doctype html>
<html lang="en">

<head>
	<title>Title</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
	<?php
		require_once 'admin-header.php';
		require_once '../script/connectDB.php';
	?>

	<div class="main-content">
		<section class="section">
			<div class="row">
				<form action="get-add.php" method="post" enctype="multipart/form-data">
					<table>
						<tr>
							<td>Tên sản phẩm</td>
							<td><input required type="text" name="Name" placeholder="VD: Áo sơ mi"></td>
						</tr>
						<tr>
							<td>Loại sản phẩm</td>
							<td><input required type="text" name="Type" placeholder="VD: sm"></td>
						</tr>
						<tr>
							<td><label for="Gender">Giới tính</label></td>
							<td>
								<select name="Gender" id="Gender">
									<option value="nam">Nam</option>
									<option value="nu">Nữ</option>
									<option value="giay">Giày</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Màu sắc</td>
							<td>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="den" value="den">
									<label class="form-check-label" for="den">Đen</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="trang" value="trang">
									<label class="form-check-label" for="trang">Trắng</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="do" value="do">
									<label class="form-check-label" for="do">Đỏ</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="vang" value="vang">
									<label class="form-check-label" for="vang">Vàng</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="cam" value="cam">
									<label class="form-check-label" for="cam">Cam</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="xanhla" value="xanhla">
									<label class="form-check-label" for="xanhla">Xanh lá</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="xanhduong" value="xanhduong">
									<label class="form-check-label" for="xanhduong">Xanh dương</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="xanhla" value="xanhla">
									<label class="form-check-label" for="xanhla">Tím</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Color[]" id="hong" value="hong">
									<label class="form-check-label" for="hong">Hồng</label>
								</div>
								<div class="form-check form-check-inline">
									<label class="form-check-label" for="other-color" name="Color[]">Khác</label>
									<input class="form-check-input" type="checkbox" id="other-color" name="Color[]" onclick="changetoInput(event)">
								</div>
							</td>
						</tr>
						<tr>
							<td>Kích cỡ</td>
							<td>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Size[]" id="XXL" value="XXL">
									<label class="form-check-label" for="XXL">XXL</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Size[]" id="L" value="L">
									<label class="form-check-label" for="L">L</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Size[]" id="M" value="M">
									<label class="form-check-label" for="M">M</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Size[]" id="S" value="S">
									<label class="form-check-label" for="S">S</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" name="Size[]" id="XL" value="XL">
									<label class="form-check-label" for="XL">XL</label>
								</div>
								<div class="form-check form-check-inline">
									<label class="form-check-label" for="other-size" name="Size[]">Khác</label>
									<input class="form-check-input" type="checkbox" name="Size[]" id="other-size" onclick="changetoInput(event)">
								</div>
							</td>
						</tr>
						<tr>
							<td>Giá sản phẩm</td>
							<td><input required type="number" name="Cost" placeholder="VD: 399000"></td>
						</tr>
						<tr>
							<td>Hình ảnh</td>
							<td><input required type="file" name="Image[]" multiple></td>
						</tr>
						<tr>
							<td>Mô tả</td>
							<td><textarea name="Description" cols="50" rows="10"></textarea></td>
						</tr>
					</table>
					<input type="submit" value="Lưu">
				</form>
			</div>
		</section>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script>
		function changetoInput(event) {
			// if(document.querySelector('#other-color').checked == true) {
			// 	document.querySelector('#other-color').setAttribute('type', 'text'); 
			// }
			if (event.target.checked == true) {
				event.target.setAttribute('type', 'text');
			}
		}
	</script>
</body>

</html>