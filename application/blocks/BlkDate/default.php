<?php
	$date = new Zend_Date();
	//$dateNow = $date->get(Zend_Date::DATE_FULL);
	$dateNow = $date->get(Zend_Date::DATE_LONG);
?>
<div class="block_date">
	<?php echo $dateNow;?>
</div>