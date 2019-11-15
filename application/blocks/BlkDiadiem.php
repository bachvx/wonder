<?php
class Block_BlkDiadiem extends Zend_View_Helper_Abstract{

	public function blkDiadiem($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			
			 
			$siteConfig = Zend_Registry::get('siteConfig');
			$frontend = 'Core';
			$backend = 'File';
			$frontendOptions = array('cat_id_prefix' => 'myCache_', 'lifetime' => $siteConfig['config_site']['site_cache'], 'automatic_serialization' => true);
			$backendOptions = array('cache_dir' => CACHE_PATH);
			$cache = Zend_Cache::factory($frontend, $backend, $frontendOptions, $backendOptions);
		
		 
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			if(!$categories = $cache->load('info_nhahang')){
				$select = $db->select()
				->from('diadiem AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
				->join('diadiem_category AS ac', 'ac.id = a.cat_id',array('name AS category_name', 'ac.alias AS category_alias'))
				->where('a.status = ?',1,INTERGER)
				->order('id DESC')
                ->limit(8,0);
				$categories = $db->fetchRow($select);
			     $cache->save($categories,'info_nhahang');
			}
			if(count($categories) > 0) {
				include(BLOCK_PATH . '/BlkDiadiem/'.$template.'.php');
			}
		}
	}
}