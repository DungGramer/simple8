<?php
	$count = 0;
	$total = 0;

	foreach ($_SESSION['cart'] as $value) {
		$count += intval($value['quantity']);

		$cost = $value['cost'];
		$cost = str_replace("₫","", $value['cost']);
		$cost = str_replace(".","", $cost);
		$total += intval($cost) * intval($value['quantity']);
	}
	if(isset($_SESSION['count']) ||  isset($_SESSION['total'])) {
		$_SESSION['count'] = $count;
		$_SESSION['total'] = $total;
	} else {
		$_SESSION['count'] = 0;
		$_SESSION['total'] = 0;
	}