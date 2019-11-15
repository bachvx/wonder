<?php
class AdminRegisterController extends Zendvn_Controller_Action{
	
	//Mang tham so nhan duoc khi mot Action chay
	protected $_arrParam;
	
	//Duong dan cua Controller
	protected $_currentController;
	
	//Duong dan cua Action chinh
	protected $_actionMain;
	
	//Thong so phan trang
	protected $_paginator = array(
									'itemCountPerPage' => 15,
									'pageRange' => 10,
									'currentPage' => 1
									);
	protected $_namespace;
	
	//Url page
	protected $_page = '';
	
	public function init(){
		//Mang tham so nhan duoc khi mot Action chay
		$this->_arrParam = $this->_request->getParams();
	
		//Duong dan cua Controller
		$this->_currentController = '/' . $this->_arrParam['module'] . '/' . $this->_arrParam['controller'];
	
		//Duong dan cua Action chinh
		$this->_actionMain = '/' . $this->_arrParam['module'] . '/'	. $this->_arrParam['controller'] . '/index';	
	
		//Luu cac du lieu filter vaof SESSION
		//Dat ten SESSION
		$this->_namespace = $this->_arrParam['module'] . '-' . $this->_arrParam['controller'];
		$ssFilter = new Zend_Session_Namespace($this->_namespace);
		//Lay thong tin so phan tu tren mot trang
		if(isset($this->_arrParam['limitPage'])){
			$ssFilter->limitPage = $this->_request->getParam('limitPage');
			$this->_paginator['itemCountPerPage'] = $ssFilter->limitPage;
		}elseif(!empty($ssFilter->limitPage)){
			$this->_paginator['itemCountPerPage'] = $ssFilter->limitPage;
		}
		
		//Trang hien tai
		if(isset($this->_arrParam['page'])){
			$this->_paginator['currentPage'] = $this->_arrParam['page'];
			$this->_page = '/page/' . $this->_arrParam['page'];
		}
		
		//Truyen thong tin phan trang vao mang du lieu
		$this->_arrParam['paginator'] = $this->_paginator;
		
		//$ssFilter->unsetAll();
		if(empty($ssFilter->col)){
			$ssFilter->keywords = '';
			$ssFilter->col 		= 'r.id';
			$ssFilter->order	= 'DESC';
			$ssFilter->nguontin_id	= 0;
			$ssFilter->khoahoc_id	= 0;
			$ssFilter->trungtam_id	= 0;
			$ssFilter->ff_status	= '';
			$ssFilter->ff_ngay		= 'ngaygui';
			$ssFilter->tungay		= '';
			$ssFilter->denngay		= '';
		}
		$this->_arrParam['ssFilter']['keywords'] 	= $ssFilter->keywords;
		$this->_arrParam['ssFilter']['col'] 		= $ssFilter->col;
		$this->_arrParam['ssFilter']['order'] 		= $ssFilter->order;
		$this->_arrParam['ssFilter']['nguontin_id']	= $ssFilter->nguontin_id;
		$this->_arrParam['ssFilter']['khoahoc_id']	= $ssFilter->khoahoc_id;
		$this->_arrParam['ssFilter']['trungtam_id']	= $ssFilter->trungtam_id;
		$this->_arrParam['ssFilter']['ff_status']	= $ssFilter->ff_status;
		$this->_arrParam['ssFilter']['ff_ngay']		= $ssFilter->ff_ngay;
		$this->_arrParam['ssFilter']['tungay']		= $ssFilter->tungay;
		$this->_arrParam['ssFilter']['denngay']		= $ssFilter->denngay;
		if(empty($ssFilter->lang_code)){
			$language = new Zend_Session_Namespace('language');
			$this->_arrParam['ssFilter']['lang_code'] = $language->lang;
		}else{
			$this->_arrParam['ssFilter']['lang_code'] 	= $ssFilter->lang_code;
		}

		//Truyen ra ngoai view
		$this->view->arrParam = $this->_arrParam;
		$this->view->currentController = $this->_currentController;
		$this->view->actionMain = $this->_actionMain;
	
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/admin/" . $siteConfig['template']['admin'];
		$this->loadTemplate($template_path, 'template.ini', 'template');
	}

