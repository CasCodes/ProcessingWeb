int num = 1;
void setup(){
  size(500, 500);
}
void draw(){
  background(69);
  noFill();
  int r = 50;
  for (int i = 0; i < num; i++){
    ellipse(250, 250, r, r);
    r+=20;
  }
}
void mousePressed(){
  if (mouseButton == LEFT){
     num+=1;
  }
  else if (mouseButton == RIGHT && num > 1){
    num-=1;
  }
}
