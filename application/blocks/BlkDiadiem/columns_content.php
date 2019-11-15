
<div class="block_articles columns_content <?php echo $categories['alias'];?>"> 
<?php  ?>
	<!--end-->
	
<?php 

$urlOptionsCategory = array('module'=>'article','controller'=>'index','action'=>'category', 'cid'=>$categories['id'], 'alias'=>$categories['alias'],);
$linkCategory = $view->url($urlOptionsCategory,'article-category');
echo '<h3 class=""><a href="'.$linkCategory.'" title="'.$categories['name'].'">'.$categories['name'].'<span class="icon"></span></a></h3>';
?>
	<div class="items <?php echo $categories['alias'];?>" >
				<?php  
					foreach ( $row as $key => $val ) { 
						$synopsis='';
						$imgName='';
						$picture='';
						$list=''; 
						$synopsis 		= $val['synopsis'];
					if($key == 0){ $start = 'start'; 
							$imgName 		= explode ( '/editor-upload/images/', $val['picture'] );
							$picture 		= '<div class="images_1"><img src="' . APPLICATION_URL . '/default/public/view-image/width/600/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/></div>';
						}else{
							$list 			='list';
							$imgName 		= explode ( '/editor-upload/images/', $val['picture'] );
							$picture 		= '<div class="images_2"><img src="' . APPLICATION_URL . '/default/public/view-image/width/80/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/></div>';
						}
						$classRow='';
						if($key % 2 == 0){ $classRow = 'row1';}else{ $classRow = 'row2';}
							
						 
							$name 			= $val['name'];
							$created 		= $val['created'];
							$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
							$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
							$start = '';
					?>
						<?php if($key == 0){?>
						<div class="<?php echo $classRow.' '.$start.' key_'.$key.' '.$list;?>">
							<div class="item-article">
								<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $picture;?></a>
								<div class="title">
									<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?> class="<?php echo $start;?>"><?php echo $name;?></a>
								</div>
								<div class="synopsis">
									<?php echo $synopsis; ?> 
									<p class="created">Đăng ngày : <?php  echo date("d-m-Y", strtotime($created));?></p>
								</div>
							</div>
						</div> 
						<?php }else{?>
						<div class="<?php echo $classRow.' '.$start.' '.$key.' '.$list;?>">
							<div class="picture"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $picture;?></a></div>
							<div class="name"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><h2><?php echo $name;?></h2></a></div>
							<p class="created">Đăng ngày : <?php  echo date("d-m-Y", strtotime($created));?></p>
						<div class="clear"></div>
						</div>						
						<?php }?>
					<?php  }  ?>	
		</div>
<?php   ?>
		 
</div>
<style>  
.block_articles.columns_content{width:320px;float: left;} 
.block_articles.columns_content .items .key_0 .item-article{height: 275px; overflow: hidden;} 
  
.block_articles.columns_content h3{color: #000;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif;padding: 5px 0px;border-bottom:2px solid #CF0000;margin-bottom: 10px;} 
.block_articles.columns_content h3 a{line-height: 19px;text-transform:uppercase;color: #fff;font-size: 14px;font-weight: normal;background:#CF0000; padding:5px;font-family: Arial,Sans-serif; } 
.block_articles.columns_content img{float: left;padding-bottom: 5px;width: 100%!important;height:auto !important}
.block_articles.columns_content .items .item{color:#000}
.block_articles.columns_content .items{float: left;min-height:450px;;margin-bottom: 15px;}
.block_articles.columns_content .items .row1{margin-bottom: 10px;float: left;}
.block_articles.columns_content .items .item-article .title a{color: #000;font-size: 12px;font-weight: bold;margin-bottom: 5px;line-height: 15px;float: left;}
/**.block_articles.columns_content .items .item.row2{margin-left:20px;}*/
.block_articles.columns_content .items .item img{width: 385px;height: 170px;}
.block_articles.columns_content .items .item img:hover{opacity:0.5;}
.block_articles.columns_content .items .item .item-article{background: #FFFFFF !important;height:auto;padding: 10px;}
.block_articles.columns_content .item-article .title {float: left;width:100%;}
.block_articles.columns_content .items .item .item-article .title a{color: #000;font-size: 14px;font-weight: bold;font-family: "HelveticaNeue","Helvetica Neue",Arial,sans-serif;line-height: 16px;margin-bottom: 10px;float: left;}
.block_articles.columns_content .items .item .item-article .synopsis{color: #000;font-family: "HelveticaNeue","Helvetica Neue",Arial,sans-serif;line-height: 15px;}
.block_articles.columns_content .items .list{margin: 5px 0px;width:100%; float: left;}
.block_articles.columns_content .items .item-article .images_1{height: 240px;overflow: hidden;}
.block_articles.columns_content .items .list .picture{float: left;width:80px;height:60px;margin:0 10px 0px 0px;padding: 5px;border: 1px solid #ccc; }
.block_articles.columns_content .items .list .picture img{width:80px !important;height: 60px !important;}
.block_articles.columns_content .items .list .name{}
.block_articles.columns_content .items .list .created{}
.block_articles.columns_content .items .list .name h2{color: #000;font-size: 12px;font-weight: bold;}
.block_articles.columns_content .items .list .name h2:hover{color: #cc0000}
</style>