//week13-6_combine_all_Movie_Capture_PImage_camera_cos_sin
//把今天教的全部加進來
//把street.mov and chessboard.png加進來
import processing.video.*;
PImage img;
Movie movie;
void setup(){
  size(400,400,P3D);
  movie=new Movie(this,"street.mov");//720*480
  movie.loop();
  img= loadImage("chessboard.png");
  textureMode(NORMAL);
  video=new Capture(this,640,480);
  video.start();//要記得加「開始撥放」
}
Capture video;
void draw(){
  camera(200,200,200,200+cos(radians(frameCount)),200,200+sin(radians(frameCount)),0,1,0);
  background(128);
  if(movie.available()) movie.read();//有畫面就讀入
  beginShape();//正前方
    texture(img);
    vertex(0,0,0,0,0);//x,y,z,u,v
    vertex(400,0,0,1,0);
    vertex(400,400,0,1,1);
    vertex(0,400,0,0,1);
  endShape();
  translate(0,0,1);
  image(movie,0,0,360,240);
  if(video.available()) video.read();
  beginShape();//左方，直接放視訊
    texture(video);//把視訊當貼圖
    
    vertex(0,0,0,0,0);//x,y,z,u,v
    vertex(0,400,0,1,0);
    vertex(0,400,400,1,1);
    vertex(0,0,400,0,1);
  endShape();
  
}
