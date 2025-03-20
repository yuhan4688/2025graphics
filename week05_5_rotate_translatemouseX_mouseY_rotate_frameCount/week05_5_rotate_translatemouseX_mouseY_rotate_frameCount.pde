//week05-5_rotate_translatemouseX_mouseY_rotate_frameCount
//比較rotate與translate的順序
void setup(){
  size(400,400);
 }
void draw(){
  background(204);
  //測試將下列兩行調一下順序
  //會發現，化之前的translate()才有效果
  //兩行順序不同，會發現一個是自轉，一個是公轉
  //電腦圖學理，畫圖時，會照著之前累積的移動、旋轉來放東西
  rotate(radians(frameCount));
  translate(mouseX,mouseY);//移到mouse所在的位子
  
  rect(-50,-5,100,10); //寬度100的棒子
}
