<div class="row">
<?php
if (count ( $row ) > 0) {
		foreach ( $row as $key => $val ) {
			
			$name = $val ['name'];
            $alias=$val['alias'];
            $ngay=$val['ngay'];
			$imgName = explode ( '/editor-upload/images/', $val ['picture'] );
			
			$picture= APPLICATION_URL . '/default/public/view-image/width/358/height/213/images/' . $imgName [1] . '';
			$urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
			$synopsis = $val ['synopsis'];
			$linkDetial = $view->url ( $urlOptions, 'article-detail' );

			$start = '';
			if($key == 0){
				$start = 'start';
			}
		?>
        <div class="col-sm-4">
        	<div class="item">
        		<div class="image">
        			<a href="<?php echo $linkDetial;?>"><img src="<?php echo $picture; ?>" alt="<?php echo $alias; ?>"></a>
        		</div>
        		<div class="info">
        			<h3><a href="<?php echo $linkDetial;?>"><?php echo $name;?></a></h3>
        			<p><?php echo $ngay; ?></p>
        		</div>
        	</div>
        </div>	
        
		<?php
		} 
	 }?>

</div>
<div class="readmore">
	<a href="<?php echo $linkXemthem; ?>"><?php echo $view->language['xemthem']; ?></a>
</div>