<?php
$siteConfig = Zend_Registry::get('siteConfig');
?>

<div class="logo visible-xs visible-sm">
	<a href="<?php echo $view->baseUrl('');?>" title="<?php echo $siteConfig['config_site']['sitename'];?>"><img src="<?php echo $siteConfig['config_site']['site_logo'];?>"></a>
</div>
<ul class="">
    <li><a href="<?php echo $view->baseurl('/'); ?>">Genex</a>
    	<ul>
    		<li><a href="genex">Về Genex</a></li>
    		<li><a href="ban-tin-genex">Bản tin Genex</a></li>
    	</ul>
    </li>
    <li><a href="">Thương hiệu</a>
    	<ul class="sub-icon">
    		<?php echo $row_page; ?>
    	</ul>
    </li>
    <li><a href="phan-phoi">Hệ thống phân phối</a></li>	
    <li><a href="/contact">Liên hệ</a></li>
</ul>