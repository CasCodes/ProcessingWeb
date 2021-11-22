void setup(){
  rectMode(CENTER);
  fill(0);
  rect(50,50,80,80);
}

void draw(){
  noStroke();
  fill(255);
  ellipse(mouseX,mouseY,15,15);
}
