<table width="190" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:19px;">
        <tr>
          <td width="190"><img src="../../inc/pics/En_left_nav.gif" width="190" height="35" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">
          <?php
//取出产品一级目录信息
$strSQL="SELECT id_proddir,name FROM productdir WHERE level='1' and dele='1' and lang='0' order by ordernum ASC";
$objDB->Execute($strSQL);
$arrnewsdir1=$objDB->GetRows();
?>
<table width="180" border="0" align="center" cellpadding="3" cellspacing="3" class="txt">
  <tr>
    <td><table width="170" border="0" align="right" cellpadding="0" cellspacing="0">
    <?php for($i=0;$i<sizeof($arrnewsdir1);$i++){
	         //取出产品二级级目录信息
	        $strSQL="SELECT id_proddir,name FROM productdir WHERE level='2' and dele='1' and fatherid='".$arrnewsdir1[$i][id_proddir]."' order by ordernum ASC";
	        $objDB->Execute($strSQL);
	        $arrnewsdir2=$objDB->GetRows();
	?>
      <tr  height="28">
        <td align="left"  style="cursor:pointer;background:url(../../inc/pics/bg2.gif) repeat-x left bottom;" ><strong>·</strong> <a href="#"  <?php if($_GET[id1]==$arrnewsdir1[$i][id_proddir]){echo 'class="link_04_1"';}else{echo 'class="link_04"';} ?>  onClick="ChangeTab(<?php echo $i;?>);"><?php echo $arrnewsdir1[$i][name];?></a></td>
      </tr>
    
      <tr>
        <td align="left">
        <?php if($_GET[id1]==$arrnewsdir1[$i][id_proddir]){?>
        <div id="dir2form<?php echo $i;?>"  style="display:yes;">
        <?php }else{?>
        <div id="dir2form<?php echo $i;?>"  style="display:none;">
        <?php }?>
        <table width="160" border="0" align="right" cellpadding="0" cellspacing="0">
           <?php for($j=0;$j<sizeof($arrnewsdir2);$j++){?>              
          <tr>
            <td> - <a href="product.php?id1=<?php echo $arrnewsdir1[$i][id_proddir];?>&id2=<?php echo $arrnewsdir2[$j][id_proddir];?>"  <?php if($_GET[id1]==$arrnewsdir1[$i][id_proddir]  && $_GET[id2]==$arrnewsdir2[$j][id_proddir]){echo 'class="link_04_1"';}else{echo 'class="link_04"';} ?> ><?php echo $arrnewsdir2[$j][name];?></a></td>
          </tr>
          <? }?>
        </table>
        </div>
        </td>
      </tr>
     
    <?php }?>
    </table></td>
  </tr>
</table>
<script countryuage="javascript">
	function ChangeTab(tag){
		var tag = tag; 
		var c_form = "dir2form"+tag;
		for(i=0;i<6;i++){
			var tagForm = "dir2form"+i;   
			if(i==tag){
				document.getElementById(tagForm).style.display="block";
			}else{
				document.getElementById(tagForm).style.display="none";
			}
		}
 }
</script>

          
          </td>
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