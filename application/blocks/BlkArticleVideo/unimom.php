	<div class="row">
<?php
if (count ( $row ) > 0) {
	foreach ( $row as $key => $val ) {
		$name = $val ['name'];
	//	$urlOptions = array('module'=>'article','controller'=>'index','action'=>'category',
		//		'cid'=>$val['id'],
		//		'alias'=>$val['alias'],
	//	);
	//	$link = $view->url($urlOptions,'article-category');
		
		//foreach ( $val ['items'] as $key_item => $val_item ) {
			
			$name_item = $val ['name'];
            $ngay = $val ['ngay'];
			$synopsis = $val ['synopsis'];
            $image='https://img.youtube.com/vi/'.$val['video'].'/0.jpg';
		//	$urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val_item ['cat_id'], 'tcat' => $val_item ['category_alias'], 'title' => $val_item ['alias'], 'id' => $val_item ['id'] );
			
		//	$linkDetial = $view->url ( $urlOptions, 'article-detail' );
		//die("ád");
			?>
            <div class="col-sm-4">
				<div class="item">
					<div class="image">
						<a href="" data-toggle="modal" data-target="#<?php echo $val['video']; ?>"><img src="<?php echo $image; ?>" alt="<?php echo $name; ?>"></a>
                        <a href="" data-toggle="modal" data-target="#<?php echo $val['video']; ?>"><img src="public/images/play-icon.png" alt="play-icon" class="view"></a>
					</div>
					<div class="info">
						<h3><a href="" data-toggle="modal" data-target="#<?php echo $val['video']; ?>"><?php echo $name; ?></a></h3>
						<p><?php echo $ngay; ?></p>
					</div>
				</div>
			</div>
            <div class="modal fade" id="<?php echo $val['video']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <div class="modal-body">
		      		<iframe width="100%" height="400px" src="https://www.youtube.com/embed/<?php echo $val['video']; ?>" frameborder="0" allowfullscreen></iframe>
		        </div>
		    </div>
		  </div>
		</div>
		<?php
		//}
	}
}
?>
</div>
<div class="readmore">
	<a href="<?php echo $linkXemthem; ?>"><?php echo $view->language['xemthem']; ?></a>
</div>
