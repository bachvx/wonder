<?php
class Product_IndexController extends Zendvn_Controller_Action {
		
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
	
	public function init(){
		 
		//Mang tham so nhan duoc khi mot Action chay
		$this->_arrParam = $this->_request->getParams();
	
		//Duong dan cua Controller
		$this->_currentController = '/' . $this->_arrParam['module'] . '/' . $this->_arrParam['controller'];
	
		//Duong dan cua Action chinh
		$this->_actionMain = '/' . $this->_arrParam['module'] . '/'	. $this->_arrParam['controller'] . '/index';

		$filename = APPLICATION_PATH . '/modules/'.$this->_arrParam['module'].'/config/config.ini';
		$section = 'module-settings';
		$moduleConfig = new Zend_Config_Ini($filename, $section);
		$moduleConfig = $moduleConfig->toArray();
		$this->_arrParam['moduleConfig'] = $moduleConfig['module'];
		$this->view->moduleConfig = $moduleConfig['module'];
		$this->_paginator['itemCountPerPage'] = $moduleConfig['module']['countPage'];
		$this->_paginator['pageRange'] = $moduleConfig['module']['pageRange'];
		
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
		}
		
		if(empty($ssFilter->lang_code)){
			$language = new Zend_Session_Namespace('language');
			$this->_arrParam['ssFilter']['lang_code'] = $language->lang;
		}else{
			$this->_arrParam['ssFilter']['lang_code'] = $ssFilter->lang_code;
		}
		
		//Truyen thong tin phan trang vao mang du lieu
		$this->_arrParam['paginator'] = $this->_paginator;
		
		$this->_arrParam['ssFilter']['keywords'] 	= $ssFilter->keywords;
	
