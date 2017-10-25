<?php
require "../inc/config.php";
require "../inc/function.class.php";

$strSQL = "select content,title from pageset where id_pageset='".$_GET[pageid]."'" ;
$objDB->Execute($strSQL);
$aboutus=$objDB->fields();


//页头 页脚调用
require "../inc/cn_header_core.php";

?>