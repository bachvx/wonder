<?php
class AdminPermissionController extends Zendvn_Controller_Action{
	
	protected $_arrParam; //Mang tham so nhan duoc khi mot Action chay
	protected $_currentController; //Duong dan cua Controller
	protected $_actionMain; //Duong dan cua Action chinh
	
	//Thong so phan trang
	protected $_paginator = array(
									'itemCountPerPage' => 15,
									'pageRange' => 10,
									'currentPage' => 1
									);
	protected $_namespace;
	protected $_page = ''; //Url page
	
	public function init(){
		
		$this->_arrParam = $this->_request->getParams(); //Mang tham so nhan duoc khi mot Action chay
		$this->_currentController = '/' . $this->_arrParam['module'] . '/' . $this->_arrParam['controller']; //Duong dan cua Controller
		$this->_actionMain = '/' . $this->_arrParam['module'] . '/'	. $this->_arrParam['controller'] . '/index'; //Duong dan cua Action chinh
	
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
			$ssFilter->col 		= 'p.module';
			$ssFilter->order	= 'ASC';
			$ssFilter->p_module	= '0';
		}
		$this->_arrParam['ssFilter']['keywords'] 	= $ssFilter->keywords;
		$this->_arrParam['ssFilter']['col'] 		= $ssFilter->col;
		$this->_arrParam['ssFilter']['order'] 		= $ssFilter->order;
		$this->_arrParam['ssFilter']['p_module']	= $ssFilter->p_module;
		
		//Thanh vien dang login
		$info 			= new Zendvn_System_Info();
		$this->_arrParam['adminInfo'] 	= $info->getMemberInfo();

		//Truyen ra ngoai view
		$this->view->arrParam = $this->_arrParam;
		$this->view->currentController = $this->_currentController;
		$this->view->actionMain = $this->_actionMain;
	
		$this->view->siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/admin/" . $this->view->siteConfig['template']['admin'];
		$this->loadTemplate($template_path, 'template.ini', 'template');
	}

	public function indexAction(){
		
		$this->view->Title = 'Quyền sử dụng :: Danh sách';
		$this->view->headTitle($this->view->Title, true);
		
		$tblPrivileges = new Default_Model_Permission();
		$this->view->Items = $tblPrivileges->listItem($this->_arrParam, array('task'=>'admin-list'));
		
		$totalItem = $tblPrivileges->countItem($this->_arrParam, array('task'=>'admin-list'));
		
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
	
	public function filterAction(){
		$ssFilter = new Zend_Session_Namespace($this->_namespace);
		
		if($this->_arrParam['type'] == 'search'){
			if($this->_arrParam['key'] == 1){
				$ssFilter->keywords = trim($this->_arrParam['keywords']);
			}else{
				$ssFilter->keywords = '';
			}
		}
		
		if($this->_arrParam['type'] == 'p_module'){
			$ssFilter->p_module = $this->_arrParam['p_module'];
		}
	
		if($this->_arrParam['type'] == 'order'){
			$ssFilter->col = $this->_arrParam['col'];
			$ssFilter->order = $this->_arrParam['by'];
		}
	
		$this->_redirect($this->_actionMain);
	
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function addAction(){
		$this->view->Title = 'Quyền sử dụng :: Thêm mới';
		$this->view->headTitle($this->view->Title, true);
		
		$tblPrivileges = new Default_Model_Permission();
		$this->view->Items = $tblPrivileges->listItem($this->_arrParam, array('task'=>'admin-list-all'));
		
		if($this->_request->isPost()){
				
			$validator = new Default_Form_ValidatePermission($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$tblPrivileges->saveItem($arrParam,array('task'=>'admin-add'));
				$this->_redirect($this->_actionMain);
			}
		}
	}
	
	public function editAction(){
		$this->view->Title = 'Quyền sử dụng :: Sửa';
		$this->view->headTitle($this->view->Title, true);
		
		$tblPrivileges = new Default_Model_Permission();
		$this->view->Item = $tblPrivileges->getItem($this->_arrParam,array('task'=>'admin-edit'));
		
		$this->view->slbCategory = $tblPrivileges->itemInSelectbox($this->_arrParam);
		
		if($this->_request->isPost()){
				
			$validator = new Default_Form_ValidatePermission($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$tblPrivileges->saveItem($arrParam,array('task'=>'admin-edit'));
				$this->_redirect($this->_actionMain . $this->_page);
			}
		}
	}
	
	public function deleteAction(){
		$this->view->Title = 'Quyền sử dụng :: Xóa';
		$this->view->headTitle($this->view->Title, true);
		if($this->_request->isPost()){
			if(($this->_arrParam['type'] == 'multi-delete') && ($this->_arrParam['task'] == 'ok')){
				$tblPrivileges = new Default_Model_Permission();
				$tblPrivileges->deleteItem($this->_arrParam, array('task'=>'admin-delete-muti'));
				$this->_redirect($this->_actionMain . $this->_page);
			}else
				if(!empty($this->_arrParam['id'])){
				$tblPrivileges = new Default_Model_Permission();
				$tblPrivileges->deleteItem($this->_arrParam, array('task'=>'admin-delete'));
				$this->_redirect($this->_actionMain . $this->_page);
			}
		}
	}
	
	public function statusAction(){
		$tblPrivileges = new Default_Model_Permission();
		$tblPrivileges->changeStatus($this->_arrParam);
		$this->_redirect($this->_actionMain . $this->_page);
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function sortAction(){
		if($this->_request->isPost()){
			$tblPrivileges = new Default_Model_Permission();
			$tblPrivileges->sortItem($this->_arrParam, array('task'=>'admin-sort'));
			$this->_redirect($this->_actionMain . $this->_page);
		}
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function testAction(){
		
		$filter = new Zendvn_GetSystem();
		$all = $filter->getAll();
// 		echo "<pre>";
// 		print_r($all);
// 		echo "</pre>";
	
		$this->_helper->viewRenderer->setNoRender();
	}

}



