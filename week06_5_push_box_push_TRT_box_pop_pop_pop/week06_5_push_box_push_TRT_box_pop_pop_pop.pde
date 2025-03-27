//week06-6_push_box_push_TRT_box_pop_pop_pop
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
    box(50,200,25); //st3 手臂
    pushMatrix();//st4
    translate(x,y); //掛在手臂上面
      if(mousePressed) rotate(radians(frameCount));
      translate(100,0);//st1把手肘移動量放入
      box(200,50,25); //st5手肘
    
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
