//week14-2_PFont_chinese_font_textFont_cursor
PFont font1,font2,font3;
void setup(){
  size(300,300);
  font1=createFont("Times New Roman Bold Italic",50);
  font2=createFont("微軟正黑體 Bold",50);
  font3=createFont("elffont-rock.otf",50);//注音文精靈字體
}
void draw(){
  background(0);
  cursor(CROSS);
  fill(255);
  textFont(font1);
  text("Hello  中文",X+20,mouseY-20);
  fill(#7673E8);//選你要的文字顏色
  textFont(font2);
  text("Hello  中文",X+20,mouseY+50);
  textFont(font3);
  text("ㄅㄆㄇ",X+20,mouseY+100);
}
