
<?php 
if(count($row)>0){
    $catchuoi = new Zendvn_Filter_CutString(150);
    ?>
<div id="sanpham" class="b__hottrend mg50">
  <div class="containers">
    <div class="b__title--top">
      <h3><?php echo $view->language['wonderSanPhamHome']; ?></h3>
    </div>
    <div id="hottrendSlide" class="owl-carousel"> 
            <?php
    foreach ($row as $key => $val){
        $urlOptions = array (
					'module' => 'product',
					'controller' => 'index',
					'action' => 'detail',
					'title' => $val['alias'],
					'id' => $val['id']);
                    $linkDetial = $view->url($urlOptions,'diadiem-detail');
                    $synopsis = $catchuoi->filter($val['synopsis']);
    ?>
      <div class="card">
        <a href="<?php echo $linkDetial; ?>"><img src="<?php echo $val['picture']; ?>" class="card-img-top" alt="..."></a>
        <div class="card-body">
          <div class="card-body__text">
            <h5 class="card-title"><a href="<?php echo $linkDetial; ?>"><span class="text-uppercase"><?php echo $val['name']; ?></a></h5>
            <p class="card-text"><?php echo $synopsis; ?></p>
          </div>
          <a href="<?php echo $linkDetial; ?>" class="btn"><?php echo $view->language['xemThem']; ?> <!--i class="fas fa-long-arrow-alt-right"></i--></a>
        </div>
      </div>
    
    <?php
        }
    }
    ?>    
        </div>
    </div>
</div>




