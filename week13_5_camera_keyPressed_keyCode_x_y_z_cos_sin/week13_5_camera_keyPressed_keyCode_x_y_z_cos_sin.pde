//week13-5_camera_keyPressed_keyCode_x_y_z_cos_sin
//利用方向鍵(上下左右鍵)來移動我們的主角
//修改自week13-4
PImage img;
void setup(){
  size(400,400,P3D);
  img=loadImage("chessboard.png");//圖拉進來
  textureMode(NORMAL);//有很多種模式
}
float x=200,y=200,z=200,angle=180;
void keyPressed(){
  if(keyCode==LEFT) angle--;
  if(keyCode==RIGHT) angle++;
  if(keyCode==UP) {
    x+=cos(radians(angle));//小心是z(3D的前後)不是y
    z+=sin(radians(angle));
  }
  if(keyCode==DOWN){
    x-=cos(radians(angle));
    z-=sin(radians(angle));
  }
}
void draw(){
  //camera(mouseX,200,mouseY,mouseX,200,mouseY-10,0,1,0);
  if(keyPressed) keyPressed();//補強一，讓按鍵按下去會一直更新
  camera(x,y,z,x+cos(radians(angle)),y,z+sin(radians(angle)),0,1,0);
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
