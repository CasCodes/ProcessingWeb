boolean show = true;

void draw(){
  background(69);
  if(show){
    fill(0);
    ellipse(width/2,height/2,30,30);
  }
}

void mousePressed(){
  show = !show;
}
