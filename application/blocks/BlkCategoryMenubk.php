<?php
class Block_BlkCategoryMenu extends Zend_View_Helper_Abstract{

	public function blkCategoryMenu (){
		
		$view  = $this->view;
		$arrParam = $view->arrParam;
		echo '<pre>';
		print_r($arrParam);
		echo '</pre>';
		$db = Zend_Registry::get('connectDb');
		
		$select = $db->select()
					 ->from('diadiem_category',array('id','name','parents'))
					 ->where('status = 1')
					 ->order('order ASC');
				 
		$result = $db->fetchAll($select);
		$strMenu = $this->createMenu($result,0,$view);
		
		
		//http://localhost/zfo-multi/diadiem/index/category/id/4/name/
		
		require_once (BLOCK_PATH . '/BlkCategoryMenu/default.php');
	}
	
	public function createMenu($sourceArr,$parents =0, $viewObj ){
		$this->recursiveMenu($sourceArr,$parents = 0,&$newMenu,$viewObj);
		return str_replace('<ul></ul>','',$newMenu);
	}
	
	public function recursiveMenu($sourceArr,$parents = 0,&$newMenu, $viewObj){
		$filter = new Zend_Filter();
		$multiFilter = $filter->addFilter(new Zendvn_Filter_RemoveCircumflex())
							  ->addFilter(new Zend_Filter_StringToLower(array('encoding'=>'UTF-8')))
							  ->addFilter(new Zend_Filter_Alnum(true))
							  ->addFilter(new Zend_Filter_PregReplace(array('match'=>'#\s+#','replace'=>'-')))
							  ->addFilter(new Zend_Filter_Word_SeparatorToDash());
		if(count($sourceArr)>0){
			
			$newMenu .= '<ul >';
			foreach ($sourceArr as $key => $value){
				if($value['parents'] == $parents){
					if($value['parents'] == 0){
						
						$newMenu .= '<li><a >' . $value['name'] . '</a>';
					}else{
						$link = $viewObj->baseUrl('/diadiem/index/category/cid/' 
												 . $value['id'] . '/name/' 
												 . $multiFilter->filter($value['name']));
						$newMenu .= '<li><a href="' . $link . '">' . $value['name'] . '</a>';												 
					}					
					
					$newParents = $value['id'];
					unset($sourceArr[$key]);
					$this->recursiveMenu($sourceArr,$newParents, $newMenu, $viewObj);
					$newMenu .= '</li>';
				}
			}
			$newMenu .= '</ul>';
		}
	}
}