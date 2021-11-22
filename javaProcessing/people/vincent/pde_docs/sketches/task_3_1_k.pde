int a = -90;

void draw(){
  background(0);
//Outline
  noFill();
  stroke(255);
  ellipse(width/2,width/2,width*0.85,height*0.85);
//Body
  fill(255);
  arc(width/2,height/2,width*0.85,height*0.85,radians(a), radians(270));
  a+=5;
  if(a==270){
    a = -90;
  }
}
