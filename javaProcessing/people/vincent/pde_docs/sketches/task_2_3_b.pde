int x,y;
void draw(){
  x=mouseX;
  y=mouseY;
  background(0);
  ellipseMode(CENTER);
  fill(#F6FF00);
  ellipse(x,y,55,55);
  ellipseMode(CORNER);
  ellipse(x-16,y-16,12.5,12.5);
  ellipse(x+3,y-16,12.5,12.5);
  bezier(x+15.5,y,x+15.5,y+15,x-16,y+15,x-16,y);
}  
