int x = 25;
int i = 0;
String[] bird = new String[x];
PVector[] pos = new PVector[x];
PVector[] velo = new PVector[x];
void setup(){
  
}
void draw(){
  background(69);
  while(i<x){
    pos[i] = new PVector(random(width),random(height));
    velo[i] = new PVector(random(1,6),0);
    bird[i] = "fat-bird.png";
    i++;
  }
  for(int i2=0;i2<x;i2++){
    PImage pic = loadImage(bird[i2]);
    pic.resize(0,25);
    image(pic,pos[i2].x,pos[i2].y);
    pos[i2].set(pos[i2].x+velo[i2].x,pos[i2].y);
  }
}
