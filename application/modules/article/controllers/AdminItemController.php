<?php
class Article_AdminItemController extends Zendvn_Controller_Action{
	
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
			$ssFilter->col 		= 'a.id';
			$ssFilter->id 		= 'DESC';
			$ssFilter->order 	= 'DESC';
			$ssFilter->cat_id	= 0;
			$ssFilter->blocks	= 0;
			$ssFilter->created_by	= 0;
			$ssFilter->tungay	 	= '';
			$ssFilter->denngay	 	= '';
		}
		$this->_arrParam['ssFilter']['keywords'] 	= $ssFilter->keywords;
		$this->_arrParam['ssFilter']['col'] 		= $ssFilter->col;
		$this->_arrParam['ssFilter']['order'] 		= $ssFilter->order;
		$this->_arrParam['ssFilter']['cat_id'] 		= $ssFilter->cat_id;
		$this->_arrParam['ssFilter']['blocks'] 		= $ssFilter->blocks;
		$this->_arrParam['ssFilter']['tungay'] 		= $ssFilter->tungay;
		$this->_arrParam['ssFilter']['denngay'] 	= $ssFilter->denngay;
		$this->_arrParam['ssFilter']['created_by']	= $ssFilter->created_by;
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
		$this->view->Title = 'Bài viết :: Danh sách';
		$this->view->headTitle($this->view->Title, true);
		
		$tblArticles = new Article_Model_Item();
		$this->view->Items = $tblArticles->listItem($this->_arrParam, array('task'=>'admin-list'));

		$this->view->slbCategory = $tblArticles->itemInSelectbox($this->_arrParam);
		
		$tblDiadiem = new Product_Model_Item();
		$this->view->slbUser = $tblDiadiem->itemInSelectbox($this->_arrParam, array('task'=>'admin-user'));
	
		$tblLanguages = new Default_Model_Language();
		$this->view->slbLanguages = $tblLanguages->itemInSelectbox($this->_arrParam);
		
		$totalItem = $tblArticles->countItem($this->_arrParam, array('task'=>'admin-list'));
		
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
	
	public function filterAction(){
		$ssFilter = new Zend_Session_Namespace($this->_namespace);
		
		if($this->_arrParam['type'] == 'search'){
			if($this->_arrParam['key'] == 1){
				$ssFilter->keywords = trim($this->_arrParam['keywords']);
				$ssFilter->tungay = trim($this->_arrParam['tungay']);
				$ssFilter->denngay = trim($this->_arrParam['denngay']);
			}else{
				$ssFilter->keywords = '';
				$ssFilter->tungay = '';
				$ssFilter->denngay = '';
			}
		}
		
		if ($this->_arrParam['type'] == 'created_by') {
			$ssFilter->created_by = $this->_arrParam['created_by'];
		}
		
		
		if($this->_arrParam['type'] == 'cat_id'){
			$ssFilter->cat_id = $this->_arrParam['cat_id'];
		}
	
		if($this->_arrParam['type'] == 'order'){
			$ssFilter->col = $this->_arrParam['col'];
			$ssFilter->order = $this->_arrParam['by'];
		}
		
		if($this->_arrParam['type'] == 'blocks'){
			$ssFilter->blocks = $this->_arrParam['blocks'];
		}
		
		if($this->_arrParam['type'] == 'lang'){
			$ssFilter->lang_code = $this->_arrParam['lang_code'];
		}
	
		$this->_redirect($this->_actionMain);
	
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function addAction(){
		$this->view->Title = 'Bài viết :: Thêm mới';
		$this->view->headTitle($this->view->Title, true);
		
		$tblArticles = new Article_Model_Item();
        $tblArticlesEn = new Article_Model_Itemen();
		$this->view->slbCategory = $tblArticles->itemInSelectbox($this->_arrParam);
		//$this->view->slbPage = $tblArticles->itemInSelectbox($this->_arrParam,array('task'=>'get-page'));
        $tblManu = new Product_Model_Manu();
		$this->view->slbPage = $tblManu->itemInSelectbox($this->_arrParam, array('task'=>'get-sources'));
		if($this->_request->isPost()){
				
			$validator = new Article_Form_ValidateItem($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$arrParam['id_article']=$tblArticles->saveItem($arrParam,array('task'=>'admin-add'));
                $tblArticlesEn->saveItem($arrParam,array('task'=>'admin-add'));
                //var_dump($arrParam);die;
				$this->_redirect($this->_actionMain);
			}
		}
	}
	
	public function infoAction(){
		$this->view->Title = 'Bài viết :: Xem thông tin';
		$this->view->headTitle($this->view->Title, true);
		$tblArticles = new Article_Model_Item();
		$this->view->Item = $tblArticles->getItem($this->_arrParam,array('task'=>'admin-info'));
		
		$tblUser = new Default_Model_Users();
		$this->view->createdBy = $tblUser->getItem(array('id' => $this->view->Item['created_by']),array('task'=>'admin-info'));
		$this->view->modifiedBy = $tblUser->getItem(array('id' => $this->view->Item['modified_by']),array('task'=>'admin-info'));
		
	}
	
	public function editAction(){
		$this->view->Title = 'Bài viết :: Sửa';
		$this->view->headTitle($this->view->Title, true);
		
		$tblArticles = new Article_Model_Item();
        $tblArticlesEn = new Article_Model_Itemen();
		$this->view->Item = $tblArticles->getItem($this->_arrParam,array('task'=>'admin-edit'));
        $this->view->ItemEn = $tblArticlesEn->getItem($this->_arrParam,array('task'=>'admin-edit'));
		
		$this->view->slbCategory = $tblArticles->itemInSelectbox($this->_arrParam);
        $tblManu = new Product_Model_Manu();
		$this->view->slbPage = $tblManu->itemInSelectbox($this->_arrParam, array('task'=>'get-sources'));
		
		if($this->_request->isPost()){
				
			$validator = new Article_Form_ValidateItem($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$tblArticles->saveItem($arrParam,array('task'=>'admin-edit'));
                $tblArticlesEn->saveItem($arrParam,array('task'=>'admin-edit'));
				$this->_redirect($this->_actionMain . $this->_page);
			}
		}
	}
	
	public function deleteAction(){
		$this->view->Title = 'Bài viết :: Xóa';
		$this->view->headTitle($this->view->Title, true);
		if($this->_request->isPost()){
			if(($this->_arrParam['type'] == 'multi-delete') && ($this->_arrParam['task'] == 'ok')){
				$tblArticles = new Article_Model_Item();
                $tblArticles_en = new Article_Model_Item();
				$tblArticles->deleteItem($this->_arrParam, array('task'=>'admin-delete-muti'));
                $tblArticles_en->deleteItem($this->_arrParam, array('task'=>'admin-delete-muti'));
				$this->_redirect($this->_actionMain . $this->_page);
			}else
				if(!empty($this->_arrParam['id'])){
				$tblArticles = new Article_Model_Item();
                $tblArticles_en = new Article_Model_Itemen();
				$tblArticles->deleteItem($this->_arrParam, array('task'=>'admin-delete'));
                $tblArticles_en->deleteItem($this->_arrParam, array('task'=>'admin-delete'));
				$this->_redirect($this->_actionMain . $this->_page);
			}
		}
	}
	
	public function statusAction(){
		$tblArticles = new Article_Model_Item();
		$tblArticles->changeStatus($this->_arrParam);
		$this->_redirect($this->_actionMain . $this->_page);
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function sortAction(){
		if($this->_request->isPost()){
			$tblArticles = new Article_Model_Item();
			$tblArticles->sortItem($this->_arrParam, array('task'=>'admin-sort'));
			$this->_redirect($this->_actionMain . $this->_page);
		}
		$this->_helper->viewRenderer->setNoRender();
	}

}



