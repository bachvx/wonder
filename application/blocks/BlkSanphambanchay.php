<?php
class Block_BlkSanphambanchay extends Zend_View_Helper_Abstract{

	public function blkSanphambanchay($template = 'default'){
	    
		$view  = $this->view;
		$arrParam = $view->arrParam;
	//	$filename = APPLICATION_PATH . '/modules/diadiem/config/config.ini';
	//	$section = 'module-settings';
	//	$moduleConfig = new Zend_Config_Ini($filename, $section);
	//	$moduleConfig = $moduleConfig->toArray();
	//	$moduleConfig = $moduleConfig['module'];
		$flagShow = true;
		if($flagShow == true){
            $language = new Zend_Session_Namespace('language');
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select();
            if($language->lang=='vi'){
              $select ->from('diadiem AS p',array('id','name','alias','picture','thumb','synopsis','price','selloff','cat_id','units_money','khuyenmai')); 
            }else{
              $select ->from('diadiem_en AS p',array('id','name','alias','picture','thumb','synopsis','price','selloff','cat_id','units_money','khuyenmai')); 
            }
				
				$select ->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name','alias AS category_alias'))
				->where('p.status = ?',1,INTERGER)
				->where('p.block_dongkhach = ?',1,INTERGER)
				->limit(10,0)
				->order('p.order ASC')
				->order('p.id DESC');
		//	$language = new Zend_Session_Namespace('language');
		//	$select->where("p.lang_code = '" . $language->lang . "'");
		//	echo $select;die;
			if(!empty($arrParam['cid'])){
			 //die("adasda");
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
           
			$row = $db->fetchAll($select);
			if(count($row) > 0){
			 
				require_once (BLOCK_PATH . '/BlkSanphambanchay/'.$template.'.php');
			}
		}
	}
}