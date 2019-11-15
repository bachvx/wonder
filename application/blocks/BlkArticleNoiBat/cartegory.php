<?php
if (count ( $row ) > 0) {
	?>
<div class="col-sm-4">
    <div id="safekid-recent-posts-2" class="widget widget_recent_entries">
  		<h2 class="widget-title"><span>Bài viết nổi bật</span></h2>
  		<div class="posts-list">
		<?php
		
		foreach ( $row as $key => $val ) {
			
			$name = $val ['name'];
			$imgName = explode ( '/editor-upload/images/', $val ['picture'] );
			
			$picture= APPLICATION_URL . '/default/public/view-image/width/570/height/300/images/' . $imgName [1] . '';
			$urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
			$synopsis = $val ['synopsis'];
			$linkDetial = $view->url ( $urlOptions, 'article-detail' );

			$start = '';
			if($key == 0){
				$start = 'start';
			}
		?>
            
            
            <div class="sidebar-post">
				<div class="thumb">
					<a href="<?php echo $linkDetial;?>"><img width="127" height="109" src="<?php echo $picture;?>" class="attachment-blog-widget-thumbnail size-blog-widget-thumbnail wp-post-image" alt="<?php echo $name;?>"  />				</div>
				<h3><a href="<?php echo $linkDetial;?>"><?php echo $name;?></a></h3>
			</div>
		<?php
		} 
		?>
        </div>
       </div>
    </div>       

<?php }?>

