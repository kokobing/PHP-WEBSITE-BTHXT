<?php
require "../inc/cn_case_core.php";
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
                <td width="100%" align="right" style="color:#999999"><img src="../inc/pics/arr6.gif" width="9" height="9" align="absmiddle" />&nbsp;当前位置：<a href="/" class="agray">首页</a> - <a href="/hr/hr.php" class="agray">案例展示</a> - <?=$newsdirnavi[name];?></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td height="18">&nbsp;</td>
        </tr>

        <tr>
          <td align="right"><table width="733" border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="733" colspan="3" align="center">
          <?php for($i=0;$i<sizeof($arrnews);$i++){
                 $strSQL = "select opicname as pic from newspic  where id_newsinfo ='".$arrnews[$i][id_newsinfo]."' order by id_newspic asc limit 1" ;
                 $objDB->Execute($strSQL);
                 $arronepic=$objDB->fields();
				 
		  ?>
            <div id="videolist">
            <a href="/case/casepage.php?newsid=<?=$arrnews[$i][id_newsinfo];?>&ndir=<?=$arrnews[$i][id_newsdir];?>"><img src="/upload/news/<?=$arronepic[pic];?>" width="150" height="107" border="0" /></a>
            <h1><a href="/case/casepage.php?newsid=<?=$arrnews[$i][id_newsinfo];?>&ndir=<?=$arrnews[$i][id_newsdir];?>"><?=cutstr($arrnews[$i][title],30,1);?></a></h1>
            </div>

  <?php }?>
          </td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center" valign="middle" style="color:#999999"><?php if(substr(trim($strNavigate),-46)!='#494949"><strong>1</strong></font>&nbsp;&nbsp;'){echo $strNavigate;}?></td>
        </tr>
      </table></td>
  </tr>
</table>

<? require "../footer.php"; ?>

</body>
</html>
