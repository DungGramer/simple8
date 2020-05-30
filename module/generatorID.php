<?php
	function generatorID() {
		$rand = rand();
		return substr(str_shuffle($rand), 0, 5);	
	}