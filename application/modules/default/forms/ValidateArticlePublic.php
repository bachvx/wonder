<?php
class Default_Form_ValidateArticlePublic{
	
	//Chua nhung thong bao loi cua form
	protected $_messagesError = null;
	
	//MANG CHUA DU LIEU SAU KHI KIEM TRA
	protected $_arrData;
	
	public function __construct($arrParam = array(), $options = null){
		$info 					= new Zendvn_System_Info();
		$admin_info 			= $info->getMemberInfo();
		
		$language = Zend_Registry::get('language');
		$language = $language['language'];
		
		//=========================================
		//KIEM TRA user_name
		//=========================================
		if($arrParam['action'] == 'addarticle'){
			$options = array('table'=>'articles','field'=>'name');
		}else if($arrParam['action'] == 'edit'){
			$clause = ' id !=' . $arrParam['id'];
			$options = array('table'=>'articles','field'=>'name','exclude'=>$clause);
		}
		
// 		$validator = new Zend_Validate();
		
// 		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
// 					->addValidator(new Zend_Validate_StringLength(6,200),true)
// 					->addValidator(new Zend_Validate_Regex('#^[a-zA-Z0-9]+$#'),true)
// 					->addValidator(new Zend_Validate_Db_NoRecordExists($options),true);
		
// 		if(!$validator->isValid($arrParam['name'])){
// 			$message = $validator->getMessages();
// 			$this->_messagesError['name'] = 'Tiêu đề : không được để trống và có độ dài từ 6 đến 200 ký tự' ;
// 			$arrParam['name'] = '';
// 		}
		
		//=========================================
		//KIEM TRA user_avatar
		//=========================================
		/* $upload = new Zend_File_Transfer_Adapter_Http();
		$fileInfo = $upload->getFileInfo('user_avatar');
		$fileName = $fileInfo['user_avatar']['name'];
		if(!empty($fileName)){
			//echo 'co file dc upload';
			$upload->addValidator('Extension',true,array('jpg','gif','png'),'user_avatar');
			$upload->addValidator('Size',true,array('min'=>'2KB','max'=>'1000KB'),'user_avatar');
			if(!$upload->isValid('user_avatar')){
				$message = $upload->getMessages();
				$this->_messagesError['user_avatar'] = 'Avatar: ' . current($message);
			}
		}else if(!empty($arrParam['current_user_avatar'])){
			$arrParam['user_avatar'] = $arrParam['current_user_avatar'];
		} */
		
		 
		 
		if($arrParam['name'] == ''){
			$this->_messagesError['name'] = 'Tiêu đề không được để trống';
		}
		
		//=========================================
		//KIEM TRA chuyên mục
		//=========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true);
		if(!$validator->isValid($arrParam['cat_id'])){
			$message = $validator->getMessages();
			$this->_messagesError['cat_id'] = 'Chuyên mục không được để trống: ';
			$arrParam['cat_id'] = '';
		}
		
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true);
		if(!$validator->isValid($arrParam['tenquan'])){
			$message = $validator->getMessages();
			$this->_messagesError['tenquan'] = 'Tên quán : không được để trống: ';
			$arrParam['tenquan'] = '';
		}
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true);
		if(!$validator->isValid($arrParam['address'])){
			$message = $validator->getMessages();
			$this->_messagesError['address'] = 'Địa chỉ : không được để trống ';
			$arrParam['address'] = '';
		}
		if($arrParam['cat_id'] == 0){
			$this->_messagesError['cat_id'] = 'Bạn cần chọn một chuyên mục';
		}
		if($arrParam['districts_id'] == 0){
			$this->_messagesError['districts_id'] = 'Bạn cần chọn Quận/Huyện';
		}
		 
		 
		if($arrParam['action'] == 'editarticle'){
			
			$upload = new Zend_File_Transfer_Adapter_Http();
			$fileName ='';
			if(!empty($fileName)){ 
				//echo 'co file dc upload';die;
				$upload->addValidator('Extension',true,array('jpg','gif','png'),'images');
				$upload->addValidator('Size',true,array('min'=>'2KB','max'=>'1000KB'),'images');
				if(!$upload->isValid('pictute')){
					$message = $upload->getMessages();
					$this->_messagesError['pictute'] = 'Pictute: ' . current($message);
				}
			}else if(!empty($arrParam['pictute'])){
				//die('khong co file');
				$arrParam['pictute'] = $arrParam['pictute'];
			}
			 
		}
		 
		
		//=========================================
		//TRUYEN CAC GIA TRI DUNG VAO MANG $_arrData
		//=========================================
		$this->_arrData = $arrParam;
		
	}
	
	//Kiem tra Error
	//return true neu co loi xuat hien
	public function isError(){
		if(count($this->_messagesError) > 0){
			return true;
		}else{
			return false;
		}
	}
	
	//Tra ve mot mang cac thong bao loi
	public function getMessageError(){
		return $this->_messagesError;
	}
	
	//Tra ve mot du lieu sau khi kiem tra
	public function getData($options = null){
		
		if($options['upload'] == true){
			//echo 'uploa';die;
			$this->_arrData['picture'] = $this->uploadFile();
		}
		//echo 'uploa1111';die;
		return $this->_arrData;
	}
	
	//=========================================
	// 1.Upload user_avatar
	// 2.Resize kich thuoc (100x100 va 450x450)
	// 3.Tra ve ten tap tin upload
	//=========================================
	public function uploadFile(){
		//Duong dan den thu muc upload
		$upload_dir = FILE_PATH . '/editor-upload/images/content/';
		
		//=========================================
		//UPLOAD FILE user_avatar
		//=========================================
		$upload = new Zendvn_File_Upload();
		 
		
// 		$fileInfo = $upload->getFileInfo('user_avatar');
// 		$fileName = $fileInfo['user_avatar']['name'];
		$fileInfo = $upload->getFileInfo('picture');
		$fileName = $fileInfo['picture']['name'];
// 		echo $fileName;
		 
		if(!empty($fileName)){
				$fileName = $upload->upload('picture', $upload_dir ,array('task'=>'rename'),'content_');
				$thumb = Zendvn_File_Images::create($upload_dir. $fileName);
				$thumb->resize(200,200)->save($upload_dir . $fileName);
				//$fileName='/mega/public/files/editor-upload/images/content/'.$fileName;
				$fileName=$upload_dir.$fileName;
		}else{
			 
			$fileName = '';
		}
		
		
		return $fileName;
	}
}


