int [] xpos = new int[10];
int [] ypos = new int[10];
int [] r = new int[10];
int [] g = new int[10];
int [] b = new int[10];
int [] xspeed = new int[10];
int [] yspeed = new int[10];

void setup(){
  size(500, 500);
    //fill arrays
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
    fill(r[i], g[i], b[i]);
    ellipse(xpos[i], ypos[i], 20, 20);
    xpos[i]+=xspeed[i];
    ypos[i]+=yspeed[i];
    
      //wall collision
    if (xpos[i] > width || xpos[i]<0){
      xspeed[i] = -xspeed[i];
    }
    else if (ypos[i] > height || ypos[i]<0){
      yspeed[i] = -yspeed[i];
    }
  }
}
