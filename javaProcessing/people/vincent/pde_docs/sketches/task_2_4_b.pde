int x = 30;

void draw(){
  background(69);
  translate(50,50);
  rectMode(CENTER);
  rect(0,0,x,x);
}

void mousePressed(){
  x+=5;
}

void keyPressed(){
  x-=5;
}
