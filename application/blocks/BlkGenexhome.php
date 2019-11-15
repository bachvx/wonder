<?php
class Block_BlkGenexhome extends Zend_View_Helper_Abstract{

	public function blkGenexhome(){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		//$filename = APPLICATION_PATH . '/modules/diadiem/config/config.ini';
	//	$section = 'module-settings';
		//$moduleConfig = new Zend_Config_Ini($filename, $section);
	//	$moduleConfig = $moduleConfig->toArray();
	//	$moduleConfig = $moduleConfig['module'];
		$flagShow = true;
        $db = Zend_Registry::get('connectDb');
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');
			$select = $db->select()
				->from('genex AS p',array('*'));
			$row = $db->fetchAll($select);
            
			if(count($row) > 0){
				require_once (BLOCK_PATH . '/BlkGenexhome/default.php');
			}
		}
	}
}