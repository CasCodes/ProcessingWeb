boolean show = true;

void draw(){
  if(show){
    fill(255);
    ellipse(mouseX,mouseY,30,30);
  }else{
    fill(0);
    rectMode(CENTER);
    /*get*/rect(mouseX,mouseY,30,30);
  }
}

void mousePressed(){
  show = !show;
}
