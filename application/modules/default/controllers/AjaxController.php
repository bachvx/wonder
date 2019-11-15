<?php
class AjaxController extends Zendvn_Controller_Action {
		
	protected $_arrParam; //Mang tham so nhan duoc khi mot Action chay
	protected $_currentController; //Duong dan cua Controller
	protected $_actionMain; //Duong dan cua Action chinh
	
	public function init(){
		$this->_paginator['itemCountPerPage'] = $moduleConfig['module']['countPage'];
		$this->_paginator['pageRange'] = $moduleConfig['module']['pageRange'];
        $this->_arrParam['paginator'] = $this->_paginator;
		$this->_arrParam = $this->_request->getParams(); //Mang tham so nhan duoc khi mot Action chay
		$this->_currentController = '/' . $this->_arrParam['module'] . '/' . $this->_arrParam['controller']; //Duong dan cua Controller
		$this->_actionMain = '/' . $this->_arrParam['module'] . '/'	. $this->_arrParam['controller'] . '/index'; //Duong dan cua Action chinh
	
		//Thanh vien dang login
		$info 			= new Zendvn_System_Info();
		$this->_arrParam['adminInfo'] 	= $info->getMemberInfo();
		
		//Truyen ra ngoai view
		$this->view->arrParam = $this->_arrParam;
		$this->view->currentController = $this->_currentController;
		$this->view->actionMain = $this->_actionMain;
	
		$this->view->siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $this->view->siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'user');
		
		$language = Zend_Registry::get('language');
		$this->view->language = $language['language'];
	}
	
	public function savePermissionAction(){
		$this->_helper->viewRenderer->setNoRender();
		$this->_helper->layout->disableLayout();
		if($this->_request->isPost()){
			$tblAjax = new Default_Model_Ajax();
			$tblAjax->saveItem($this->_arrParam, array('task' => 'permission-add'));
		}
	}
	
	public function systemAction(){
		$this->_helper->layout->disableLayout();
		$tblAjax = new Default_Model_Ajax();
		$this->view->Items = $tblAjax->system($this->_arrParam, array('task' => 'public-logs'));
	}
	
	public function checkOnlineAction(){
		$this->_helper->layout->disableLayout();
		$this->_helper->viewRenderer->setNoRender();
		
		$tblAjax = new Default_Model_Ajax();
		$tblAjax->saveItem($this->_arrParam, array('task' => 'update-online'));
	}
	
	public function userOnlineAction(){
		$this->_helper->layout->disableLayout();
		$tblAjax = new Default_Model_Ajax();
		$this->view->Items = $tblAjax->listItem($this->_arrParam, array('task' => 'admin-online'));
	}
	
	public function thongkeAction(){
		$this->_helper->layout->disableLayout();
		
		$tblAjax = new Default_Model_Ajax();
		$this->view->lessonCategory	 	= $tblAjax->countItem($this->_arrParam, array('task' => 'lesson-category'));
		$this->view->lesson 			= $tblAjax->countItem($this->_arrParam, array('task' => 'lesson'));
		$this->view->lessonType 		= $tblAjax->countItem($this->_arrParam, array('task' => 'lesson-type'));
		$this->view->exercises 			= $tblAjax->countItem($this->_arrParam, array('task' => 'exercises'));
		$this->view->thanhvien_dangky	= $tblAjax->countItem($this->_arrParam, array('task' => 'thanhvien-dangky'));
		$this->view->hoidap				= $tblAjax->countItem($this->_arrParam, array('task' => 'hoidap'));
		$this->view->gop_y				= $tblAjax->countItem($this->_arrParam, array('task' => 'gop-y'));
	}
	
	public function getlikeAction(){
		$this->_helper->layout->disableLayout();
		//var_dump( $this->_arrParam); die;
		$id			= $this->_arrParam['id'];
		$url		= $this->_arrParam['link'];
		$typer		= $this->_arrParam['typer'];
		$field		= $this->_arrParam['field'];
		$ShareCount = new Zendvn_ShareCount($url);
		//$data['google_plusones'] = $shareCount->get_plusones();
		$data['like_count']= $ShareCount->get_fb();
		$data['comment_count']= $ShareCount->get_fb_comment();
		//echo '<pre>';
		//print_r($data);
		//echo '</pre>';die;
		ob_end_clean();
		$save= new  Default_Model_Ajax();
		$save->saveLike($data,$typer,$field,$id);
	}
	
	public function supportAction(){
		$this->_helper->layout->disableLayout();
	}
}
