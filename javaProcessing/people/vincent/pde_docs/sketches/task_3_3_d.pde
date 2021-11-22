int c = 0;
int cchange = 1;

void draw(){
  noStroke();
  fill(c);
  ellipse(width/2,height/2,width*0.85,height*0.85);
  c += cchange;
  if(c>255 || c<0){
    cchange = -cchange;
  }
}
