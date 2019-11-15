<?php

	$siteConfig = Zend_Registry::get('siteConfig');
	$facebook = $siteConfig['config_company']['facebook'];
?>
	<footer id="footer">
		<div class="container">
		<div class="top">
			<div class="row">
				<div class="col-sm-5">
					<div class="logo-ft">
						<a href=""><img src="public/images/logo-footer.png" alt="logo-genex"></a>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="social">
						<ul>
							<li><a href="<?php echo $facebook; ?>"><img src="public/images/i-fb.png" alt="facebook"></a></li>
							<li><a href=""><img src="public/images/i-mess.png" alt="messenger"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>			
		<div class="mid">
			<div class="row">
				<div class="col-sm-3">
					<div class="contact">
						<h2><a href="">GENEX International  <br>Distribution JSC</a></h2>
						<p>BUSINESS REGISTRATION NO. & TAX CODE: 0308080618</p>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="showroom">
						<p class="local">Ho Chi Minh City</p>
						<p>50A Duong Duc Hien, Tay Thanh Ward, Tan Phu Dist</p>
						<p>Tel: 028 6267 2317/ 028 6292 8884</p>
						<p>Guarantee: 028 6267 2317 ext 102 /0909 334 086</p>
						<p>Email: info@genex.com.vn</p>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="showroom">
						<p class="local">Hanoi City</p>
						<p>32-34 Dang Van Ngu, Dong Da District</p>
						<p>Tel:  024.392 75873/ 024.6275 0148</p>
						<p>Guarantee: 024.6275 0148 ext 102 /0909 780 486</p>
						<p>Email: info@genex.com.vn</p>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="hotline">
						<p class="tuvan">Hotline</p>
						<p><a href="tel:1900545597">1900 54 55 97</a></p>
					</div>
				</div>
			</div>
		</div>
		<div class="copy">
			<p>Copyright © 2009-2017 GENEX International Distribution JSC. All rights reserved.</p>
		</div>
		</div>
	</footer> <!-- /FOOTER -->