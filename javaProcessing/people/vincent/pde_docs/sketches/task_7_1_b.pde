void setup() {
  size(300, 300);
}

void draw(){
  background(#31F0FF);
  zeichneHaus();
  zeichneSonne();
}

void zeichneSonne(){
  fill(#FFF931);
  ellipse(200,100,80,80);
}

void zeichneHaus(){
  noStroke();
  fill(#FF3134);
  rect(80,200,80,80);
  triangle(80,200,160,200,120,150);
}
