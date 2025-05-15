//week13-4_camera_chessboard_front_left
//texture and camera整合在一起
PImage img;
void setup(){
  size(400,400,P3D);
  img=loadImage("chessboard.png");//圖拉進來
  textureMode(NORMAL);//有很多種模式
}
void draw(){
  camera(mouseX,200,mouseY,mouseX,200,mouseY-10,0,1,0);
  background(128);
  beginShape();
    texture(img);
    vertex(0,0,0,0,0);
    vertex(400,0,0,1,0);
    vertex(400,400,0,1,1);
    vertex(0,400,0,0,1);
  endShape();
  beginShape();//左方
  texture(img);//把圖片當貼圖
    vertex(0,0,0,0,0);//x,y,z,u,v
    vertex(0,400,0,1,0);
    vertex(0,400,400,1,1);
    vertex(0,0,400,0,1);
  endShape();
}
