int s = 0;
void setup(){
  size(500, 500);
}

void draw() {
  background(69);
  noFill();
  ellipse(250, 250,s, s);
  s+=5;
  if (s > 500){
    s = 0;
  } 
}
