<?php
function coverSection($title = "", $pathIMG) {
	echo '<section class="cover">';
		echo '<img src="'.$pathIMG.'" alt="" class="img-fluid">';
		echo '<div class="container-fluid">';
			echo '<h2 class="text-center">'.ucwords($title).'</h2>';
		echo '</div>';
	echo '</section>';
}