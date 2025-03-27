//week06-2_eillipse_translate_push_rolate_translate_box_pop
//加一個移動，把物體放到「轉盤正中心」
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
    translate(-50,0,0);
    box(100,30,30);
  popMatrix();
}
