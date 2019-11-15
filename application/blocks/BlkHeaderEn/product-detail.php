<?php
	$siteConfig = Zend_Registry::get('siteConfig');
    foreach($page as $key=> $val){
        $urlOptions = array (
						'module' => 'dichvu',
						'controller' => 'index',
						'action' => 'pagethuonghieu',
						'name' => $val ['alias'],
						'manu-id' => $val ['id']);
				        $linkDetial = $view->url( $urlOptions, 'dichvu-page' );
                     //   echo $linkDetial;die;
        $imgName = explode ( '/editor-upload/images/', $val ['picture'] ); 
        $picture = '<img  class="img" src="' . APPLICATION_URL . '/default/public/view-image/width/200/height/100/images/' . $imgName [1] . '"/>';  
        //echo $picture;die;       
        $row_page.='<li><a href="'.$linkDetial.'">'.$picture . $val['name'].'</a></li>';
        $row_page_mobile.='<li><a href="'.$linkDetial.'">'. $val['name'].'</a></li>';
    }
?>
<a id="toggle" href="#"><i class="fa fa-bars"></i></a>
	<div id="overlay"></div>							
	<nav id="menu" class="visible-xs visible-sm">
        <div class="lang">
			<a href="/vi"><img src="public/images/i-vi.jpg" alt="tieng-viet"></a>
			<a href="/en"><img src="public/images/i-eng.jpg" alt="tieng-anh"></a>
		</div>
		<div class="logo">
			<a href="<?php echo $view->baseUrl('');?>" title="<?php echo $siteConfig['config_site']['sitename'];?>"><img src="<?php echo $siteConfig['config_site']['site_logo'];?>"></a>
		</div>
	    <ul class="">
		    <li><a href="#">Genex</a>
		    	<ul>
		    		<li><a href="genex">About Genex</a></li>
		    		<li><a href="ban-tin-genex">Genex News</a></li>
		    	</ul>
		    </li>
		    <li><a href="#">Brand</a>
		    	<ul>
		    		<?php echo $row_page_mobile; ?>
		    	</ul>
		    </li>
		    <li><a href="phan-phoi">Distribution system</a></li>
		    <li><a href="contact">Contact</a></li>
	    </ul>
	</nav>
	<div class="search visible-xs visible-sm">
		<form action="/search" method="get" class="navbar-search" id="search_mini_form">
			<input id="search" name="query" placeholder="Product name" class="search-query" maxlength="128" type="text">
			<button type="submit" class="btn icon-search"><i class="fa fa-search" aria-hidden="true"></i></button>
		</form>
	</div>
	<header id="header">		
		<div class="header hidden-xs hidden-sm">
			<div class="desktop">
				<div class="container">
					<div class="row">
						<div class="col-sm-3">
							<div id="logo">
								<a href="#" title="<?php echo $siteConfig['config_site']['sitename'];?>"><img src="<?php echo $row['picture'];?>"></a>
							</div>
						</div>
						<div class="col-sm-9">
							<div class="lang">
			<a href="/vi"><img src="public/images/i-vi.jpg" alt="tieng-viet"></a>
			<a href="/en"><img src="public/images/i-eng.jpg" alt="tieng-anh"></a>
		</div>
							<div class="search">
								<form action="/search" method="get" class="navbar-search hidden-xs" id="search_mini_form">
									<input id="search" name="query" placeholder="Mã sản phẩm" class="search-query" maxlength="128" type="text">
									<button type="submit" class="btn icon-search"><i class="fa fa-search" aria-hidden="true"></i></button>
								</form>
							</div>
							<div class="clearfix"></div>
							<nav id="menu">
                            <?php 
								include(BLOCK_PATH . '/BlkMenuTinhEN/default.php');
                            ?>
							</nav>
							 
							<script>
							(function($){
							  var ico = $('<i class="fa fa-caret-right"></i>');
							  $('nav#menu li:has(ul) > a').append(ico);
							  
							  $('nav#menu li:has(ul)').on('click',function(){
							    $(this).toggleClass('open');
							  });
							  
							  $('a#toggle').on('click',function(e){
							    $('html').toggleClass('open-menu');
							    return false;
							  });
							  
							  
							  $('div#overlay').on('click',function(){
							    $('html').removeClass('open-menu');
							  })
							  
							})(jQuery)
							</script>						
						</div>
					</div>
				</div>			
			</div>
		</div>
	</header>
     <!-- /HEADER -->

	<div class="clearfix"></div>

	<!-- CONTENT -->
	<main>
		
