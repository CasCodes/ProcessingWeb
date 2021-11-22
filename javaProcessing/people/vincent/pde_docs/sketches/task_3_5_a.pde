int x = 50;

void draw(){
  background(200);
  rectMode(CORNERS);
  rect(x,height-10,x+20,height-5);
  
  if(keyPressed){
    if(x<width-20){
      if(keyCode==RIGHT){
        x++;//Kreis nach rechts
      }
    }
    if(x>0){
      if(keyCode==LEFT){
        x--;//Kreis nach links
      }
    }
  }
}
