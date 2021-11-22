int x = 0;
int s = 10;

void draw(){
  background(255);
  ellipse(x,height/2,s,s);
  x++;
  
  if(x>width){
    x = 0;
    s += 5;
  }else if(s>width || s>height){
    s = 10;
  }
}
