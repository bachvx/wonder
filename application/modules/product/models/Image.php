<?php
class Product_Model_Image extends Zend_Db_Table{
	
	protected $_name = 'phankhu_image';
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
        if($options['task'] == 'admin-add'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('diadiem AS p',array('id as product_id','name as tensanpham'));
			if($arrParam['product_id']>0){	
                $select	->where('p.id = ?',$arrParam['product_id'],INTERGER);
            }
           //echo $select;die;	
			$result = $db->fetchRow($select);
		}
		if($options['task'] == 'admin-edit'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('phankhu_image AS p',array('*'))
            ->join('diadiem AS pc', 'pc.id = p.product_id',array('pc.name AS tensanpham'))
			->join('diadiem_manu AS pm', 'pm.id = p.phankhu_id',array('pm.name AS tenphankhu'))
			->where('p.id = ?', $arrParam['id'], INTEGER);
			if($arrParam['product_id']>0){	
                $select	->where('pc.id = ?',$arrParam['product_id'],INTERGER);
            }
           //echo $select;die;	
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
			->from('phankhu_image AS p', array('COUNT(p.id) AS totalItem'))
			->where('p.product_id= ?',$arrParam['product_id'],INTERGER);
			
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
			->from('diadiem_manu AS pc',array('id','name'))
			->order('pc.order ASC')
			->order('pc.id ASC');
			$result = $db->fetchAll($select);
			$system = new Zendvn_System_Recursive($result);
			$result = $system->builArray(0);
			$tmp = array('id' => 0,'name'=>'Chọn phân khu','level'=>1,'parents'=>0,'order'=>1);
			
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
			->from('phankhu_image AS p',array('id','name'))
            ->join('diadiem AS pc', 'pc.id = p.product_id',array('pc.name AS tensanpham'))
			->join('diadiem_manu AS pm', 'pm.id = p.phankhu_id',array('pm.name AS tenphankhu'));
			if($paginator['itemCountPerPage'] > 0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
				$select->limitPage($page, $rowCount);
			}
			if($arrParam['product_id']>0){	
                $select	->where('pc.id = ?',$arrParam['product_id'],INTERGER);
            }
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
		if($options['task'] == 'public-articleDiaDiem'){
			$info 		= new Zendvn_System_Info();
			$user_info 	= $info->getMemberInfo();
			 
			 
				$paginator = $arrParam['paginator'];
				$select = $db->select()
				->from('diadiem AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price_to','price','selloff','units_money','khuyenmai','like_fb','comment_fb','address','mobile','open','close','status','hits'))
				->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name', 'pc.alias AS category_alias'))
				->joinLeft('districts AS dt', 'dt.id = p.districts_id',array('dt.name AS quanhuyen_name')) 
				->where('p.created_by = ?',$user_info['id'],INTERGER)
				->order('id DESC');
			 
			//echo $select;die;
			 
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
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
		
			$result = $db->fetchAll($select);
		}
		
		
		if($options['task'] == 'public-khac'){
			$select = $db->select()
				->from('diadiem AS p',array('id','code','name','alias','synopsis','picture','thumb','cat_id','price_to','price','selloff','units_money','khuyenmai','like_fb','comment_fb','address','mobile','open','close'))
				->join('diadiem_category AS pc', 'pc.id = p.cat_id',array('name AS category_name', 'pc.alias AS category_alias'))
				->joinLeft('districts AS dt', 'dt.id = p.districts_id',array('dt.name AS quanhuyen_name')) 
				->where('p.status = ?',1,INTERGER)
				->where('p.cat_id = ?', $arrParam['cid'], INTERGER)
				->where('p.id != ?', $arrParam['id'], INTERGER)
				->order('rand()')
				->limit(3,0);
		
			if(!empty($ssFilter['lang_code'])){
				$select->where("p.lang_code = '" . $ssFilter['lang_code'] . "'");
			}
				
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
			$row->name 				= stripslashes($arrParam['name']);
            $row->name_en 				= stripslashes($arrParam['name_en']);
			$row->picture_multi		= stripslashes($arrParam['picture_multi']);
			$row->content			= stripslashes($arrParam['content']);
            $row->content_en			= stripslashes($arrParam['content_en']);
			$row->phankhu_id			= stripslashes($arrParam['phankhu_id']);
            $row->product_id			= stripslashes($arrParam['product_id']);
           
			$row->save();
            return $id_category=$row->id;
		}
	
		if($options['task'] == 'admin-edit'){
			//	var_dump($arrParam['picture_multi']);die;
			$where 				= ' id=' . $arrParam['id'];
			$row 				= $this->fetchRow($where);
			$row->name 				= stripslashes($arrParam['name']);
            $row->name_en 				= stripslashes($arrParam['name_en']);
			$row->picture_multi		= $arrParam['picture_multi'];
			$row->content			= stripslashes($arrParam['content']);
            $row->content_en			= stripslashes($arrParam['content_en']);
            $row->phankhu_id			= stripslashes($arrParam['phankhu_id']);
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