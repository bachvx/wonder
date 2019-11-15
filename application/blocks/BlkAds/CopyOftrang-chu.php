<div class=" width_wrapper clearfix">
 <script>
$(function() {
$( "#tabs_quangcao" ).tabs();
});
</script>
 <div id="tabs_quangcao">
<ul>
<li class="t1">
<a href="#tabs-1">
<span style="transform: rotate(-85deg); top: 44px; left: 14px;" class="char1">Ă</span>
<span style="top: 35px; transform: rotate(-74deg); left: 17px;" class="char2">N</span> 
<span style="left: 22px; top: 20px; transform: rotate(-70deg);" class="char4">s</span>
<span style="transform: rotate(-41deg); left: 30px; top: 13px;" class="char5">á</span>
<span style="transform: rotate(-30deg); top: 7px; left: 37px;" class="char6">n</span>
<span style="left: 44px; transform: rotate(-19deg); top: 2px;" class="char7">g</span>
<span style="transform: rotate(-51deg); " class="char8">&nbsp;</span> 
</a>
</li>
<li class="t2">
<a href="#tabs-2">
<span style="transform: rotate(25deg); left: 14px; top: 8px;" class="char1">Ă</span>
<span style="transform: rotate(33deg); left: 26px; top: 14px;" class="char2">N</span> 
<span style="transform: rotate(48deg); top: 22px; left: 36px;" class="char4">t</span>
<span style="transform: rotate(54deg); left: 40px; top: 27px;" class="char5">r</span>
<span style=" transform: rotate(60deg); left: 45px; top: 36px;" class="char6">ư</span>
<span style="top: 46px; left: 48px; transform: rotate(76deg);" class="char7">a</span>
</a>
</li>
 
<li class="t3">
<a href="#tabs-3">
<span style="transform: rotate(68deg); top: 20px; left: 14px;" class="char1">Ă</span>
<span style="transform: rotate(63deg); top: 29px; left: 19px;" class="char2">N</span> 
<span style="top: 40px; left: 29px; transform: rotate(51deg);" class="char4">c</span>
<span style="left: 35px; top: 50px; transform: rotate(55deg);" class="char5">h</span>
<span style="left: 43px; transform: rotate(42deg); top: 59px;" class="char6">i</span>
<span style="top: 62px; left: 51px; transform: rotate(28deg);" class="char7">ề</span>
<span style="left: 60px; top: 67px; transform: rotate(15deg); " class="char7">u</span>
</a>
</li>

<li class="t4">
<a href="#tabs-4">
<span style="left: 54px; top: 13px; transform: rotate(97deg);" class="char1">Ă</span>
<span style="top: 30px; left: 54px; transform: rotate(109deg);" class="char2">N</span> 
<span style="top: 46px; left: 48px; transform: rotate(140deg);" class="char4">t</span>
<span style="top: 61px; left: 36px; transform: rotate(140deg);" class="char5">ố</span>
<span style="top: 75px; left: 23px; transform: rotate(167deg);" class="char6">i</span> 
 </a>
 </li>
</ul>
	<?php
		foreach ($row as $key => $val){
	?>
		<div id="tabs-<?php echo $key+1;?>">
			<?php
				if($val['type'] == 'flash'){ 
			?>
				<a style="display:block; margin:0 auto; cursor:pointer;" href="<?php echo $link;?>" target="<?php echo $target;?>">
	        		<object <?php echo $width . ' ' . $height;?> border="0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"><param name="movie" value="<?php echo $picture;?>"><param name="AllowScriptAccess" value="always"><param name="quality" value="High"><param name="wmode" value="transparent"><embed <?php echo $width . ' ' . $height;?> allowscriptaccess="always" pluginspage="http://www.macromedia.com/go/getflashplayer" src="<?php echo $picture;?>" type="application/x-shockwave-flash" wmode="transparent"></object>
	            </a>
	        <?php
				} 
        	?>
        	
        	 <?php
			if($val['type'] == 'image'){ 
			?>
				<a href="<?php echo $val['url'];?>" target="<?php echo $val['target'];?>">
					<img alt="<?php echo $val['name']?>" src="<?php echo $val['picture'];?>" class="">
				</a>
				
			<?php
				} 
			?>
		</div>
	<?php }?>
	
	 
</div>
</div>

