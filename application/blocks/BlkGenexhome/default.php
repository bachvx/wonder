            <div class="container">
				<div class="title">
					<h1 class="wow tada animated"><a href="genex.html">Genex</a></h1>
					<div class="line"></div>
				</div>
				<div class="content">
					
					
					
			
                <?php
               // echo $view->language['hoTro'];
             // $ns = new Zend_Session_Namespace();
              // var_dump($_SESSION['language']['lang']);
    			foreach ($row as $key => $val){
    			     if($val['id']==1){
    			         $name = $val['name'];
                       ?>
                       <div class="left blue wow bounceInDown animated">
						<div class="about">
							<h3><a href="genex"><?php echo $view->language['veGenex']; ?></a></h3>
							<?php
                            if($_SESSION['language']['lang']=='vi')
                                echo $val['mota'];
                            else
                                echo $val['mota_en'];
                             ?>
							<div class="readmore">
								<a href="" data-toggle="modal" data-target="#vegenex"><?php echo $view->language['xemthem']; ?> <i class="fa fa-angle-right" aria-hidden="true"></i></a>
							</div>
						</div>
					   </div>
                       <div class="right wow bounceInRight animated">
						<div class="image">
							<a href=""><img src="<?php echo $val['picture']; ?>" alt="about-1"></a>
						</div>
						<!-- Modal -->
						<div class="modal fade" id="vegenex" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel"><?php echo $view->language['veGenex']; ?></h4>
						      </div>
						      <div class="modal-body">
						        <?php 
                                    if($_SESSION['language']['lang']=='vi')
                                        echo htmlspecialchars_decode($val['content']) ;
                                     else
                                        echo htmlspecialchars_decode($val['content_en']) ;
                                ?>
						      </div>
						    </div>
						  </div>
						</div>
					</div>
					<div class="clearfix"></div>
                       <?php  
    			     }else{
                      ?>
                      
                        <div class="right2 blue wow bounceInUp animated">
						<div class="about">
							<h3><a href="/ban-tin-genex"><?php echo $view->language['tinGenex']; ?></a></h3>
							<?php
                            if($_SESSION['language']['lang']=='vi')
                                echo $val['mota'];
                            else
                                echo $val['mota_en'];
                             ?>
							<div class="readmore">
								<a href="" data-toggle="modal" data-target="#bantingenex"><?php echo $view->language['xemthem']; ?> <i class="fa fa-angle-right" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<div class="left2 wow bounceInLeft animated">
						<div class="image">
							<a href=""><img src="<?php echo $val['picture'] ?>" alt="about-2"></a>
						</div>
						<!-- Modal -->
						<div class="modal fade" id="bantingenex" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel"><?php echo $view->language['tinGenex']; ?></h4>
						      </div>
						      <div class="modal-body">
						        <?php 
                                if($_SESSION['language']['lang']=='vi')
                                        echo htmlspecialchars_decode($val['content']) ;
                                     else
                                        echo htmlspecialchars_decode($val['content_en']) ;
                                 ?>
						      </div>
						    </div>
						  </div>
						</div>
					</div>
     <?php }
                   
            }
             ?>
				
				</div>
            </div>	