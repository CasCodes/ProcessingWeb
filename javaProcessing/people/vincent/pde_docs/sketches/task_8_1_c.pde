Position k1 = new Position();
Position k2 = new Position();

void setup(){
  k1.x = 0;
  k1.y = 0;
  
  k2.x = 100;
  k2.y = 0;
}

void draw(){
  background(69);
  k1.x++;
  k1.y++;
  
  k2.x--;
  k2.y++;
  
  ellipse(k1.x,k1.y,10,10);
  ellipse(k2.x,k2.y,10,10);
}
