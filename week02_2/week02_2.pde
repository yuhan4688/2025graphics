//week02-2_for_if_rect
size(400,400);
background(255);
fill(238);
noStroke();
int s=400/14;//計算每個格子的大小
for(int i=0;i<14;i++){
  for(int j=0;j<14;j++){
    //rect(0,i*s*2,s,s);
    if((i+j)%2==0) rect(j*s,i*s,s,s);
  }
}
