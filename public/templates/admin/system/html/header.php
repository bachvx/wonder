<?php echo $this->doctype() ?>
<?php
	$info 					= new Zendvn_System_Info();
	$admin_info 			= $info->getMemberInfo();
?>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <?php echo $this->headTitle() ?>
        <?php echo $this->headMeta() ?>
        <?php echo $this->headLink() ?>
		<?php echo $this->headScript() ?>
		<link rel="shortcut icon" href="/favicon.ico" />
    </head>
    <body class="body">
        <div class="block_top goct10">
            <span class="version">Version 1.0</span>
            <span class="title">Phần mềm quản trị Website </span>
             <div class="block_status">
                <span class="preview">
                    <a target="_blank" href="<?php echo $this->baseUrl('');?>">Xem trang chủ</a>
                </span>
                <span class="loggedin-users"><?php echo $admin_info['user_name'];?></span>
                <span class="logout">
                    <a href="<?php echo $this->baseUrl('/default/public/logout');?>">Thoát</a>
                </span>
            </div>
        </div>
        <div class="block_mainMenu">
            
            <div class="block_menu">
            	<div class="topmenu">
                    <div id="ddtopmenubar" class="mattblackmenu">
                        <ul>
                        <li><a href="<?php echo $this->baseUrl('/default/admin/index/');?>" rel="ddsubmenu10">Hệ thống</a></li>
                        <li><a href="#" rel="ddsubmenu225">Setup Home</a></li>
                        
                        <li><a href="<?php echo $this->baseUrl('/default/admin-page');?>">Phân Khu</a></li>
                        
                        <li><a href="<?php echo $this->baseUrl('/dichvu/admin-item/index');?>">Du lịch</a></li>
                        <li><a href="<?php echo $this->baseUrl('/product/admin-item/index');?>" rel="ddsubmenu40">Sản phẩm</a></li>
                        <li><a href="<?php echo $this->baseUrl('/article/admin-item/index/');?>" rel="ddsubmenu30">Mở bán & Thông tin báo chí</a></li>
                        <li><a href="#" rel="ddsubmenu2445">Thư viện</a></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-user/index/');?>" rel="ddsubmenu20">Thành viên</a></li>
                        <li><a href="skype:xuanmai47?chat" rel="ddsubmenu80" target="_blank">Trợ giúp</a></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-system/cache');?>" rel="ddsubmenu90">Xóa cache</a></li>
                        
                        </ul>
                    </div>
                    <div class="clr"></div>
        
					<script type="text/javascript">
                    ddlevelsmenu.setup("ddtopmenubar", "topbar"); //ddlevelsmenu.setup("mainmenuid", "topbar|sidebar")
                    </script>
        			
                    <!--Top Drop Down Menu 10 HTML-->
                    <ul id="ddsubmenu10" class="ddsubmenustyle">
                    	<li><a href="<?php echo $this->baseUrl('/default/admin/index');?>" class="icon-16-cpanel">Bảng điều khiển</a></li>
                        <li class="separator"></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-info/edit');?>" class="icon-16-profile">Thông tin tài khoản</a></li>
                        <li class="separator"></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-config/index');?>" class="icon-16-config">Cấu hình hệ thống</a></li>
                        <li class="separator"></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-system/index');?>" class="icon-16-info">Thông tin hệ thống</a></li>
                        <li class="separator"></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-media/index');?>" class="icon-16-media">Media Manager</a></li>
                        <li class="separator"></li>
                        <li><a href="javascript:void(0);" onclick="nv_admin_logout();" class="icon-16-logout">Thoát</a></li>
                    </ul>
                     <!--Top Drop Down Menu 225 HTML-->
                    <ul id="ddsubmenu225" class="ddsubmenustyle">
                        <li><a href="<?php echo $this->baseUrl('/default/admin-link/edit/id/21');?>" class="icon-16-menu">Slide trang chủ <span><img src="<?php echo $this->imgUrl . '/menu/icon-16-default.png';?>"></span></a></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-chu-dau-tu/edit/id/5');?>" class="icon-16-menu">Chủ đầu tư</a></li>
						<li><a href="<?php echo $this->baseUrl('/default/admin-genex-home/edit/id/1');?>" class="icon-16-menu">Mặt bằng</a></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-tong-quan/edit/id/2');?>" class="icon-16-menu">Tổng quan</a></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-lien-he/edit/id/3');?>" class="icon-16-menu">Liên hệ</a></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-footer/edit/id/4');?>" class="icon-16-menu">Footer</a></li>
                    </ul>
                    
                    
                     <!--Top Drop Down Menu 32 HTML-->
                    <ul id="ddsubmenu32" class="ddsubmenustyle">
                        <li><a href="<?php echo $this->baseUrl('/dichvu/admin-item/index');?>" class="icon-16-article">Giới thiệu&Slide</a></li>
                    	<li><a href="<?php echo $this->baseUrl('/default/admin-genex/index');?>" class="icon-16-category">Về Genex-Page</a></li>
                        
	                    <li class="separator"></li>
	                    
	                    <li><a href="<?php echo $this->baseUrl('/dichvu/admin-comment/index');?>" class="icon-16-comment">Quản lý bình luận</a></li>
	                    <li class="separator"></li>
	                    <li><a href="<?php echo $this->baseUrl('/dichvu/admin-config/index');?>" class="icon-16-config">Cấu hình module</a></li>
	                    <!-- 
	                    <li class="separator"></li>
	                    <li><a href="#" class="icon-16-trash">Sọt rác</a></li>
	                     -->
	                     
                    </ul>
                    <!--Top Drop Down Menu 30 HTML-->
                    <ul id="ddsubmenu30" class="ddsubmenustyle">
                    	<li><a href="<?php echo $this->baseUrl('/article/admin-category/index');?>" class="icon-16-category">Danh mục</a></li>
	                    <li><a href="<?php echo $this->baseUrl('/article/admin-item/index');?>" class="icon-16-article">Quản lý tin</a></li>
	                    <li class="separator"></li>
	                    <li><a href="<?php echo $this->baseUrl('/article/admin-config/index');?>" class="icon-16-config">Cấu hình module</a></li>
	                    <!-- 
	                    <li class="separator"></li>
	                    <li><a href="#" class="icon-16-trash">Sọt rác</a></li>
	                     -->
	                     
                    </ul>
                    <ul id="ddsubmenu2445" class="ddsubmenustyle">
                        <li><a href="<?php echo $this->baseUrl('/gallery/admin-album/index');?>" class="icon-16-media">Hình ảnh</a></li>
                        <li class="separator"></li>
                        <li><a href="<?php echo $this->baseUrl('/default/admin-video/index');?>" class="icon-16-component">Video</a></li>
                        
                    </ul>
                    
                    <!--Top Drop Down Menu 20 HTML-->
                    <ul id="ddsubmenu20" class="ddsubmenustyle">
                       <!-- <li><a href="<?php echo $this->baseUrl('/default/admin-group/index');?>" class="icon-16-groups">Nhóm thành viên</a></li>-->
                        <li><a href="<?php echo $this->baseUrl('/default/admin-user/index');?>" class="icon-16-user">Thành viên quản trị</a></li>
                         <!--<li><a href="<?php echo $this->baseUrl('/default/admin-permission/index');?>" class="icon-16-levels">Quyền thành viên</a></li>-->
                        <!-- <li><a href="<?php echo $this->baseUrl('/default/admin-block/edit/id/5');?>" class="icon-16-article">Thỏa thuận sử dụng</a></li>-->
                    </ul>
                    
                    <!--Top Drop Down Menu 40 HTML-->
                    <ul id="ddsubmenu40" class="ddsubmenustyle">
                        <li><a href="<?php echo $this->baseUrl('/product/admin-category/index');?>" class="icon-16-category">Danh mục sản phẩm</a></li>
                        <li><a href="<?php echo $this->baseUrl('/product/admin-item/index');?>" class="icon-16-article">Sản phẩm</a></li>
                        <li class="separator"></li>

                        <li><a href="<?php echo $this->baseUrl('/diadiem/admin-config/index');?>" class="icon-16-config">Cấu hình module</a>
                        	<ul>
                        		<li><a href="<?php echo $this->baseUrl('/diadiem/admin-config/index');?>" class="icon-16-config">Cấu hình chung</a></li>
                        		<li><a href="<?php echo $this->baseUrl('/diadiem/admin-units/index');?>" class="icon-16-component">Đơn vị tính</a></li>
		                        <li><a href="<?php echo $this->baseUrl('/default/admin-money/index');?>" class="icon-16-money">Đơn vị tiền tệ</a></li>
		                        <!-- <li><a href="#" class="icon-16-thanhtoan">Phương thức thanh toán</a></li> -->
		                        <li><a href="<?php echo $this->baseUrl('/default/admin-block/edit/id/4');?>" class="icon-16-note">Hướng dẫn thanh toán</a></li>
                        	</ul>
                        </li>
                        <!-- 
                        <li class="separator"></li>
	                    <li><a href="#" class="icon-16-trash">Sọt rác</a></li>
	                    -->
                    </ul>
                    <!--Top Drop Down Menu 70 HTML-->
                    <ul id="ddsubmenu70" class="ddsubmenustyle">
	                    <li><a href="#" >Hộp thử đến</a></li>
	                    <li><a href="#" >Hộp thử đi</a></li>
	                    <li><a href="#" >Gửi mail mới</a></li>
	                    <li><a href="#" >Gửi mail hàng loạt</a></li>
	                    <li class="separator"></li>
	                    <li><a href="#" class="icon-16-category">Kiểm tra hệ thống</a></li>
	                    <li class="separator"></li>
	                    <li><a href="#" class="icon-16-comment">Xóa bộ nhớ đệm</a></li>
                    </ul>
                </div>
            </div>
            <div class="clr"></div>
        </div>