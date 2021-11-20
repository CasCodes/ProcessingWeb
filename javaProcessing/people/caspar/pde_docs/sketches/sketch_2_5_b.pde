// Position/Größe des Rechtecks
float x = 300;
float y = 300;
float w = 150;
float h = 150;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  rect(x, y, w, h);
  fill(255);
  ellipse(mouseX, mouseY, 10, 10); // Mauszeiger
  
  fill(255);
  ellipse(mouseX*0.3+300, (mouseY*0.3)+300, 5, 5);
}
