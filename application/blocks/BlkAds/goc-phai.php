<script language="javascript" type="text/javascript">
   
    function toggle_bb() {
        if ($(".bb_open").css('display') == 'none') {
            $(".bb_open").show();
            $(".bb_close").hide();
            $(".bottombar").toggle();
        } else if ($(".bb_close").css('display') == 'none') {
            $(".bb_open").hide();
            $(".bb_close").show();
            $(".bottombar").toggle();
        }

    }
</script>
<?php
	foreach ($row as $key => $val){
		$link = $val['url'];
		$target = $val['target'];
		$picture = $val['picture'];
		$name = $val['name'];
		$width = '';
		if($val['width'] != '')
			$width = 'width="' . $val['width'] . '"';
		$height = '';
		if($val['height'] != '')
			$height = 'height="' . $val['height'] . '"';
		$start = '';
		if($key == 0){
			$start = 'start';
		}
?>
<div id="bottombar">
    <div style="display: none" class="bb_open clearfix" style="">
    	<marquee style="width:275px;" behavior="alternate">
        	<a style="color:#fff;text-decoration:none;font-weight:bold;display:inline;margin-top:4px;float:left" href="<?php echo $link;?>"><?php echo $name;?></a>
        </marquee>
        <a onclick="toggle_bb();" href="javascript://">
            <img border="0" alt="" style="float:right" src="<?php echo $view->imgUrl . '/open_popup.gif';?>">
        </a>
    </div>
    <div class="bb_close clearfix" style="">
        <a onclick="toggle_bb();" href="javascript://">x</a>
    </div>
    <div id="adsGocPhai" class="bottombar adsGocPhai" style="background: #fff;border-left: 1px solid #CCCCCC;border-top: 1px solid #CCCCCC;  border-radius: 5px 0px 0px;"> 
        
    </div>
    <script type="text/javascript">
		$(document).ready(function(){ 
			$('#adsGocPhai').load('<?php echo $view->baseUrl('default/contact/gocphai');?>');
		});
	</script>
    
</div>
<?php
	} 
?>