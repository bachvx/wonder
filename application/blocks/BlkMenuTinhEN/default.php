<?php
$siteConfig = Zend_Registry::get('siteConfig');
?>

<div class="logo visible-xs visible-sm">
	<a href="<?php echo $view->baseUrl('');?>" title="<?php echo $siteConfig['config_site']['sitename'];?>"><img src="<?php echo $siteConfig['config_site']['site_logo'];?>"></a>
</div>
<ul class="">
    <li><a href="<?php echo $view->baseurl('/'); ?>">Genex</a>
    	<ul>
    		<li><a href="genex">About Genex</a></li>
    		<li><a href="ban-tin-genex">Genex news</a></li>
    	</ul>
    </li>
    <li><a href="">Brand</a>
    	<ul class="sub-icon">
    		<?php echo $row_page; ?>
    	</ul>
    </li>
    <li><a href="phan-phoi">Distribution system</a></li>
    <li><a href="contact">Contact</a></li>
</ul>