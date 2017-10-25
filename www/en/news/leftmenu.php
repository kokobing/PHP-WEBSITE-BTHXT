<table width="190" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:19px;">
        <tr>
          <td width="190"><img src="../../inc/pics/En_left_nav.gif" width="190" height="35" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">
<div id="nav">
<? for($i=0;$i<sizeof($allnewsdir);$i++){?>
<a href="/en/news/news.php?ndir=<?=$allnewsdir[$i][id_newsdir]?>" <? if($_GET[ndir]==$allnewsdir[$i][id_newsdir]){echo 'data-filetype="red"';}?>><?=$allnewsdir[$i][title]?></a>
<? }?>
</div></td>
        </tr>
        <tr>
          <td height="18">&nbsp;</td>
        </tr>
      </table>
      <table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="190" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="../../inc/pics/En_left_bt3.gif" width="190" height="35" /></td>
        </tr>
        <tr>
          <td><div class="leftbg">
              <form id="Search" name="Search" method="POST" action="/en/about/search.php">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="background:url(../../inc/pics/bg4.gif) no-repeat 8px 20px;">
                  <tr>
                    <td height="26"><input name="rang" type="radio" value="product" class="inputnoborder" checked="checked" />Product <input type="radio" name="rang" value="news" class="inputnoborder" />News </td>
                  </tr>
                  <tr>
                    <td height="26" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="searchcontent" type="text" id="searchcontent" style="width:102px;" /></td>
                  </tr>
                  <tr>
                    <td height="34" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" name="imageField3" src="/inc/pics/En_btn_sear.gif" class="inputnoborder" /></td>
                  </tr>
                </table>
              </form>
            </div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="18">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="26">&nbsp;</td>
  </tr>
</table>