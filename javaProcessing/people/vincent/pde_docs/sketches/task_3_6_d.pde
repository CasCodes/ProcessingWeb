float ax = 50; //x-Position von Punkt a

float bx = 5; //x-Position des Startpunkts der Linie b
float bwidth = 30; //Breite der Linie b

void draw(){
  background(0);
  strokeWeight(5);
  
  stroke(0,255,0);
  point(ax,50);
  
  if(bx<50 && bx+bwidth>50){
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
