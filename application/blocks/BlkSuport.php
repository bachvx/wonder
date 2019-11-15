<?php
class Block_BlkSuport extends Zend_View_Helper_Abstract{

	public function blkSuport(){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			include(BLOCK_PATH . '/BlkSuport/default.php');
		}
	}
}