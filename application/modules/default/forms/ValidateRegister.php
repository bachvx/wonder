<?php
class Default_Form_ValidateRegister{
	
	//Chua nhung thong bao loi cua form
	protected $_messagesError = null;
	
	//MANG CHUA DU LIEU SAU KHI KIEM TRA
	protected $_arrData;
	
	public function __construct($arrParam = array(), $options = null){
		
		$language = Zend_Registry::get('language');
		$language = $language['language'];
		
		//=========================================
		//KIEM TRA nguontin_id
		//=========================================
		if($arrParam['nguontin_id'] <= 0){
			$this->_messagesError['nguontin_id'] = 'Giá trị này không được để trống';
		}
		
		//=========================================
		//KIEM TRA hoten
		//=========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
					->addValidator(new Zend_Validate_StringLength(3,32),true);
		
		if(!$validator->isValid($arrParam['hoten'])){
			$message = $validator->getMessages();
			$this->_messagesError['hoten'] = current($message);
		}
		
		//=========================================
		//KIEM TRA diachi
		//=========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_StringLength(0,250),true);
		
		if(!$validator->isValid($arrParam['diachi'])){
			$message = $validator->getMessages();
			$this->_messagesError['diachi'] = current($message);
		}
		
		//=========================================
		//KIEM TRA coquan
		//=========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_StringLength(0,250),true);
		
		if(!$validator->isValid($arrParam['coquan'])){
			$message = $validator->getMessages();
			$this->_messagesError['coquan'] = current($message);
		}
		
		//=========================================
		//KIEM TRA email
		//=========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
			->addValidator(new Zend_Validate_EmailAddress(),true);
				
		if(!$validator->isValid($arrParam['email'])){
			$message = $validator->getMessages();
			$this->_messagesError['email'] = current($message);
		}
		
		//=========================================
		//KIEM TRA dienthoai
		//=========================================
		$validator = new Zend_Validate();
		$pattern = '#^[0-9\.\s\+]+$#';
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
			->addValidator(new Zend_Validate_Regex($pattern),true);
			
		if(!$validator->isValid($arrParam['dienthoai'])){
			$message = $validator->getMessages();
			$this->_messagesError['dienthoai'] = current($message);
		}
		
		//=========================================
		//KIEM TRA thoigian_id
		//=========================================
		if($arrParam['thoigian_id'] <= 0){
			$this->_messagesError['thoigian_id'] = 'Giá trị này không được để trống';
		}
		
		//=========================================
		//KIEM TRA ngayhen
		//=========================================
		//$validator = new Zend_Validate_Date('DD/MM/YYYY');
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
		->addValidator(new Zend_Validate_Date('DD/MM/YYYY'),true);
		if(!$validator->isValid($arrParam['ngayhen'])){
			$message = $validator->getMessages();
			$this->_messagesError['ngayhen'] = current($message);
		}
		
		//=========================================
		//KIEM TRA khoahoc_id
		//=========================================
		if($arrParam['khoahoc_id'] <= 0){
			$this->_messagesError['khoahoc_id'] = 'Giá trị này không được để trống';
		}
		
		//=========================================
		//KIEM TRA trungtam_id
		//=========================================
		if($arrParam['trungtam_id'] <= 0){
			$this->_messagesError['trungtam_id'] = 'Giá trị này không được để trống';
		}
		
		//=========================================
		//KIEM TRA ngayhoc
		//=========================================
		if($arrParam['ngayhoc'] != ''){
			$validator = new Zend_Validate();
			$validator->addValidator(new Zend_Validate_Date('DD/MM/YYYY'),true);
			if(!$validator->isValid($arrParam['ngayhoc'])){
				$message = $validator->getMessages();
				$this->_messagesError['ngayhoc'] = current($message);
			}
		}
		
		//=========================================
		//KIEM TRA lichhocthichhop
		//=========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_StringLength(0,1000),true);
		
		if(!$validator->isValid($arrParam['lichhocthichhop'])){
			$message = $validator->getMessages();
			$this->_messagesError['lichhocthichhop'] = current($message);
		}
		
		//=========================================
		//KIEM TRA yeucaukhac
		//=========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_StringLength(0,1000),true);
		
		if(!$validator->isValid($arrParam['yeucaukhac'])){
			$message = $validator->getMessages();
			$this->_messagesError['yeucaukhac'] = current($message);
		}
		
		//=========================================
		//KIEM TRA Captcha
		//=========================================
		$captchaID = $arrParam['captchaID'];
		$valueCaptcha = $arrParam['captcha'];
		$vadilator = new Zendvn_Validate_Captcha($captchaID);
		if(!$vadilator->isValid($valueCaptcha)){
			$message = $vadilator->getMessages();
			$this->_messagesError['captcha'] = current($message);
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
		return $this->_arrData;
	}
}


