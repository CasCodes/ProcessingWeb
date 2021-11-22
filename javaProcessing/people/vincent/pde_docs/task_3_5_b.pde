int x = 50;

int ax = round(random(100));
int ay = round(random(-50,0));
int ac = round(random(255));

int bx = round(random(100));
int by = round(random(-50,0));
int bc = round(random(255));

int cx = round(random(100));
int cy = round(random(-50,0));
int cc = round(random(255));

void draw(){
  background(200);
//Eimer
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
  
  fill(ac);
  ellipse(ax,ay,20,20);
  ay++;
  if(ay>height){
    ax = round(random(100));
    ay = round(random(-50,0));
    ac = round(random(255));
  }
  
  fill(bc);
  ellipse(bx,by,20,20);
  by++;
  if(by>height){
    bx = round(random(100));
    by = round(random(-50,0));
    bc = round(random(255));
  }
  
  fill(cc);
  ellipse(cx,cy,20,20);
  cy++;
  if(cy>height){
    cx = round(random(100));
    cy = round(random(-50,0));
    cc = round(random(255));
  }
}
