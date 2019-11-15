 
<div class="block_articles row2_content"> 
<?php  ?>
	<!--end-->
	
<div class="clear"></div>
<?php 
$urlOptionsCategory = array('module'=>'article','controller'=>'index','action'=>'category','alias'=>$categories['alias']);
$linkCategory = $view->url($urlOptionsCategory,'article-category');
echo '<h3 class=""><a href="'.$linkCategory.'" title="'.$categories['name'].'">'.$categories['name'].'</a></h3><div class="header-gimmick"></div>';
?>
	<div class="items <?php echo $categories['alias'];?>" >
				<?php 
					foreach ( $row as $key => $val ) { 
						$synopsis='';
						$imgName='';
						$picture='';
						$list='';
						if($key == 0){ $start = 'start'; $synopsis 		= $val['synopsis']; 
							$imgName 		= explode ( '/editor-upload/picture/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
						}else{
							$list 			='list';
							$imgName 		= explode ( '/editor-upload/picture/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/100/height/100/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
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
						<div class="<?php echo $classRow.' '.$start.' '.$key.' '.$list;?>">
							<div class="item-article">
								<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $picture;?></a>
								<div class="title">
									<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?> class="<?php echo $start;?>" title="<?php echo $name;?>"><?php echo $name;?></a>
								</div>
								<div class="synopsis">
									<?php echo $synopsis; ?> <a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>" style="color: #EF7F2C">[..]</a>
								</div>
							</div>
						</div> 
						<?php }else{?>
						<div class="<?php echo $classRow.' '.$start.' '.$key.' '.$list;?>">
							<div class="picture"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $picture;?></a></div>
							<div class="name"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><h2><?php echo $name;?></h2></a></div>
						<div class="clear"></div>
						</div>						
						<?php }?>
					<?php  }  ?>	
		</div>
<?php   ?>
		 
</div>
<style>  
.block_articles.row2_content{width:300px;float: left;} 
.block_articles.row2_content .header-gimmick{background: url("<?php echo $view->imgUrl;?>/header-gimmick.png") repeat-x scroll 0 8px rgba(0, 0, 0, 0)} 
.block_articles.row2_content h3{color: #43494c;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif;padding: 5px 0px;border-bottom:1px solid #E9E9E9;margin-bottom: 10px;} 
.block_articles.row2_content h3 a{color: #43494C;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif; } 
.block_articles.row2_content img{float: left;padding-bottom: 5px;width: 100%!important;height:auto !important}
.block_articles.row2_content .items .item{}
.block_articles.row2_content .items{float: left;border:solid 1px #DADADA;background:#F8F8F8 !important; width:283px;height:auto;padding: 10px;}
.block_articles.row2_content .items .row1{margin-bottom: 10px;float: left;}
.block_articles.row2_content .items .item-article .title a{color: #000;font-size: 12px;font-weight: bold;margin-bottom: 10px;line-height: 15px;float: left;}
/**.block_articles.row2_content .items .item.row2{margin-left:20px;}*/
.block_articles.row2_content .items .item img{width: 385px;height: 170px;}
.block_articles.row2_content .items .item img:hover{opacity:0.5;}
.block_articles.row2_content .items .item .item-article{background: #FFFFFF !important;height:auto;padding: 10px;}
.block_articles.row2_content .items .item .item-article .title a{color: #000;font-size: 14px;font-weight: bold;font-family: "HelveticaNeue","Helvetica Neue",Arial,sans-serif;line-height: 16px;margin-bottom: 10px;float: left;}
.block_articles.row2_content .items .item .item-article .synopsis{color: #000;font-family: "HelveticaNeue","Helvetica Neue",Arial,sans-serif;line-height: 15px;}
.block_articles.row2_content .items .list{margin: 5px 0px;float: left;}
.block_articles.row2_content .items .list .picture{float: left;width:80px;height: 80px; }
.block_articles.row2_content .items .list .picture img{width:80px !important;height: 80px !important;}
.block_articles.row2_content .items .list .name{float: right;width: 185px;padding-left: 10px;}
.block_articles.row2_content .items .list .name h2{color: #000;font-size: 12px;font-weight: bold;}
</style>