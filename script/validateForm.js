function validate(input) {
	switch (input) {
		case 'name':
			var key = document.querySelector('#name');
			if (key.value === '' || key.validity.patternMismatch) {
				key.setCustomValidity("Vui lòng nhập đúng họ tên");
			} else {
				key.setCustomValidity('');
			}
			break;
		case 'address':
			var key2 = document.querySelector('#address');
			if (key2.value === '' || key2.validity.patternMismatch) {
				key2.setCustomValidity("Vui lòng nhập đúng địa chỉ");
			} else {
				key2.setCustomValidity('');
			}
			break;
		case 'phone':
			var key = document.querySelector('#phone');
			if (key.value === '' || key.validity.patternMismatch) {
				key.setCustomValidity("Vui lòng nhập số điện thoại");
			} else {
				key.setCustomValidity('');
			}
			break;
		case 'email':
			var key = document.querySelector('#email');
			if (key.value === '' || key.validity.typeMismatch) {
				key.setCustomValidity('Vui lòng nhập đúng định dạng email');
			} else {
				key.setCustomValidity('');
			}
			break;
		default:
			break;
	}
	return true;
}