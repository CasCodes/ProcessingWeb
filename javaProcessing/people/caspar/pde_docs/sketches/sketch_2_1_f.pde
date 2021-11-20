void setup(){
  strokeWeight(3);
}

void draw(){
  background(69);
  
  line(mouseX, -width, mouseX, width);
  ellipse(mouseX/2, height/2, mouseX, mouseX);
}
