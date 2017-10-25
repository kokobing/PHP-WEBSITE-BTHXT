<?php
require "../inc/config.php";
require "../inc/function.class.php";
checkcopyright();


if($_POST[rang]=="product"){
$strSQL = "select a.*,b.lang,b.fatherid from productinfo as a left join productdir as b on a.id_proddir=b.id_proddir   where a.dele=1 and b.lang=1 and a.title like '%".$_POST[searchcontent]."%' order by a.id_prodinfo desc" ;
$objDB->Execute($strSQL);
$arrprods=$objDB->GetRows();
}



if($_POST[rang]=="news"){
$strSQL = "select a.* from newsinfo as a left join newsdir as b on a.id_newsdir=b.id_newsdir where a.dele=1 and b.lang=1 and a.title like '%".$_POST[searchcontent]."%'  and a.id_newsdir not in(21,22)  order by a.id_newsinfo desc" ;
$objDB->Execute($strSQL);
$arrnews=$objDB->GetRows();
}


//页头 页脚调用
require "../inc/cn_header_core.php";

?>