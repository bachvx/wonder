<div class="duongdan">
	<div class="container">
		<ul>
            <?php
                if($arrParam['module'] == 'default' && $arrParam['controller'] == 'index' && $arrParam['action'] == 'index'){
            		echo '<li>' . $view->blkDate() . '</li>';
                }else{
                	echo $linkBreadcrumbs;
                }
            ?>
        </ul>
	</div>	
</div>