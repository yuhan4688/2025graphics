//week14-9b_ik_p8
//用簡單的線段，來解真的ID的運算
void setup(){
  size(400,400);
  for(int i=0;i<N;i++){//把頂點從上到下放好
    p[i]=new PVector(200,350-L*i);
  }
}
int N=20,L=300/N;//本來是6個點，距離50
PVector [] p=new PVector[N];//有6個頂點
void draw(){
  background(255);
  for(int i=0;i<N;i++){//用迴圈畫點畫字
    if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);//紅色的圈圈
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);
    text("p:"+i,p[i].x+10,p[i].y);//字往右一點點
  }
  p[N-1].x=mouseX;
  p[N-1].y=mouseY;
  for(int i=N-2;i>0;i--){
    PVector v=PVector.sub(p[i+1],p[i]).normalize().mult(L);//短短的向量
    //因為長度限制為L，所以長向量 先長度變成1再乘上L
    p[i].x=p[i+1].x-v.x;//新的位置，市中心，再加上長度50的這小段
    p[i].y=p[i+1].y-v.y;//新的位置，市中心，再加上長度50的這小段
  }
  for(int i=1;i<N;i++){
    PVector v=PVector.sub(p[i],p[i-1]).normalize().mult(L);
    p[i].x=p[i-1].x+v.x;
    p[i].y=p[i-1].y+v.y;
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠也有1小點，要控制座標移動
  //line(p[4].x,p[4].y,mouseX,mouseY);
}
