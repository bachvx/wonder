<?php
class Block_BlkSearchForm extends Zend_View_Helper_Abstract{

	public function blkSearchForm($template = 'default'){
	   die("ad");
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
		//$tblDistricts = new Default_Model_Districts();
		//	$slbDistricts = $tblDistricts->itemInSelectbox($arrParam,array('task' => 'get-districts-hn'));
				
			//$tblQuanngonCategory = new Diadiem_Model_Item();
			//$slbQuanngonCategory = $tblQuanngonCategory->itemInSelectboxSearch($arrParam,array('task' => 'get-category-search'));
			include(BLOCK_PATH . '/BlkSearchForm/'.$template.'.php');
		}
	}
}


