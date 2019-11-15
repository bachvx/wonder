<?php
class Default_Model_Genex extends Zend_Db_Table{
	
	protected $_name = 'genex_page';
	protected $_primary ='id';
	
	protected $_ids;
	public function init(){
		$info 					= new Zendvn_System_Info();
		$id_admin 				= $info->getMemberInfo('id');
		$this->_id_admin 		= $id_admin;
		$this->_user_name 		= $info->getMemberInfo('name');
		$this->_user_phanloai 	= $info->getMemberInfo('phanloai');
	}
	public function getItem($arrParam = null, $options = null){
		
		if($options['task'] == 'admin-edit'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('genex_page AS p')
			->where('p.id = ?', $arrParam['id'], INTEGER);
			//	echo $select;die;
			$result = $db->fetchRow($select);
		}
        if($options['task'] == 'admin-info'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('genex AS p')
			->where('p.id = ?', $arrParam['id'], INTEGER);
			//	echo $select;die;
			$result = $db->fetchRow($select);
		}
		if($options['task'] == 'public-edit'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('diadiem AS p')
			->joinLeft('diadiem_category AS pc', 'p.cat_id = pc.id',array('pc.name AS category_name','pc.alias AS category_alias'))
			->joinLeft('diadiem_units AS pu', 'p.unit_id = pu.id',array('pu.name AS units_name'))
			->joinLeft('diadiem_sources AS ps', 'p.sources_id = ps.id',array('ps.name AS sources_name'))
			->joinLeft('users AS u', 'p.created_by = u.id',array('u.user_name AS user_name'))
			->where('p.created_by = ?', $this->_id_admin, INTEGER)
			->where('p.id = ?', $arrParam['id'], INTEGER);
				
			$result = $db->fetchRow($select);
		}
		
		if($options['task'] == 'public-detail'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('diadiem AS p')
			->joinLeft('diadiem_category AS pc', 'p.cat_id = pc.id',array('pc.name AS category_name','pc.alias AS category_alias'))
			->joinLeft('districts AS dt', 'dt.id = p.districts_id',array('dt.name AS quanhuyen_name')) 
			->joinLeft('diadiem_units AS pu', 'p.unit_id = pu.id',array('pu.name AS units_name'))
			->joinLeft('diadiem_sources AS ps', 'p.sources_id = ps.id',array('ps.name AS sources_name'))
			->joinLeft('users AS u', 'p.created_by = u.id',array('u.user_name AS user_name'))
			->where('p.id = ?', $arrParam['id'], INTEGER);
			 
			$result = $db->fetchRow($select);
		}
		
		if($options['task'] == 'public-category'){
			//if(!empty($arrParam['cid'])){
				$db = Zend_Registry::get('connectDb');
				//$db = Zend_Db::factory($adapter, $config);
				$select = $db->select()
				->from('page_silde AS pc',array('*'))
				->where('pc.manu_id = ?', $arrParam['manu_id'], INTEGER);
				$result = $db->fetchRow($select);
			//}
            //else{
//				$language = Zend_Registry::get('language');
//				$result = array('name' => $language['language']['productSanPham'],
//						'meta_title' => '',
//						'meta_description' => '',
//						'meta_keywords' => ''
//				);
//			}
		}
	//	var_dump($result);die;
		return $result;
	}
	
	public function getOther($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);

