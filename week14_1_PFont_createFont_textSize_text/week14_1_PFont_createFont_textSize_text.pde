//week14_1_PFont_createFont_textSize_text
//學過了PImage PVector P...
size(300,300);
textSize(50);
text("hello",10,50);//預設的字形
PFont font=createFont("Times New Roman",50);
textFont(font);//換字型
text("hello",10,100);//放下面一點
//print(PFont.list());
//改用for迴圈把所有的字型分行印出來
for(String name : PFont.list()) println(name);
