//week12_2_guamdan_head_body_push_upuparm_uparm_hand_angle
//改自week12-1
//要加上float[] angleX=new float[10];
//要加上float[] angleY=new float[10];
PShape body,head;
PShape uparm1, upuparm1, hand1;
//week09-5複製來的
void setup(){
  size(400,400,P3D);
  body =loadShape("body.obj");
  head = loadShape("head.obj");
  //week09-5複製來的
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
}
float [] angleX=new float[10];
float [] angleY=new float[10];
int ID=0; //0:頭1:上上手臂2:上手臂3:手
void mouseDragged(){
    angleX[ID] +=radians(mouseX-pmouseX); //左右拖曳
    angleY[ID] +=radians(mouseY-pmouseY); //上下拖曳
}
void draw(){
  background(204);
  translate(200,300);
  sphere(10); //球當原點

  scale(10,-10.10); //上下反過來
  
  shape(body,0,0);
  pushMatrix();
    translate(0,22,5);
    //rotate(radians(mouseX-200));
    rotateY(angleX[0]); //X方向左右拖曳，是對Y軸旋轉
    rotateX(angleY[0]);//Y方向上下拖曳，是對X軸旋轉
    translate(0,-22,5);
    shape(head,0,0);
  popMatrix();
  
  pushMatrix();//左邊手臂
    shape(upuparm1, 0, 0); // 上上手臂
    pushMatrix();
      translate(-4.1, 19.9); // 再掛回去原本的位置
      //rotateZ(radians(mouseX));
      rotateZ(angleY[2]);
      rotateY(angleX[2]);
      translate(4.1, -19.9); // 把物體的旋轉中心, 放到座標中心
      shape(uparm1, 0, 0); // 上手臂
      pushMatrix();
        translate(-4.5, +16.9);
        //rotateX(radians(mouseY));
        rotateX(angleY[3]);
        rotateY(angleX[3]);
        translate(4.5, -16.9); // 剛剛把手移到座標中心的移動量
        //translate(mouseX/10.0, -mouseY/10.0); // 一邊移動、一邊找到數值
        //println(mouseX/10.0, -mouseY/10.0); // 印出適合的數值 ex. 4.5, -16.9
        shape(hand1, 0, 0);
      popMatrix();
    popMatrix();
  popMatrix();
}
