PVector [] pos = new PVector[5];
PVector [] sped = new PVector[5];

PImage [] img = new PImage[5];

void setup(){
  background(69);
  size(500, 500);
  for (int i = 0; i<pos.length; i++){
    pos[i] = new PVector(random(500), random(500));
    sped[i] = new PVector(random(-3, 3), random(-3, 3));
    
    // load
    img[i] = loadImage("PP_FROGG.png");
  }
}

void draw(){
  background(69);
  for (int i = 0; i<pos.length; i++){
    image(img[i], pos[i].x, pos[i].y, 69, 69);
    pos[i].x += sped[i].x;
    pos[i].y += sped[i].y;
    
    // collision
    if (pos[i].x < 0 || pos[i].x > 500){
      sped[i].x = -sped[i].x;
    }
    if (pos[i].y < 0 || pos[i].y > 500){
      sped[i].y = -sped[i].y;
    }
  } 
}
