<?php
class Block_BlkDiadiemPrice extends Zend_View_Helper_Abstract{

	public function BlkDiadiemPrice($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($arrParam['module'] != 'diadiem'){
			$flagShow = false;
		}
		if($flagShow == true){
			include (BLOCK_PATH . '/BlkDiadiemPrice/'.$template.'.php');
		}
	}
}