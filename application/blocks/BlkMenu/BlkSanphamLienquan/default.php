<div class="sanpham">
			<div class="container">
				<div class="title2">
					<h2 class="wow tada animated"><a href="" style="text-transform: uppercase;padding: 10px 15px 22px;">Sản phẩm bán chạy</a></h2>
					<div class="line"></div>
				</div>
				<div class="content wow bounceInUp animated">
                    <div class="regular2 slider">
                <?php
			foreach ($row as $key => $val){
				$name = $val['name'];
				$code = '';
				if($val['code'] != ''){
					$code = '<p class="code">'.$view->language['productMaSanPham'].': ' . $val['code'] . '</p>';
				}
				$picture = '<img class="img" src="' . $val['picture'] . '" alt="'.$val['name'].'"/>';
					
				$synopsis = $val['synopsis'];
				$units_money = $val['units_money'];
				$price = '';
				
				if($val['price'] != 0){
					$price = '<p class="price">'.$view->language['diadiemGia'].': <span class="value">'.Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) . ' ' . $units_money.'</span></p>';
				}else{
					$price = '<p class="price">'.$view->language['diadiemGia'].': <span class="value">'.$view->language['lienHe'].'</span></p>';
				}
				
				$selloff = '';
				if($val['selloff'] > 0){
					$selloff = '<p class="d_cat_name"><span>' . $val['selloff'] . '%</span></p>';
				}
				
				$addCart = '';
				if($moduleConfig['showAddCart'] == 1){
					$linkCart = $view->baseUrl('diadiem/public/add-item/id/' . $val['id']);
					$addCart = '<a href="'.$linkCart.'" title="'.$view->language['diadiemDatCho'].' '.$name.'" class="addCart" rel="nofollow">'.$view->language['diadiemDatCho'].'</a>';
				}
					
				$urlOptions = array (
						'module' => 'diadiem',
						'controller' => 'index',
						'action' => 'detail',
						'tcat' => $val ['category_alias'],
						'title' => $val ['alias'],
						'cid' => $val ['cat_id'],
						'id' => $val ['id'] );
				$linkDetial = $view->url( $urlOptions, 'diadiem-detail' );
			?>
            
					
					    <div class="item">
						    <div class="image">
						    	<a href="<?php echo $linkDetial; ?>"><img src="<?php echo $val['picture']; ?>" alt="<?php echo $val['alias']; ?>"></a>
						    </div>
					    	<div class="info">
					    		<p class="name"><a href="<?php echo $linkDetial; ?>"><?php echo $val['name']; ?></a></p>
					    		<p class="sku"><a href="<?php echo $linkDetial; ?>"><?php echo $val['code']; ?></a></p>
					    		<p class="price"><?php echo Zend_Locale_Format::toNumber($val['price'],array('precision' => 0)) ." " . $val['units_money'] ; ?></p>
					    	</div>
					    </div>
					    
                        <?php } ?>
				    </div>
				    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
				    <script src="http://genex.glxl.vn/public/templates/public/default/js/slick.js" type="text/javascript" charset="utf-8"></script>
				    <script type="text/javascript">
				    $(document).on('ready', function() {
				      	$('.regular2').slick({
						  dots: true,
						  infinite: false,
						  speed: 300,
						  slidesToShow: 5,
						  slidesToScroll: 5,
						  responsive: [
						    {
						      breakpoint: 1024,
						      settings: {
						        slidesToShow: 4,
						        slidesToScroll: 4,
						        infinite: true,
						        dots: true
						      }
						    },
						    {
						      breakpoint: 600,
						      settings: {
						        slidesToShow: 2,
						        slidesToScroll: 2
						      }
						    },
						    {
						      breakpoint: 480,
						      settings: {
						        slidesToShow: 1,
						        slidesToScroll: 1
						      }
						    }
						  ]
						});
				    });
				  </script>
				</div>
			</div>
		</div>
