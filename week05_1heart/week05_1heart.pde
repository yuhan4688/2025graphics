//week05-1 heart
size(300,300);
stroke(255,0,0);

for(int xx=0;xx<300;xx++){//大x到300
  for(int yy=0;yy<300;yy++){//大y到300
    float x=(xx-150)/100.0; //減一半除100
    float y=-(yy-150)/100.0; //減一半除100
    float d=x*x+y*y-1;
    if(d*d*d-x*x*y*y*y <0) point(xx,yy);
  }
}
