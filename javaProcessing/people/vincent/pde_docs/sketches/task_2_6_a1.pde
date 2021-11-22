int x = 0;
int y = 0;

void draw(){
  line(x,0,x,y);
  x+=2;
  y++;
  if(x>=100){
    noLoop();
  }
}
