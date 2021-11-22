PVector ball = new PVector(0,50);
PVector bgcolor = new PVector(152,0,152);
int a = 69;
//Color one: 152,0,152
//Color two: 0,152,152
void draw(){
  background(bgcolor.x,bgcolor.y,bgcolor.z);
  ellipse(ball.x,ball.y,30,30);
  ball.x++;
  if(ball.x+15 >= width){
    ball.x = 0;
  }
}

void keyPressed(){
  if(key == '1'){
    bgcolor.set(152,0,152);
  }else if(key == '2'){
    bgcolor.set(0,152,152);
  }
}
