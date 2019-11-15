<div class="block_dongkhach">
	<div class="block_title clearfix">
		<span class="icon"></span> 
		<h3 class="title"><a href="<?php echo $view->baseUrl('diadiem/block/khuyen-mai');?>" title="<?php echo $view->language['diadiemKhuyenMai'];?>"><?php echo $view->language['diadiemKhuyenMai'];?></a></h3>
	</div>
	<div class="block_content">
		<div class="p_banChay">
			<ul class="dia_diem_an_choi clearfix">
			<?php
			foreach ($row as $key => $val){
				$name = $val['name'];
				$code = '';
				if($val['code'] != ''){
					$code = '<p class="code">'.$view->language['productMaSanPham'].': ' . $val['code'] . '</p>';
				}
				$picture = '<img class="img" src="' . $val['picture'] . '" alt="'.$val['name'].'"/>';
					
				$synopsis = $val['synopsis'];
				$units_money = $val['units_money'];
				$price = '';
				
				if($val['price'] != 0){
					$price = '<p class="price">'.$view->language['diadiemGia'].': <span class="value">'.Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money.'</span></p>';
				}else{
					$price = '<p class="price">'.$view->language['diadiemGia'].': <span class="value">'.$view->language['lienHe'].'</span></p>';
				}
				
				$selloff = '';
				if($val['selloff'] > 0){
					$selloff = '<p class="d_cat_name"><span>' . $val['selloff'] . '%</span></p>';
				}
				
				$addCart = '';
				if($moduleConfig['showAddCart'] == 1){
					$linkCart = $view->baseUrl('diadiem/public/add-item/id/' . $val['id']);
					$addCart = '<a href="'.$linkCart.'" title="'.$view->language['diadiemDatCho'].' '.$name.'" class="addCart" rel="nofollow">'.$view->language['diadiemDatCho'].'</a>';
				}
					
				$urlOptions = array (
						'module' => 'diadiem',
						'controller' => 'index',
						'action' => 'detail',
						'tcat' => $val ['category_alias'],
						'title' => $val ['alias'],
						'cid' => $val ['cat_id'],
						'id' => $val ['id'] );
				$linkDetial = $view->url( $urlOptions, 'diadiem-detail' );
			?>
				<li class="item">
					<div class="dd_content">
						<div class="d_images">
							<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>">
								<?php echo $picture;?>
							</a>
						</div>
						<h4 class="d_title"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $name;?></a></h4>
						<div class="d_price">
							<?php echo $price;?>
						</div>
						<p class="d_detail">
							<?php echo $addCart;?>
							<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>" class="detail"><?php echo $view->language['chiTiet'];?></a>
						</p>
						<?php echo $selloff;?>
					</div>
				</li>
			<?php
			} 
			?>
			</ul>
		</div>
	</div>
	<script src="<?php echo $view->jsUrl . '/jcarousellite.js';?>" type="text/javascript"></script>
	<script type="text/javascript">
	$(function() {
		$(".p_banChay").jCarouselLite({
			vertical: true,
			hoverPause:true,
			visible: 1,
			auto:3000,
			speed:2000
		});
	});
	</script>
	<div class="block_bottom"></div>
</div>