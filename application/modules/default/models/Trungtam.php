<?php
class Default_Model_Trungtam extends Zend_Db_Table{
	
	protected $_name = 'diadiem_manu';
	protected $_primary ='id';
	
	protected $_ids;
	
	public function getItem($arrParam = null, $options = null){
		
		if($options['task'] == 'admin-info' || $options['task'] == 'admin-edit'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('diadiem_manu AS tt')
			->where('tt.id = ?', $arrParam['id']);
				
			$result = $db->fetchRow($select);
		}
		return $result;
	}
	
	public function countItem($arrParam = null, $options = null){
		
		if($options['task'] == 'admin-list'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$ssFilter  = $arrParam['ssFilter'];
			$select = $db->select()
			->from('diadiem_manu AS tt', array('COUNT(tt.id) AS totalItem'));
			
			if(!empty($ssFilter['keywords'])){
				$keywords = '%' . $ssFilter['keywords'] . '%';
				$select->where('tt.name LIKE ?', $keywords, STRING);
			}
			
			$result = $db->fetchOne($select);
		}
		return $result;
	}
	
	public function itemInSelectbox($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		if($options['task'] == 'public'){
			$select = $db->select()
			->from('register_trungtam AS tt',array('id','name'))
			->where('tt.status = ?',1,INTERGER)
			->order('tt.order ASC');
			$result = $db->fetchPairs($select);
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
			->from('diadiem_manu AS tt');
		
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
				$select->where('tt.name LIKE ?', $keywords, STRING);
			}
		
			$result = $db->fetchAll($select);
		}
		
		return $result;
	}

	public function saveItem($arrParam = null, $options = null){
	
		if($options['task'] == 'admin-add'){
		  	if(empty($arrParam['alias'])){
				$filter = new Zendvn_Filter_RewriteUrl();
				$alias 	= $filter->filter($arrParam['name']);
			}else{
				$alias 	= $arrParam['alias'];
			}
			$row 				= $this->fetchNew();
			$row->meta_title 					= $arrParam['meta_title'];
			$row->meta_description			= $arrParam['meta_description'];
            $row->meta_keywords			= $arrParam['meta_keywords'];
			$row->alias 			= $arrParam['alias'];
            $row->picture 			= $arrParam['picture'];
            $row->picture_mobile 			= $arrParam['picture_mobile'];
            $row->picture_banner 			= $arrParam['picture_banner'];
            $row->picture_banner_mobile 			= $arrParam['picture_banner_mobile'];
			$row->name 				= stripslashes($arrParam['name']);
			$row->status 			= $arrParam['status'];
            $row->color 			= $arrParam['colorpickerField1'];
			$row->template			= $arrParam['template'];
            $row->order 			= $arrParam['order'];
			$row->save();
		}
	
		if($options['task'] == 'admin-edit'){
		  // var_dump($arrParam);die;
			if(empty($arrParam['alias'])){
				$filter = new Zendvn_Filter_RewriteUrl();
				$alias 	= $filter->filter($arrParam['name']);
			}else{
				$alias 	= $arrParam['alias'];
			}	
			$where 				= ' id=' . $arrParam['id'];
			$row 				= $this->fetchRow($where);
			$row->meta_title 					= $arrParam['meta_title'];
			$row->meta_description			= $arrParam['meta_description'];
            $row->meta_keywords			= $arrParam['meta_keywords'];
			$row->alias 			= $arrParam['alias'];
            $row->picture 			= $arrParam['picture'];
            $row->picture_mobile 			= $arrParam['picture_mobile'];
            $row->picture_banner 			= $arrParam['picture_banner'];
            $row->picture_banner_mobile 			= $arrParam['picture_banner_mobile'];
			$row->name 				= stripslashes($arrParam['name']);
			$row->status 			= $arrParam['status'];
            $row->order 			= $arrParam['order'];
            $row->synopsis_en 			= $arrParam['synopsis_en'];
			$row->synopsis 			= $arrParam['synopsis'];
            $row->gioithieu_vitri 			= $arrParam['gioithieu_vitri'];
            $row->gioithieu_vitri_en 			= $arrParam['gioithieu_vitri_en'];
            $row->title_slogan 			= $arrParam['title_slogan'];
            $row->title_slogan_en 			= $arrParam['title_slogan_en'];
            $row->picture_vitri 			= $arrParam['picture_vitri'];
            $row->synopsis_library_image 			= $arrParam['synopsis_library_image'];
            $row->synopsis_library_image_en 		= $arrParam['synopsis_library_image_en'];
            $row->picture_multi 			= stripslashes($arrParam['picture_multi']);
            $row->name_en 			= stripslashes($arrParam['name_en']);
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