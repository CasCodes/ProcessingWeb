int r;
int g;
int b;

int x1 = 100;
int x2 = 200;
int y1 = 100;
int y2 = 200;
void setup(){
  size(500, 500);
  strokeWeight(2);
}

void draw() {
  background(69);
  noFill();
  rect(x1, y1, 250, 250);
  rect(x2, y2, 250, 250);
  
  fill(r, g, b);
  ellipse(mouseX, mouseY, 70, 70);
  
  if(x2<mouseX&&mouseX <x2+250 && y2<mouseY&&mouseY< y2+250 && x1<mouseX&&mouseX <x1+250 && y1<mouseY&&mouseY< y1+250){
    r = 0;
    g = 0;
    b = 250;
  }
  else if (x1<mouseX&&mouseX <x1+250 && y1<mouseY&&mouseY< y1+250){
    r = 250;
    g = 0;
    b = 0;
  }
  else if (x2<mouseX&&mouseX <x2+250 && y2<mouseY&&mouseY< y2+250){
    r = 0;
    g = 250;
    b = 0;
  }
  else {
    r = 69;
    g = 69;
    b = 69;
  }
}
