//week03_13_3D_pushMatrix_translate_shpere_popMatrix
void setup(){
 size(600,400,P3D); 
}

void draw(){
  background(128);
  lights(); //加上打光
  pushMatrix(); //備份矩陣
    translate(300,100); //習慣上，要往右再縮
    sphere(100);
  popMatrix(); //還原矩陣
  //要備份矩陣、還原矩陣，就不會出錯
  pushMatrix();
    translate(100,100);
    sphere(100);
  popMatrix(); //還原矩陣
}
