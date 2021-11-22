String[] woerter = {"Ich","bin","ein","Text"};
int i = 0;

void draw(){
  background(0);
  
  textAlign(CENTER);
  text(woerter[i],width/2,width/2);
}

void keyPressed(){
  if(keyCode==RIGHT){
    i++;
    i = constrain(i,0,3);
  }
  if(keyCode==LEFT){
    i--;
    i = constrain(i,0,3);
  }
}
