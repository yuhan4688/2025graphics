//week05-3b atan2_dy_dx_text_radians_degrees
//degrees vs. radians 結合 week04-1 amnd week04-2
void setup(){
  size(400,400);
}
void draw(){
  background(128);
  line(200,200,400,200);
  line(200,200,mouseX,mouseY);
  float dx=mouseX-200,dy=mouseY-200;
  float a=atan2(dy,dx);//神奇的三角函式，可找到arc弧的radians
  if(a<0) arc(200,200,200,200,a,0,PIE);
  else arc(200,200,200,200,0,a,PIE);//把算出來的arc 的radians拿來用
  textSize(30);
  text("radians"+a,100,100); //radians 弧度/經度
  text("degrees"+degrees(a),100,130);
}
