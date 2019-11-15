<div class=" width_wrapper tab_quangcao clearfix">
 <script>
$(function() {
$( "#tabs_qc" ).tabs().addClass( "ui-tabs-vertical ui-helper-clearfix" );
$( "#tabs_qc li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
});
</script>
<style>

.ui-tabs-vertical { width: 55em; }
.ui-tabs-vertical .ui-tabs-nav { padding: .2em .1em .2em .2em; float: left; width: 12em; }
.ui-tabs-vertical .ui-tabs-nav li { clear: left; width: 100%; border-bottom-width: 1px !important; border-right-width: 0 !important; margin: 0 -1px .2em 0; }
.ui-tabs-vertical .ui-tabs-nav li a { display:block; }
.ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active { padding-bottom: 0; padding-right: .1em; border-right-width: 1px; border-right-width: 1px; }
.ui-tabs-vertical .ui-tabs-panel { padding: 1em; float: right; width: 40em;}
</style>


	 <div id="tabs_qc">
	 	<ul>
	 		<?php
			foreach ($row as $key => $val){
			$link = $val['url'];
			$target = $val['target'];
			$picture = $val['picture'];
			$name = $val['name'];
			$content = htmlspecialchars_decode ($val['content'] );
		
		?>
       		<li class="tip_<?php echo $key;?>"><a href="#tabs-<?php echo $key+1;?>"><?php echo $name;?><span class="arrow"></span></a></li>
       	<?php
			} 
       	?>
       	
	 	</ul>	
	 		
		<?php
			foreach ($row as $key => $val){
			$link = $val['url'];
			$target = $val['target'];
			$picture = $val['picture'];
			$name = $val['name'];
			$content = htmlspecialchars_decode ($val['content'] );
		
		?>
       		<div id="tabs-<?php echo $key+1;?>">
       		<a href="<?php echo $link;?>"> 
       		<img src="<?php echo $picture;?>" data-thumb="<?php echo $picture;?>" alt="<?php echo $name;?>"/>
       		</a>
       		</div>
       	<?php
			} 
       	?>
	</div> 
</div>
