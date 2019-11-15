<?php
class Block_BlkDiadiemManu extends Zend_View_Helper_Abstract{

	public function BlkDiadiemManu($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		
		if($arrParam['module'] != 'diadiem'){
			$flagShow = false;
		}
		if($flagShow == true){
			
			$tblManu = new Diadiem_Model_Manu();
			$listManu = $tblManu->listItem($arrParam,array('task' => 'public-list'));
			
			if(count($listManu) > 0){
				include (BLOCK_PATH . '/BlkDiadiemManu/'.$template.'.php');
			}
		}
	}
}