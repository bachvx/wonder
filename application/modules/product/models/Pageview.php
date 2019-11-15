<?php
class Product_Model_Pageview extends Zend_Db_Table{
	
	protected $_name = 'diadiem_view_catergory';
	protected $_primary ='id';
	
	public function itemInSelectbox($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		$ssFilter  = $arrParam['ssFilter'];
		if($options == null){
			$select = $db->select()
			->from('diadiem_category AS pc',array('id','name','parents','status','order','created_by'))
			->order('pc.order ASC')
			->order('pc.id ASC');
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("pc.lang_code = '" . $ssFilter['lang_code'] . "'");
			}else{
				$language = new Zend_Session_Namespace('language');
				$select->where("pc.lang_code = '" . $language->lang . "'");
			}
			
			$result = $db->fetchAll($select);
			
		}
		
		if($options['task'] == 'admin-edit'){
			$id = $arrParam['id'];
			$select = $db->select()
			->from('diadiem_category AS pc',array('id','name','parents','status','order','created_by'))
			->where('id != ?',$id,INTERGER)
			->order('pc.order ASC')
			->order('pc.id ASC');
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("pc.lang_code = '" . $ssFilter['lang_code'] . "'");
			}else{
				$language = new Zend_Session_Namespace('language');
				$select->where("pc.lang_code = '" . $language->lang . "'");
			}
			
