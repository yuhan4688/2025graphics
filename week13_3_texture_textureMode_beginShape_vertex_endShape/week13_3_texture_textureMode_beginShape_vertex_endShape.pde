//week13-3_texture_textureMode_beginShape_vertex_endShape
//再把「貼圖」，之後在加進去
PImage img;
void setup(){
  size(400,400,P3D);
  img=loadImage("chessboard.png");//圖拉進來
  textureMode(NORMAL);//有很多種模式
}//先用最簡單的「NORMAL」來畫，2個三角形，不像3D遠視的效果
void draw(){
  background(128);
  beginShape();//開始畫
  texture(img);//把圖片當貼圖
    vertex(40,80,0,0);//4個頂點vertex的四邊形，會裁出2個三角形
    vertex(320,20,1,0);
    vertex(380,360,1,1);
    vertex(160,380,0,1);
  endShape();
}
