PVector pos = new PVector(50,50); //Nullvektor
PVector speed = new PVector(2,1);

void draw(){
  background(255);
  fill(255);
  ellipse(pos.x,pos.y,20,20);
  
  pos.add(speed);
  
  if(pos.x+10>width || pos.x < 10){
    speed.set(-speed.x,speed.y);
  }
  
  if(pos.y+10 > height || pos.y < 10){
    speed.set(speed.x,-speed.y);
  }
}
