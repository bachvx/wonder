<?php
class Block_BlkPhankhu extends Zend_View_Helper_Abstract{

	public function blkPhankhu($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$filename = APPLICATION_PATH . '/modules/dichvu/config/config.ini';
		$section = 'module-settings';
		$moduleConfig = new Zend_Config_Ini($filename, $section);
		$moduleConfig = $moduleConfig->toArray();
		$moduleConfig = $moduleConfig['module'];
		$flagShow = true;
		if($flagShow == true){
    	$frontend = 'Core';
    	$backend = 'File';
    	$frontendOptions = array('cat_id_prefix' => 'myCache_', 'lifetime' => $siteConfig['config_site']['site_cache'], 'automatic_serialization' => true);
    	$backendOptions = array('cache_dir' => CACHE_PATH);
    	$cache = Zend_Cache::factory($frontend, $backend, $frontendOptions, $backendOptions);
        
    	if(!$row = $cache->load('PhanKhu')){
    			$db = Zend_Registry::get('connectDb');
    			//$db = Zend_Db::factory($adapter, $config);
    			$select = $db->select()
    				->from('diadiem_manu AS p',array('*'))
    				->where('p.status = ?',1,INTERGER)
    				->order('p.order ASC');
    			$row = $db->fetchAll($select);
    		$cache->save($row,'PhanKhu');
    	} 
        if(!$row1 = $cache->load('Tongquat')){
                $db = Zend_Registry::get('connectDb');
                $selecttongquat = $db->select()
    				                ->from('genex AS p',array('content','content_en'))
    				                ->where('p.id = ?',2,INTERGER);
                   // echo $selecttongquat;die;
    			$row1 = $db->fetchRow($selecttongquat);
                
    		$cache->save($row1,'Tongquat');
    	}
    			if(count($row) > 0){
    				require_once (BLOCK_PATH . '/BlkPhankhu/'.$template.'.php');
    			}
    		}
 	}
}