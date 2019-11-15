<div class="block_articles item_picture"> 

<?php  ?>
	<!--end-->
	
<div class="clear"></div>
<div id="srcoller4" class="scrollable">
<div class="button-prv prev4"></div>
<div class="button-nxt next4"></div>
<?php 
$urlOptionsCategory = array('module'=>'article','controller'=>'index','action'=>'category','alias'=>$categories['alias']);
$linkCategory = $view->url($urlOptionsCategory,'article-category');
echo '<h3 class=""><a href="'.$linkCategory.'" title="'.$categories['name'].'">'.$categories['name'].'</a></h3>';
?>
<div class="list-items">
	<div class="items">
		<div class="item ">
				<?php 
					foreach ( $row as $key => $val ) { 
						if($key<5){
							$name 			= $val['name'];
							$synopsis 		= $val['synopsis'];
							$created 		= $val['created'];
							$imgName 		= explode ( '/editor-upload/picture/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
							$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
							$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
							$start = '';
							if($key == 0){
								$start = 'start';
							}
					?>
						<div style="float:left;width:100%; height:160px;width: 155px;">
							<div class="frame title"> 
							<a href="<?php echo $linkDetial;?>" class="title" title="<?php echo $name;?>">
							<?php echo $picture;?>
							</a> 
							</div>
						</div> 
					<?php } }  ?>	
			</div>	
			
			<div class="item ">
				<?php 
					foreach ( $row as $key => $val ) {
						if($key<8 && $key>3 ){
							$name 			= $val['name'];
							$synopsis 		= $val['synopsis'];
							$created 		= $val['created'];
							$imgName 		= explode ( '/editor-upload/picture/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
							$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
							$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
							
					?>
						<div style="float:left;width:100%; height:160px;width: 155px;">
							<div class="frame title"> 
							<a href="<?php echo $linkDetial;?>" class="title" title="<?php echo $name;?>">
							<?php echo $picture;?>
							</a> 
							</div>
						</div> 
					<?php } }  ?>	
			</div>
			
			<div class="item ">
				<?php 
					foreach ( $row as $key => $val ) {
						if($key<12 && $key>7 ){
							$name 			= $val['name'];
							$synopsis 		= $val['synopsis'];
							$created 		= $val['created'];
							$imgName 		= explode ( '/editor-upload/picture/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
							$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
							$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
							
					?>
						<div style="float:left;width:100%; height:160px;width: 155px;">
							<div class="frame title"> 
							<a href="<?php echo $linkDetial;?>" class="title" title="<?php echo $name;?>">
							<?php echo $picture;?>
							</a> 
							</div>
						</div> 
					<?php } }  ?>	
			</div>
						
		</div>
	</div>
</div>
<?php   ?>






		<?php /* ?>
		<?php 
		echo '<div class="'.$categories['alias'].' cat_item_'.$categories['id'].'">';
		echo '<h1 class="">'.$categories['name'].'<span class="click_next"></span><span class="click_preview"></span></h1>';
		foreach ( $row as $key => $val ) {
			$name 			= $val ['name'];
			$created 		= $val ['created'];
			$imgName 		= explode ( '/editor-upload/picture/', $val ['picture'] );
			$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
			$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
			$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );

			$start = '';
			if($key == 0){
				$start = 'start';
			}
		?>
		<div class="item item-<?php echo $key;?> <?php echo $start;?>">
		<a href="<?php echo $linkDetial;?>" class="title" title="<?php echo $name;?>">
		<?php echo $picture;?>
		</a> 
		</div>
		<?php
		} 
		echo '</div>';
		?>
		
		<?php */ ?>
	
</div>


<style>

.block_articles.item_picture h3{font-size: 16px;color: #43494c;font-family:Arial,Sans-serif;border-bottom: 1px solid #e9e9e9;font-weight: normal;padding: 5px 0px;margin-bottom: 10px;}
.block_articles.item_picture h3 a{color: #43494C;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif; } 
.block_articles{}
.block_articles.item_picture{width:100%;float: left;} 
.block_articles.item_picture .item {width:640px;float: left;} 
.block_articles.item_picture .item img{float: left;padding:3px;width:135px!important;height:85px !important;border: 1px solid #e6e6e6;}
<?php 
$background_next = $view->imgUrl.'/next.png';
$background_preview = $view->imgUrl.'/preview.png';
?>
.block_articles.item_picture .click_next{float: right;background: red;width: 15px;height:25px;background: url(<?php echo $background_next;?>)no-repeat;}
.block_articles.item_picture .click_preview{float: right;background: red;width:15px;height:25px;margin:0px 5px;background: url(<?php echo $background_preview;?>)no-repeat;}
 			
		
</style>



