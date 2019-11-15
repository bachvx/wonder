<?php
class Block_BlkMenuTinh extends Zend_View_Helper_Abstract{

	public function blkMenuTinh($template='$row_page',$row_page){
	   //var_dump($row_page);die;
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
            $yourCart = new Zend_Session_Namespace('cart');
    		$ssInfo = $yourCart->getIterator();
    		$tmp = $yourCart->cart;
    		$countItem = 0;
    		if(count($tmp)>0){
    			foreach ($tmp as $key => $val){
    				$countItem += $val;
    			}
    		}
    		$countItem;
			include(BLOCK_PATH . '/BlkMenuTinh/default.php');
		}
	}
}