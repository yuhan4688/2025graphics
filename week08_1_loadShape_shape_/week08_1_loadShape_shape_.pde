//week08-1_loadShape_shape_
size(400,400,P3D);//要有P3D的OPENGL的功能
PShape gundam=loadShape("Gundam.obj");//讀入3D模型
translate(width/2,height/2);
pushMatrix();//備份矩陣
translate(0,100);//再往下移一點
scale(10,-10,10); //把模型放大shape(10)上下要再倒過來
shape(gundam,0,0); //劃出3D模型
popMatrix();//還原矩陣
