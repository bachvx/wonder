<?php
class Faqs_Model_Faqs extends Zend_Db_Table{
	
	protected $_name = 'faqs';
	protected $_primary ='id';
	
	protected $_ids;
	
	public function getItem($arrParam = null, $options = null){
		
		if($options['task'] == 'admin-info' || $options['task'] == 'admin-edit'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('faqs AS f')
			->joinLeft('faqs_category AS fc', 'f.cat_id = fc.id',array('fc.name AS category_name'))
			->where('f.id = ?', $arrParam['id'], INTEGER);
				
			$result = $db->fetchRow($select);
		}
		
		if($options['task'] == 'public-detail'){
			$select = $this->select()
					->where('id = ?',$arrParam['id'],INTERGER);
			$result = $this->fetchRow($select)->toArray();
		}
		
		if($options['task'] == 'public-category'){
			if(!empty($arrParam['cid'])){
				$db = Zend_Registry::get('connectDb');
				//$db = Zend_Db::factory($adapter, $config);
				$select = $db->select()
				->from('faqs_category AS fc',array('name','alias','meta_title','meta_description','meta_keywords'))
				->where('fc.id = ?', $arrParam['cid'], INTEGER);
				$result = $db->fetchRow($select);
			}else{
				$language = Zend_Registry::get('language');
				$result = array('name' => $language['language']['faqsHoiDap'],
						'meta_title' => '',
						'meta_description' => '',
						'meta_keywords' => ''
				);
			}
		}
		
		return $result;
	}
	
