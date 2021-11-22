void setup(){
  size(250,150);
}

void draw(){
  translate(0,0);
  background(0);
//Main Ellipse
  ellipse(mouseX,mouseY,10,10);
//MiniMap
  stroke(255);
  noFill();
  rect(width-75,height-50,50,30);
//Replica Ellipse
  fill(255);
  translate(width-75,height-50);
  ellipse(mouseX*0.2,mouseY*0.2,5,5);
  //*0.2 weil die MiniMap 5mal kleiner ist
}
