//Gate vars
int gateX = width-20;
int gateY1 = 40;
int gateY2 = 70;
//rect vars
int rectX = 0;
int rectY = round(random(10,91));
int gateC = 0;
//text vars
int punkte = 0;


void draw(){
  if(punkte == -1){
    textAlign(CENTER);
    textSize(15);
    text("Press SPACE",width/2,height/2);
    
    if(keyPressed){
      if(key == ' '){
        punkte = 0;
      }
    }
  }else{
  //Gate
  background(255);
  stroke(gateC);
  strokeWeight(5);
  line(gateX,0,gateX,gateY1);
  line(gateX,100,gateX,gateY2);
  
  if(keyPressed){
    if(!(gateY1 < 1)){
      if(keyCode == UP){
        gateY1--;
        gateY2--;
      }
    }
    if(!(gateY2 > 99)){
      if(keyCode == DOWN){
        gateY1++;
        gateY2++;
      }
    }
  }
  strokeWeight(1);
  fill(0);
  rectMode(CENTER);
  stroke(0);
  rect(rectX,rectY,10,10);
  rectX++;
  
  if(rectX>width-5){
    rectX = 0;
    rectY = round(random(10,91));
    punkte++;
  }
  if(rectX+10 > gateX-3 && !(rectY>gateY1 && rectY<gateY2)){
    gateC = #FF0000;
  }
  if(!(rectY>gateY1 && rectY<gateY2) && rectX+5 > gateX){
    rectX = 0;
    rectY = round(random(10,91));
    gateC = 0;
    punkte--;
  }
  textSize(10);
  text(punkte,25,15);
  
}
}
