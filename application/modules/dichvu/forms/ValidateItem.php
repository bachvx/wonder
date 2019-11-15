<?php
class Dichvu_Form_ValidateItem{
	
	//Chua nhung thong bao loi cua form
	protected $_messagesError = null;
	
	//MANG CHUA DU LIEU SAU KHI KIEM TRA
	protected $_arrData;
	
	public function __construct($arrParam = array(), $options = null){
		
		//=========================================
		//KIEM TRA code
		//=========================================
		if(!empty($arrParam['code'])){
			if($arrParam['action'] == 'add'){
				$options = array('table'=>'dulich','field'=>'code');
			}else if($arrParam['action'] == 'edit'){
				$clause = ' id !=' . $arrParam['id'];
				$options = array('table'=>'dulich','field'=>'code','exclude'=>$clause);
			}
			
			$validator = new Zend_Validate();
			
			$validator->addValidator(new Zend_Validate_Db_NoRecordExists($options),true);
			
			if(!$validator->isValid($arrParam['code'])){
				$message = $validator->getMessages();
				$this->_messagesError['code'] = 'Mã Địa điểm: ' . current($message);
			}
		}
		
		//=========================================
		//KIEM TRA name
		//=========================================
		if($arrParam['action'] == 'add'){
			$options = array('table'=>'dulich','field'=>'name');
		}else if($arrParam['action'] == 'edit'){
			$clause = ' id !=' . $arrParam['id'];
			$options = array('table'=>'dulich','field'=>'name','exclude'=>$clause);
		}
		
		$validator = new Zend_Validate();
		
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
					->addValidator(new Zend_Validate_Db_NoRecordExists($options),true);
		
		if(!$validator->isValid($arrParam['name'])){
			$message = $validator->getMessages();
			$this->_messagesError['name'] = 'Tiêu đề: ' . current($message);
		}
		
		
	
		
		
		//=========================================
		//KIEM TRA mô tả ngắn
		//=========================================
		
		//if(strlen($arrParam['synopsis'])>140){
		//	$this->_messagesError['synopsis'] = 'Mô tả ngắn không được quá 140 ký tự';
		//}
		
		//=========================================
		//KIEM TRA picture
		//=========================================
		if(substr_count($arrParam['picture'],'http://') == true){
			$this->_messagesError['picture'] = 'Hình ảnh mình họa: Bắt buộc phải tải lên server';
		}
		
	
		//=========================================
		//KIEM TRA picture_image
		//=========================================
		$sophantu=count($arrParam['picture_multi']);
        
        for ($i = 0; $i < $sophantu - 1; $i++)
        {
            // Tìm vị trí phần tử nhỏ nhất
            $min = $i;
            for ($j = $i + 1; $j < $sophantu; $j++){
                if ($arrParam['orderImage'][$j] < $arrParam['orderImage'][$min]){
                    $min = $j;
                }
            }
      
            // Sau khi có vị trí nhỏ nhất thì hoán vị
            // với vị trí thứ $i
            $temp = $arrParam['picture_multi'][$i];
            $arrParam['picture_multi'][$i] = $arrParam['picture_multi'][$min];
            $arrParam['picture_multi'][$min] = $temp;
            
            $temp1 = $arrParam['orderImage'][$i];
            $arrParam['orderImage'][$i] = $arrParam['orderImage'][$min];
            $arrParam['orderImage'][$min] = $temp1;
        }
        //die;
		
		$arrParam['picture_multi_new'] = '';
        
		if(count($arrParam['picture_multi']) > 0){
			$i = 0;
			foreach ($arrParam['picture_multi'] AS $key => $val){
				if($val != ''){
					$arrParam['picture_multi_new'][$i] = array($val,$arrParam['orderImage'][$key]);
					$i++;
				}
                //print_r($val); echo"<br>";
			}
		}
        //var_dump($arrParam['picture_multi_new']);die;
        if($arrParam['picture_multi_new'] != ''){
			$arrParam['picture_multi'] = serialize($arrParam['picture_multi_new']);
		}
       // var_dump($arrParam['picture_multi_new']);die;
		//=========================================
		//KIEM TRA status
		//=========================================
		if(empty($arrParam['status']) || !isset($arrParam['status'])){
			$arrParam['status'] = 0;
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


