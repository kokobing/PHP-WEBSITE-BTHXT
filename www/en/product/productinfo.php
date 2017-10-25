<?php
require "../../inc/en_productinfo_core.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<link href="../../inc/css/public.css" rel="stylesheet" type="text/css" />
<link href="../../inc/css/main.css" rel="stylesheet" type="text/css" />
<script src="../../inc/js/AC_RunActiveContent.js" type="text/javascript"></script>
<script src="/inc/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="../../inc/js/stmenu.js"></script>
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
    <td width="940" height="200" style="background:url(../../inc/pics/banner_left_bg.gif) repeat-y right top; background-color:#000000"><? require "../subadv.php"; ?></td>
  </tr>
</table>
<table width="940" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:1px; background:url(../../inc/pics/main_bg.jpg) repeat-x;">
  <tr>
    <td width="230" align="left" valign="top" style="background:url(../../inc/pics/left_bg.gif) repeat-y right;"><? require "leftmenu.php"; ?></td>
    <td width="773" valign="top"><table width="733" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:19px;">
        <tr>
          <td width="733" style="background:url(../../inc/pics/bg1.gif) repeat-x left bottom;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" align="right" style="color:#999999"><img src="../../inc/pics/arr6.gif" width="9" height="9" align="absmiddle" />&nbsp;Location：<a href="/" class="agray">Home</a> - <a href="/product/product.php" class="agray">Product</a> - <?=$onenewsdir[name]?></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td height="18">&nbsp;</td>
        </tr>

        <tr>
          <td align="right"><table width="733" border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="30" height="36"><img src="../../inc/pics/title_bg1.gif" width="30" height="36" /></td>
                <td width="673" align="left" background="../../inc/pics/title_bg_center.jpg" style="color:#000000; font-size:14px; font-weight:bold"><?=$oneproduct[title];?></td>
                <td width="30"><img src="../../inc/pics/title_bg2.gif" width="30" height="36" /></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="left" valign="middle">&nbsp;</td>
        </tr>
        <tr>
          <td align="center" valign="middle">  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="79%" height="140" align="left" valign="top"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="txt">

        <tr>
          <td ><?php echo $oneproduct[content];?></td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td style="padding:0; height:1px;" bgcolor="#F5F5F5"></td>
      </tr>
  </table></td>
        </tr>
      </table></td>
  </tr>
</table>

<? require "../footer.php"; ?>

</body>
</html>
