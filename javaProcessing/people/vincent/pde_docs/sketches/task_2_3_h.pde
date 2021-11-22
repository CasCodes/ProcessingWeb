int c=0;

void draw(){
  rectMode(CENTER);
  background(c);
  rect(50,50,40,40);
}

void keyPressed(){
  c=255;
}

void mousePressed(){
  c=0;
}
