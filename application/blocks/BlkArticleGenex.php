<?php
class Block_BlkArticleGenex extends Zend_View_Helper_Abstract{

	public function blkArticleGenex($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');
			$select = $db->select()
					->from('article_category AS ac',array('id','name','alias','parents'))
					->where('status = ?',1,INTERGER)
					//->where('block_body = ?',1,INTERGER)
					//->limit(3,0)
					->order('order ASC');
			$language = new Zend_Session_Namespace('language');
			$select->where("ac.lang_code = '" . $language->lang . "'");
			$row = $db->fetchAll($select);
			
			}
			if(count($row) > 0){
				require_once (BLOCK_PATH . '/BlkArticleGenex/'.$template.'.php');
			}
	}
}