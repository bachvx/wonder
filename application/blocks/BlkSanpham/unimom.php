 <?php 
if(count($row)>0){
    foreach ($row as $key => $val){
    //var_dump($val);die;
    if($language->lang=='vi'){
        $name = $val['name'];    
    }else{
        $name = $val['name_en'];
    }
	//$code = '';
	//if($val['code'] != ''){
//		$code = '<p class="code">'.$view->language['productMaSanPham'].': ' . $val['code'] . '</p>';
//	}
	//$picture = '<img class="item-1 active" src="' . $val['picture'] . '" alt="'.$val['name'].'"/>';
    $imgName 		= explode ( '/public/files/editor-upload/images/', $val['picture'] );
    //var_dump($imgName);die;
	$picture 		= '<img class="item-1 active" src="' . APPLICATION_URL . '/default/public/view-image/width/400/height/400/images/' . $imgName [1] . '" alt="' . $val ['name'] . '"/>';
		
//	$synopsis = $val['synopsis'];
//	$units_money = $val['units_money'];
//	$price = '';
//	
//	if($val['price'] != 0){
//		$price = '<p class="price">'.$view->language['diadiemGia'].': <span class="value">'.Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money.'</span></p>';
//	}else{
//		$price = '<p class="price">'.$view->language['diadiemGia'].': <span class="value">'.$view->language['lienHe'].'</span></p>';
//	}
//	
//	$selloff = '';
//	if($val['selloff'] > 0){
//		$selloff = '<p class="d_cat_name"><span>' . $val['selloff'] . '%</span></p>';
//	}
//	
//	$addCart = '';
//	if($moduleConfig['showAddCart'] == 1){
//		
//	}
//	$linkCart = $view->baseUrl('product/public/add-item/id/' . $val['id']);
//	$addCart = '<a href="'.$linkCart.'" title="'.$view->language['diadiemDatCho'].' '.$name.'" class="btn btn-cta add-to-card" rel="nofollow">'.$view->language['diadiemDatCho'].'</a>';
    // var_dump($val);die;   	
	$urlOptions = array (
			'module' => 'product',
			'controller' => 'index',
			'action' => 'categorypage',
            'title' => $val ['alias'],
			'cid' => $val['id'],
            'manu-id'=>$arr['id'] );
	$linkDetial = $view->url($urlOptions, 'product-page' );
    //var_dump($linkDetial);die;
    $linkchitiet = '<a href="'.$linkDetial.'" title="'.$view->language['chitiet'].' '.$name.'" class="btn btn-cta add-to-card" rel="nofollow">'.$view->language['chitiet'].'</a>';
    ?>
        <div class="item unimom">
        	<a href="<?php echo $linkDetial;?>"><img src="<?php echo $val['picture'];?>" alt="unimom"></a>
        	<h3><a href="<?php echo $linkDetial;?>"><?php echo $name;?></a></h3>
        </div>
        
        
    <?php
    }
}
?>
