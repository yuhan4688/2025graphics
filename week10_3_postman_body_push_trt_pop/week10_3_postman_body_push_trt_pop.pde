//week10-3_postman_body_push_trt_pop
//頭、身體、手臂、手肘
PImage postman,head,body,uphand1,hand2;
void setup(){
  size(560,560);
  postman=loadImage("postman.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  uphand1=loadImage("uparm1.png");
  hand2=loadImage("hand1.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);///基礎全身郵差
  fill(255,0,255,128);//半透明的紫色
  rect(0,0,560,560);//蓋上去
  pushMatrix();
    translate(185,261);
    rotate(radians(mouseX));
    translate(-185,-261);
    //translate(mouseX, -mouseY); // 邊移動 邊找數值
    //println(mouseX, -mouseY);
    image(uphand1,0,0);
      pushMatrix();
        translate(116,265);
        rotate(radians(mouseX));
        translate(-116,-265);
        //translate(mouseX, -mouseY); // 邊移動 邊找數值
        //println(mouseX, -mouseY);
        image(hand2,0,0);
    popMatrix();
  popMatrix();

  pushMatrix();
    translate(236,+231);
    rotate(radians(mouseX));
    translate(-236,-231);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
