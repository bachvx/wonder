<div class="width_wrapper article_category_home clearfix ">
<div class="div_title fleft">
	<h2>Xu hướng ẩm thực</h2>
</div>

<?php
$getFB= new Default_Model_Fbcount();
foreach ($row as $key => $val){
	$name = $val['name'];
	$urlOptions = array('module'=>'article','controller'=>'index','action'=>'category',
			'cid'=>$val['id'],
			'alias'=>$val['alias'],
	);
	$link = $view->url($urlOptions,'article-category');
	$class="";
	if($key==0){$class="start";}
?>
<div class="fleft p_1"  >
	<div class="block_title Home_<?php echo $key+1; ?> clearfix">
		<span class="icon"></span>
		<a href="<?php echo $link;?>" title="<?php echo $name;?>"><h2 class="title"><?php echo $name;?></h2></a>
	</div>
<div class="block_articleHome block_articleHome_<?php echo $key+1; ?> <?php echo $class; ?> content_<?php echo $key+1; ?>">
	
	<div class="block_content articles">
	
    	<?php
		if(count($val['items'])>0){ 
			foreach ($val['items'] as $key_item => $val_item){
						
				$name_item = $val_item['name'];
				//$picture = '<img class="img" src="' . $val_item['picture'] .'" alt="'.$val_item['name'].'"/>';
				$imgName = explode ( '/editor-upload/images/', $val_item ['picture'] ); 
				$picture = '<img  class="img" src="' . APPLICATION_URL . '/default/public/view-image/width/100/height/100/images/' . $imgName [1] . '" alt="' . $val_item ['name'] . '"/>';
				
				//$date='<div class="d_date">'.date("G:iA | d/m/Y", strtotime($val_item['created'])).'</div>';
				$urlOptions_item = array ('module' => 'article', 
									'controller' => 'index', 
									'action' => 'detail', 
									'cid' => $val_item['cat_id'], 
									'tcat' => $val_item['category_alias'], 
									'title' => $val_item['alias'], 
									'id' => $val_item['id'] );
				$linkDetial_item = 'http://diachianchoi.vn'.$view->url( $urlOptions_item, 'article-detail' );  
				$like='<span class="like_fb" link="'.$linkDetial_item.'" data="like" id="'.$val_item['id'].'" val="'.$val_item['like_fb'].'" typer="articles" field="like_fb">'.$val_item['like_fb'].'</span>';
				$comment='<span class="comment_fb">'.$val_item['comment_fb'].'</span>';
				 
		?>
				 
				
					 
							<div class="item">
								<div class="div_img">
									<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
										<?php echo $picture;?>
									</a>
									<div class="desc">
										<h4 class="title">
											<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>"><?php echo $name_item;?></a>
										</h4>
										 <?php echo $comment.$like;?>
									</div> 
								</div> 
								<div class="clr"></div>
							</div>   
		<?php
		} 
		} 
      	?>
      	<div class="clr"></div>
 	</div>
 	<div class="block_bottom"></div>
</div>
</div>
<?php 
	}
?>


<?php //echo $view->blkTag('default');?>

</div>
<div class="clr"></div>
<style>
.content_1,.content_2,.content_3{float:left;overflow: hidden;}
		 
</style>
			<script>
				/*(function($){
					$(window).load(function(){
						$(".content_1").mCustomScrollbar({
							scrollInertia:30
						}); 
						$(".content_2").mCustomScrollbar({
							scrollInertia:30
						}); 
						$(".content_3").mCustomScrollbar({
							scrollInertia:30
						}); 
						$(".content_4").mCustomScrollbar({
							scrollInertia:30
						}); 
						$(".content_5").mCustomScrollbar({
							scrollInertia:30
						}); 
						$(".content_6").mCustomScrollbar({
							scrollInertia:30
						}); 
					});
				})(jQuery);*/
			</script> 
<?php /* 
<script src="<?php echo $view->jsUrl;?>/jquery.mCustomScrollbar.concat.min.js"></script>
<link href="<?php echo $view->cssUrl;?>/jquery.mCustomScrollbar.css" rel="stylesheet" />
*/
?>