int c=0;
int r=255;

void draw(){
  background(c);
  fill(r);
  ellipse(50,50,40,40);
}

void keyPressed(){
  c=255;
  r=0;
}

void mousePressed(){
  c=0;
  r=255;
}
