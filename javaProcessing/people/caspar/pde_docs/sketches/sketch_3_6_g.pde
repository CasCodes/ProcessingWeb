int lineY = 250;
int rectX;
float rectY = random(10, 490);
int c = 0;
int score = 0;
void setup(){
  size(500, 500);
  strokeWeight(15);
}
void draw(){
  background(69);
  //Das Tor
  stroke(c,0,0);
  line(400, 0, 400, lineY);
   line(400, 500, 400, lineY+100);
  if (keyPressed && keyCode == DOWN){
    lineY+=5;
  }
  if (keyPressed && keyCode == UP){
    lineY-=5;
  }
  //Der Ball
  fill(0);
  rect(rectX, rectY, 10, 10);
  rectX+=6;
  if (rectX>500){
    rectX = 0;
    rectY = random(10, 490);
  }
  //Kollision
  if (rectX == 390 && rectY < lineY || rectX == 390 && rectY > lineY+100){
    c = 255;
    score--;
  }
  else if (rectX == 390 && rectY > lineY || rectX == 390 && rectY < lineY+100){
    score++;
  } 
  else{
    c = 0;
  }
  textSize(20);
  text(score, 30, 30);
  //Reset score
  if (keyPressed && key == 32){
    score = 0;
  }
}
