//week13-2_camera_movie_eye_center_up
//電腦圖學繪圖時，會設定camera的相關係數
import processing.video.*;
Movie movie;
void setup(){
  size(720,480,P3D);//要記得P3D
  movie=new Movie(this,"street.mov");//把street.mov加進來
  movie.loop();//影片解析度720X480
}
void draw(){
  background(128);
  camera(mouseX,mouseY,500,360,240,0,0,1,0);
  //eyeX,eyeZ,eyeY,centerX,cneterY,centerZ,upX,upY,upZ
  //              影片中心點，當主角
  if(movie.available()) movie.read();//有新畫面，讀入
  image(movie,0,0);
}
