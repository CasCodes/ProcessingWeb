int y = height/2;
int enemieY = height/2;
int enemieSpeed = 4;
int speedX = 5;
int speedY = 5;
int ballX = 250;
int ballY = 150;
int score = 0;
boolean gameRunning = false;
void setup(){
  size(500, 300);
}
void draw(){
  background(0);
  
  //frame
  strokeWeight(10);
  stroke(255);
  line(100, 50, 470, 50);
  line(100, 250, 470, 250);
  line(470, 50, 470, 250);
  
  //player
  rect(50, y, 3, 30);
  if (keyPressed && keyCode == UP){
    y-=3;
  }
  else if (keyPressed && keyCode == DOWN){
    y+=3;
  }
  else if (keyPressed && key == 32 && gameRunning == false){
    speedX = 4;
    speedY = 4;
    gameRunning = true;
  }
  //ball
  strokeWeight(1);
  ellipse(ballX, ballY, 10, 10);
  ballX += speedX;
  ballY += speedY;
  //collision with wall
  if (ballY > 250-10 || ballY < 50+10){
    speedY = -speedY;
  }
  else if (ballX > 470-10){
    speedX = -speedX;
  }
  //ball leaves play
  else if (ballX < 0){
    speedX = 0;
    speedY = 0;
    ballX = 250;
    ballY = 150;
    score--;
    gameRunning = false;
  }
  //collision with player
  else if (ballX < 60 && ballY > y-20 && ballY < y+35){
    speedY = -speedY;
    speedX = -speedX;
    score++;
  }
  textSize(15);
  text("score: " + score, 20, 20);
  
  //enemie
  rect(350, enemieY, 5, 35);
  enemieY+=enemieSpeed;
   if (ballX < 350+15 && ballX > 350-15 && ballY > enemieY-35 && ballY < enemieY+35){
     speedX = -speedX;
     speedY = -speedY;
  }
  if (enemieY > 250-35 || enemieY < 50){
    enemieSpeed = -enemieSpeed;
  }
}
