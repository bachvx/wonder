<div class="block_cart">
	<div class="block_content">
		<div class="text_1"><?php echo $view->language['productGioHang'];?></div>
		<div class="text_2">
		<?php
			$linkCart = $view->baseUrl('/diadiem/public/view-cart');
			if($countItem > 0){
				printf('<a href="'. $linkCart .'" rel="nofollow">' . $view->language['diadiemCoDiaDiem'] . '</a>',$countItem);
			}else{
				printf($view->language['diadiemCoDiaDiem'],'0');
			}
		?>
		</div>
	</div>
</div>