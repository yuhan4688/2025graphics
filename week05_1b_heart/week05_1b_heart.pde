//week05-1b heart
size(300,300);
stroke(255,0,0);
translate(150,150);
for(int xx=-150;xx<150;xx++){//大x到300
  for(int yy=-150;yy<150;yy++){//大y到300
    float x=xx/100.0; //減一半除100
    float y=-yy/100.0; //減一半除100
    float d=x*x+y*y-1;
    if(d*d*d-x*x*y*y*y <0) point(xx,yy);
  }
}
