<?php
class Block_BlkHeader extends Zend_View_Helper_Abstract{

	public function blkHeader($row,$template = 'default',$template_id){
        $view  = $this->view;
		$arrParam = $view->arrParam;
        //if($row==1){
           // $db = Zend_Registry::get('connectDb');
           // $select = $db->select()
			//->from('dulich AS p',array('*'));
            
           // ->where('p.manu_id = ?', $row,INTERGER);
            
            //echo $select;die;
           // $row = $db->fetchRow($select);
            
           // $select = $db->select()
			//->from('diadiem_manu AS p',array('*'))
           // ->order('order ASC')
           // ->where('p.status = ?', 1,INTERGER);
            //echo $select;die;
           // $page = $db->fetchAll($select);
            //var_dump($page);die;
        //}
     //  $language = new Zend_Session_Namespace('language');
		//$select->where("a.lang_code = '" . $language->lang . "'");
        
		$flagShow = true;
		include(BLOCK_PATH . '/BlkHeader/'.$template.'.php');
		//if($language->lang == 'vi'){
			
		//}else{
        //    include(BLOCK_PATH . '/BlkHeaderEn/'.$template.'.php');
		//}
	}
}