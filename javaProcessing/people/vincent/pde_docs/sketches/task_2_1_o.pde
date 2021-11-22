boolean drawEllipse = false;
void draw(){
  background(0);
  if(!drawEllipse)
  ellipse(width*0.5,height*0.5,width*0.6,height*0.6);
}

void keyPressed(){
  drawEllipse = !drawEllipse;
}
