//week05-7_manypushMatrix_popMatrix
void setup(){
  size(500,500);
}
void draw(){
  background(204);
  for(int x=50;x<500;x+=100){//每個距離100
    for(int y=50;y<500;y+=100){//每個距離100
      pushMatrix();//今天主角(在圖學理會往右縮)
        translate(x,y);//移動到對應的xy座標
        rotate(radians(frameCount));//旋轉
        rect(-50,-5,100,10);//長度100
      popMatrix();//今天主角
    }
  }
}
