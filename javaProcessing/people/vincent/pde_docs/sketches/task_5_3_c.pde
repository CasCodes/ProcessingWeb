void draw(){
  background(69);
  for(int y = 0;y<=mouseY;y+=5)
  for(int x = 0;x<=mouseX;x+=5){
    point(x,y);
  }
}
