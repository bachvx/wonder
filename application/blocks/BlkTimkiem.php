<?php
class Block_BlkTimkiem extends Zend_View_Helper_Abstract{

	public function blkTimkiem($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			include(BLOCK_PATH . '/BlkTimkiem/'.$template.'.php');
		}
	}
}


