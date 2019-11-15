<?php
	$linkCategoryManager =  $this->baseUrl('/diadiem/admin-category/index/');
	$linkProduct =  $this->baseUrl('/diadiem/admin-item/index');
	$linkBill =  $this->baseUrl('/diadiem/admin-bill/index');
?>
<div class="block_subMenu goc10">
	<ul>
		<li><a href="<?php echo $linkCategoryManager;?>">Danh mục</a></li>
		<li><a href="<?php echo $linkProduct;?>">Địa điểm</a></li>
		<li><a href="<?php echo $linkBill;?>">Đặt bàn</a></li>
		<li><a href="#" class="active">Đơn vị tiền tệ</a></li>
	</ul>
	<div class="clr"></div>
</div>