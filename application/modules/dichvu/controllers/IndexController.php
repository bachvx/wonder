<?php
class Dichvu_IndexController extends Zendvn_Controller_Action {
		
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
		$this->loadTemplate($template_path, 'template.ini', 'unimom');
		
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
    public function phanphoiAction(){
            //die("ád");
            $siteConfig = Zend_Registry::get('siteConfig');
    		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
    		$this->loadTemplate($template_path, 'template.ini', 'phanphoi');
    		$tblQuanngon = new Default_Model_Phanphoi();
    		//$this->view->category = $tblQuanngon->getItem($this->_arrParam,array('task'=>'public-category'));
    	//	if($this->view->category['meta_title'] != ''){
    	//		$this->view->headTitle($this->view->category['meta_title'], true);
    	//	}else{
    			$this->view->headTitle("Phân phối", true);
    	//	}
    		$this->view->headMeta()->setName('description',"Phân phối");
    		$this->view->headMeta()->setName('keywords',"Phân phối");
    		$this->view->headMeta()->setName('title',"Phân phối");
    		
    		$this->view->Items = $tblQuanngon->listItem($this->_arrParam,array('task'=>'public-daily'));
    	
    	}

    
    public function phankhuAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'page'); 
        
		$tblDiadiem = new Dichvu_Model_Item();
		$this->view->ItemsPhankhu = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-phankhu'));
		$this->view->ItemsSanpham = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-sanpham'));
        $this->view->ItemsTienich = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-tienich'));
        $this->view->Thamso=$this->_arrParam;
        $this->view->headTitle($this->view->ItemsPhankhu['name'], true);
        //var_dump($this->view->ItemsSanpham);die;
	}
    public function matbangAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'article'); 
        $this->_arrParam['id']=1;
		$tblDiadiem = new Default_Model_Genexhome();
        $tblTrungtam = new Default_Model_Trungtam();
        $this->view->headTitle("Mặt bằng tổng thể", true);
		$this->view->Tongquan = $tblDiadiem->getItem($this->_arrParam,array('task'=>'admin-info'));
        
		$this->view->Items = $tblTrungtam->listItem($this->_arrParam, array('task'=>'admin-list'));
		
		if($this->view->category['meta_title'] != ''){
			$this->view->headTitle($this->view->category['meta_title'], true);
		}else{
			$this->view->headTitle($this->view->category['name'], true);
		}
		//$this->view->headMeta()->setName('description',$this->view->category['meta_description']);
//		$this->view->headMeta()->setName('keywords',$this->view->category['meta_keywords']);
//		$this->view->headMeta()->setName('title',$this->view->category['meta_title']);
	}
    public function tongquanAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'article'); 
        $this->_arrParam['id']=2;
		$tblDiadiem = new Default_Model_Genexhome();
        //$tblTrungtam = new Default_Model_Trungtam();
        $tblPhankhu = new Dichvu_Model_Item();
        
		$this->view->ItemsPhankhu = $tblPhankhu->getItem($this->_arrParam,array('task'=>'public-phankhu'));
		$this->view->Tongquan = $tblDiadiem->getItem($this->_arrParam,array('task'=>'admin-info'));
		//$this->view->Items = $tblTrungtam->listItem($this->_arrParam, array('task'=>'admin-list'));
		
		if($this->view->category['meta_title'] != ''){
			$this->view->headTitle('Tổng quan Wonder City', true);
		}else{
			$this->view->headTitle('Tổng quan Wonder City', true);
		}
		//$this->view->headMeta()->setName('description',$this->view->category['meta_description']);
