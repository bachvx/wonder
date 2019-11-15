<?php
   $language = new Zend_Session_Namespace('language');
   $siteConfig = Zend_Registry::get('siteConfig'); 
   $facebook = $siteConfig['config_company']['facebook'];
   $hotline = $siteConfig['config_company']['hotline'];
   $email = $siteConfig['config_company']['email'];
?>
<div class="b__hotline">
  <div class="containers">
    <div class="b__hotline--content">
      <div class="b__hotline--left">
        <ul>
          <li>Hotline: <p><?php echo $hotline; ?></p></li>
          <li><a href="#">Email: <?php echo $email; ?></a></li>
        </ul>
      </div>
      <div class="b__hotline--right ml-auto">
        <ul>
          <li><a href="#"><img src="public/images/icon_download.png" /></a></li>
          <li><a href="<?php echo $facebook; ?>"><img src="public/images/icon_facebook.png" /></a></li>
          <li><a href="#"><img src="public/images/icon_camera.png" /></a></li>
          <li><a href="#"><img src="public/images/icon_globe.png" /> Ngôn ngữ </a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<?php
    
	
	
    if($language->lang == 'vi'){
       echo htmlspecialchars_decode($row['content']);  
    }else{
        echo htmlspecialchars_decode($row['content_en']);  
    }
    
?>
   