function DrawImage(MyPic,W,H){
  var flag=false;
  var image=new Image();
  image.src=MyPic.src;
  if(image.width>0 && image.height>0){
    flag=true;
    if(image.width/image.height>= W/H){
      if(image.width>W){
        MyPic.width=W;
        MyPic.height=(image.height*W)/image.width;
      }
	  else{
        MyPic.width=image.width;
        MyPic.height=image.height;
      }
    }
    else{
      if(image.height>H){
        MyPic.height=H;
        MyPic.width=(image.width*H)/image.height;
      }
	  else{
        MyPic.width=image.width;
        MyPic.height=image.height;
      }
    }
  }
}