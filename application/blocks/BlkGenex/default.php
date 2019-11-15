<?php 
    $language = new Zend_Session_Namespace('language');
    foreach($row as $key => $val){
        if($language->lang=='vi'){
           $name= htmlspecialchars_decode($val['content']); 
           $mota=$val['mota'];
           $tieude=$val['name'];
        }else{
            $name= htmlspecialchars_decode($val['content_en']);
            $mota=$val['mota_en'];
            $tieude=$val['name_en'];
        }
        
        if($key%2==0){ ?>
            <div class="left blue wow bounceInDown animated">
				<div class="about">
					<h3><a href="" data-toggle="modal" data-target="#key<?php echo $key; ?>"><?php echo $tieude; ?></a></h3>
					<p><?php echo $mota; ?></p>
					<div class="readmore">
						<a href="" data-toggle="modal" data-target="#key<?php echo $key; ?>"><?php echo $view->language['xemthem']; ?> <i class="fa fa-angle-right" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<div class="right wow bounceInRight animated">
				<div class="image">
					<a href=""><img src="<?php echo $val['picture']; ?>" alt="muc-tieu-cong-ty"></a>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="key<?php echo $key; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel"><?php echo $tieude; ?></h4>
				      </div>
				      <div class="modal-body">
				        <p><?php echo $name; ?></p>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<div class="clearfix"></div>
        <?php    
        }else{ ?>
            <div class="right2 blue wow bounceInUp animated">
						<div class="about">
							<h3><a href="" data-toggle="modal" data-target="#key<?php echo $key; ?>"><?php echo $tieude; ?></a></h3>
							<p><?php echo $mota; ?></p>
							<div class="readmore">
								<a href="" data-toggle="modal" data-target="#key<?php echo $key; ?>"><?php echo $view->language['xemthem']; ?> <i class="fa fa-angle-right" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<div class="left2 wow bounceInLeft animated">
						<div class="image">
							<a href=""><img src="<?php echo $val['picture']; ?>" alt="gia-tri-cot-loi"></a>
						</div>
						<!-- Modal -->
						<div class="modal fade" id="key<?php echo $key; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel"><?php echo $tieude; ?></h4>
						      </div>
						      <div class="modal-body">
						        <p><?php echo $name; ?></p>
						      </div>
						    </div>
						  </div>
						</div>
					</div>
					<div class="clearfix"></div>
        <?php    
        }
    }
?>