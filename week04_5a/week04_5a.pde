//week04-5a_rotateZ_translate
void setup(){
  size(400,400,P3D);
  }
void draw(){
  background(128);
  translate(width/2,height/2);
  rotateZ(radians(frameCount));//對Z旋轉
  //translate(0,-50);//把下端，移到中心
  box(10,100,10);//可轉動的長條
}
