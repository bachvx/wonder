<?php
	$linkCategoryManager =  $this->baseUrl('/product/admin-category/index/');
	$linkProduct =  $this->baseUrl('/product/admin-item/index');
	$linkBill =  $this->baseUrl('/product/admin-bill/index');
	$linkComment =  $this->baseUrl('/product/admin-comment/index');
?>
<div class="block_subMenu goc10">
	<ul>
		<li><a href="<?php echo $linkCategoryManager;?>">Danh mục sản phẩm</a></li>
		<li><a href="#" class="active">Sản phẩm</a></li>
	</ul>
	<div class="clr"></div>
</div>