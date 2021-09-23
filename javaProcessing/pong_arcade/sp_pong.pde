boolean gameOver = true;
int opText = 100;


int rx = 125;
int rxvelo = 1;
int ry = 125;
int ryvelo = -2;

int px = 100;

int a = 0;


void setup(){
  size(250,250);
}

void draw(){
  int py = height-25;
  background(#19232D);
  if(gameOver){
    textAlign(CENTER);
    textSize(30);
    text("press SPACE",width/2,height/2);
    textSize(20);
    text("(Click on screen first)",width/2,(height/2)+30);
    if(keyPressed){
      if(key == ' '){
        gameOver = false;
      }
    }
  }else{
    //BALL
    textSize(15);
    text("Punkte: "+a,50,30);
    rectMode(CENTER);
    rect(rx,ry,15,15);
    rx = rx + rxvelo;
    ry = ry + ryvelo;
    if(rx > width-10 || rx < 10){
      rxvelo = -rxvelo;
    } 
    if(ry > height-10){
      gameOver = true;
       rx = 125;
       rxvelo = 1;
       ry = 125;
       ryvelo = -2;
       px = 100;
       a = 0;
       
    }
    if(ry < 10){
      ryvelo = -ryvelo;
    }
    //Pusher
    rectMode(CORNER);
    rect(px,py,50,10);
      if(keyPressed){
        if(px < width-50){
          if(keyCode == RIGHT){
            px+=1.5;
          }
        }
        if(px >= 0){
          if(keyCode == LEFT){
            px-=1.5;
          }
       }
     }
    if(rx+7.5>px && rx+7.5<px+57.5
        && ry+7.5>py && ry+7.5<py+10){
          a++;
          ryvelo = -ryvelo;
          //rxvelo = -rxvelo;
       }
  }
}
