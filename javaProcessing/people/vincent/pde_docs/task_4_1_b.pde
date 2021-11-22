PVector ball = new PVector(0,50);

void draw(){
  background(69);
  ellipse(ball.x,ball.y,30,30);
  ball.x++;
  if(ball.x+15 >= width){
    ball.x = 0;
  }
}
