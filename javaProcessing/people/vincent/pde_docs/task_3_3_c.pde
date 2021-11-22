int a = 50;
int x = a;
int v = 1;

void draw(){
  background(69);
  ellipse(width/2,height/2,x,x);
  x += v;
  if(x>width || x<a){
    v= -v;
  }
}
