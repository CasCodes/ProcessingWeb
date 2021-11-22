int x = 0;

void draw(){
  background(69);
  ellipse(x,50,30,30);
  x++;
  if(x==width){
    x=0;
  }
}
