<?php
class Default_Model_Register extends Zend_Db_Table{
	
	protected $_name = 'register';
	protected $_primary ='id';
	
	protected $_ids;
	
	public function getItem($arrParam = null, $options = null){
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		
		if($options['task'] == 'admin-info' || $options['task'] == 'admin-edit'){
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			$select = $db->select()
			->from('register AS r',array('*',"DATE_FORMAT(ngaysinh,'%d/%m/%Y') AS ngaysinh","DATE_FORMAT(ngayhen,'%d/%m/%Y') AS ngayhen","DATE_FORMAT(ngayhoc,'%d/%m/%Y') AS ngayhoc","DATE_FORMAT(ngaygui,'%d/%m/%Y %h:%i:%s') AS ngaygui"))
			->joinLeft('register_nguontin AS nt', 'nt.id = r.nguontin_id',array('name AS nguontin_name'))
			->joinLeft('register_thoigian AS tg', 'tg.id = r.thoigian_id',array('name AS thoigian_name'))
			->joinLeft('register_trungtam AS tt', 'tt.id = r.trungtam_id',array('name AS trungtam_name'))
			->joinLeft('register_khoahoc AS kh', 'kh.id = r.khoahoc_id',array('name AS khoahoc_name'))
			->where('r.id = ?', $arrParam['id'], INTEGER);
		
			$result = $db->fetchRow($select);
		}
		return $result;
	}
	
