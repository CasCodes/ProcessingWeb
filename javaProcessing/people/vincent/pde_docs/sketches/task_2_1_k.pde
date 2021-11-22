void setup(){
  size(300,300);
}

void draw(){
  background(255);
  float a = float(width)/255;
  noStroke();
  rectMode(CENTER);
  fill(mouseX/a);
  rect(width/2,height/2,width*0.75,height*0.75);
}
