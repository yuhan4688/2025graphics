//week06-5_push_T_box_TRT_box_pop_pop
//慢慢組出robot手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  
  fill(252,131,77);
  pushMatrix();//st4
    translate(x,y);//st5
    box(200,50,25); //st5手肘
  
  //把城市往右縮排
  
    pushMatrix();
      translate(100,0);//step01 把前一步改為100,0
      rotateZ(radians(frameCount));//step02 把剛剛的if(mousePressed) 只轉動
      translate(25,0,0);//往右推
      box(50,25,50);
    popMatrix();
  popMatrix();
  }
  float x=0,y=0;
  void mouseDragged(){
    x+=mouseX-pmouseX;
    y+=mouseY-pmouseY;
    println("x:"+x+"y"+y); 
  }
