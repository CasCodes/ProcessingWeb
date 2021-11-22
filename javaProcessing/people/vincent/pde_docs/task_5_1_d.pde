int x = 10;
int y = 40;
int s = 20; //Change to fit more or less

void draw(){
  while(x+s<width){
    rect(x,y,s,s);
    x+=10+s;
  }
}
