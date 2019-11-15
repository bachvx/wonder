<div class="clear"></div> 
<div class="block_articles item_right_list_doc"> 
<?php  ?>
	<!--end-->
	
<div class="clear"></div>
<div id="srcoller1" class="scrollable">
<div class="button-prv prev1"></div>
<div class="button-nxt next1"></div>
<?php 
$urlOptionsCategory = array('module'=>'article','controller'=>'index','action'=>'category','alias'=>$categories['alias']);
$linkCategory = $view->url($urlOptionsCategory,'article-category');
echo '<h3 class=""><a href="'.$linkCategory.'" title="'.$categories['name'].'">'.$categories['name'].'</a></h3>';
?>
<div class="list-items" style="overflow: hidden;">
	<div class="items">
		<div class="item ">
				<?php 
					foreach ( $row as $key => $val ) { 
						if($key == 0){
							$start = 'start';
						}
						if($key<6){
							$name 			= $val['name'];
							$synopsis 		= $val['synopsis'];
							$created 		= $val['created'];
							$imgName 		= explode ( '/editor-upload/picture/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
							$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
							$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
							$start = '';
					?>
									<p><a href="<?php echo $linkDetial;?>" class="<?php echo $start;?>" title="<?php echo $name;?>"><?php echo $name;?></a></p>
					<?php } }  ?>	
			</div>	
			
			<div class="item ">
				<?php 
					foreach ( $row as $key => $val ) {
						if($key<10 && $key>5 ){
							$name 			= $val['name'];
							$synopsis 		= $val['synopsis'];
							$created 		= $val['created'];
							$imgName 		= explode ( '/editor-upload/picture/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
							$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
							$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
							$start = ''; 
					?>
									<p><a href="<?php echo $linkDetial;?>" class="<?php echo $start;?>" title="<?php echo $name;?>"><?php echo $name;?></a></p>
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
			$synopsis 		= $val ['synopsis'];
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
		<div class="item  item-<?php echo $key;?>">
			<div class="title">
				<p><a href="<?php echo $linkDetial;?>" class="<?php echo $start;?>" title="<?php echo $name;?>"><?php echo $name;?></a></p>
			</div> 
		</div>
		 
		<?php
		} 
		echo '</div>';
		?>
	
<?php */ ?>	
</div> 
<style>

<?php 
$background_next = $view->imgUrl.'/next.png';
$background_preview = $view->imgUrl.'/preview.png';
$background_list = $view->imgUrl.'/list-ico.png';
?>
.block_articles.item_right_list_doc{width:100%;float: right;} 
.block_articles.item_right_list_doc .item {width:295px;float: left;} 
.block_articles.item_right_list_doc .item p a{line-height:18px;color:#000;font-size:12px;float: left;} 
.block_articles.item_right_list_doc h3{color: #43494c;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif;padding: 5px 0px;border-bottom:1px solid #E9E9E9;margin-bottom: 10px;} 
.block_articles.item_right_list_doc h3 a{color: #43494C;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif;  } 
.block_articles.item_right_list_doc .item img{float: left;margin:0px 5px;width:75px!important;height:55px !important;border: 1px solid #e6e6e6;} 
.block_articles.item_right_list_doc .item .title {float: left; width: 275px;background:url(<?php echo $background_list;?>)no-repeat scroll left 3px rgba(0, 0, 0, 0);padding-left: 17px; line-height:17px;padding-bottom: 7px; }
.block_articles.item_right_list_doc .item .title a{ color: #61697e;font-family: Arial,Sans-serif;font-size: 13px;}
.block_articles.item_right_list_doc .item .title span{ color: #8A8A8A;font-family: Arial,Sans-serif;font-size:11px;font-style: italic;}
.block_articles.item_right_list_doc .item p.synopsis {font-size: 12px;color: #8a8a8a;}		
.block_articles.item_right_list_doc .click_next{float: right;width: 15px;height:25px;background: url(<?php echo $background_next;?>)no-repeat;}
.block_articles.item_right_list_doc .click_preview{float: right;width:15px;height:25px;margin:0px 5px;background: url(<?php echo $background_preview;?>)no-repeat;}
 	
</style>



