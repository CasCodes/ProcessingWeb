void setup(){

  rectMode(CENTER);
  strokeWeight(3);
}

void draw(){
  background(69);
  
  int size = mouseX;
  fill(0, 0, 69);
  rect(width/2, height/2, size, size);
}