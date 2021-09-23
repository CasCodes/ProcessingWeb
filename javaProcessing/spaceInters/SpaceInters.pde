PImage alien;
PImage player;
int xPlayer = width/2;
int xAlien = width/2;
int yAlien = 20;
int AlienSpeed = 1;
int bulletY = height+10;
int bulletX;
int bulletSpeed = 0;
boolean inFlight = false;
int score = 0;
int bullets = 10;
boolean isRunning = false;

int c = 255;

void setup() {
  size(175, 125);
  alien = loadImage("alien.png");
  player = loadImage("laser.png");
}

void draw(){
  background(0, 0, 0, 0);

  //Start menu
  if (!isRunning){
    AlienSpeed = 0;
    fill(255);
    text("<SPACE> to start",30 , height/2);
  }
  if (keyPressed && !isRunning){
    if (key == 32){
      isRunning = true;
      AlienSpeed = 1;
      score = 0;
      bullets = 10;
    }
  }
  fill(255);
  text("score: " + score, 10, 10);
  text("bullets: " + bullets, 110, 10);
  //Player
  image(player, xPlayer, height-15);
  if (keyPressed){
    if (keyCode == RIGHT && xPlayer < 140){
    xPlayer+=1;
    }
    else if (keyCode == LEFT && xPlayer > 0){
      xPlayer-=1;
    }
  }
  
  //Aliens Row 1
  xAlien+=AlienSpeed;
    //left
  image(alien, xAlien-50, yAlien);
  if (xAlien < 40) {
    AlienSpeed = -AlienSpeed;
    yAlien+=5;
  }
    //center
  image(alien, xAlien, yAlien);
    //right
  image(alien, xAlien+50, yAlien);
  if (xAlien > 110) {
    AlienSpeed = -AlienSpeed;
    yAlien+=5;
  }
  
  //Bullet
  bulletY+=bulletSpeed;
  fill(255, 0, 0);
  
  if (!inFlight){
    bulletX = xPlayer+15;
  } //Space pressed
  ellipse(bulletX, bulletY, 6, 6);
  if (keyPressed){
    if (key == 32 && bullets>0 && isRunning){
      bulletX = xPlayer+15;
      inFlight = true;
    }
    
    if (inFlight){
      bulletSpeed = -2;
    }
  }
  if (bulletY < -10){
    inFlight = false;
    bulletY = height-10;
    bulletSpeed = 0;
    bullets--;
  }
  
  //Collision
  fill(255, 0, 0, 70);
  //hitbox 1
  rect(xAlien-50, yAlien+20, 30, -10);
  //hitbox 2
  rect(xAlien, yAlien+20, 30, -10);
  //hitbox 3
  rect(xAlien+50, yAlien+20, 30, -10);
  
  if (bulletY <  yAlien+10 && bulletY > yAlien && bulletX > xAlien-50 && bulletX < xAlien-20
   || bulletY <  yAlien+10 && bulletY > yAlien && bulletX > xAlien && bulletX < xAlien+30
   || bulletY <  yAlien+10 && bulletY > yAlien && bulletX > xAlien+50 && bulletX < xAlien+80
   ) {
    bulletY = height-10;
    inFlight = false;
    bulletSpeed = 0;
    score++;
    if (bullets > 0){
      bullets--;
    }
  }
  fill(250);
  if (yAlien > 85){
    AlienSpeed = 0;
    isRunning = false;
    xAlien = width/2;
    yAlien = 20;
  }

}