		//Truyen ra ngoai view
		$this->view->arrParam = $this->_arrParam;
		$this->view->currentController = $this->_currentController;
		$this->view->actionMain = $this->_actionMain;
	
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'diadiem_category');
		
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
	
	public function filterAction(){ 
		$ssFilter = new Zend_Session_Namespace($this->_namespace);
	
		if($this->_arrParam['type'] == 'search'){
			$ssFilter->keywords = trim($this->_arrParam['keywords']);
		}
	
		$this->_redirect('/' . $this->_arrParam['module'] . '/'	. $this->_arrParam['controller'] . '/search');
	
		$this->_helper->viewRenderer->setNoRender();
	}
	
	public function searchAction() {
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'diadiem_detail');
		$tblDiadiem = new Diadiem_Model_Item();
		
		$this->view->title = $this->view->language['ketQuaTimKiem'];
		$this->view->headTitle($this->view->title, true);
		
		$this->view->Items = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-search'));
	
		$totalItem = $tblDiadiem->countItem($this->_arrParam,array('task'=>'public-search'));
	
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}

	public function categoryAction(){
       
		$tblDiadiem = new Product_Model_Item();
		$tblCategory = new Product_Model_Category();
		
		$this->view->category = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-category'));
		
		if($this->view->category['meta_title'] != ''){
			$this->view->headTitle($this->view->category['meta_title'], true);
		}else{
			$this->view->headTitle($this->view->category['name'], true);
		}
		$this->view->headMeta()->setName('description',$this->view->category['meta_description']);
		$this->view->headMeta()->setName('keywords',$this->view->category['meta_keywords']);
		$this->view->headMeta()->setName('title',$this->view->category['meta_title']);
		
		$this->view->Items = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-category'));
		$totalItem = $tblDiadiem->countItem($this->_arrParam,array('task'=>'public-category'));
			
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
    public function tienichAction(){
        $siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'page'); 
        
		$tblDiadiem = new Dichvu_Model_Item();
		$this->view->ItemsPhankhu = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-phankhu'));
        $this->view->ItemsTienich = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-tienich'));
        $this->view->Banner = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-banner'));
        $this->view->Thamso=$this->_arrParam;
	}
    public function categorypageAction(){
       //var_dump($this->_arrParam);die;
        
        $siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'categorypage');
		$tblDiadiem = new Product_Model_Item();
		$tblCategory = new Product_Model_Category();
        $this->view->slide = $tblDiadiem->getOther($this->_arrParam,array('task'=>'getslide'));
        $this->view->template_id = $tblDiadiem->getOther($this->_arrParam,array('task'=>'template_id'));
		$this->view->category = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-category'));
        $this->_arrParam['cat_id'] = $this->view->category['id'];
		if($this->view->category['meta_title'] != ''){
			$this->view->headTitle($this->view->category['meta_title'], true);
		}else{
			$this->view->headTitle($this->view->category['name'], true);
		}
		$this->view->headMeta()->setName('description',$this->view->category['meta_description']);
		$this->view->headMeta()->setName('keywords',$this->view->category['meta_keywords']);
		$this->view->headMeta()->setName('title',$this->view->category['meta_title']);
		$this->view->arr = $this->_arrParam;
		$this->view->Items = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-category'));
        
		$totalItem = $tblDiadiem->countItem($this->_arrParam,array('task'=>'public-category'));
        $this->view->totalItem = $totalItem;
		//	die("ads");	
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
        //	die("ads");	
	}
    public function unimomAction(){
        $siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'categorypage');
		$tblDiadiem = new Product_Model_Item();
		$tblCategory = new Product_Model_Category();
        $arrParam['cid']=2;
        $arrParam['page_id']=2;
		$this->view->slide = $tblDiadiem->getOther($arrParam,array('task'=>'getslide'));
        
		$this->view->category = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-category'));
	
		if($this->view->category['meta_title'] != ''){
			$this->view->headTitle($this->view->category['meta_title'], true);
		}else{
			$this->view->headTitle($this->view->category['name'], true);
		}
        
		$this->view->headMeta()->setName('description',$this->view->category['meta_description']);
		$this->view->headMeta()->setName('keywords',$this->view->category['meta_keywords']);
		$this->view->headMeta()->setName('title',$this->view->category['meta_title']);
		
		$this->view->Items = $tblDiadiem->listItem($arrParam['page_id'],array('task'=>'public-category'));
       
		$totalItem = $tblDiadiem->countItem($arrParam,array('task'=>'public-category'));
        $this->view->totalItem = $totalItem;
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
    
    public function hubdicAction(){
        $siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'categorypage');
		$tblDiadiem = new Product_Model_Item();
		$tblCategory = new Product_Model_Category();
        $arrParam['cid']=3;
        $arrParam['page_id']=3  ;
		$this->view->slide = $tblDiadiem->getOther($arrParam,array('task'=>'getslide'));
        
		$this->view->category = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-category'));
	
		if($this->view->category['meta_title'] != ''){
			$this->view->headTitle($this->view->category['meta_title'], true);
		}else{
			$this->view->headTitle($this->view->category['name'], true);
		}
        
		$this->view->headMeta()->setName('description',$this->view->category['meta_description']);
		$this->view->headMeta()->setName('keywords',$this->view->category['meta_keywords']);
		$this->view->headMeta()->setName('title',$this->view->category['meta_title']);
		
		$this->view->Items = $tblDiadiem->listItem($arrParam['page_id'],array('task'=>'public-category'));
       
		$totalItem = $tblDiadiem->countItem($arrParam,array('task'=>'public-category'));
        $this->view->totalItem = $totalItem;
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
	
	public function detailAction(){
	//	die("ds");
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'diadiem_detail');

		$tblDiadiem = new Product_Model_Item();
		$this->view->Item = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-detail'));
        //$arrParam['manu-id']=$this->view->Item['manu_id'];
        //var_dump($this->view->Item['manu_id'] );die;
       // $this->view->slide = $tblDiadiem->getOther($arrParam,array('task'=>'getslide'));
       //	die("ds");
		if($this->view->Item['meta_title'] != ''){
			$this->view->headTitle($this->view->Item['meta_title'], true);
		}else{
			$this->view->headTitle($this->view->Item['name'], true);
		}
       
		$this->view->headMeta()->setName('description',$this->view->Item['meta_description']);
		$this->view->headMeta()->setName('keywords',$this->view->Item['meta_keywords']);
		$this->view->headMeta()->setName('title',$this->view->Item['meta_title']);
	
		$this->view->itemKhac = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-khac'));
		$this->view->Title = $this->view->Item['name'];
		$this->view->headTitle($this->view->Title, true);
	       //die("ád");
		//$tblDiadiem->saveItem($this->view->Item, array('task' => 'public-hits'));
	}
	
	public function searchformAction() {
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'search'); 
		$this->view->Title = 'Tìm kiếm sản phẩm';
		$this->view->headTitle($this->view->Title, true);

		$tblDiadiem = new Product_Model_Item();
	
		$this->view->Items = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-block', 'block' => 'search'));
        $this->view->Categorys = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-category-search'));
        $this->view->Thuonghieu = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-trademark-search'));
       // die("ád");
		$this->view->totalItem = $totalItem = $tblDiadiem->countItem($this->_arrParam,array('task'=>'public-block', 'block' => 'search'));
	
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
	
	
	
}






