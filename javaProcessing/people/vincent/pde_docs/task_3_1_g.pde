int s = 10;

void draw(){
  background(255);
  ellipse(width/2,height/2,s,s);
  s++;
  
  if(s>width){
    s = 10;
  }
}