	public function indexAction(){
		$this->view->Title = 'Khách hàng :: Danh sách';
		$this->view->headTitle($this->view->Title, true);
		
		$tblNguontin = new Default_Model_Nguontin();
		$this->view->Nguontin = $tblNguontin->itemInSelectbox($this->_arrParam, array('task'=>'public'));
		
		$tblThoigian = new Default_Model_Thoigian();
		$this->view->Thoigian = $tblThoigian->itemInSelectbox($this->_arrParam, array('task'=>'public'));
		
		$tblKhoahoc = new Default_Model_Khoahoc();
		$this->view->Khoahoc = $tblKhoahoc->itemInSelectbox($this->_arrParam, array('task'=>'public'));
		
		$tblTrungtam = new Default_Model_Trungtam();
		$this->view->Trungtam = $tblTrungtam->itemInSelectbox($this->_arrParam, array('task'=>'public'));
		
		$tblRegister = new Default_Model_Register();
		$this->view->Items = $tblRegister->listItem($this->_arrParam, array('task'=>'admin-list'));
		
		$tblLanguages = new Default_Model_Language();
		$this->view->slbLanguages = $tblLanguages->itemInSelectbox($this->_arrParam);
		
		$totalItem = $tblRegister->countItem($this->_arrParam, array('task'=>'admin-list'));
		
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
	
	public function filterAction(){
		$ssFilter = new Zend_Session_Namespace($this->_namespace);
		
		if($this->_arrParam['type'] == 'search'){
			if($this->_arrParam['key'] == 1){
				$ssFilter->keywords = trim($this->_arrParam['keywords']);
				$ssFilter->ff_ngay 	= trim($this->_arrParam['ff_ngay']);
				$ssFilter->tungay	= trim($this->_arrParam['tungay']);
				$ssFilter->denngay 	= trim($this->_arrParam['denngay']);
			}else{
				$ssFilter->keywords = '';
				$ssFilter->ff_ngay 	= 'ngaygui';
				$ssFilter->tungay	= '';
				$ssFilter->denngay 	= '';
			}
		}
	
		if($this->_arrParam['type'] == 'order'){
			$ssFilter->col = $this->_arrParam['col'];
			$ssFilter->order = $this->_arrParam['by'];
		}
		
		if($this->_arrParam['type'] == 'nguontin'){
			$ssFilter->nguontin_id = $this->_arrParam['nguontin_id'];
		}
		
		if($this->_arrParam['type'] == 'khoahoc'){
			$ssFilter->khoahoc_id = $this->_arrParam['khoahoc_id'];
		}
		
		if($this->_arrParam['type'] == 'trungtam'){
			$ssFilter->trungtam_id = $this->_arrParam['trungtam_id'];
		}
		
		if($this->_arrParam['type'] == 'trangthai'){
			$ssFilter->ff_status = $this->_arrParam['ff_status'];
		}
		
		if($this->_arrParam['type'] == 'lang'){
			$ssFilter->lang_code = $this->_arrParam['lang_code'];
		}
	
		$this->_redirect($this->_actionMain);
	
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function addAction(){
		$this->view->Title = 'Khách hàng :: Thêm mới';
		$this->view->headTitle($this->view->Title, true);
		
		$tblRegister = new Default_Model_Register();
		$this->view->slbCategory = $tblRegister->itemInSelectbox($this->_arrParam);
		
		if($this->_request->isPost()){
				
			$validator = new Default_Form_ValidateThoigian($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$tblRegister->saveItem($arrParam,array('task'=>'admin-add'));
				$this->_redirect($this->_actionMain);
			}
		}
	}
	
	public function infoAction(){
		$this->view->Title = 'Khách hàng :: Xem thông tin';
		$this->view->headTitle($this->view->Title, true);
	
		$tblRegister = new Default_Model_Register();
		$this->view->Item = $tblRegister->getItem($this->_arrParam,array('task'=>'admin-info'));
	}
	
	public function editAction(){
		$this->view->Title = 'Khách hàng :: Sửa';
		$this->view->headTitle($this->view->Title, true);
		
		$tblRegister = new Default_Model_Register();
		$this->view->Item = $tblRegister->getItem($this->_arrParam,array('task'=>'admin-edit'));
		
		if($this->_request->isPost()){
				
			$validator = new Default_Form_ValidateThoigian($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$tblRegister->saveItem($arrParam,array('task'=>'admin-edit'));
				$this->_redirect($this->_actionMain . $this->_page);
			}
		}
	}
	
	public function deleteAction(){
		$this->view->Title = 'Khách hàng :: Xóa';
		$this->view->headTitle($this->view->Title, true);
		if($this->_request->isPost()){
			if(($this->_arrParam['type'] == 'multi-delete') && ($this->_arrParam['task'] == 'ok')){
				$tblRegister = new Default_Model_Register();
				$tblRegister->deleteItem($this->_arrParam, array('task'=>'admin-delete-muti'));
				$this->_redirect($this->_actionMain . $this->_page);
			}else
				if(!empty($this->_arrParam['id'])){
				$tblRegister = new Default_Model_Register();
				$tblRegister->deleteItem($this->_arrParam, array('task'=>'admin-delete'));
				$this->_redirect($this->_actionMain . $this->_page);
			}
		}
	}
	
	public function statusAction(){
		$tblRegister = new Default_Model_Register();
		$tblRegister->changeStatus($this->_arrParam);
		$this->_redirect($this->_actionMain . $this->_page);
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function sortAction(){
		if($this->_request->isPost()){
			$tblRegister = new Default_Model_Register();
			$tblRegister->sortItem($this->_arrParam, array('task'=>'admin-sort'));
			$this->_redirect($this->_actionMain . $this->_page);
		}
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function excelAction(){
		
		$ssFilter = $this->_arrParam['ssFilter'];
		
		$tblRegister = new Default_Model_Register();
		$this->view->Items = $listRegister = $tblRegister->listItem($this->_arrParam, array('task'=>'admin-list'));
		
		$info = new Zendvn_System_Info();
		$userInfo = $info->getMemberInfo();
		/* echo "<pre>";
		print_r($info->getMemberInfo());
		echo "</pre>"; */
		
		$this->_helper->layout->disableLayout();
		$this->_helper->viewRenderer->setNoRender();
	
		error_reporting(E_ALL);
		ini_set('display_errors', TRUE);
		ini_set('display_startup_errors', TRUE);
		date_default_timezone_set('Asia/Ho_Chi_Minh');
	
		if (PHP_SAPI == 'cli')
			die('This example should only be run from a Web Browser');
	
		/** Include PHPExcel */
		require_once SCRIPTS_PATH . '/phpexcel/PHPExcel.php';
	
		// Create new PHPExcel object
		$objPHPExcel = new PHPExcel();
	
		// Set document properties
		$objPHPExcel->getProperties()->setCreator($userInfo['user_name'])
		->setLastModifiedBy($userInfo['user_name'])
		->setTitle("Danh sach khach hang")
		->setSubject("Danh sach khach hang")
		->setDescription("Danh sach khach hang duoc xuat boi " . $userInfo['user_name'])
		->setKeywords($userInfo['user_name'])
		->setCategory($userInfo['user_name']);
	
		// Tiêu đề
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('B2', 'DANH SÁCH KHÁCH HÀNG')->mergeCells('B2:G2');
		$objPHPExcel->getActiveSheet()->getStyle('B2')->getFont()->setSize(20)->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('B2')->getFont()->getColor()->setARGB(PHPExcel_Style_Color::COLOR_BLUE);
		$objPHPExcel->getActiveSheet()->getStyle('B2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER_CONTINUOUS);
	
		// Fillter
		$start = 4;
		$objPHPExcel->setActiveSheetIndex(0)
			->setCellValue('B'.$start, 'Ngày xuất: '.@date('d/m/Y h:i:s'))->mergeCells('B'.$start.':C'.$start);
		$objPHPExcel->setActiveSheetIndex(0)
		->setCellValue('D'.$start, 'Bởi: '.$userInfo['user_name'])->mergeCells('D'.$start.':E'.$start);
		
		if($ssFilter['khoahoc_id'] > 0){
			$start++;
			$tblKhoahoc = new Default_Model_Khoahoc();
			$khoahoc = $tblKhoahoc->getItem(array('id' => $ssFilter['khoahoc_id']),array('task' => 'admin-info'));
			$objPHPExcel->setActiveSheetIndex(0)
			->setCellValue('B'.$start, 'Khóa học: '.$khoahoc['name'])->mergeCells('B'.$start.':E'.$start);
		}
		
		if($ssFilter['trungtam_id'] > 0){
			$start++;
			$tblTrungtam = new Default_Model_Trungtam();
			$trungtam = $tblTrungtam->getItem(array('id' => $ssFilter['trungtam_id']),array('task' => 'admin-info'));
			$objPHPExcel->setActiveSheetIndex(0)
			->setCellValue('B'.$start, 'Cơ sở: '.$trungtam['name'])->mergeCells('B'.$start.':E'.$start);
		}
		
		if($ssFilter['nguontin_id'] > 0){
			$start++;
			$tblNguontin = new Default_Model_Nguontin();
			$nguontin = $tblNguontin->getItem(array('id' => $ssFilter['nguontin_id']),array('task' => 'admin-info'));
			$objPHPExcel->setActiveSheetIndex(0)
			->setCellValue('B'.$start, 'Theo nguồn: '.$nguontin['name'])->mergeCells('B'.$start.':E'.$start);
		}
		
		if($ssFilter['ff_status'] != ''){
			$start++;
			if($ssFilter['ff_status'] == 0){
				$trangthai = 'Chưa liên hệ';
			}
			if($ssFilter['ff_status'] == 1){
				$trangthai = 'Đã liên hệ';
			}
			$objPHPExcel->setActiveSheetIndex(0)
			->setCellValue('B'.$start, 'Trạng thái: '.$trangthai)->mergeCells('B'.$start.':E'.$start);
		}
		
		if($ssFilter['keywords'] != ''){
			$start++;
			$objPHPExcel->setActiveSheetIndex(0)
			->setCellValue('B'.$start, 'Lọc theo từ khóa: '.$ssFilter['keywords'])->mergeCells('B'.$start.':E'.$start);
		}
		
		if($ssFilter['tungay'] != ''){
			$tungay = ' Từ ngày: ' . $ssFilter['tungay'];
		}
		
		if($ssFilter['denngay'] != ''){
			$denngay = ' Đến ngày: ' . $ssFilter['denngay'];
		}
		
		if($ssFilter['tungay'] != '' || $ssFilter['denngay'] != ''){
			$ngay = '';
			if($ssFilter['ff_ngay'] == 'ngaygui'){
				$ngay = 'Ngày gửi - ';
			}
			if($ssFilter['ff_ngay'] == 'ngayhen'){
				$ngay = 'Ngày hẹn - ';
			}
			if($ssFilter['ff_ngay'] == 'ngayhoc'){
				$ngay = 'Ngày học - ';
			}
			$start++;
			$objPHPExcel->setActiveSheetIndex(0)
			->setCellValue('B'.$start, 'Thời gian: '.$ngay.$tungay.$denngay)->mergeCells('B'.$start.':E'.$start);
		}
		/* echo "<pre>";
		print_r($this->_arrParam);
		echo "</pre>"; */
		
		// Tiêu đề
		$title = $start + 2;
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('B'.$title, 'STT');
		$objPHPExcel->getActiveSheet()->getStyle('B'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('B'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('B'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('C'.$title, 'Họ và tên');
		$objPHPExcel->getActiveSheet()->getStyle('C'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('C'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('C'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('D'.$title, 'Điện thoại');
		$objPHPExcel->getActiveSheet()->getStyle('D'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('D'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('D'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('E'.$title, 'Email');
		$objPHPExcel->getActiveSheet()->getStyle('E'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('E'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('E'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('F'.$title, 'Địa chỉ');
		$objPHPExcel->getActiveSheet()->getStyle('F'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('F'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('F'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('G'.$title, 'Ngày sinh');
		$objPHPExcel->getActiveSheet()->getStyle('G'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('G'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('G'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('H'.$title, 'Cơ quan làm việc - Trường học');
		$objPHPExcel->getActiveSheet()->getStyle('H'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('H'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('H'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('I'.$title, 'Ngày hẹn kiểm tra');
		$objPHPExcel->getActiveSheet()->getStyle('I'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('I'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('I'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('J'.$title, 'Ngày bắt đầu học');
		$objPHPExcel->getActiveSheet()->getStyle('J'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('J'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('J'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('K'.$title, 'Đăng ký khóa học');
		$objPHPExcel->getActiveSheet()->getStyle('K'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('K'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('K'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('L'.$title, 'Trung tâm đăng ký học');
		$objPHPExcel->getActiveSheet()->getStyle('L'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('L'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('L'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('M'.$title, 'Nguồn tin');
		$objPHPExcel->getActiveSheet()->getStyle('M'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('M'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('M'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('N'.$title, 'Trạng thái');
		$objPHPExcel->getActiveSheet()->getStyle('N'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('N'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('N'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('O'.$title, 'Lịch học thích hợp');
		$objPHPExcel->getActiveSheet()->getStyle('O'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('O'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('O'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		$objPHPExcel->getActiveSheet()->setCellValueExplicit('P'.$title, 'Yêu cầu khác');
		$objPHPExcel->getActiveSheet()->getStyle('P'.$title)->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('P'.$title)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
		$objPHPExcel->getActiveSheet()->getStyle('P'.$title)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		
		//Chieu cao cột title
		$objPHPExcel->getActiveSheet()->getRowDimension($title)->setRowHeight(20);
	
		// Chiều rộng cột
		$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(30);
		$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(20);
		$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(35);
		$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(35);
		$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(15);
		$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(35);
		$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(25);
		$objPHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(20);
		$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setWidth(35);
		$objPHPExcel->getActiveSheet()->getColumnDimension('L')->setWidth(35);
		$objPHPExcel->getActiveSheet()->getColumnDimension('M')->setWidth(20);
		$objPHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(12);
		$objPHPExcel->getActiveSheet()->getColumnDimension('O')->setWidth(30);
		$objPHPExcel->getActiveSheet()->getColumnDimension('P')->setWidth(30);
		
		//Lấy danh sach các thành viên
		if(count($listRegister) > 0){
			foreach ($listRegister AS $key => $val){
				$number = $title + $key + 1;
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('B'.$number, $key + 1);
				$objPHPExcel->getActiveSheet()->getStyle('B'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('B'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('B'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('C'.$number, $val['hoten']);
				$objPHPExcel->getActiveSheet()->getStyle('C'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('C'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('C'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('D'.$number, $val['dienthoai']);
				$objPHPExcel->getActiveSheet()->getStyle('D'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('D'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('D'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('E'.$number, $val['email']);
				$objPHPExcel->getActiveSheet()->getStyle('E'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('E'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('E'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('F'.$number, $val['diachi']);
				$objPHPExcel->getActiveSheet()->getStyle('F'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('F'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('F'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('G'.$number, $val['ngaysinh']);
				$objPHPExcel->getActiveSheet()->getStyle('G'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('G'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('G'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('H'.$number, $val['coquan']);
				$objPHPExcel->getActiveSheet()->getStyle('H'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('H'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('H'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('I'.$number, $val['thoigian_name'] . ' ' . $val['ngayhen']);
				$objPHPExcel->getActiveSheet()->getStyle('I'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('I'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('I'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('J'.$number, $val['ngayhoc']);
				$objPHPExcel->getActiveSheet()->getStyle('J'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('J'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('J'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('K'.$number, $val['khoahoc_name']);
				$objPHPExcel->getActiveSheet()->getStyle('K'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('K'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('K'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('L'.$number, $val['trungtam_name']);
				$objPHPExcel->getActiveSheet()->getStyle('L'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('L'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('L'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('M'.$number, $val['nguontin_name']);
				$objPHPExcel->getActiveSheet()->getStyle('M'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('M'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('M'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('N'.$number, $val['status']);
				$objPHPExcel->getActiveSheet()->getStyle('N'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('N'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('N'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('O'.$number, $val['lichhocthichhop']);
				$objPHPExcel->getActiveSheet()->getStyle('O'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('O'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('O'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
				
				$objPHPExcel->getActiveSheet()->setCellValueExplicit('P'.$number, $val['yeucaukhac']);
				$objPHPExcel->getActiveSheet()->getStyle('P'.$number)->getFont();
				$objPHPExcel->getActiveSheet()->getStyle('P'.$number)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
				$objPHPExcel->getActiveSheet()->getStyle('P'.$number)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
			}
		}
		
		// Rename worksheet
		//$objPHPExcel->getActiveSheet()->setTitle('Simple');
	
		// Set active sheet index to the first sheet, so Excel opens this as the first sheet
		$objPHPExcel->setActiveSheetIndex(0);
	
	
		// Redirect output to a client’s web browser (Excel5)
		header('Content-Type: application/vnd.ms-excel');
		header('Content-Disposition: attachment;filename="'.$userInfo['user_name'].'_'.@date('d_m_Y').'.xls"');
		header('Cache-Control: max-age=0');
	
		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
		$objWriter->save('php://output');
		exit;
	
	}

}



