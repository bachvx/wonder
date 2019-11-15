<?php
class Default_Form_ValidateLink{
	
	//Chua nhung thong bao loi cua form
	protected $_messagesError = null;
	
	//MANG CHUA DU LIEU SAU KHI KIEM TRA
	protected $_arrData;
	
	public function __construct($arrParam = array(), $options = null){
		
		//=========================================
		//KIEM TRA name
		//=========================================
		$validator = new Zend_Validate();
		
		$validator->addValidator(new Zend_Validate_NotEmpty(),true);
		
		//if(!$validator->isValid($arrParam['name'])){
//			$message = $validator->getMessages();
//			$this->_messagesError['name'] = 'Tiêu đề: ' . current($message);
//			$arrParam['name'] = '';
//		}
		
		//=========================================
        //KIEM TRA picture_image
		//=========================================
		$arrParam['picture_multi_new'] = '';
		if(count($arrParam['picture_multi']) > 0){
			$i = 0;
			foreach ($arrParam['picture_multi'] AS $key => $val){
				if($val != ''){
					$arrParam['picture_multi_new'][$i] = array($val,$arrParam['orderImage'][$key]);
					$i++;
				}
			}
		}
		if($arrParam['picture_multi_new'] != ''){
			$arrParam['picture_multi'] = serialize($arrParam['picture_multi_new']);
		}
        
        $arrParam['picture_multi_new'] = '';
		if(count($arrParam['picture_multi_mobile']) > 0){
			$i = 0;
			foreach ($arrParam['picture_multi_mobile'] AS $key => $val){
				if($val != ''){
					$arrParam['picture_multi_new'][$i] = array($val,$arrParam['orderImage'][$key]);
					$i++;
				}
			}
		}
		if($arrParam['picture_multi_new'] != ''){
			$arrParam['picture_multi_mobile'] = serialize($arrParam['picture_multi_new']);
		}
		//KIEM TRA picture
		//=========================================
	//	$validator = new Zend_Validate();
//		
//		$validator->addValidator(new Zend_Validate_NotEmpty(),true);
//		
//		if(!$validator->isValid($arrParam['url'])){
//			$message = $validator->getMessages();
//			$this->_messagesError['url'] = 'Liên kết: ' . current($message);
//			$arrParam['url'] = '';
//		}
		
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


