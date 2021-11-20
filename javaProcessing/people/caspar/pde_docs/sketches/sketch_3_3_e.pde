int a = 0;
int c = 250;

void setup() {
  size(500, 500);
  strokeWeight(3);
}
void draw() {
  background(69);
  line(350,0, 350, 500);
  line(150,0, 150, 500);
  
  fill(250, c, c);
  ellipse(a, 250, 100, 100);
  a+=2;
  if (a > width){
    a = 0;
  }
  if (a > 150 && a < 350){
    c = 0;
  }
  else{
    c = 255;
  }
}
