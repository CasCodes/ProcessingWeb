void setup(){
  size(500, 500);
  rectMode(CENTER);
  background(69);
}

void draw(){
}

void mousePressed(){
  fill(random(255));
  rect(random(500), random(500),random(5, 41) ,random(5, 41));
} 
