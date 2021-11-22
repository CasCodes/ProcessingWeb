int x = 0;
int c = 0;

void draw(){
  background(c);
  fill(#FF001E);
  ellipse(x,50,30,30);
  x++;
  if(x==width){
    x=0;
  }
}

void mousePressed(){
  c=255;
}

void keyPressed(){
  c=0;
}
