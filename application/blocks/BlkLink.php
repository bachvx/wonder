<?php
class Block_BlkLink extends Zend_View_Helper_Abstract{
	
	public function blkLink($manu_id,$template = 'default'){
		$view = $this->view;
		$tblLink = new Dichvu_Model_Item();
        //$arrParam['manu-id']=1;
		$row = $tblLink->getSlide($manu_id,array('task'=>'index'));
		
		if(count($row) > 0){
			require_once BLOCK_PATH . '/BlkLink/'.$template.'.php';
		}
	}
}