<table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top"><table width="100%" border="0">
      <tr>
        <td width="83%" height="80" rowspan="2" align="left"><a href="/"><img src="/upload/layout/<?=$global_logo[pic];?>" width="304" height="66"  border="0" /></a></td>
        <td width="17%" height="31" align="center" valign="bottom"><a href="/">中文</a> | <a href="/en/">English</a></td>
      </tr>
      <tr>
        <td height="29" align="center" valign="middle"><?php date_default_timezone_set('Asia/Shanghai');echo date("Y-m-d G:i:s")?></td>
      </tr>
      <tr>
        <td height="40" colspan="2" align="left" valign="top">

<script type="text/javascript">
<!--
stm_bm(["menu0b0f",900,"","/inc/pics/blank.gif",0,"","",0,0,250,0,1000,1,0,0,"","488",0,0,1,2,"hand","hand","",1,25],this);
stm_bp("p0",[0,4,0,0,0,0,0,0,100,"",-2,"",-2,50,0,0,"#999999","#FFFFFF","",0,0,0,"#CCCCCC"]);
stm_ai("p0i0",[0,"首 页","","",-1,-1,0,"/","_self","","","","",0,0,0,"","",0,0,0,1,1,"#406DA7",1,"#B70C0C",1,"/inc/pics/m_b01.gif","/inc/pics/m_b01.gif",3,3,0,0,"#CCCCCC","#CCCCCC","#FFFFFF","#FFFFFF","bold 10pt 'Arial','Verdana'","bold 10pt Arial",0,0,"","","","",0,0,0],117,40);
stm_aix("p0i1","p0i0",[0,"关于我们","","",-1,-1,0,"/about/about.php?pageid=1","_self","","","","",0,0,0,"","",0,0,0,1,1,"#A6CE3A",1,"#B70C0C",1,"/inc/pics/m_b02.gif","/inc/pics/m_b02.gif",3,3,0,0,"#CCCCCC","#CCCCCC","#FFFFFF","#FFFFFF","bold 10pt Arial"],117,40);
stm_bpx("p1","p0",[0,4,0,0,0,0,0,0,100,"",-2,"",-2,50,2,3]);
stm_aix("p1i0","p0i0",[0,"        关于我们","","",-1,-1,0,"/about/about.php?pageid=1","_self","","","","",0,0,0,"","",0,0,0,0,1,"#FFFFFF",0,"#FFFFFF",0,"","",3,3,0,0,"#CCCCCC","#CCCCCC","#444744","#E85100","bold 9pt 'Arial','Verdana'","bold 9pt Arial"],230,40);
stm_aix("p1i1","p1i0",[0,"         企业文化","","",-1,-1,0,"/about/about.php?pageid=5"],237,40);
stm_aix("p1i2","p1i0",[0,"        公司荣誉","","",-1,-1,0,"/about/about.php?pageid=2"],150,40);
stm_aix("p1i3","p1i0",[0,"         人才理念","","",-1,-1,0,"/about/about.php?pageid=6"],150,40);
stm_aix("p1i4","p1i0",[0,"        组织机构","","",-1,-1,0,"/about/about.php?pageid=3"],150,40);
stm_aix("p1i5","p1i0",[0,"         发展历程","","",-1,-1,0,"/about/about.php?pageid=7"],150,40);
stm_aix("p1i6","p1i0",[0,"        总经理致辞","","",-1,-1,0,"/about/about.php?pageid=4"],150,40);
stm_mc("p1",[2,"#E6E6E6",0,1,"",3]);
stm_ep();
stm_aix("p0i2","p0i0",[0,"新闻中心","","",-1,-1,0,"/news/news.php","_self","","","","",0,0,0,"","",0,0,0,1,1,"#A6CE3A",1,"#B70C0C",1,"/inc/pics/m_b02.gif","/inc/pics/m_b02.gif",3,3,0,0,"#CCCCCC","#CCCCCC","#FFFFFF","#FFFFFF","bold 10pt 'Arial','Verdana'","bold 10pt Arial"],117,40);
stm_bpx("p2","p1",[]);
<? for($i=0;$i<sizeof($allnewsdir);$i++){?>
stm_aix("p2i<?=$i;?>","p1i0",[0,"        <?=$allnewsdir[$i][title]?>","","",-1,-1,0,"/news/news.php?ndir=<?=$allnewsdir[$i][id_newsdir]?>"],250,40);
<? }?>
stm_mc("p2",[2,"#E6E6E6",0,1,"",3]);
stm_ep();
stm_aix("p0i3","p0i2",[0,"主营业务","","",-1,-1,0,"/product/product.php"],117,40);
stm_bpx("p3","p1",[]);
<? for($i=0;$i<sizeof($allproddir1);$i++){?>
stm_aix("p3i0","p1i0",[0,"        <?=$allproddir1[$i][title]?>","","",-1,-1,0,"/product/product.php?id1=<?=$allproddir1[$i][id_proddir]?>"],237,40);
<? }?>
stm_mc("p3",[2,"#E6E6E6",0,1,"",3]);
stm_ep();
stm_aix("p0i4","p0i2",[0,"人力资源","","",-1,-1,0,"/hr/hr.php"],117,40);
stm_aix("p0i5","p0i2",[0,"留言反馈","","",-1,-1,0,"javascript:needsendmail();"],117,40);
stm_aix("p0i6","p0i2",[0,"联系我们","","",-1,-1,0,"/about/about.php?pageid=8"],117,40);
stm_aix("p0i7","p0i2",[0,"企业OA登陆","","",-1,-1,0,"http://oa.nxbtsh.com/","_blank","","","","",0,0,0,"","",0,0,0,1,1,"#A6CE3A",1,"#B70C0C",1,"/inc/pics/m_b03.gif","/inc/pics/m_b03.gif"],121,40);
stm_ep();
stm_cf([0,0,0,"Main_frame","Navigation_frame",1]);
stm_em();
//-->
</script>
</td>
      </tr>
    </table></td>
  </tr>
</table>