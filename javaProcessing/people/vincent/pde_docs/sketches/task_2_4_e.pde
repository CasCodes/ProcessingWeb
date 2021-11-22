int x = 0;
int y= 50;

void draw(){
  background(69);
  fill(#FF001E);
  ellipse(x,y,30,30);
  x++;
  if(x==width){
    x=0;
  }
}

void mousePressed(){
  y+=5;
}

void keyPressed(){
  y-=5;
}
