PShape body,head;
void setup(){
  size(400,400,P3D);
  body =loadShape("body.obj");
  head = loadShape("head.obj");
}

void draw(){
  translate(200,300);
  sphere(10); //球當原點

  scale(10,-10.10); //上下反過來
  shape(body,0,0);
  shape(head,0,0);
}
