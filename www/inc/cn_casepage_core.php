<?php
require "../inc/config.php";
require "../inc/function.class.php";


//新闻内容
$strSQL = "select * from newsinfo where id_newsinfo='".$_GET[newsid]."'  " ;
$objDB->Execute($strSQL);
$onenews=$objDB->fields();

//当前新闻内容目录名
$strSQL = "select name from newsdir where id_newsdir=$onenews[id_newsdir]  " ;
$objDB->Execute($strSQL);
$onenewsdir=$objDB->fields();


//页头 页脚调用
require "../inc/cn_header_core.php";

?>