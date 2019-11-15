<?php
     $name = $row_new[0]['name']; 
     $imgName =  $row_new[0]['picture'] ;
     $synopsis= $row_new[0]['synopsis'] ;
     $urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $row_new[0]['cat_id'], 'tcat' => $row_new[0]['category_alias'], 'title' => $row_new[0]['alias'], 'id' => $row_new[0]['id'] );	
     $linkDetial = $view->url ( $urlOptions, 'article-detail' );
?>
<section class="jumbo home-news hidden-xs">
		<div class="container">
			<div class="row">
                <div class="col-sm-6">
                    <div class="widget">
                        <h2 class="widget-title">Bài viết mới nhất</h2>
                        <div class="lead">
                        <img src="<?php echo "/diachianchoi".$imgName; ?>" class="attachment-200x150 wp-post-image" alt="Colorful-abstract-objects-background-vector-4" height="150" width="184">								
                        <h3><a href="<?php echo $linkDetial; ?>"><?php echo $name; ?></a></h3>
									<p><?php echo $synopsis; ?></p>
									<p class="alignright"><a href="<?php echo $linkDetial; ?>" class="more">Xem chi tiết &gt;&gt; </a></p>
                        </div><!-- end lead !-->
                    </div>
                </div><!-- end col-sm-6 !-->
                <div class="col-sm-3">
                    <div class="widget">
			         <h2 class="widget-title">Kiến thức chuyên đề</h2>
                     <ul class="list-none">
                    <?php
                    foreach ( $row as $key => $val ) {
                    		
                    	$name = $val ['name'];
                    	//$imgName = explode ( '/editor-upload/images/', $val ['picture'] );
                    	//$picture = '<img src="' . APPLICATION_URL . '/default/public/view-image/width/100/height/100/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
                    		
                    	$urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );	
                    	$linkDetial = $view->url ( $urlOptions, 'article-detail' );
                        ?>
                             <li><a href="<?php echo $linkDetial; ?>"><?php echo $name; ?></a></li>
                        <?php
                     }
                    ?>
                           
                        </ul>
			         </div>
                </div><!-- end col-sm-3 !-->
                    
                <div class="col-sm-3">
                    <div class="widget">
                        <h2 class="widget-title">Tin tức mới</h2>
                        <ul class="list-thumb">
                            <?php
                    foreach ( $row_new as $key_moi => $val_moi ) {
                    		
                    	$name = $val_moi ['name'];
                    	$imgName =  $val_moi['picture'];
                    	$urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val_moi ['cat_id'], 'tcat' => $val_moi ['category_alias'], 'title' => $val_moi ['alias'], 'id' => $val_moi ['id'] );	
                    	$linkDetial = $view->url ( $urlOptions, 'article-detail' );
                        ?>
                            <li>
                            <a href="<?php echo $linkDetial; ?>">
                            <img src="<?php echo "/diachianchoi".$imgName; ?>" class="attachment-75x75 wp-post-image" alt="Colorful-abstract-objects-background-vector-4" height="61" width="75"> <?php echo $name; ?></a>
                            <div class="clearfix"></div> 
                         </li>
                        <?php
                     }
                    ?>
                        
                        </ul>
                    </div>
                </div><!-- end col-sm-3 !-->
            </div><!-- end row !-->
        </div><!-- end container !-->
</section>
       