boolean isRunning = false;
//player
PImage player;
int xPlayer = width/2;
int score = 0;
//bullet
int bullets = 10;
int bulletY = height+10;
int bulletX;
int bulletSpeed = 0;
boolean inFlight = false;
//alien
PImage alien;
PVector aliens[] =  new PVector[4];
float alienSpeed[] = new float [4];
boolean online[] = new boolean[4];

int c = 255;

void setup() {
  size(175, 125);
  alien = loadImage("alien.png");
  player = loadImage("laser.png");

  alienGenerator();
}

void draw(){
  background(0, 0, 0, 0);

  //Start menu
  if (!isRunning){
    for (int j = 0; j<4;j++){
      alienSpeed[j] = 0;
    }
    fill(255);
    text("<SPACE> to start",30 , height/2);
  }
  if (keyPressed && !isRunning){
    if (key == 32){
      isRunning = true;
      
      alienGenerator();
      
      for (int j = 0; j<4;j++){
        alienSpeed[j] = 0.5;
      }
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
  
  // Aliens
  for (int i = 0; i<4; i++){
    image(alien, aliens[i].x, aliens[i].y);
    
    if (online[i] == true){
    
      aliens[i].x += alienSpeed[i];
      
      //left
      if (aliens[i].x < 10) {
        alienSpeed[i] = -alienSpeed[i];
        aliens[i].y +=10;
      }
      //right
      else if (aliens[i].x > 130){
        alienSpeed[i]+=0.3;
        alienSpeed[i] = -alienSpeed[i];
        aliens[i].y += 10;
      }
      // bottom
      if (aliens[i].y > 95){
      alienSpeed[i] = 0;
      isRunning = false;
      aliens[i].x = width/2;
      aliens[i].y = 20;
      }
    }
  }
  
  //Bullet
  bulletY+=bulletSpeed;
  fill(255, 0, 0);
  
  if (!inFlight){
    bulletX = xPlayer+15;
  } //Space pressed
  ellipse(bulletX, bulletY, 6, 6);
  if (keyPressed && isRunning == true){
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
  
  for (int c = 0; c<4; c++) {
    if (bulletY <  aliens[c].y+10 && bulletY > aliens[c].y && bulletX > aliens[c].x-20 && bulletX < aliens[c].x-20
     || bulletY <  aliens[c].y+10 && bulletY > aliens[c].y && bulletX > aliens[c].x && bulletX < aliens[c].x+30
     || bulletY <  aliens[c].y+10 && bulletY > aliens[c].y && bulletX > aliens[c].x+20 && bulletX < aliens[c].x+20
     )
     {
      bulletY = height-10;
      inFlight = false;
      bulletSpeed = 0;
      
      if (bullets > 0){
        bullets--;
      }
      
      online[c] = false;
      aliens[c].x = -50;
      aliens[c].y = -50;
      alienSpeed[c] = 0;
      
      score++;
    }  
  }//close for
  // winning
  if (score >= 4){
    isRunning = false;
  }
  fill(250);
}

// spawn aliens
void alienGenerator() {
  for (int i = 0; i<4; i++){
    aliens[i] = new PVector(10 +20*i , random(50));
    alienSpeed[i] = 0;
    online[i] = true;
  }
}