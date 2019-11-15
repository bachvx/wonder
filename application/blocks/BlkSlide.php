<?php
class Block_BlkSlide extends Zend_View_Helper_Abstract{
	
	public function BlkSlide($template = 'default'){
		$view = $this->view;
		$siteConfig = Zend_Registry::get('siteConfig');
		
		//Khoi tao cache
		$frontend = 'Core';
		$backend = 'File';
		$frontendOptions = array('cat_id_prefix' => 'myCache_', 'lifetime' => $siteConfig['config_site']['site_cache'], 'automatic_serialization' => true);
		$backendOptions = array('cache_dir' => CACHE_PATH);
		$cache = Zend_Cache::factory($frontend, $backend, $frontendOptions, $backendOptions);
		if(!$row = $cache->load('slide')){
            $db = Zend_Registry::get('connectDb');
 			$select_nhomdichvu = $db->select()
                ->from('link AS p',array('*'))
                ->where('p.id= ?',21,INTERGER);
            $row = $db->fetchAll($select_nhomdichvu); 
			
			
			$cache->save($row,'slide');
		}

		include(BLOCK_PATH . '/BlkSlide/'.$template.'.php');
	}
	
}
