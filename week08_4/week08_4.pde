//week08-4_
//慢慢把切割開的模型逐一組合起來
PShape body;
PShape hand;
void setup(){
size(400,400,P3D);
//四個檔案body.obj body.mtl Diffuse.jpg AO.jpg
body=loadShape("body.obj");
hand=loadShape("head.obj");
}
void draw(){
  background(255);
  translate(width/2,height/2+100);
  sphere(10);
  scale(10,-10,10);
  pushMatrix();
  translate(0,+22.5);//掛回原本的地方
  rotate(radians(x));//轉動
  //translate(x/10,y/10);//要放在x,y座標上
  //println(x/10,y/10);//印出座標，取上面的值
  translate(0.0,-22.5); //頭的中心，有效在旋轉中心
  shape(hand,0,0);
  popMatrix();
  shape(body,0,0);
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y-=mouseY-pmouseY;
}
