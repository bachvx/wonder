<?php
class Product_Form_ValidateImage{
	
	//Chua nhung thong bao loi cua form
	protected $_messagesError = null;
	
	//MANG CHUA DU LIEU SAU KHI KIEM TRA
	protected $_arrData;
	
	public function __construct($arrParam = array(), $options = null){
		
	
		//=========================================
		//KIEM TRA name
		//=========================================
		if($arrParam['action'] == 'add'){
			$options = array('table'=>'phankhu_image','field'=>'name');
		}else if($arrParam['action'] == 'edit'){
			$clause = ' id !=' . $arrParam['id'];
			$options = array('table'=>'phankhu_image','field'=>'name','exclude'=>$clause);
		}
		
		$validator = new Zend_Validate();
		
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
					->addValidator(new Zend_Validate_Db_NoRecordExists($options),true);
		
		//if(!$validator->isValid($arrParam['name'])){
//			$message = $validator->getMessages();
//			$this->_messagesError['name'] = 'Tiêu đề: ' . current($message);
//		}
	//	if(!$validator->isValid($arrParam['tenquan'])){
//			$message = $validator->getMessages();
//			$this->_messagesError['tenquan'] = 'Tên quán: ' . current($message);
//		}
		
		//=========================================
		//KIEM TRA cat_id
		//=========================================
		if($arrParam['phankhu_id'] == 0){
			$this->_messagesError['phankhu_id'] = 'Bạn cần chọn một Phân khu';
		}
	//	if($arrParam['districts_id'] == 0){
//			$this->_messagesError['districts_id'] = 'Bạn cần chọn Quận/Huyện';
//		}
		
	//	if($arrParam['time_id'] == 0){
//			$this->_messagesError['time_id'] = 'Bạn cần chọn thời gian hoạt động';
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


