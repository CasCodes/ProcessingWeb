float x=0;

void draw(){
  background(255);
  ellipse(x,50,30,30);
}

void mousePressed(){
  x+=0.5;
}
