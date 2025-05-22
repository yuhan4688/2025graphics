//week14-3_inverse_kinematics_p1
void setup(){
  size(400,400);//先用2D
}
float [] angle=new float[5]; //有五個關節
void draw(){
  background(255);
  translate(200,350);
  ellipse(0,0,12,12);
  
  pushMatrix();
    rotate(radians(angle[0]));//2D對Z軸轉
    rect(0,-5,50,10);
  popMatrix();
}
void mouseDragged(){
  angle[0]+=mouseX-pmouseX;
}
