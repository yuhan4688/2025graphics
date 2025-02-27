//week02-8
//想要把畫出來的駔標變成我們的程式碼
ArrayList<Integer> x,y;
ArrayList<ArrayList<Integer>> xx=new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy=new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img =loadImage("cute.png");
}//記得把圖片拉進程式碼裡
void draw(){
  background(img); 
  fill(255,200);//半透明的色彩 白色，alpha值式128
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
  for(int I=0;I<xx.size();I++){
    ArrayList<Integer> x=xx.get(I);
    ArrayList<Integer> y= yy.get(I);
    for(int i=1;i<x.size();i++){
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
}
void keyPressed(){//小心注音輸入法，要英文輸入才可以
  if(key=='s' || key=='S'){//如果英文小寫or大寫s向save的意思
    for(int I=0;I<xx.size();I++){//取出裡面小的資料結構
      ArrayList<Integer> x=xx.get(I);
      ArrayList<Integer> y=yy.get(I);
      println("beginShape();");
      for(int i=1;i<x.size();i++){//小的照畫
        
        println(" vertex("+ mouseX+","+mouseY+");");
      }//改在keyPressed()按下s或S時，在全部印
      println("endShape();");  
  }
  } 
}
void mouseDragged(){
  //println("vertex();");
  //println("vertex("+ mouseX+","+mouseY+");");不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void draw1(){
  beginShape();
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
 vertex(225,242);
endShape();
}
void mousePressed(){
  x= new ArrayList<Integer>(); xx.add(x);
  y= new ArrayList<Integer>(); yy.add(y);
}
