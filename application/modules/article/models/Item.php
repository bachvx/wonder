<?php
class Article_Model_Item extends Zend_Db_Table{
	
	protected $_name = 'articles';
	protected $_primary ='id';
	
	protected $_ids;
	
	public function getItem($arrParam = null, $options = null){
		$language = new Zend_Session_Namespace('language');
        $db = Zend_Registry::get('connectDb');
		if($options['task'] == 'admin-info' || $options['task'] == 'admin-edit'){
			
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('articles AS a')
			->joinLeft('article_category AS ac', 'a.cat_id = ac.id',array('ac.name AS category_name'))
			->joinLeft('users AS u', 'a.created_by = u.id',array('u.user_name AS user_name'))
			->where('a.id = ?', $arrParam['id'], INTEGER);
				
			$result = $db->fetchRow($select);
		}
		
		if($options['task'] == 'public-detail'){
			$select = $db-> select();
            if($language->lang=='vi'){
               $select -> from('articles AS a'); 
            }else{
                $select -> from('articles_en AS a') ;
            }    
			$select	->where('id = ?',$arrParam['id'],INTERGER);
			$result = $db -> fetchRow($select);
              
		}
        if($options['task'] == 'public-banner'){
			$select = $db-> select();
            if($language->lang=='vi'){
               $select -> from('articles AS a'); 
            }else{
                $select -> from('articles_en AS a') ;
            }    
			$select	->where('a.cat_id = ?', 10, INTERGER)
                    ->where('a.block_hot = ?', 1, INTERGER)
                    ->where('a.order = ?', 1, INTERGER);
			$result = $db -> fetchRow($select);
              
		}
		
		if($options['task'] == 'public-category'){
			if(!empty($arrParam['cid'])){
				$db = Zend_Registry::get('connectDb');
				//$db = Zend_Db::factory($adapter, $config);
				$select = $db->select()
				->from('article_category AS ac',array('id','name','name_en','alias','meta_title','meta_description','meta_keywords'))
				->where('ac.id = ?', $arrParam['cid'], INTEGER);
				$result = $db->fetchRow($select);
			}else{
				$language = Zend_Registry::get('language');
				$result = array('name' => $language['language']['baiViet'],
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
		if($options == null){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('articles AS a', array('COUNT(a.id) AS totalItem'));
			
			$result = $db->fetchOne($select);
		}
		if($options['task'] == 'admin-list'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			
			$select = $db->select()
			->from('articles AS a', array('COUNT(a.id) AS totalItem'));
			
			if(!empty($ssFilter['keywords'])){
				$keywords = '%' . $ssFilter['keywords'] . '%';
				$select->where('a.name LIKE ?', $keywords, STRING);
			}
			
			if($ssFilter['cat_id']>0){
				$select_category = $db->select()
				->from('article_category',array('id','name','parents'))
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
				$select->where('a.cat_id IN (' . $ids . ')');
			}
			
			if(!empty($ssFilter['blocks'])){
				$select->where('a.' . $ssFilter['blocks'] . '= ?', 1, INTERGER);
			}
			if(!empty($ssFilter['created_by'])){
				$select 	->	where('a.created_by = ?', $ssFilter['created_by']);
			}
			
			if (!empty($ssFilter['tungay'])) {
					
				$date = new Zend_Date();
				$date->set($ssFilter['tungay']);
				$tungay = $date->toString('YYYY-MM-dd');
				$select->where("DATEDIFF(a.created,'".$tungay."') >= 0");
					
			}
				
			if (!empty($ssFilter['denngay'])) {
				$date2 = new Zend_Date();
				$date2->set($ssFilter['denngay']);
				$denngay = $date2->toString('YYYY-MM-dd');
				$select->where("DATEDIFF(a.created,'".$denngay."') <= 0");
					
			}
				
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-category'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			if(!empty($arrParam['cid'])){
				$select = $db->select()
				->from('articles AS a',array('COUNT(a.id) AS totalItem'))
				->where('a.status = ?',1,INTERGER);
				if(!empty($this->_ids)){
					$select->where('a.cat_id IN (' . $this->_ids . ')');
				}
			}else{
				$select = $db->select()
				->from('articles AS a',array('COUNT(a.id) AS totalItem'))
				->where('a.status = ?',1,INTERGER)
                ->where('a.cat_id <> ?',11,INTERGER);
			}
			
		//	if(!empty($ssFilter['lang_code'])){
		//	//	$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
		//	}
			
			$result = $db->fetchOne($select);
		}
		if($options['task'] == 'public-category-page'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
		//	if(!empty($arrParam['cid'])){
//				$select = $db->select()
//				->from('articles AS a',array('COUNT(a.id) AS totalItem'))
//				->where('a.status = ?',1,INTERGER);
//				if(!empty($this->_ids)){
//					$select->where('a.cat_id IN (' . $this->_ids . ')');
//				}
//			}else{
				$select = $db->select()
				->from('articles AS a',array('COUNT(a.id) AS totalItem'))
                ->where('a.cat_id = ?',$arrParam['cid'],INTERGER)
				->where('a.status = ?',1,INTERGER);
			//}
			
		//	if(!empty($ssFilter['lang_code'])){
		//	//	$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
		//	}
		//	echo $select;die;
			$result = $db->fetchOne($select);
		}
		if($options['task'] == 'public-search'){
			$ssFilter  = $arrParam['ssFilter'];
			$db = Zend_Registry::get('connectDb');
			$select = $db->select()
			->from('articles AS a',array('COUNT(a.id) AS totalItem'))
			->where('a.status = ?',1,INTERGER);
		
			if(!empty($ssFilter['keywords'])){
				$select->where("(a.name like '%" . $ssFilter['keywords'] . "%') OR (a.alias like '%" . $ssFilter['keywords'] . "%')");
			}
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-tags'){
			$ssFilter  = $arrParam['ssFilter'];
			$db = Zend_Registry::get('connectDb');
			$select = $db->select()
			->from('articles AS a',array('COUNT(a.id) AS totalItem'))
			->where('a.status = ?',1,INTERGER);
		
			if(!empty($arrParam['key'])){
				$select->where("a.tags like '%" . $arrParam['key'] . "%'");
			}
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
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
			->from('article_category AS ac',array('id','name','parents','status','order','created_by'))
			->order('ac.order ASC')
			->order('ac.id ASC');
			if(!empty($ssFilter['lang_code'])){
				$select->where("ac.lang_code = '" . $ssFilter['lang_code'] . "'");
			}else{
				$language = new Zend_Session_Namespace('language');
				$select->where("ac.lang_code = '" . $language->lang . "'");
			}
			$result = $db->fetchAll($select);
            $system = new Zendvn_System_Recursive($result);
    		$result = $system->builArray(0);
    		$tmp = array('id' => 0,'name'=>'Chọn danh mục','level'=>1,'parents'=>0,'order'=>1);
    		
    		if(count($result)>0){
    			array_unshift($result, $tmp);
    		}else{
    			$result[] = $tmp;
    		}
		}
       if($options['task'] == 'get-page'){
    		$select = $db->select()
    		->from('page AS tg',array('id','name'));
    		$result = $db->fetchPairs($select);
            
    		$result[0] = ' -- Thuộc page -- ';
    		ksort($result);
           // var_dump($result);die;
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
			->from('articles AS a',array('id','name','alias','picture','thumb','cat_id','order','hits','status','lang_code'))
			->joinLeft('users AS u', 'u.id = a.created_by',array('u.first_name AS user_first_name','u.last_name AS user_last_name'))
			->joinLeft('article_category AS ac', 'ac.id = a.cat_id',array('ac.name AS category_name'));
		
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
				$select->where('a.name LIKE ?', $keywords, STRING);
			}
				
			if($ssFilter['cat_id']>0){
				$select_category = $db->select()
				->from('article_category',array('id','name','parents'))
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
				$select->where('a.cat_id IN (' . $ids . ')');
			}
			
			if(!empty($ssFilter['blocks'])){
				$select->where('a.' . $ssFilter['blocks'] . '= ?', 1, INTERGER);
			}
			
			if(!empty($ssFilter['created_by'])){
				$select 	->	where('a.created_by = ?', $ssFilter['created_by']);
			}
				
			if (!empty($ssFilter['tungay'])) {
					
				$date = new Zend_Date();
				$date->set($ssFilter['tungay']);
				$tungay = $date->toString('YYYY-MM-dd');
				$select->where("DATEDIFF(a.created,'".$tungay."') >= 0");
					
			}
			
			if (!empty($ssFilter['denngay'])) {
				$date2 = new Zend_Date();
				$date2->set($ssFilter['denngay']);
				$denngay = $date2->toString('YYYY-MM-dd');
				$select->where("DATEDIFF(a.created,'".$denngay."') <= 0");
					
			}
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
		
			$result = $db->fetchAll($select);
		}
		if($options['task'] == 'public-category-page'){
		  
		  	$language = Zend_Registry::get('language');
           // var_dump($ssFilter);die;
             
			//if(!empty($arrParam['cid'])){
//				$select = $db->select()
//						->from('article_category',array('id','name','parents'))
//						->where('status = ?',1,INTERGER);
//				$resultCategory = $db->fetchAll($select);
//				$system = new Zendvn_System_Recursive($resultCategory);
//				$newArray = $system->builArray($arrParam['cid']);
//				$tmp[] = $arrParam['cid'];
//				if(count($newArray)>0){
//					foreach ($newArray as $key => $val){
//						$tmp[] = $val['id'];
//					}
//				}
//				$ids = implode(',', $tmp);
//				$this->_ids = $ids;
//				$paginator = $arrParam['paginator'];
//				$select = $db->select()
//				->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
//				->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name', 'ac.alias AS category_alias'))
//				->where('a.status = ?',1,INTERGER)
//				->where('a.cat_id IN (' . $ids . ')')
//				->order('id DESC');
//			}else{
			
                $paginator = $arrParam['paginator'];
                $select = $db->select();
                if($ssFilter['lang_code']=='vi'){
    			     $select ->from('articles AS a',array('id','name','video','alias','picture','thumb','synopsis','cat_id','created','hits'));
    			}else{
    			     $select ->from('articles_en AS a',array('id','name','video','alias','picture','thumb','synopsis','cat_id','created','hits'));
    			}
				
				
				$select ->where('a.cat_id = ?',$arrParam['cid'],INTERGER)
                        ->where('a.page_id = ?',$arrParam['pid'],INTERGER)
        				->where('a.status = ?',1,INTERGER)
        				->order('id DESC');
			//}
			
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
				
			//if(!empty($ssFilter['lang_code'])){
			//	$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			//}
          // echo $select;die;
			$result = $db->fetchAll($select);
            
		}
		if($options['task'] == 'public-category-moban'){
		  
		  	$language = new Zend_Session_Namespace('language');
            
			if(!empty($arrParam['cid'])){
				$select = $db->select()
						->from('article_category',array('id','name','parents'))
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
				->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
				->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name', 'ac.alias AS category_alias'))
				->where('a.status = ?',1,INTERGER)
				->where('a.cat_id IN (' . $ids . ')')
				->order('id DESC');
			}else{
			
                $paginator = $arrParam['paginator'];
                $select = $db->select();
                if($language->lang=='vi'){
    			     $select ->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
                                ->where('a.cat_id = ?', 10, INTERGER);
    			}else{
    			     $select ->from('articles_en AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
                            ->where('a.cat_id = ?', 10, INTERGER);
    			}
				$select ->where('a.status = ?',1,INTERGER)
                        ->where('a.block_hot = ?',0,INTERGER)
        				->order('id DESC');
			}
			
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount-1);
			}
				
			//if(!empty($ssFilter['lang_code'])){
			//	$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			//}
          //echo $select;
			$result = $db->fetchAll($select);
            
		}
        if($options['task'] == 'public-category-moban-one'){
		  
		  	$language = new Zend_Session_Namespace('language');
            
			$paginator = $arrParam['paginator'];
                $select = $db->select();
                if($language->lang=='vi'){
    			     $select ->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
                                ->where('a.cat_id = ?', 10, INTERGER);
    			}else{
    			     $select ->from('articles_en AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
                            ->where('a.cat_id = ?', 10, INTERGER);
    			}
				$select ->where('a.status = ?',1,INTERGER)
				->order('id DESC')
                ->limit(1);
			$result = $db->fetchAll($select);
            
		}
		if($options['task'] == 'public-category-baochi'){
		  
		  	$language = new Zend_Session_Namespace('language');
             
			if(!empty($arrParam['cid'])){
				$select = $db->select()
						->from('article_category',array('id','name','parents'))
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
				->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
				->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name', 'ac.alias AS category_alias'))
				->where('a.status = ?',1,INTERGER)
				->where('a.cat_id IN (' . $ids . ')')
				->order('id DESC');
			}else{
			
                $paginator = $arrParam['paginator'];
                $select = $db->select();
                if($language->lang=='vi'){
    			     $select ->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
                                ->where('a.cat_id = ?', 2, INTERGER);
    			}else{
    			     $select ->from('articles_en AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
                           ->where('a.cat_id = ?', 2, INTERGER);
    			}
				
				
				
				$select ->where('a.status = ?',1,INTERGER)
				->order('id DESC');
			}
			
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
			//	echo $select
			//if(!empty($ssFilter['lang_code'])){
			//	$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			//}
          
			$result = $db->fetchAll($select);
            
		}
		if($options['task'] == 'public-old'){
            $language = new Zend_Session_Namespace('language');
			$select = $db->select()
			->from('article_category',array('id','name','parents'))
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
            
            
            
            
			$select = $db->select();
            if($language->lang=='vi'){
			    $select ->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'));
            }else{
                $select ->from('articles_en AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'));
            }
			$select ->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name', 'ac.alias AS category_alias'))
			->where('a.status = ?',1,INTERGER)
			//->where('a.cat_id IN (' . $ids . ')')
			->where('a.id <> ?', $arrParam['id'], INTERGER)
            ->where('ac.id <> ?', 11, INTERGER)
			->order('id DESC')
			->limit(5,0);
			//if(!empty($ssFilter['lang_code'])){
//				$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
//			}
            //echo $select;die;
			$result = $db->fetchAll($select);
		}
		
		if($options['task'] == 'public-new'){
			$select = $db->select()
			->from('article_category',array('id','name','parents'))
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
			->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
			->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name', 'ac.alias AS category_alias'))
			->where('a.status = ?',1,INTERGER)
			->where('a.cat_id IN (' . $ids . ')')
			->where('a.id > ?', $arrParam['id'], INTERGER)
			->order('id DESC')
			->limit(10,0);
			if(!empty($ssFilter['lang_code'])){
				$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			$result = $db->fetchAll($select);
		}
		
		if($options['task'] == 'public-search'){
			$ssFilter  = $arrParam['ssFilter'];
			$paginator = $arrParam['paginator'];
			$select = $db->select()
			->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
			->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name', 'ac.alias AS category_alias'))
			->where('a.status = ?',1,INTERGER)
			->order('a.id DESC');
				
			if(!empty($ssFilter['keywords'])){
				$select->where("(a.name like '%" . $ssFilter['keywords'] . "%') OR (a.alias like '%" . $ssFilter['keywords'] . "%')");
			}
		
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
		
			$result = $db->fetchAll($select);
		}
		
		if($options['task'] == 'public-tags'){
			$ssFilter  = $arrParam['ssFilter'];
			$paginator = $arrParam['paginator'];
			$select = $db->select()
			->from('articles AS a',array('id','name','alias','picture','thumb','synopsis','cat_id','created','hits'))
			->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name', 'ac.alias AS category_alias'))
			->where('a.status = ?',1,INTERGER)
			->order('a.id DESC');
		
			if(!empty($arrParam['key'])){
				$select->where("a.tags like '%" . $arrParam['key'] . "%'");
			}
		
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("a.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			$result = $db->fetchAll($select);
		}
		
		return $result;
		
	}

	public function saveItem($arrParam = null, $options = null){
	
		if($options['task'] == 'admin-add'){
            //$date = date_create($arrParam['ngaysudung']);
            $date= date_format($date, 'Y-m-d H:i:s');
			$row 				= $this->fetchNew();
			if(empty($arrParam['alias'])){
				$filter = new Zendvn_Filter_RewriteUrl();
				$alias 	= $filter->filter($arrParam['name']);
			}else{
				$alias 	= $arrParam['alias'];
			}
			$info 					= new Zendvn_System_Info();
			$created_by 			= $info->getMemberInfo('id');
			
			$thumb = new Zendvn_Filter_GetThumb();

			$row->name 				= stripslashes($arrParam['name']);
			$row->alias 			= $alias;
            $row->page_id 			= $arrParam['page_id'];
			$row->picture 			= $arrParam['picture'];
            $row->picture_mobile 	= $arrParam['picture_mobile'];
			$row->thumb 			= $thumb->filter($arrParam['picture']);
			$row->synopsis			= stripslashes($arrParam['synopsis']);
			$row->author			= stripslashes($arrParam['author']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->created 			= @date("Y-m-d h:m:s");
			$row->created_by		= $created_by;
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			$row->block_noibat 		= $arrParam['block_noibat'];
			$row->block_hot 		= $arrParam['block_hot'];
			$row->cat_id 			= $arrParam['cat_id'];
			$row->tags	 			= stripslashes($arrParam['tags']);
			$row->meta_title 		= stripslashes($arrParam['meta_title']);
			$row->meta_description 	= stripslashes($arrParam['meta_description']);
			$row->meta_keywords 	= stripslashes($arrParam['meta_keywords']);
            $row->video 		= $arrParam['video'];
			$row->lang_code 		= 'vi';
            //$row->coupon 		= $arrParam['coupon'];
            //$row->link 		= $arrParam['link'];

			$row->save();
            return $id_category=$row->id;
		}
	
		if($options['task'] == 'admin-edit'){
			//$date = date_create($arrParam['ngaysudung']);
            //$date= date_format($date, 'Y-m-d H:i:s');	
			$where 				= ' id=' . $arrParam['id'];
			$row 				= $this->fetchRow($where);
				
			if(empty($arrParam['alias'])){
				$filter = new Zendvn_Filter_RewriteUrl();
				$alias 	= $filter->filter($arrParam['name']);
			}else{
				$alias 	= $arrParam['alias'];
			}
			$info 					= new Zendvn_System_Info();
			$modified_by 			= $info->getMemberInfo('id');
			
			$thumb = new Zendvn_Filter_GetThumb();
			
			$row->name 				= stripslashes($arrParam['name']);
			$row->alias 			= $alias;
			$row->picture 			= $arrParam['picture'];
            $row->picture_mobile 	= $arrParam['picture_mobile'];
            $row->page_id 			= $arrParam['page_id'];
			$row->thumb 			= $thumb->filter($arrParam['picture']);
			$row->synopsis			= stripslashes($arrParam['synopsis']);
			$row->author			= stripslashes($arrParam['author']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->modified 			= @date("Y-m-d h:m:s");
			$row->modified_by		= $modified_by;
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			$row->block_noibat 		= $arrParam['block_noibat'];
			$row->block_hot 		= $arrParam['block_hot'];
			$row->cat_id 			= $arrParam['cat_id'];
			$row->tags	 			= stripslashes($arrParam['tags']);
			$row->meta_title 		= stripslashes($arrParam['meta_title']);
			$row->meta_description 	= stripslashes($arrParam['meta_description']);
			$row->meta_keywords 	= stripslashes($arrParam['meta_keywords']);
            $row->video 		= $arrParam['video'];
			$row->lang_code 		= 'vi';
            //$row->ngaysudung 		= $date;
            //$row->coupon 		= $arrParam['coupon'];
            //$row->link 		= $arrParam['link'];
				
			$row->save();
		}
		
		if($options['task'] == 'public-hits'){
			$where 				= ' id=' . $arrParam['id'];
			$row 				= $this->fetchRow($where);
			
			$row->hits 		= $arrParam['hits'] + 1;
			
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
	public function loadajax($arr,$arrParam){
	  
       $db = Zend_Registry::get('connectDb');
	   $select = $db->select()
				->from('articles AS a',array('id','name','alias','picture','cat_id','synopsis'))
				->join('article_category AS ac', 'ac.id = a.cat_id',array('name AS category_name','alias AS category_alias'));
                if(!empty($arrParam)){
                  $select -> where('a.cat_id = ?',$arrParam);
                }
				$select ->limit(10,$arr)
				->order('a.order ASC')
				->order('a.id DESC');
               
              
		$result = $db->fetchAll($select);
       
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
}