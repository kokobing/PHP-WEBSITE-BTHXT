<?php
//页头
//取新闻中心子目录  HEADER头部  LEFT MUNU左侧 调用   21 22 ID 为案例展示 人力资源  不包括在新闻目录中
$strSQL = "select name as title,id_newsdir,lang from newsdir where lang=1 and fatherid='15' and dele='1' and id_newsdir not in(21,22) order by ordernum desc  " ;
$objDB->Execute($strSQL);
$allnewsdir=$objDB->GetRows();


//取产品中心一级目录
$strSQL = "select  name as title,id_proddir,lang  from productdir where lang=1 and level=1 and dele=1 " ;
$objDB->Execute($strSQL);
$allproddir1=$objDB->GetRows();

//GLOBAL LOGO
$strSQL = "select opicname as pic from layoutpic  where id_layout='1' order by id_layoutpic asc limit 1" ;
$objDB->Execute($strSQL);
$global_logo=$objDB->fields();


//页脚
$strSQL = "select content from layout  where id_layout='3'" ;
$objDB->Execute($strSQL);
$footer_BQ=$objDB->fields();


?>