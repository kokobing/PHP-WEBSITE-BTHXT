<?php
require "./inc/config.php";
require "./inc/function.class.php";

//视频链接
$strSQL = "select url from layout  where id_layout='2'" ;
$objDB->Execute($strSQL);
$home_video=$objDB->fields();

//关于我们
$strSQL = "select description as intro from pageset where id_pageset='1'" ;
$objDB->Execute($strSQL);
$aboutus=$objDB->fields();

//新闻
$strSQL = "select a.title,a.id_newsinfo,a.id_newsdir from newsinfo as a left join newsdir as b on a.id_newsdir=b.id_newsdir where a.dele=1 and b.lang=1  and a.id_newsdir not in(21,22)  and fatherid='15'  order by a.id_newsinfo desc limit 6" ;
$objDB->Execute($strSQL);
$arrallnews=$objDB->GetRows();

//产品
$strSQL = "select a.*,b.lang,b.fatherid from productinfo as a left join productdir as b on a.id_proddir=b.id_proddir   where a.dele=1 and b.lang=1 order by a.id_prodinfo desc limit 6" ;
$objDB->Execute($strSQL);
$arrprods=$objDB->GetRows();

//qq链接
$strSQL = "select intro from layout  where id_layout='7'" ;
$objDB->Execute($strSQL);
$home_QQ=$objDB->fields();
$H_qqcontact=explode("||",$home_QQ[intro]);

//合作伙伴 
$strSQL = "select opicname as pic,url from layoutpic  where id_layout =8 order by  id_layoutpic asc " ;
$objDB->Execute($strSQL);
$arrallpic=$objDB->getrows();

//页头 页脚调用
require "./inc/cn_header_core.php";

?>