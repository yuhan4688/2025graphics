//week02-4_PImage_loadImage_background_fill_println
//描圖
PImage img;
void setup(){
  size(400,400);
  img =loadImage("cute.png");
}//記得把圖片拉進程式碼裡
void draw(){
  background(img); 
  fill(255,200);//半透明的色彩 白色，alpha值式128
  println(mouseX);//把mouseX的值，在下面小黑印出來
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
}
