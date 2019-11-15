<?php
class Block_BlkTag extends Zend_View_Helper_Abstract{

	public function blkTag($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
				include(BLOCK_PATH . '/BlkTag/'.$template.'.php');
			 
	}
}