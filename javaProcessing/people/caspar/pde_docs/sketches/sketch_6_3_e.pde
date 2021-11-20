int [] xpos = new int[10];
int [] ypos = new int[10];
int [] r = new int[10];
int [] g = new int[10];
int [] b = new int[10];
int [] xspeed = new int[10];
int [] yspeed = new int[10];
boolean [] rect = new boolean[10];

int xplayer = width/2;
int yplayer = height/2;

void setup(){
  size(500, 500);
  for (int i = 0; i<xpos.length; i++){
    xpos[i] = int(random(width));
    ypos[i] = int(random(height));
    r[i] = int(random(255));
    g[i] = int(random(255));
    b[i] = int(random(255));
    while (xspeed[i] == 0){
      xspeed[i] = int(random(-3, 3));
    }
    while (yspeed[i] == 0){
      yspeed[i] = int(random(-3, 3));
    }
  }
}

void draw(){
  background(0);
  for (int i = 0; i<xpos.length; i++){
    noStroke();
    if (rect[i] == false){
      fill(r[i], g[i], b[i], 90);
    }
    // fill with transperancy if switch pressed
    else if (rect[i] == true){
      fill(r[i], g[i], b[i], 0);
    }
    ellipse(xpos[i], ypos[i], 50, 50);
    xpos[i]+=xspeed[i];
    ypos[i]+=yspeed[i];
    
    if (xpos[i] > width || xpos[i]<0){
      xspeed[i] = -xspeed[i];
    }
    else if (ypos[i] > height || ypos[i]<0){
      yspeed[i] = -yspeed[i];
    }
  
    if (keyPressed){
      if (keyCode == RIGHT && xplayer < width){
        xplayer++;
      }
      else if (keyCode == LEFT && xplayer > 0){
        xplayer--;
      }
      else if (keyCode == UP && yplayer > 0){
        yplayer--;
      }
      else if (keyCode == DOWN && yplayer < height){
        yplayer++;
      }
    }
    // collision
    if (xplayer > xpos[i]-25 && xplayer < xpos[i]+25 && yplayer > ypos[i]-25 && yplayer < ypos[i]+25){
      rect[i] = true;
    }
  }
  //player
  fill(255, 0, 0);
  ellipse(xplayer, yplayer, 30, 30);
  
  // winning screen
  boolean won = true;
  for (int i = 0; i<rect.length; i++){
    if (rect[i] == false){
      won = false;
      break;    
    }
  }
  if (won == true){
    background(0);
    textSize(20);
    text("GEWONNEN!", 200, 200);
  }
}
