//week04-10_earth_
size(400,400,P3D);
PShape earth=createShape(SPHERE,100);

PImage img=loadImage("earth.jpg");
earth.setTexture(img);
shape(earth);
