<?php
class Block_BlkLogo extends Zend_View_Helper_Abstract{

	public function blkLogo($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			include(BLOCK_PATH . '/Blklogo/'.$template.'.php');
		}
	}
}