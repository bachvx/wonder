<?php
class Block_BlkBreadcrumbs extends Zend_View_Helper_Abstract{

	public function blkBreadcrumbs($manu_id){
		$view  = $this->view;
		$arrParam = $view->arrParam;
        //var_dump($arrParam);die;
		//$language = new Zend_Session_Namespace('language');
		$flagShow = true;
		if($flagShow == true){
            $language = new Zend_Session_Namespace('language');
			$db = Zend_Registry::get('connectDb');
			//$db = Zend_Db::factory($adapter, $config);
			//$linkBreadcrumbs = '<li><a href="'.$view->baseUrl('').'" title="'.$view->language['trangChu'].'">'.$view->language['trangChu'].'</a></li><li class="brc_arrow"></li>';
			if($arrParam['module'] == 'article'){
				if(!empty($arrParam['cid'])){
					$select = $db->select()
					->from('article_category AS ac',array('id','name','alias','parents'))
					->where('ac.id = ?', $arrParam['cid'], INTERGER);
					$row = $db->fetchRow($select);
					if($row['parents'] > 0){
						$select2 = $db->select()
						->from('article_category AS ac',array('id','name','alias','parents'))
						->where('ac.id = ?', $row['parents'], INTERGER);
						$row2 = $db->fetchRow($select2);
						$urlOptions2 = array('module'=>'article','controller'=>'index','action'=>'category',
								'cid'=>$row2['id'],
								'alias'=>$row2['alias'],
						);
						$link2 = $view->url($urlOptions2,'article-category');
						$linkBreadcrumbs .= '<li><a href="'.$link2.'" title="'.$row2['name'].'">'.$row2['name'].'</a></li><li class="brc_arrow"></li>';
					}
					$urlOptions = array('module'=>'article','controller'=>'index','action'=>'category',
							'cid'=>$row['id'],
							'alias'=>$row['alias'],
					);
					$link = $view->url($urlOptions,'article-category');
					$linkBreadcrumbs .= '<li><a href="'.$link.'" title="'.$row['name'].'">'.$row['name'].'</a></li>';
				}
				if(!empty($arrParam['id'])){
					$select = $db->select()
					->from('articles AS a',array('id','name'))
					->where('a.id = ?', $arrParam['id'], INTERGER);
					$row = $db->fetchRow($select);
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$row['name'].'</li>';
				}
				
				if($arrParam['controller'] == 'public' && $arrParam['action'] == 'tags'){
					$linkBreadcrumbs .= '<li>'.$arrParam['key'].'</li>';
				}
			}
			
			if($arrParam['module'] == 'product'){
				//$linkBreadcrumbs .= '<li><a href="'.$view->baseUrl('diadiem.html').'" title="'.$view->language['productSanPham'].'">'.$view->language['productSanPham'].'</a></li>';
				
                if(empty($arrParam['cid'])){
				    
				    $select = $db->select();
                    if($language->lang=='vi'){
                       $select ->from('diadiem AS p',array('cat_id','manu_id','name'));
                    }else{
                       $select ->from('diadiem_en AS p',array('cat_id','manu_id','name'));
                    }
					
                    $select->join('diadiem_manu AS pc', 'pc.id = p.manu_id',array('pc.name AS name_thuonghieu','pc.alias'))
					->where('p.id = ?', $arrParam['id'], INTERGER);
                    //echo $select;die;
                    $row = $db->fetchRow($select);
                    	$urlOptions = array('module'=>'product',
                            'controller'=>'index',
                            'action'=>'pagethuonghieu',
							'name'=>$row['alias'],
							'manu-id'=>$row['manu_id'],
					);
					$link = $view->url($urlOptions,'dichvu-page');
                    $linkBreadcrumbs .='<li><a href="'.$link.'">'.$row['name_thuonghieu'].'</a> ></li>';
                    
					//$select = $db->select()
//					->from('diadiem_category AS pc',array('id','name','alias','parents'))
//					->where('pc.id = ?', $row['manu_id'], INTERGER);
//                   // echo $select;die;
//					$row1 = $db->fetchRow($select);
//                   var_dump($row1);die;
//					if($row['parents'] > 0){
//						$select2 = $db->select()
//						->from('diadiem_category AS pc',array('id','name','alias','parents'))
//						->where('pc.id = ?', $row['parents'], INTERGER);
//						$row2 = $db->fetchRow($select2);
//						$urlOptions2 = array('module'=>'diadiem','controller'=>'index','action'=>'category',
//								'cid'=>$row2['id'],
//								'alias'=>$row2['alias'],
//						);
//						$link2 = $view->url($urlOptions2,'diadiem-category');
//						$linkBreadcrumbs .= '<li class="brc_arrow"></li><li><a href="'.$link2.'" title="'.$row2['name'].'">'.$row2['name'].'</a></li>';
//					}
//					$urlOptions = array('module'=>'product',
//                            'controller'=>'index',
//                            'action'=>'categorypage',
//							'title'=>$row1['alias'],
//							'cid'=>$row['manu_id'],
//					);
//					$link = $view->url($urlOptions,'product-page');
//					$linkBreadcrumbs .= '<li><a href="'.$link.'">'.$row1['name'].'</a> > </li>';
//                    //var_dump($linkBreadcrumbs);die("d?");
				}
                
				if(!empty($arrParam['id'])){
				   // var_dump(!empty($arrParam['id']));die;
				//	$select = $db->select()
//					->from('diadiem AS p',array('id','name'))
//					->where('p.id = ?', $arrParam['id'], INTERGER);
//					$row = $db->fetchRow($select);
					$linkBreadcrumbs .='<li><a href="">'.$row['name'].'</a></li>';
				}
				
				if($arrParam['action'] == 'view-cart'){
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$view->language['productGioHang'].'</li>';
				}
				
				if($arrParam['action'] == 'search'){
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$view->language['ketQuaTimKiem'].'</li>';
				}
				
				if($arrParam['controller'] == 'block' && $arrParam['action'] == 'khuyen-mai'){
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$view->language['diadiemKhuyenMai'].'</li>';
				}
				
				if($arrParam['controller'] == 'block' && $arrParam['action'] == 'moi'){
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$view->language['diadiemMoi'].'</li>';
				}
				
				if($arrParam['controller'] == 'block' && $arrParam['action'] == 'hot'){
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$view->language['diadiemHot'].'</li>';
				}
				
				if($arrParam['controller'] == 'block' && $arrParam['action'] == 'ban-chay'){
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$view->language['diadiemDongkhach'].'</li>';
				}
				
				if($arrParam['controller'] == 'block' && $arrParam['action'] == 'noi-bat'){
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$view->language['diadiemNoiBat'].'</li>';
				}
				
				if($arrParam['controller'] == 'public' && $arrParam['action'] == 'guide'){
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$view->language['diadiemHuongDanDatCho'].'</li>';
				}
                
			}
			
			if($arrParam['module'] == 'faqs'){
				$linkBreadcrumbs .= '<li><a href="'.$view->baseUrl('faqs.html').'" title="'.$view->language['faqsHoiDap'].'">'.$view->language['faqsHoiDap'].'</a></li>';
				if(!empty($arrParam['cid'])){
					$select = $db->select()
					->from('faqs_category AS fc',array('id','name','alias','parents'))
					->where('fc.id = ?', $arrParam['cid'], INTERGER);
					$row = $db->fetchRow($select);
					if($row['parents'] > 0){
						$select2 = $db->select()
						->from('faqs_category AS fc',array('id','name','alias','parents'))
						->where('fc.id = ?', $row['parents'], INTERGER);
						$row2 = $db->fetchRow($select2);
						$urlOptions2 = array('module'=>'faqs','controller'=>'index','action'=>'category',
								'cid'=>$row2['id'],
								'alias'=>$row2['alias'],
						);
						$link2 = $view->url($urlOptions2,'faqs-category');
						$linkBreadcrumbs .= '<li class="brc_arrow"></li><li><a href="'.$link2.'" title="'.$row2['name'].'">'.$row2['name'].'</a></li>';
					}
					$urlOptions = array('module'=>'faqs','controller'=>'index','action'=>'category',
							'cid'=>$row['id'],
							'alias'=>$row['alias'],
					);
					$link = $view->url($urlOptions,'faqs-category');
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li><a href="'.$link.'" title="'.$row['name'].'">'.$row['name'].'</a></li>';
				}
				if(!empty($arrParam['id'])){
					$select = $db->select()
					->from('faqs AS f',array('id','title'))
					->where('f.id = ?', $arrParam['id'], INTERGER);
					$row = $db->fetchRow($select);
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$row['title'].'</li>';
				}
			}
			
			if($arrParam['module'] == 'gallery'){
				$linkBreadcrumbs .= '<li><a href="'.$view->baseUrl('gallery.html').'" title="'.$view->language['galleryThuVienAnh'].'">'.$view->language['galleryThuVienAnh'].'</a></li>';
				if(!empty($arrParam['cid'])){
					$select = $db->select()
					->from('gallery_category AS gc',array('id','name','alias','parents'))
					->where('gc.id = ?', $arrParam['cid'], INTERGER);
					$row = $db->fetchRow($select);
					if($row['parents'] > 0){
						$select2 = $db->select()
						->from('gallery_category AS gc',array('id','name','alias','parents'))
						->where('gc.id = ?', $row['parents'], INTERGER);
						$row2 = $db->fetchRow($select2);
						$urlOptions2 = array('module'=>'gallery','controller'=>'index','action'=>'category',
								'cid'=>$row2['id'],
								'alias'=>$row2['alias'],
						);
						$link2 = $view->url($urlOptions2,'gallery-category');
						$linkBreadcrumbs .= '<li class="brc_arrow"></li><li><a href="'.$link2.'" title="'.$row2['name'].'">'.$row2['name'].'</a></li>';
					}
					$urlOptions = array('module'=>'gallery','controller'=>'index','action'=>'category',
							'cid'=>$row['id'],
							'alias'=>$row['alias'],
					);
					$link = $view->url($urlOptions,'gallery-category');
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li><a href="'.$link.'" title="'.$row['name'].'">'.$row['name'].'</a></li>';
				}
				if(!empty($arrParam['id'])){
					$select = $db->select()
					->from('gallery_album AS ga',array('id','name'))
					->where('ga.id = ?', $arrParam['id'], INTERGER);
					$row = $db->fetchRow($select);
					$linkBreadcrumbs .= '<li class="brc_arrow"></li><li>'.$row['name'].'</li>';
				}
			}
			
			if($arrParam['module'] == 'default'){
				if($arrParam['controller'] == 'contact'){
					$linkBreadcrumbs .= '<li><a href="'.$view->baseUrl('contact.html').'" title="'.$view->language['lienHe'].'">'.$view->language['lienHe'].'</a></li>';
				}
			}
			require_once (BLOCK_PATH . '/BlkBreadcrumbs/default.php');
		}
	}
}