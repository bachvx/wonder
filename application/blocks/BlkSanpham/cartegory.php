<?php
if (count ( $row ) > 0) {
	?>
<div class="col-sm-4">
    <div id="safekid-recent-posts-2" class="widget widget_recent_entries">
  		<h2 class="widget-title"><span>Sản phẩm nổi bật</span></h2>
  		<div class="posts-list">
		<?php
		
		foreach ( $row as $key => $val ) {
			
			$name = $val ['name'];
			$imgName = explode ( '/editor-upload/images/', $val ['picture'] );
			
			$picture= APPLICATION_URL . '/default/public/view-image/width/570/height/300/images/' . $imgName [1] . '';
			$urlOptions = array (
                    			'module' => 'product',
                    			'controller' => 'index',
                    			'action' => 'detail',
                    			'title' => $val ['alias'],
                    			'id' => $val ['id'] );
            $linkDetial = $view->url($urlOptions, 'diadiem-detail' );
			$synopsis = $val ['synopsis'];
			
            if($val['price'] != 0){
    		      $price = '<p class="price">'.$view->language['diadiemGia'].': <span class="value">'.Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money.'VNĐ</span></p>';
        	}else{
        		$price = '<p class="price">'.$view->language['diadiemGia'].': <span class="value">'.$view->language['lienHe'].'</span></p>';
        	}
			$start = '';
			if($key == 0){
				$start = 'start';
			}
		?>
            
            
            <div class="sidebar-post">
				<div class="thumb">
					<a href="<?php echo $linkDetial;?>"><img width="127" height="109" src="<?php echo $picture;?>" class="attachment-blog-widget-thumbnail size-blog-widget-thumbnail wp-post-image" alt="<?php echo $name;?>"  />				</div>
				    <h3><a href="<?php echo $linkDetial;?>"><?php echo $name;?></a></h3>
                    <h5><a href="<?php echo $linkDetial;?>"><?php echo $price;?></a></h5>
                    
			</div>
		<?php
		} 
		?>
        </div>
       </div>
    </div>       

<?php }?>



