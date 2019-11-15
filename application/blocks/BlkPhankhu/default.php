<?php
    $catchuoi = new Zendvn_Filter_CutString(50);
     $language = new Zend_Session_Namespace('language');
    foreach($row as $key => $val){
        //die("a");
       // var_dump($val['name']);die;
       $number=$key + 1;
        $urlOptions = array (
					'module' => 'dichvu',
					'controller' => 'index',
					'action' => 'phankhu',
					'alias' => $val['alias'],
					'id' => $val['id']);
                    $linkDetial = $view->url($urlOptions,'phankhu-page');
                    
                    if($language->lang == 'vi'){
                        $synopsis = $catchuoi->filter($val['synopsis']);
                        $html.='<li><a href="'.$linkDetial.'">'.$view->language['wonderphankhu'].' <br/> '.$val['name'].'</a></li>';
                        $html2.='<div class="b__phankhu--items">
                                  <img class="img_pc" src="'.$val['picture'].'">
                                  <img class="img_mb" src="'.$val['picture_mobile'].'">
                                  <div class="b__phankhu--caption b__phankhu--caption-bg'. $number .'">
                                    <h3>'.$view->language['wonderphankhu'].'<br/> '.$val['name'].'</h3>
                                    <p>'.$synopsis.'</p>
                                    
									<div class="viewmore"><a href="'.$linkDetial.'">'.$view->language['xemthem'].'<!--i class="fas fa-long-arrow-alt-right"></i--></a></div> 
                                  </div>
                                </div><!-- end .b__phankhu--items-->';
                    }else{
                        $synopsis = $catchuoi->filter($val['synopsis_en']);
                        $html.='<li><a href="'.$linkDetial.'">'.$view->language['wonderphankhu'].' <br/> '.$val['name_en'].'</a></li>';
                        $html2.='<div class="b__phankhu--items">
                                  <img src="'.$val['picture'].'" />
                                  <div class="b__phankhu--caption">
                                    <h3>'.$view->language['wonderphankhu'].'<br/> '.$val['name_en'].'</h3>
                                    <p>'.$synopsis.'</p>
                                    <div class="viewmore"><a href="'.$linkDetial.'">'.$view->language['xemthem'].'<!--i class="fas fa-long-arrow-alt-right"></i--></a></div> 
                                  </div>
                                </div><!-- end .b__phankhu--items-->';
                    }
                   
    }
?>
<div class="b__menu--click">  
    <div class="containers">
      <ul>
        <?php echo $html; ?>
        
      </ul>  
    </div>
  </div>
</div>  
<div class="b__text--box">
        <div class="containers">
        <?php
            if($language->lang == 'vi'){
               echo htmlspecialchars_decode($row1['content']); 
               
            }else{
               echo htmlspecialchars_decode($row1['content_en']); 
            }
        ?> 
        
        <div class="b__button text-center">
           <a href="tong-quan"> <button class="btn btn-view"><?php echo $view->language['xemChiTiet']; ?></button></a>
        </div>
    </div>
</div>
<div class="b__phankhu mg50">
  <div class="containers">
    <div class="b__title--top">
      <h3><?php echo $view->language['wonderStatus']; ?></h3>
    </div>
  </div> 

  <div id="phankhuSlide" class="owl-carousel">
    <?php echo $html2; ?>
  </div>
</div>