	public function countItem($arrParam = null, $options = null){
		$ssFilter  = $arrParam['ssFilter'];
		$db = Zend_Registry::get('connectDb');
		//$db = Zend_Db::factory($adapter, $config);
		if($options['task'] == 'admin-list'){
				
			$select = $db->select()
			->from('register AS r', array('COUNT(r.id) AS totalItem'));
				
			if(!empty($ssFilter['keywords'])){
				$keywords = '%' . $ssFilter['keywords'] . '%';
				$select->where("(r.hoten LIKE '%".$keywords."%') or (r.diachi LIKE '%".$keywords."%') or (r.dienthoai LIKE '%".$keywords."%') or (r.email LIKE '%".$keywords."%')");
			}
			
			if(!empty($ssFilter['nguontin_id'])){
				$select->where('r.nguontin_id = ?',$ssFilter['nguontin_id'],INTERGER);
			}
			
			if(!empty($ssFilter['khoahoc_id'])){
				$select->where('r.khoahoc_id = ?',$ssFilter['khoahoc_id'],INTERGER);
			}
			
			if(!empty($ssFilter['trungtam_id'])){
				$select->where('r.trungtam_id = ?',$ssFilter['trungtam_id'],INTERGER);
			}
			
			if($ssFilter['ff_status'] != ''){
				$select->where('r.status = ?',$ssFilter['ff_status'],INTERGER);
			}
			
			if($ssFilter['tungay'] != '' && $ssFilter['denngay'] != ''){
				
				$date = new Zend_Date();
				$date->set($ssFilter['tungay']);
				$tungay = $date->toString('YYYY-MM-dd');
					
				$date2 = new Zend_Date();
				$date2->set($ssFilter['denngay']);
				$denngay = $date2->toString('YYYY-MM-dd');
				
				if($ssFilter['ff_ngay'] == 'ngaygui'){
					$select->where("DATEDIFF(r.ngaygui,'".$tungay."') >= 0");
					$select->where("DATEDIFF(r.ngaygui,'".$denngay."') <= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhen'){
					$select->where("DATEDIFF(r.ngayhen,'".$tungay."') >= 0");
					$select->where("DATEDIFF(r.ngayhen,'".$denngay."') <= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhoc'){
					$select->where("DATEDIFF(r.ngayhoc,'".$tungay."') >= 0");
					$select->where("DATEDIFF(r.ngayhoc,'".$denngay."') <= 0");
				}
			}
			
			if($ssFilter['tungay'] != '' && $ssFilter['denngay'] == ''){
				
				$date = new Zend_Date();
				$date->set($ssFilter['tungay']);
				$tungay = $date->toString('YYYY-MM-dd');
				
				if($ssFilter['ff_ngay'] == 'ngaygui'){
					$select->where("DATEDIFF(r.ngaygui,'".$tungay."') >= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhen'){
					$select->where("DATEDIFF(r.ngayhen,'".$tungay."') >= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhoc'){
					$select->where("DATEDIFF(r.ngayhoc,'".$tungay."') >= 0");
				}
			}
			
			if($ssFilter['tungay'] == '' && $ssFilter['denngay'] != ''){
					
				$date2 = new Zend_Date();
				$date2->set($ssFilter['denngay']);
				$denngay = $date2->toString('YYYY-MM-dd');
				
				if($ssFilter['ff_ngay'] == 'ngaygui'){
					$select->where("DATEDIFF(r.ngaygui,'".$denngay."') <= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhen'){
					$select->where("DATEDIFF(r.ngayhen,'".$denngay."') <= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhoc'){
					$select->where("DATEDIFF(r.ngayhoc,'".$denngay."') <= 0");
				}
			}
				
			$result = $db->fetchOne($select);
		}
		
		if($options['task'] == 'count'){
			$date = new Zend_Date();
			$dateHomNay = $date->toString('YYYY-MM-dd');
			
			$date = new Zend_Date();
			$dateHomQua = $date->sub(1,Zend_Date::DAY)->toString('YYYY-MM-dd');
			
			$date = new Zend_Date();
			$dateThangNay = $date->toString('YYYY-MM');
			
			$date = new Zend_Date();
			$dateThangTruoc = $date->sub(1,Zend_Date::MONTH)->toString('YYYY-MM');
			
			$select = $db->select()
			->from('register AS r', array('COUNT(r.id) AS totalItem'));
		
			if($options['block'] == 'homnay'){
				$select->where("DATEDIFF(r.ngaygui,'".$dateHomNay."') = 0");
			}
				
			if($options['block'] == 'homqua'){
				$select->where("DATEDIFF(r.ngaygui,'".$dateHomQua."') = 0");
			}
				
			if($options['block'] == 'thangnay'){
				$select->where("DATE_FORMAT(r.ngaygui,'%Y-%m') = '".$dateThangNay."'");
			}
		
			if($options['block'] == 'thangtruoc'){
				$select->where("DATE_FORMAT(r.ngaygui,'%Y-%m') = '".$dateThangTruoc."'");
			}
			
			$result = $db->fetchOne($select);
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
			->from('register AS r',array('*',"DATE_FORMAT(ngaysinh,'%d/%m/%Y') AS ngaysinh","DATE_FORMAT(ngayhen,'%d/%m/%Y') AS ngayhen","DATE_FORMAT(ngayhoc,'%d/%m/%Y') AS ngayhoc","DATE_FORMAT(ngaygui,'%d/%m/%Y %h:%i:%s') AS ngaygui"))
			->joinLeft('register_khoahoc AS kh', 'kh.id = r.khoahoc_id',array('name AS khoahoc_name'))
			->joinLeft('register_nguontin AS nt', 'nt.id = r.nguontin_id',array('name AS nguontin_name'))
			->joinLeft('register_thoigian AS tg', 'tg.id = r.thoigian_id',array('name AS thoigian_name'))
			->joinLeft('register_trungtam AS tt', 'tt.id = r.trungtam_id',array('name AS trungtam_name'));
	
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
				$select->where("(r.hoten LIKE '%".$keywords."%') or (r.diachi LIKE '%".$keywords."%') or (r.dienthoai LIKE '%".$keywords."%') or (r.email LIKE '%".$keywords."%')");
			}
			
			if(!empty($ssFilter['nguontin_id'])){
				$select->where('r.nguontin_id = ?',$ssFilter['nguontin_id'],INTERGER);
			}
			
			if(!empty($ssFilter['khoahoc_id'])){
				$select->where('r.khoahoc_id = ?',$ssFilter['khoahoc_id'],INTERGER);
			}
			
			if(!empty($ssFilter['trungtam_id'])){
				$select->where('r.trungtam_id = ?',$ssFilter['trungtam_id'],INTERGER);
			}
			
			if($ssFilter['ff_status'] != ''){
				$select->where('r.status = ?',$ssFilter['ff_status'],INTERGER);
			}
			
			if($ssFilter['tungay'] != '' && $ssFilter['denngay'] != ''){
				
				$date = new Zend_Date();
				$date->set($ssFilter['tungay']);
				$tungay = $date->toString('YYYY-MM-dd');
					
				$date2 = new Zend_Date();
				$date2->set($ssFilter['denngay']);
				$denngay = $date2->toString('YYYY-MM-dd');
				
				if($ssFilter['ff_ngay'] == 'ngaygui'){
					$select->where("DATEDIFF(r.ngaygui,'".$tungay."') >= 0");
					$select->where("DATEDIFF(r.ngaygui,'".$denngay."') <= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhen'){
					$select->where("DATEDIFF(r.ngayhen,'".$tungay."') >= 0");
					$select->where("DATEDIFF(r.ngayhen,'".$denngay."') <= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhoc'){
					$select->where("DATEDIFF(r.ngayhoc,'".$tungay."') >= 0");
					$select->where("DATEDIFF(r.ngayhoc,'".$denngay."') <= 0");
				}
			}
			
			if($ssFilter['tungay'] != '' && $ssFilter['denngay'] == ''){
				
				$date = new Zend_Date();
				$date->set($ssFilter['tungay']);
				$tungay = $date->toString('YYYY-MM-dd');
				
				if($ssFilter['ff_ngay'] == 'ngaygui'){
					$select->where("DATEDIFF(r.ngaygui,'".$tungay."') >= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhen'){
					$select->where("DATEDIFF(r.ngayhen,'".$tungay."') >= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhoc'){
					$select->where("DATEDIFF(r.ngayhoc,'".$tungay."') >= 0");
				}
			}
			
			if($ssFilter['tungay'] == '' && $ssFilter['denngay'] != ''){
					
				$date2 = new Zend_Date();
				$date2->set($ssFilter['denngay']);
				$denngay = $date2->toString('YYYY-MM-dd');
				
				if($ssFilter['ff_ngay'] == 'ngaygui'){
					$select->where("DATEDIFF(r.ngaygui,'".$denngay."') <= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhen'){
					$select->where("DATEDIFF(r.ngayhen,'".$denngay."') <= 0");
				}
				
				if($ssFilter['ff_ngay'] == 'ngayhoc'){
					$select->where("DATEDIFF(r.ngayhoc,'".$denngay."') <= 0");
				}
			}
			
			$result = $db->fetchAll($select);
		}
	
		return $result;
	}

	public function saveItem($arrParam = null, $options = null){
		//$AddIP = new Zendvn_Filter_GetAddIp();
		if($options['task'] == 'public-add'){
			
			$row 				= $this->fetchNew();
			
			$date = new Zend_Date();
			$date->set($arrParam['ngayhen']);
			$ngayhen = $date->toString('YYYY-MM-dd');
			
			$date2 = new Zend_Date();
			$date2->set($arrParam['ngayhoc']);
			$ngayhoc = $date2->toString('YYYY-MM-dd');
			
			$row->nguontin_id	= stripslashes(strip_tags($arrParam['nguontin_id']));
			$row->hoten 		= stripslashes(strip_tags($arrParam['hoten']));
			$row->ngaysinh 		= stripslashes(strip_tags($arrParam['nam'])).'-'.stripslashes(strip_tags($arrParam['thang'])).'-'.stripslashes(strip_tags($arrParam['ngay']));
			$row->diachi 		= stripslashes(strip_tags($arrParam['diachi']));
			$row->coquan 		= stripslashes(strip_tags($arrParam['coquan']));
			$row->email 		= stripslashes(strip_tags($arrParam['email']));
			$row->dienthoai 	= stripslashes(strip_tags($arrParam['dienthoai']));
			$row->thoigian_id 	= stripslashes(strip_tags($arrParam['thoigian_id']));
			$row->ngayhen 		= $ngayhen;
			$row->khoahoc_id 	= stripslashes(strip_tags($arrParam['khoahoc_id']));
			$row->trungtam_id 	= stripslashes(strip_tags($arrParam['trungtam_id']));
			$row->ngayhoc 		= $ngayhoc;
			$row->lichhocthichhop 	= stripslashes(strip_tags($arrParam['lichhocthichhop']));
			$row->yeucaukhac 	= stripslashes(strip_tags($arrParam['yeucaukhac']));
			$row->ngaygui 		= @date("Y-m-d h:i:s");
			$row->status 		= 0;
			
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
	
}