
<div class="b__banner b__banner--height">  
 <p class="b__banner--title"><?php echo $view->language['wonderSlogan']; ?></p>
  <div id="slideBanner" class="b__banner--slide owl-carousel">
    <?php
        $picture_multi = unserialize($row[0]['picture_multi']);
    	foreach ($picture_multi AS $key => $val){
    	   echo '<div class="b-items"><img class="img_pc" src="'.$val[0].'" alt="'.$val_category['name'].'"  width="100%"></div>';
        }	
    ?>
  </div> 
  <div id="slideBannerMobile" class="b__banner--slide owl-carousel">  
    <?php
        $picture_multi_mobile = unserialize($row[0]['picture_multi_mobile']);
    	foreach ($picture_multi_mobile AS $key => $val){
    	   echo '<div class="b-items"><img class="img_mb" src="'.$val[0].'" alt="'.$val_category['name'].'"  width="100%"></div>';
        }	
    ?>
  </div> 
  