		if($options['task'] == 'get-sources'){
			$select = $db->select()
			->from('diadiem_sources AS ps',array('id','name'));
			$result = $db->fetchPairs($select);
			$result[0] = ' -- Chọn Nguồn tin -- ';
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
		
		if($options == null){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('genex_page AS p', array('COUNT(p.id) AS totalItem'));
			$result = $db->fetchOne($select);
		}
		if($options['task'] == 'admin-list'){
			 
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$ssFilter  = $arrParam['ssFilter'];
			$select = $db->select()
			->from('page_silde AS p', array('COUNT(p.id) AS totalItem'));
			
			if(!empty($ssFilter['keywords'])){
				$keywords = '%' . $ssFilter['keywords'] . '%';
				$select->where('p.name LIKE ?', $keywords, STRING);
			}
			
			if($ssFilter['cat_id']>0){
				$select_category = $db->select()
				->from('diadiem_category',array('id','name','parents'))
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
				$select->where('p.cat_id IN (' . $ids . ')');
			}
			
			if(!empty($ssFilter['blocks'])){
				$select->where('p.' . $ssFilter['blocks'] . '= ?', 1, INTERGER);
			}
			
			if(!empty($ssFilter['created_by'])){
				$select 	->	where('p.created_by = ?', $ssFilter['created_by']);
			}
			
			if (!empty($ssFilter['tungay'])) {
					
				$date = new Zend_Date();
				$date->set($ssFilter['tungay']);
				$tungay = $date->toString('YYYY-MM-dd');
				$select->where("DATEDIFF(p.created,'".$tungay."') >= 0");
					
			}
				
			if (!empty($ssFilter['denngay'])) {
				$date2 = new Zend_Date();
				$date2->set($ssFilter['denngay']);
				$denngay = $date2->toString('YYYY-MM-dd');
				$select->where("DATEDIFF(p.created,'".$denngay."') <= 0");
					
			}
			
// 			if(!empty($ssFilter['lang_code'])){
// 				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
// 			}
			
			$result = $db->fetchOne($select);
		}

		if($options['task'] == 'public-category'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			if(!empty($arrParam['cid'])){
				$select = $db->select()
				->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
				->where('p.status = ?',1,INTERGER)
				->where('p.cat_id IN (' . $this->_ids . ')');
			}else{
				$select = $db->select()
				->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
				->where('p.status = ?',1,INTERGER);
			}
			
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
				
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
				
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
				
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-an-sang'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			 
				$select = $db->select()
				->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
				->where('p.time_id =1 OR p.time_id =6')
				->where('p.status = ?',1,INTERGER);
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
			$result = $db->fetchOne($select);
		}
		if($options['task'] == 'public-an-trua'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
		
			$select = $db->select()
			->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
			->where('p.time_id =2 OR p.time_id =6')
			->where('p.status = ?',1,INTERGER);
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-an-chieu'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
		
			$select = $db->select()
			->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
			->where('p.time_id =3 OR p.time_id =6')
			->where('p.status = ?',1,INTERGER);
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-an-toi'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
		
			$select = $db->select()
			->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
			->where('p.time_id =4 OR p.time_id =6')
			->where('p.status = ?',1,INTERGER);
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
			$result = $db->fetchOne($select);
		}
		if($options['task'] == 'public-an-dem'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
		
			$select = $db->select()
			->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
			->where('p.time_id =5 OR p.time_id =6')
			->where('p.status = ?',1,INTERGER);
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
			$result = $db->fetchOne($select);
		}
		

		if($options['task'] == 'public-articleDiaDiem'){
			$info 		= new Zendvn_System_Info();
			$user_info 	= $info->getMemberInfo();
			
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
				$select = $db->select()
				->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
				->where('p.status = ?',1,INTERGER)
				->where('p.created_by = ?',$user_info['id'],INTERGER);
			 
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
				
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
				
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
				
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-index'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			if(!empty($arrParam['cid'])){
				$select = $db->select()
				->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
				->where('p.status = ?',1,INTERGER)
				->where('p.cat_id IN (' . $this->_ids . ')');
			}else{
				$select = $db->select()
				->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
				->where('p.status = ?',1,INTERGER);
			}
				
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
				
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-search'){
			$ssFilter  = $arrParam['ssFilter'];
			$db = Zend_Registry::get('connectDb');
			$select = $db->select()
			->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
			->where('p.status = ?',1,INTERGER)
			->order('id DESC');

			if(!empty($ssFilter['keywords'])){
				$select->where("(p.name like '%" . $ssFilter['keywords'] . "%') OR (p.alias like '%" . $ssFilter['keywords'] . "%')");
			}
			
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
			
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
			
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-block'){
			$ssFilter  = $arrParam['ssFilter'];
			$db = Zend_Registry::get('connectDb');
			$select = $db->select()
			->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
			->where('p.status = ?',1,INTERGER);
			
// 			if(!empty($options['block'])){
// 				if($options['block'] == 'block_khuyenmai'){
// 					$select->where('(p.khuyenmai != "") or (p.selloff != 0)');
// 				}else{
// 					$select->where('p.'.$options['block'].' = ?',1,INTERGER);
// 				}
// 			}

			if(!empty($arrParam['cat_id'])){
				$select->where('p.cat_id = ?',$arrParam['cat_id'],INTERGER);
			}
			
			if(!empty($arrParam['districts_id'])){
				$select->where('p.districts_id = ?',$arrParam['districts_id'],INTERGER);
			}
		
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
		
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
		
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'public-filter'){
			
			$ssFilter  = $arrParam['ssFilter'];
			$db = Zend_Registry::get('connectDb');
			$select = $db->select()
			->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
			->where('p.status = ?',1,INTERGER)
			->order('id DESC');
			
			if($options['filter'] == 'tags'){
				if(!empty($arrParam['key'])){
					$select->where("p.tags like '%" . $arrParam['key'] . "%'");
				}
			}
			
			if($options['filter'] == 'search'){
				if(!empty($ssFilter['keywords'])){
					$select->where("(p.name like '%" . $ssFilter['keywords'] . "%') OR (p.alias like '%" . $ssFilter['keywords'] . "%')");
				}
			}
				
			if(!empty($arrParam['manu'])){
				$select->where('p.manu_id = ?',$arrParam['manu'],INTERGER);
			}
				
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
				
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
			
// 			if(!empty($ssFilter['lang_code'])){
// 				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
// 			}
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
			->from('diadiem_category AS pc',array('id','name','parents','status','order','created_by'))
			->order('pc.order ASC')
			->order('pc.id ASC');
// 			if(!empty($ssFilter['lang_code'])){
// 				$select->where("pc.lang_code = '" . $ssFilter['lang_code'] . "'");
// 			}else{
// 				$language = new Zend_Session_Namespace('language');
// 				$select->where("pc.lang_code = '" . $language->lang . "'");
// 			}
			
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
		
		if($options['task'] == 'admin-user'){
		
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$ssFilter  = $arrParam['ssFilter'];
				
			$select = $db->select()
			->from('users AS u',array('id','CONCAT_WS( "&nbsp",first_name,last_name) AS name'))
			->where('u.phanloai=0')
			->where("u.id !=30")
			->order('u.id ASC');
			$result = $db -> fetchAll($select);
			$system = new Zendvn_System_Recursive($result);
			$result = $system->builArray(0);
			$tmp = array('id' => 0,'name'=>'Chọn nhân viên','level'=>1,'parents'=>0,'order'=>1);
			
			if(count($result)>0){
				array_unshift($result, $tmp);
			}else{
				$result[] = $tmp;
			}
			
			 
		}
		
		
		
		
		 
		return $result;
	}
	
