<?php
if (count ( $row ) > 0) {
	?>
<div id="recent-posts-2" class="widget widget_recent_entries widget-3 ">
	<h2 class="widget-title"><?php echo $view->language['baiVietmoi'];?></h2>
		
	<ul >
		<?php
		
		foreach ( $row as $key => $val ) {
			
			$name = $val ['name'];
			$imgName = explode ( '/editor-upload/images/', $val ['picture'] );
			//$picture = '<img src="' . APPLICATION_URL . '/default/public/view-image/width/100/height/100/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
			//$picture='<img class="img-responsive"  src="' . APPLICATION_URL . '/default/public/view-image/width/65/height/65/images/' . $imgName [1] . '">';
			$urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
			
			$linkDetial = $view->url ( $urlOptions, 'article-detail' );

			$start = '';
			if($key == 0){
				$start = 'start';
			}
		?>
        <li>
            <a href="<?php echo $linkDetial;?>">
            
            <?php echo $name;?>
            <div class="clearfix"></div>
            </a>
        </li>
		
		<?php
		} 
		?>
	</ul>
</div>
<?php }?>
