//
//慢慢組出robot手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);//step04 當世界中心的參考

  box(200,50,25); //手肘
  fill(252,131,77);
  pushMatrix();
  translate(x,y);//step06
   if(mousePressed) rotateZ(radians(frameCount));
    translate(25,0,0); //step3往右推，讓左端放中心
    box(50,25,50);//step01
  popMatrix();//step3
  
  }
  float x=0,y=0;
  void mouseDragged(){
    x+=mouseX-pmouseX;
    y+=mouseY-pmouseY;
    println("x:"+x+"y"+y); //ste7 印出來
  }
  
