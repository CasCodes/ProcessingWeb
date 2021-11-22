int x = 0;
int y = 100;

void draw(){
  line(x,0,x,y);
  x++;
  y--;
  if(x>=100){
    noLoop();
  }
}
