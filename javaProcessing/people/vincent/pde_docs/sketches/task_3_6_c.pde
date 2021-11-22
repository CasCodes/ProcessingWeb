int x = 50;
int ax = round(random(20,width-20));
int ay = round(random(-100,0));
int ac = round(random(255));

int bx = round(random(20,width-20));
int by = round(random(-100,0));
int bc = round(random(255));

int cx = round(random(20,width-20));
int cy = round(random(-100,0));
int cc = round(random(255));

int punkte = 0; 
int leben = 0;
void setup(){
  size(150,150);
}

void draw(){
  background(200);
  //Eimer
  fill(255);
  rectMode(CORNERS);
  rect(x,height-20,x+40,height-5);
  
  if(keyPressed){
    if(x<width-40){
      if(keyCode == RIGHT){
        x++;
      }
    }
    if(x>0){
      if(keyCode == LEFT){
        x--;
      }
    }
  }
  //1.Ball
  fill(ac);
  ellipse(ax,ay,20,20);
  ay++;
  if(ay>height){
    ax = round(random(20,width-20));
    ay = round(random(-100,0));
    ac = round(random(255));
    leben--;
  }
  if(ax > x && ax<x+40 &&
     ay > height-30){
       ax = round(random(20,width-20));
       ay = round(random(-100,0));
       ac = round(random(255));
       punkte++;
     }
  //2.Ball
  fill(bc);
  ellipse(bx,by,20,20);
  by++;
  if(by>height){
    bx = round(random(20,width-20));
    by = round(random(-100,0));
    bc = round(random(255));
    leben--;
  }
  if(bx > x && bx<x+40 &&
     by > height-30){
       bx = round(random(20,width-20));
       by = round(random(-100,0));
       bc = round(random(255));
       punkte++;
     }
  
  fill(cc);
  ellipse(cx,cy,20,20);
  cy++;
  if(cy>height){
    cx = round(random(20,width-20));
    cy = round(random(-100,0));
    cc = round(random(255));
    leben--;
  }
  if(cx > x && cx<x+40 &&
     cy > height-30){
       cx = round(random(20,width-20));
       cy = round(random(-100,0));
       cc = round(random(255));
       punkte++;
     }
  fill(0);
  text("Punkte:",5,20);
  text(punkte,55,20);
  
  text("Leben:",85,20);
  text(leben,130,20);
}
