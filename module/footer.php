<link rel="stylesheet" href="./styles/css/footer.css">
<footer class="footer-area">
	<div class="footer-top-area bg-img pt-105 pb-65">
		<div class="container">
			<div class="row">
				<div class="m-auto">
					<div class="footer-widget mb-40">
						<h3 class="footer-widget-title">Về chúng tôi</h3>
						<p>Website đang trong giai đoạn thử nghiệm và sửa lỗi. Cảm ơn vì đã ghé thăm ^^</p>

					</div>
					<div id="mc_embed_signup" class="subscribe d-flex justify-content-around">
						<form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
							<div id="subscribe" class="mc-form">
								<input type="email" value="" name="EMAIL" class="email" placeholder="Nhập email" required>
								<div class="clear">
									<input type="submit" value="Đăng ký nhận tin" name="subscribe" id="mc-embedded-subscribe" class="button">
								</div>
							</div>
						</form>
						<div class="footer-contact">
							<p><span><i class="ti-location-pin"></i></span> Kết nối với chúng tôi </p>
							<p><span><i class=" ti-headphone-alt "></i></span> <a href="tel:+">0334565999</a> hoặc <a href="mailto:">dung.dev.gramer@gmail.com</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bottom black-bg ptb-20">
		<div class="container">
			<div class="row">
				<div class="col-12 text-center">
					<div class="copyright">
						<p>
							Copyright ©
							<a href="https://www.facebook.com/dung.dev.gramer">DungGramer</a> 2020
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>
	window.fbAsyncInit = function() {
		FB.init({
			xfbml: true,
			version: 'v7.0'
		});
	};

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s);
		js.id = id;
		js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>

<!-- Your Chat Plugin code -->
<div class="fb-customerchat" attribution=setup_tool page_id="100342778379444" theme_color="#22C1FD" logged_in_greeting="Xin chào, mình có thể giúp gì được cho bạn?" logged_out_greeting="Xin chào, mình có thể giúp gì được cho bạn?">
</div>
<!-- Install app for phone -->
<script>
	const A2HS_PROMT_MSG = 'Bấm để cài <b>Simple8</b> về máy';
	navigator.serviceWorker.register('./pwa-sw.js');
</script>