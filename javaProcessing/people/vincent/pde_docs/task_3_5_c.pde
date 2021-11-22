int x = width-20;
int y1 = 40;
int y2 = 60;

void draw(){
  background(255);
  strokeWeight(5);
  line(x,0,x,y1);
  line(x,100,x,y2);
  
  if(keyPressed){
    if(!(y1 < 1)){
      if(keyCode == UP){
        y1--;
        y2--;
      }
    }
    if(!(y2 > 99)){
      if(keyCode == DOWN){
        y1++;
        y2++;
      }
    }
  }
}
