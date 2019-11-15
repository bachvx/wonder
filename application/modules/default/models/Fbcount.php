<?php
class Default_Model_Fbcount extends Zend_Db_Table{
	
	protected $_name = 'FbCount';
	protected $_primary ='id';
	
	protected $_ids;
	
 
	public function countItem($url = null,$typer = null,$id = null){
	//$url=' https://api.facebook.com/method/fql.query?query=select  url,like_count, total_count, share_count, click_count from link_stat where url ="'.$url.'" ';
	//$url1=$_POST['url'];
	$src = json_decode(file_get_contents('http://graph.facebook.com/' . $url));
	$share_count = $src->shares; 
	if($share_count==null){
		$share_count=0;
	}
	return  $share_count;
	 
	}
	
	
	public function commentItem($url = null,$typer = null,$id = null){
		$url1=$url;
		$addr="http://api.facebook.com/restserver.php?method=links.getStats&urls=".$url1;
		$page_source=file_get_contents($addr);
		$page = htmlentities($page_source);
		$like="<comment_count>";
		$like1="</comment_count>";
		$lik=strpos($page,htmlentities($like));
		$lik1=strpos($page,htmlentities($like1));
		$fullcount=strlen($page);
		$a=$fullcount-$lik1;
		$aaa=substr($page,$lik+21,-$a);
		$aaa1=substr($page,605,610);
		 
		$share_count=$aaa;
		if($share_count==null){
			$share_count=0;
		}
		return  $share_count;
		 
	}
	
	
	
	      
}