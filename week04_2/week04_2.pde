//week04-2_atan2_for_x_dx_dy_cos_sin
void setup(){
  size(600,300);
}
void draw()
{
  background(#C0FFEE);
  for(int x=150;x<=450;x+=300){//用for 圓圈做出兩個眼睛
    ellipse(x,150,100,100);
    //ellipse(150+25,150,50,50);
    float dx=mouseX-150,dy=mouseY-150;
    float a=atan2(dy,dx);
    ellipse(x+cos(a)*25,150+sin(a)*25,50,50);
  }
}  
