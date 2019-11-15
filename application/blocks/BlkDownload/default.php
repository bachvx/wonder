<?php
	
		$siteConfig = Zend_Registry::get('siteConfig');
		$download = $siteConfig['config_site']['files'];
?>
<div class="download wow bounceInDown animated">
	<div class="container">
		<a href="<?php echo $download; ?>"><?php echo $view->language['download']; ?></a>
	</div>		
</div>