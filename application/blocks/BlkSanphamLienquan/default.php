<?php
    // die("das");
foreach ($row as $key => $val){
	//$name = $val['name'];
//	$code = '';
//	if($val['code'] != ''){
//		$code = '<p class="code">'.$view->language['productMaSanPham'].': ' . $val['code'] . '</p>';
//	}
//	$picture = '<img class="img" src="' . $val['picture'] . '" alt="'.$val['name'].'"/>';
//		
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
//		$linkCart = $view->baseUrl('diadiem/public/add-item/id/' . $val['id']);
//		$addCart = '<a href="'.$linkCart.'" title="'.$view->language['diadiemDatCho'].' '.$name.'" class="addCart" rel="nofollow">'.$view->language['diadiemDatCho'].'</a>';
//	}
		
	$urlOptions = array (
			'module' => 'product',
			'controller' => 'index',
			'action' => 'detail',
			'title' => $val ['alias'],
			'id' => $val ['id'] );
	$linkDetial = $view->url($urlOptions, 'diadiem-detail' );
    //var_dump($linkDetial);die;
?>
    <div class="item">
	    <div class="image">
	    	<a href="<?php echo $linkDetial; ?>"><img src="<?php echo $val['picture']; ?>" alt="<?php echo $val['name']; ?>"></a>
	    </div>
    	<div class="info">
    		<p class="name"><a href="<?php echo $linkDetial; ?>"><?php echo $val['name']; ?></a></p>
    		<p class="sku"><a href="<?php echo $linkDetial; ?>"><?php echo $val['code']; ?></a></p>
    		<p class="price"><?php echo Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) ." " . $val['units_money'] ; ?></p>
    	</div>
    </div>		    
<?php } ?>
				    
