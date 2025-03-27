//week06-3_push_translate_rolate_translate_box_pop
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
    translate(x,y);
    if(mousePressed && mouseButton==RIGHT){
      rotateZ(radians(frameCount));//對著下面中心旋轉
    }
    translate(-50,0,0);
    box(100,30,30);
  popMatrix();
}
float x=0,y=0;
void mouseDragged(){
  x+= mouseX-pmouseX;
  y += mouseY-pmouseY;
}
