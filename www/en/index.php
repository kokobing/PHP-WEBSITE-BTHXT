<?php
require "../inc/en_index_core.php";
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
<script src="/inc/js/jcarousellite_1.0.1.pack.js" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
    $("#home_partner").jCarouselLite({
   auto: 3000,scroll: 1,speed: 300,visible: 1, vertical: true
    }); 
   });
</script>
<?php if($setinfo[iscopy]=='1'){?>
<script language="JavaScript">
document.oncontextmenu=new Function("event.returnValue=false;");
document.onselectstart=new Function("event.returnValue=false;");
</script>
<?php }?>
<?php if($setinfo[otherheader]!=''){echo $setinfo[otherheader];}?>
</head>

<body>
<? require "header.php"; ?>
<table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','940','height','430','src','../inc/swf/main_adv','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','menu','false','wmode','transparent','flashvars','path=&mod=','movie','../inc/swf/main_adv' ); //end AC code
</script>
        <noscript>
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="940" height="430">
          <param name="movie" value="../inc/swf/main_adv.swf" />
          <param name="quality" value="high" />
          <param name="menu" value="false" />
          <param name="wmode" value="transparent" />
          <param name="FlashVars" value="path=&amp;mod=" />
          <embed src="../inc/swf/main_adv.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="940" height="430" menu="false" wmode="transparent" flashvars="path=&amp;mod="></embed>
        </object>
      </noscript></td>
  </tr>
</table>
<table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td width="230" align="left" valign="top"><table width="230" border="0" cellspacing="0" cellpadding="0" >
      <tr>
        <td align="center" ><table width="100%" border="0" cellpadding="0" cellspacing="0" >
            <tr>
              <td height="25" style="background:url(../inc/pics/bg6.gif) repeat-x left bottom;" valign="top"><span id="tag_2" class="tagdef" onclick="tag('1');"><strong>About us</strong></span> </td>
            </tr>
            <tr>
              <td><table width="100%" cellpadding="0" cellspacing="0" id="tagCon_2">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="2" cellpadding="2">
                          <tr>
                            <td height="98" colspan="3" align="left" valign="top" class="txt"><img src="../inc/pics/user_bg.gif" width="49" height="50" style="float:left; margin-right:5px;" /><?=cutstr($aboutus[intro],180,1);?></td>
                          </tr>
                      </table></td>
                  </tr>

                  <tr>
                    <td height="25" align="right">&nbsp;&nbsp;&nbsp;<img src="../inc/pics/arr7.gif" width="7" height="7" align="absmiddle" /> <a href="/about/about.php?pageid=1">More》</a>&nbsp;&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td style="background:url(../inc/pics/bg6.gif) repeat-x left center;"><img src="../inc/pics/t.gif" width="1" height="5" /></td>
            </tr>
        </table></td>
      </tr>
            <tr>
        <td height="35" style="border:1px solid #DDDDDD; border-top:0px none; background:url(inc/pics/v_bg.jpg) repeat-x left bottom;"><?=$setinfo[mapcode];?></td>
      </tr>
      <tr>
        <td height="21">&nbsp;</td>
      </tr>
      <tr>
        <td style="border:1px solid #DDDDDD; border-top:0px none; background:url(../inc/pics/v_bg.jpg) repeat-x left bottom;"><img src="../inc/pics/En_left_bt33.gif" width="230" height="35" /></td>
      </tr>
      <tr>
        <td valign="top" style="border:1px solid #DDDDDD; border-top:0px none; background:url(../inc/pics/v_bg.jpg) repeat-x left bottom;">
        <div id="home_partner"> 
