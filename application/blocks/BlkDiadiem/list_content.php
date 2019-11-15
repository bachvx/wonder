<div class="clear"></div> 
<div class="block_articles list_content"> 
<?php  ?>
	<!--end-->
	
<div class="clear"></div>
<?php 
$urlOptionsCategory = array('module'=>'article','controller'=>'index','action'=>'category','alias'=>$categories['alias']);
$linkCategory = $view->url($urlOptionsCategory,'article-category');
echo '<h2 class=""><a href="'.$linkCategory.'" title="'.$categories['name'].'">'.$categories['name'].'</a></h2><div class="header-gimmick"></div>';
?>
	<div class="items">
				<?php 
					foreach ( $row as $key => $val ) { 
						if($key == 0){ $start = 'start'; }
						$classRow='';
						if($key % 2 == 0){ $classRow = 'row1';}else{ $classRow = 'row2';}
							
						 
							$name 			= $val['name'];
							$synopsis 		= $val['synopsis'];
							$created 		= $val['created'];
							$imgName 		= explode ( '/editor-upload/picture/', $val['picture'] );
							$picture 		= '<img src="' . APPLICATION_URL . '/default/public/view-image/width/300/height/160/picture/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
							$urlOptions 	= array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );
							$linkDetial 	= $view->url ( $urlOptions, 'article-detail' );
							$start = '';
					?>
						<div class="item <?php echo $classRow.$start;?>">
							<div class="item-article">
								<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $picture;?></a>
								<div class="title">
									<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?> class="<?php echo $start;?>" title="<?php echo $name;?>"><?php echo $name;?></a>
								</div>
								<div class="synopsis">
									<?php echo $synopsis; ?> <a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>" style="color: #EF7F2C">[..]</a>
									<p class="created">Đăng ngày : <?php  echo date("d-m-Y", strtotime($created));?></p>
								</div>
							</div>
						</div> 
					<?php  }  ?>	
		</div>
<?php   ?>
		 
</div>
<div class="clear"></div>
<style>  
.block_articles.list_content{width:100%;float: left;} 
.block_articles.list_content .header-gimmick{background: url("<?php echo $view->imgUrl;?>/header-gimmick.png") repeat-x scroll 0 8px rgba(0, 0, 0, 0)} 
.block_articles.list_content h2{color: #000;font-size: 16px;font-weight: normal;font-family: Arial,Sans-serif;padding: 5px 0px;border-bottom:2px solid #CF0000;margin-bottom: 10px;} 
.block_articles.list_content h2 a{text-transform:uppercase; color: #000;font-size: 16px;font-weight: bold;font-family: Arial,Sans-serif; } 
.block_articles.list_content img{float: left;padding-bottom: 5px;width: 100%!important;height:auto !important}
.block_articles.list_content .items {}
.block_articles.list_content .items .item{float: left;border:solid 1px #DADADA;background:#F8F8F8 !important; width:283px;height: 336px;padding: 10px;margin-bottom: 10px;}
.block_articles.list_content .items .item.row1{}
.block_articles.list_content .items .item.row2{margin-left:20px;}
.block_articles.list_content .items .item img{width: 385px;height: 170px;}
.block_articles.list_content .items .item img:hover{opacity:0.5;}
.block_articles.list_content .items .item .item-article{background: #FFFFFF !important;height:320px;padding: 10px;}
.block_articles.list_content .items .item .item-article .title a{color: #000;font-size: 14px;font-weight: bold;font-family: "HelveticaNeue","Helvetica Neue",Arial,sans-serif;line-height: 16px;margin-bottom: 10px;float: left;}
.block_articles.list_content .items .item .item-article .synopsis{color: #000;font-family: "HelveticaNeue","Helvetica Neue",Arial,sans-serif;line-height: 15px;}
</style>