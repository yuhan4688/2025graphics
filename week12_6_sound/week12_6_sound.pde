//week12-6_sound
//要有聲音，需要聲音的Library 函式庫
//Sketch-Library-Managed Libraries
//會看到 Sound | Provides a simple way to work with audio
//選他，下載
//下載完會有file-Examples點開核心函式庫
//Soundfile 點Sampleplayback
import processing.sound.*;
SoundFile mySound; //超範例，改變數名
void setup(){
  size(400,400);
  mySound=new SoundFile(this,"music.mp3"); //改黨名
  mySound.play();//播放
}
void draw(){

}
