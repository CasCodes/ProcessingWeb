int x = 0;
int y = 0;

void setup(){
  size(500, 500);
  strokeWeight(1);
  background(200);
}
void draw(){
  stroke(0+(x*0.4));
  line(x, 0, x, y);
  x ++;
  y ++;
}
