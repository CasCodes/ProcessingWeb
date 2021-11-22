int x = 0;
int y = 50;
boolean clicked = true;

void draw(){
  background(255);
  ellipse(x,y,20,20);
  
  if(clicked){
    x++;
    if(x>=width){
      x = 0;
    }
  }else{
    y++;
    if(y>=height){
      y = 0;
    }
  }
}

void mousePressed(){
  clicked = !clicked;
}  
