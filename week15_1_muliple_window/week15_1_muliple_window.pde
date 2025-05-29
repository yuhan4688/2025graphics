//week15-1_muliple_window
//google:processing muliple window
//file>example>Demo>muliplewindow
void setup(){
  size(200,200);
  background(255,0,0);
  WindowB Child=new WindowB();
}
void draw(){//空白的要放!!!
  
}
//以下為獨立執行
class WindowB extends PApplet{
  public WindowB(){//建構子constructor
    super();//呼叫上一層的建構子 
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
    
  }
  public void settings(){
    size(300,200);
  }
  public void setup(){
    //size(200,200);
    background(0,255,0);
  }
  public void draw(){//空白的要放!!!
  
  }
}
