void draw(){
  background(69);
  textAlign(CENTER);
  textSize(20);
  text(round(frameCount/60),50,50);
}

void mousePressed(){
  frameCount = 0;
}
