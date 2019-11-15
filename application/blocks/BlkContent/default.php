<?php
     $name = $row_new[0]['name']; 
     $imgName =  $row_new[0]['picture'] ;
     $synopsis= $row_new[0]['synopsis'] ;
     $urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $row_new[0]['cat_id'], 'tcat' => $row_new[0]['category_alias'], 'title' => $row_new[0]['alias'], 'id' => $row_new[0]['id'] );	
     $linkDetial = $view->url ( $urlOptions, 'article-detail' );
?>
<div class="galcolumn">
    <?php
        foreach ( $row as $key => $val ) {
        	$imgName =  $val['picture'] ;
            $synopsis= $val['synopsis'] ;	
        	$name = $val ['name'];
        	//$imgName = explode ( '/editor-upload/images/', $val ['picture'] );
        	//$picture = '<img src="' . APPLICATION_URL . '/default/public/view-image/width/100/height/100/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
        		
        	$urlOptions = array ('module' => 'article', 'controller' => 'index', 'action' => 'detail', 'cid' => $val ['cat_id'], 'tcat' => $val ['category_alias'], 'title' => $val ['alias'], 'id' => $val ['id'] );	
        	$linkDetial = $view->url ( $urlOptions, 'article-detail' );
            ?>
                
                
                 <article class="post type-post status-publish format-image hentry category-news tag-egypt tag-flickr tag-tinou-bao tile text-left" role="article">
        <section class="tile-content-wrap">        
 			<figure class="featured-preview">
        		<a href="<?php echo $imgName; ?>" class="cboxElement" rel="nofollow" title="<?php echo $name; ?>"><img src="<?php echo $imgName; ?>" class="colorbox-1822902" alt="<?php echo $name; ?>"></a>
        	</figure>	
            <section>
            	<header>
            		<h2 class="entry-title"><a href="<?php echo $linkDetial; ?>" rel="bookmark" title="<?php echo $name; ?>"><?php echo $name; ?></a></h2><span class="liner"><span class="fatter"></span></span>			
            		<div class="entry-meta">
            			<span class="formats pf-image"><a href="<?php echo $linkDetial; ?>">Image</a></span><span class="entry-date">Feb 8, 2013</span><span class="perma">
                            <a href="<?php echo $linkDetial; ?>" rel="bookmark" title="<?php echo $name; ?>">permalink</a>
                        </span>
                    </div>            
            	</header> <!-- end article header --> 
            	<section class="entry-content">
            	   <p><?php echo $synopsis; ?></p>
            	</section> <!-- end article section -->
            	<footer>
            		<span class="like-me"><a href="javascript:void(0);" class="like-this-post" data-id="2159" title="Like this post?"><span>214</span> likes</a></span>				<span class="entry-comments"><a href="http://thewall.sofarider.com/news/egypt-by-tinou-bao/#comments" title="Comment on Egypt by tinou bao">1 comment</a></span>
            	</footer>
            </section>
        </section>
    </article>
            <?php
         }
    ?>
  <div id="clearwsdBT" style="clear: both; height: 0px; width: 0px; display: block;"></div>  
</div>






       