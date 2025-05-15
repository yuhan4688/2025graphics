//week13-1_processing_video
//Sketch-Library-Manage-Libraries-video Library
import processing.video.*;
//有視訊鏡頭版本(沒鏡頭會在加幾行)
Capture video;
Movie movie;
void setup(){
  size(640,960);//常見視訊
  video=new Capture(this,640,480);
  video.start();//打開視訊
  movie=new Movie(this,"street.mov");
  movie.loop();
}
void draw(){
  if(video.available()) video.read();
  image(video,0,480);//沒視訊就註解掉
  if(movie.available()) movie.read();
  image(movie,0,0);
}
