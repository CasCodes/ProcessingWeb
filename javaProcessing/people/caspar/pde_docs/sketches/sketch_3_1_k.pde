int x = 0;
void setup(){
  size(500, 500);
  strokeWeight(2);
}

void draw(){
  background(69);
  noFill();
  stroke(255);
  ellipse(250, 250, 400, 400);
  fill(250);
  
  arc(250, 250, 400, 400, -0.5*PI, radians(x*360/width)-0.5*PI);
  x+=5;
  
  if (x > 500){
    x = 0;
  }
}
