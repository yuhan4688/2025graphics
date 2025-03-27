//week06-7_push_RRT_many_TRT_inside_pop
//慢慢組出robot手臂
void setup(){
  size(500,800,P3D);//把視窗改大一點
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);//中
  
  fill(252,131,77);
  pushMatrix();
    if(mousePressed && mouseButton==RIGHT) rotateY(radians(frameCount));
    if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount));//st2右鍵旋轉
    translate(0,-100);//st1先往上0,100抬升，到中心
    box(50,200,25); 
    pushMatrix();
    translate(0,-100); //st00掛在手臂上面
      rotate(radians(frameCount)); //st00把if(mousePressed) 刪掉
      translate(100,0);
      box(200,50,25); //手臂
    
    //把城市往右縮排
    
      pushMatrix();
        translate(100,0);
        rotateZ(radians(frameCount));
        translate(25,0,0);//往右推
        box(50,25,50);
      popMatrix();
     popMatrix();
   popMatrix(); 
  }
  float x=0,y=0;
  void mouseDragged(){
    x+=mouseX-pmouseX;
    y+=mouseY-pmouseY;
    println("x:"+x+"y"+y); 
  }
