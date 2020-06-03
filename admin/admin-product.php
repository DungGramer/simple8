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

			$gender = 'SELECT * FROM Product WHERE Gender="'.$_GET['product'].'"';
			$gender = $database->printData($gender, 'Gender');
		?>
		<div class="main-content">
		<section class="section">
			<div class="row">
			<div class="table table-bordered">
				<table class="table table-sm">
					<thead>
						<tr>
							<?php
								foreach($gender[0] as $key=>$value) {
									echo '<th scope="col">'.$key.'</th>';
								}
							?>
						</tr>
					</thead>
					<tbody>
						<?php
							foreach($gender as $value) {
								echo '<tr>';
									echo '<th scrope="row">'.$value['Product_id'].'</th>';
									echo '<td>'.$value['Name'].'</td>';
									echo '<td>'.$value['Type'].'</td>';
									echo '<td>'.$value['Color'].'</td>';
									echo '<td>'.$value['Size'].'</td>';
									echo '<td>'.$value['Gender'].'</td>';
									echo '<td>'.$value['Availibility'].'</td>';
									echo '<td>'.$value['Cost'].'</td>';
									echo '<td>'.$value['Image'].'</td>';
									echo '<td>'.$value['Description'].'</td>';
								echo '</tr>';
							}
						?>
					</tbody>
				</table>
			</div>
			<div class="button">
				<a href="admin-add.php">
					<button type="button" class="btn btn-success">Thêm mới</button>
				</a>
					<button type="button" class="btn btn-warning">Sửa</button>
					<button type="button" class="btn btn-danger">Xoá</button>
				</div>
			</div>

			</section>
		</div>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>