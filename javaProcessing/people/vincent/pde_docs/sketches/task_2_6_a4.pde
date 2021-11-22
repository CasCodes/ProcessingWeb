int x = 0;
int y = 0;
int c = 0;

void draw(){
  colorMode(HSB,260,100,100);
  stroke(0,0,c);
  line(x,0,x,y);
  x++;
  y++;
  c++;
  if(x>=100){
    noLoop();
  }
}
