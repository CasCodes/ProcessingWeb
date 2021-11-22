int x = 0;
int v = 1;

void draw(){
  background(69);
  ellipse(x,height/2,25,25);
  x+=v;
  if(x>=width){
    x=0;
  }
}

void mousePressed(){
  v++;
}

void keyPressed(){
  v=1;
}
