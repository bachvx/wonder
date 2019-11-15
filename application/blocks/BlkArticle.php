<?php
class Block_BlkArticle extends Zend_View_Helper_Abstract{

	public function blkArticle($id){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');
            //lay tin theo chuyen de			
			$select = $db->select()
					->from('articles AS a',array('id','name','alias','picture','cat_id'))
					->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name','alias AS category_alias'))
					->limit(4,0)
					->order('a.order ASC')
					->order('a.id DESC');
			
			$language = new Zend_Session_Namespace('language');
			$select->where("a.lang_code = '" . $language->lang . "'");
            $select->where("a.cat_id = '" . $id . "'");
			
			$row = $db->fetchAll($select);
            //lay tin moi nhat
            $select_new = $db->select()
					->from('articles AS a',array('id','name','alias','picture','cat_id','synopsis'))
					->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name','alias AS category_alias'))
					->limit(3,0)
					->order('a.order ASC')
					->order('a.id DESC');
			$language = new Zend_Session_Namespace('language');
			$select->where("a.lang_code = '" . $language->lang . "'");
			$row_new = $db->fetchAll($select_new);
			if(count($row) > 0){
				require_once (BLOCK_PATH . '/BlkArticle/default.php');
			}
		}
	}
}