<div id="hosonangluc" class="et_pb_fullwidth_portfolio et_pb_fullwidth_portfolio_carousel et_pb_module et_pb_bg_layout_light" data-auto-rotate="off" data-auto-rotate-speed="7000">
	<h2>H? so nang l?c</h2>
    <div class="et_pb_portfolio_items clearfix" data-portfolio-columns="">
<?php 
foreach ( $categories as $key => $val ) { 

	 
		$name 			= $val['name'];
		$synopsis 		= $val['synopsis'];
		$created 		= $val['created'];
		$imgName 		= explode ( '/editor-upload/images/', $val['picture'] );
		$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/400/height/200/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
		//$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
        $urlOptions = array (
    						'module' => 'diadiem',
    						'controller' => 'index',
    						'action' => 'detail',
    						'tcat' => $val ['category_alias'],
    						'title' => $val ['alias'],
    						'cid' => $val ['cat_id'],
    						'id' => $val ['id'] );
                            
        $linkDetial = $this->url( $urlOptions, 'diadiem-detail' );
		$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
		$start = '';
?> 
    <div id="post-4152" class="et_pb_portfolio_item et_pb_grid_item  post-4152 project type-project status-publish has-post-thumbnail hentry">
        <div class="et_pb_portfolio_image landscape">
            <a href="<?php echo $linkDetial;?>">
            <img src="<?php echo $picture;?>" alt="<?php echo $name;?>"/>
            <div class="meta">
                <span class="et_overlay"></span>
        
                <h3><?php echo $name;?></h3>
        
            </div>
            </a>
        </div>
    </div>
<?php  }  ?>			 
	</div><!-- .et_pb_portfolio_items -->
</div> <!-- .et_pb_fullwidth_portfolio -->