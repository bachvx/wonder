<?php
	if(count($row)>0){
		foreach ($row as $key => $val){
			$name = $val['name'];
			$urlOptions = array('module'=>'shop','controller'=>'index','action'=>'category',
					'cid'=>$val['id'],
					'alias'=>$val['alias'],
			);
			$link = $view->url($urlOptions,'shop-list');
?>
<div class="block_diadiemMoi">
	<div class="block_title clearfix">
		<span class="icon"></span>
		<div class="title"><a href="<?php echo $link;?>"><?php echo $name;?></a></div>
		<p class="viewall">
			<a href="<?php echo $link;?>"><?php echo $view->language['xemTatCa'];?></a>
		</p>
	</div>
	<div class="block_content">
		<div class="products">
		<?php
		if(count($val['items'])>0){ 
		?>
			<ul class="clearfix">
			<?php
				foreach ($val['items'] as $key_item => $val_item){
						
				$name_item = $val_item['name'];
				//$picture = '<img src="' . $val_item['thumb'] .'" alt="'.$val_item['name'].'"/>';
				$picture = '<img src="' . $val_item['picture'] .'" alt="'.$val_item['name'].'"/>';
				$units_money = $val_item['units_money'];
				$price = '';
				if($val_item['price'] != 0){
					$price = Zend_Locale_Format::toNumber($val_item['price'],array('precision' => 0)) . ' ' . $units_money;
				}
				
				$urlOptions_item = array('module'=>'diadiem','controller'=>'shop','action'=>'detail',
						'shop_id'=>$val_item['shop_id'],
						'alias'=>$val['alias'],
						'id'=>$val_item['id'],
				);
				$linkDetial = $view->url($urlOptions_item,'diadiem-detail');
			?>
				<li>
					<div class="product_image">
						<table cellspacing="0" cellpadding="0"><tbody><tr><td><a href="<?php echo $linkDetial;?>" title="<?php echo $name_item;?>"><?php echo $picture;?></a></td></tr></tbody></table>
					</div>
					<div class="product_title">
						<a href="<?php echo $linkDetial;?>" title="<?php echo $name_item;?>"><?php echo $name_item;?></a>
					</div>
					<div class="product_price">
						<?php echo $price;?>
					</div>
				</li>
			<?php
				} 
			?>
			</ul>
			<?php
			} 
			?>
		</div>
	</div>
	<div class="block_bottom"></div>
</div>
<?php 
		}
	}
?>