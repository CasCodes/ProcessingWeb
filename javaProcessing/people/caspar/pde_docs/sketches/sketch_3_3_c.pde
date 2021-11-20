int a = 50;
int g = 2;

void setup() {
  strokeWeight(3);
  size(500, 500);
}

void draw() {
  background(69);
  ellipse(width/2, height/2, a, a);
  a += g;
  //println(a);
  if (a >= width || a < 50){
    g = -g;
  }
}
