<?php
require "../inc/cn_product_core.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<link href="../inc/css/public.css" rel="stylesheet" type="text/css" />
<link href="../inc/css/main.css" rel="stylesheet" type="text/css" />
<script src="../inc/js/jquery.js" type="text/javascript"></script>
<script src="../inc/js/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript" src="../inc/js/stmenu.js"></script>
<?php if($setinfo[iscopy]=='1'){?>
<script language="JavaScript">
document.oncontextmenu=new Function("event.returnValue=false;");
document.onselectstart=new Function("event.returnValue=false;");
</script>
<?php }?>
<?php if($setinfo[otherheader]!=''){echo $setinfo[otherheader];}?>
</head>
<body>

<? require "../header.php"; ?>
<table width="940" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="940" height="200" style="background:url(../inc/pics/banner_left_bg.gif) repeat-y right top; background-color:#000000"><? require "../subadv.php"; ?></td>
  </tr>
</table>
<table width="940" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:1px; background:url(../inc/pics/main_bg.jpg) repeat-x;">
  <tr>
    <td width="230" align="left" valign="top" style="background:url(../inc/pics/left_bg.gif) repeat-y right;"><? require "leftmenu.php"; ?></td>
    <td width="773" valign="top"><table width="733" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:19px;">
        <tr>
          <td width="733" style="background:url(../inc/pics/bg1.gif) repeat-x left bottom;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" align="right" style="color:#999999"><img src="../inc/pics/arr6.gif" width="9" height="9" align="absmiddle" />&nbsp;当前位置：<a href="/" class="agray">首页</a> - <a href="/product/product.php" class="agray">产品中心</a> - <?=$aboutus[title];?></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td height="18">&nbsp;</td>
        </tr>

        <tr>
          <td align="left">
          <?php for($i=0;$i<sizeof($arrprods);$i++){
                 $strSQL = "select opicname as pic from productpic  where id_prodinfo ='".$arrprods[$i][id_prodinfo]."' order by id_prodpic asc limit 1" ;
                 $objDB->Execute($strSQL);
                 $arronepic=$objDB->fields();
				 
			  ?>
          <div id="productlist">
          <table width="150" border="0" cellspacing="0" cellpadding="0" style="margin-bottom: 22px">
            <tr>
              <td width="150" align="center" style="padding:2px; border:1px solid #C6C6C6"><a href="/product/productinfo.php?pid=<?=$arrprods[$i][id_prodinfo];?>&id1=<?=$arrprods[$i][fatherid];?>&id2=<?=$arrprods[$i][id_proddir];?>" ><img src="/upload/product/<?=$arronepic[pic];?>" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="/inc/pics/t.gif" width="1" height="2" /></td>
            </tr>
            <tr>
              <td bgcolor="#EFEFEF" style="padding:4px 7px 4px 7px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="19" align="left"><a href="/product/productinfo.php?pid=<?=$arrprods[$i][id_prodinfo];?>&id1=<?=$arrprods[$i][fatherid];?>&id2=<?=$arrprods[$i][id_proddir];?>" ><?=cutstr($arrprods[$i][title],20,0);?></a></td>
                </tr>
                <tr>
                  <td height="19" align="left">日期：<?=substr($arrprods[$i][indate],0,10);?><span style="font-size: 11px"></span>&nbsp;&nbsp;<a href="#" target="_blank" title="放大图片"><img src="/inc/pics/zoom.gif" border="0" align="absmiddle" /></a></td>
                </tr>
              </table></td>
            </tr>
          </table>
          </div>
          <?php }?>
          </td>
        </tr>
        <tr>
          <td align="center" valign="top"><?php if(substr(trim($strNavigate),-46)!='#494949"><strong>1</strong></font>&nbsp;&nbsp;'){echo $strNavigate;}?></td>
        </tr>
        <tr>
          <td height="20">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>

<? require "../footer.php"; ?>

</body>
</html>
