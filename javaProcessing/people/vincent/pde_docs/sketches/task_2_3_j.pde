float x;
float y;

void draw(){
  background(69);
   ellipse(x,y,10,10);
}

void mousePressed(){
  x=random(width);
  y=random(height);
}
