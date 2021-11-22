int s = 20;

void draw(){
  background(255);
  fill(255);
  ellipse(mouseX,mouseY,s,s);
  if(mouseX > width/2){
    fill(0);
    rectMode(CENTER);
    rect(mouseX,mouseY,s,s);
  }
}
