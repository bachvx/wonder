<?php
class Block_BlkArticleVideo extends Zend_View_Helper_Abstract{

	public function blkArticleVideo($arr,$cat_id,$limit,$template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
            $language = new Zend_Session_Namespace('language');
            $select = $db->select();
            if($language->lang=='vi'){
              $select ->from('articles AS a',array('id','name','video','DATE_FORMAT(created,"%d.%m.%Y") as ngay','alias','picture','cat_id')); 
            }else{
                $select ->from('articles_en AS a',array('id','name','video','DATE_FORMAT(created,"%d.%m.%Y") as ngay','alias','picture','cat_id'));
            }
                   $select ->where('a.page_id = ?',$arr['id'],INTERGER)
                    ->where('a.cat_id IN (' . $cat_id . ')')
					->limit($limit,0)
					->order('a.order ASC')
					->order('a.id DESC');
			
			//$language = new Zend_Session_Namespace('language');
			//$select->where("a.lang_code = '" . $language->lang . "'");
			//echo $select;die;
			$row = $db->fetchAll($select);
            $urlOptions = array ('module' => 'article',
                                 'controller' => 'index',
                                 'action' => 'categorypage',
                                 'alias' => 'video',
                                 'cid' => 11,
                                 'pid' => $arr['id'] );	
            $linkXemthem = $view->url( $urlOptions, 'article-page' );
			if(count($row) > 0){
				require_once (BLOCK_PATH . '/BlkArticleVideo/'.$template.'.php');
			}
		}
	}
}