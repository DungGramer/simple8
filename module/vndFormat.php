<?php
function vndFormat($priceFloat) {
	$symbol = 'đ';
	$symbol_thousand = '.';
	$decimal_place = 0;
	$price = number_format($priceFloat, $decimal_place, '', $symbol_thousand);
	return $price . $symbol;
}
function vndtoNumber($number) {
	$number = str_replace("₫","", $number);
	$number = str_replace(".","", $number);
	return intval($number);
}