	public function itemUsers($arrParam = null, $options = null){
		 
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		$ssFilter  = $arrParam['ssFilter'];
		if($options == null){
			$select = $db->select()
			->from('users AS u',array('id','CONCAT_WS( "&nbsp",first_name,last_name) AS name'))
			->order('u.id ASC');
			$result = $db -> fetchPairs($select);
			//$result = $db->fetchAll($select);
	
		} 
// 		$system = new Zendvn_System_Recursive($result);
// 		$result = $system->builArray(0);
// 		$tmp = array('id' => 0,'name'=>'Chọn user','level'=>null,'parents'=>null,'order'=>null);
	
// 		if(count($result)>0){
// 			array_unshift($result, $tmp);
// 		}else{
// 			$result[] = $tmp;
// 		}

		$result[0] = '- Chọn nhân viên -';
		asort($result);
		return $result;
	}
	
	public function itemInSelectboxSearch($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		if($options['task'] == 'get-category-search'){
			$select = $db->select()
			->from('diadiem_category AS ac',array('id','name','parents','status','order','created_by'))
			->order('ac.order ASC')
			->order('ac.id ASC');
			$result = $db->fetchPairs($select);
			$result[0] = 'Chọn Chuyên mục';
			ksort($result);
		}
	
	
		return $result;
	}
	public function getSlide($arrParam = null, $options = null){
	   $db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		if($options['task'] == 'index'){
		  $select = $db->select()
			->from('page_silde AS p',array('*'))
            ->where('p.manu_id = ?', $arrParam['manu_id']);
            //var_dump($arrParam);die;
            $result = $db->fetchRow($select);
          // echo($result);die;
           return $result;
		}
	}
	public function listItem($arrParam = null, $options = null){
        $language = new Zend_Session_Namespace('language');
		$db = Zend_Registry::get('connectDb');
		
		if($options['task'] == 'index'){
		  $select = $db->select()
			->from('page_silde AS p',array('*'))
            ->where('p.created_by = ?', $arrParam["manu-id"]);
		}
		if($options['task'] == 'admin-list'){
			
			$paginator = $arrParam['paginator'];
			$ssFilter  = $arrParam['ssFilter'];
			
			$select = $db->select()
			->from('genex_page AS g',array('*'))
		    //->where('status = ?',1,INTERGER);
			->order('g.order ASC');
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
				$select->where('p.name LIKE ?', $keywords, STRING);
			}
		
			if(!empty($language->lang)){
				$select->where("g.lang_code = '" . $language->lang . "'");
			}
			 }
            //echo $select;die("ád");
			$result = $db->fetchAll($select);
            //var_dump($result);die;
            return $result;
			
		
		}
	
	public function saveItem($arrParam = null, $options = null){
		if($options['task'] == 'admin-add'){
		 
            $language = new Zend_Session_Namespace('language');
            
			$row 				= $this->fetchNew();
			$row->name 				= stripslashes($arrParam['name']);
			$row->picture 			= $arrParam['picture'];
			$row->content 			= stripslashes($arrParam['content']);
			$row->mota 			= $arrParam['mota'];
			$row->status 			= $arrParam['status'];
            $row->order 			= $arrParam['order'];
            $row->lang_code 		= $language->lang;
			$row->save();
		}
		
		if($options['task'] == 'admin-edit'){
		  //die("adad");
			$language = new Zend_Session_Namespace('language');	
			$where 				= ' id=' . $arrParam['id'];
			$row 				= $this->fetchRow($where);
			$row->name 				= stripslashes($arrParam['name']);
			$row->picture 			= $arrParam['picture'];
			//$row->thumb 			= $thumb->filter($arrParam['picture']);
		//	$row->picture_multi		= stripslashes($arrParam['picture_multi']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->mota 			= $arrParam['mota'];
			$row->status 			= $arrParam['status'];
            $row->order 			= $arrParam['order'];
            $row->lang_code 		= $language->lang;
          // var_dump($row);die;
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
		
		if($options['task'] == 'public-delete'){
			$where = ' id=' . $arrParam['id'].' AND  created_by=' .$this->_id_admin;
			$result = $this->delete($where);
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