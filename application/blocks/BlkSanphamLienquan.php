<?php
class Block_BlkSanphamLienquan extends Zend_View_Helper_Abstract{

	public function blkSanphamLienquan($arr,$template='default'){
	    $language = new Zend_Session_Namespace('language');
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$flagShow = true;
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select();
            if($language->lang=='vi'){
                $select->from('diadiem AS p',array('id','name','alias','picture','thumb','synopsis','price','selloff','cat_id','units_money','khuyenmai')) ;               
            }else{
                $select->from('diadiem_en AS p',array('id','name','alias','picture','thumb','synopsis','price','selloff','cat_id','units_money','khuyenmai'));                
            }
				
				//->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name','alias AS category_alias'))
				$select->where('p.status = ?',1,INTERGER)
				->where('p.cat_id = ?',$arr['cat_id'],INTERGER)
                ->where('p.id <> ?',$arr['id'],INTERGER)
               // ->where('p.name LIKE ?', '%' . $arr['name'] . '%', STRING)
				->limit(10,0)
				->order('p.order ASC')
				->order('p.id DESC');
			
		//	$select->where("p.lang_code = '" . $language->lang . "'");
			//echo $select;die;
			
           
			$row = $db->fetchAll($select);
			if(count($row) > 0){
			// echo BLOCK_PATH . '/BlkSanphamLienquan/'.$template.'.php';die;
				require_once (BLOCK_PATH . '/BlkSanphamLienquan/'.$template.'.php');
			}
		}
	}
}