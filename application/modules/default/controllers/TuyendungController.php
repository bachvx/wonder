<?php
class TuyendungController extends Zendvn_Controller_Action {
		
//Mang tham so nhan duoc khi mot Action chay
	protected $_arrParam;
	
	//Duong dan cua Controller
	protected $_currentController;
	
	//Duong dan cua Action chinh
	protected $_actionMain;
	
	//Thong so phan trang
	protected $_paginator = array(
									'itemCountPerPage' => 8,
									'pageRange' => 4,
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
	
		//Trang hien tai
		if(isset($this->_arrParam['page'])){
			$this->_paginator['currentPage'] = $this->_arrParam['page'];
			$this->_page = '/page/' . $this->_arrParam['page'];
		}
		
		//Truyen thong tin phan trang vao mang du lieu
		$this->_arrParam['paginator'] = $this->_paginator;
		
	
		//Truyen ra ngoai view
		$this->view->arrParam = $this->_arrParam;
		$this->view->currentController = $this->_currentController;
		$this->view->actionMain = $this->_actionMain;
	
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'tuyendung');
		
		$language = Zend_Registry::get('language');
		$this->view->language = $language['language'];
	}
	
	//Ham chay sau ham action
	public function postDispatch(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$this->view->headMeta()->setHttpEquiv('Refresh',$siteConfig['config_meta']['refresh']);
		$this->view->headMeta()->setHttpEquiv('content-language',$siteConfig['config_meta']['content_language']);
		$this->view->headMeta()->setName('classification',$siteConfig['config_meta']['classification']);
		$this->view->headMeta()->setName('language',$siteConfig['config_meta']['language']);
		$this->view->headMeta()->setName('robots',$siteConfig['config_meta']['robots']);
		$this->view->headMeta()->setName('author',$siteConfig['config_meta']['author']);
		$this->view->headMeta()->setName('copyright',$siteConfig['config_meta']['copyright']);
		$this->view->headMeta()->setName('revisit-after',$siteConfig['config_meta']['revisit_after']);
		
		if($siteConfig['config_site']['offline'] == 1){
			$this->_forward('off','public','default');
		}
	}
		
	public function indexAction() {
		$siteConfig = Zend_Registry::get('siteConfig');
		$this->view->headTitle('Genex tuyển dụng', true);
		$this->view->headMeta()->setName('description','Genex tuyển dụng');
		$this->view->headMeta()->setName('keywords','tuyển dụng');
		$this->view->headMeta()->setName('title','Genex tuyển dụng');
        $language = new Zend_Session_Namespace('language');
        if($language->lang=='vi'){
            $tblGroup = new Default_Model_Tuyendung();
    		$this->view->Items = $tblGroup->listItem($this->_arrParam, array('task'=>'list'));
        }else{
            $tblGroup = new Default_Model_Tuyendungen();
            $this->view->Items = $tblGroup->listItem($this->_arrParam, array('task'=>'list'));
        }
        
        $this->view->Counts = $tblGroup->countItem($this->_arrParam);
        
		//Them 1 tap tin css
		//$this->view->headLink()->appendStylesheet( PUBLIC_URL . '/templates/public/shop_001/css/blockSlide/blockSlide.css','screen');
	}
    public function detailAction() {
		$siteConfig = Zend_Registry::get('siteConfig');
		$language = new Zend_Session_Namespace('language');
        //$tblGroup = new Default_Model_Tuyendung();
		//$this->view->Items = $tblGroup->getItem($this->_arrParam, array('task'=>'public-detail'));
        if($language->lang=='vi'){
            $tblGroup = new Default_Model_Tuyendung();
    		$this->view->Items = $tblGroup->getItem($this->_arrParam, array('task'=>'public-detail'));
        }else{
            $tblGroup = new Default_Model_Tuyendungen();
            $this->view->Items = $tblGroup->getItem($this->_arrParam, array('task'=>'public-detail'));
        }
        
        $this->view->headTitle($this->view->Items['name'], true);
		$this->view->headMeta()->setName('description',$this->view->Items['name']);
        
		$this->view->headMeta()->setName('keywords',$this->view->Items['name']);
         
		$this->view->headMeta()->setName('title',$this->view->Items['name']);
        
        
        //$this->view->Counts = $tblGroup->countItem($this->_arrParam);
        
		//Them 1 tap tin css
		//$this->view->headLink()->appendStylesheet( PUBLIC_URL . '/templates/public/shop_001/css/blockSlide/blockSlide.css','screen');
	}	
	
}	
