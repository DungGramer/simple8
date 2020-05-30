let index = 0;
function moveUp(n) {
	if (index >= 0) {
		index -= 150 * (n - 1);
	} else {
		index += 150;
	}
	let d = document.getElementsByClassName("img-item");
	for (var i = 0; i < d.length; i++ ) {
		//d[i].classList.add('moveDown');
		d[i].style.transform = "translateY(" + index + "px" + ")";
	}
}
function moveDown(n) {
	if (index <= -150 * (n - 1)) {
		index -= index;
	} else {
		index -= 150;
	}
	let d = document.getElementsByClassName("img-item");
	for (var i = 0; i < d.length; i++ ) {
		//d[i].classList.add('moveDown');
		d[i].style.transform = "translateY(" + index + "px" + ")";
	}
}
function change2main(event) {
	path = event.toElement.getAttribute("src");
	// document.querySelector('.product__image-main').setAttribute('src', path); Using for img
	document.querySelector(".product-details-large").style.backgroundImage =
		"url('" + path + "')";
}
// function changeImage(color) {
// 	var arrPath = [];
// 	async function readJSON(path) {
// 		const response = await fetch('path');
// 		const jsonResponse = await response.json();
// 		return jsonResponse;
// 	}
// 	// var str =	fetch('./database/Image-URL.json')
// 	// .then(response => response.json())
// 	// .then(jsonResponse => (jsonResponse));
// 	var str = readJSON('./database/Image-URL.json');
// 	console.log(str);
// 	var pathColor = arrPath.filter(value => value.includes('tshirt_') );
// 	console.log(pathColor);
// }
var addZoom = function (target) {
	// FETCH CONTAINER + IMAGE
	var container = document.querySelector(target),
		imgsrc =
			container.currentStyle || window.getComputedStyle(container, false),
		imgsrc = imgsrc.backgroundImage.slice(4, -1).replace(/"/g, ""),
		img = new Image();

	// LOAD IMAGE + ATTACH ZOOM
	img.src = imgsrc;
	img.onload = function () {
		var imgWidth = img.naturalWidth,
			imgHeight = img.naturalHeight,
			ratio = imgHeight / imgWidth,
			percentage = ratio * 100 + "%";

		// ZOOM ON MOUSE MOVE
		container.onmousemove = function (e) {
			var boxWidth = container.clientWidth,
				xPos = e.pageX - this.offsetLeft,
				yPos = e.pageY - this.offsetTop,
				xPercent = xPos / (boxWidth / 50) + "%",
				yPercent = yPos / ((boxWidth * ratio) / 50) + "%";

			Object.assign(container.style, {
				backgroundPosition: xPercent + " " + yPercent,
				backgroundSize: imgHeight + "px",
			});
		};

		// RESET ON MOUSE LEAVE
		container.onmouseleave = function (e) {
			Object.assign(container.style, {
				backgroundPosition: "center",
				backgroundSize: "cover",
			});
		};
	};
};

window.addEventListener("load", function () {
	addZoom(".product-details-large");
});
