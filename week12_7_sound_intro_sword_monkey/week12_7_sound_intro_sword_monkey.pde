//week12-7_sound_intro_sword_monkey
import processing.sound.*;
SoundFile sndInGame,sndIntro,sndMonkey,sndSword;
void setup(){
  size(400,400);
  sndInGame=new SoundFile(this,"In Game Music.mp3");
  sndIntro=new SoundFile(this,"Intro Song_Final.mp3");
  sndMonkey=new SoundFile(this,"Monkey 1.mp3"); 
  sndSword=new SoundFile(this,"sword slash.mp3"); 
}
boolean playIntro=true;
void keyPressed(){
  if(playIntro){
    sndIntro.stop();
    sndInGame.play();
    playIntro=false;
  }else{
    sndInGame.stop();
    sndIntro.play();
    playIntro=true;
  }
}
void mousePressed(){
  if(mouseButton==LEFT) sndSword.play();
  if(mouseButton==RIGHT) sndMonkey.play();
}
void draw(){//一定要加才會更新程式50fps
}
