<?php
class Product_Model_Item extends Zend_Db_Table{
	
	protected $_name = 'diadiem';
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
		$language = new Zend_Session_Namespace('language');
		if($options['task'] == 'admin-info' || $options['task'] == 'admin-edit'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('diadiem AS p')
			->joinLeft('diadiem_category AS pc', 'p.cat_id = pc.id',array('pc.name AS category_name','pc.alias AS category_alias'))
			->joinLeft('diadiem_sources AS ps', 'p.sources_id = ps.id',array('ps.name AS sources_name'))
			->joinLeft('users AS u', 'p.created_by = u.id',array('u.user_name AS user_name')) 
			->where('p.id = ?', $arrParam['id'], INTEGER);
				
			$result = $db->fetchRow($select);
		}
		if($options['task'] == 'public-edit'){
			$db = Zend_Registry::get('connectDb');
			
			$select = $db->select()
            ->from('diadiem AS p')
            ->joinLeft('diadiem_category AS pc', 'p.cat_id = pc.id',array('pc.name AS category_name','pc.alias AS category_alias'))
			->joinLeft('diadiem_units AS pu', 'p.unit_id = pu.id',array('pu.name AS units_name'))
			->joinLeft('diadiem_sources AS ps', 'p.sources_id = ps.id',array('ps.name AS sources_name'))
			->joinLeft('users AS u', 'p.created_by = u.id',array('u.user_name AS user_name'))
			->where('p.created_by = ?', $this->_id_admin, INTEGER)
			->where('p.id = ?', $arrParam['id'], INTEGER);
				echo $select;die;
			$result = $db->fetchRow($select);
		}
		
		if($options['task'] == 'public-detail'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select();
            if($language->lang=='vi'){
			     $select ->from('diadiem AS p');
			}else{
			     $select ->from('diadiem_en AS p');
			}
		//	$select->joinLeft('diadiem_category AS pc', 'p.cat_id = pc.id',array('pc.name AS category_name','pc.alias AS category_alias'))
			//->joinLeft('districts AS dt', 'dt.id = p.districts_id',array('dt.name AS quanhuyen_name')) 
			//->joinLeft('diadiem_units AS pu', 'p.unit_id = pu.id',array('pu.name AS units_name'))
		//	->joinLeft('diadiem_sources AS ps', 'p.sources_id = ps.id',array('ps.name AS sources_name'))
			//->joinLeft('users AS u', 'p.created_by = u.id',array('u.user_name AS user_name'))
			$select->where('p.id = ?', $arrParam['id'], INTEGER);
			 //echo $select;die;
			$result = $db->fetchRow($select);
		}
		
