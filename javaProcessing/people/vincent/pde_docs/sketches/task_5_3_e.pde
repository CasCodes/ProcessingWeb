int num = 5;

void draw(){
  background(69);
  for(int y = mouseY-30;y<=mouseY+25;y+=10)
  for(int x = mouseX-30;x<=mouseX+25;x+=10)
    rect(x,y,10,10);
}
