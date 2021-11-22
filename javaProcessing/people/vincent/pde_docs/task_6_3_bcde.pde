int rad = 5;
int rad2 = 10;
int a = 10;

float[] xpos = new float[a];
float[] ypos = new float[a];

float[] xspeed = new float[a];
float[] yspeed = new float[a];

float[] xdirection = new float[a];
float[] ydirection = new float[a];

color[] r = new color[a];
color[] g = new color[a];
color[] b = new color[a];

boolean[] stop = new boolean[a];
int cStop = 0;
int i2 = 0;

int x = width/2;
int y = width/2;
void setup() 
{
  size(200, 200);
  noStroke();
  ellipseMode(RADIUS);
  for (int i = 0; i < a; i++) {
      xpos[i] = (float)random(0+rad, width-rad);
      ypos[i] = (float)random(0+rad, height-rad);
      xspeed[i] = (float)random(0,2);
      yspeed[i] = (float)random(0,2);
      xdirection[i] = (float)random(-1,1);
      ydirection[i] = (float)random(-1,1);
      if(xdirection[i] == 0){
        xdirection[i] = (float)random(-1,1);
      }
      if(ydirection[i] == 0){
        ydirection[i] = (float)random(-1,1);
      }
      
      r[i] = (color)random(255);
      g[i] = (color)random(255);
      b[i] = (color)random(255);
      
      stop[i]=false;
  }
  //background(0);
}

void draw() 
{
  background(0);
  
  if(keyPressed){
    if(x>=rad2){
      if(keyCode == LEFT){
        x--;
      }
    }
    if(x<width-rad2){
      if(keyCode == RIGHT){
        x++;
      }
    }
    if(y<height-rad2){
      if(keyCode == DOWN){
        y++;
      }
    }
    if(y>rad2){
      if(keyCode == UP){
        y--;
      }
    }
  }
  for (int i = 0; i < a; i++) {
    if((xpos[i]+(rad)>x-rad2 && xpos[i]+(rad)<x+(rad2)
    || xpos[i]<x+(rad2) && xpos[i] > x-rad2)
    && (ypos[i]+(rad)>y-rad2 && ypos[i]+(rad)<y+rad2
    || ypos[i]<y+(rad2) && ypos[i]+(rad)>y-rad2)
    ){
      r[i]= 0;
      g[i]= 0;
      b[i]= 0;
      stop[i]=true;
    }
    if(stop[i]){
      xdirection[i] = 0;
      ydirection[i] = 0;
    }
  xpos[i] = xpos[i] + ( xspeed[i] * xdirection[i] );
  ypos[i] = ypos[i] + ( yspeed[i] * ydirection[i] );
    
  if (xpos[i] > width-rad || xpos[i] < rad) {
    xdirection[i] *= -1;
  }
  if (ypos[i] > height-rad || ypos[i] < rad) {
    ydirection[i] *= -1;
  }
  
  fill(r[i],g[i],b[i]);
  ellipse(xpos[i],ypos[i],rad,rad);
   
     
     fill(255);
  ellipse(x,y,rad2,rad2);
  if(mousePressed){
    background(0);
      
      xpos[i] = (float)random(0, width);
      ypos[i] = (float)random(0, height);
      xspeed[i] = (float)random(0,2);
      yspeed[i] = (float)random(0,2);
      xdirection[i] = (float)random(-1,1);
      ydirection[i] = (float)random(-1,1);
      if(xdirection[i] == 0){
        xdirection[i] = (float)random(-1,1);
      }
      if(ydirection[i] == 0){
        ydirection[i] = (float)random(-1,1);
      }
      
      r[i] = (color)random(255);
      g[i] = (color)random(255);
      b[i] = (color)random(255);
  }
  if(stop[0] && stop[1] && stop[2] && stop[3] && stop[4] && 
  stop[5] && stop[6] && stop[7] && stop[8] && stop[9]){
       textAlign(CENTER);
       text("WINNER",width/2,height/2);
     }
}
}
