<?php
class Block_BlkDiadiemCategoryHome2 extends Zend_View_Helper_Abstract{

	public function BlkDiadiemCategoryHome2($template = 'default'){
		$view  = $this->view;
		$arrParam = $view->arrParam;
		$filename = APPLICATION_PATH . '/modules/diadiem/config/config.ini';
		$section = 'module-settings';
		$moduleConfig = new Zend_Config_Ini($filename, $section);
		$moduleConfig = $moduleConfig->toArray();
		$moduleConfig = $moduleConfig['module'];
		$language = new Zend_Session_Namespace('language');
		$flagShow = true;
		if($flagShow == true){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
					->from('diadiem_category AS pc',array('id','name','alias','parents'))
					->where('status = ?',1,INTERGER)
					->where('block_body2 = ?',1,INTERGER)
					->order('order ASC');
			$language = new Zend_Session_Namespace('language');
			$select->where("pc.lang_code = '" . $language->lang . "'");
			
			$row = $db->fetchAll($select);
			foreach ($row as $key => $val){
				
				$select_cat = $db->select()
				->from('diadiem_category AS pc',array('id','name','alias','parents'))
				->where('status = ?',1,INTERGER);
				$language = new Zend_Session_Namespace('language');
				$select_cat->where("pc.lang_code = '" . $language->lang . "'");
				
				$resultCategory = $db->fetchAll($select_cat);
				
				$system = new Zendvn_System_Recursive($resultCategory);
				$newArray = $system->builArray($row[$key]['id']);
				$tmp[$key][] = $row[$key]['id'];
				if(count($newArray)>0){
					foreach ($newArray as $key_cat => $val_cat){
						$tmp[$key][] = $val_cat['id'];
					}
				}
				$ids = implode(',', $tmp[$key]);
				
				$select_item = $db->select()
					//->from('diadiem AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price','price_to','selloff','units_money','like_fb','comment_fb','created' ))
					->from('diadiem AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','like_fb','comment_fb','created' ))
					->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name', 'pc.alias AS category_alias'))
					->where('p.status = ?',1,INTERGER)
					->where('p.cat_id IN (' . $ids . ')')
					->limit(2,0)
					->order('p.order ASC')
					->order('p.id DESC');
					//echo $select_item;die;
				$row_item = $db->fetchAll($select_item);
				$row[$key]['items'] = $row_item;
				//echo "aaaaaaaaaaaaaaa:" . count($row);die;
			}
			if (count ( $row ) > 0) {
				require_once (BLOCK_PATH . '/BlkDiadiemCategoryHome2/'.$template.'.php');
			}
		}
	}
}