		if($options['task'] == 'public-category'){
			if(!empty($arrParam['cid'])){
				$db = Zend_Registry::get('connectDb');
				//$db = Zend_Db::factory($adapter, $config);
				$select = $db->select()
				->from('diadiem_category AS pc',array('id','name','name_en','alias','picture','picture_multi','content','meta_title','meta_description','meta_keywords'))
				->where('pc.alias = ?', $arrParam['title'], STRING);
                //var_dump($arrParam['title']);die;
                //echo $select;die;
				$result = $db->fetchRow($select);
			}else{
				$language = Zend_Registry::get('language');
				$result = array('name' => $language['language']['productSanPham'],
						'meta_title' => '',
						'meta_description' => '',
						'meta_keywords' => ''
				);
			}
		}
        if($options['task'] == 'public-tienich'){
			if(!empty($arrParam['cid'])){
				$db = Zend_Registry::get('connectDb');
				//$db = Zend_Db::factory($adapter, $config);
				$select = $db->select()
				->from('diadiem_category AS pc',array('id','name','name_en','alias','picture','picture_multi','content','meta_title','meta_description','meta_keywords'))
				->where('pc.alias = ?', $arrParam['title'], STRING);
                //var_dump($arrParam['title']);die;
                //echo $select;die;
				$result = $db->fetchRow($select);
			}else{
				$language = Zend_Registry::get('language');
				$result = array('name' => $language['language']['productSanPham'],
						'meta_title' => '',
						'meta_description' => '',
						'meta_keywords' => ''
				);
			}
		}
		//var_dump($result);die;
		return $result;
	}
	
	public function getOther($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
        if($options['task'] == 'getslide'){
            //var_dump($arrParam['manu_id']);die;
				$select = $db->select()
				->from('page_silde AS pc',array('*'))
                
				->where('pc.manu_id = ?', $arrParam['manu-id'],INTERGER);
                //echo $select;die;
				$result = $db->fetchRow($select);
        }
		if($options['task'] == 'template_id'){
            //var_dump($arrParam['manu_id']);die;
				$select = $db->select()
				->from('diadiem_manu AS pc',array('*'))
                
				->where('pc.id = ?', $arrParam['manu-id'],INTERGER);
                //echo $select;die;
				$result = $db->fetchRow($select);
        }	
		if($options['task'] == 'get-sources'){
			$select = $db->select()
			->from('diadiem_sources AS ps',array('id','name'));
			$result = $db->fetchPairs($select);
			$result[0] = ' -- Chọn Nguồn tin -- ';
			ksort($result);
		}
		if($options['task'] == 'get-cat'){
			$select = $db->select()
			->from('diadiem_category AS d',array('id','name'))
            ->where('d.alias = ?', $arrParam['title']);
			$result = $db->fetchRow($select);
			
		}
		return $result;
	}
	
	public function countItem($arrParam = null, $options = null){
		
		if($options == null){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('diadiem AS p', array('COUNT(p.id) AS totalItem'));
			$result = $db->fetchOne($select);
		}
		if($options['task'] == 'admin-list'){
			 
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$ssFilter  = $arrParam['ssFilter'];
			$select = $db->select()
			->from('diadiem AS p', array('COUNT(p.id) AS totalItem'));
			
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
				->where('p.cat_id = ?',$arrParam['cat_id']);
			}else{
				$select = $db->select()
				->from('diadiem AS p',array('COUNT(p.id) AS totalItem'))
				->where('p.status = ?',1,INTERGER);
			}
			
			if(!empty($arrParam['cid'])){
				$select->where('p.manu_id = ?',$arrParam['manu-id'],INTERGER);
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
			//	echo $select;die;
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
		  //var_dump($arrParam);die;
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

			if(!empty($arrParam['keywords'])){
				$select->where("(p.name like '%" . $arrParam['keywords'] . "%' OR code like '%" . $arrParam['keywords'] . "%' )" );
			}
		
			if(!empty($arrParam['cat_id'])){
				$select->where('p.cat_id = ?',$arrParam['cat_id'],INTERGER);
			}
            if(!empty($arrParam['trademark'])){
				$select->where('p.manu_id = ?',$arrParam['trademark'],INTERGER);
			}
            if(!empty($arrParam['price']) and !empty($arrParam['price_to'])){
				$select->where('p.price >= ?',$arrParam['price'],INTERGER)
                
                        ->where('p.price <= ?',$arrParam['price_to'],INTERGER);
                        
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
           // echo $select;die;
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
 			if(!empty($ssFilter['lang_code'])){
 				$select->where("pc.lang_code = '" . $ssFilter['lang_code'] . "'");
 			}else{
 				$language = new Zend_Session_Namespace('language');
 				$select->where("pc.lang_code = '" . $language->lang . "'");
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
	
	public function listItem($arrParam = null, $options = null){
	   $language = new Zend_Session_Namespace('language');
		$db = Zend_Registry::get('connectDb');
		if($options['task'] == 'admin-list'){
		
			$paginator = $arrParam['paginator'];
			$ssFilter  = $arrParam['ssFilter'];
			
			$select = $db->select()
			->from('diadiem AS p',array('id','code','name','alias','picture','thumb','selloff','cat_id','order','hits','status','lang_code'))
            ->join('diadiem_manu AS dm', 'dm.id = p.manu_id',array('dm.name AS page'))
			->joinLeft('diadiem_category AS pc', 'pc.id = p.cat_id',array('pc.name AS category_name'))
			->joinLeft('users AS u', 'u.id = p.created_by',array('u.first_name AS user_first_name','u.last_name AS user_last_name'))
			->joinLeft('users AS u2', 'u2.id = p.created_by',array('u2.member_hoten AS member_hoten','u2.id AS member_id','u2.user_name AS mem_user_name'));
			
			if(!empty($ssFilter['col']) && !empty($ssFilter['order'])){
				$select->order($ssFilter['col'] . ' ' . $ssFilter['order']);
			}
			
			if($options['filter'] == 'tags'){
				if(!empty($arrParam['key'])){
					$select->where("p.tags like '%" . $arrParam['key'] . "%'");
				}
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
			
			 
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
		
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
			
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
            //echo $select;die;
			 
			$result = $db->fetchAll($select);
			
		}
        if($options['task'] == 'public-category-search'){
            $ssFilter  = $arrParam['ssFilter'];
            $select = $db->select()
				->from('diadiem_category AS p',array('id','name'))
				->where('p.status = ?',1,INTERGER);
                //echo $ssFilter['lang_code'];die;
            if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
             //  echo $select;die;
                $result = $db->fetchAll($select);
                
        }
        if($options['task'] == 'public-trademark-search'){
            $select = $db->select()
				->from('diadiem_manu AS p',array('id','name'))
				->where('p.status = ?',1,INTERGER);
                
                $result = $db->fetchAll($select);
               // echo $select;die;
        }
		if($options['task'] == 'public-category'){
		  
			if(!empty($arrParam['cid'])){
				$paginator = $arrParam['paginator'];
				$select = $db->select();
                if($language->lang=='vi'){
    			     $select->from('diadiem AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price','units_money'));
    			}else{
    			     $select->from('diadiem_en AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price','units_money'));
    			}
				//->from('diadiem AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price','units_money'))
				$select->where('p.status = ?',1,INTERGER)
                ->where('p.cat_id = ?',$arrParam['cat_id'])
				->where('p.manu_id = ?',$arrParam['manu-id'],INTERGER)
				->order('id DESC');
			}else{
				$paginator = $arrParam['paginator'];
				$select = $db->select();
                if($language->lang=='vi'){
    			     $select->from('diadiem AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price','units_money'));
    			}else{
    			     $select->from('diadiem_en AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price','units_money'));
    			}
                $select ->where('p.manu_id = ?',$arrParam,INTERGER) 
				->where('p.status = ?',1,INTERGER)
				->order('id DESC');
              //  echo $select;die;
			}
				
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
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
		
		//	if(!empty($ssFilter['lang_code'])){
		//		$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
		//	}
		//	echo $select;die;	
			$result = $db->fetchAll($select);
			 
		}
		if($options['task'] == 'public-tienich'){
            $language = new Zend_Session_Namespace('language');
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
            
			$select = $db->select();
            if($language->lang=='vi'){
                $select ->from('diadiem AS p');
            }else{
                $select ->from('diadiem_en AS p');
            }
            $select ->where("p.manu_id LIKE '%" . $arrParam['id'] . "%'")
                ->where("p.cat_id=77")
                ->order('cat_id DESC');
            $result = $db->fetchAll($select);
		}
	
		
		if($options['task'] == 'public-khac'){
			$select = $db->select();
                
                if($language->lang=='vi'){
			     $select ->from('diadiem AS p');
    			}else{
    			     $select ->from('diadiem_en AS p');
    			}
    			$select->where('p.id != ?', $arrParam['id'], INTERGER)
    		      ->order('p.order ASC')
                  ->where("p.cat_id=25")
                  ->limit(2,0);
			$result = $db->fetchAll($select);
		}
		
		
		if($options['task'] == 'public-block'){
		  
 			//echo '<pre>';
// 			print_r($arrParam);
// 			echo '</pre>'; 
//            die("ad");
			$ssFilter  = $arrParam['ssFilter'];
			$paginator = $arrParam['paginator'];
			$select = $db->select()
			->from('diadiem AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price_to','price','selloff','units_money','khuyenmai','like_fb','comment_fb','address','mobile'))
			->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name', 'pc.alias AS category_alias'))
			//->joinLeft('districts AS dt', 'dt.id = p.districts_id',array('dt.name AS quanhuyen_name')) 
			->where('p.status = ?',1,INTERGER)
			->order('p.order ASC')
			->order('p.id DESC');
			
// 			if(!empty($options['block'])){
// 				if($options['block'] == 'block_khuyenmai'){
// 					$select->where('(p.khuyenmai != "") or (p.selloff != 0)');
// 				}else{
// 					$select->where('p.'.$options['block'].' = ?',1,INTERGER);
// 				}
// 			}
		
			if(!empty($arrParam['keywords'])){
				$select->where("(p.name like '%" . $arrParam['keywords'] . "%' OR code like '%" . $arrParam['keywords'] . "%' )" );
                //$select->where(" MATCH (p.name,p.code) AGAINST('" . $arrParam['keywords'] . "'");
			}
		
			if(!empty($arrParam['cat_id'])){
				$select->where('p.cat_id = ?',$arrParam['cat_id'],INTERGER);
			}
            if(!empty($arrParam['trademark'])){
				$select->where('p.manu_id = ?',$arrParam['trademark'],INTERGER);
			}
            if(!empty($arrParam['price']) and !empty($arrParam['price_to'])){
				$select->where('p.price >= ?',$arrParam['price'],INTERGER)
                
                        ->where('p.price <= ?',$arrParam['price_to'],INTERGER);
                        
			}
			if(!empty($arrParam['min'])){
				$select->where('p.price > ?',$arrParam['min'],INTERGER);
			}
		
			if(!empty($arrParam['max'])){
				$select->where('p.price < ?',$arrParam['max'],INTERGER);
			}
		
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
 			//echo $select;die;
			$result = $db->fetchAll($select);
		}
		
		if($options['task'] == 'public-filter'){
			$ssFilter  = $arrParam['ssFilter'];
			$paginator = $arrParam['paginator'];
			$select = $db->select()
			->from('diadiem AS p',array('id','code','name','alias','picture','thumb','cat_id','price','selloff','units_money','khuyenmai','like_fb','comment_fb'))
			->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name', 'pc.alias AS category_alias'))
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
		
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
		//echo $select;die;
			$result = $db->fetchAll($select);
		}
		
		if($options['task'] == 'public-ajax'){
			if($arrParam['keywords'] != ''){
				$ssFilter  = $arrParam['ssFilter'];
					
				$select = $db->select()
				->from('diadiem AS p',array('id','name','alias','picture','thumb','cat_id','price_to','price','selloff','units_money','khuyenmai'))
				->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name', 'pc.alias AS category_alias'))
				->where('p.status = ?',1,INTERGER)
				->where("(p.name like '%" . $arrParam['keywords'] . "%') OR (p.alias like '%" . $arrParam['keywords'] . "%')")
				->limit(12,0)
				->order('id DESC');
					
				if(!empty($ssFilter['lang_code'])){
					$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
				}
			}
		
			$result = $db->fetchAll($select);
		}
		return $result;
	}

	public function saveItem($arrParam = null, $options = null){
		if($options['task'] == 'admin-add'){
			$row 				= $this->fetchNew();
			if(empty($arrParam['alias'])){
				$filter = new Zendvn_Filter_RewriteUrl();
				$alias 	= $filter->filter($arrParam['name']);
			}else{
				$alias 	= $arrParam['alias'];
			}
			$info 					= new Zendvn_System_Info();
			$created_by 			= $info->getMemberInfo('id');
			
			$filter = new Zend_Filter_Alnum(true);
			$thumb = new Zendvn_Filter_GetThumb();
			if(count($arrParam['manu_id']) > 0){
				foreach ($arrParam['manu_id'] AS $key => $val){
					$string = explode('_',$val);
					if($key == 0){
						$manu_id .= $string[0];
					}else{
						$manu_id .= ',' . $string[0];
					}
				}
			}
			$row->code 				= $arrParam['code'];
			$row->name 				= stripslashes($arrParam['name']);
			$row->alias 			= $alias;
			$row->picture 			= $arrParam['picture'];
            $row->picture_banner 	= $arrParam['picture_banner'];
            $row->picture_banner_mobile = $arrParam['price_banner_mobile'];
            $row->picture_multi_home= $arrParam['picture_multi_home'];
			$row->thumb 			= $thumb->filter($arrParam['picture']);
			$row->picture_multi		= stripslashes($arrParam['picture_multi']);
			$row->synopsis			= stripslashes($arrParam['synopsis']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->created 			= @date("Y-m-d h:m:s");
			$row->created_by		= $created_by;
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			$row->block_noibat 		= $arrParam['block_noibat'];
			$row->block_moi 		= $arrParam['block_moi'];
			$row->block_hot 		= $arrParam['block_hot'];
			$row->block_dongkhach 	= $arrParam['block_dongkhach'];
			$row->cat_id 			= $arrParam['cat_id'];
			$row->sources_id 		= $arrParam['sources_id'];
			$row->manu_id	 		= $manu_id;
			$row->tags	 			= stripslashes($arrParam['tags']);
			$row->meta_title 		= stripslashes($arrParam['meta_title']);
			$row->meta_description 	= stripslashes($arrParam['meta_description']);
			$row->meta_keywords 	= stripslashes($arrParam['meta_keywords']);
            $row->color 		= $arrParam['color'];
			$row->quimo 	= $arrParam['quimo'];
			$row->soluongcan 			= $arrParam['soluongcan'];
			$row->dientich 		= $arrParam['dientich'];
            
			$row->lang_code 		= 'vi';
           
			$row->save();
            return $id_category=$row->id;
		}
		
		
		
		
		if($options['task'] == 'public-add'){
			 
			$db = Zend_Registry::get('connectDb');
			
			
			$row 				= $this->fetchNew();
			if(empty($arrParam['alias'])){
				$filter = new Zendvn_Filter_RewriteUrl();
				$alias 	= $filter->filter($arrParam['name']);
			}else{
				$alias 	= $arrParam['alias'];
			}
			//$info 					= new Zendvn_System_Info();
			//$created_by 			= $info->getMemberInfo('id');
		  
			$filter = new Zend_Filter_Alnum(true);
			$thumb = new Zendvn_Filter_GetThumb();
			$row->code 				= $arrParam['code'];
			$row->name 				= stripslashes($arrParam['name']);
			$row->alias 			= $alias;
			$row->picture 			= $arrParam['picture'];
            $row->picture_banner 	= $arrParam['picture_banner'];
			$row->thumb 			= $thumb->filter($arrParam['picture']);
			$row->picture_multi		= stripslashes($arrParam['picture_multi']);
			$row->price 			= $filter->filter($arrParam['price']);
			$row->price_to 			= $filter->filter($arrParam['price_to']);
			$row->units_money		= $arrParam['units_money'];
			$row->selloff			= $arrParam['selloff'];
			$row->diadiem_number	= $filter->filter($arrParam['diadiem_number']);
			$row->money_sources		= $filter->filter($arrParam['money_sources']);
			$row->sources_money		= $arrParam['sources_money'];
			$row->synopsis			= stripslashes($arrParam['synopsis']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->created 			= @date("Y-m-d h:m:s");
			$row->created_by		= $created_by;
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			//$row->tinh_trang 		= $arrParam['tinh_trang'];
			$row->block_noibat 		= $arrParam['block_noibat'];
			$row->block_moi 		= $arrParam['block_moi'];
			$row->block_hot 		= $arrParam['block_hot'];
			$row->block_dongkhach 	= $arrParam['block_dongkhach'];
			$row->cat_id 			= $arrParam['cat_id'];
			$row->time_id 			= $arrParam['time_id'];
			$row->unit_id 			= $arrParam['unit_id'];
			$row->sources_id 		= $arrParam['sources_id'];
			$row->manu_id	 		= $arrParam['manu_id'];
			$row->color 				= $arrParam['color'];
			$row->made_in 	= $arrParam['made_in'];
			$row->baohanh	 	= $arrParam['baohanh'];
			$row->tags	 			= stripslashes($arrParam['tags']);
			$row->meta_title 		= stripslashes($arrParam['meta_title']);
			$row->meta_description 	= stripslashes($arrParam['meta_description']);
			$row->meta_keywords 	= stripslashes($arrParam['meta_keywords']);
			$row->lang_code 		= 'vi';
			// Thuộc tính quán
			//$row->tenquan 				= $arrParam['tenquan'];
			$row->address 				= $arrParam['address'];
			$row->open 					= $arrParam['open'];
			$row->close 				= $arrParam['close'];
			$row->map_spn 				= $arrParam['map_spn'];
			$row->map_ll 				= $arrParam['map_ll'];
			$row->mobile 				= $arrParam['mobile'];
			$row->districts_id 			= $arrParam['districts_id'];
			$row->save();
			
			 
		}
	
		if($options['task'] == 'admin-edit'){
			//	var_dump($arrParam['picture_multi']);die;
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
			
			$filter = new Zend_Filter_Alnum(true);
			$thumb = new Zendvn_Filter_GetThumb();
			$manu_id = '';
			if(count($arrParam['manu_id']) > 0){
				foreach ($arrParam['manu_id'] AS $key => $val){
					$string = explode('_',$val);
					if($key == 0){
						$manu_id .= $string[0];
					}else{
						$manu_id .= ',' . $string[0];
					}
				}
			}
			$row->code 				= $arrParam['code'];
			$row->name 				= stripslashes($arrParam['name']);
			$row->alias 			= $alias;
			$row->picture 			= $arrParam['picture'];
            $row->picture_banner 			= $arrParam['picture_banner'];
            $row->picture_multi_home 			= $arrParam['picture_multi_home'];
            $row->picture_banner_mobile 			= $arrParam['picture_banner_mobile'];
			$row->thumb 			= $thumb->filter($arrParam['picture']);
			$row->picture_multi		= stripslashes($arrParam['picture_multi']);
			$row->synopsis			= stripslashes($arrParam['synopsis']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->modified 			= @date("Y-m-d h:m:s");
			$row->modified_by		= $modified_by;
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			//$row->tinh_trang 		= $arrParam['tinh_trang'];
			$row->block_noibat 		= $arrParam['block_noibat'];
			$row->block_moi 		= $arrParam['block_moi'];
			$row->block_hot 		= $arrParam['block_hot'];
			$row->block_dongkhach 	= $arrParam['block_dongkhach'];
			$row->cat_id 			= $arrParam['cat_id'];
		
			$row->sources_id 		= $arrParam['sources_id'];
			$row->manu_id	 		= $manu_id;
		
			$row->tags	 			= stripslashes($arrParam['tags']);
			$row->meta_title 		= stripslashes($arrParam['meta_title']);
			$row->meta_description 	= stripslashes($arrParam['meta_description']);
			$row->meta_keywords 	= stripslashes($arrParam['meta_keywords']);
			$row->lang_code 		= 'vi';
            $row->color 		= $arrParam['color'];
			$row->quimo 	= $arrParam['quimo'];
			$row->soluongcan 			= $arrParam['soluongcan'];
            $row->dientich 	= $arrParam['dientich'];
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