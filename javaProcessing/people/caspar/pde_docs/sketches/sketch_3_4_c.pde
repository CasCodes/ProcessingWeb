boolean isSq = false;
void setup(){
  background(0);
  size(500, 500);
  rectMode(CENTER);
}
void draw(){
  if (isSq == false){
    fill(250);
    ellipse(mouseX, mouseY, 100, 100);
  }
  if (isSq == true){
    fill(0);
    rect(mouseX, mouseY, 100, 100);
  }
}
void mousePressed(){
  if (isSq == true){
    isSq = false;
  }
  else{
    isSq = true;
  }
}
