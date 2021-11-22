int x1 = 30;
int y1 = 10;
int x2 = 10;
int y2 = 40;

void draw(){
  background(255);
  noFill();
  rect(x1, y1, 50, 50);
  rect(x2, y2, 50, 50);
  if(x1<=mouseX && mouseX <= 60 &&
  40 <= mouseY && mouseY <= 60){
    fill(0,0,255);
  }
  else if (x2 <= mouseX && mouseX <= x2 + 50 &&
  y2 <= mouseY && mouseY <= y2 + 50){
    //...wenn Mauszeiger in Rechtek => grün
    fill(0,255,0);
  }else if (x1 <= mouseX && mouseX <= x1 + 50 &&
  y1 <= mouseY && mouseY <= y1 + 50){
    //...wenn Mauszeiger im Rechtek => rot
    fill(255,0,0);
  }
  else{
    //...sonst => weiss
    noFill();
  }
  ellipse(mouseX,mouseY,20,20);
}
