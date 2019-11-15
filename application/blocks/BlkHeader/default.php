<?php
	$siteConfig = Zend_Registry::get('siteConfig');
?>

<div class="b-header active" > 
  <div class="containers">
    <div class="b-header__menu"> 
      <nav class="navbar navbar-expand-lg navbar-light ">  
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button> 
        <a class="navbar-brand" href="<?php echo $view->baseUrl('');?>" title="<?php echo $siteConfig['config_site']['sitename'];?>">
            <img src="<?php echo $siteConfig['config_site']['site_logo'];?>" />
          </a> 
        <div class="collapse navbar-collapse b-header__menu-navbar " id="navbarSupportedContent">
          <ul class="navbar-nav d-flex ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="tong-quan"><?php echo $view->language['wonderTongquan']; ?> <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item nav-item__pc">
              <a class="nav-link" href="#phankhu"><?php echo $view->language['wonderPhankhu']; ?></a>
              <ul>
                <li><a href="tropical-monaco-pk1"><?php echo $view->language['wonderTropical']; ?></a></li>
                <li><a href="little-hanoi-pk4"><?php echo $view->language['wonderHanoi']; ?></a></li>
                <li><a href="little-saigon-pk5"><?php echo $view->language['wonderSaigon']; ?></a></li>
                <li><a href="little-hue-pk2"><?php echo $view->language['wonderHue']; ?></a></li>
                <li><a href="asia-barbados-pk3"><?php echo $view->language['wonderBabaros']; ?></a></li>
              </ul>
            </li>
            <li class="nav-item nav-item__mb">
              <a href="#"><?php echo $view->language['wonderPhankhuMobile']; ?>
                <span class="icon_click"><i class="fas fa-chevron-down"></i></span> 
              </a>
              <ul class="dropdown-menus">
                <li><a href="tropical-monaco-pk1"><?php echo $view->language['wonderTropicalMobile']; ?></a></li>
                <li><a href="little-hanoi-pk4"><?php echo $view->language['wonderHanoiMobile']; ?></a></li>
                <li><a href="little-saigon-pk5"><?php echo $view->language['wonderSaigonMobile']; ?></a></li>
                <li><a href="little-hue-pk2"><?php echo $view->language['wonderHueMobile']; ?></a></li>
                <li><a href="asia-barbados-pk3"><?php echo $view->language['wonderBabarosMobile']; ?></a></li>
              </ul>
            </li>
            <li class="nav-item nav-item__mb ">
              <a href="#"><?php echo $view->language['wonderLoaidulich']; ?>
                <span class="icon_click"><i class="fas fa-chevron-down"></i></span> 
              </a>
              <ul class="dropdown-menus">
                <li><a href="du-lich-nghi-duong-dl412"><?php echo $view->language['wonderNghiduong']; ?></a></li>
                <li><a href="du-lich-am-thuc-dl410"><?php echo $view->language['wonderAmthuc']; ?></a></li>
                <li><a href="du-lich-mua-sam-dl409"><?php echo $view->language['wonderMuasam']; ?></a></li>
                <li><a href="du-lich-vui-choi-giai-tri-dl416"><?php echo $view->language['wonderGiaitri']; ?></a></li>
                <li><a href="du-lich-hoi-nghi-dl393"><?php echo $view->language['wonderHoinghi']; ?></a></li>
                <li><a href="du-lich-kham-pha-dl418"><?php echo $view->language['wonderKhampha']; ?></a></li>
              </ul>
            </li>
            <li class="nav-item nav-item__mb ">
              <a href="#"><?php echo $view->language['wonderSanphamMobile']; ?>
                <span class="icon_click"><i class="fas fa-chevron-down"></i></span> 
              </a>
              <ul class="dropdown-menus">
                <li><a href="hotel-shop-i1"><?php echo $view->language['wonderSanphamHotel']; ?></a></li>
                <li><a href="boutique-hotel-i3"><?php echo $view->language['wonderSanphamBoutique']; ?></a></li>
                <li><a href="apart-hotel-i2"><?php echo $view->language['wonderSanphamApart']; ?></a></li> 
              </ul>
            </li>
            <li class="nav-item nav-item__pc">
              <a class="nav-link" href="#sanpham"><?php echo $view->language['wonderSanpham']; ?> </a>
              <ul>
                <li><a href="hotel-shop-i1"><?php echo $view->language['wonderSanphamHotel']; ?></a></li>
                <li><a href="boutique-hotel-i3"><?php echo $view->language['wonderSanphamBoutique']; ?></a></li>
                <li><a href="apart-hotel-i2"><?php echo $view->language['wonderSanphamApart']; ?></a></li>  
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="mat-bang"><?php echo $view->language['wonderMatbang']; ?></a> 
            </li>
            <li class="nav-item">
              <a class="nav-link" href="tin-tuc"><?php echo $view->language['wonderTintuc']; ?></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="gallery"><?php echo $view->language['wonderThuvien']; ?></a>
            </li>   
            <li class="nav-item">
              <a class="nav-link" href="chu-dau-tu"><?php echo $view->language['wonderChudautu']; ?></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="lien-he"><?php echo $view->language['wonderLienhe']; ?></a>
            </li>  
          </ul> 
        </div>
      </nav> 
    </div>
  </div>
</div><!-- l-header --> 
