<?php
class Default_Model_Phanphoi extends Zend_Db_Table{
	
	protected $_name = 'phanphoi';
	protected $_primary ='id';
	
	protected $_ids;
	
	public function getItem($arrParam = null, $options = null){
		
		if($options['task'] == 'admin-info' || $options['task'] == 'admin-edit'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('phanphoi AS l')
			//->joinLeft('link_category AS lc', 'l.cat_id = lc.id',array('lc.name AS category_name'))
			->where('l.id = ?', $arrParam['id'], INTEGER);
				
			$result = $db->fetchRow($select);
		}
		return $result;
	}
	public function getOther($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);

		if($options['task'] == 'get-mien'){
			$select = $db->select()
			->from('countries AS ps',array('id','name'))
            ->where('status = ?',1,INTERGER);;
			$result = $db->fetchPairs($select);
			$result[0] = ' -- Chọn miền-- ';
			ksort($result);
		}
		if($options['task'] == 'get-shop'){
			
			$select = $db->select()
				->from('diadiem_shop AS ps',array('id','name'));
			
			if(!empty($arrParam['cat_id'])){
				$select->where('ps.cat_id = ?', $arrParam['cat_id'], INTERGER);
			}
			
			$result = $db->fetchPairs($select);
			$result[0] = ' -- Chọn địa điểm -- ';
			ksort($result);
		}
		return $result;
	}
	public function countItem($arrParam = null, $options = null){
		
		if($options['task'] == 'admin-list'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$ssFilter  = $arrParam['ssFilter'];
			$select = $db->select()
			->from('phanphoi AS l', array('COUNT(l.id) AS totalItem'));
			
			if(!empty($ssFilter['keywords'])){
				$keywords = '%' . $ssFilter['keywords'] . '%';
				$select->where('l.name LIKE ?', $keywords, STRING);
			}
			
			if($ssFilter['cat_id']>0){
				$select_category = $db->select()
				->from('link_category',array('id','name','parents'))
				->where('status = ?',1,INTERGER);
				$resultCategory = $db->fetchAll($select_category);
				$system = new Zendvn_System_Recursive($resultCategory);
				$newArray = $system->builArray($ssFilter['cat_id']);
				$tmp[] = $ssFilter['cat_id'];
				if(count($newArray)>0){
					foreach ($newArray as $key => $val){
						$tmp[] = $val['id'];
					}
				}
				$ids = implode(',', $tmp);
				$select->where('l.cat_id IN (' . $ids . ')');
			}
			
			$result = $db->fetchOne($select);
		}
		return $result;
	}
	
	public function itemInSelectbox($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		$ssFilter  = $arrParam['ssFilter'];
		if($options == null){
			$select = $db->select()
			->from('link_category AS lc',array('id','name','parents','status','order','created_by'))
			->order('lc.order ASC');
			$result = $db->fetchAll($select);
		}
		
		$system = new Zendvn_System_Recursive($result);
		$result = $system->builArray(0);
		$tmp = array('id' => 0,'name'=>'Chọn nhóm','level'=>1,'parents'=>0,'order'=>1);
		
		if(count($result)>0){
			array_unshift($result, $tmp);
		}else{
			$result[] = $tmp;
		}
	
		return $result;
	}
	
	public function listItem($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		
		if($options['task'] == 'admin-list'){
			
			$paginator = $arrParam['paginator'];
			$ssFilter  = $arrParam['ssFilter'];
			
			$select = $db->select()
			->from('phanphoi AS l',array('id','name','cat_id','order','status','lang_code'))
			->join('countries AS lc', 'lc.id = l.cat_id',array('lc.name AS category_name'));
		
			if(!empty($ssFilter['col']) && !empty($ssFilter['order'])){
				$select->order($ssFilter['col'] . ' ' . $ssFilter['order']);
			}
		
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
		
			if(!empty($ssFilter['keywords'])){
				$keywords = '%' . $ssFilter['keywords'] . '%';
				$select->where('l.name LIKE ?', $keywords, STRING);
			}
				
			if($ssFilter['cat_id']>0){
				$select_category = $db->select()
				->from('ads_category',array('id','name','parents'))
				->where('status = ?',1,INTERGER);
				$resultCategory = $db->fetchAll($select_category);
				$system = new Zendvn_System_Recursive($resultCategory);
				$newArray = $system->builArray($ssFilter['cat_id']);
				$tmp[] = $ssFilter['cat_id'];
				if(count($newArray)>0){
					foreach ($newArray as $key => $val){
						$tmp[] = $val['id'];
					}
				}
				$ids = implode(',', $tmp);
				$select->where('l.cat_id IN (' . $ids . ')');
			}
		
			$result = $db->fetchAll($select);
		}
		if($options['task'] == 'public-daily'){
			
				$select = $db->select()
				->from('phanphoi AS a',array('*'))
				->where('a.status = ?',1,INTERGER)
				//->order('id DESC');
                ->order('cat_id ASC');
			//	echo $select;die;
		//	if(!empty($ssFilter['lang_code'])){
		//		$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
		//	}
			
			$result = $db->fetchAll($select);
		}
		if($options['task'] == 'public-list'){
			$select = $db->select()
			->from('link AS l',array('id','name','picture','cat_id','order','status','url','lang_code'))
			->joinLeft('link_category AS lc', 'lc.id = l.cat_id',array('lc.name AS category_name'))
			->where('l.status = ?',1,INTERGER);
			
			$result = $db->fetchAll($select);
		}
		
		return $result;
	}

	public function saveItem($arrParam = null, $options = null){
	
		if($options['task'] == 'admin-add'){
			$row 				= $this->fetchNew();
			$info 					= new Zendvn_System_Info();
			$created_by 			= $info->getMemberInfo('id');

			$row->name 				= stripslashes($arrParam['name']);
            $row->name_en 				= stripslashes($arrParam['name_en']);
		//	$row->picture 			= $arrParam['picture'];
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			$row->created 			= @date("Y-m-d h:m:s");
		//	$row->url 				= $arrParam['url'];
			$row->cat_id 			= $arrParam['cat_id'];
			$row->synopsis 			= $arrParam['synopsis'];
            $row->synopsis_en 			= $arrParam['synopsis_en'];
			$row->lang_code 		= 'vi';

			$row->save();
		}
	
		if($options['task'] == 'admin-edit'){
				
			$where 				= ' id=' . $arrParam['id'];
			$row 				= $this->fetchRow($where);

			$info 					= new Zendvn_System_Info();
			$modified_by 			= $info->getMemberInfo('id');
			
			$row->name 				= stripslashes($arrParam['name']);
            $row->name_en 				= stripslashes($arrParam['name_en']);
		//	$row->picture 			= $arrParam['picture'];
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			$row->created 			= @date("Y-m-d h:m:s");
		//	$row->url 				= $arrParam['url'];
			$row->cat_id 			= $arrParam['cat_id'];
			$row->synopsis 			= $arrParam['synopsis'];
            $row->synopsis_en 			= $arrParam['synopsis_en'];
            $row->lang_code 		= 'vi';
				
			$row->save();
		}
	}

	public function deleteItem($arrParam = null, $options = null){
		if($options['task'] == 'admin-delete'){				
			$where = ' id=' . $arrParam['id'];
			$result = $this->delete($where);
		}
	
		if($options['task'] == 'admin-delete-muti'){
			$cid = explode(',', $arrParam['cid']);
			if(!empty($cid) && isset($arrParam['cid'])){
				$ids = implode(',', $cid);
				$where = 'id IN (' . $ids . ')';
				$this->delete($where);
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
}