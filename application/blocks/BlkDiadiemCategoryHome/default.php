<div class="home_category">
<div class="home_category_title">
	<h2>Xem - Ăn - chơi</h2>
</div>
<?php
	$getFB= new Default_Model_Fbcount();
	foreach ($row AS $key_category => $val_category){
		$urlOptionsCategory = array('module'=>'diadiem','controller'=>'index','action'=>'category',
				'cid'=>$val_category['id'],
				'alias'=>$val_category['alias'],
		);
		$linkCategory = $view->url($urlOptionsCategory,'diadiem-category');
		$nameCategory = $val_category['name'];
		if($key_category==2){echo '<div class="open fleft">';} 
?>

<div class="block_diadiemHome <?php echo $val_category['alias']; ?> block_diadiemHome_<?php echo $key_category+1; ?>">
	<div class="block_content">
		<ul class="diadiem clearfix">
			<?php
			foreach ($val_category['items'] as $key => $val){
				$name = $val['name'];
				$code = '';
				if($val['code'] != ''){
					$code = '<p class="code">'.$view->language['productMaSanPham'].': ' . $val['code'] . '</p>';
				}
				$picture = '<img class="img" src="' . $val['picture'] . '" alt="'.$val['name'].'"/>';
				$synopsis = $val['synopsis'];
// 				if($moduleConfig['showPrice'] == 1){
// 					
// 					$units_money = $val['units_money'];
// 					$price = '';
// 					if($val['price'] != 0){
// 						$price = '<div class="d_price"><p class="price">'.$view->language['diadiemGiaTu'].': <span class="value">'.Zend_Locale_Format::toNumber($val['price_to'],array('precision' => 0)).' - '.Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money.'</span></p></div>';
// 					}else{
// 						$price = '<div class="d_price"><p class="price">'.$view->language['diadiemGia'].': <span class="value">'.$view->language['lienHe'].'</span></p></div>';
// 					}
// 				}
				
				
				$selloff = '';
				/*if($moduleConfig['showKhuyenMai'] == 1){
					if($val['selloff'] > 0){
						$selloff = '<p class="d_cat_name"><a href="'.$linkCategory.'"><span> '.$nameCategory .' - '. $val['selloff'] . '%</span></a></p>';
					}else{
						$selloff = '<p class="d_cat_name"><a href="'.$linkCategory.'"><span> '.$nameCategory.'</span></a></p>';
					}
				}else{
					$selloff = '<p class="d_cat_name"><span> '.$nameCategory.'</span></p>';
				}
				*/
				$selloff = '<h2 class="d_cat_name">  '.$nameCategory.' </h2>';
// 				$addCart = '';
// 				if($moduleConfig['showAddCart'] == 1){
// 					$linkCart = $view->baseUrl('diadiem/public/add-item/id/' . $val['id']);
// 					$addCart = '<a href="'.$linkCart.'" title="'.$view->language['diadiemDatCho'].' '.$name.'" class="addCart" rel="nofollow">'.$view->language['diadiemDatCho'].'</a>';
// 				}
				$date='<div class="d_date">'.date("G:iA | d/m/Y", strtotime($val['created'])).'</div>';
				
				$urlOptions = array (
						'module' => 'diadiem',
						'controller' => 'index',
						'action' => 'detail',
						'tcat' => $val ['category_alias'],
						'title' => $val ['alias'],
						'cid' => $val ['cat_id'],
						'id' => $val ['id'] );
				$linkDetial = 'http://diachianchoi.vn'.$view->url( $urlOptions, 'diadiem-detail' ); 
				$like='<span class="like_fb" link="'.$linkDetial.'" data="like" id="'.$val['id'].'" val="'.$val['like_fb'].'" typer="diadiem" field="like_fb">'.$val['like_fb'].'</span>';
				$comment='<span class="comment_fb">'.$val['comment_fb'].'</span>';
			?>
				<li class="item">
					<div class="dd_content">
						<div class="d_images">
							<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>">
								<?php echo $picture;?>
							</a>
						</div>
						<h4 class="d_title"><?php echo $name;?></h4>
						<div class="d_synopsis"><?php echo $synopsis;?></div>
						<?php /*?>
						<?php echo $price;?>
						<p class="d_detail">
						<?php echo $addCart;?>
							<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>" class="detail"><?php echo $view->language['chiTiet'];?></a>
						</p>
						
						<?php */?>
						<?php echo $selloff;?>
						<?php echo $date;?>
						<?php echo $like;?>
						<?php echo $comment;?>
					</div>
				</li>
			<?php
				} 
			?>
		</ul>
	</div> 
</div>
<?php
if($key_category==4){echo '</div>';}
	}
?>

</div>