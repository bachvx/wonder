<?php
class Block_BlkStatus extends Zend_View_Helper_Abstract{

	public function blkStatus($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$resultArr=array();
		//Khoi tao cache
		$frontend = 'Core';
		$backend = 'File';
		$frontendOptions = array('cat_id_prefix' => 'myCache_', 'lifetime' => $siteConfig['config_site']['site_cache'], 'automatic_serialization' => true);
		$backendOptions = array('cache_dir' => CACHE_PATH);
		$cache = Zend_Cache::factory($frontend, $backend, $frontendOptions, $backendOptions);
		if(!$resultArr = $cache->load('resultArr_cache')){
			
		 
			$tblCategoryArticle = new Article_Model_Category();
			$resultArr['totalCategoryArticle'] = $tblCategoryArticle->countItem();
			 
			$tblArticle = new Article_Model_Item();
			$resultArr['totalArticle'] = $tblArticle->countItem();
			 
			$tblDiadiem = new Diadiem_Model_Item();
			$resultArr['totalDiadiem'] = $tblDiadiem->countItem();
			
			$cache->save($resultArr,'resultArr_cache');
		} 
		$totalCategoryArticle	=$resultArr['totalCategoryArticle'];
		$totalArticle			=$resultArr['totalArticle'];
		$totalDiadiem			=$resultArr['totalDiadiem'];
		
		
				include(BLOCK_PATH . '/BlkStatus/'.$template.'.php');
			 
	}
}