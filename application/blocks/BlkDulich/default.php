<div class="b__dulich mg50">
  <div class="containers">
    <div class="b__title--top">
      <h3><?php echo $view->language['wonderDulich']; ?></h3>
    </div>
  </div>
<div id="dulichSlide" class="owl-carousel b__dulich--slide">
<?php
     $language = new Zend_Session_Namespace('language');
    foreach($row as $key => $val){
        if($language->lang == 'vi'){
            $name=$val['name'];
        }else{
            $name=$val['name_en'];
        }
        $picture=$val['picture'];
        $picture_mobile=$val['picture_mobile'];
        $urlOptions = array (
					'module' => 'dichvu',
					'controller' => 'index',
					'action' => 'dulich',
					'alias' => $val['alias'],
					'id' => $val['id']);
                    $linkDetial = $view->url($urlOptions,'dulich-detail');
        if($key%2==0){
            echo '<div class="b__dulich--items">
                      <a href="'.$linkDetial.'">
                        <img class="img_pc" src="'.$picture.'" />
                        <img class="img_mb" src="'.$picture_mobile.'" />
                        <div class="b__dulich--caption">
                          <h3>'.$name.'</h3> 
                        </div>
                      </a>
                    </div><!-- end .b__dulich--items-->';
        }else{
            echo '<div class=" b__dulich--items b__dulich--bg">
                  <a href="'.$linkDetial.'">
                    <div class="b__dulich--caption">
                      <h3>'.$name.'</h3> 
                    </div>
                    <img class="img_pc" src="'.$picture.'" />
                    <img class="img_mb" src="'.$picture_mobile.'" />
                  </a>
                </div><!-- end .b__dulich--items-->';
        }
                   
                   
    }
?>
  </div>
</div>