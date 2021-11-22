void draw(){
  background(255);
  fill(255);
  stroke(2);
  ellipse(width/2,height/2,width*0.8,height*0.8);
  noStroke();
  arc(width/2,height/2,width*0.85,height*0.85,radians(mouseX*3.6),radians(360));
}
