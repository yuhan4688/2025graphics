//week05-6good_pushMatrix_popMatrix
//因為有很多移動、旋轉，大腦會亂掉，所以用分階層來做
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  pushMatrix();
  translate(width/2,height/2);//把下面這坨移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2-100,height/2);//把下面這坨移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix();
}
