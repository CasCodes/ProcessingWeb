int radius = 25;
int movement = 0;

void setup() {
  size(500,500);
  strokeWeight(3);
  translate(250, 250);
  
}

void draw() {
  background(69);
  
  fill(70, 100, 60);
  ellipse(250, 250, 50, 50);
  fill(0, 0, 0, 0);
  float y = height/2 -cos(radians(movement)) * 150;
  float x = height/2 + sin(radians(movement)) * 150;
  movement ++;
  
  fill(50, 0, 200);
  ellipse(x, y, 30, 30);
  float y2 = y -cos(radians(movement*5)) * 50;
  float x2 = x + sin(radians(movement*5)) * 50;
  
  fill(200, 0, 0);
  ellipse(x2, y2, 30, 30);
}