			$result = $db->fetchAll($select);
			
		}
		$system = new Zendvn_System_Recursive($result);
		$result = $system->builArray(0);
		if(count($result)>0){
			$tmp = array('id' => 0,'name'=>'Danh mục gốc','level'=>1,'parents'=>0,'order'=>1);
			array_unshift($result, $tmp);
		}else{
			$result = array('0'=>array('id' => 0,'name'=>'Danh mục gốc','level'=>1,'parents'=>0,'order'=>1));
		}
		
		return $result;
	}
	
	public function countItem($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		$ssFilter  = $arrParam['ssFilter'];
		$select = $db->select()
		->from('diadiem_category AS pc', array('COUNT(pc.id) AS totalItem'));

		$result = $db->fetchOne($select);
		return $result;
	}
	
	public function sortItem($arrParam = null, $options = null){
		$cid = $arrParam['cid'];
		$order = $arrParam['order'];
		if($options['task'] == 'admin-sort'){
			if(count($cid) > 0){
				foreach ($cid as $key => $val){
					$data = array('order' => $order[$val]);
					$where = 'id = ' . $val;
					$this->update($data, $where);
				}
			}
		}
	}
	
	public function listItem($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		
		$paginator = $arrParam['paginator'];
		$ssFilter  = $arrParam['ssFilter'];
		
		if($options['task'] == 'admin-list'){
			$select = $db->select()
			->from('diadiem_category AS pc',array('id','name','parents','status','order','created_by','lang_code'))
			->joinLeft('users AS u', 'u.id = pc.created_by','user_name')
			->order('pc.lang_code DESC')
			->order('pc.order ASC')
			->order('pc.id ASC');
			
			if(!empty($ssFilter['keywords'])){
				$keywords = '%' . $ssFilter['keywords'] . '%';
				$select->where('pc.name LIKE ?', $keywords, STRING);
			}
			
			$parents = 0;
			if(!empty($ssFilter['parents'])){
				$parents = $ssFilter['parents'];
			}
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("pc.lang_code = '" . $ssFilter['lang_code'] . "'");
			}else{
				$language = new Zend_Session_Namespace('language');
				$select->where("pc.lang_code = '" . $language->lang . "'");
			}
			
			$result = $db->fetchAll($select);
			$system = new Zendvn_System_Recursive($result);
			$result = $system->builArray($parents);
		}
		if($options['task'] == 'get-sources'){
		//	$select = $db->select()
		//	->from('diadiem_manu AS u',array('*'))
          //  ->joinLeft('(SELECT * FROM `diadiem_view_catergory` WHERE diadiem_view_catergory.id_product_category=61) AS pm', 'u.id = pm.id_page','*');
          //if($arrParam['id']==''){
          //  $select="SELECT  `u`.`name`  AS `page`,`pm`.* FROM `diadiem_manu` AS `u` LEFT JOIN (SELECT * FROM `diadiem_view_catergory` WHERE diadiem_view_catergory.id_product_category=".$arrParam['id'].") AS `pm` ON u.id = pm.id_page";
          //}else{
            $select="SELECT  `u`.`id`  AS `page_id`,`u`.`name`  AS `page`,`pm`.* FROM `diadiem_manu` AS `u` LEFT JOIN (SELECT * FROM `diadiem_view_catergory` WHERE diadiem_view_catergory.id_product_category=".$arrParam['id'].") AS `pm` ON u.id = pm.id_page";
          //}
           
           // echo $select;die;
			$result = $db->fetchAll($select);
           // var_dump($result);die;
		}
		if($options['task'] == 'public-subcategories'){
			$select = $db->select()
			->from('diadiem_category AS pc',array('id','name','alias','parents','picture'))
			->order('pc.order ASC')
			->order('pc.id ASC');
			
			if(!empty($arrParam['parents'])){
				$select->where('pc.parents = ?',$arrParam['parents'],INTERGER);
			}
			
			$result = $db->fetchAll($select);
		}
		
		return $result;
	}
	
	public function saveItem($arrParam = null, $options = null){
		
		if($options['task'] == 'admin-add'){
            
			foreach($arrParam['id_page'] as $key=> $val){
			    // var_dump($val);die;
                $row 					= $this->fetchNew();
                $row->id_product_category 		= $arrParam['id_category'];
    			$row->id_page 		= $val;
    			$row->lang_code 		= $arrParam['lang_code'];
    
    			$row->save();
			}
			
		}
		
		if($options['task'] == 'admin-edit'){
			$db = Zend_Registry::get('connectDb');
            $where = ' id_product_category=' . $arrParam['id'];
            $result = $this->delete($where);
            
            
			foreach($arrParam['id_page'] as $key=> $val){
			    // var_dump($val);die;
                $row 					= $this->fetchNew();
                $row->	id_product_category 		= $arrParam['id'];
    			$row->id_page 		= $val;
    			$row->lang_code 		= $arrParam['lang_code'];
    
    			$row->save();
			}
		}
	}
	
	public function getItem($arrParam = null, $options = null){
		
		if($options['task'] == 'admin-info' || $options['task'] == 'admin-edit'){ 
			$where = ' id=' . $arrParam['id'];
			$result = $this->fetchRow($where)->toArray();
		}
		
		if($options['task'] == 'public-info'){
			$where = ' id=' . $arrParam['id'];
			$result = $this->fetchRow($where)->toArray();
		}
		return $result;
		
	}
	
	public function deleteItem($arrParam = null, $options = null){
		if($options['task'] == 'admin-delete'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$id = $arrParam['id'];
			$select = $db->select()
				->from('diadiem_category AS pc',array('id','name','parents','status','order','created_by'));
			$result = $db->fetchAll($select);
			$system = new Zendvn_System_Recursive($result);
			$result = $system->builArray($id);
			if(count($result)>0){
				array_unshift($result, array('id'=>$arrParam['id']));
			}else{
				$result[] = array('id' => $arrParam['id']);
			}
			
			$tmp = '';
			foreach ($result as $key => $val){
				if($key == 0){
					$tmp .= $val['id'];
				}else{
					$tmp .= ',' . $val['id'];
				}
			}
			$select_item = $db->select()
			->from('diadiem AS p', array('COUNT(p.id) AS totalItem'))
			->where('cat_id IN (' . $tmp . ')');
			$result_item = $db->fetchOne($select_item);
			
			if($result_item == 0){
				foreach ($result as $key => $val){
					$where = ' id=' . $val['id'];
					$result = $this->delete($where);
				}
			}
		}
		
		if($options['task'] == 'admin-delete-muti'){
			$cid = explode(',', $arrParam['cid']);
			if(!empty($cid) && isset($arrParam['cid'])){
				$db = Zend_Registry::get('connectDb');
				//$db = Zend_Db::factory($adapter, $config);
				$id = $arrParam['id'];
				$select = $db->select()
					->from('diadiem_category AS pc',array('id','name','parents','status','order','created_by'));
				$result = $db->fetchAll($select);
				$newArray = array();
				foreach ($cid as $key => $val){
					$id = $val;
					$newArray[] = array('id' => $id);
					$system = new Zendvn_System_Recursive($result);
					$tmp = $system->builArray($id);
					foreach ($tmp as $keyTmp => $valTmp){
						$newArray[] = $valTmp;
					}
				}
			}

			if(count($newArray)>0){
				$tmp = '';
				foreach ($newArray as $key => $val){
					if($key == 0){
						$tmp .= $val['id'];
					}else{
						$tmp .= ',' . $val['id'];
					}
				}
				$select_item = $db->select()
				->from('diadiem AS p', array('COUNT(p.id) AS totalItem'))
				->where('cat_id IN (' . $tmp . ')');
				$result_item = $db->fetchOne($select_item);
				
				if($result_item == 0){
					foreach ($newArray as $keyNew => $valNew){
						$where = ' id=' . $valNew['id'];
						$result = $this->delete($where);
					}
				}
			}
			
		}
	}
	
	public function changeStatus($arrParam = null, $options = null){
		$cid = $arrParam['cid'];
		if(count($cid) > 0){
			if($arrParam['type'] == 1){
				$status = 1;
			}else{
				$status = 0;
			}
			
			$id = implode(',', $cid);
			$data = array('status' => $status);
			$where = 'id IN (' . $id . ')';
			$this->update($data, $where);
		}
		if($arrParam['id'] > 0){
			if($arrParam['type'] == 1){
				$status = 1;
			}else{
				$status = 0;
			}
			$data = array('status' => $status);
			$where = 'id = ' . $arrParam['id'];
			$this->update($data, $where);
		}
	}
	
	public function changeStatusAcp($arrParam = null, $options = null){
		if($arrParam['id'] > 0){
			if($arrParam['type'] == 1){
				$status = 1;
			}else{
				$status = 0;
			}
			$data = array('group_acp' => $status);
			$where = 'id = ' . $arrParam['id'];
			$this->update($data, $where);
		}
	}
}




