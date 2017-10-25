<?php  
require "./inc/config.php";


$subject="留言反馈:".date("Y-m-d h:i:s");//主题
$request_email = $_REQUEST["emailcontent"];
//添加信息入库

//file_put_contents('test.txt', $request_email);  
if(trim($request_email)!=''){
	$strSQL="INSERT INTO newsinfo(title,content,id_newsdir,indate,newsdate) values('$subject','$request_email','24',now(),now())";
	$objDB->Execute($strSQL);

  $arr['info']="发送成功，非常感谢您对我们的支持!";
  $myjson= json_encode($arr);
  echo $myjson;
  
  }else{
  
  $arr['info']="您的留言为空，请输入留言内容，非常感谢您的访问!";
  $myjson= json_encode($arr);
  echo $myjson;
  
  }
?>
