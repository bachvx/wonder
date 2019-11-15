<?php
class Default_Model_Article extends Zend_Db_Table{
	
	protected $_name = 'diadiem';
	protected $_primary ='id';
	
  
	 
	 
	public function saveItem($arrParam = null, $options = null){
	 
		if($options['task'] == 'public-add'){
			$db = Zend_Registry::get('connectDb');
			
				
			$row 				= $this->fetchNew();
			if(empty($arrParam['alias'])){
				$filter = new Zendvn_Filter_RewriteUrl();
				$alias 	= $filter->filter($arrParam['name']);
			}else{
				$alias 	= $arrParam['alias'];
			}
			$info 					= new Zendvn_System_Info();
			$created_by 			= $info->getMemberInfo('id');
			$filter = new Zend_Filter_Alnum(true);
			$thumb = new Zendvn_Filter_GetThumb();
			$row->code 				= $arrParam['code'];
			$row->name 				= stripslashes($arrParam['name']);
			$row->alias 			= $alias;
			$row->picture 			= $arrParam['picture'];
			$row->thumb 			= $thumb->filter($arrParam['picture']);
			$row->picture_multi		= stripslashes($arrParam['picture_multi']);
			$row->price 			= $filter->filter($arrParam['price']);
			$row->price_to 			= $filter->filter($arrParam['price_to']);
			$row->units_money		= $arrParam['units_money'];
			$row->selloff			= $arrParam['selloff'];
			$row->diadiem_number	= $filter->filter($arrParam['diadiem_number']);
			$row->money_sources		= $filter->filter($arrParam['money_sources']);
			$row->sources_money		= $arrParam['sources_money'];
			$row->synopsis			= stripslashes($arrParam['synopsis']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->created 			= @date("Y-m-d h:m:s");
			$row->created_by		= $created_by;
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			//$row->tinh_trang 		= $arrParam['tinh_trang'];
			$row->block_noibat 		= $arrParam['block_noibat'];
			$row->block_moi 		= $arrParam['block_moi'];
			$row->block_hot 		= $arrParam['block_hot'];
			$row->block_dongkhach 	= $arrParam['block_dongkhach'];
			$row->cat_id 			= $arrParam['cat_id'];
			$row->time_id 			= $arrParam['time_id'];
			$row->unit_id 			= $arrParam['unit_id'];
			$row->sources_id 		= $arrParam['sources_id'];
			$row->manu_id	 		= $arrParam['manu_id'];
			//$row->vat 				= $arrParam['vat'];
			//$row->baohanh_number 	= $arrParam['baohanh_number'];
			//$row->baohanh_date	 	= $arrParam['baohanh_date'];
			//$row->vanchuyen	 		= $arrParam['vanchuyen'];
			//$row->khuyenmai	 		= $arrParam['khuyenmai'];
			$row->tags	 			= stripslashes($arrParam['tags']);
			$row->meta_title 		= stripslashes($arrParam['meta_title']);
			$row->meta_description 	= stripslashes($arrParam['meta_description']);
			$row->meta_keywords 	= stripslashes($arrParam['meta_keywords']);
			$row->lang_code 		= 'vi';
			// Thuộc tính quán
			$row->tenquan 				= $arrParam['tenquan'];
			$row->address 				= $arrParam['address'];
			$row->open 					= $arrParam['open'];
			$row->close 				= $arrParam['close'];
			$row->map_spn 				= $arrParam['map_spn'];
			$row->map_ll 				= $arrParam['map_ll'];
			$row->mobile 				= $arrParam['mobile'];
			$row->districts_id 			= $arrParam['districts_id'];
			
		
			$row->save();
			
		
		}
		
		if($options['task'] == 'public-edit'){
		
			$where 				= ' id=' . $arrParam['id'];
			$row 				= $this->fetchRow($where);
		
			if(empty($arrParam['alias'])){
				$filter = new Zendvn_Filter_RewriteUrl();
				$alias 	= $filter->filter($arrParam['name']);
			}else{
				$alias 	= $arrParam['alias'];
			}
			$info 					= new Zendvn_System_Info();
			$modified_by 			= $info->getMemberInfo('id');
				
			$filter = new Zend_Filter_Alnum(true);
			$thumb = new Zendvn_Filter_GetThumb();
				
			$row->code 				= $arrParam['code'];
			$row->name 				= stripslashes($arrParam['name']);
			$row->alias 			= $alias;
			$row->picture 			= $arrParam['picture'];
			$row->thumb 			= $thumb->filter($arrParam['picture']);
			$row->picture_multi		= stripslashes($arrParam['picture_multi']);
			$row->price 			= $filter->filter($arrParam['price']);
			$row->price_to 			= $filter->filter($arrParam['price_to']);
			$row->units_money		= $arrParam['units_money'];
			$row->selloff			= $arrParam['selloff'];
			$row->diadiem_number	= $filter->filter($arrParam['diadiem_number']);
			$row->money_sources		= $filter->filter($arrParam['money_sources']);
			$row->sources_money		= $arrParam['sources_money'];
			$row->synopsis			= stripslashes($arrParam['synopsis']);
			$row->content 			= stripslashes($arrParam['content']);
			$row->modified 			= @date("Y-m-d h:m:s");
			$row->modified_by		= $modified_by;
			$row->order 			= $arrParam['order'];
			$row->status 			= $arrParam['status'];
			//$row->tinh_trang 		= $arrParam['tinh_trang'];
			$row->block_noibat 		= $arrParam['block_noibat'];
			$row->block_moi 		= $arrParam['block_moi'];
			$row->block_hot 		= $arrParam['block_hot'];
			$row->block_dongkhach 	= $arrParam['block_dongkhach'];
			$row->cat_id 			= $arrParam['cat_id'];
			$row->time_id 			= $arrParam['time_id'];
			$row->unit_id 			= $arrParam['unit_id'];
			$row->sources_id 		= $arrParam['sources_id'];
			$row->manu_id	 		= $arrParam['manu_id'];
			//$row->vat 				= $arrParam['vat'];
			//$row->baohanh_number 	= $arrParam['baohanh_number'];
			//$row->baohanh_date	 	= $arrParam['baohanh_date'];
			////$row->vanchuyen	 		= $arrParam['vanchuyen'];
			//$row->khuyenmai	 		= $arrParam['khuyenmai'];
			$row->tags	 			= stripslashes($arrParam['tags']);
			$row->meta_title 		= stripslashes($arrParam['meta_title']);
			$row->meta_description 	= stripslashes($arrParam['meta_description']);
			$row->meta_keywords 	= stripslashes($arrParam['meta_keywords']);
			$row->lang_code 		= 'vi';
			// Thuộc tính quán
			// Thuộc tính quán
			$row->tenquan 				= $arrParam['tenquan'];
			$row->address 				= $arrParam['address'];
			$row->open 					= $arrParam['open'];
			$row->close 				= $arrParam['close'];
			$row->map_spn 				= $arrParam['map_spn'];
			$row->map_ll 				= $arrParam['map_ll'];
			$row->mobile 				= $arrParam['mobile'];
			$row->districts_id 			= $arrParam['districts_id'];
		
			$row->save();
		}
		
	  
	}
	
	 
}