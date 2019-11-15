<?php
class Block_BlkSanpham extends Zend_View_Helper_Abstract{
	
	public function blkSanpham($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$filename = APPLICATION_PATH . '/modules/dichvu/config/config.ini';
		$section = 'module-settings';
		$moduleConfig = new Zend_Config_Ini($filename, $section);
		$moduleConfig = $moduleConfig->toArray();
		$moduleConfig = $moduleConfig['module'];
		$language = new Zend_Session_Namespace('language');
        //echo ("â");die;
		//Khoi tao cache
        $flagShow = true;
		if($flagShow == true){
            $frontend = 'Core';
        	$backend = 'File';
        	$frontendOptions = array('cat_id_prefix' => 'myCache_', 'lifetime' => $siteConfig['config_site']['site_cache'], 'automatic_serialization' => true);
        	$backendOptions = array('cache_dir' => CACHE_PATH);
        	$cache = Zend_Cache::factory($frontend, $backend, $frontendOptions, $backendOptions);
            if(!$row = $cache->load('SanphamHome')){
                $db = Zend_Registry::get('connectDb');
    			$select = $db->select();
                if($language->lang=='vi'){
                    $select->from('diadiem AS p',array('*'));    
                }else{
                    $select->from('diadiem_en AS p',array('*'));
                }
                $select ->where('p.status = ?',1,INTERGER)
                ->where('p.cat_id = ?',25,INTERGER)
                ->limit(3,0)
				->order('p.order ASC');
               // echo $select;die;
                $row = $db->fetchAll($select);
                $cache->save($row,'SanphamHome');
            }
			if(count($row) > 0){
				require_once (BLOCK_PATH . '/BlkSanpham/'.$template.'.php');
			}
		}
	}	
}
?>