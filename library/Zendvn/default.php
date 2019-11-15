<?php 
$getFB= new Default_Model_Fbcount();
?>
<div class="block_diadiemMoi">
	<div class="block_title clearfix">
		<span class="icon"></span> 
		<h3 class="title"><a href="#" title="Địa điểm mới<?php //echo $view->language['diadiemYeuThich'];?>"><?php //echo $view->language['diadiemYeuThich'];?>Địa điểm mới</a></h3>
	</div>
	<div class="block_content">
		<div>
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
					$price = '<div class="d_price"><p class="price">'.$view->language['diadiemGia'].': <span class="value">'.Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money.'</span></p></div>';
				}else{
					$price = '<div class="d_price"><p class="price">'.$view->language['diadiemGia'].': <span class="value">'.$view->language['lienHe'].'</span></p></div>';
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
				$linkDetial =  $view->url( $urlOptions, 'diadiem-detail' );
				//$fbCount = $getFB->countItem($linkDetial,'diadiem',$val ['id']);
				$like='<span class="like_fb">'.$val_item['like_fb'].'</span>';
				//$cmCount = $getFB->commentItem($linkDetial,'diadiem',$val ['id']);
				$comment='<span class="comment_fb">'.$val_item['comment_fb'].'</span>';
				
				$class="";
				if($key%2==0){$class="start-left"; 
				//$tooltip = '<div class=tooltid_title>'.$name.'</div><div class=tooltip_content><img class=img src=' . $val['picture'] . ' alt='.$val['name'].'/></div>';
			?>
				<li class="item <?php echo $class;?>">
					<div class="dd_content">
						<div class="d_images">
							<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>" >
								<?php echo $picture;?>
							</a>
						</div>
						<div class="title">
							<h4 class="d_title"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $name;?></a></h4>
							<div style="float: left;padding-left: 10px;">
								<?php echo $comment.$like ;?>
							</div>
						</div>
						 
						<?php //echo $price;?>
						<?php //echo $like.$comment;?>
						<?php /*?>
						<p class="d_detail">
							<?php echo $addCart;?>
							<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>" class="detail"><?php echo $view->language['chiTiet'];?></a>
						</p>
						<?php echo $selloff;?>
						<?php */ ?>
						
						
					</div>
				</li>
				<?php 
				}else{
					$class="start-right"; 
				?>
					<li class="item <?php echo $class;?>">
					<div class="dd_content">
						<div class="title">
							<h4 class="d_title"><a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>"><?php echo $name;?></a></h4>
							<div style="float: left;padding-left: 10px;">
								<?php echo $comment.$like ;?>
							</div>
						</div> 
						<div class="d_images">
							<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>" >
								<?php echo $picture;?>
							</a>
						</div>
						<?php //echo $price;?>
						
						<?php /*?>
						<p class="d_detail">
							<?php echo $addCart;?>
							<a href="<?php echo $linkDetial;?>" title="<?php echo $name;?>" class="detail"><?php echo $view->language['chiTiet'];?></a>
						</p>
						<?php echo $selloff;?>
						<?php */ ?>
						
						
					</div>
				</li>
				
				<?php }?>
			<?php
			
			} 
			?>
			</ul>
		</div>
	</div> 
</div>