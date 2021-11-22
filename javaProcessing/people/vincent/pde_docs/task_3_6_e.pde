float ax = 60; //x-Position von Punkt a
float awidth = 30; //Breite der Linie a

float bx = 5; //x-Position des Startpunkts der Linie b
float bwidth = 40; //Breite der Linie b

void setup(){
  size(150,100);
}

void draw(){
  background(0);
  strokeWeight(4);
  
  stroke(0,255,0);
  line(ax, 50, ax+awidth,50);
  
  if(bx+bwidth>ax && bx<ax+awidth){
    stroke(255,0,0);
  }else{
    stroke(255);
  }
  
  line(bx, 60, bx+bwidth, 60);
  
  if(keyPressed){
    if(keyCode == LEFT){
      bx -= 2;
    }else if(keyCode == RIGHT){
      bx += 2;
    }
  }
}  
