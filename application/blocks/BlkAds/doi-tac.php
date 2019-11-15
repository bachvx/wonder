<div class="block_adsDoiTac">
		<div class="block_content goc5">
		<h2>Đối tác</h2>
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
				<a alt="<?php echo $name;?>" href="<?php echo $link;?>" target="<?php echo $target;?>" title="<?php echo $name;?>">
					<img src="<?php echo $picture;?>" alt="<?php echo $name;?>"/>
				</a>
			<?php
				} 
			?>
		</div>
</div>