<?php  
require "../inc/config_admin.php";
if(isset($_SESSION[user_id])){//if usrer login
$c_url='/admin/news/news_dir.php';//关联主文件
require "../inc/config_perm_ajax.php";//一级目录和二级文件的访问权限判断
  if($ajax_onuserperm_editprem=='1'){
   $newsdir2name = $_REQUEST["newsdir2name"];//menu name
   $fatherid = $_REQUEST["fatherid"];//fatherid
   $newsid = $_REQUEST["newsid"];//selfid
   $isdel = $_REQUEST["isdel"];//是否删除该菜单
   $intro = $_REQUEST["intro"];//简介
   $menuorder = $_REQUEST["menuorder"];//order
   $lang = $_REQUEST["lang"];//order

   if ($isdel=='1' && $ajax_onuserperm_deleprem=='1'){
   	$strSQL="update newsdir set dele='0' where id_newsdir='".$newsid."' and id_newsdir not in (1,3,4,5,19,16,15,10,11,25,17,18,20,21,22,23,24,26,27,28,29,30,31,32)";
	$objDB->Execute($strSQL);
   }else{
   
      $strSQL="UPDATE newsdir SET fatherid='".$fatherid."',name='".$newsdir2name."',intro='".$intro."',ordernum='".$menuorder."',lang='".$lang."' where id_newsdir='".$newsid."'";
      $objDB->Execute($strSQL);
   	 //更新所有下级目录语言为父目录语言
	 $strSQL="UPDATE newsdir SET lang='".$lang."' where fatherid='".$newsid."' and level=2";
     $objDB->Execute($strSQL);
	 
	 
   }
   
   
  if($newsid==1||$newsid==3||$newsid==4||$newsid==5||$newsid==19||$newsid==16||$newsid==15||$newsid==10||$newsid==11||$newsid==25||$newsid==17||$newsid==18||$newsid==20||$newsid==21||$newsid==22||$newsid==23||$newsid==24||$newsid==26||$newsid==27||$newsid==28||$newsid==29||$newsid==30||$newsid==31||$newsid==32){
  $arr['info']="此目录为系统初始目录，无法删除!";
  }else{
  $arr['info']="恭喜你,修改成功!";
  }
  $myjson= json_encode($arr);
  echo $myjson;
  }//  if($ajax_onuserperm_editprem=='1') end
}//session end
?>

