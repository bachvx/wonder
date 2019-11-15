<?php
class Block_BlkDulich extends Zend_View_Helper_Abstract{

	public function blkDulich($template = 'default'){
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
            if(!$row = $cache->load('Dulich')){
    			$db = Zend_Registry::get('connectDb');
    			//$db = Zend_Db::factory($adapter, $config);
    			$select = $db->select()
    				->from('dulich AS p',array('*'))
    				->where('p.status = ?',1,INTERGER)
    				->order('p.order ASC');
    			$row = $db->fetchAll($select);
                $cache->save($row,'Dulich');
            }
			if(count($row) > 0){
				require_once (BLOCK_PATH . '/BlkDulich/'.$template.'.php');
			}
		}
	}
}