//		$this->view->headMeta()->setName('keywords',$this->view->category['meta_keywords']);
//		$this->view->headMeta()->setName('title',$this->view->category['meta_title']);
	}
    public function chudautuAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'article'); 
        $this->_arrParam['id']=5;
		$tblDiadiem = new Default_Model_Genexhome();
        //$tblTrungtam = new Default_Model_Trungtam();
        $tblPhankhu = new Dichvu_Model_Item();
        
		$this->view->ItemsPhankhu = $tblPhankhu->getItem($this->_arrParam,array('task'=>'public-phankhu'));
		$this->view->Tongquan = $tblDiadiem->getItem($this->_arrParam,array('task'=>'admin-info'));
		//$this->view->Items = $tblTrungtam->listItem($this->_arrParam, array('task'=>'admin-list'));
		
		if($this->view->category['meta_title'] != ''){
			$this->view->headTitle('Giới thiệu chủ đầu tư', true);
		}else{
			$this->view->headTitle('Giới thiệu chủ đầu tư', true);
		}
		//$this->view->headMeta()->setName('description',$this->view->category['meta_description']);
//		$this->view->headMeta()->setName('keywords',$this->view->category['meta_keywords']);
//		$this->view->headMeta()->setName('title',$this->view->category['meta_title']);
	}
    public function lienheAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'article'); 
        $this->_arrParam['id']=3;
		$tblDiadiem = new Default_Model_Genexhome();
        $tblContact = new Default_Model_Contact();
		$this->view->lienhe = $tblDiadiem->getItem($this->_arrParam,array('task'=>'admin-info'));
		if($this->view->category['meta_title'] != ''){
			$this->view->headTitle('Liên hệ Wonder City', true);
		}else{
			$this->view->headTitle('Liên hệ Wonder City', true);
		}
        if($this->_request->isPost()){
			$validator = new Default_Form_ValidateContact($this->_arrParam);
			if($validator->isError() == true){
			
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				
				
				$tblContact->saveItem($this->_arrParam,array('task'=>'contact-add'));
				$this->_redirect('lien-he?save=ok');
			}
		}
		//$this->view->headMeta()->setName('description',$this->view->category['meta_description']);
//		$this->view->headMeta()->setName('keywords',$this->view->category['meta_keywords']);
//		$this->view->headMeta()->setName('title',$this->view->category['meta_title']);
	}
	public function detailAction(){
		
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'diadiem_detail');
		
		$tblDiadiem = new Product_Model_Item();
		$this->view->Item = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-detail'));
        
		if($this->view->Item['meta_title'] != ''){
			$this->view->headTitle($this->view->Item['meta_title'], true);
		}else{
			$this->view->headTitle($this->view->Item['name'], true);
		}
		$this->view->headMeta()->setName('description',$this->view->Item['meta_description']);
		$this->view->headMeta()->setName('keywords',$this->view->Item['meta_keywords']);
		$this->view->headMeta()->setName('title',$this->view->Item['meta_title']);
	
		//$this->view->itemKhac = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-khac'));
		//	die("ad");
		$this->view->Title = $this->view->Item['name'];
		$this->view->headTitle($this->view->Title, true);
	
		//$tblDiadiem->saveItem($this->view->Item, array('task' => 'public-hits'));
	}
    public function dulichAction(){
		//die("a");
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'diadiem_detail');
		
		$tblDiadiem = new Dichvu_Model_Item();
		$this->view->Item = $tblDiadiem->getItem($this->_arrParam,array('task'=>'dulich-detail'));
        
		if($this->view->Item['meta_title'] != ''){
			$this->view->headTitle($this->view->Item['meta_title'], true);
		}else{
			$this->view->headTitle($this->view->Item['name'], true);
		}
		$this->view->headMeta()->setName('description',$this->view->Item['name']);
		$this->view->headMeta()->setName('keywords',$this->view->Item['name']);
		$this->view->headMeta()->setName('title',$this->view->Item['name']);
	
		$this->view->Category = $tblDiadiem->listItem($this->_arrParam,array('task'=>'dulich-category'));
		//	die("ad");
		$this->view->Title = $this->view->Item['name'];
		$this->view->headTitle($this->view->Title, true);
	
		//$tblDiadiem->saveItem($this->view->Item, array('task' => 'public-hits'));
	}
	
	
	
}






