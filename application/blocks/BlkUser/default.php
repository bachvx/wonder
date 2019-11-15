<?php
	$info 		= new Zendvn_System_Info();
	$user_info 	= $info->getMemberInfo();
  // var_dump($info->getMemberInfo());die;
?>
<div class="block_user">
	<?php
		if($user_info['phanloai'] == 1 && $user_info['group_id'] == 0){
	?>
	
    <?php echo $view->language['taiKhoan'];?>:<a href="<?php echo $view->baseUrl('member.html');?>" rel="nofollow"><?php echo $user_info['member_hoten'];?></a><span></span>
	<a href="<?php echo $view->baseUrl('logout.html');?>" rel="nofollow"><?php echo $view->language['thoat'];?></a>
	<?php
		}else{ 
	?>
		<a href="<?php echo $view->baseUrl('register.html');?>" rel="nofollow"><?php echo $view->language['dangKy'];?></a><span>/</span>
		<a href="<?php echo $view->baseUrl('login.html');?>" rel="nofollow"><?php echo $view->language['dangNhap'];?></a>
	<?php
		} 
	?>
</div>