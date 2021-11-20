float deg = 25;
int rad = height/8;
void setup() {
  size(500,500);
  strokeWeight(20);
  translate(250, 250);
  background(69);
  
}

void draw() {
  fill(0, 0, 0, 0);
  while(rad<212){
  //*0.72 um mouseY in Teile von 360 umzuwandeln * 200 für länge
    float y = rad * cos(radians(deg*0.72)) + 250;
    float x = rad * sin(radians(deg*0.72)) + 250;
    deg+=12;
    rad++;
    point(x, y);
  }
}
