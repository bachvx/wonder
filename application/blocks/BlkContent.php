<?php
class Block_BlkContent extends Zend_View_Helper_Abstract{

	public function blkContent($id){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');			
			
            //lay tin moi nhat
            $select = $db->select()
					->from('articles AS a',array('id','name','alias','picture','cat_id','synopsis'))
					->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name','alias AS category_alias'))
					->limit(10,0)
					->order('a.order ASC')
					->order('a.id DESC');
			$row = $db->fetchAll($select);
			if(count($row) > 0){
				require_once (BLOCK_PATH . '/BlkContent/default.php');
			}
		}
	}
}