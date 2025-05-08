//week12_1_guamdan_head_body_push_upuparm_uparm_hand
//改自week09-2、09-5
PShape body,head;
void setup(){
  size(400,400,P3D);
  body =loadShape("body.obj");
  head = loadShape("head.obj");
}

void draw(){
  background(204);
  translate(200,300);
  sphere(10); //球當原點

  scale(10,-10.10); //上下反過來
  shape(body,0,0);
  pushMatrix();
    translate(0,22,5);
    //rotate(radians(mouseX-200));
    rotateY(radians(mouseX-200));
    //rotateX(radians(mouseY-60));
    translate(0,-22,5);
    shape(head,0,0);
  popMatrix();
}
