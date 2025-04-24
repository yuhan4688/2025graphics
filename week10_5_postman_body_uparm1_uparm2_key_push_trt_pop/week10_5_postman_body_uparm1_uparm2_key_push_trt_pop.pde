//week10-5_postman_body_uparm1_uparm2_key_push_trt_pop
//頭、身體、手臂、手肘
PImage postman,head,body,uphand1,hand2,uparm2,hand3;
float [] angle=new float[20];
int ID=0;
void mouseDragged(){
  angle[ID]+=mouseX-pmouseX;
}
void keyPressed(){
if(key=='1') ID=1;
if(key=='2') ID=2;
if(key=='3') ID=3;
if(key=='4') ID=4;
if(key=='5') ID=5;
if(key=='6') ID=6;
if(key=='0') ID=0;
}

void setup(){
  size(560,560);
  postman=loadImage("postman.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  uphand1=loadImage("uparm1.png");
  hand2=loadImage("hand1.png");
  uparm2=loadImage("uparm2.png");
  hand3=loadImage("hand2.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);///基礎全身郵差
  fill(255,0,255,128);//半透明的紫色
  rect(0,0,560,560);//蓋上去
  pushMatrix();
    translate(185,261);
    rotate(radians(angle[1]));
    translate(-185,-261);
    //translate(mouseX, -mouseY); // 邊移動 邊找數值
    //println(mouseX, -mouseY);
    image(uphand1,0,0);
      pushMatrix();
        translate(116,265);
        rotate(radians(angle[2]));
        translate(-116,-265);
        //translate(mouseX, -mouseY); // 邊移動 邊找數值
        //println(mouseX, -mouseY);
        image(hand2,0,0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(290,262);
    rotate(radians(angle[3]));
    translate(-290,-262);
    //translate(mouseX, -mouseY); // 邊移動 邊找數值
    //println(mouseX, -mouseY);
    image(uparm2,0,0);
      pushMatrix();
        translate(357,259);
        rotate(radians(angle[4]));
        translate(-357,-259);
        //translate(mouseX, -mouseY); // 邊移動 邊找數值
        //println(mouseX, -mouseY);
        image(hand3,0,0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(236,+231);
    rotate(radians(angle[0]));
    translate(-236,-231);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
