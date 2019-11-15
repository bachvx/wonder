<?php
	$slbQuanngonCategory	= $view->formSelect('cat_id',$arrParam['cat_id'],array('class'=>'styled'),$slbQuanngonCategory);
	$slbDistricts			= $view->formSelect('districts_id',$arrParam['districts_id'],array('class'=>'styled'),$slbDistricts);
	$keywords 				= $view->formText ( 'keywords', $arrParam['keywords'], array ('id'=>'keysearch','placeholder'=>'Nhập Tên Quán Tìm Kiếm','name'=>'keywords','class' => 'txtshort'));
	
	$title = 'Tìm Kiếm Nâng Cao';
	$linkSearch = 'tim-kiem-dia-diem.html';
	$thongBao = 'Bạn vui lòng chọn 1 Quận huyện';
	if($arrParam['module'] == 'ntd'){
		$title = 'Tìm kiếm tin';
		$linkSearch = 'tim-kiem-dia-diem.html';
		$thongBao = 'Bạn vui lòng chọn 1 Quận huyện';
	}
?>
<form name="frmSearchForm" action="<?php echo $view->baseUrl($linkSearch); ?>" method="get">
	<input id="search" name="query" placeholder="Mã sản phẩm" class="search-query" maxlength="128" type="text">
	<button type="submit" class="btn icon-search" onclick="doSubmit()><i class="fa fa-search" aria-hidden="true"></i></button>
</form>

<script language="javascript">
	function doSubmit(){	
		if (document.frmSearchForm.districts_id.value == 0) {
			alert('<?php echo $thongBao;?>');
			return false;
		}
		if (document.frmSearchForm.cat_id.value == 0) {
			alert('Vui lòng chọn 1 chuyên mục');
			return false;
		}
		document.frmSearchForm.submit();
		return;
	}
</script>