	public function countItem($arrParam = null, $options = null){
		$ssFilter  = $arrParam['ssFilter'];
		if($options['task'] == 'admin-list'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			
			$select = $db->select()
			->from('faqs AS f', array('COUNT(f.id) AS totalItem'));
			
			if(!empty($ssFilter['keywords'])){
				$keywords = '%' . $ssFilter['keywords'] . '%';
				$select->where('f.title LIKE ?', $keywords, STRING);
			}
			
			if($ssFilter['cat_id']>0){
				$select_category = $db->select()
				->from('faqs_category',array('id','name','parents'))
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
				$select->where('f.cat_id IN (' . $ids . ')');
			}
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("f.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-category'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			if(!empty($arrParam['cid'])){
				$select = $db->select()
				->from('faqs AS f',array('COUNT(f.id) AS totalItem'))
				->where('f.status = ?',1,INTERGER);
				if(!empty($this->_ids)){
					$select->where('f.cat_id IN (' . $this->_ids . ')');
				}
			}else{
				$select = $db->select()
				->from('faqs AS f',array('COUNT(f.id) AS totalItem'))
				->where('f.status = ?',1,INTERGER);
			}
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("f.lang_code = '" . $ssFilter['lang_code'] . "'");
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
			->from('faqs_category AS fc',array('id','name','parents','status','order','created_by'))
			->order('fc.order ASC');
			if(!empty($ssFilter['lang_code'])){
				$select->where("fc.lang_code = '" . $ssFilter['lang_code'] . "'");
			}else{
				$language = new Zend_Session_Namespace('language');
				$select->where("fc.lang_code = '" . $language->lang . "'");
			}
			$result = $db->fetchAll($select);
		}
		
		$system = new Zendvn_System_Recursive($result);
		$result = $system->builArray(0);
		$tmp = array('id' => 0,'name'=>'Chọn danh mục','level'=>1,'parents'=>0,'order'=>1);
		
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
		$ssFilter  = $arrParam['ssFilter'];
		if($options['task'] == 'admin-list'){
			
			$paginator = $arrParam['paginator'];
			
			$select = $db->select()
			->from('faqs AS f')
			->joinLeft('faqs_category AS fc', 'fc.id = f.cat_id',array('fc.name AS category_name'))
			->joinLeft('faqs_reply AS fr', 'fr.faqs_id = f.id','COUNT(fr.id) AS total_reply')
			->group('f.id');
		
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
				$select->where('f.title LIKE ?', $keywords, STRING);
			}
				
			if($ssFilter['cat_id']>0){
				$select_category = $db->select()
				->from('faqs_category',array('id','name','parents'))
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
				$select->where('f.cat_id IN (' . $ids . ')');
			}
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("f.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
		
			$result = $db->fetchAll($select);
		}
		
		if($options['task'] == 'public-list-category'){
            $select = $db->select()
    				->from('faqs_category',array('id','name','alias'))
    				->where('status = ?',1,INTERGER)
                    ->order('id ASC');
    		$result = $db->fetchAll($select);
			
		}
        if($options['task'] == 'public-category-new'){
            $select = $db->select()
				->from('faqs AS f')
				->join('faqs_category AS fc', 'fc.id = f.cat_id',array('fc.name AS category_name','fc.id AS category_id', 'fc.alias AS category_alias'))
				->where('f.status = ?',1,INTERGER)
				->order('cat_id ASC');
			$result = $db->fetchAll($select);
        }
        if($options['task'] == 'public-category'){
			if(!empty($arrParam['cid'])){
				$select = $db->select()
						->from('faqs_category',array('id','name','parents'))
						->where('status = ?',1,INTERGER);
				$resultCategory = $db->fetchAll($select);
				$system = new Zendvn_System_Recursive($resultCategory);
				$newArray = $system->builArray($arrParam['cid']);
				$tmp[] = $arrParam['cid'];
				if(count($newArray)>0){
					foreach ($newArray as $key => $val){
						$tmp[] = $val['id'];
					}
				}
				$ids = implode(',', $tmp);
				$this->_ids = $ids;
				$paginator = $arrParam['paginator'];
				$select = $db->select()
				->from('faqs AS f')
				->joinLeft('faqs_category AS fc', 'fc.id = f.cat_id',array('fc.name AS category_name', 'fc.alias AS category_alias'))
				->joinLeft('faqs_reply AS fr', 'fr.faqs_id = f.id','COUNT(fr.id) AS total_reply')
				->group('f.id')
				->where('f.status = ?',1,INTERGER)
				->where('f.cat_id IN (' . $ids . ')')
				->order('id DESC');
			}else{
				$paginator = $arrParam['paginator'];
				$select = $db->select()
				->from('faqs AS f')
				->joinLeft('faqs_category AS fc', 'fc.id = f.cat_id',array('fc.name AS category_name', 'fc.alias AS category_alias'))
				->joinLeft('faqs_reply AS fr', 'fr.faqs_id = f.id','COUNT(fr.id) AS total_reply')
				->group('f.id')
				->where('f.status = ?',1,INTERGER)
				->order('id DESC');
			}
			
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
				
			if(!empty($ssFilter['lang_code'])){
				$select->where("f.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			
			$result = $db->fetchAll($select);
		}
		
		if($options['task'] == 'public-khac'){
			$select = $db->select()
			->from('faqs_category',array('id','name','parents'))
			->where('status = ?',1,INTERGER);
			$resultCategory = $db->fetchAll($select);
			$system = new Zendvn_System_Recursive($resultCategory);
			$newArray = $system->builArray($arrParam['cid']);
			$tmp[] = $arrParam['cid'];
			if(count($newArray)>0){
				foreach ($newArray as $key => $val){
					$tmp[] = $val['id'];
				}
			}
			$ids = implode(',', $tmp);
			$this->_ids = $ids;

			$select = $db->select()
				->from('faqs AS f')
				->joinLeft('faqs_category AS fc', 'fc.id = f.cat_id',array('fc.name AS category_name', 'fc.alias AS category_alias'))
				->joinLeft('faqs_reply AS fr', 'fr.faqs_id = f.id','COUNT(fr.id) AS total_reply')
				->group('f.id')
				->where('f.status = ?',1,INTERGER)
				->where('f.cat_id IN (' . $ids . ')')
				->where('f.id < ?',$arrParam['id'],INTERGER)
				->order('id DESC')
			->limit(10,0);
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("f.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			$result = $db->fetchAll($select);
		}
		return $result;
		
	}

	public function saveItem($arrParam = null, $options = null){
	   	$db = Zend_Registry::get('connectDb');
		if($options['task'] == 'admin-add'){
			$row 				= $this->fetchNew();
			
			$filter = new Zendvn_Filter_RewriteUrl();
			$alias 	= $filter->filter($arrParam['title']);
			
			$cat_id = 0;
			if(isset($arrParam['cat_id'])){
				$cat_id = $arrParam['cat_id'];
			}

			$row->name 				= stripslashes($arrParam['name']);
			$row->alias				= $alias;
			$row->email				= stripslashes($arrParam['email']);
			$row->title				= stripslashes($arrParam['title']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->date	 			= @date("d/m/Y h:i:s");
			$row->hits	 			= 0;
			$row->like	 			= 0;
			$row->unlike 			= 0;
			$row->order	 			= 255;
			$row->status 			= 0;
			$row->cat_id 			= $cat_id;
			$row->lang_code 		= $arrParam['lang_code'];			

			$row->save();
		}
	
		if($options['task'] == 'admin-edit'){
				
			
		}
		
		if($options['task'] == 'public-faqs-add'){
		     
			$row 					= $this->fetchNew();
			// var_dump($arrParam);
			//die('không chạy đc đến đây vi save ko chạy đc');
			$filter = new Zendvn_Filter_RewriteUrl();
			$alias 	= $filter->filter($arrParam['title']);
		
			$cat_id = 0;
			if(isset($arrParam['cid'])){
				$cat_id = $arrParam['cid'];
			}
			/*
			$row->name 				= stripslashes($arrParam['name']);
			$row->alias				= $alias;
			$row->email				= stripslashes($arrParam['email']);
			$row->title				= stripslashes($arrParam['title']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->date	 			= @date("d/m/Y h:i:s");
			$row->hits	 			= 0;
			$row->like	 			= 0;
			$row->unlike	 		= 0;
			$row->order	 			= 255;
			$row->status 			= 0;
			$row->cat_id 			= $cat_id;
			$row->lang_code 		= $arrParam['lang_code'];
		
			$row->save();
            */
           	$name 				= stripslashes($arrParam['name']);
			$alias				= $alias;
			$email				= stripslashes($arrParam['email']);
			$title				= stripslashes($arrParam['title']);
			$content 			= stripslashes($arrParam['content']);
			$date	 			= @date("d/m/Y h:i:s");
			$hits	 			= 0;
			$like	 			= 0;
			$unlike	 		= 0;
			$order	 			= 255;
			$status 			= 0;
			$cat_id 			= $cat_id;
			$lang_code 		= $arrParam['lang_code'];
            $sql='INSERT INTO faqs (name,alias,email,title,content,date,status,cat_id,lang_code)
                    VALUES 
                ("'.$name.'","'.$alias.'","'.$email.'","'.$title.'","'.$content.'","'.$date.'","'.$status.'","'.$cat_id.'","'.$lang_code.'")';
            ////echo $sql; 
            $stmt = $db->query($sql);
            
           // var_dump($arrParam);
			//die('không chạy đc đến đây vi save ko chạy đc');
		}
		
		if($options['task'] == 'public-hits'){
			$where 				= ' id=' . $arrParam['id'];
			$row 				= $this->fetchRow($where);
				
			$row->hits 		= $arrParam['hits'] + 1;
				
			$row->save();
		}
	}

	public function deleteItem($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		$id = $arrParam['id'];
		if($options['task'] == 'admin-delete'){				
			$select_item = $db->select()
			->from('faqs_reply AS gr', array('COUNT(gr.id) AS totalItem'))
			->where('faqs_id = ?',$id, INTERGER);
			$result_item = $db->fetchOne($select_item);
			if($result_item == 0){
				$where = ' id=' . $id;
				$result = $this->delete($where);
			}
		}
	
		if($options['task'] == 'admin-delete-muti'){
			$cid = explode(',', $arrParam['cid']);
			if(!empty($cid) && isset($arrParam['cid'])){
				$ids = implode(',', $cid);
				foreach ($cid as $key => $val){
					$select_item = $db->select()
					->from('faqs_reply AS gr', array('COUNT(gr.id) AS totalItem'))
					->where('faqs_id = ?',$val, INTERGER);
					$result_item = $db->fetchOne($select_item);
					if($result_item == 0){
						$where = ' id=' . $val;
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