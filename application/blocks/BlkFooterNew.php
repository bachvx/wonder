<?php
class Block_BlkFooterNew extends Zend_View_Helper_Abstract{

	public function blkFooterNew($template='default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
        $language = new Zend_Session_Namespace('language');
		$flagShow = true;
        //$request = $this->getRequest();
        $uri = Zend_Controller_Front::getInstance()->getRequest()->getRequestUri();
        setcookie('link', $uri); 
        if($flagShow == true){
    	$frontend = 'Core';
    	$backend = 'File';
    	$frontendOptions = array('cat_id_prefix' => 'myCache_', 'lifetime' => $siteConfig['config_site']['site_cache'], 'automatic_serialization' => true);
    	$backendOptions = array('cache_dir' => CACHE_PATH);
    	$cache = Zend_Cache::factory($frontend, $backend, $frontendOptions, $backendOptions);
        if(!$row = $cache->load('Footer')){
                $db = Zend_Registry::get('connectDb');
                $selecttongquat = $db->select()
    				                ->from('genex AS p',array('content','content_en'))
    				                ->where('p.id = ?',4,INTERGER);
                   // echo $selecttongquat;die;
    			$row = $db->fetchRow($selecttongquat);
                
    		$cache->save($row,'Footer');
    	}
    			if(count($row) > 0){
    				require_once (BLOCK_PATH . '/BlkFooterNew/'.$template.'.php');
    			}
    		}
	}
}