<ul>
<? for($i=0;$i<sizeof($arrallpic);$i++){?>
<li>
<table width="220" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"><? if($arrallpic[$i][pic]!=''){?><a href="<?=$arrallpic[$i][url]?>"><img src="/upload/layout/<?=$arrallpic[$i][pic]?>" width="88" height="40" border="0" /></a><? }?></td>
    <td align="center"><? if($arrallpic[$i+1][pic]!=''){?><a href="<?=$arrallpic[$i+1][url]?>"><img src="/upload/layout/<?=$arrallpic[$i+1][pic]?>" width="88" height="40" border="0" /></a><? }?></td>
  </tr>
  <tr>
    <td colspan="2" align="center" style="height:10px;"> </td>
    </tr>
  <tr>
    <td align="center"><? if($arrallpic[$i+2][pic]!=''){?><a href="<?=$arrallpic[$i+2][url]?>"><img src="/upload/layout/<?=$arrallpic[$i+2][pic]?>" width="88" height="40" border="0" /></a><? }?></td>
    <td align="center"><? if($arrallpic[$i+3][pic]!=''){?><a href="<?=$arrallpic[$i+3][url]?>"><img src="/upload/layout/<?=$arrallpic[$i+3][pic]?>" width="88" height="40" border="0" /></a><? }?></td>
  </tr>
</table>
</li>
<? $i=$i+3; }?>
</ul>
</div>
        </td>
      </tr>

    </table></td>
    <td width="490" align="center" valign="top"><table width="450" border="0" cellspacing="0" cellpadding="0" style="margin-top:19px;">
        <tr>
