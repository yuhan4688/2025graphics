//week06-1_eillipse_translate_push_rolate_box_pop
//有點模仿第四周，慢慢建出來
void setup(){
  size(500,500,P3D);  
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//把東西放在正中心
  pushMatrix();
  //改成要按一下滑鼠才給你看
    if(mousePressed) rotateZ(radians(frameCount));//對著下面中心旋轉
    box(100,30,30);
  popMatrix();
}
