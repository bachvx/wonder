<div class="block_articles item_right_only_doc"> 


<?php  ?>
	<!--end-->
	
<div class="clear"></div>
<div id="srcoller5" class="scrollable">
<div class="button-prv prev5"></div>
<div class="button-nxt next5"></div>
<?php 
$urlOptionsCategory = array('module'=>'article','controller'=>'index','action'=>'category','alias'=>$categories['alias']);
$linkCategory = $view->url($urlOptionsCategory,'article-category');
echo '<h3 class=""><a href="'.$linkCategory.'" title="'.$categories['name'].'">'.$categories['name'].'</a></h3>';
?>
<div class="list-items">
	<div class="items">
		 
				<?php 
					foreach ( $row as $key => $val ) { 
						 
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
						<div class="item ">
						<div style="float:left;width:100%; height:160px;width:300px;">
							<?php echo $picture;?>
							<div class="frame title">
								<p><a href="<?php echo $linkDetial;?>" class="<?php echo $start;?>" title="<?php echo $name;?>"><?php echo $name;?></a></p>
								<span>Bản tin ngày : <?php  echo date("d-m-Y", strtotime($created));?></span>
							</div>
		
						</div> 
						</div>
					<?php }  ?>	
			 
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
		<?php echo $picture;?>
		<div class="title">
			<p><a href="<?php echo $linkDetial;?>" class="<?php echo $start;?>" title="<?php echo $name;?>"><?php echo $name;?></a></p>
			<span>Bản tin ngày : <?php  echo date("d-m-Y", strtotime($created));?></span>
		</div>
		
		</div>
		<?php
		} 
		echo '</div>';
		?>
<?php */ ?>
	
</div>


<style>


.block_articles.item_right_only_doc{width:100%;float: right;margin-top: 15px;} 
.block_articles.item_right_only_doc .item {width: 100%;float: left;padding-bottom:10px;} 
.block_articles.item_right_only_doc .item.item-1 {width: 100%;float: left;padding-bottom:10px;} 
.block_articles.item_right_only_doc h3{color: #43494c;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif;padding: 5px 0px;border-bottom:1px solid #E9E9E9;margin-bottom: 10px;} 
.block_articles.item_right_only_doc h3 a{color: #43494C;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif;  } 
.block_articles.item_right_only_doc .item img{float: left;margin:0px 5px;width:135px!important;height:85px !important;border: 1px solid #e6e6e6;} 
.block_articles.item_right_only_doc .item .title {float: left; width:145px;padding-bottom: 5px;}
.block_articles.item_right_only_doc .item .title a{ color: #61697e;font-family: Arial,Sans-serif;font-size: 13px;}
.block_articles.item_right_only_doc .item .title span{ color: #8A8A8A;font-family: Arial,Sans-serif;font-size:11px;font-style: italic;}
.block_articles.item_right_only_doc .item p.synopsis {font-size: 12px;color: #8a8a8a;}		
<?php 
$background_next = $view->imgUrl.'/next.png';
$background_preview = $view->imgUrl.'/preview.png';
?>
.block_articles.item_right_doc .click_next{float: right; width: 15px;height:25px;background: url(<?php echo $background_next;?>)no-repeat;}
.block_articles.item_right_doc .click_preview{float: right; width:15px;height:25px;margin:0px 5px;background: url(<?php echo $background_preview;?>)no-repeat;}
 	
</style>