<td width="480" height="24" align="center"><table width="450" border="0" cellspacing="0" cellpadding="0">
        <tr>
                      <td width="243" align="left"><img src="../inc/pics/Enm_bt1.gif" width="120" height="24" /></td>
                <td width="243" align="right" valign="bottom"><a href="/en/news/news.php"><img src="../inc/pics/more2.gif" alt="更多新闻" width="51" height="14" border="0" style="margin-bottom:7px;" /></a></td>
                    </tr>
                  </table></td>
        </tr>
        
        <? for($i=0;$i<sizeof($arrallnews);$i++){?>
                <tr>
    <td height="25"><table width="450" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  align="left" width="360" style="background:url(../inc/pics/bg5.gif) repeat-x left bottom;"><img src="../inc/pics/arr2.gif" width="3" height="5" align="absmiddle" />&nbsp;&nbsp;<a href="/en/news/newspage.php?newsid=<?=$arrallnews[$i][id_newsinfo];?>&ndir=<?=$arrallnews[$i][id_newsdir];?>"><?=cutstr($arrallnews[$i][title],50,1)?></a></td>
          <td width="90" align="right" style="font-size:11px; color:#999999; background:url(../inc/pics/bg5.gif) repeat-x left bottom;"><img src="../inc/pics/clock.gif" width="7" height="7" align="absmiddle" />&nbsp;&nbsp;<?=$arrnews[$i][newsdate];?></td>
        </tr>
      </table></td>
  </tr>
        <? }?>

            </table>
            <table width="450" border="0" cellspacing="0" cellpadding="0" style="margin-top:8px;">
              <tr>
                <td width="480" height="24" align="center" ><table width="450" border="0" cellspacing="0" cellpadding="0">
                <tr>
                      <td width="243" align="left"><img src="../inc/pics/Enm_bt2.gif" width="120" height="24" /></td>
                  <td width="243" align="right" valign="bottom"><a href="/en/product/product.php"><img src="../inc/pics/more2.gif" alt="更多产品" width="51" height="14" border="0" style="margin-bottom:7px;" /></a></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td>
                         <?php for($i=0;$i<sizeof($arrprods);$i++){
                 $strSQL = "select opicname as pic from productpic  where id_prodinfo ='".$arrprods[$i][id_prodinfo]."' order by id_prodpic asc limit 1" ;
                 $objDB->Execute($strSQL);
                 $arronepic=$objDB->fields();
				 
			  ?>
               <div id="indexproductlist"> 
                <table cellpadding="2" cellspacing="0" >
        <tr>
          <td style="border: 1px solid #ccc; width:140px; height:113px; text-align:center;"><a href="/en/product/productinfo.php?pid=<?=$arrprods[$i][id_prodinfo];?>&id1=<?=$arrprods[$i][fatherid];?>&id2=<?=$arrprods[$i][id_proddir];?>"><img src="/upload/product/<?=$arronepic[pic];?>" border="0" /></a></td>
        </tr>
      </table>
              </div>        
                   <?php }?>
                </td>
              </tr>
    </table></td>
    <td width="220" align="right" valign="top"><table width="216" border="0" cellspacing="0" cellpadding="0" style="margin-left:11px; margin-top:17px;">
  <tr>
    <td height="35" style="border:1px solid #DDDDDD; border-top:0px none; background:url(../inc/pics/v_bg.jpg) repeat-x left bottom;"><img src="../inc/pics/En_video.gif" width="216" height="35" /></td>
  </tr>
  <tr>
    <td height="60" style="border:1px solid #DDDDDD; border-top:0px none; background:url(inc/pics/v_bg.jpg) repeat-x left bottom;"><table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="188"><img src="../inc/pics/t.gif" width="1" height="10" /><embed id="MediaPlayer" src="<?=$home_video[url];?>" width="210" height="210" loop="0" autostart="false"></embed></td>
            </tr>
            
            <tr>
              <td height="28" align="right" valign="bottom"><a href="OtherList.Asp"><img src="../inc/pics/more3.gif" alt="查看更多企业视频" width="50" height="20" border="0" /></a></td>
            </tr>
            <tr>
              <td height="5"></td>
            </tr>
        </table>
      </td>
  </tr>
  <tr>
    <td height="18">&nbsp;</td>
  </tr>
    <tr>
      <td width="216" height="35" style="border:1px solid #DDDDDD; border-top:0px none; background:url(../inc/pics/v_bg.jpg) repeat-x left bottom;"><img src="../inc/pics/En_right_bt2.gif" width="216" height="35" /></td>
    </tr>

  <tr>
    <td height="80" style="border:1px solid #DDDDDD; border-top:0px none; background:url(inc/pics/v_bg.jpg) repeat-x left bottom;">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="110" align="left" valign="top"><table width="100%" border="0" cellspacing="5" cellpadding="5">
      <tr>
        <td height="36" align="center" valign="middle"><a href="tencent://message/?uin=<?=$H_qqcontact[0];?>&Site=www.bthxt.com&Menu=yes"><img src="../inc/pics/pa.gif" border="0" /></a></td>
        <td height="36" align="center" valign="middle"><a href="tencent://message/?uin=<?=$H_qqcontact[1];?>&Site=www.bthxt.com&Menu=yes"><img src="../inc/pics/pa.gif" border="0" /></a></td>
      </tr>
      <tr>
        <td height="36" align="center" valign="middle"><a href="tencent://message/?uin=<?=$H_qqcontact[2];?>&Site=www.bthxt.com&Menu=yes"><img src="../inc/pics/pa.gif" border="0" /></a></td>
        <td height="36" align="center" valign="middle"><a href="tencent://message/?uin=<?=$H_qqcontact[3];?>&Site=www.bthxt.com&Menu=yes"><img src="../inc/pics/pa.gif" border="0" /></a></td>
      </tr>
      <tr>
        <td height="36" align="center" valign="middle"><a href="tencent://message/?uin=<?=$H_qqcontact[4];?>&Site=www.bthxt.com&Menu=yes"><img src="../inc/pics/pa.gif" border="0" /></a></td>
        <td height="36" align="center" valign="middle"><a href="tencent://message/?uin=<?=$H_qqcontact[5];?>&Site=www.bthxt.com&Menu=yes"><img src="../inc/pics/pa.gif" border="0" /></a></td>
      </tr>
      </table></td>
  </tr>
</table>

</td>
  </tr>
</table>
</td>
  </tr>
</table>

<? require "footer.php"; ?>

</body>
</html>
