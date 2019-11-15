<?php
class Block_BlkArticleNoiBat extends Zend_View_Helper_Abstract{

	public function blkArticleNoiBat($arr,$limit,$template='default'){
	   //var_dump($arr);die;
		$view  = $this->view;
		$arrParam = $view->arrParam;
        $frontend = 'Core';
		$backend = 'File';
		$frontendOptions = array('cat_id_prefix' => 'myCache_', 'lifetime' => $siteConfig['config_site']['site_cache'], 'automatic_serialization' => true);
		$backendOptions = array('cache_dir' => CACHE_PATH);
		$cache = Zend_Cache::factory($frontend, $backend, $frontendOptions, $backendOptions);
        $language = new Zend_Session_Namespace('language');
       // if(!$row = $cache->load('tinnoibat')){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select();
            if($language->lang=='vi'){
                $select ->from('articles AS a',array('id','name','alias','DATE_FORMAT(created,"%d.%m.%Y") as ngay','picture','cat_id','synopsis'));
            }else{
                $select ->from('articles_en AS a',array('id','name','alias','DATE_FORMAT(created,"%d.%m.%Y") as ngay','picture','cat_id','synopsis'));
            }
				
			$select	->where('a.block_noibat = ?',1,INTERGER);
                if($arr['id']!=0){
                
                  $select  ->where('a.page_id = ?',$arr['id'],INTERGER)
                              ->where('a.cat_id = ?',10,INTERGER);
                }
				$select ->order('a.order ASC')
				->order('a.id DESC')
                ->limit($limit,0);
			
			
		//	$select->where("a.lang_code = '" . $language->lang . "'");
            //echo $select;die;
            $row = $db->fetchAll($select);
          //  $cache->save($row,'tinnoibat');
            //}
		//	echo $select;die;
			$urlOptions = array ('module' => 'article',
                                 'controller' => 'index',
                                 'action' => 'categorypage',
                                 'alias' => 'tu-van',
                                 'cid' => 10,
                                 'pid' => $arr['id'] );	
            $linkXemthem = $view->url( $urlOptions, 'article-page' );
            //var_dump($linkDetial);die;
			require_once (BLOCK_PATH . '/BlkArticleNoiBat/'.$template.'.php');
		
	}
}