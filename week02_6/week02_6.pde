//week02-5
//要用資料結構，把歷史軌跡記起來
ArrayList<Integer> x =new ArrayList<Integer>();//新建資料結構
ArrayList<Integer> y =new ArrayList<Integer>();
PImage img;
void setup(){
  size(400,400);
  img =loadImage("cute.png");
}//記得把圖片拉進程式碼裡
void draw(){
  background(img); 
  fill(255,200);//半透明的色彩 白色，alpha值式128
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
  for(int i=1;i<x.size();i++){
    line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
