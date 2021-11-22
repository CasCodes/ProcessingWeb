int x = 0;

void draw(){
  background(255);
  for(int i = 1; i <= 3; i++){
    noFill();
    ellipse(mouseX,mouseY, i*20, i*20);
  }
}
