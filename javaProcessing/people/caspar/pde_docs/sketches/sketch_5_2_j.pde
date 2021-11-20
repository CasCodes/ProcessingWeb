void setup(){
  size(500, 500);
  strokeWeight(10);
}
void draw(){
  translate(0, 500);
  for(int x = 0; x<500; x+=22){
    point(x, -pow(x/22, 2));
  }
}
