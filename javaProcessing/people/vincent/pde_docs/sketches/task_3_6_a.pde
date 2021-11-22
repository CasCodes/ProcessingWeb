//Mit Tom Butscher zusammen gemacht
// Roter Kasten

int ax = 50;
int ay = 50;
int awidth = 200;
int aheight = 40;

// Grüner Kasten

int bx = 50;
int by = 130;
int bwidth = 200;
int bheight = 40;

// Blauer Kasten

int cx = 50;
int cy = 210;
int cwidth = 200;
int cheight = 40;

// Hintergrund

int ha = 150;
int hb = 150;
int hc = 150;

void setup() {
  size(300, 300);
}

void draw() {
  background(ha, hb, hc);

  // Roter Kasten
  
  if (ax <= mouseX && mouseX <= ax + awidth &&
    ay <= mouseY && mouseY <= ay + aheight) {
    fill(200);
      if (mousePressed) {
        ha = 255;
        hb = 0;
        hc = 0;   
      }
  }
  else {
    fill(255);
  }
  rect(ax, ay, awidth, aheight);
  fill(0);
  text("Rot", 140, 75);
  
  // Grüner Kasten
  
  if (bx <= mouseX && mouseX <= bx + bwidth &&
    by <= mouseY && mouseY <= by + bheight) {
    fill(200);
       if (mousePressed) {
        ha = 0;
        hb = 255;
        hc = 0;  
      }
  }
  else {
    fill(255);
  }
  rect(bx, by, bwidth, bheight);
  fill(0);
  text("Grün", 137, 155);
  
  // Blauer Kasten
  
  if (cx <= mouseX && mouseX <= cx + cwidth &&
    cy <= mouseY && mouseY <= cy + cheight) {
    fill(200);
       if (mousePressed) {
        ha = 0;
        hb = 0;
        hc = 255;  
      }
  }
  else {
    fill(255);
  }
  rect(cx, cy, cwidth, cheight);
  fill(0);
  text("Blau", 140, 235);
  
  // Hintergrund
  
  if (!(ax <= mouseX && mouseX <= ax + awidth &&
    ay <= mouseY && mouseY <= ay + aheight) &&
    !(bx <= mouseX && mouseX <= bx + bwidth &&
    by <= mouseY && mouseY <= by + bheight) &&
    !(cx <= mouseX && mouseX <= cx + cwidth &&
    cy <= mouseY && mouseY <= cy + cheight)) {
      if (mousePressed) {
        ha = 150;
        hb = 150;
        hc = 150; 
    }
  }
}
