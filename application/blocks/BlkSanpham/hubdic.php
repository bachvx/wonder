 <?php 
if(count($row)>0){
    $count=count($row);
    
    foreach ($row as $key => $val){
    $name = $val['name'];
	$code =$val['code'];
    $imgName 		= explode ( '/public/files/editor-upload/images/', $val['picture'] );
	$picture 		= '<img class="item-1 active" src="' . APPLICATION_URL . '/default/public/view-image/width/400/height/400/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
	$units_money = $val['units_money'];	
	$urlOptions = array (
			'module' => 'product',
			'controller' => 'index',
			'action' => 'detail',
            'title' => $val ['alias'],
			'id' => $val ['id'] );
	$linkDetial = $view->url($urlOptions, 'diadiem-detail' );
    $linkchitiet = '<a href="'.$linkDetial.'" title="'.$view->language['chitiet'].' '.$name.'" class="btn btn-cta add-to-card" rel="nofollow">'.$view->language['chitiet'].'</a>';
   // var_dump($key);
    if($count%2<>0 and $key==$count-1){// kiểm tra nếu bản ghi lẻ thì </div> riêng để tránh bị thiếu div ảnh hưởng đến modal video youtube
     ?>
     
        <div class="item-db">
            <div class="item-sp hubdic">
    			<div class="image">
    				<a href="<?php echo $linkDetial;?>"><img src="<?php echo $val['picture'];?>" alt="<?php echo $name;?>"></a>
    			</div>
    			<div class="info">
    				<h3><a href="<?php echo $linkDetial;?>"><?php echo $name;?></a></h3>
    				<p class="sku"><?php echo $view->language['productMaSanPham']; ?>: <?php echo $code;?></p>
    				<p class="price"><?php echo Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money; ?></p>
    			</div>
    		</div>
        </div>
     <?php   
    }else{
        if($key%2==0){
            
        ?>    
          <div class="item-db">
    			<div class="item-sp hubdic">
    				<div class="image">
    					<a href="<?php echo $linkDetial;?>"><img src="<?php echo $val['picture'];?>" alt="<?php echo $name;?>"></a>
    				</div>
    				<div class="info">
    					<h3><a href="<?php echo $linkDetial;?>"><?php echo $name;?></a></h3>
    					<p class="sku"><?php echo $view->language['productMaSanPham']; ?>: <?php echo $code;?></p>
    					<p class="price"><?php echo Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money; ?></p>
    				</div>
    			</div>
          <?php  
        }else{
        ?>        
              <div class="item-sp hubdic">
        			<div class="image">
        				<a href="<?php echo $linkDetial;?>"><img src="<?php echo $val['picture'];?>" alt="<?php echo $name;?>"></a>
        			</div>
        			<div class="info">
        				<h3><a href="<?php echo $linkDetial;?>"><?php echo $name;?></a></h3>
        				<p class="sku"><?php echo $view->language['productMaSanPham']; ?>: <?php echo $code;?></p>
        				<p class="price"><?php echo Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money; ?></p>
        			</div>
        		</div>
          </div>
        <?php    
        }
   }
 }
}
?>