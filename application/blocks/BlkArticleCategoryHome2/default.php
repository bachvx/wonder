<div class="width_wrapper article_category_home2 clearfix">
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
<div class="block_articleHome block_articleHome_<?php echo $key+1; ?> <?php echo $class; ?>  ">
	<div class="block_title clearfix">
		<span class="icon"></span>
		<a href="<?php echo $link;?>" title="<?php echo $name;?>"><h2 class="title"><?php echo $name;?></h2></a>
	</div>
	<div class="block_content articles">
	
    	<?php
		if(count($val['items'])>0){ 
			foreach ($val['items'] as $key_item => $val_item){
						
				$name_item = $val_item['name'];
				//$picture = '<img class="img" src="' . $val_item['picture'] .'" alt="'.$val_item['name'].'"/>'; 
				
				$imgName = explode ( '/editor-upload/images/', $val_item ['picture'] ); 
				$picture = '<img  class="img" src="' . APPLICATION_URL . '/default/public/view-image/width/310/height/170/images/' . $imgName [1] . '" alt="' . $val_item ['name'] . '"/>';
			
				$synopsis= '<div class="d_synopsis">'.$val_item['synopsis'].'</div>';
				$date='<div class="d_date">'.date("G:iA | d/m/Y", strtotime($val_item['created'])).'</div>';
				$date2='<div class="d_date">'.date(" d/m/Y", strtotime($val_item['created'])).'</div>';
				$cat_name ='<p class="d_cat_name"><a href="'.$link.'"><span>'.$name.'</span></p>';
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
				 
				
				$class="";
				if($key_item==0){ $class="start"; }
				 
		?>
							<?php if($key==0){ ?>
								<?php if($key_item<4){?>
								<div class="item <?php echo $class;?> ">
									<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
										<?php echo $picture;?>
									</a>
									
									<div class="desc">
									<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
										<h4 class="title">
											<?php echo $name_item;?>
										</h4>
									</a>	
										<?php echo $synopsis;?> 
										<?php //echo $cat_name;?> 
										<?php echo $date;?> 
										<?php echo $like.$comment;?> 
									</div>
									 
									<div class="clr"></div>
								</div> 
								<?php }?>
							<?php }elseif ($key==1){?>	
									<?php if($key_item<3){?>
										<div class="item <?php echo $class;?> ">
											<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
												<?php echo $picture;?>
											</a>
											
											<div class="desc">
												<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
													<h4 class="title">
														<?php echo $name_item;?>
													</h4>
												</a>	
												
												<?php echo $synopsis;?> 
												<?php //echo $cat_name;?> 
												<?php echo $date;?> 
												<?php echo $like.$comment;?> 
											</div>
											 
											<div class="clr"></div>
										</div> 
										<?php }?>
							<?php }elseif ($key==2){?>
									<?php if($key_item<4){?>
									<div class="item <?php echo $class;?> ">
										<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
											<?php echo $picture;?>
										</a>
										
										<div class="desc">
											<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
												<h4 class="title">
													<?php echo $name_item;?>
												</h4>
											</a>	
											<?php echo $synopsis;?> 
											<?php //echo $cat_name;?> 
											<?php echo $date;?> 
											<?php echo $like.$comment;?> 
										</div>
										 
										<div class="clr"></div>
									</div> 
									<?php }?>	
								
							<?php }else{?>
								<div class="item <?php echo $class;?>">
									<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
										<?php echo $picture;?>
									</a>
									
									<div class="desc">
										<a href="<?php echo $linkDetial_item;?>" title="<?php echo $name_item;?>">
											<h4 class="title">
												<?php echo $name_item;?>
											</h4>
										</a>	
										
										<?php echo $synopsis;?> 
										<?php //echo $cat_name;?> 
										<?php echo $date2;?> 
										<?php echo $like.$comment;?> 
									</div>
									 
									<div class="clr"></div>
								</div>
							
							<?php }?>
		<?php
			} 
		} 
      	?>
      	<div class="clr"></div>
 	</div> 
</div>
<?php 
	}
?>
</div>
<div class="clr"></div>
