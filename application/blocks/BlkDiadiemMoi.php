<?php
class Block_BlkDiadiemMoi extends Zend_View_Helper_Abstract{

	public function blkDiadiemMoi($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$filename = APPLICATION_PATH . '/modules/diadiem/config/config.ini';
		$section = 'module-settings';
		$moduleConfig = new Zend_Config_Ini($filename, $section);
		$moduleConfig = $moduleConfig->toArray();
		$moduleConfig = $moduleConfig['module'];
		$flagShow = true;
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
				->from('diadiem AS p',array('id','name','alias','picture','thumb','synopsis','price','selloff','cat_id','units_money','khuyenmai','comment_fb','like_fb'))
				->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name','alias AS category_alias'))
				->where('p.status = ?',1,INTERGER) 
				->limit(3,0) 
				->order('p.id ASC');
			$language = new Zend_Session_Namespace('language');
			$select->where("p.lang_code = '" . $language->lang . "'");
			/*
			if(!empty($arrParam['cid'])){
				$selectCategory = $db->select()
				->from('diadiem_category',array('id','name','parents'))
				->where('status = ?',1,INTERGER);
				$resultCategory = $db->fetchAll($selectCategory);
				$system = new Zendvn_System_Recursive($resultCategory);
				$newArray = $system->builArray($arrParam['cid']);
				$tmp[] = $arrParam['cid'];
				if(count($newArray)>0){
					foreach ($newArray as $key => $val){
						$tmp[] = $val['id'];
					}
				}
				$ids = implode(',', $tmp);
				
				$select->where('p.cat_id IN (' . $ids . ')');
			}
			*/
			$row = $db->fetchAll($select);
			if(count($row) > 0){
				require_once (BLOCK_PATH . '/BlkDiadiemMoi/'.$template.'.php');
			}
		}
	}
}