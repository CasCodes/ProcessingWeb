float wwidth = width/3;
int wpos = 10;
float wwpos = width-(wwidth+wpos);

int bwidth = 40;
float bpos = 0-bwidth*0.5;
float bbpos = bpos+bwidth+10;
float bbbpos = bbpos+bwidth+10;

void draw(){
  background(69);
  rect(bpos,100-mouseY,bwidth,100);
  rect(bbpos,100-mouseY,bwidth,100);
  rect(bbbpos,100-mouseY,bwidth,100);
  
  fill(255);
  rect(wpos,0+mouseY,wwidth,100);
  rect(wwpos,0+mouseY,wwidth,100);
}
