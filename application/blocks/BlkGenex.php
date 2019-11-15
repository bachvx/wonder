<?php
class Block_BlkGenex extends Zend_View_Helper_Abstract{

	public function BlkGenex($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
	//	$filename = APPLICATION_PATH . '/modules/diadiem/config/config.ini';
	//	$section = 'module-settings';
		//$moduleConfig = new Zend_Config_Ini($filename, $section);
	//	$moduleConfig = $moduleConfig->toArray();
		//$moduleConfig = $moduleConfig['module'];
		//$language = new Zend_Session_Namespace('language');
		$flagShow = true;
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
					->from('genex_page AS pc',array('*'))
					->where('status = ?',1,INTERGER)
					->order('order ASC');
			//$language = new Zend_Session_Namespace('language');
		//	$select->where("pc.lang_code = '" . $language->lang . "'");
			//echo $select;die;
			$row = $db->fetchAll($select);
			if (count ( $row ) > 0) {
				require_once (BLOCK_PATH . '/BlkGenex/'.$template.'.php');
			}
		}
	}
}