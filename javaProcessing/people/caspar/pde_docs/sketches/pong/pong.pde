int x = 250;
int speedX = 4;
int speedY = 2;

int rectX = 250;
int rectY = 150;
boolean gameOver = false;
boolean spacePressed = false;
PImage face;
void setup(){
  size(500, 500);
  rectMode(CENTER);
  face = loadImage("kanna.png");
  face.resize(50, 50);
}
void draw(){
  background(69);
  if (rectY == 350 && rectX > x-150 && rectX < x+150){
    speedY = -speedY;
  }
  // der Schläger
  fill(255);
  rect(x, 400, 150, 30);
  if (keyPressed){
    if (keyCode == RIGHT && x < 425){
    x+=2;
    }
    else if (keyCode == LEFT && x > 75){
      x-=2;
    }
  }
  //der Ball
  //rect(rectX, rectY, 30, 30);
  image(face, rectX, rectY);
  if (keyPressed && key == 32){
    rectX = 250;
    rectY = 150;
    spacePressed = true;
    gameOver = false;
  }
  
  //start button
  if (spacePressed){
    rectX+=speedX;
    rectY+=speedY;
  }
  if (rectX >= width-50|| rectX <= 0){
    speedX = -speedX;
  }
  if (rectY <= 0){
    speedY = -speedY;
  }
  //game over
  else if (rectY >= height-50){
    spacePressed = false;
    rectX = 550;
    rectY = 550;
    gameOver = true;
  }
  if (gameOver == true){
    textSize(69);
    text("GAME OVER", 50, 150);
  }
}
