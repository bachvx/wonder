 <div class="block_articles row_content"> 
<?php  ?>
	<!--end-->
	
<div class="clear"></div>
<?php 
$urlOptionsCategory = array('module'=>'article','controller'=>'index','action'=>'category', 'cid'=>$categories['id'], 'alias'=>$categories['alias'],); 
$linkCategory = $view->url($urlOptionsCategory,'article-category');
echo '<h1 class=""><a href="'.$linkCategory.'" title="'.$categories['name'].'">'.$categories['name'].'<span class="icon"></span></a></h1>';
?>
	<div class="items <?php echo $categories['alias'];?>" >
				<?php  
					foreach ( $row as $key => $val ) { 
						$excerpt='';
						$imgName='';
						$picture='';
						$list='';
						$start='';
						$excerpt 		= $val['synopsis'];
						if($key == 0){ $start = 'start'; 
							$imgName 		= explode ( '/editor-upload/images/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
						}else{
							$list 			='list';
							$imgName 		= explode ( '/editor-upload/images/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/80/height/60/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
						}
						$classRow='';
						if($key % 2 == 0){ $classRow = 'row1';}else{ $classRow = 'row2';}
							
						 
							$name 			= $val['name'];
							$created 		= $val['created'];
							$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
							$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
					?>
						<?php if($key == 0){?>
						<div class="<?php echo $classRow.' '.$start.' '.$key.' '.$list;?>">
							<div class="item-article">
								<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $picture;?></a>
								<div class="title">
									<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?> class="<?php echo $start;?>" title="<?php echo $name;?>"><?php echo $name;?></a>
								</div>
								<div class="excerpt">
									<?php echo $excerpt; ?>  
								<p class="created">Đăng ngày : <span class="date"><?php  echo date("d-m-Y", strtotime($created));?></span></p>
								</div>
							</div>
						</div> 
						<?php }else{?>
						<div class="<?php echo $classRow.' '.$start.' '.$key.' '.$list;?>">
							<div class="images"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $picture;?></a></div>
							<div class="name"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><h2><?php echo $name;?></h2></a></div>
							<div class="excerpt">
									<?php echo $excerpt; ?>
							</div>
							<p class="created">Đăng ngày : <span class="date"><?php  echo date("d-m-Y", strtotime($created));?></span></p>
						<div class="clear"></div>
						</div>						
						<?php }?>
						
					<?php  }  ?>	
		</div>
<?php   ?>
		 
</div>
<style>  
.block_articles.row_content{width:100%;float: left;margin-bottom: 15px;} 
.block_articles.row_content h1{color: #000;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif;padding: 5px 0px;border-bottom:2px solid #CF0000;margin-bottom: 10px;} 
.block_articles.row_content h1 a{text-transform:uppercase; line-height: 19px;color: #fff;font-size: 14px;font-weight: normal;background:#CF0000; padding:5px; font-family: Arial,Sans-serif; } 
.block_articles.row_content img{float: right;padding-bottom: 5px;width: 100%!important;height:auto !important}
.block_articles.row_content .items .item{}
.block_articles.row_content .items{float: left; background:#fff !important;height:auto; }
.block_articles.row_content .items .row1{ float: left!important;}
.block_articles.row_content .items .row1.start {width: 320px;margin-right:20px;}
.block_articles.row_content .items .item-article .title{float: left; height: auto;  margin: 0; width: 100%;}
.block_articles.row_content .items .item-article .title a{color: #000;font-size: 12px;font-weight: bold;margin-bottom: 5px;line-height: 15px;float: left;}
/**.block_articles.row_content .items .item.row2{margin-left:20px;}*/
.block_articles.row_content .items .item img{width: 385px;height: 170px;}
.block_articles.row_content .items .item img:hover{opacity:0.5;}
.block_articles.row_content .items .item .item-article{background: #FFFFFF !important;height:auto;padding: 10px;}
.block_articles.row_content .items .item .item-article .title a{color: #000;font-size: 14px;font-weight: bold;font-family: "HelveticaNeue","Helvetica Neue",Arial,sans-serif;line-height: 16px;margin-bottom: 10px;float: left;}
.block_articles.row_content .items .item .item-article .excerpt{color: #000;font-family: "HelveticaNeue","Helvetica Neue",Arial,sans-serif;line-height: 15px;}
.block_articles.row_content .items .list{margin:0px 0px 20px 0px;float: left;}
.block_articles.row_content .items .list .images{float: left;width:80px;height:60px; margin: 0px 10px;padding: 5px;border: 1px solid #ccc;}
.block_articles.row_content .items .list .created{text-align: right;color: #000;}
.block_articles.row_content .items .list .images img{width:80px !important;height:60px !important;}
.block_articles.row_content .items .list .name{ padding-left: 10px;}
.block_articles.row_content .items .list .name h2{color: #000;font-size: 12px;font-weight: bold;}
.block_articles.row_content .items .list .name h2:hover{color: #cc0000}
.block_articles.row_content .excerpt{color: #000;width: 315px;text-align: justify; }
.block_articles.row_content .list .excerpt{padding-left: 10px; }
</style>