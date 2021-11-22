PVector[] pos = new PVector[100];
PVector[] velo = new PVector[100];
int i = 0;

void draw(){
  background(69);
  while(i<100){
    pos[i] = new PVector(random(width),random(height));
    velo[i] = new PVector(random(1,6),0);
    i++;
  }
  for(int i2 = 0;i2<100;i2++){
    ellipse(pos[i2].x,pos[i2].y,20,20);
    pos[i2].set(pos[i2].x+velo[i2].x,pos[i2].y);
  }
}
