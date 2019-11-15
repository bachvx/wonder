<div class="timkiem">
			<script language="javascript">
			function doSubmit(){	
				if (document.frmSearch.keywords.value == "Nhập từ khóa bất kỳ...") {
					document.frmSearch.keywords.focus();
					return false;
				}
				document.frmSearch.submit();
				return;
			}
			</script>
			<form name="frmSearch" action="<?php echo $view->baseUrl('/diadiem/index/filter/type/search') ?>" method="post">
				<table cellspacing="0" cellpadding="0" border="0" id="table1" style="border-collapse: collapse">
			 		<tr>
			     		<td width="107" class="searchText">
			     			<input type="text" id="keywords" autocomplete="off" name="keywords" value="Nhập từ khóa bất kỳ..." onblur="javascript:if(this.value==''){this.value='Nhập từ khóa bất kỳ...';};" onfocus="javascript:if(this.value=='Nhập từ khóa bất kỳ...'){this.value='';};">
			           	</td>
			           	<td width="36" class="searchBtn" onclick="javascript:return doSubmit(0);" onmouseover="this.className='searchBtnOn'" onmouseout="this.className='searchBtn'">&nbsp;</td>
			      	</tr>
			   	</table>
			</form>
			<script type="text/javascript">
				$('#keywords').keyup(function(event) {
					//alert($('#keywords').val());
					var key = $('#keywords').val();
					if($('#keywords').val() != ''){
						$('.searchDiadiem').load('<?php echo $view->baseUrl('diadiem/block/ajax/keywords/');?>' + key);
						$('.searchDiadiem').show();
					}else{
						$('.searchDiadiem').hide();
					}
				});
				$('body').click(function(){
					$('.searchDiadiem').hide();
				});
			</script>
			<div class="searchDiadiem">
				
			</div>
			<?php echo $view->blkStatus();?>
		</div>