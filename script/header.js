/* // Show menu when click menu icon
const selectElement = function (element) {
	return document.querySelector(element);
};

let menuToggler = selectElement('.menu-toggle');
let body = selectElement('body');

menuToggler.addEventListener('click', function () {
	body.classList.toggle('open');
});
// Hide when scroll
var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
  var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.querySelector('header').style.top = "0";
  } else {
    document.querySelector('header').style.top = "-100%";
  }
  prevScrollpos = currentScrollPos;
} */
// Remove cart
/* var removeCartItemButton = document.querySelectorAll('.cart-delete');

for (var i in removeCartItemButton) {
	var button = removeCartItemButton[i];
	button.addEventListener('click', function() {
		var buttonClicked = event.target;
		buttonClicked.parentElement.parentElement.parentElement.remove();
		sessionStorage.removeItem(i);
		updateCartTotal();
	});
}

function updateCartTotal() {
	var cartItemContainer = document.querySelector('.cart-dropdown');
	var cartRows =  cartItemContainer.querySelectorAll('.product-cart');
	var total = 0;
	for(var cartRow of cartRows) {
		var priceElement = cartRow.childNodes[3].childNodes[5].textContent;
		priceElement = priceElement.replace('đ', '');
		priceElement = priceElement.replace(',', '');
		priceElement = Number(priceElement);
		var quantityElenent = cartRow.childNodes[3].childNodes[9].textContent;
		quantityElenent = Number(quantityElenent);
		total = total + (priceElement * quantityElenent);
		total = total.toLocaleString('vi', {style : 'currency', currency : 'VND'});
	}
	document.querySelector('.cart-price h4').textContent = total;
}
*/
// Add class when click icon search
var btnDelete = document.getElementById("clear");
var inputFocus = document.getElementById("inputFocus");
btnDelete.addEventListener("click", function (e) {
	e.preventDefault();
	inputFocus.value = "";
});
document.addEventListener("click", function (e) {
	if (document.getElementById("first").contains(e.target)) {
		inputFocus.classList.add("isFocus");
	} else {
		// Clicked outside the box
		inputFocus.classList.remove("isFocus");
	}
});
// When enter
$("#inputFocus").keypress(function (e) {
	if (e.which == 10 || e.which == 13) {
		this.form.submit();
	}
	$("#inputFocus").find("input[type=submit]").hide();
});
