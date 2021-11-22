int kp = 40;
int i = 20;

void draw(){
  background(69);
  for(i = 20;i<=kp;i+=10){
    noFill();
    ellipse(50,50,i,i);
    if(kp<=40){
      kp=40;
    }
  }
}

void mousePressed(){
  if(mouseButton == LEFT){
    kp+=10;
  }
  if(mouseButton == RIGHT){
    kp-=10;
  }
}
