void setup(){
  size(255,100);
}

void draw(){
  colorMode(HSB,360,100,100);
  background((360.0/width)*mouseX,mouseY,100);
}
