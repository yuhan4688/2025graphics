//week12_5_guamdan_left_push_pop_keyPressed_id
//改自week12-4
//PShape 宣告要複製也要複製loadShape改成2
//void setup()也要改成2
//void draw() 也複製「trt」右邊變成2，X正負相反
PShape body,head;
PShape uparm1, upuparm1, hand1;
PShape uparm2, upuparm2, hand2;

//week09-5複製來的
void setup(){
  size(400,400,P3D);
  body =loadShape("body.obj");
  head = loadShape("head.obj");
  //week09-5複製來的
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
  //week12-4
  uparm2 = loadShape("uparm2.obj");
  upuparm2 = loadShape("upuparm2.obj");
  hand2 = loadShape("hand2.obj");
}
float [] angleX=new float[10];
float [] angleY=new float[10];
int ID=0; //0:頭1:上上手臂2:上手臂3:手
void mouseDragged(){
    angleX[ID] +=radians(mouseX-pmouseX); //左右拖曳
    angleY[ID] +=radians(mouseY-pmouseY); //上下拖曳
}
void keyPressed(){ //小心會變成ㄅ，便注音
  if(key=='1') ID=1;//還沒設好上上手臂
  if(key=='2') ID=2;//ok上手臂
  if(key=='3') ID=3;//ok手
  if(key=='4') ID=4;
  if(key=='5') ID=5;
  if(key=='6') ID=6;
  if(key=='7') ID=7;
  if(key=='8') ID=8;
  if(key=='9') ID=9;
  if(key=='0') ID=0;//頭
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
    translate(-2.9,20.8);
    rotateX(angleX[1]);
    rotateY(angleY[1]);
    translate(2.9,-20.8);
    //println(mouseX/10.0,-mouseY/10.0);
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
  
    pushMatrix();//右邊手臂
    translate(2.9,20.8);
    rotateX(angleX[4]);
    rotateY(angleY[4]);
    translate(-2.9,-20.8);
    //println(mouseX/10.0,-mouseY/10.0);
    shape(upuparm2, 0, 0); // 上上手臂
    pushMatrix();
      translate(4.1, 19.9); // 再掛回去原本的位置
      //rotateZ(radians(mouseX));
      rotateZ(angleY[5]);
      rotateY(angleX[5]);
      translate(-4.1, -19.9); // 把物體的旋轉中心, 放到座標中心
      shape(uparm2, 0, 0); // 上手臂
      pushMatrix();
        translate(+4.5, 16.9);
        //rotateX(radians(mouseY));
        rotateX(angleY[6]);
        rotateY(angleX[6]);
        translate(-4.5, -16.9); // 剛剛把手移到座標中心的移動量
        //translate(mouseX/10.0, -mouseY/10.0); // 一邊移動、一邊找到數值
        //println(mouseX/10.0, -mouseY/10.0); // 印出適合的數值 ex. 4.5, -16.9
        shape(hand2, 0, 0);
      popMatrix();
    popMatrix();
  popMatrix();
}
