float x=20;
float y=30;
float a;

void draw(){
  background(69);
  line(x,y,mouseX,mouseY);
  a=sqrt(sq(mouseX-x)+sq(mouseY-y));
  println(a/*dist(x,y,mouseX,mouseY)*/);
}
