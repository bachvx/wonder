<?php 
// echo $totalCategoryArticle.'/';
// echo $totalArticle.'/';
// echo $totalCategoryArticle.'/';
// echo $totalDiadiem.'/';die;
?>
<div class="status">
					<ul class="top-nav">
                        <li class="nav-place-icon current-item">
                            <a title="<?php echo $totalDiadiem;?>" href="http://diachianchoi.vn/diadiem.html"><span><?php echo $totalDiadiem;?></span>Địa điểm</a>                        </li>
                        <li class="nav-members-icon">
                        <?php 
                        $url1='https://www.facebook.com/diadiemHN';
                        $addr="http://api.facebook.com/restserver.php?method=links.getStats&urls=".$url1;
                        $page_source=file_get_contents($addr);
                        $page = htmlentities($page_source);
                        $like="<like_count>";
                        $like1="</like_count>";
                        $lik=strpos($page,htmlentities($like));
                        $lik1=strpos($page,htmlentities($like1));
                        $fullcount=strlen($page);
                        $a=$fullcount-$lik1;
                        $aaa=substr($page,$lik+18,-$a);
                        $aaa1=substr($page,605,610);
                        //echo "Like Count:  ".$aaa;die;
                        ?>
                        
                             <a title="<?php echo $aaa;?>" href="#"><span><?php echo $aaa;?></span>Thành viên</a>                        </li>
                        <li class="nav-review-icon">
                            <a title="<?php echo $totalArticle;?>" href="http://diachianchoi.vn/articles.html"><span><?php echo $totalArticle;?></span>Bài viết</a>                        </li>
                        <li class="nav-map-icon">
                                                        <a class="open-popup cboxElement" title="" href="#popup-place-area-main">
                                <span>30</span>
                                Quận/Huyện
                            </a>
                        </li>
                    </ul>
		</div>