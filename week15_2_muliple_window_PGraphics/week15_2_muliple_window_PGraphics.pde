//week15-2_muliple_window_PGraphics
PGraphics pg;//在外面宣告，不同人都可以使用
void setup(){
  size(400,400,P3D);//主要視窗
  pg=createGraphics(200,200,P3D);//有一個小的
}
void draw(){
  background(255,0,0);//紅色大背景
  pg.beginDraw();
  pg.background(0,255,0);//綠色小背景
  pg.translate(100,100);
  pg.rotateY(radians(frameCount));
  pg.box(100);
  pg.endDraw();
  
  image(pg,0,0);
}
