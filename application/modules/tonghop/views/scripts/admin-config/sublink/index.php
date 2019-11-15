<?php
	$linkArticleCategory =  $this->baseUrl('/quanngon/admin-category/index/');
	$linkArticle =  $this->baseUrl('/quanngon/admin-item/index/');
	$linkComment =  $this->baseUrl('/quanngon/admin-comment/index/');
	$linkConfig =  $this->baseUrl('/quanngon/admin-config/index/');
?>
<div class="block_subMenu goc10">
	<ul>
		<li><a href="<?php echo $linkArticleCategory;?>">Danh mục</a></li>
		<li><a href="<?php echo $linkArticle;?>">Bài viết</a></li>
		<li><a href="<?php echo $linkComment;?>">Quản lý bình luận</a></li>
		<li><a href="#" class="active">Cấu hình module</a></li>
	</ul>
	<div class="clr"></div>
</div>