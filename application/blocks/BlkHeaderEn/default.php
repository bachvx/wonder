<?php
	$siteConfig = Zend_Registry::get('siteConfig');
?>
	    <div class="b-header" > 
  <div class="containers">
    <div class="b-header__menu"> 
        <nav class="navbar navbar-expand-lg navbar-light ">
          <a class="navbar-brand" href="<?php echo $view->baseUrl('');?>" title="<?php echo $siteConfig['config_site']['sitename'];?>">
            <img src="<?php echo $siteConfig['config_site']['site_logo'];?>" />
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        
          <div class="collapse navbar-collapse b-header__menu-navbar " id="navbarSupportedContent">
            <ul class="navbar-nav d-flex ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="#">T?ng quan <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" target="_blank" href="#">Phân khu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">S?n ph?m </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">M?t b?ng</a> 
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Tin t?c</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Thu vi?n</a>
              </li>   
              <li class="nav-item">
                <a class="nav-link" href="#">Ch? d?u tu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Liên h?</a>
              </li>  
            </ul> 
          </div>
        </nav> 
    </div>
  </div>
</div><!-- l-header --> 
