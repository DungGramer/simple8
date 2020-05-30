function updateTotal() {
	var quantitys = document.querySelectorAll('.product-quantity input');
	var costs = document.querySelectorAll('.product-price-cart span');
	var totals = document.querySelectorAll('.product-subtotal');
	for(var i = 0; i < quantitys.length; i++) {
		var quantity = quantitys[i].value;
		var cost = costs[i].innerHTML;
		var total = totals[i].innerText;
		cost = cost.replace('đ', '');
		cost = cost.replace(/\./g,'');
		cost = Number(cost);
		var total = cost * quantity;
		console.log(total);
		total = total.toLocaleString('vi', {style : 'currency', currency : 'VND'});
		totals[i].innerHTML = total;
	}
}