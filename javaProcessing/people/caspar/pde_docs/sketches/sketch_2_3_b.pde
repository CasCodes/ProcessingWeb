void setup(){
  size(500, 500);
}


void draw(){
  float x = mouseX;
  float y = mouseY;
  
  background(69);
  
  ellipseMode(CENTER);
  //Kopf
  fill(200, 200, 0);
  ellipse(x, y, 200, 200);
  //Augen
  ellipse(x-40, y-20, 30, 30);
  ellipse(x+40, y-20, 30, 30);
  //Mund
  arc(x, y, 150, 100, radians(0), radians(180));
}
