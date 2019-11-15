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
		    		<li><a href="ban-tin-genex">Genex newsletter</a></li>
		    	</ul>
		    </li>
		    <li><a href="#">Trademark</a>
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
			<input id="search" name="query" placeholder="Code product" class="search-query" maxlength="128" type="text">
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
								<a href="" title="<?php echo $siteConfig['config_site']['sitename'];?>"><img src="<?php echo $row['picture'];?>"></a>
							</div>
						</div>
						<div class="col-sm-9">
							<div class="lang">
                    			<a href="/vi"><img src="public/images/i-vi.jpg" alt="tieng-viet"></a>
                    			<a href="/en"><img src="public/images/i-eng.jpg" alt="tieng-anh"></a>
                    		</div>
							<div class="search">
								<form action="/search" method="get" class="navbar-search hidden-xs" id="search_mini_form">
									<input id="search" name="query" placeholder="code product" class="search-query" maxlength="128" type="text">
									<button type="submit" class="btn icon-search"><i class="fa fa-search" aria-hidden="true"></i></button>
								</form>
							</div>
							<div class="clearfix"></div>
							<nav id="menu">
								<?php
                                include(BLOCK_PATH . '/BlkMenuTinhEN/default.php');
                                
                                // echo $view->blkMenuTinh('unimom',$row_page); ?>
							</nav>
							<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
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
<?php
	if($row['picture_multi'] != ''){
		$picture_multi = unserialize($row['picture_multi']);
        
        foreach($picture_multi AS $key => $val){
            //var_dump($val) ;die;
            if($key==0){
                $slide1.='<li data-target="#carousel-genex" data-slide-to="0" class="active"></li>';
                $slide2.='<div class="item active">
		            	<img src="'.$val[0].'" alt="genex">
		            </div>';
            }else{
                $slide1.='<li data-target="#carousel-genex" data-slide-to="'.$key.'"></li>';
                $slide2.='<div class="item">
		            	<img src="'.$val[0].'" alt="genex">
		            </div>';
            }
            
        }
    }
?>
	<!-- CONTENT -->
	<main>
		<div class="slider">
		    <div id="carousel-genex" class="carousel slide" data-ride="carousel">
			     <ol class="carousel-indicators">
				    <?php echo $slide1; ?>
				</ol>
		        <div class="carousel-inner" role="listbox">
		            <?php echo $slide2; ?>
		        </div>
		    </div>
		</div>
<div class="clearfix"></div>
	
<div class="aboutus wow swing animated">
	<div class="container">
    <?php 
        //var_dump($template_id);die;
        //if($template_id['template']==1){
//            echo '<div class="content unimom">';
//        }else{
//            echo '<div class="content hubdic">';
//        }
        echo '<div class="content hubdic" style="background-color:#'.$template_id['color'].'">';
    ?>
		
			<h2><a href="">About <?php echo $row['name']; ?></a></h2>
			<?php echo htmlspecialchars_decode($row['content_en']) ; ?>
		</div>
	</div>
</div>
<style>
    .item-sp.hubdic:hover {
        background-color: #<?php echo $template_id['color']; ?>;
        border: 1px solid #<?php echo $template_id['color']; ?>;
    }
    .bantin.unimom .content .item:hover {
        border: 1px solid #<?php echo $template_id['color']; ?>;
    }
    .bantin.unimom .content .item:hover h3 a{
        color: #<?php echo $template_id['color']; ?>;
    }
    .sp-doitac .sanpham-doitac .item.unimom:hover h3{
        color: #<?php echo $template_id['color']; ?>;
    }
    .bantin.unimom .content .readmore:hover a {
        border: 1px solid #<?php echo $template_id['color']; ?>;
        color: #<?php echo $template_id['color']; ?>;
    }
    i.fa.fa-caret-down {
        position: absolute;
        bottom: -20px;
        color:#<?php echo $template_id['color']; ?>;
        left: 44%;
        font-size: 35px;
    }
    .title4 h2 a {
        background: none;
        padding: 10px;
        background-color: #<?php echo $template_id['color']; ?>;
        POSITION: RELATIVE;
    }
    .sp-doitac .sanpham-doitac .item.unimom:hover h3 {
      background-color: #<?php echo $template_id['color']; ?>;
      
      }
</style>