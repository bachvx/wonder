<?php
	if(count($row) > 0){ 
		$siteConfig = Zend_Registry::get('siteConfig');
		$companyInfo = $siteConfig['config_company'];
?>
<div class="block_support2">
	<div class="block_content">
		<?php
			foreach ($row as $key => $val){
				$name = $val['name'];
				$yahoo = '';
				if($val['yahoo'] != '')
					$yahoo = '<a title="'.$view->language['hoTro'].'" href="ymsgr:sendim?'.$val['yahoo'].'" rel="nofollow"> <img src="http://opi.yahoo.com/online?u='.$val['yahoo'].'&m=g&t=1"></a>';
				$skype = '';
				if($val['skype'] != '')
					$skype = '<a href="skype:'.$val['skype'].'?chat"><img src="'.PUBLIC_URL.'/images/skype.png" style="width:65px;"></a>';
				$email = $val['email'];
				$phone = '';
				if($val['phone'] != ''){
					$phone = '<p class="phone">' . $val['phone'] . '</p>';
				}
				$tel = '';
				if($val['tel'] != ''){
					$tel = '<p class="tel">' . $val['tel'] . '</p>';
				}
		?>
		<div class="support_items">
			<div class="name"><?php echo $name;?></div>
			<div class="yahoo"><?php echo $yahoo;?></div>
			<div class="number">
				<?php echo $tel;?>
				<?php echo $phone;?>
			</div>
		</div>
		<?php
			} 
		?>
	</div>
	<div class="block_bottom"></div>
</div>
<?php
	} 
?>