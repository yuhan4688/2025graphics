//week10-2_postman
//頭、身體、手臂、手肘
PImage postman,head,body;
void setup(){
  size(560,560);
  postman=loadImage("postman.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);///基礎全身郵差
  fill(255,0,255,128);//半透明的紫色
  rect(0,0,560,560);//蓋上去
  pushMatrix();
    translate(+232,+200);
    rotate(radians(mouseX));
    translate(-232,-200);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
