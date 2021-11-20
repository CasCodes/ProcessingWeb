void setup(){
  
  strokeWeight(3);
}

void draw(){
  background(69);
  
  line(-height, mouseY, height, mouseY);
  line(mouseX, -width, mouseX, width);
}
