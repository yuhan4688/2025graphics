//week02-5
//描圖，卻出錯
PImage img;
void setup(){
  size(400,400);
  img =loadImage("cute.png");
}//記得把圖片拉進程式碼裡
void draw(){
  background(img); 
  fill(255,200);//半透明的色彩 白色，alpha值式128
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
  stroke(255,0,0);//紅色的線
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
