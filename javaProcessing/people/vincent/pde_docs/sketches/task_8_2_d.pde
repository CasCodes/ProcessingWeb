Tropfen t1 = new Tropfen();
Tropfen t2 = new Tropfen();


void setup(){
  t1.x = 20;
  t2.x = 40;

  t1.y = 20;
  t2.y = 0;
}

void draw(){
  background(69);
  t1.bewege();
  t2.bewege();
}

void keyPressed(){
  t1.neueFarbe();
  t2.neueFarbe();
}
