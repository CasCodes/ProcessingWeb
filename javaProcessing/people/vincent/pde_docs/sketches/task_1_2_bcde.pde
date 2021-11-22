void setup(){
  size(200,200);
}

void draw(){
  noLoop();
//Grid
  stroke(0);
  strokeWeight(1);
  line(100,0,100,200);
  line(0,100,200,100);
  
//b) Halb-Halb
  fill(255);
  rectMode(CENTER);
  rect(50,50,75,75);
  fill(0);
  rectMode(CORNER);
  rect(50,12.5,37.5,75);
  
//c) Gesicht
  
  //Face
  ellipseMode(CENTER);
  fill(0);
  ellipse(150,50,75,75);
  
  //Eyes
  fill(255);
  ellipseMode(CORNERS);
  //right eye
  ellipse(150,25,180,55);
  //left eye
  ellipse(120,25,150,55);
  //pupils
  fill(0);
  ellipseMode(CENTER);
  ellipse(135,40,10,10);
  ellipse(165,40,10,10);
//d) Mund
  
  //Face
  ellipseMode(CENTER);
  fill(0);
  ellipse(150,150,75,75);
  
  //Eyes
  fill(255);
  ellipseMode(CORNERS);
  //right eye
  ellipse(150,125,180,155);
  //left eye
  ellipse(120,125,150,155);
  //pupils
  fill(0);
  ellipseMode(CENTER);
  ellipse(135,140,10,10);
  ellipse(165,140,10,10);
  //mouth
  stroke(255);
  strokeWeight(12);
  strokeCap(ROUND);
  line(130,168,170,168);
  //teeth
  strokeWeight(1);
  stroke(0);
  strokeCap(RECT);
  line(125,168,180,168);
  line(150,162,150,174);
  line(165,162,165,174);
  line(135,162,135,174);
//e) Regenbogen
  //grid background
  rectMode(CORNERS);
  fill(#0006F7);
  rect(0,100,100,200);
  //rainbow
  noStroke();
  fill(#F70008);
  ellipse(50,200,100,100);
  fill(#F75F00);
  ellipse(50,200,75,75);
  fill(#F7EC00);
  ellipse(50,200,50,50);
  fill(#0006F7);
  ellipse(50,200,25,25);
  
}
