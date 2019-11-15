<?php
if (count ( $row ) > 0) {
	?>
    
<div class="article">
		<ul>
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
        <li><a href="<?php echo $linkDetial;?>"><?php echo $name;?></a></li>
		<?php
		} 
		?>	
        </ul>
	</div>
<?php }?>

