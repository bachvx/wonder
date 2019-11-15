<?php
class UserController extends Zendvn_Controller_Action {
		
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
		$this->loadTemplate($template_path, 'template.ini', 'user');
		
		$language = Zend_Registry::get('language');
		$this->view->language = $language['language'];
	}
	
	//Ham chay sau ham action
	public function postDispatch(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$this->view->headMeta()->setName('description',$siteConfig['config_meta']['description']);
		$this->view->headMeta()->setName('keywords',$siteConfig['config_meta']['keywords']);
		$this->view->headMeta()->setName('title',$siteConfig['config_site']['sitename']);
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
		
		$info 		= new Zendvn_System_Info();
		$user_info 	= $info->getMemberInfo();
		if(count($user_info) > 0){
			if($user_info['active_code'] != '0'){
				$this->_forward('enabled','public','default');
			}
		}
	}
		
	public function indexAction() {
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'user_quanly');
		
		$this->view->Title = 'Thông tin tài khoản';
		$this->view->headTitle($this->view->Title, true);
		
		$info 		= new Zendvn_System_Info();
		$user_info 	= $info->getMemberInfo();
		
		$tblUser	= new Default_Model_Users();
		$this->view->Item = $tblUser->getItem(array('id' => $user_info['id']),array('task' => 'public'));
		
		$tblCity = new Default_Model_Cities();
		$this->view->city = $tblCity->getItem(array('id' => $this->view->Item['member_tinh']),array('task' => 'user-info'));
	}
	
	public function editAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'user_quanly');
	
		$this->view->Title = 'Sửa thông tin';
		$this->view->headTitle($this->view->Title, true);
	
		$info 		= new Zendvn_System_Info();
		$user_info 	= $info->getMemberInfo();
	
		$tblUser	= new Default_Model_Users();
		$this->view->Item = $tblUser->getItem(array('id' => $user_info['id']),array('task' => 'public'));
	
		$tblCity = new Default_Model_Cities();
		$this->view->city = $tblCity->itemInSelectbox(null,array('task' => 'get-cities'));
	
		$tblRegistry = new Default_Model_Registry();
	
		if($this->_request->isPost()){
			$validator = new Default_Form_ValidateRegistry($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData(array('upload'=>true));
				$tblRegistry->saveItem($arrParam,array('task'=>'user-edit'));
				$this->_redirect('member.html');
			}
		}
	}
	
	
	public function articleAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'user_quanly');
	
		$this->view->Title = 'Quản lý bài viết';
		$this->view->headTitle($this->view->Title, true);
	
		
		//$tblUser	= new Default_Model_Users();
		//$this->view->Item = $tblUser->getItem(array('id' => $user_info['id']),array('task' => 'public'));
		
		$tblDiadiem = new Diadiem_Model_Item();
		$this->view->Items = $tblDiadiem->listItem($this->_arrParam,array('task'=>'public-articleDiaDiem'));
		$totalItem = $tblDiadiem->countItem($this->_arrParam,array('task'=>'public-articleDiaDiem'));
		
		$paginator = new Zendvn_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
	}
	
	public function addarticleAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'user_quanly'); 
		
		$this->view->Title = 'Thêm mới bài viết';
		$this->view->headTitle($this->view->Title, true);
	
		$tblDiadiem = new Diadiem_Model_Item();
		$this->view->slbCategory = $tblDiadiem->itemInSelectbox($this->_arrParam);
	
		$tblUnits = new Diadiem_Model_Units();
		$this->view->slbDiadiemUnits = $tblUnits->itemInSelectbox($this->_arrParam, array('task'=>'get-units'));
		
		$tblDistricts = new Default_Model_Districts();
		$this->view->slbDistricts = $tblDistricts->itemInSelectbox($this->_arrParam, array('task'=>'get-districts-hn'));
		
		
		$tblManu = new Diadiem_Model_Manu();
		$this->view->slbDiadiemManu = $tblManu->itemInSelectbox($this->_arrParam, array('task'=>'get-sources'));
	
		$tblSources = new Diadiem_Model_Sources();
		$this->view->slbDiadiemSources = $tblSources->itemInSelectbox($this->_arrParam, array('task'=>'get-sources'));
	
		$tblMoney = new Default_Model_Money();
		$this->view->slbMoney = $tblMoney->itemInSelectbox($this->_arrParam, array('task'=>'get-money'));
	
		if($this->_request->isPost()){
			$validator = new Default_Form_ValidateArticlePublic($this->_arrParam,'add-article');
			if($validator->isError() == true){
			 
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData(); 
				$tbl_save = new Default_Model_Article();
 				$tbl_save->saveItem($arrParam,array('task'=>'public-add'));
				//$this->_redirect($this->_actionMain);
				$this->_redirect('member-article.html');
			}
		}
	}
	
	public function editarticleAction(){
 
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'user_quanly');
		
		$this->view->Title = 'Sửa địa điểm';
		$this->view->headTitle($this->view->Title, true);
		
		$tblDiadiem = new Diadiem_Model_Item();
		$this->view->Item = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-edit'));
		if(empty($this->view->Item)){
			$this->_redirect('member-article.html');
		}
		
		$this->view->slbCategory = $tblDiadiem->itemInSelectbox($this->_arrParam);
			
		$tblUnits = new Diadiem_Model_Units();
		$this->view->slbDiadiemUnits = $tblUnits->itemInSelectbox($this->_arrParam, array('task'=>'get-units'));
		
		$tblManu = new Diadiem_Model_Manu();
		$this->view->slbDiadiemManu = $tblManu->itemInSelectbox($this->_arrParam, array('task'=>'get-sources'));
		
		$tblSources = new Diadiem_Model_Sources();
		$this->view->slbDiadiemSources = $tblSources->itemInSelectbox($this->_arrParam, array('task'=>'get-sources'));
		$tblTime = new Default_Model_Thoigian();
		$this->view->slbDiadiemThoigian = $tblTime->itemInSelectbox($this->_arrParam, array('task'=>'get-time'));
		
		$tblDistricts = new Default_Model_Districts();
		$this->view->slbDistricts = $tblDistricts->itemInSelectbox($this->_arrParam, array('task'=>'get-districts-hn'));

		$tblMoney = new Default_Model_Money();
		$this->view->slbMoney = $tblMoney->itemInSelectbox($this->_arrParam, array('task'=>'get-money'));
		
		if($this->_request->isPost()){
			$validator = new Default_Form_ValidateArticlePublic($this->_arrParam,'update-article');
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$tbl_save = new Default_Model_Article();
				$tbl_save->saveItem($arrParam,array('task'=>'public-edit'));
				//$this->_redirect($this->_actionMain . $this->_page);
				$this->_redirect('member-article.html');
			}
		}
	}
	
	
	public function deletearticleAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'user_quanly');
		$this->view->Title = 'Xóa bài viết';
		$this->view->headTitle($this->view->Title, true);
		$info 		= new Zendvn_System_Info();
		$user_info 	= $info->getMemberInfo();
		$this->_arrParam['uid']= $user_info['id'];
		//$tblThanhVien = new Member_Model_ThanhVien();
		//$this->view->Item = $tblThanhVien->getItem(array('id' => $user_info['id']),array('task' => 'user-info'));
		//$this->view->Like = $tblThanhVien->getItem(array('id' => $user_info['id']),array('task' => 'user-like'));
		$tblDiadiem = new Diadiem_Model_Item();
		$this->view->Item = $tblDiadiem->getItem($this->_arrParam,array('task'=>'public-edit'));
		if(empty($this->view->Item)){
			$this->_redirect('member-article.html');
		}
		if($this->_request->isPost()){
				 
			if(!empty($this->_arrParam['id'])){
				 
				$retun=$tblDiadiem->deleteItem($this->_arrParam, array('task'=>'public-delete'));
				$this->_redirect('member-article.html?delete=ok');
			}
		}
	}
	
	
	public function passwordAction(){
		$siteConfig = Zend_Registry::get('siteConfig');
		$template_path = TEMPLATE_PATH . "/public/" . $siteConfig['template']['site'];
		$this->loadTemplate($template_path, 'template.ini', 'user_quanly');
	
		$this->view->Title = 'Đổi mật khẩu';
		$this->view->headTitle($this->view->Title, true);
	
		$info 		= new Zendvn_System_Info();
		$user_info 	= $info->getMemberInfo();
	
		$tblUser	= new Default_Model_Users();
		$this->view->Item = $tblUser->getItem(array('id' => $user_info['id']),array('task' => 'public'));
	
		$tblRegistry = new Default_Model_Registry();
	
		if($this->_request->isPost()){
			$validator = new Default_Form_ValidateRegistry($this->_arrParam,array('task' => 'password'));
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$tblRegistry->saveItem($arrParam,array('task'=>'user-password'));
				$this->_redirect('member.html');
			}
		}
	}
	
	public function loginAction(){
		
		$this->view->Title = $this->view->language['userDangNhap'];
		$this->view->headTitle($this->view->Title, true);
		
		if($this->_request->isPost()){
			$validator = new Default_Form_ValidateLoginPublic($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$auth = new Zendvn_System_Auth();
				if($auth->login($this->_arrParam) == true){
					$info = new Zendvn_System_Info();
					$info->createInfo();
					$this->_redirect('/');
				}else{
					$error[] = $auth->getError();
					$this->view->messageError = $error;
				}
			}
		}
	}
	
	public function logoutAction(){
		$auth = new Zendvn_System_Auth();
		$auth->logout();
		
		$info = new Zendvn_System_Info();
		$info->destroyInfo();
		
		$this->_redirect('/member.html');
	}
	
	public function registryAction(){
	
		$this->view->Title = $this->view->language['dangKy'];
		$this->view->headTitle($this->view->Title, true);
		
		$tblCity = new Default_Model_Cities();
		$this->view->city = $tblCity->itemInSelectbox(null,array('task' => 'get-cities'));
	
		$tblRegistry = new Default_Model_Registry();
		
		$captcha = new Zendvn_Captcha_Image();
		//9. Truyen gia tri Captcha ra view
		$this->view->captcha = $captcha->render($this->view);
		$this->view->captcha_id = $captcha->getId();

		if($this->_request->isPost()){
			$validator = new Default_Form_ValidateRegistry($this->_arrParam);
			if($validator->isError() == true){
				$this->view->messageError = $validator->getMessageError();
				$this->view->Item = $validator->getData();
			}else{
				$arrParam = $validator->getData();
				$user_id = $tblRegistry->saveItem($arrParam,array('task'=>'user-add'));
				$encode = new Zendvn_Encode();
				$encode_id = $encode->password($user_id);
				
				$this->view->UserInfo = $tblRegistry->getItem(array('id' => $user_id),array('task' => 'user-info'));
				
				$this->_redirect('thanh-vien-dang-ky-thanh-cong.html?nv=' . $user_id . 'nva' . $encode_id);
			}
			$captcha->removeImg($this->_arrParam['captchaID']);
		}
		$this->_imgCaptcha = $captcha->getId() . $captcha->getSuffix();
		$captchaSession = new Zend_Session_Namespace('captcha');
		$captchaSession->imgCaptcha = $this->_imgCaptcha;
	}
	
	public function successAction(){
		
		$tblRegistry = new Default_Model_Registry();
		$getId = explode('nva', $this->_arrParam['nv']);
		$user_id = $getId[0];
		
		$this->view->UserInfo = $tblRegistry->getItem(array('id' => $user_id),array('task' => 'user-info'));
		$encode = new Zendvn_Encode();
		$encode_id = $encode->password($this->view->UserInfo['id']);

		if(count($this->view->UserInfo) > 0 && $getId[1] == $encode_id){
			$this->view->Title = $this->view->language['userDangKyThanhCong'];
			$this->view->headTitle($this->view->Title, true);
		}else{
			$this->_redirect('register.html');
		}
	}
	
	public function regSuccessAction(){
		$this->view->Title = 'Kích hoạt tài khoản';
		$this->view->headTitle($this->view->Title, true);
		if(!empty($this->_arrParam['user_id'])){
			$tblUser = new Default_Model_Users();
			$this->view->userInfo = $tblUser->getItem(array('id' => $this->_arrParam['user_id'],'active_code' => $this->_arrParam['code']),array('task' => 'user-success'));
				
			if(count($this->view->userInfo) > 0){
				$tblUser->saveItem(array('id' => $this->_arrParam['user_id'],'active_code' => $this->_arrParam['code']),array('task' => 'user-success'));
				$this->_redirect('reg_success.html');
			}
		}
	}
	
	public function preDispatch(){
		$captchaSession = new Zend_Session_Namespace('captcha');
		if(!empty($captchaSession->imgCaptcha)){
			$filename = CAPTCHA_PATH . '/img/' . $captchaSession->imgCaptcha;
			@unlink($filename);
		}
	}
	
}
